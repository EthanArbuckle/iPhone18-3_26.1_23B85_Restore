@interface AXElementGrouper
- (AXElementGrouper)initWithHeuristics:(int64_t)a3;
- (BOOL)_frame:(CGRect)a3 isApproximatelySameSizeAsFrame:(CGRect)a4;
- (NSArray)transformationPasses;
- (double)thresholdForDeterminingEqualSize;
- (id)_applyTransformationPass:(id)a3 toGroup:(id)a4;
- (id)_applyTransformationPassesToRootGroup:(id)a3;
- (id)_buildHierarchyForGroup:(id)a3 indexOfKeyboard:(unint64_t *)a4;
- (id)_flattenHierarchyForGroup:(id)a3 rootLevel:(BOOL)a4;
- (id)_groupRemovingImpossibleGroups:(id)a3 isRootLevel:(BOOL)a4;
- (id)_groupablesForItems:(id)a3;
- (id)groupElementsInRootGroup:(id)a3;
- (unint64_t)maximumGroupSize;
- (unint64_t)preferredGroupSize;
@end

@implementation AXElementGrouper

- (AXElementGrouper)initWithHeuristics:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = AXElementGrouper;
  result = [(AXElementGrouper *)&v5 init];
  if (result)
  {
    result->_heuristics = a3;
  }

  return result;
}

- (unint64_t)maximumGroupSize
{
  if (self->_heuristics == 2)
  {
    return 10;
  }

  else
  {
    return 9;
  }
}

- (unint64_t)preferredGroupSize
{
  if (self->_heuristics == 2)
  {
    return 10;
  }

  else
  {
    return 5;
  }
}

- (double)thresholdForDeterminingEqualSize
{
  heuristics = self->_heuristics;
  result = 10.0;
  if (heuristics == 1)
  {
    result = 16.0;
  }

  if (heuristics == 2)
  {
    return 25.0;
  }

  return result;
}

- (NSArray)transformationPasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)groupElementsInRootGroup:(id)a3
{
  v4 = [(AXElementGrouper *)self _buildHierarchyForGroup:a3 indexOfKeyboard:0];
  v5 = [(AXElementGrouper *)self _flattenHierarchyForGroup:v4 rootLevel:1];

  v6 = [(AXElementGrouper *)self _applyTransformationPassesToRootGroup:v5];

  return v6;
}

- (id)_groupRemovingImpossibleGroups:(id)a3 isRootLevel:(BOOL)a4
{
  v4 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 allowsChangingExistingGroupingOfContents])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          if ([v13 isGroup])
          {
            v14 = [(AXElementGrouper *)self _groupRemovingImpossibleGroups:v13 isRootLevel:0];
            if ([v14 canBeReplacedByChildren] && (v15 = objc_msgSend(v14, "count"), v15 < -[AXElementGrouper minimumGroupSize](self, "minimumGroupSize")) || objc_msgSend(v14, "shouldBeUngrouped"))
            {
              [v7 addObjectsFromArray:v14];
            }

            else
            {
              [v7 addObject:v14];
            }
          }

          else
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v10);
    }

    if (v4 && (v16 = [v7 count], v16 < -[AXElementGrouper minimumGroupSize](self, "minimumGroupSize")))
    {
      v17 = [MEMORY[0x1E695DF70] array];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v18 = v7;
      v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v29;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v29 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v28 + 1) + 8 * j);
            if ([v23 isGroup] && objc_msgSend(v23, "canBeReplacedByChildren"))
            {
              [v17 addObjectsFromArray:v23];
            }

            else
            {
              [v17 addObject:v23];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v20);
      }
    }

    else
    {
      v17 = v7;
    }

    v25 = [v8 label];
    v24 = [AXElementGroup groupWithElements:v17 label:v25];

    [v24 setGroupTraits:{objc_msgSend(v8, "groupTraits")}];
    [v24 setUserDefinedScanningBehaviorTraits:{objc_msgSend(v8, "userDefinedScanningBehaviorTraits")}];
    v26 = [v8 identifier];
    [v24 setIdentifier:v26];
  }

  else
  {
    v24 = v6;
  }

  return v24;
}

- (BOOL)_frame:(CGRect)a3 isApproximatelySameSizeAsFrame:(CGRect)a4
{
  height = a4.size.height;
  v5 = a3.size.height;
  v7 = vabdd_f64(a3.size.width, a4.size.width);
  [(AXElementGrouper *)self thresholdForDeterminingEqualSize:a3.origin.x];
  if (v7 >= v8)
  {
    return 0;
  }

  [(AXElementGrouper *)self thresholdForDeterminingEqualSize];
  return vabdd_f64(v5, height) < v9;
}

- (id)_flattenHierarchyForGroup:(id)a3 rootLevel:(BOOL)a4
{
  v4 = a4;
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v4)
  {
    v7 = [(AXElementGrouper *)self _groupRemovingImpossibleGroups:v6 isRootLevel:1];

    v6 = v7;
  }

  if ([v6 allowsChangingExistingGroupingOfContents])
  {
    v8 = [v6 count];
    if (v8)
    {
      v9 = v8;
      while (1)
      {
        v10 = 0;
        v11 = 0x7FFFFFFFFFFFFFFFLL;
        v12 = 0.0;
        do
        {
          v13 = [v6 objectAtIndex:v10];
          if ([v13 isGroup])
          {
            v14 = v13;
            if ([v14 canBeReplacedByChildren])
            {
              [v14 frame];
              x = v49.origin.x;
              y = v49.origin.y;
              width = v49.size.width;
              height = v49.size.height;
              v19 = CGRectGetWidth(v49);
              v50.origin.x = x;
              v50.origin.y = y;
              v50.size.width = width;
              v50.size.height = height;
              v20 = v19 * CGRectGetHeight(v50);
              if (v20 > v12)
              {
                v21 = v9 - 1 + [v14 count];
                if (v21 <= [(AXElementGrouper *)self maximumGroupSize])
                {
                  v22 = v9 - [(AXElementGrouper *)self preferredGroupSize];
                  if (v22 >= 0)
                  {
                    v23 = v22;
                  }

                  else
                  {
                    v23 = -v22;
                  }

                  v24 = v21 - [(AXElementGrouper *)self preferredGroupSize];
                  if (v24 < 0)
                  {
                    v24 = -v24;
                  }

                  if (v23 >= v24)
                  {
                    v11 = v10;
                    v12 = v20;
                  }
                }
              }
            }
          }

          ++v10;
        }

        while (v9 != v10);
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v25 = [v6 objectAtIndex:v11];
        if (!v25)
        {
          break;
        }

        v26 = v25;
        v27 = [MEMORY[0x1E695DF70] array];
        for (i = 0; i != v9; ++i)
        {
          v29 = [v6 objectAtIndex:i];
          if (v11 == i)
          {
            [v27 addObjectsFromArray:v29];
          }

          else
          {
            [v27 addObject:v29];
          }
        }

        v30 = [MEMORY[0x1E695DF70] array];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v31 = v27;
        v32 = [v31 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v43;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v43 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v42 + 1) + 8 * j);
              if ([v36 isGroup])
              {
                v37 = [(AXElementGrouper *)self _flattenHierarchyForGroup:v36 rootLevel:0];
                [v30 addObject:v37];
              }

              else
              {
                [v30 addObject:v36];
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v42 objects:v46 count:16];
          }

          while (v33);
        }

        v38 = [v6 label];
        v39 = [AXElementGroup groupWithElements:v30 label:v38];

        [v39 setGroupTraits:{objc_msgSend(v6, "groupTraits")}];
        [v39 setUserDefinedScanningBehaviorTraits:{objc_msgSend(v6, "userDefinedScanningBehaviorTraits")}];
        v40 = [v6 identifier];
        [v39 setIdentifier:v40];

        v9 = [v39 count];
        v6 = v39;
        if (!v9)
        {
          goto LABEL_40;
        }
      }
    }
  }

  v39 = v6;
LABEL_40:

  return v39;
}

- (id)_applyTransformationPass:(id)a3 toGroup:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if ([v15 isGroup])
        {
          v16 = [(AXElementGrouper *)self _applyTransformationPass:v6 toGroup:v15];
          v12 |= v16 != v15;
          [v8 addObject:v16];
        }

        else
        {
          [v8 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);

    v17 = v9;
    v18 = v17;
    if (v12)
    {
      v19 = [v17 label];
      v20 = [AXElementGroup groupWithElements:v8 label:v19];

      [v20 setGroupTraits:{objc_msgSend(v18, "groupTraits")}];
      [v20 setUserDefinedScanningBehaviorTraits:{objc_msgSend(v18, "userDefinedScanningBehaviorTraits")}];
      v21 = [v18 identifier];
      [v20 setIdentifier:v21];

      v18 = v20;
    }
  }

  else
  {

    v18 = v9;
  }

  if ([v6 shouldTransformGroup:v18 forGrouper:{self, v24}])
  {
    v22 = [v6 transformGroup:v18 forGrouper:self];

    v18 = v22;
  }

  return v18;
}

- (id)_applyTransformationPassesToRootGroup:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(AXElementGrouper *)self transformationPasses];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4 = [(AXElementGrouper *)self _applyTransformationPass:*(*(&v12 + 1) + 8 * v9) toGroup:v10];

        ++v9;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_buildHierarchyForGroup:(id)a3 indexOfKeyboard:(unint64_t *)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 allowsChangingExistingGroupingOfContents])
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v8)
    {
      v9 = v8;
      v35 = v5;
      v36 = a4;
      v10 = 0;
      v11 = *v40;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          if ([v14 isGroup])
          {
            v38 = 0x7FFFFFFFFFFFFFFFLL;
            v15 = [(AXElementGrouper *)self _buildHierarchyForGroup:v14 indexOfKeyboard:&v38];
            v16 = v15;
            if (v15)
            {
              v17 = v7;
              v18 = v38;
              if (v38 == 0x7FFFFFFFFFFFFFFFLL || v18 >= [v15 count])
              {
                [v6 addObject:v16];
                v27 = v10 + 1;
                if (![v16 isKeyboardContainer])
                {
                  v10 = v12;
                }

                v7 = v17;
              }

              else
              {
                v19 = [v16 subarrayWithRange:{0, v38}];
                if ([v19 count])
                {
                  v20 = [AXElementGroup groupWithElements:v19];
                  [v6 addObject:v20];

                  ++v10;
                }

                v21 = [v16 objectAtIndex:v38];
                [v6 addObject:v21];

                v22 = v38;
                if (v22 >= [v16 count] - 1)
                {
                  v27 = v10 + 1;
                }

                else
                {
                  v23 = v38;
                  v24 = [v16 count];
                  v25 = [v16 subarrayWithRange:{v23 + 1, v24 + ~v38}];
                  v26 = [AXElementGroup groupWithElements:v25];
                  [v6 addObject:v26];

                  v27 = v10 + 2;
                }

                v7 = v17;
              }
            }

            else
            {
              v27 = v10;
              v10 = v12;
            }

            v12 = v10;

            v10 = v27;
          }

          else
          {
            [v6 addObject:v14];
            ++v10;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v9);

      v28 = v6;
      v5 = v35;
      a4 = v36;
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v29 = v28;
LABEL_33:
        if ([v29 count])
        {
          v32 = [v7 label];
          v30 = [AXElementGroup groupWithElements:v29 label:v32];

          [v30 setGroupTraits:{objc_msgSend(v7, "groupTraits")}];
          [v30 setUserDefinedScanningBehaviorTraits:{objc_msgSend(v7, "userDefinedScanningBehaviorTraits")}];
          v33 = [v7 identifier];
          [v30 setIdentifier:v33];
        }

        else
        {
          v30 = 0;
        }

        if (!a4)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    else
    {

      v31 = v6;
    }

    if ([v7 allowsVisualGroupingOfChildren])
    {
      v29 = [(AXElementGrouper *)self _groupablesForItems:v6];

      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      v29 = v6;
    }

    goto LABEL_33;
  }

  v30 = v5;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (a4)
  {
LABEL_37:
    *a4 = v12;
  }

LABEL_38:

  return v30;
}

- (id)_groupablesForItems:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [v4 count];
  if (v6 >= [(AXElementGrouper *)self maximumGroupSize])
  {
    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = [(AXElementGrouper *)self preferredGroupSize];
        if (v8 + v7 > v6 || (v9 = v8, v6 - v7 < [(AXElementGrouper *)self maximumGroupSize]))
        {
          v9 = v6 - v7;
        }

        v10 = [v4 subarrayWithRange:{v7, v9}];
        v11 = [AXElementGroup groupWithElements:v10];

        if (v11)
        {
          [v5 addObject:v11];
        }

        v7 += v9;
      }

      while (v7 < v6);
    }
  }

  else
  {
    [v5 addObjectsFromArray:v4];
  }

  return v5;
}

@end