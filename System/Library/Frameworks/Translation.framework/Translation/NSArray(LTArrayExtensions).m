@interface NSArray(LTArrayExtensions)
+ (__CFString)lt_stringArrayDebugDescription:()LTArrayExtensions;
- (BOOL)lt_hasObjectPassingTest:()LTArrayExtensions;
- (id)_ltCompactMap:()LTArrayExtensions;
- (id)lt_filterUsingBlock:()LTArrayExtensions;
- (id)lt_firstObjectPassingTest:()LTArrayExtensions;
- (id)lt_suffixWithMaxLength:()LTArrayExtensions;
- (uint64_t)lt_ensureElementType:()LTArrayExtensions;
@end

@implementation NSArray(LTArrayExtensions)

- (id)_ltCompactMap:()LTArrayExtensions
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __44__NSArray_LTArrayExtensions___ltCompactMap___block_invoke;
  v13 = &unk_278B6E340;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:&v10];
  v8 = [MEMORY[0x277CBEA60] arrayWithArray:{v6, v10, v11, v12, v13}];

  return v8;
}

- (id)lt_filterUsingBlock:()LTArrayExtensions
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:{v11, v15}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)lt_firstObjectPassingTest:()LTArrayExtensions
{
  v4 = a3;
  v5 = [a1 count];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = [a1 objectAtIndexedSubscript:0];
      if (v4[2](v4, v6))
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
    }

    else
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __56__NSArray_LTArrayExtensions__lt_firstObjectPassingTest___block_invoke;
      v11[3] = &unk_278B6E368;
      v12 = v4;
      v9 = [a1 indexOfObjectPassingTest:v11];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = 0;
      }

      else
      {
        v8 = [a1 objectAtIndexedSubscript:v9];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)lt_hasObjectPassingTest:()LTArrayExtensions
{
  v1 = [a1 lt_firstObjectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (id)lt_suffixWithMaxLength:()LTArrayExtensions
{
  v5 = [a1 count];
  v6 = v5 - a3;
  if (v5 <= a3)
  {
    v7 = [a1 copy];
  }

  else
  {
    v7 = [a1 subarrayWithRange:{v6, a3}];
  }

  return v7;
}

- (uint64_t)lt_ensureElementType:()LTArrayExtensions
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__NSArray_LTArrayExtensions__lt_ensureElementType___block_invoke;
  v4[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v4[4] = a3;
  return [a1 lt_hasObjectPassingTest:v4] ^ 1;
}

+ (__CFString)lt_stringArrayDebugDescription:()LTArrayExtensions
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 count])
    {
      v5 = [MEMORY[0x277CCAB68] stringWithString:@"@["];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = v4;
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

            [v5 appendFormat:@"\n\t%@, ", *(*(&v14 + 1) + 8 * i)];
          }

          v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v8);
      }

      [v5 appendString:@"\n]"];
      v11 = [v5 copy];
    }

    else
    {
      v11 = @"@[]";
    }
  }

  else
  {
    v11 = @"nil";
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end