@interface NSArray(NSArrayDiffing)
- (NSOrderedCollectionDifference)differenceFromArray:()NSArrayDiffing withOptions:usingEquivalenceTest:;
- (id)arrayByApplyingDifference:()NSArrayDiffing;
@end

@implementation NSArray(NSArrayDiffing)

- (NSOrderedCollectionDifference)differenceFromArray:()NSArrayDiffing withOptions:usingEquivalenceTest:
{
  v116 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v85 = MEMORY[0x1E695DF30];
    v86 = *MEMORY[0x1E695D940];
    v87 = @"Cannot diff nil parameter";
    goto LABEL_101;
  }

  if ((a4 & 4) != 0 && a5 != &__block_literal_global_28)
  {
    v85 = MEMORY[0x1E695DF30];
    v86 = *MEMORY[0x1E695D940];
    v87 = @"Inferring moves is not supported when using a custom equivalence test";
LABEL_101:
    objc_exception_throw([v85 exceptionWithName:v86 reason:v87 userInfo:0]);
  }

  v8 = _myersDescent(a1, a3, a5);
  v9 = v8;
  v94 = a4;
  obj = a5;
  if ((a4 & 4) != 0)
  {
    v98 = objc_opt_new();
    v89 = objc_opt_new();
    v97 = objc_opt_new();
    v93 = objc_opt_new();
    v10 = -1;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSPointerArray count](v8, "count") - 1}];
    v93 = -1;
    v97 = -1;
    v98 = -1;
    v89 = -1;
  }

  context = objc_autoreleasePoolPush();
  v11 = [a3 count];
  v12 = [a1 count];
  v13 = [(NSPointerArray *)v9 count];
  v90 = v9;
  if (v13 >= 2)
  {
    v14 = v13;
    v15 = 0x1E69EE000uLL;
    do
    {
      v16 = [(NSPointerArray *)v9 pointerAtIndex:v14 - 1];
      v17 = v11 - v12;
      v18 = 1;
      if (v11 - v12 != 1 - v14)
      {
        if (v17 == v14 - 1)
        {
          goto LABEL_14;
        }

        v19 = 1 - v17;
        if (v17 >= 2)
        {
          v19 = v17 - 2;
        }

        v20 = *(v16 + 8 * v19);
        v18 = 1;
        if (v20 >= *(v16 + 8 * (v17 ^ (v17 >> 63))))
        {
LABEL_14:
          v18 = -1;
        }
      }

      v21 = v18 + v17;
      v22 = v21 - 1;
      if (v21 < 1)
      {
        v22 = -v21;
      }

      v23 = *(v16 + 8 * v22);
      v24 = v23 - v21;
      v25 = v12 > v24;
      v26 = v11 > v23;
      v27 = v12;
      v28 = v11 > v23 && v12 > v24;
      if (v28)
      {
        do
        {
          --v11;
          v25 = --v27 > v24;
          v26 = v11 > v23;
        }

        while (v11 > v23 && v27 > v24);
      }

      v29 = v11 == v23 && v25;
      v30 = v27 == v24 && v26;
      if (!v29 && !v30)
      {
        __assert_rtn("_generateElements", "NSArray+NSArrayDiffing.m", 145, "(x == prev_x && y > prev_y) || (y == prev_y && x > prev_x)");
      }

      v11 = v23;
      v12 = v24;
      if (v27 == v24)
      {
        if ((v94 & 4) != 0)
        {
          v34 = [a3 objectAtIndexedSubscript:v23];
          v35 = [NSValue valueWithNonretainedObject:v34];
          if ([v93 objectForKeyedSubscript:v35])
          {
            v36 = [MEMORY[0x1E695DFB0] null];
          }

          else
          {
            v36 = [*(v15 + 1744) numberWithUnsignedInteger:v11];
          }

          [v93 setObject:v36 forKeyedSubscript:v35];
          v43 = [*(v15 + 1744) numberWithUnsignedInteger:v11];
          v44 = v89;
LABEL_49:
          [v44 setObject:v34 forKeyedSubscript:v43];
          v9 = v90;
          goto LABEL_50;
        }

        v31 = [NSOrderedCollectionChange alloc];
        if ((v94 & 2) != 0)
        {
          v32 = 0;
        }

        else
        {
          v32 = [a3 objectAtIndexedSubscript:v11];
        }

        v39 = v31;
        v40 = 1;
        v41 = v11;
      }

      else
      {
        if ((v94 & 4) != 0)
        {
          v34 = [a1 objectAtIndexedSubscript:v24];
          v37 = [NSValue valueWithNonretainedObject:v34];
          if ([v97 objectForKeyedSubscript:v37])
          {
            v38 = [MEMORY[0x1E695DFB0] null];
          }

          else
          {
            v38 = [*(v15 + 1744) numberWithUnsignedInteger:v12];
          }

          [v97 setObject:v38 forKeyedSubscript:v37];
          v43 = [*(v15 + 1744) numberWithUnsignedInteger:v12];
          v44 = v98;
          goto LABEL_49;
        }

        v33 = [NSOrderedCollectionChange alloc];
        if (v94)
        {
          v32 = 0;
        }

        else
        {
          v32 = [a1 objectAtIndexedSubscript:v12];
        }

        v39 = v33;
        v40 = 0;
        v41 = v12;
      }

      v42 = [(NSOrderedCollectionChange *)v39 initWithObject:v32 type:v40 index:v41];
      [v10 addObject:v42];

      v15 = 0x1E69EE000;
LABEL_50:
      v28 = v14-- <= 2;
    }

    while (!v28);
  }

  objc_autoreleasePoolPop(context);
  v45 = v10;
  if ((v94 & 4) != 0)
  {
    if (obj != &__block_literal_global_28)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"NSArray<NSOrderedCollectionChange *> *_generateElements(NSArray * stringWithUTF8String:NSPointerArray *, NSOrderedCollectionDifferenceCalculationOptions, BOOL (^)(id, id))"], @"NSArray+NSArrayDiffing.m", 186, @"Implementation does not support inferring moves using a custom equality test"];
    }

    v45 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSPointerArray count](v9, "count") - 1}];
    v46 = objc_opt_new();
    v100 = objc_opt_new();
    v88 = objc_autoreleasePoolPush();
    v47 = [v93 keysOfEntriesPassingTest:&__block_literal_global_41];
    [v97 removeObjectsForKeys:{objc_msgSend(objc_msgSend(v97, "keysOfEntriesPassingTest:", &__block_literal_global_43_0), "allObjects")}];
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    obja = v47;
    v48 = [v47 countByEnumeratingWithState:&v112 objects:v111 count:16];
    if (v48)
    {
      v49 = v48;
      contexta = *v113;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v113 != contexta)
          {
            objc_enumerationMutation(obja);
          }

          v51 = *(*(&v112 + 1) + 8 * i);
          v52 = [v51 nonretainedObjectValue];
          v53 = [v97 objectForKeyedSubscript:v51];
          if (v53)
          {
            v54 = v53;
            v55 = [objc_msgSend(v93 objectForKeyedSubscript:{v51), "unsignedIntegerValue"}];
            v56 = [v54 unsignedIntegerValue];
            v57 = [NSOrderedCollectionChange alloc];
            if ((v94 & 2) != 0)
            {
              v58 = 0;
            }

            else
            {
              v58 = v52;
            }

            v59 = [(NSOrderedCollectionChange *)v57 initWithObject:v58 type:1 index:v55 associatedIndex:v56];
            v60 = [NSOrderedCollectionChange alloc];
            v61 = 0;
            if ((v94 & 1) == 0)
            {
              v61 = [v98 objectForKeyedSubscript:v54];
            }

            v62 = [(NSOrderedCollectionChange *)v60 initWithObject:v61 type:0 index:v56 associatedIndex:v55];
            [v45 addObject:v59];
            [v45 addObject:v62];
            [v100 addIndex:v55];
            [v46 addIndex:v56];
          }
        }

        v49 = [obja countByEnumeratingWithState:&v112 objects:v111 count:16];
      }

      while (v49);
    }

    objc_autoreleasePoolPop(v88);
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v63 = [v89 countByEnumeratingWithState:&v107 objects:v106 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v108;
      do
      {
        for (j = 0; j != v64; ++j)
        {
          if (*v108 != v65)
          {
            objc_enumerationMutation(v89);
          }

          v67 = *(*(&v107 + 1) + 8 * j);
          v68 = [v67 unsignedIntegerValue];
          if (([v100 containsIndex:v68] & 1) == 0)
          {
            v69 = [NSOrderedCollectionChange alloc];
            if ((v94 & 2) != 0)
            {
              v70 = 0;
            }

            else
            {
              v70 = [v89 objectForKeyedSubscript:v67];
            }

            v71 = [(NSOrderedCollectionChange *)v69 initWithObject:v70 type:1 index:v68];
            [v45 addObject:v71];
          }
        }

        v64 = [v89 countByEnumeratingWithState:&v107 objects:v106 count:16];
      }

      while (v64);
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v72 = [v98 countByEnumeratingWithState:&v102 objects:v101 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v103;
      do
      {
        for (k = 0; k != v73; ++k)
        {
          if (*v103 != v74)
          {
            objc_enumerationMutation(v98);
          }

          v76 = *(*(&v102 + 1) + 8 * k);
          v77 = [v76 unsignedIntegerValue];
          if (([v46 containsIndex:v77] & 1) == 0)
          {
            v78 = [NSOrderedCollectionChange alloc];
            if (v94)
            {
              v79 = 0;
            }

            else
            {
              v79 = [v98 objectForKeyedSubscript:v76];
            }

            v80 = [(NSOrderedCollectionChange *)v78 initWithObject:v79 type:0 index:v77];
            [v45 addObject:v80];
          }
        }

        v73 = [v98 countByEnumeratingWithState:&v102 objects:v101 count:16];
      }

      while (v73);
    }

    v9 = v90;
  }

  v81 = [(NSPointerArray *)v9 count];
  if (v81)
  {
    v82 = v81 - 1;
    do
    {
      v83 = [(NSPointerArray *)v9 pointerAtIndex:v82];
      [(NSPointerArray *)v9 removePointerAtIndex:v82];
      free(v83);
      --v82;
    }

    while (v82 != -1);
  }

  return [[NSOrderedCollectionDifference alloc] initWithChanges:v45];
}

- (id)arrayByApplyingDifference:()NSArrayDiffing
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