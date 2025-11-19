@interface NSMeasurement(INCodableAttributeRelationComparing)
- (uint64_t)_intents_compareValue:()INCodableAttributeRelationComparing relation:;
@end

@implementation NSMeasurement(INCodableAttributeRelationComparing)

- (uint64_t)_intents_compareValue:()INCodableAttributeRelationComparing relation:
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a1 unit];
    v8 = [v6 measurementByConvertingToUnit:v7];

    v6 = v8;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v6;
      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
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

      v11 = v10;

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __85__NSMeasurement_INCodableAttributeRelationComparing___intents_compareValue_relation___block_invoke;
      v45[3] = &unk_1E7286E18;
      v45[4] = a1;
      v6 = [v11 if_flatMap:v45];
    }
  }

  v12 = 0;
  if (a4 > 5)
  {
    if (a4 <= 7)
    {
      if (a4 != 6)
      {
        v18 = MEMORY[0x1E696AD98];
        [a1 doubleValue];
        v14 = [v18 numberWithDouble:?];
        v19 = MEMORY[0x1E696AD98];
        v16 = v6;
        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v16;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        v32 = v20;

        [v32 doubleValue];
        v33 = [v19 numberWithDouble:?];
        if ([v14 compare:v33] == -1)
        {
          goto LABEL_56;
        }

        goto LABEL_46;
      }

      v21 = MEMORY[0x1E696AD98];
      [a1 doubleValue];
      v22 = [v21 numberWithDouble:?];
      v23 = MEMORY[0x1E696AD98];
      v24 = v6;
      if (v24)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v34 = v25;

      [v34 doubleValue];
      v36 = v35;

      v37 = [v23 numberWithDouble:v36];
      v38 = [v22 compare:v37] == -1;
      goto LABEL_61;
    }

    if (a4 == 8)
    {
      v26 = v6;
      if (v26)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
      }

      v14 = v27;

      if ([v14 count] == 2)
      {
        v39 = [v14 firstObject];
        v40 = [v14 lastObject];
        if ([a1 _intents_compareValue:v39 relation:5])
        {
          v12 = [a1 _intents_compareValue:v40 relation:7];
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

      goto LABEL_58;
    }

    if (a4 != 9)
    {
      if (a4 != 10)
      {
        goto LABEL_65;
      }

      goto LABEL_22;
    }

LABEL_25:
    v12 = [a1 isEqual:v6];
    goto LABEL_65;
  }

  if (a4 > 2)
  {
    if (a4 != 3)
    {
      if (a4 != 4)
      {
        v13 = MEMORY[0x1E696AD98];
        [a1 doubleValue];
        v14 = [v13 numberWithDouble:?];
        v15 = MEMORY[0x1E696AD98];
        v16 = v6;
        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
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

        v32 = v17;

        [v32 doubleValue];
        v33 = [v15 numberWithDouble:?];
        if ([v14 compare:v33] == 1)
        {
LABEL_56:
          v12 = 1;
          goto LABEL_57;
        }

LABEL_46:
        v12 = [a1 isEqual:v16];
LABEL_57:

LABEL_58:
        goto LABEL_65;
      }

      v28 = MEMORY[0x1E696AD98];
      [a1 doubleValue];
      v22 = [v28 numberWithDouble:?];
      v29 = MEMORY[0x1E696AD98];
      v30 = v6;
      if (v30)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = v30;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 0;
      }

      v41 = v31;

      [v41 doubleValue];
      v43 = v42;

      v37 = [v29 numberWithDouble:v43];
      v38 = [v22 compare:v37] == 1;
LABEL_61:
      v12 = v38;

      goto LABEL_65;
    }

LABEL_22:
    v12 = [a1 isEqual:v6] ^ 1;
    goto LABEL_65;
  }

  if (a4 == 1)
  {
    v12 = 1;
    goto LABEL_65;
  }

  if (a4 == 2)
  {
    goto LABEL_25;
  }

LABEL_65:

  return v12;
}

@end