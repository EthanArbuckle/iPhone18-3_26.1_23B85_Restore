@interface SFNavigationBarAccessoryButtonArrangement
- (id)description;
- (uint64_t)containsButtonType:(uint64_t)result;
- (void)enumerateButtonTypesFromEdge:(uint64_t)edge withLayoutDirection:(void *)direction usingBlock:;
- (void)initWithLeadingButtonTypes:(uint64_t)types trailingButtonTypes:(uint64_t)buttonTypes;
@end

@implementation SFNavigationBarAccessoryButtonArrangement

uint64_t __105__SFNavigationBarAccessoryButtonArrangement_enumerateButtonTypesFromEdge_withLayoutDirection_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = [a2 integerValue];
  v7 = *(v5 + 16);

  return v7(v5, v6, a4);
}

- (id)description
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = self->_leadingButtonTypes;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        integerValue = [*(*(&v23 + 1) + 8 * i) integerValue];
        v10 = @"stop";
        if (integerValue <= 3)
        {
          v10 = off_1E8490B40[integerValue];
        }

        [v3 appendFormat:@"[%@]", v10];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"..."];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  reverseObjectEnumerator = [(NSArray *)self->_trailingButtonTypes reverseObjectEnumerator];
  v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        integerValue2 = [*(*(&v19 + 1) + 8 * j) integerValue];
        v17 = @"stop";
        if (integerValue2 <= 3)
        {
          v17 = off_1E8490B40[integerValue2];
        }

        [v3 appendFormat:@"[%@]", v17];
      }

      v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  return v3;
}

- (void)initWithLeadingButtonTypes:(uint64_t)types trailingButtonTypes:(uint64_t)buttonTypes
{
  OUTLINED_FUNCTION_66();
  a16 = v17;
  a17 = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v20;
  if (v22)
  {
    a9.receiver = v22;
    a9.super_class = SFNavigationBarAccessoryButtonArrangement;
    v26 = objc_msgSendSuper2(&a9, sel_init);
    if (v26)
    {
      v27 = [v24 copy];
      v28 = v26[3];
      v26[3] = v27;

      v29 = [v25 copy];
      v30 = v26[2];
      v26[2] = v29;

      v31 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v25, "count") + objc_msgSend(v24, "count")}];
      [v31 addObjectsFromArray:v24];
      [v31 addObjectsFromArray:v25];
      v32 = [v31 copy];
      v33 = v26[1];
      v26[1] = v32;

      v34 = v26;
    }
  }

  OUTLINED_FUNCTION_61();
}

- (uint64_t)containsButtonType:(uint64_t)result
{
  if (result)
  {
    [MEMORY[0x1E696AD98] numberWithInteger:a2];
    objc_claimAutoreleasedReturnValue();
    v3 = [OUTLINED_FUNCTION_2() containsObject:v2];

    return v3;
  }

  return result;
}

- (void)enumerateButtonTypesFromEdge:(uint64_t)edge withLayoutDirection:(void *)direction usingBlock:
{
  directionCopy = direction;
  if (self)
  {
    v8 = a2 == 2 && edge == 0;
    v9 = v8;
    if (a2 == 8 && edge == 1)
    {
      v9 = 1;
    }

    v8 = v9 == 0;
    v11 = 16;
    if (!v8)
    {
      v11 = 24;
    }

    v12 = *(self + v11);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_45();
    v15 = __105__SFNavigationBarAccessoryButtonArrangement_enumerateButtonTypesFromEdge_withLayoutDirection_usingBlock___block_invoke;
    v16 = &unk_1E8490B00;
    v17 = directionCopy;
    v13 = v12;
    [v13 enumerateObjectsUsingBlock:v14];
  }
}

@end