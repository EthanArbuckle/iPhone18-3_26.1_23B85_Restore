@interface NSConstraintCache
+ (uint64_t)createCachesForEntity:(uint64_t)a3 forValidator:;
- (id)description;
- (uint64_t)extendConstraint:(void *)a3 onParentEntity:(uint64_t)a4 parentCache:;
- (uint64_t)registerObject:(uint64_t)result;
- (uint64_t)reset;
- (void)dealloc;
- (void)initForEntity:(void *)a3 constraint:(void *)a4 extension:;
- (void)validateForSave:(void *)result;
@end

@implementation NSConstraintCache

- (uint64_t)reset
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    [*(result + 32) removeAllObjects];
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = *(v1 + 40);
    result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (result)
    {
      v3 = result;
      v4 = *v8;
      do
      {
        v5 = 0;
        do
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(v2);
          }

          [(NSConstraintCache *)*(*(&v7 + 1) + 8 * v5++) reset];
        }

        while (v3 != v5);
        result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
        v3 = result;
      }

      while (result);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  self->_entity = 0;

  self->_constraint = 0;
  self->_extension = 0;

  self->_children = 0;
  self->_knownValues = 0;
  v3.receiver = self;
  v3.super_class = NSConstraintCache;
  [(NSConstraintCache *)&v3 dealloc];
}

- (uint64_t)extendConstraint:(void *)a3 onParentEntity:(uint64_t)a4 parentCache:
{
  v54 = *MEMORY[0x1E69E9840];
  v31 = result;
  if (result)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [a3 subentities];
    result = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    v28 = result;
    if (result)
    {
      v27 = *v44;
      v37 = a4;
      do
      {
        v5 = 0;
        do
        {
          if (*v44 != v27)
          {
            v6 = v5;
            objc_enumerationMutation(obj);
            v5 = v6;
          }

          v29 = v5;
          v33 = *(*(&v43 + 1) + 8 * v5);
          v7 = [(NSEntityDescription *)v33 _extensionsOfParentConstraint:a2];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v32 = v7;
          v35 = [v7 countByEnumeratingWithState:&v39 objects:v51 count:16];
          if (v35)
          {
            v34 = *v40;
            do
            {
              v8 = 0;
              do
              {
                if (*v40 != v34)
                {
                  objc_enumerationMutation(v32);
                }

                v38 = v8;
                v36 = *(*(&v39 + 1) + 8 * v8);
                v9 = [v36 objectAtIndexedSubscript:0];
                if (a4)
                {
                  v10 = v9;
                  v49 = 0u;
                  v50 = 0u;
                  v47 = 0u;
                  v48 = 0u;
                  v11 = *(a4 + 40);
                  v12 = [v11 countByEnumeratingWithState:&v47 objects:v53 count:16];
                  if (v12)
                  {
                    v13 = v12;
                    v14 = *v48;
                    do
                    {
                      v15 = 0;
                      do
                      {
                        if (*v48 != v14)
                        {
                          objc_enumerationMutation(v11);
                        }

                        v16 = *(*(&v47 + 1) + 8 * v15);
                        if (v16)
                        {
                          v17 = *(v16 + 8);
                        }

                        else
                        {
                          v17 = 0;
                        }

                        v18 = [v10 count];
                        v19 = [v17 count];
                        if (v18 > v19)
                        {
                          v20 = 0;
                          v21 = v19;
                          if (v19)
                          {
                            v22 = 0;
                            do
                            {
                              v20 += [objc_msgSend(v10 objectAtIndex:{v22), "isEqual:", objc_msgSend(v17, "objectAtIndex:", v22)}];
                              ++v22;
                            }

                            while (v21 != v22);
                          }

                          if (v20 == v21)
                          {
                            a4 = v37;
                            goto LABEL_33;
                          }
                        }

                        ++v15;
                      }

                      while (v15 != v13);
                      v23 = [v11 countByEnumeratingWithState:&v47 objects:v53 count:16];
                      v13 = v23;
                      a4 = v37;
                    }

                    while (v23);
                  }
                }

                v24 = -[NSConstraintCache initForEntity:constraint:extension:]([NSConstraintCache alloc], v33, [v36 objectAtIndexedSubscript:0], objc_msgSend(v36, "objectAtIndexedSubscript:", 2));
                if (a4)
                {
                  [*(a4 + 40) addObject:v24];
                }

                -[NSConstraintCache extendConstraint:onParentEntity:parentCache:](v31, [v36 objectAtIndexedSubscript:0], v33, v24);
LABEL_33:
                v8 = v38 + 1;
              }

              while (v38 + 1 != v35);
              v35 = [v32 countByEnumeratingWithState:&v39 objects:v51 count:16];
            }

            while (v35);
          }

          [(NSConstraintCache *)v31 extendConstraint:a2 onParentEntity:v33 parentCache:a4];
          v5 = v29 + 1;
        }

        while (v29 + 1 != v28);
        result = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
        v28 = result;
      }

      while (result);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)initForEntity:(void *)a3 constraint:(void *)a4 extension:
{
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = NSConstraintCache;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = v7;
  if (v7)
  {
    v7[3] = a2;
    v7[1] = a3;
    v8[2] = a4;
    v8[5] = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8[4] = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v8;
}

+ (uint64_t)createCachesForEntity:(uint64_t)a3 forValidator:
{
  v19 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  if (a2)
  {
    v5 = a2[16];
    if (!v5 || (v6 = *(v5 + 24)) == 0)
    {
      v6 = NSArray_EmptyArray;
    }
  }

  else
  {
    v6 = 0;
  }

  result = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if ((-[NSEntityDescription _constraintIsExtension:]([a2 superentity], v11) & 1) == 0)
        {
          v12 = [[NSConstraintCache alloc] initForEntity:a2 constraint:v11 extension:0];
          [(NSConstraintCache *)v12 extendConstraint:v11 onParentEntity:a2 parentCache:v12];
          [(NSConstraintValidator *)a3 _addConstraintRoot:v12 forEntity:a2];
        }

        ++v10;
      }

      while (v8 != v10);
      result = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v8 = result;
    }

    while (result);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSConstraintCache : entity = %@, constraint = %@, extension = %@>", -[NSEntityDescription name](self->_entity, "name"), self->_constraint, self->_extension];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (uint64_t)registerObject:(uint64_t)result
{
  v50 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_51;
  }

  v3 = result;
  result = [objc_msgSend(a2 "entity")];
  if (!result)
  {
    goto LABEL_51;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = v3;
  v5 = *(v3 + 8);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (!v6)
  {
    goto LABEL_25;
  }

  v7 = v6;
  v8 = *v39;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v39 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v38 + 1) + 8 * i);
      v11 = [v10 componentsSeparatedByString:@"."];
      if ([v11 count] < 2)
      {
        v13 = [a2 valueForKey:v10];
        if (!v13)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (![v11 count])
        {
          goto LABEL_19;
        }

        v12 = 0;
        v13 = 0;
        do
        {
          v14 = [v11 objectAtIndex:v12];
          if (v12)
          {
            v15 = [v13 objectForKey:v14];
          }

          else
          {
            v15 = [a2 valueForKey:v14];
          }

          v13 = v15;
          ++v12;
        }

        while ([v11 count] > v12);
        if (!v13)
        {
LABEL_19:
          v16 = [MEMORY[0x1E695DFB0] null];
          goto LABEL_22;
        }
      }

      if ([v13 isNSString])
      {
        v16 = [_PFRoutines sanitize:v13];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_23;
        }

        v16 = [v13 objectID];
      }

LABEL_22:
      v13 = v16;
LABEL_23:
      [v4 addObject:v13];
    }

    v7 = [v5 countByEnumeratingWithState:&v38 objects:v48 count:16];
  }

  while (v7);
LABEL_25:
  v17 = *(v33 + 16);
  if (!v17)
  {
    v17 = *(v33 + 8);
  }

  if ([v17 count] == 1)
  {
    v18 = [v4 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 objectID];

      v18 = v19;
    }
  }

  else
  {
    v20 = [NSConstraintCacheKey alloc];
    if (v20)
    {
      v46.receiver = v20;
      v46.super_class = NSConstraintCacheKey;
      v18 = objc_msgSendSuper2(&v46, sel_init);
      if (v18)
      {
        v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v22 = [v4 countByEnumeratingWithState:&v42 objects:v49 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v43;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v43 != v24)
              {
                objc_enumerationMutation(v4);
              }

              v26 = *(*(&v42 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v26 = [v26 objectID];
              }

              [v21 addObject:v26];
            }

            v23 = [v4 countByEnumeratingWithState:&v42 objects:v49 count:16];
          }

          while (v23);
        }

        v18[1] = [v21 copy];
      }
    }

    else
    {
      v18 = 0;
    }
  }

  v27 = [*(v33 + 32) objectForKey:v18];
  if (!v27)
  {
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(v33 + 32) setObject:v27 forKey:v18];
  }

  [v27 addObject:a2];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v28 = *(v33 + 40);
  result = [v28 countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (result)
  {
    v29 = result;
    v30 = *v35;
    do
    {
      v31 = 0;
      do
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(v28);
        }

        [(NSConstraintCache *)*(*(&v34 + 1) + 8 * v31++) registerObject:a2];
      }

      while (v29 != v31);
      result = [v28 countByEnumeratingWithState:&v34 objects:v47 count:16];
      v29 = result;
    }

    while (result);
  }

LABEL_51:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)validateForSave:(void *)result
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v3[5];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addObjectsFromArray:{objc_msgSend(-[NSConstraintCache validateForSave:](*(*(&v14 + 1) + 8 * i), v2), "allObjects")}];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v11 = v3[4];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __37__NSConstraintCache_validateForSave___block_invoke;
    v13[3] = &unk_1E6EC4328;
    v13[4] = v3;
    v13[5] = v2;
    v13[6] = v5;
    [v11 enumerateKeysAndObjectsUsingBlock:v13];

    result = v5;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void __37__NSConstraintCache_validateForSave___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E695DFB0] null] != a2 && objc_msgSend(a3, "count") >= 2 && *(a1 + 32))
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(a3);
          }

          v10 = [objc_msgSend(*(*(&v34 + 1) + 8 * i) "objectID")];
          if (!v10)
          {

            goto LABEL_15;
          }

          [v5 addObject:v10];
        }

        v7 = [a3 countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = [v5 count];

    if (v11 != [a3 count])
    {
LABEL_15:
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v12 = [a3 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v31;
        while (2)
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(a3);
            }

            if (![*(a1 + 40) containsObject:*(*(&v30 + 1) + 8 * j)])
            {
              [*(a1 + 40) addObjectsFromArray:a3];
              v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              v29 = 0u;
              v17 = [a3 countByEnumeratingWithState:&v26 objects:v38 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v27;
                do
                {
                  for (k = 0; k != v18; ++k)
                  {
                    if (*v27 != v19)
                    {
                      objc_enumerationMutation(a3);
                    }

                    v21 = *(*(&v26 + 1) + 8 * k);
                    if (!v21 || (v22 = *(v21 + 48)) == 0 || (v23 = *(v22 + 8)) == 0)
                    {
                      v23 = [MEMORY[0x1E695DFB0] null];
                    }

                    [v16 addObject:v23];
                  }

                  v18 = [a3 countByEnumeratingWithState:&v26 objects:v38 count:16];
                }

                while (v18);
              }

              v24 = [[NSConstraintConflict alloc] initWithConstraint:*(*(a1 + 32) + 8) databaseObject:0 databaseSnapshot:0 conflictingObjects:a3 conflictingSnapshots:v16];

              [*(a1 + 48) addObject:v24];
              goto LABEL_36;
            }
          }

          v13 = [a3 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_36:
  v25 = *MEMORY[0x1E69E9840];
}

@end