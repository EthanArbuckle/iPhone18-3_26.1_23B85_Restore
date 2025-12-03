@interface NSSet(AppleMediaServices)
+ (id)ams_JSONClasses;
+ (id)ams_PLISTClasses;
- (id)ams_filterUsingTest:()AppleMediaServices;
- (id)ams_firstObjectPassingTest:()AppleMediaServices;
- (id)ams_mapWithTransform:()AppleMediaServices;
- (id)ams_mapWithTransformIgnoresNil:()AppleMediaServices;
- (id)ams_nonEmptyComponentsJoinedByString:()AppleMediaServices;
- (uint64_t)ams_allWithTest:()AppleMediaServices;
- (uint64_t)ams_anyWithTest:()AppleMediaServices;
@end

@implementation NSSet(AppleMediaServices)

+ (id)ams_JSONClasses
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:5];
  v2 = [v0 setWithArray:{v1, v4, v5, v6, v7}];

  return v2;
}

+ (id)ams_PLISTClasses
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:7];
  v2 = [v0 setWithArray:{v1, v4, v5, v6, v7, v8, v9}];

  return v2;
}

- (uint64_t)ams_allWithTest:()AppleMediaServices
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (!v4[2](v4, *(*(&v12 + 1) + 8 * v9)))
        {
          v10 = 0;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (uint64_t)ams_anyWithTest:()AppleMediaServices
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (v4[2](v4, *(*(&v10 + 1) + 8 * i)))
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)ams_filterUsingTest:()AppleMediaServices
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
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

        v11 = *(*(&v14 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:{v11, v14}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x1E695DFD8] setWithSet:v5];

  return v12;
}

- (id)ams_firstObjectPassingTest:()AppleMediaServices
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)ams_mapWithTransform:()AppleMediaServices
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
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

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        [v5 addObject:{v11, v14}];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x1E695DFD8] setWithSet:v5];

  return v12;
}

- (id)ams_mapWithTransformIgnoresNil:()AppleMediaServices
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
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

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:{v11, v14}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x1E695DFD8] setWithSet:v5];

  return v12;
}

- (id)ams_nonEmptyComponentsJoinedByString:()AppleMediaServices
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  allObjects = [self allObjects];
  if ([self count])
  {
    v7 = 1;
    do
    {
      v8 = v7 - 1;
      v9 = [allObjects objectAtIndexedSubscript:v7 - 1];
      if (__68__NSArray_AppleMediaServices__ams_nonEmptyComponentsJoinedByString___block_invoke(v9))
      {
        v10 = [allObjects count] - 1;
        v11 = [allObjects count];
        if (v8 == v10 || v8 == v11 - 2 && ([allObjects objectAtIndexedSubscript:v7], v12 = objc_claimAutoreleasedReturnValue(), v13 = __68__NSArray_AppleMediaServices__ams_nonEmptyComponentsJoinedByString___block_invoke(v12), v12, (v13 & 1) == 0))
        {
          [v5 appendFormat:@"%@", v9, v17];
        }

        else
        {
          [v5 appendFormat:@"%@%@", v9, v4];
        }
      }
    }

    while (v7++ < [self count]);
  }

  v15 = [MEMORY[0x1E696AEC0] stringWithString:v5];

  return v15;
}

@end