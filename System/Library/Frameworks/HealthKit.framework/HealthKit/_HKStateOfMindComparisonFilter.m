@interface _HKStateOfMindComparisonFilter
+ (BOOL)_isValidReflectiveInterval:(uint64_t)a1;
+ (BOOL)_isValidValence:(uint64_t)a1;
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4;
+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7;
+ (id)_allowedValueClassesForLabelsAndDomains;
+ (id)_allowedValueClassesForReflectiveInterval;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
+ (int64_t)enumRepresentationForKeyPath:(id)a3;
- (BOOL)acceptsDataObject:(id)a3;
- (uint64_t)_acceptsStateOfMindWithLabelsOrDomains:(void *)a1;
- (void)_acceptsStateOfMindWithReflectiveInterval:(void *)result;
- (void)_acceptsStateOfMindWithValence:(void *)result;
@end

@implementation _HKStateOfMindComparisonFilter

+ (id)allowedDataTypeClassesForKeyPath:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"reflectiveInterval"] || objc_msgSend(v5, "isEqualToString:", @"valence"))
  {
    v6 = +[_HKStateOfMindComparisonFilter _allowedValueClassesForReflectiveInterval];
  }

  else if ([v5 isEqualToString:@"labels"] || objc_msgSend(v5, "isEqualToString:", @"domains"))
  {
    v6 = +[_HKStateOfMindComparisonFilter _allowedValueClassesForLabelsAndDomains];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"_HKStateOfMindComparisonFilter.m" lineNumber:81 description:@"Unreachable code has been executed"];

    v6 = [MEMORY[0x1E695DFD8] set];
  }

  v8 = v6;

  return v8;
}

+ (id)_allowedValueClassesForReflectiveInterval
{
  v5[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)_allowedValueClassesForLabelsAndDomains
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v0 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:3];
  v2 = [v0 setWithArray:{v1, v5, v6}];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4
{
  v7 = a4;
  if ([v7 isEqualToString:@"reflectiveInterval"])
  {
    objc_opt_self();
    v8 = (a3 & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  else
  {
    if ([v7 isEqualToString:@"valence"])
    {
      objc_opt_self();
      v9 = a3 < 6;
      goto LABEL_13;
    }

    if (![v7 isEqualToString:@"labels"] && !objc_msgSend(v7, "isEqualToString:", @"domains"))
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:a1 file:@"_HKStateOfMindComparisonFilter.m" lineNumber:97 description:@"Unreachable code has been executed"];

      v9 = 0;
      goto LABEL_13;
    }

    objc_opt_self();
    v8 = a3 == 4 || a3 == 10;
  }

  v9 = v8;
LABEL_13:

  return v9;
}

+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v20.receiver = a1;
  v20.super_class = &OBJC_METACLASS____HKStateOfMindComparisonFilter;
  if (!objc_msgSendSuper2(&v20, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, v13, v14, a5, a6, a7))
  {
    goto LABEL_11;
  }

  if (![v14 isEqualToString:@"reflectiveInterval"])
  {
    if ([v14 isEqualToString:@"valence"])
    {
      v15 = [(_HKStateOfMindComparisonFilter *)a1 _isValidValence:v13];
      goto LABEL_9;
    }

    if ([v14 isEqualToString:@"labels"] || objc_msgSend(v14, "isEqualToString:", @"domains"))
    {
      v16 = objc_opt_class();
      v15 = HKIsValueOrContainerValidForOperatorType(a5, v13, v16, a7);
      goto LABEL_9;
    }

    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"_HKStateOfMindComparisonFilter.m" lineNumber:119 description:@"Unreachable code has been executed"];

LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  v15 = [(_HKStateOfMindComparisonFilter *)a1 _isValidReflectiveInterval:v13];
LABEL_9:
  v17 = v15;
LABEL_12:

  return v17;
}

+ (BOOL)_isValidReflectiveInterval:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(_HKStateOfMindComparisonFilter *)sel__isValidReflectiveInterval_ _isValidReflectiveInterval:v3];
  }

  v4 = +[HKStateOfMind validateKind:](HKStateOfMind, "validateKind:", HKStateOfMindKindFromReflectiveInterval([v2 integerValue]));
  v5 = v4 == 0;

  return v5;
}

+ (BOOL)_isValidValence:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(_HKStateOfMindComparisonFilter *)sel__isValidValence_ _isValidValence:v3];
  }

  [v2 doubleValue];
  v4 = [HKStateOfMind validateValence:?];
  v5 = v4 == 0;

  return v5;
}

+ (int64_t)enumRepresentationForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"reflectiveInterval"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"valence"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"labels"])
  {
    v6 = 2;
  }

  else if ([v5 isEqualToString:@"domains"])
  {
    v6 = 3;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"_HKStateOfMindComparisonFilter.m" lineNumber:133 description:@"Unreachable code has been executed"];

    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS____HKStateOfMindComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, v5);
  }

  return v6;
}

- (BOOL)acceptsDataObject:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(_HKComparisonFilter *)self keyPathIntegerValue];
    if (v7 <= 1)
    {
      if (!v7)
      {
        v9 = -[_HKStateOfMindComparisonFilter _acceptsStateOfMindWithReflectiveInterval:](self, [v6 reflectiveInterval]);
        goto LABEL_13;
      }

      if (v7 == 1)
      {
        [v6 valence];
        v9 = [(_HKStateOfMindComparisonFilter *)self _acceptsStateOfMindWithValence:v8];
LABEL_13:
        v10 = v9;
        goto LABEL_10;
      }

LABEL_9:
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"_HKStateOfMindComparisonFilter.m" lineNumber:152 description:@"Unreachable code has been executed"];

      v10 = 0;
LABEL_10:

      goto LABEL_11;
    }

    if (v7 == 2)
    {
      v13 = [v6 labels];
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_9;
      }

      v13 = [v6 domains];
    }

    v14 = v13;
    v10 = [(_HKStateOfMindComparisonFilter *)self _acceptsStateOfMindWithLabelsOrDomains:v13];

    goto LABEL_10;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)_acceptsStateOfMindWithReflectiveInterval:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = [result value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:sel__acceptsStateOfMindWithReflectiveInterval_ object:v3 file:@"_HKStateOfMindComparisonFilter.m" lineNumber:189 description:@"Our comparison filter on reflective interval must only store an NSNumber value"];
    }

    v6 = [v3 value];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    [v7 compare:v6];
    [v3 operatorType];
    v8 = OUTLINED_FUNCTION_0_26();
    v10 = HKComparisonResultMatchesPredicateOperator(v8, v9);

    return v10;
  }

  return result;
}

- (void)_acceptsStateOfMindWithValence:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = [result value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:sel__acceptsStateOfMindWithValence_ object:v3 file:@"_HKStateOfMindComparisonFilter.m" lineNumber:233 description:@"Our comparison filter on valence must only store an NSNumber value"];
    }

    v6 = [v3 value];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    [v7 compare:v6];
    [v3 operatorType];
    v8 = OUTLINED_FUNCTION_0_26();
    v10 = HKComparisonResultMatchesPredicateOperator(v8, v9);

    return v10;
  }

  return result;
}

- (uint64_t)_acceptsStateOfMindWithLabelsOrDomains:(void *)a1
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!a1)
  {
    goto LABEL_20;
  }

  v4 = [a1 value];
  objc_opt_class();
  OUTLINED_FUNCTION_0_26();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [a1 value];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    OUTLINED_FUNCTION_0_26();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v12 = [a1 value];
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();

      if ((v13 & 1) == 0)
      {
        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        v9 = v8;
        v10 = a1;
        v11 = 279;
        goto LABEL_19;
      }
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [a1 value];
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if ([v3 containsObject:*(*(&v21 + 1) + 8 * i)])
          {

            v7 = 1;
            goto LABEL_21;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_20;
  }

  v7 = [v3 containsObject:v6];

  if ([a1 operatorType] != 4)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = v8;
    v10 = a1;
    v11 = 266;
LABEL_19:
    [v8 handleFailureInMethod:sel__acceptsStateOfMindWithLabelsOrDomains_ object:v10 file:@"_HKStateOfMindComparisonFilter.m" lineNumber:v11 description:@"Unreachable code has been executed"];

LABEL_20:
    v7 = 0;
  }

LABEL_21:

  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (void)_isValidReflectiveInterval:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_HKStateOfMindComparisonFilter.m" lineNumber:173 description:@"Reflective interval can only be an NSNumber"];
}

+ (void)_isValidValence:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_HKStateOfMindComparisonFilter.m" lineNumber:220 description:@"Valence can only be an NSNumber"];
}

@end