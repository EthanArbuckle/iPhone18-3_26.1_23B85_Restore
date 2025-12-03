@interface AXElementGroupingKeyboardExtrasConsolidationPass
- (BOOL)shouldTransformGroup:(id)group forGrouper:(id)grouper;
- (id)transformGroup:(id)group forGrouper:(id)grouper;
@end

@implementation AXElementGroupingKeyboardExtrasConsolidationPass

- (BOOL)shouldTransformGroup:(id)group forGrouper:(id)grouper
{
  v19 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  if (![groupCopy isKeyboardContainer])
  {
    goto LABEL_15;
  }

  firstObject = [groupCopy firstObject];
  if (([firstObject isGroup] & 1) == 0)
  {

    goto LABEL_15;
  }

  firstObject2 = [groupCopy firstObject];
  canBeReplacedByChildren = [firstObject2 canBeReplacedByChildren];

  if (!canBeReplacedByChildren)
  {
    goto LABEL_16;
  }

  if ([groupCopy count] < 2)
  {
LABEL_15:
    LOBYTE(canBeReplacedByChildren) = 0;
    goto LABEL_16;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  LOBYTE(canBeReplacedByChildren) = 1;
  v8 = [groupCopy subarrayWithRange:{1, objc_msgSend(groupCopy, "count", 0) - 1}];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    canBeReplacedByChildren = 0;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        canBeReplacedByChildren |= [*(*(&v14 + 1) + 8 * i) isGroup];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
    LOBYTE(canBeReplacedByChildren) = canBeReplacedByChildren ^ 1;
  }

LABEL_16:
  return canBeReplacedByChildren & 1;
}

- (id)transformGroup:(id)group forGrouper:(id)grouper
{
  v33 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  if (([groupCopy isKeyboardContainer] & 1) == 0 || objc_msgSend(groupCopy, "count") <= 1)
  {
    goto LABEL_21;
  }

  firstObject = [groupCopy firstObject];
  if (([firstObject isGroup] & 1) == 0)
  {

    goto LABEL_21;
  }

  firstObject2 = [groupCopy firstObject];
  canBeReplacedByChildren = [firstObject2 canBeReplacedByChildren];

  if ((canBeReplacedByChildren & 1) == 0)
  {
LABEL_21:
    v20 = groupCopy;
    goto LABEL_22;
  }

  v8 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  firstObject3 = [groupCopy firstObject];
  v10 = [firstObject3 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(firstObject3);
        }

        [v8 addObject:*(*(&v27 + 1) + 8 * i)];
      }

      v11 = [firstObject3 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [groupCopy subarrayWithRange:{1, objc_msgSend(groupCopy, "count", 0) - 1}];
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v8 addObject:*(*(&v23 + 1) + 8 * j)];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  label = [groupCopy label];
  v20 = [AXElementGroup groupWithElements:v8 label:label];

  [v20 setGroupTraits:{objc_msgSend(groupCopy, "groupTraits")}];
  [v20 setUserDefinedScanningBehaviorTraits:{objc_msgSend(groupCopy, "userDefinedScanningBehaviorTraits")}];
  identifier = [groupCopy identifier];
  [v20 setIdentifier:identifier];

LABEL_22:

  return v20;
}

@end