@interface NSSet(AAAFoundation)
+ (id)aaf_empty;
- (id)aaf_filter:()AAAFoundation;
- (id)aaf_map:()AAAFoundation;
- (id)aaf_mapStoppable:()AAAFoundation;
- (id)aaf_setByRemovingObject:()AAAFoundation;
- (id)aaf_setByRemovingObjectsFromSet:()AAAFoundation;
@end

@implementation NSSet(AAAFoundation)

+ (id)aaf_empty
{
  if (aaf_empty__aaf_onceToken != -1)
  {
    +[NSSet(AAAFoundation) aaf_empty];
  }

  v1 = aaf_empty__aaf_empty;

  return v1;
}

- (id)aaf_filter:()AAAFoundation
{
  v4 = a3;
  if ([self count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(self, "count")}];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __35__NSSet_AAAFoundation__aaf_filter___block_invoke;
    v12 = &unk_1E831BA60;
    v13 = v5;
    v14 = v4;
    v6 = v5;
    [self enumerateObjectsUsingBlock:&v9];
    aaf_empty = [v6 copy];
  }

  else
  {
    aaf_empty = [MEMORY[0x1E695DFD8] aaf_empty];
  }

  return aaf_empty;
}

- (id)aaf_map:()AAAFoundation
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__NSSet_AAAFoundation__aaf_map___block_invoke;
  v8[3] = &unk_1E831BA88;
  v9 = v4;
  v5 = v4;
  v6 = [self aaf_mapStoppable:v8];

  return v6;
}

- (id)aaf_mapStoppable:()AAAFoundation
{
  v4 = a3;
  if ([self count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(self, "count")}];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __41__NSSet_AAAFoundation__aaf_mapStoppable___block_invoke;
    v12 = &unk_1E831BA60;
    v13 = v5;
    v14 = v4;
    v6 = v5;
    [self enumerateObjectsUsingBlock:&v9];
    aaf_empty = [v6 copy];
  }

  else
  {
    aaf_empty = [MEMORY[0x1E695DFD8] aaf_empty];
  }

  return aaf_empty;
}

- (id)aaf_setByRemovingObject:()AAAFoundation
{
  v4 = a3;
  if ([self count])
  {
    if (v4 && ([self containsObject:v4] & 1) != 0)
    {
      v5 = [self mutableCopy];
      [v5 removeObject:v4];
      v6 = [v5 copy];

      goto LABEL_8;
    }

    aaf_empty = [self copy];
  }

  else
  {
    aaf_empty = [MEMORY[0x1E695DFD8] aaf_empty];
  }

  v6 = aaf_empty;
LABEL_8:

  return v6;
}

- (id)aaf_setByRemovingObjectsFromSet:()AAAFoundation
{
  v4 = a3;
  if ([self count])
  {
    if ([v4 count])
    {
      v5 = [self mutableCopy];
      [v5 minusSet:v4];
      v6 = [v5 copy];

      goto LABEL_7;
    }

    aaf_empty = [self copy];
  }

  else
  {
    aaf_empty = [MEMORY[0x1E695DFD8] aaf_empty];
  }

  v6 = aaf_empty;
LABEL_7:

  return v6;
}

@end