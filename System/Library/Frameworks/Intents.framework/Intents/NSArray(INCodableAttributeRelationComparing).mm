@interface NSArray(INCodableAttributeRelationComparing)
- (uint64_t)_intents_compareValue:()INCodableAttributeRelationComparing relation:;
@end

@implementation NSArray(INCodableAttributeRelationComparing)

- (uint64_t)_intents_compareValue:()INCodableAttributeRelationComparing relation:
{
  v6 = a3;
  v7 = 0;
  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v7 = 1;
    }

    else if (a4 == 2)
    {
      v7 = [a1 isEqual:v6];
    }
  }

  else
  {
    switch(a4)
    {
      case 3:
        v7 = [a1 isEqual:v6] ^ 1;
        break;
      case 9:
        v8 = [MEMORY[0x1E695DFD8] setWithArray:a1];
        v12 = MEMORY[0x1E695DFD8];
        v13 = v6;
        if (v13)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        v16 = [v12 setWithArray:v15];

        v7 = [v8 isSubsetOfSet:v16];
        goto LABEL_22;
      case 10:
        v8 = [MEMORY[0x1E695DFD8] setWithArray:a1];
        v9 = MEMORY[0x1E695DFD8];
        v10 = v6;
        if (v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        v17 = v11;

        v16 = [v9 setWithArray:v17];

        v7 = [v8 isSubsetOfSet:v16] ^ 1;
LABEL_22:

        break;
    }
  }

  return v7;
}

@end