@interface NSComparisonPredicate(HKFilterExtension)
- (id)_comparisonFilterWithKeyPath:()HKFilterExtension operatorType:value:dataTypes:isSubpredicate:;
- (id)_quantityTypeFromKeyPath:()HKFilterExtension prefix:;
- (id)hk_filterRepresentationForDataTypes:()HKFilterExtension isSubpredicate:;
@end

@implementation NSComparisonPredicate(HKFilterExtension)

- (id)hk_filterRepresentationForDataTypes:()HKFilterExtension isSubpredicate:
{
  v42 = *MEMORY[0x1E69E9840];
  v36 = a3;
  leftExpression = [self leftExpression];
  rightExpression = [self rightExpression];
  predicateOperatorType = [self predicateOperatorType];
  v8 = MEMORY[0x1E695D940];
  if ((predicateOperatorType > 0xA || predicateOperatorType == 6) && predicateOperatorType != 99)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported operator type in comparison expression: %@", self}];
  }

  expressionType = [leftExpression expressionType];
  v10 = leftExpression;
  v11 = expressionType != 3;
  if (expressionType == 3 || (v12 = [rightExpression expressionType], v10 = rightExpression, v12 == 3))
  {
    keyPath = [v10 keyPath];
  }

  else
  {
    keyPath = 0;
    v11 = 0;
  }

  v35 = leftExpression;
  if ([leftExpression expressionType] && (leftExpression = rightExpression, objc_msgSend(rightExpression, "expressionType")))
  {
    constantValue = 0;
    v14 = 1;
    if (keyPath)
    {
      goto LABEL_13;
    }
  }

  else
  {
    constantValue = [leftExpression constantValue];
    v14 = 0;
    if (keyPath)
    {
      goto LABEL_13;
    }
  }

  [MEMORY[0x1E695DF30] raise:*v8 format:{@"Expected key-path in comparison expression: %@", self}];
LABEL_13:
  if (v14)
  {
    [MEMORY[0x1E695DF30] raise:*v8 format:{@"Expected constant value in comparison expression: %@", self}];
  }

  predicateOperatorType2 = [self predicateOperatorType];
  if (predicateOperatorType2 < 4 && v11)
  {
    predicateOperatorType2 = qword_191DCD040[predicateOperatorType2];
  }

  v31 = predicateOperatorType2;
  v33 = rightExpression;
  if (hk_filterRepresentationForDataTypes_isSubpredicate__onceToken != -1)
  {
    [NSComparisonPredicate(HKFilterExtension) hk_filterRepresentationForDataTypes:isSubpredicate:];
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = hk_filterRepresentationForDataTypes_isSubpredicate__statsPrefixes;
  v18 = [v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v38;
    v21 = *v8;
    do
    {
      v22 = 0;
      do
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v37 + 1) + 8 * v22);
        if ([keyPath hasPrefix:v23])
        {
          v24 = [self _quantityTypeFromKeyPath:keyPath prefix:v23];
          if (!v24)
          {
            [MEMORY[0x1E695DF30] raise:v21 format:{@"Expected quantity type in comparison expression: %@", self}];
          }

          if ([v23 isEqualToString:@"sumQuantity"])
          {
            if (![v24 aggregationStyle])
            {
              goto LABEL_37;
            }

LABEL_35:
            v26 = @"Expected discrete statistics in comparison expression: %@";
LABEL_36:
            [MEMORY[0x1E695DF30] raise:v21 format:{v26, self}];
          }

          else
          {
            v25 = [v23 isEqualToString:@"activitySumQuantity"];
            if (![v24 aggregationStyle])
            {
              v26 = @"Expected cumulative statistics in comparison expression: %@";
              if (v25)
              {
                goto LABEL_37;
              }

              goto LABEL_36;
            }

            if (v25)
            {
              goto LABEL_35;
            }
          }

LABEL_37:
        }

        ++v22;
      }

      while (v19 != v22);
      v27 = [v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
      v19 = v27;
    }

    while (v27);
  }

  v28 = [self _comparisonFilterWithKeyPath:keyPath operatorType:v31 value:constantValue dataTypes:v36 isSubpredicate:a4];

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)_quantityTypeFromKeyPath:()HKFilterExtension prefix:
{
  v5 = a3;
  v6 = a4;
  if ([v5 hasPrefix:v6])
  {
    v7 = [v5 substringFromIndex:{objc_msgSend(v6, "length") + 1}];
    v8 = v7;
    if (v7)
    {
      v9 = +[HKQuantityType _quantityTypeWithCode:](HKQuantityType, "_quantityTypeWithCode:", [v7 integerValue]);
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

  return v9;
}

- (id)_comparisonFilterWithKeyPath:()HKFilterExtension operatorType:value:dataTypes:isSubpredicate:
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = HKComparisonFilterClasses();
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v24 + 1) + 8 * i) filterForKeyPath:v11 operatorType:a4 value:v12 dataTypes:v13 isSubpredicate:a7];
        if (v19)
        {
          v20 = v19;

          goto LABEL_11;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported key path %@ in comparison expression: %@", v11, self}];
  v20 = 0;
LABEL_11:

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

@end