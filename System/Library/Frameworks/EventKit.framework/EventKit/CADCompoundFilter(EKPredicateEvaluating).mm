@interface CADCompoundFilter(EKPredicateEvaluating)
- (uint64_t)ekPredicateFilterMatches:()EKPredicateEvaluating;
@end

@implementation CADCompoundFilter(EKPredicateEvaluating)

- (uint64_t)ekPredicateFilterMatches:()EKPredicateEvaluating
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  filters = [self filters];
  v6 = [filters countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(filters);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) ekPredicateFilterMatches:v4];
        operation = [self operation];
        if (v10)
        {
          if (operation == 1)
          {
            goto LABEL_13;
          }
        }

        else if (!operation)
        {
LABEL_13:

          goto LABEL_14;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [filters countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = [self operation] == 0;
LABEL_14:

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

@end