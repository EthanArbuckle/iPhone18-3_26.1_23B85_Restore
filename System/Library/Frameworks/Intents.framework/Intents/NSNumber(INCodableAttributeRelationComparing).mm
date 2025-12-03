@interface NSNumber(INCodableAttributeRelationComparing)
- (uint64_t)_intents_compareValue:()INCodableAttributeRelationComparing relation:;
@end

@implementation NSNumber(INCodableAttributeRelationComparing)

- (uint64_t)_intents_compareValue:()INCodableAttributeRelationComparing relation:
{
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (a4 > 5)
  {
    if (a4 <= 7)
    {
      if (a4 != 6)
      {
        if (v6)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v7;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }

        v14 = v10;
        if ([self compare:v14] == -1)
        {
          goto LABEL_47;
        }

        goto LABEL_37;
      }

      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v7;
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

      v15 = v11;
      v16 = [self compare:v15];

      v17 = v16 == -1;
      goto LABEL_50;
    }

    if (a4 == 8)
    {
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v7;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v14 = v12;
      if ([v14 count] == 2)
      {
        firstObject = [v14 firstObject];
        lastObject = [v14 lastObject];
        if ([self _intents_compareValue:firstObject relation:5])
        {
          v8 = [self _intents_compareValue:lastObject relation:7];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_55;
    }

    if (a4 != 9)
    {
      if (a4 != 10)
      {
        goto LABEL_56;
      }

      goto LABEL_13;
    }

LABEL_16:
    v8 = [self isEqual:v6];
    goto LABEL_56;
  }

  if (a4 > 2)
  {
    if (a4 != 3)
    {
      if (a4 != 4)
      {
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

        v14 = v9;
        if ([self compare:v14] == 1)
        {
LABEL_47:
          v8 = 1;
          goto LABEL_55;
        }

LABEL_37:
        v8 = [self isEqual:v7];
LABEL_55:

        goto LABEL_56;
      }

      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v7;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v20 = v13;
      v21 = [self compare:v20];

      v17 = v21 == 1;
LABEL_50:
      v8 = v17;
      goto LABEL_56;
    }

LABEL_13:
    v8 = [self isEqual:v6] ^ 1;
    goto LABEL_56;
  }

  if (a4 == 1)
  {
    v8 = 1;
    goto LABEL_56;
  }

  if (a4 == 2)
  {
    goto LABEL_16;
  }

LABEL_56:

  return v8;
}

@end