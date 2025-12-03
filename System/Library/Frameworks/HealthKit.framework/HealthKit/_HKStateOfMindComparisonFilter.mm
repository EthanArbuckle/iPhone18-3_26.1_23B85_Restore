@interface _HKStateOfMindComparisonFilter
+ (BOOL)_isValidReflectiveInterval:(uint64_t)interval;
+ (BOOL)_isValidValence:(uint64_t)valence;
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path;
+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error;
+ (id)_allowedValueClassesForLabelsAndDomains;
+ (id)_allowedValueClassesForReflectiveInterval;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
+ (int64_t)enumRepresentationForKeyPath:(id)path;
- (BOOL)acceptsDataObject:(id)object;
- (uint64_t)_acceptsStateOfMindWithLabelsOrDomains:(void *)domains;
- (void)_acceptsStateOfMindWithReflectiveInterval:(void *)result;
- (void)_acceptsStateOfMindWithValence:(void *)result;
@end

@implementation _HKStateOfMindComparisonFilter

+ (id)allowedDataTypeClassesForKeyPath:(id)path
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"reflectiveInterval"] || objc_msgSend(pathCopy, "isEqualToString:", @"valence"))
  {
    v6 = +[_HKStateOfMindComparisonFilter _allowedValueClassesForReflectiveInterval];
  }

  else if ([pathCopy isEqualToString:@"labels"] || objc_msgSend(pathCopy, "isEqualToString:", @"domains"))
  {
    v6 = +[_HKStateOfMindComparisonFilter _allowedValueClassesForLabelsAndDomains];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKStateOfMindComparisonFilter.m" lineNumber:81 description:@"Unreachable code has been executed"];

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

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"reflectiveInterval"])
  {
    objc_opt_self();
    v8 = (type & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  else
  {
    if ([pathCopy isEqualToString:@"valence"])
    {
      objc_opt_self();
      v9 = type < 6;
      goto LABEL_13;
    }

    if (![pathCopy isEqualToString:@"labels"] && !objc_msgSend(pathCopy, "isEqualToString:", @"domains"))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_HKStateOfMindComparisonFilter.m" lineNumber:97 description:@"Unreachable code has been executed"];

      v9 = 0;
      goto LABEL_13;
    }

    objc_opt_self();
    v8 = type == 4 || type == 10;
  }

  v9 = v8;
LABEL_13:

  return v9;
}

+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error
{
  valueCopy = value;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = &OBJC_METACLASS____HKStateOfMindComparisonFilter;
  if (!objc_msgSendSuper2(&v20, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, valueCopy, pathCopy, type, types, error))
  {
    goto LABEL_11;
  }

  if (![pathCopy isEqualToString:@"reflectiveInterval"])
  {
    if ([pathCopy isEqualToString:@"valence"])
    {
      v15 = [(_HKStateOfMindComparisonFilter *)self _isValidValence:valueCopy];
      goto LABEL_9;
    }

    if ([pathCopy isEqualToString:@"labels"] || objc_msgSend(pathCopy, "isEqualToString:", @"domains"))
    {
      v16 = objc_opt_class();
      v15 = HKIsValueOrContainerValidForOperatorType(type, valueCopy, v16, error);
      goto LABEL_9;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKStateOfMindComparisonFilter.m" lineNumber:119 description:@"Unreachable code has been executed"];

LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  v15 = [(_HKStateOfMindComparisonFilter *)self _isValidReflectiveInterval:valueCopy];
LABEL_9:
  v17 = v15;
LABEL_12:

  return v17;
}

+ (BOOL)_isValidReflectiveInterval:(uint64_t)interval
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

+ (BOOL)_isValidValence:(uint64_t)valence
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

+ (int64_t)enumRepresentationForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"reflectiveInterval"])
  {
    v6 = 0;
  }

  else if ([pathCopy isEqualToString:@"valence"])
  {
    v6 = 1;
  }

  else if ([pathCopy isEqualToString:@"labels"])
  {
    v6 = 2;
  }

  else if ([pathCopy isEqualToString:@"domains"])
  {
    v6 = 3;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKStateOfMindComparisonFilter.m" lineNumber:133 description:@"Unreachable code has been executed"];

    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS____HKStateOfMindComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, pathCopy);
  }

  return v6;
}

- (BOOL)acceptsDataObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objectCopy;
    keyPathIntegerValue = [(_HKComparisonFilter *)self keyPathIntegerValue];
    if (keyPathIntegerValue <= 1)
    {
      if (!keyPathIntegerValue)
      {
        v9 = -[_HKStateOfMindComparisonFilter _acceptsStateOfMindWithReflectiveInterval:](self, [v6 reflectiveInterval]);
        goto LABEL_13;
      }

      if (keyPathIntegerValue == 1)
      {
        [v6 valence];
        v9 = [(_HKStateOfMindComparisonFilter *)self _acceptsStateOfMindWithValence:v8];
LABEL_13:
        v10 = v9;
        goto LABEL_10;
      }

LABEL_9:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_HKStateOfMindComparisonFilter.m" lineNumber:152 description:@"Unreachable code has been executed"];

      v10 = 0;
LABEL_10:

      goto LABEL_11;
    }

    if (keyPathIntegerValue == 2)
    {
      labels = [v6 labels];
    }

    else
    {
      if (keyPathIntegerValue != 3)
      {
        goto LABEL_9;
      }

      labels = [v6 domains];
    }

    v14 = labels;
    v10 = [(_HKStateOfMindComparisonFilter *)self _acceptsStateOfMindWithLabelsOrDomains:labels];

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
    value = [result value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__acceptsStateOfMindWithReflectiveInterval_ object:v3 file:@"_HKStateOfMindComparisonFilter.m" lineNumber:189 description:@"Our comparison filter on reflective interval must only store an NSNumber value"];
    }

    value2 = [v3 value];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    [v7 compare:value2];
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
    value = [result value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__acceptsStateOfMindWithValence_ object:v3 file:@"_HKStateOfMindComparisonFilter.m" lineNumber:233 description:@"Our comparison filter on valence must only store an NSNumber value"];
    }

    value2 = [v3 value];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    [v7 compare:value2];
    [v3 operatorType];
    v8 = OUTLINED_FUNCTION_0_26();
    v10 = HKComparisonResultMatchesPredicateOperator(v8, v9);

    return v10;
  }

  return result;
}

- (uint64_t)_acceptsStateOfMindWithLabelsOrDomains:(void *)domains
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!domains)
  {
    goto LABEL_20;
  }

  value = [domains value];
  objc_opt_class();
  OUTLINED_FUNCTION_0_26();
  isKindOfClass = objc_opt_isKindOfClass();

  value2 = [domains value];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    OUTLINED_FUNCTION_0_26();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      value3 = [domains value];
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();

      if ((v13 & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v9 = currentHandler;
        domainsCopy2 = domains;
        v11 = 279;
        goto LABEL_19;
      }
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    value4 = [domains value];
    v15 = [value4 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(value4);
          }

          if ([v3 containsObject:*(*(&v21 + 1) + 8 * i)])
          {

            v7 = 1;
            goto LABEL_21;
          }
        }

        v16 = [value4 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_20;
  }

  v7 = [v3 containsObject:value2];

  if ([domains operatorType] != 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = currentHandler;
    domainsCopy2 = domains;
    v11 = 266;
LABEL_19:
    [currentHandler handleFailureInMethod:sel__acceptsStateOfMindWithLabelsOrDomains_ object:domainsCopy2 file:@"_HKStateOfMindComparisonFilter.m" lineNumber:v11 description:@"Unreachable code has been executed"];

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