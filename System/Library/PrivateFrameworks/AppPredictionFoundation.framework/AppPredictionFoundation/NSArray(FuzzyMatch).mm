@interface NSArray(FuzzyMatch)
- (uint64_t)atx_INCustomObjectComparator:()FuzzyMatch object2:;
- (uint64_t)atx_isFuzzyMatch:()FuzzyMatch;
@end

@implementation NSArray(FuzzyMatch)

- (uint64_t)atx_INCustomObjectComparator:()FuzzyMatch object2:
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = v6;
    identifier = [v5 identifier];
    identifier2 = [v7 identifier];

    v10 = [identifier compare:identifier2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }
  }

  return v10;
}

- (uint64_t)atx_isFuzzyMatch:()FuzzyMatch
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v12 = 1;
    }

    else
    {
      v5 = v4;
      v6 = [self count];
      if (v6 == [v5 count])
      {
        v7 = [self mutableCopy];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __40__NSArray_FuzzyMatch__atx_isFuzzyMatch___block_invoke;
        v15[3] = &unk_2785904A8;
        v15[4] = self;
        [v7 sortUsingComparator:v15];
        v8 = [v5 mutableCopy];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __40__NSArray_FuzzyMatch__atx_isFuzzyMatch___block_invoke_2;
        v14[3] = &unk_2785904A8;
        v14[4] = self;
        [v8 sortUsingComparator:v14];
        if ([v7 count])
        {
          v9 = 0;
          do
          {
            v10 = [v7 objectAtIndexedSubscript:v9];
            v11 = [v8 objectAtIndexedSubscript:v9];
            v12 = [v10 atx_isFuzzyMatch:v11];

            if ((v12 & 1) == 0)
            {
              break;
            }

            ++v9;
          }

          while (v9 < [v7 count]);
        }

        else
        {
          v12 = 1;
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end