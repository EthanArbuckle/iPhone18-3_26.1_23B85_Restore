@interface AXElementGroupingKeyboardExtrasConsolidationPass
- (BOOL)shouldTransformGroup:(id)a3 forGrouper:(id)a4;
- (id)transformGroup:(id)a3 forGrouper:(id)a4;
@end

@implementation AXElementGroupingKeyboardExtrasConsolidationPass

- (BOOL)shouldTransformGroup:(id)a3 forGrouper:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 isKeyboardContainer])
  {
    goto LABEL_15;
  }

  v5 = [v4 firstObject];
  if (([v5 isGroup] & 1) == 0)
  {

    goto LABEL_15;
  }

  v6 = [v4 firstObject];
  v7 = [v6 canBeReplacedByChildren];

  if (!v7)
  {
    goto LABEL_16;
  }

  if ([v4 count] < 2)
  {
LABEL_15:
    LOBYTE(v7) = 0;
    goto LABEL_16;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  LOBYTE(v7) = 1;
  v8 = [v4 subarrayWithRange:{1, objc_msgSend(v4, "count", 0) - 1}];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v7 = 0;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v7 |= [*(*(&v14 + 1) + 8 * i) isGroup];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
    LOBYTE(v7) = v7 ^ 1;
  }

LABEL_16:
  return v7 & 1;
}

- (id)transformGroup:(id)a3 forGrouper:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 isKeyboardContainer] & 1) == 0 || objc_msgSend(v4, "count") <= 1)
  {
    goto LABEL_21;
  }

  v5 = [v4 firstObject];
  if (([v5 isGroup] & 1) == 0)
  {

    goto LABEL_21;
  }

  v6 = [v4 firstObject];
  v7 = [v6 canBeReplacedByChildren];

  if ((v7 & 1) == 0)
  {
LABEL_21:
    v20 = v4;
    goto LABEL_22;
  }

  v8 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [v4 firstObject];
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          objc_enumerationMutation(v9);
        }

        [v8 addObject:*(*(&v27 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [v4 subarrayWithRange:{1, objc_msgSend(v4, "count", 0) - 1}];
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

  v19 = [v4 label];
  v20 = [AXElementGroup groupWithElements:v8 label:v19];

  [v20 setGroupTraits:{objc_msgSend(v4, "groupTraits")}];
  [v20 setUserDefinedScanningBehaviorTraits:{objc_msgSend(v4, "userDefinedScanningBehaviorTraits")}];
  v21 = [v4 identifier];
  [v20 setIdentifier:v21];

LABEL_22:

  return v20;
}

@end