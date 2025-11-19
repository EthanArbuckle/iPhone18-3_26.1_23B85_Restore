@interface NSDictionary(SCNExtensions)
- (unint64_t)SCN_safeHash;
@end

@implementation NSDictionary(SCNExtensions)

- (unint64_t)SCN_safeHash
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [a1 allKeys];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 ^= (v5 << 6) + 2654435769u + (v5 >> 2) + [*(*(&v18 + 1) + 8 * i) hash];
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [a1 allValues];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v5 ^= (v5 << 6) + 2654435769u + (v5 >> 2) + [*(*(&v14 + 1) + 8 * j) hash];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  return v5;
}

@end