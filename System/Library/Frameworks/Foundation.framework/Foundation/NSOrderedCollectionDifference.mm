@interface NSOrderedCollectionDifference
- (BOOL)isEqual:(id)equal;
- (NSArray)insertions;
- (NSArray)removals;
- (NSOrderedCollectionDifference)differenceByTransformingChangesWithBlock:(void *)block;
- (NSOrderedCollectionDifference)initWithChanges:(NSArray *)changes;
- (NSOrderedCollectionDifference)initWithInsertIndexes:(NSIndexSet *)inserts insertedObjects:(NSArray *)insertedObjects removeIndexes:(NSIndexSet *)removes removedObjects:(NSArray *)removedObjects additionalChanges:(NSArray *)changes;
- (NSOrderedCollectionDifference)inverseDifference;
- (id)_changeWithType:(int64_t)type index:(unint64_t)index object:(id)object;
- (id)debugDescription;
- (id)description;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)hash;
- (void)_enumerateChangesInDiffOrderWithBlock:(id)block;
- (void)dealloc;
@end

@implementation NSOrderedCollectionDifference

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSOrderedCollectionDifference;
  [(NSOrderedCollectionDifference *)&v3 dealloc];
}

- (NSArray)removals
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSIndexSet count](self->_removeIndexes, "count")}];
  removeIndexes = self->_removeIndexes;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__NSOrderedCollectionDifference_removals__block_invoke;
  v8[3] = &unk_1E69F6C20;
  v8[4] = v4;
  v8[5] = self;
  v8[6] = v9;
  [(NSIndexSet *)removeIndexes enumerateIndexesUsingBlock:v8];
  v6 = [v4 copy];
  _Block_object_dispose(v9, 8);
  objc_autoreleasePoolPop(v3);
  return v6;
}

- (NSArray)insertions
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSIndexSet count](self->_insertIndexes, "count")}];
  insertIndexes = self->_insertIndexes;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__NSOrderedCollectionDifference_insertions__block_invoke;
  v8[3] = &unk_1E69F6C20;
  v8[4] = v4;
  v8[5] = self;
  v8[6] = v9;
  [(NSIndexSet *)insertIndexes enumerateIndexesUsingBlock:v8];
  v6 = [v4 copy];
  _Block_object_dispose(v9, 8);
  objc_autoreleasePoolPop(v3);
  return v6;
}

- (NSOrderedCollectionDifference)initWithChanges:(NSArray *)changes
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(NSArray *)changes countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (!v5)
  {
    v14 = +[NSIndexSet indexSet];
    v16 = 0;
    v15 = 0;
    return [(NSOrderedCollectionDifference *)self initWithInsertIndexes:v14 insertedObjects:v15 removeIndexes:+[NSIndexSet removedObjects:"indexSet"]additionalChanges:v16, changes];
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = *v20;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(changes);
      }

      v11 = *(*(&v19 + 1) + 8 * i);
      changeType = [v11 changeType];
      object = [v11 object];
      if (changeType == 1)
      {
        if ((v7 & (object != 0)) != 0)
        {
          goto LABEL_18;
        }

        v8 |= object != 0;
      }

      else
      {
        if ((v8 & (object != 0)) != 0)
        {
LABEL_18:
          v14 = +[NSIndexSet indexSet];
          v16 = MEMORY[0x1E695E0F0];
LABEL_19:
          v15 = MEMORY[0x1E695E0F0];
          return [(NSOrderedCollectionDifference *)self initWithInsertIndexes:v14 insertedObjects:v15 removeIndexes:+[NSIndexSet removedObjects:"indexSet"]additionalChanges:v16, changes];
        }

        v7 |= object != 0;
      }
    }

    v6 = [(NSArray *)changes countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

  v14 = +[NSIndexSet indexSet];
  v15 = 0;
  if (v8)
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v16 = 0;
  }

  if (v7)
  {
    goto LABEL_19;
  }

  return [(NSOrderedCollectionDifference *)self initWithInsertIndexes:v14 insertedObjects:v15 removeIndexes:+[NSIndexSet removedObjects:"indexSet"]additionalChanges:v16, changes];
}

- (NSOrderedCollectionDifference)initWithInsertIndexes:(NSIndexSet *)inserts insertedObjects:(NSArray *)insertedObjects removeIndexes:(NSIndexSet *)removes removedObjects:(NSArray *)removedObjects additionalChanges:(NSArray *)changes
{
  v91 = *MEMORY[0x1E69E9840];
  v75.receiver = self;
  v75.super_class = NSOrderedCollectionDifference;
  v11 = [(NSOrderedCollectionDifference *)&v75 init];
  if (!v11)
  {
    return v11;
  }

  if (insertedObjects)
  {
    v12 = [(NSArray *)insertedObjects count];
    if (v12 != [(NSIndexSet *)inserts count])
    {

      v61 = MEMORY[0x1E695DF30];
      v62 = *MEMORY[0x1E695D940];
      v63 = @"Count of inserted objects does not match count of inserted indexes";
      goto LABEL_84;
    }
  }

  if (removedObjects)
  {
    v13 = [(NSArray *)removedObjects count];
    if (v13 != [(NSIndexSet *)removes count])
    {

      v61 = MEMORY[0x1E695DF30];
      v62 = *MEMORY[0x1E695D940];
      v63 = @"Count of removed objects does not match count of removed indexes";
      goto LABEL_84;
    }
  }

  if ([(NSArray *)changes count])
  {
    v64 = v11;
    v67 = objc_opt_new();
    v68 = objc_opt_new();
    v14 = [(NSIndexSet *)inserts mutableCopy];
    v73 = [(NSArray *)insertedObjects mutableCopy];
    v15 = [(NSIndexSet *)removes mutableCopy];
    v16 = [(NSArray *)removedObjects mutableCopy];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v17 = [(NSArray *)changes countByEnumeratingWithState:&v82 objects:v81 count:16];
    v18 = changes;
    if (!v17)
    {
      goto LABEL_46;
    }

    v19 = v17;
    v20 = *v83;
    v69 = *v83;
    v71 = v14;
    while (1)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v83 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v82 + 1) + 8 * i);
        index = [v22 index];
        object = [v22 object];
        if ([v22 changeType] == 1)
        {
          if ([(NSIndexSet *)v15 containsIndex:index])
          {

            v58 = MEMORY[0x1E695DF30];
            v59 = *MEMORY[0x1E695D940];
            v79 = @"index";
            v80 = [NSNumber numberWithUnsignedInteger:index];
            v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
            v63 = @"Insert index duplicated between index set and additional changes parameters";
            goto LABEL_80;
          }

          [(NSIndexSet *)v15 addIndex:index];
          if (object)
          {
            v25 = v16 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (v25)
          {
            if (object)
            {
              v26 = v16 == 0;
            }

            else
            {
              v26 = 0;
            }

            if (v26)
            {

              v61 = MEMORY[0x1E695DF30];
              v62 = *MEMORY[0x1E695D940];
              v63 = @"No removed objects array provided, but additional change included object";
              goto LABEL_84;
            }

            if (!object && v16)
            {

              v61 = MEMORY[0x1E695DF30];
              v62 = *MEMORY[0x1E695D940];
              v63 = @"Removed objects array provided, but additional change omitted object";
              goto LABEL_84;
            }
          }

          else
          {
            [(NSArray *)v16 insertObject:object atIndex:[(NSIndexSet *)v15 countOfIndexesInRange:0, index]];
          }

          associatedIndex = [v22 associatedIndex];
          if (associatedIndex != 0x7FFFFFFFFFFFFFFFLL)
          {
            v30 = associatedIndex;
            v31 = v15;
            v32 = v18;
            v33 = v16;
            v34 = v14;
            v35 = v68;
LABEL_43:
            [v35 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", v30), +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", index)}];
            v14 = v34;
            v16 = v33;
            v18 = v32;
            v15 = v31;
            v20 = v69;
            continue;
          }
        }

        else
        {
          if ([(NSIndexSet *)v14 containsIndex:index])
          {

            v58 = MEMORY[0x1E695DF30];
            v59 = *MEMORY[0x1E695D940];
            v77 = @"index";
            v78 = [NSNumber numberWithUnsignedInteger:index];
            v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
            v63 = @"Remove index duplicated between index set and additional changes parameters";
LABEL_80:
            v61 = v58;
            v62 = v59;
            goto LABEL_85;
          }

          [(NSIndexSet *)v14 addIndex:index];
          if (object)
          {
            v27 = v73 == 0;
          }

          else
          {
            v27 = 1;
          }

          if (v27)
          {
            if (object)
            {
              v28 = v73 == 0;
            }

            else
            {
              v28 = 0;
            }

            if (v28)
            {

              v61 = MEMORY[0x1E695DF30];
              v62 = *MEMORY[0x1E695D940];
              v63 = @"No inserted objects array provided, but additional changes included objects";
              goto LABEL_84;
            }

            if (!object && v73)
            {

              v61 = MEMORY[0x1E695DF30];
              v62 = *MEMORY[0x1E695D940];
              v63 = @"Inserted objects array provided, but additional change omitted object";
              goto LABEL_84;
            }
          }

          else
          {
            [(NSArray *)v73 insertObject:object atIndex:[(NSIndexSet *)v14 countOfIndexesInRange:0, index]];
          }

          associatedIndex2 = [v22 associatedIndex];
          v14 = v71;
          v18 = changes;
          if (associatedIndex2 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v31 = v15;
            v32 = changes;
            v33 = v16;
            v34 = v71;
            v30 = index;
            index = associatedIndex2;
            v35 = v67;
            goto LABEL_43;
          }
        }
      }

      v19 = [(NSArray *)v18 countByEnumeratingWithState:&v82 objects:v81 count:16];
      if (!v19)
      {
LABEL_46:
        v37 = v67;
        if ([v67 isEqual:{v68, v64}])
        {
          v11 = v65;
          if ([v67 count])
          {
            v38 = [_NSOrderedCollectionDifferenceMoves alloc];
            if (v38 && (v76.receiver = v38, v76.super_class = _NSOrderedCollectionDifferenceMoves, (v39 = [(NSOrderedCollectionDifference *)&v76 init]) != 0))
            {
              v40 = v39;
              v39->_insertIndexes = objc_opt_new();
              p_insertIndexes = &v40->_insertIndexes;
              v70 = v40;
              v40->_insertObjects = objc_opt_new();
              p_insertObjects = &v40->_insertObjects;
              v40->_removeIndexes = 0x7FFFFFFFFFFFFFFFLL;
              v87 = 0u;
              v88 = 0u;
              v89 = 0u;
              v90 = 0u;
              v41 = [(NSArray *)v18 countByEnumeratingWithState:&v87 objects:v86 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v88;
                do
                {
                  for (j = 0; j != v42; ++j)
                  {
                    if (*v88 != v43)
                    {
                      objc_enumerationMutation(changes);
                    }

                    v45 = *(*(&v87 + 1) + 8 * j);
                    associatedIndex3 = [v45 associatedIndex];
                    if (associatedIndex3 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v47 = associatedIndex3;
                      index2 = [v45 index];
                      changeType = [v45 changeType];
                      v50 = p_insertObjects;
                      if (changeType == 1)
                      {
                        v50 = p_insertIndexes;
                        if (index2 < v70->_firstRemove)
                        {
                          v70->_firstRemove = index2;
                          v50 = p_insertIndexes;
                        }
                      }

                      [*v50 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", v47), +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", index2)}];
                    }
                  }

                  v42 = [(NSArray *)changes countByEnumeratingWithState:&v87 objects:v86 count:16];
                }

                while (v42);
              }

              v51 = [*p_insertObjects count];
              if (v51 == [*p_insertIndexes count])
              {
                v11 = v65;
                v37 = v67;
                v52 = v70;
              }

              else
              {
                v52 = v70;
                [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:sel_initWithChanges_ file:v70 lineNumber:@"NSOrderedCollectionDifference.m" description:38, @"Unbalanced number of remove and insert changes with associations."];
                v11 = v65;
                v37 = v67;
              }
            }

            else
            {
              v52 = 0;
            }

            v11->_moves = v52;
          }

          v11->_removeIndexes = v15;
          if ([(NSIndexSet *)v15 count])
          {
            v11->_removeObjects = v16;
          }

          else
          {
            v11->_removeObjects = 0;
          }

          v11->_insertIndexes = v14;
          if ([(NSIndexSet *)v14 count])
          {
            v11->_insertObjects = v73;
          }

          else
          {
            v11->_insertObjects = 0;
          }

          return v11;
        }

        v61 = MEMORY[0x1E695DF30];
        v62 = *MEMORY[0x1E695D940];
        v63 = @"Inconsistent associations for moves";
LABEL_84:
        v60 = 0;
LABEL_85:
        objc_exception_throw([v61 exceptionWithName:v62 reason:v63 userInfo:v60]);
      }
    }
  }

  v53 = [(NSIndexSet *)inserts copy];
  v11->_insertIndexes = v53;
  v54 = [(NSIndexSet *)v53 count];
  if (v54)
  {
    v54 = [(NSArray *)insertedObjects copy];
  }

  v11->_insertObjects = v54;
  v55 = [(NSIndexSet *)removes copy];
  v11->_removeIndexes = v55;
  v56 = [(NSIndexSet *)v55 count];
  if (v56)
  {
    v56 = [(NSArray *)removedObjects copy];
  }

  v11->_removeObjects = v56;
  return v11;
}

- (NSOrderedCollectionDifference)differenceByTransformingChangesWithBlock:(void *)block
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSIndexSet count](self->_insertIndexes, "count") + -[NSIndexSet count](self->_removeIndexes, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSOrderedCollectionDifference *)self countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(self);
        }

        [v5 addObject:{(*(block + 2))(block, *(*(&v13 + 1) + 8 * v9++))}];
      }

      while (v7 != v9);
      v7 = [(NSOrderedCollectionDifference *)self countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v7);
  }

  v10 = [[NSOrderedCollectionDifference alloc] initWithChanges:v5];

  return v10;
}

- (id)_changeWithType:(int64_t)type index:(unint64_t)index object:(id)object
{
  moves = self->_moves;
  if (!moves)
  {
    goto LABEL_6;
  }

  v9 = 16;
  if (type == 1)
  {
    v9 = 8;
  }

  v10 = [*(&moves->super.isa + v9) objectForKeyedSubscript:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", index)}];
  if (v10)
  {
    unsignedIntegerValue = [v10 unsignedIntegerValue];
  }

  else
  {
LABEL_6:
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = [[NSOrderedCollectionChange alloc] initWithObject:object type:type index:index associatedIndex:unsignedIntegerValue];

  return v12;
}

- (void)_enumerateChangesInDiffOrderWithBlock:(id)block
{
  v5 = [(NSIndexSet *)self->_removeIndexes count];
  v6 = [(NSIndexSet *)self->_insertIndexes count];
  firstIndex = [(NSIndexSet *)self->_removeIndexes firstIndex];
  firstIndex2 = [(NSIndexSet *)self->_insertIndexes firstIndex];
  if (v5 | v6)
  {
    v9 = firstIndex2;
    v10 = 0;
    v11 = 0;
    do
    {
      if (firstIndex - v10 <= v9 - v11)
      {
        (*(block + 2))(block, [(NSOrderedCollectionDifference *)self _changeWithType:1 index:firstIndex object:[(NSArray *)self->_removeObjects objectAtIndex:v10++]]);
        firstIndex = [(NSIndexSet *)self->_removeIndexes indexGreaterThanIndex:firstIndex];
      }

      else
      {
        (*(block + 2))(block, [(NSOrderedCollectionDifference *)self _changeWithType:0 index:v9 object:[(NSArray *)self->_insertObjects objectAtIndex:v11++]]);
        v9 = [(NSIndexSet *)self->_insertIndexes indexGreaterThanIndex:v9];
      }
    }

    while (v10 < v5 || v11 < v6);
  }
}

- (NSOrderedCollectionDifference)inverseDifference
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSOrderedCollectionDifference *)self differenceByTransformingChangesWithBlock:&__block_literal_global_63];
  objc_autoreleasePoolPop(v3);

  return v4;
}

NSOrderedCollectionChange *__50__NSOrderedCollectionDifference_inverseDifference__block_invoke(uint64_t a1, void *a2)
{
  v2 = -[NSOrderedCollectionChange initWithObject:type:index:associatedIndex:]([NSOrderedCollectionChange alloc], "initWithObject:type:index:associatedIndex:", [a2 object], objc_msgSend(a2, "changeType") != 1, objc_msgSend(a2, "index"), objc_msgSend(a2, "associatedIndex"));

  return v2;
}

- (unint64_t)hash
{
  v3 = [(NSIndexSet *)self->_insertIndexes hash];
  v4 = [(NSIndexSet *)self->_removeIndexes hash]+ v3;
  v5 = v4 ^ ([(NSArray *)self->_removeObjects hash]<< 8);
  v6 = v5 ^ ([(NSArray *)self->_insertObjects hash]<< 16);
  return v6 ^ ([(_NSOrderedCollectionDifferenceMoves *)self->_moves hash]<< 24);
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = [(NSIndexSet *)self->_removeIndexes isEqual:*(equal + 3)];
    if (v5)
    {
      removeObjects = self->_removeObjects;
      if (removeObjects == *(equal + 4) || (v5 = [(NSArray *)removeObjects isEqual:?]) != 0)
      {
        v5 = [(NSIndexSet *)self->_insertIndexes isEqual:*(equal + 1)];
        if (v5)
        {
          insertObjects = self->_insertObjects;
          if (insertObjects == *(equal + 2) || (v5 = [(NSArray *)insertObjects isEqual:?]) != 0)
          {
            moves = self->_moves;
            if (moves == *(equal + 5))
            {
              LOBYTE(v5) = 1;
            }

            else
            {

              LOBYTE(v5) = [(_NSOrderedCollectionDifferenceMoves *)moves isEqual:?];
            }
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)description
{
  v3 = [(NSIndexSet *)self->_removeIndexes count];
  v4 = [(NSIndexSet *)self->_insertIndexes count];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = @"s";
  if (v4 == 1)
  {
    v8 = &stru_1EEEFDF90;
  }

  else
  {
    v8 = @"s";
  }

  if (v3 == 1)
  {
    v7 = &stru_1EEEFDF90;
  }

  return [NSString stringWithFormat:@"<%@: %p>(%lu insertion%@, %lu removal%@)", v6, self, v4, v8, v3, v7];
}

- (id)debugDescription
{
  v48 = *MEMORY[0x1E69E9840];
  hasChanges = [(NSOrderedCollectionDifference *)self hasChanges];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v4 = [(NSOrderedCollectionDifference *)self countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (v4)
  {
    v5 = *v45;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v45 != v5)
      {
        objc_enumerationMutation(self);
      }

      [*(*(&v44 + 1) + 8 * v6) object];
      if (!_NSIsNSString())
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSOrderedCollectionDifference *)self countByEnumeratingWithState:&v44 objects:v43 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else if (hasChanges)
  {
LABEL_11:
    v7 = objc_opt_new();
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v37[3] = 0;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v36[3] = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3052000000;
    v33 = __Block_byref_object_copy__21;
    v34 = __Block_byref_object_dispose__21;
    v35 = 0;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v29[3] = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v28[3] = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v27[3] = 0;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v26[3] = 0;
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v25[3] = 0;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v24 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v15 = ___diffStr_block_invoke;
    v16 = &unk_1E69F6C68;
    v17 = v7;
    v18 = v29;
    v19 = v27;
    v20 = v28;
    v21 = v26;
    v22 = &v30;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___diffStr_block_invoke_2;
    v13[3] = &unk_1E69F6C90;
    v13[6] = v26;
    v13[7] = v23;
    v13[8] = v25;
    v13[9] = &v30;
    v13[4] = v14;
    v13[5] = v27;
    v13[10] = v29;
    v13[11] = v28;
    v13[12] = v36;
    v13[13] = v37;
    [(NSOrderedCollectionDifference *)self _enumerateChangesInDiffOrderWithBlock:v13];
    if (v31[5])
    {
      v15(v14);
    }

    _Block_object_dispose(v23, 8);
    _Block_object_dispose(v25, 8);
    _Block_object_dispose(v26, 8);
    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v29, 8);
    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(v36, 8);
    _Block_object_dispose(v37, 8);
    return v7;
  }

  v7 = +[NSString stringWithFormat:](NSMutableString, "stringWithFormat:", @"%@ ("), [(NSOrderedCollectionDifference *)self description];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = [(NSOrderedCollectionDifference *)self countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v8)
  {
    v9 = *v40;
    v10 = @"\n";
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(self);
        }

        -[NSMutableString appendFormat:](v7, "appendFormat:", @"\n\t%@", [*(*(&v39 + 1) + 8 * i) debugDescription]);
      }

      v8 = [(NSOrderedCollectionDifference *)self countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = &stru_1EEEFDF90;
  }

  [(NSMutableString *)v7 appendFormat:@"%@"], v10);
  return v7;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  var0 = state->var0;
  if (state->var0)
  {
    v10 = state->var3[0];
    lastIndex = state->var3[1];
  }

  else if ([(NSIndexSet *)self->_removeIndexes count])
  {
    lastIndex = [(NSIndexSet *)self->_removeIndexes lastIndex];
    v10 = 1;
  }

  else
  {
    if (![(NSIndexSet *)self->_insertIndexes count])
    {
      return 0;
    }

    lastIndex = [(NSIndexSet *)self->_insertIndexes firstIndex];
    v10 = 0;
  }

  v12 = [(NSIndexSet *)self->_removeIndexes count];
  v13 = [(NSIndexSet *)self->_insertIndexes count];
  v14 = 0;
  if (count)
  {
    v15 = v13 + v12;
    if (var0 < v13 + v12)
    {
      v20 = a2;
      v14 = 0;
      v22 = -v12;
      v16 = ~var0 + v12;
      while (1)
      {
        if (v10 == 1)
        {
          v17 = [(NSOrderedCollectionDifference *)self _changeWithType:1 index:lastIndex object:[(NSArray *)self->_removeObjects objectAtIndex:v16]];
          v18 = [(NSIndexSet *)self->_removeIndexes indexLessThanIndex:lastIndex];
          if (v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            lastIndex = [(NSIndexSet *)self->_insertIndexes firstIndex];
            v10 = 0;
            if (v17)
            {
              goto LABEL_15;
            }
          }

          else
          {
            lastIndex = v18;
            v10 = 1;
            if (v17)
            {
              goto LABEL_15;
            }
          }
        }

        else
        {
          v17 = [(NSOrderedCollectionDifference *)self _changeWithType:0 index:lastIndex object:[(NSArray *)self->_insertObjects objectAtIndex:v22 + var0]];
          lastIndex = [(NSIndexSet *)self->_insertIndexes indexGreaterThanIndex:lastIndex];
          if (v17)
          {
            goto LABEL_15;
          }
        }

        [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:v20 file:self lineNumber:@"NSOrderedCollectionDifference.m" description:502, @"Failed to materialize change for diff offset %lu", var0];
LABEL_15:
        objects[v14++] = v17;
        if (++var0 < v15)
        {
          --v16;
          if (v14 < count)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  state->var2 = &countByEnumeratingWithState_objects_count__const_mu;
  state->var3[0] = v10;
  state->var3[1] = lastIndex;
  state->var0 = var0;
  state->var1 = objects;
  return v14;
}

@end