@interface NSArray(AppleMediaServices)
+ (id)ams_arrayWithItem:()AppleMediaServices count:;
+ (void)ams_enumerateObjectsForArrays:()AppleMediaServices usingBlock:;
- (id)ams_arrayByRemovingObjectsFromArray:()AppleMediaServices;
- (id)ams_dictionaryUsingTransform:()AppleMediaServices;
- (id)ams_filterUsingTest:()AppleMediaServices;
- (id)ams_firstObjectPassingTest:()AppleMediaServices;
- (id)ams_invertedDictionaryUsingTransform:()AppleMediaServices;
- (id)ams_invertedDictionaryUsingTransformIgnoresNil:()AppleMediaServices;
- (id)ams_mapWithTransform:()AppleMediaServices;
- (id)ams_mapWithTransformIgnoresNil:()AppleMediaServices;
- (id)ams_nonEmptyComponentsJoinedByString:()AppleMediaServices;
- (id)ams_objectAtIndex:()AppleMediaServices;
- (id)ams_reduceWithInitialResult:()AppleMediaServices updateAccumulatingResult:;
- (id)hashedDescription;
- (uint64_t)ams_allWithOptions:()AppleMediaServices test:;
- (uint64_t)ams_anyWithOptions:()AppleMediaServices test:;
@end

@implementation NSArray(AppleMediaServices)

- (id)hashedDescription
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p>", objc_opt_class(), self];
  [v2 appendString:@" {\n"];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = AMSHashIfNeeded(*(*(&v10 + 1) + 8 * i));
        [v2 appendFormat:@"  %@\n", v8];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [v2 appendString:@"}"];

  return v2;
}

- (uint64_t)ams_allWithOptions:()AppleMediaServices test:
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__NSArray_AppleMediaServices__ams_allWithOptions_test___block_invoke;
    v14[3] = &unk_1E73BE110;
    v15 = v6;
    v16 = &v17;
    [self enumerateObjectsWithOptions:a3 usingBlock:v14];
    v8 = *(v18 + 24);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    selfCopy = self;
    v10 = [selfCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = *v22;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(selfCopy);
          }

          if (!v7[2](v7, *(*(&v21 + 1) + 8 * v12)))
          {
            v8 = 0;
            goto LABEL_13;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [selfCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_13:
  }

  return v8 & 1;
}

- (uint64_t)ams_anyWithOptions:()AppleMediaServices test:
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__NSArray_AppleMediaServices__ams_anyWithOptions_test___block_invoke;
    v14[3] = &unk_1E73BE110;
    v15 = v6;
    v16 = &v17;
    [self enumerateObjectsWithOptions:a3 usingBlock:v14];
    v8 = *(v18 + 24);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    selfCopy = self;
    v10 = [selfCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = *v22;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(selfCopy);
          }

          if (v7[2](v7, *(*(&v21 + 1) + 8 * v12)))
          {

            v8 = 1;
            goto LABEL_13;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [selfCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
  }

LABEL_13:

  return v8 & 1;
}

- (id)ams_arrayByRemovingObjectsFromArray:()AppleMediaServices
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [self mutableCopy];
    [v5 removeObjectsInArray:v4];
    selfCopy = [v5 copy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)ams_arrayWithItem:()AppleMediaServices count:
{
  v5 = a3;
  if (a4)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
    do
    {
      [v6 addObject:v5];
      --a4;
    }

    while (a4);
    v7 = [v6 copy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  return v7;
}

- (id)ams_dictionaryUsingTransform:()AppleMediaServices
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = v4[2](v4, v11);
        [v5 setObject:v11 forKeyedSubscript:{v12, v15}];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

+ (void)ams_enumerateObjectsForArrays:()AppleMediaServices usingBlock:
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__NSArray_AppleMediaServices__ams_enumerateObjectsForArrays_usingBlock___block_invoke;
  v7[3] = &unk_1E73BE160;
  v8 = v5;
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

- (id)ams_filterUsingTest:()AppleMediaServices
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
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

  v12 = [v5 copy];

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

- (id)ams_invertedDictionaryUsingTransform:()AppleMediaServices
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__NSArray_AppleMediaServices__ams_invertedDictionaryUsingTransform___block_invoke;
  v8[3] = &unk_1E73BE188;
  v9 = v4;
  v5 = v4;
  v6 = [self ams_invertedDictionaryUsingTransformIgnoresNil:v8];

  return v6;
}

- (id)ams_invertedDictionaryUsingTransformIgnoresNil:()AppleMediaServices
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = v4[2](v4, v11);
        [v5 setObject:v12 forKeyedSubscript:{v11, v15}];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (id)ams_mapWithTransformIgnoresNil:()AppleMediaServices
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
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

  v12 = [v5 copy];

  return v12;
}

- (id)ams_mapWithTransform:()AppleMediaServices
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
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

  v12 = [v5 copy];

  return v12;
}

- (id)ams_nonEmptyComponentsJoinedByString:()AppleMediaServices
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([self count])
  {
    v6 = 1;
    do
    {
      v7 = v6 - 1;
      v8 = [self objectAtIndexedSubscript:v6 - 1];
      if (__68__NSArray_AppleMediaServices__ams_nonEmptyComponentsJoinedByString___block_invoke(v8))
      {
        v9 = [self count] - 1;
        v10 = [self count];
        if (v7 == v9 || v7 == v10 - 2 && ([self objectAtIndexedSubscript:v6], v11 = objc_claimAutoreleasedReturnValue(), v12 = __68__NSArray_AppleMediaServices__ams_nonEmptyComponentsJoinedByString___block_invoke(v11), v11, (v12 & 1) == 0))
        {
          [v5 appendFormat:@"%@", v8, v16];
        }

        else
        {
          [v5 appendFormat:@"%@%@", v8, v4];
        }
      }
    }

    while (v6++ < [self count]);
  }

  v14 = [v5 copy];

  return v14;
}

- (id)ams_objectAtIndex:()AppleMediaServices
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    if ([self count] <= a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = [self objectAtIndexedSubscript:a3];
    }
  }

  return v6;
}

- (id)ams_reduceWithInitialResult:()AppleMediaServices updateAccumulatingResult:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  v10 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  v11 = v8;
  if (v10)
  {
    v12 = v10;
    v13 = *v18;
    v11 = v8;
    do
    {
      v14 = 0;
      v15 = v11;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = v7[2](v7, v15, *(*(&v17 + 1) + 8 * v14));

        ++v14;
        v15 = v11;
      }

      while (v12 != v14);
      v12 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v11;
}

@end