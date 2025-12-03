@interface NSArray(UserNotifications)
- (id)un_filter:()UserNotifications;
- (id)un_map:()UserNotifications;
- (id)un_nonEmptyCopy;
- (id)un_safeArrayContainingClass:()UserNotifications;
- (id)un_safeArrayContainingClasses:()UserNotifications;
- (void)un_each:()UserNotifications;
@end

@implementation NSArray(UserNotifications)

- (id)un_filter:()UserNotifications
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__NSArray_UserNotifications__un_filter___block_invoke;
    v9[3] = &unk_1E7CFFD68;
    v10 = v4;
    v6 = [self indexesOfObjectsPassingTest:v9];
    v7 = [self objectsAtIndexes:v6];
  }

  else
  {
    v7 = [self copy];
  }

  return v7;
}

- (id)un_nonEmptyCopy
{
  v2 = [self count];
  if (v2)
  {
    v2 = [self copy];
  }

  return v2;
}

- (void)un_each:()UserNotifications
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__NSArray_UserNotifications__un_each___block_invoke;
    v6[3] = &unk_1E7CFFD90;
    v7 = v4;
    [self enumerateObjectsUsingBlock:v6];
  }
}

- (id)un_map:()UserNotifications
{
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v6 = array;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__NSArray_UserNotifications__un_map___block_invoke;
    v8[3] = &unk_1E7CFFDB8;
    v9 = array;
    v10 = v4;
    [self un_each:v8];
  }

  else
  {
    [array addObjectsFromArray:self];
  }

  return v6;
}

- (id)un_safeArrayContainingClass:()UserNotifications
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        [array un_safeAddObject:*(*(&v14 + 1) + 8 * i) class:{a3, v14}];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = [array copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)un_safeArrayContainingClasses:()UserNotifications
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        [array un_safeAddObject:*(*(&v14 + 1) + 8 * i) classes:{v4, v14}];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = [array copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end