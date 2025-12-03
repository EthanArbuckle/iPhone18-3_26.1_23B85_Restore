@interface NSObject(INCodableAttributeRelationComparing)
- (uint64_t)_intents_compareValue:()INCodableAttributeRelationComparing relation:;
@end

@implementation NSObject(INCodableAttributeRelationComparing)

- (uint64_t)_intents_compareValue:()INCodableAttributeRelationComparing relation:
{
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (a4 <= 7)
  {
    if (a4 == 1)
    {
      v8 = 1;
      goto LABEL_18;
    }

    if (a4 != 2)
    {
      if (a4 != 3)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }

LABEL_10:
    v8 = [self isEqual:v6];
    goto LABEL_18;
  }

  switch(a4)
  {
    case 8:
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v7;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      v8 = [v10 containsObject:self];

      break;
    case 9:
      goto LABEL_10;
    case 10:
LABEL_9:
      v8 = [self isEqual:v6] ^ 1;
      break;
  }

LABEL_18:

  return v8;
}

@end