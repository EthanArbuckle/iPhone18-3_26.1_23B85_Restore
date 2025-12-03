@interface AXElementGroupPruner
- (id)_prunedGroupable:(id)groupable;
- (id)pruneRootGroup:(id)group;
@end

@implementation AXElementGroupPruner

- (id)_prunedGroupable:(id)groupable
{
  v30 = *MEMORY[0x1E69E9840];
  groupableCopy = groupable;
  isGroup = [groupableCopy isGroup];
  v6 = groupableCopy;
  v7 = v6;
  v8 = v6;
  if (isGroup)
  {
    if ([v6 count] == 1)
    {
      firstChild = [v7 firstChild];
      if ([firstChild isGroup])
      {
        groupTraits = [firstChild groupTraits];
        groupTraits2 = [v7 groupTraits];
        userDefinedScanningBehaviorTraits = [firstChild userDefinedScanningBehaviorTraits];
        userDefinedScanningBehaviorTraits2 = [v7 userDefinedScanningBehaviorTraits];
        v8 = [(AXElementGroupPruner *)self _prunedGroupable:firstChild];
        if ([v8 isGroup])
        {
          label = [firstChild label];
          [v8 setLabel:label];

          identifier = [firstChild identifier];
          [v8 setIdentifier:identifier];

          [v8 setGroupTraits:groupTraits2 | groupTraits];
          [v8 setUserDefinedScanningBehaviorTraits:userDefinedScanningBehaviorTraits2 | userDefinedScanningBehaviorTraits];
        }
      }

      else
      {
        v8 = [(AXElementGroupPruner *)self _prunedGroupable:firstChild];
      }
    }

    else
    {
      firstChild = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v16 = v7;
      v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v26;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v26 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [(AXElementGroupPruner *)self _prunedGroupable:*(*(&v25 + 1) + 8 * i), v25];
            if (v21)
            {
              [firstChild addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v18);
      }

      label2 = [v16 label];
      v8 = [AXElementGroup groupWithElements:firstChild label:label2];

      [v8 setGroupTraits:{objc_msgSend(v16, "groupTraits")}];
      [v8 setUserDefinedScanningBehaviorTraits:{objc_msgSend(v16, "userDefinedScanningBehaviorTraits")}];
      identifier2 = [v16 identifier];
      [v8 setIdentifier:identifier2];
    }
  }

  return v8;
}

- (id)pruneRootGroup:(id)group
{
  v10[1] = *MEMORY[0x1E69E9840];
  groupCopy = group;
  elementCommunity = [groupCopy elementCommunity];
  v6 = [(AXElementGroupPruner *)self _prunedGroupable:groupCopy];
  if ([v6 isGroup])
  {
    v7 = v6;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v10[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [AXElementGroup groupWithElements:v8];
  }

  groupCopy = v7;
LABEL_6:
  [groupCopy setElementCommunity:elementCommunity];

  return groupCopy;
}

@end