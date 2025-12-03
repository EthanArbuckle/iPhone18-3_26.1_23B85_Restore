@interface NSString(INCodableAttributeRelationComparing)
- (uint64_t)_intents_compareValue:()INCodableAttributeRelationComparing relation:;
@end

@implementation NSString(INCodableAttributeRelationComparing)

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

        v18 = v12;
        if ([self compare:v18] == -1)
        {
          goto LABEL_63;
        }

LABEL_53:
        selfCopy2 = self;
        v20 = v7;
LABEL_54:
        v21 = [selfCopy2 isEqualToString:v20];
LABEL_74:
        v8 = v21;
        goto LABEL_75;
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

      v22 = v13;
      v23 = [self compare:v22];

      v24 = v23 == -1;
      goto LABEL_69;
    }

    switch(a4)
    {
      case 8:
        if (v6)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v7;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }

        v18 = v15;
        v21 = [v18 containsObject:self];
        goto LABEL_74;
      case 9:
        if (v6)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v7;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;
        v21 = [self containsString:v18];
        goto LABEL_74;
      case 10:
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

        v25 = v10;
        v26 = [self containsString:v25];
        goto LABEL_66;
    }
  }

  else
  {
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

          v18 = v9;
          if ([self compare:v18] == 1)
          {
LABEL_63:
            v8 = 1;
LABEL_75:

            goto LABEL_76;
          }

          goto LABEL_53;
        }

        if (v6)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v7;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        v28 = v16;
        v29 = [self compare:v28];

        v24 = v29 == 1;
LABEL_69:
        v8 = v24;
        goto LABEL_76;
      }

      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v7;
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

      v25 = v14;
      v26 = [self isEqualToString:v25];
LABEL_66:
      v27 = v26;

      v8 = v27 ^ 1u;
      goto LABEL_76;
    }

    if (a4 == 1)
    {
      v8 = 1;
    }

    else if (a4 == 2)
    {
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

      v18 = v11;
      selfCopy2 = self;
      v20 = v18;
      goto LABEL_54;
    }
  }

LABEL_76:

  return v8;
}

@end