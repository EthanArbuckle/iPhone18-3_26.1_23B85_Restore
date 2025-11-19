@interface AXElementGroupPruner
- (id)_prunedGroupable:(id)a3;
- (id)pruneRootGroup:(id)a3;
@end

@implementation AXElementGroupPruner

- (id)_prunedGroupable:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 isGroup];
  v6 = v4;
  v7 = v6;
  v8 = v6;
  if (v5)
  {
    if ([v6 count] == 1)
    {
      v9 = [v7 firstChild];
      if ([v9 isGroup])
      {
        v10 = [v9 groupTraits];
        v11 = [v7 groupTraits];
        v12 = [v9 userDefinedScanningBehaviorTraits];
        v13 = [v7 userDefinedScanningBehaviorTraits];
        v8 = [(AXElementGroupPruner *)self _prunedGroupable:v9];
        if ([v8 isGroup])
        {
          v14 = [v9 label];
          [v8 setLabel:v14];

          v15 = [v9 identifier];
          [v8 setIdentifier:v15];

          [v8 setGroupTraits:v11 | v10];
          [v8 setUserDefinedScanningBehaviorTraits:v13 | v12];
        }
      }

      else
      {
        v8 = [(AXElementGroupPruner *)self _prunedGroupable:v9];
      }
    }

    else
    {
      v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
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
              [v9 addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v18);
      }

      v22 = [v16 label];
      v8 = [AXElementGroup groupWithElements:v9 label:v22];

      [v8 setGroupTraits:{objc_msgSend(v16, "groupTraits")}];
      [v8 setUserDefinedScanningBehaviorTraits:{objc_msgSend(v16, "userDefinedScanningBehaviorTraits")}];
      v23 = [v16 identifier];
      [v8 setIdentifier:v23];
    }
  }

  return v8;
}

- (id)pruneRootGroup:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 elementCommunity];
  v6 = [(AXElementGroupPruner *)self _prunedGroupable:v4];
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

  v4 = v7;
LABEL_6:
  [v4 setElementCommunity:v5];

  return v4;
}

@end