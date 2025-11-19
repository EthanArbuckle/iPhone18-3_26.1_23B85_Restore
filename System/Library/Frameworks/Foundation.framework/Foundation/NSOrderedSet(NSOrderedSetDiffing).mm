@interface NSOrderedSet(NSOrderedSetDiffing)
- (NSOrderedCollectionDifference)differenceFromOrderedSet:()NSOrderedSetDiffing withOptions:;
- (id)orderedSetByApplyingDifference:()NSOrderedSetDiffing;
- (uint64_t)differenceFromOrderedSet:()NSOrderedSetDiffing withOptions:usingEquivalenceTest:;
@end

@implementation NSOrderedSet(NSOrderedSetDiffing)

- (uint64_t)differenceFromOrderedSet:()NSOrderedSetDiffing withOptions:usingEquivalenceTest:
{
  if (a5)
  {
    v8 = [a1 array];
    v9 = [a3 array];

    return [v8 differenceFromArray:v9 withOptions:a4 usingEquivalenceTest:a5];
  }

  else
  {

    return [a1 differenceFromOrderedSet:? withOptions:?];
  }
}

- (NSOrderedCollectionDifference)differenceFromOrderedSet:()NSOrderedSetDiffing withOptions:
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot diff nil parameter" userInfo:0]);
  }

  v6 = a1;
  v7 = MEMORY[0x1E695DF70];
  v8 = [a1 count];
  v9 = [a3 count];
  v10 = v8 - v9;
  if (v8 - v9 < 0)
  {
    v10 = v9 - v8;
  }

  if (v10 >= 0x10)
  {
    v12 = [v6 count];
    v13 = [a3 count];
    if (v12 - v13 >= 0)
    {
      v11 = v12 - v13;
    }

    else
    {
      v11 = v13 - v12;
    }
  }

  else
  {
    v11 = 16;
  }

  v14 = [v7 arrayWithCapacity:v11];
  if (![a3 count])
  {
    v18 = 0;
    v17 = 0;
    goto LABEL_72;
  }

  v15 = 0;
  v16 = 0;
  v49 = 0;
  v50 = 0;
  v58 = 0;
  v59 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  v57 = v14;
  v60 = v6;
  while (2)
  {
    v21 = -v19;
    v22 = -v20;
    v23 = v17;
    v24 = v18;
    v51 = v22;
    v52 = v21;
    while (2)
    {
      v53 = v15;
      v55 = v16;
      v25 = 0;
      v26 = v21 + v23;
      v27 = v22 + v24;
      while (1)
      {
        v17 = v23 + v25;
        v18 = v24 + v25;
        if (v23 + v25 >= [v60 count])
        {
          goto LABEL_71;
        }

        v28 = v27 + v25;
        if (v27 + v25)
        {
          v58 = [a3 objectAtIndexedSubscript:v24 + v25];
        }

        v29 = v26 + v25;
        if (v26 + v25)
        {
          v59 = [v60 objectAtIndexedSubscript:v23 + v25];
        }

        if (v58 != v59)
        {
          break;
        }

        ++v25;
        v18 = v24 + v25;
        if (v24 + v25 >= [a3 count])
        {
          v17 = v23 + v25;
LABEL_71:
          v14 = v57;
          v6 = v60;
          goto LABEL_72;
        }
      }

      v16 = v55;
      if (v28)
      {
        v16 = [v58 hash];
      }

      v15 = v53;
      if (v29)
      {
        v15 = [v59 hash];
      }

      if (v16 == v15)
      {
        if ([v58 isEqual:v59])
        {
          v24 += v25 + 1;
          v23 += v25 + 1;
          v30 = [a3 count];
          v15 = v16;
          v22 = v51;
          v21 = v52;
          if (v24 < v30)
          {
            continue;
          }

          v18 = v24;
          v17 = v23;
          goto LABEL_71;
        }

        v15 = v16;
      }

      break;
    }

    if (v28)
    {
      v49 = [v60 indexOfObject:v58];
    }

    v31 = v50;
    if (v29)
    {
      v31 = [a3 indexOfObject:v59];
    }

    v50 = v31;
    v54 = v24 + v25;
    v56 = v23 + v25;
    if (v49 != 0x7FFFFFFFFFFFFFFFLL && v49 >= v23 + v25)
    {
      v18 = v24 + v25;
      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = v24 + v25;
        if (v31 >= v54)
        {
          if (v49 - v23 - v25 >= v31 - v24 - v25)
          {
            if ((a4 & 2) != 0)
            {
              v39 = 0;
            }

            else
            {
              v39 = v58;
            }

            if ((a4 & 4) != 0)
            {
              v40 = v49;
            }

            else
            {
              v40 = 0x7FFFFFFFFFFFFFFFLL;
            }

            [v57 addObject:{+[NSOrderedCollectionChange changeWithObject:type:index:associatedIndex:](NSOrderedCollectionChange, "changeWithObject:type:index:associatedIndex:", v39, 1, v54, v40, v49)}];
            v18 = v24 + v25 + 1;
            v17 = v23 + v25;
          }

          else
          {
            if (a4)
            {
              v32 = 0;
            }

            else
            {
              v32 = v59;
            }

            if ((a4 & 4) != 0)
            {
              v33 = v31;
            }

            else
            {
              v33 = 0x7FFFFFFFFFFFFFFFLL;
            }

            [v57 addObject:{+[NSOrderedCollectionChange changeWithObject:type:index:associatedIndex:](NSOrderedCollectionChange, "changeWithObject:type:index:associatedIndex:", v32, 0, v56, v33, v49)}];
            v17 = v23 + v25 + 1;
            v18 = v24 + v25;
          }

          goto LABEL_61;
        }
      }

      goto LABEL_54;
    }

    if ((a4 & 2) != 0)
    {
      v34 = 0;
    }

    else
    {
      v34 = v58;
    }

    if ((a4 & 4) != 0)
    {
      v35 = v49;
    }

    else
    {
      v35 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [v57 addObject:{+[NSOrderedCollectionChange changeWithObject:type:index:associatedIndex:](NSOrderedCollectionChange, "changeWithObject:type:index:associatedIndex:", v34, 1, v24 + v25, v35, v49)}];
    v31 = v50;
    v18 = v24 + v25 + 1;
    if (v50 == 0x7FFFFFFFFFFFFFFFLL || (v17 = v23 + v25, v50 <= v24 + v25))
    {
LABEL_54:
      if (a4)
      {
        v36 = 0;
      }

      else
      {
        v36 = v59;
      }

      if ((a4 & 4) != 0)
      {
        v37 = v31;
      }

      else
      {
        v37 = 0x7FFFFFFFFFFFFFFFLL;
      }

      [v57 addObject:{+[NSOrderedCollectionChange changeWithObject:type:index:associatedIndex:](NSOrderedCollectionChange, "changeWithObject:type:index:associatedIndex:", v36, 0, v56, v37, v49)}];
      v17 = v23 + v25 + 1;
    }

LABEL_61:
    v38 = [a3 count];
    v19 = v23 + v25;
    v14 = v57;
    v6 = v60;
    v20 = v54;
    if (v18 < v38)
    {
      continue;
    }

    break;
  }

LABEL_72:
  while (v18 < [a3 count])
  {
    v41 = [a3 objectAtIndexedSubscript:v18];
    if ((a4 & 4) != 0)
    {
      v42 = [v6 indexOfObject:v41];
    }

    else
    {
      v42 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if ((a4 & 2) != 0)
    {
      v43 = 0;
    }

    else
    {
      v43 = v41;
    }

    [v14 addObject:{+[NSOrderedCollectionChange changeWithObject:type:index:associatedIndex:](NSOrderedCollectionChange, "changeWithObject:type:index:associatedIndex:", v43, 1, v18++, v42)}];
  }

  for (; v17 < [v6 count]; ++v17)
  {
    v44 = [v6 objectAtIndexedSubscript:v17];
    if ((a4 & 4) != 0)
    {
      v45 = [a3 indexOfObject:v44];
    }

    else
    {
      v45 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (a4)
    {
      v46 = 0;
    }

    else
    {
      v46 = v44;
    }

    [v14 addObject:{+[NSOrderedCollectionChange changeWithObject:type:index:associatedIndex:](NSOrderedCollectionChange, "changeWithObject:type:index:associatedIndex:", v46, 0, v17, v45)}];
  }

  v47 = [[NSOrderedCollectionDifference alloc] initWithChanges:v14];

  return v47;
}

- (id)orderedSetByApplyingDifference:()NSOrderedSetDiffing
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a1 mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 changeType];
        v11 = [v9 index];
        v12 = [v4 count];
        if (v10 == 1)
        {
          if (v11 >= v12)
          {
            return 0;
          }

          [v4 removeObjectAtIndex:{objc_msgSend(v9, "index")}];
        }

        else
        {
          if (v11 > v12)
          {
            return 0;
          }

          result = [v9 object];
          if (!result)
          {
            return result;
          }

          [v4 insertObject:objc_msgSend(v9 atIndex:{"object"), objc_msgSend(v9, "index")}];
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return [v4 copy];
}

@end