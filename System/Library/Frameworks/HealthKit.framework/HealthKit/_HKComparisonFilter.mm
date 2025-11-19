@interface _HKComparisonFilter
+ (BOOL)_isValidValue:(id)a3 forKeyPath:(id)a4 allowedClases:(id)a5 error:(id *)a6;
+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
+ (BOOL)isSupportedKeyPath:(id)a3;
+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7;
+ (id)_filterForKeyPath:(id)a3 operatorType:(unint64_t)a4 value:(id)a5 dataTypes:(id)a6 applicationSDKVersionToken:(unint64_t)a7 isSubpredicate:(BOOL)a8;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_HKComparisonFilter)initWithCoder:(id)a3;
- (id)_initWithKeyPath:(id)a3 operatorType:(unint64_t)a4 value:(id)a5 dataTypes:(id)a6 applicationSDKVersionToken:(unint64_t)a7;
- (unint64_t)hash;
- (void)configureInMemoryFilter;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKComparisonFilter

- (id)_initWithKeyPath:(id)a3 operatorType:(unint64_t)a4 value:(id)a5 dataTypes:(id)a6 applicationSDKVersionToken:(unint64_t)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = _HKComparisonFilter;
  v15 = [(_HKComparisonFilter *)&v21 init];
  if (v15)
  {
    v16 = [v12 copy];
    keyPath = v15->_keyPath;
    v15->_keyPath = v16;

    v15->_operatorType = a4;
    if ([v13 conformsToProtocol:&unk_1F06879D8])
    {
      v18 = [v13 copy];
    }

    else
    {
      v18 = v13;
    }

    value = v15->_value;
    v15->_value = v18;

    objc_storeStrong(&v15->_dataTypes, a6);
    v15->_applicationSDKVersionToken = a7;
    atomic_store(0, &v15->_hasBeenConfiguredFlag);
  }

  return v15;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  keyPath = self->_keyPath;
  v6 = HKStringFromPredicateOperatorType(self->_operatorType);
  value = self->_value;
  v8 = [(NSSet *)self->_dataTypes allObjects];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [v3 stringWithFormat:@"<%@: %@ '%@' %@ for [%@], sdk_token=%llu>", v4, keyPath, v6, value, v9, self->_applicationSDKVersionToken];

  return v10;
}

+ (id)_filterForKeyPath:(id)a3 operatorType:(unint64_t)a4 value:(id)a5 dataTypes:(id)a6 applicationSDKVersionToken:(unint64_t)a7 isSubpredicate:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  if (![a1 supportsKeyPath:v14 forTypes:v16])
  {
    goto LABEL_4;
  }

  if ([a1 requiresSubpredicate] != v8)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = [v16 allObjects];
    v20 = [v19 componentsJoinedByString:{@", "}];
    [v17 raise:v18 format:{@"Keypath should only be used in subpredicates '%@' for %@.%@", v20, objc_opt_class(), v14}];

LABEL_4:
    v21 = 0;
    goto LABEL_15;
  }

  v35 = 0;
  v22 = [a1 areValidTypes:v16 forKeyPath:v14 error:&v35];
  v23 = v35;
  if (v22)
  {
    if ([a1 isAllowedPredicateOperatorType:a4 forKeyPath:v14])
    {
      v34 = v23;
      v24 = [a1 isValidValue:v15 forKeyPath:v14 operatorType:a4 dataTypes:v16 error:&v34];
      v25 = v34;

      if (v24)
      {
        v21 = [[a1 alloc] _initWithKeyPath:v14 operatorType:a4 value:v15 dataTypes:v16 applicationSDKVersionToken:a7];
        [v21 configureInMemoryFilter];
      }

      else
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid value '%@' for %@.%@: %@", v15, objc_opt_class(), v14, v25}];
        v21 = 0;
      }

      v23 = v25;
      goto LABEL_14;
    }

    v30 = MEMORY[0x1E695DF30];
    v31 = *MEMORY[0x1E695D940];
    v32 = HKStringFromPredicateOperatorType(a4);
    [v30 raise:v31 format:{@"Invalid operatorType '%@' for %@.%@", v32, objc_opt_class(), v14}];
  }

  else
  {
    v26 = MEMORY[0x1E695DF30];
    v27 = *MEMORY[0x1E695D940];
    v28 = [v16 allObjects];
    v29 = [v28 componentsJoinedByString:{@", "}];
    [v26 raise:v27 format:{@"Invalid data types '%@' for %@.%@: %@", v29, objc_opt_class(), v14, v23}];
  }

  v21 = 0;
LABEL_14:

LABEL_15:

  return v21;
}

+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [a1 allowedDataTypeClassesForKeyPath:v9];
  if ([v8 count] || (objc_msgSend(a1, "allowsEmptyDataTypesSetForKeyPath:", v9) & 1) != 0)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v23 = a5;
      v24 = v9;
      v14 = *v27;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __54___HKComparisonFilter_areValidTypes_forKeyPath_error___block_invoke;
          v25[3] = &unk_1E7382D18;
          v25[4] = v16;
          if (([v10 hk_containsObjectPassingTest:v25] & 1) == 0)
          {
            v18 = MEMORY[0x1E696ABC0];
            v19 = [v10 allObjects];
            v20 = [v19 componentsJoinedByString:{@", "}];
            [v18 hk_assignError:v23 code:3 format:{@"'%@' not found in allowed data types classes (%@)", v16, v20}];

            v17 = 0;
            goto LABEL_13;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v17 = 1;
LABEL_13:
      v9 = v24;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:@"Filter requires at least one data type"];
    v17 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7
{
  v10 = a4;
  v11 = a3;
  v12 = [a1 allowedValueClassesForKeyPath:v10];
  LOBYTE(a7) = [a1 _isValidValue:v11 forKeyPath:v10 allowedClases:v12 error:a7];

  return a7;
}

- (void)configureInMemoryFilter
{
  if (atomic_exchange(&self->_hasBeenConfiguredFlag._Value, 1u))
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D940];
    v5 = NSStringFromSelector(a2);
    [v3 raise:v4 format:{@"%@ has already been called for %@", v5, self}];
  }

  v6 = objc_opt_class();
  v7 = [(_HKComparisonFilter *)self keyPath];
  self->_keyPathIntegerValue = [v6 enumRepresentationForKeyPath:v7];
}

+ (BOOL)_isValidValue:(id)a3 forKeyPath:(id)a4 allowedClases:(id)a5 error:(id *)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __68___HKComparisonFilter__isValidValue_forKeyPath_allowedClases_error___block_invoke;
  v36[3] = &unk_1E7382D18;
  v13 = v10;
  v37 = v13;
  if (([v12 hk_containsObjectPassingTest:v36] & 1) == 0)
  {
    v16 = MEMORY[0x1E696ABC0];
    v28 = objc_opt_class();
    v29 = v12;
    v17 = @"%@ is not in the set of valid clases %@";
    v18 = v16;
LABEL_5:
    [v18 hk_assignError:a6 code:3 format:{v17, v28, v29}];
    v19 = 0;
    goto LABEL_24;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v15 = [v13 count];
  }

  else
  {
    v15 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v13 count];
  }

  else if ((isKindOfClass & 1) == 0)
  {
    v19 = 1;
    goto LABEL_24;
  }

  if (!v15 && ([a1 allowsEmptyContainerValuesForKeyPath:v11] & 1) == 0)
  {
    v18 = MEMORY[0x1E696ABC0];
    v17 = @"Filter does not support empty containers as values";
    goto LABEL_5;
  }

  v30 = v11;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = v13;
  v21 = [v20 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v32 + 1) + 8 * i);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __68___HKComparisonFilter__isValidValue_forKeyPath_allowedClases_error___block_invoke_2;
        v31[3] = &unk_1E7382D18;
        v31[4] = v25;
        if (([v12 hk_containsObjectPassingTest:v31] & 1) == 0)
        {
          [MEMORY[0x1E696ABC0] hk_assignError:a6 code:3 format:{@"%@ is not in the set of valid clases %@", objc_opt_class(), v12}];

          v19 = 0;
          goto LABEL_22;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_22:
  v11 = v30;
LABEL_24:

  v26 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = -[NSString isEqualToString:](v5->_keyPath, "isEqualToString:", self->_keyPath) && v5->_operatorType == self->_operatorType && ((value = v5->_value, v7 = self->_value, value == v7) || v7 && [value isEqual:?]) && -[NSSet isEqual:](v5->_dataTypes, "isEqual:", self->_dataTypes) && v5->_applicationSDKVersionToken == self->_applicationSDKVersionToken;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = self->_operatorType ^ [(NSString *)self->_keyPath hash];
  v4 = [self->_value hash];
  return v3 ^ v4 ^ [(NSSet *)self->_dataTypes hash]^ self->_applicationSDKVersionToken;
}

- (_HKComparisonFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyPath"];
  v6 = [v4 decodeIntegerForKey:@"operatorType"];
  v7 = [objc_opt_class() allowedValueClassesForKeyPath:v5];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"value"];

  v9 = [MEMORY[0x1E695DFD8] hk_typesForSetOf:objc_opt_class()];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"dataTypes"];

  v11 = [v4 decodeInt64ForKey:@"sdkVersionToken"];
  v12 = HKBitPatternCastSignedToUnsignedInt64(v11);
  v13 = [objc_opt_class() _filterForKeyPath:v5 operatorType:v6 value:v8 dataTypes:v10 applicationSDKVersionToken:v12 isSubpredicate:0];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKComparisonFilter;
  v4 = a3;
  [(_HKFilter *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_keyPath forKey:{@"keyPath", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_operatorType forKey:@"operatorType"];
  [v4 encodeObject:self->_value forKey:@"value"];
  [v4 encodeObject:self->_dataTypes forKey:@"dataTypes"];
  [v4 encodeInt64:self->_applicationSDKVersionToken forKey:@"sdkVersionToken"];
}

+ (BOOL)isSupportedKeyPath:(id)a3
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_4();
  return 0;
}

+ (id)allowedDataTypeClassesForKeyPath:(id)a3
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_4();
  v3 = MEMORY[0x1E695DFD8];

  return [v3 set];
}

+ (id)allowedValueClassesForKeyPath:(id)a3
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_4();
  v3 = MEMORY[0x1E695DFD8];

  return [v3 set];
}

@end