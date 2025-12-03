@interface _HKComparisonFilter
+ (BOOL)_isValidValue:(id)value forKeyPath:(id)path allowedClases:(id)clases error:(id *)error;
+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error;
+ (BOOL)isSupportedKeyPath:(id)path;
+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error;
+ (id)_filterForKeyPath:(id)path operatorType:(unint64_t)type value:(id)value dataTypes:(id)types applicationSDKVersionToken:(unint64_t)token isSubpredicate:(BOOL)subpredicate;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_HKComparisonFilter)initWithCoder:(id)coder;
- (id)_initWithKeyPath:(id)path operatorType:(unint64_t)type value:(id)value dataTypes:(id)types applicationSDKVersionToken:(unint64_t)token;
- (unint64_t)hash;
- (void)configureInMemoryFilter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKComparisonFilter

- (id)_initWithKeyPath:(id)path operatorType:(unint64_t)type value:(id)value dataTypes:(id)types applicationSDKVersionToken:(unint64_t)token
{
  pathCopy = path;
  valueCopy = value;
  typesCopy = types;
  v21.receiver = self;
  v21.super_class = _HKComparisonFilter;
  v15 = [(_HKComparisonFilter *)&v21 init];
  if (v15)
  {
    v16 = [pathCopy copy];
    keyPath = v15->_keyPath;
    v15->_keyPath = v16;

    v15->_operatorType = type;
    if ([valueCopy conformsToProtocol:&unk_1F06879D8])
    {
      v18 = [valueCopy copy];
    }

    else
    {
      v18 = valueCopy;
    }

    value = v15->_value;
    v15->_value = v18;

    objc_storeStrong(&v15->_dataTypes, types);
    v15->_applicationSDKVersionToken = token;
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
  allObjects = [(NSSet *)self->_dataTypes allObjects];
  v9 = [allObjects componentsJoinedByString:{@", "}];
  v10 = [v3 stringWithFormat:@"<%@: %@ '%@' %@ for [%@], sdk_token=%llu>", v4, keyPath, v6, value, v9, self->_applicationSDKVersionToken];

  return v10;
}

+ (id)_filterForKeyPath:(id)path operatorType:(unint64_t)type value:(id)value dataTypes:(id)types applicationSDKVersionToken:(unint64_t)token isSubpredicate:(BOOL)subpredicate
{
  subpredicateCopy = subpredicate;
  pathCopy = path;
  valueCopy = value;
  typesCopy = types;
  if (![self supportsKeyPath:pathCopy forTypes:typesCopy])
  {
    goto LABEL_4;
  }

  if ([self requiresSubpredicate] != subpredicateCopy)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    allObjects = [typesCopy allObjects];
    v20 = [allObjects componentsJoinedByString:{@", "}];
    [v17 raise:v18 format:{@"Keypath should only be used in subpredicates '%@' for %@.%@", v20, objc_opt_class(), pathCopy}];

LABEL_4:
    v21 = 0;
    goto LABEL_15;
  }

  v35 = 0;
  v22 = [self areValidTypes:typesCopy forKeyPath:pathCopy error:&v35];
  v23 = v35;
  if (v22)
  {
    if ([self isAllowedPredicateOperatorType:type forKeyPath:pathCopy])
    {
      v34 = v23;
      v24 = [self isValidValue:valueCopy forKeyPath:pathCopy operatorType:type dataTypes:typesCopy error:&v34];
      v25 = v34;

      if (v24)
      {
        v21 = [[self alloc] _initWithKeyPath:pathCopy operatorType:type value:valueCopy dataTypes:typesCopy applicationSDKVersionToken:token];
        [v21 configureInMemoryFilter];
      }

      else
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid value '%@' for %@.%@: %@", valueCopy, objc_opt_class(), pathCopy, v25}];
        v21 = 0;
      }

      v23 = v25;
      goto LABEL_14;
    }

    v30 = MEMORY[0x1E695DF30];
    v31 = *MEMORY[0x1E695D940];
    v32 = HKStringFromPredicateOperatorType(type);
    [v30 raise:v31 format:{@"Invalid operatorType '%@' for %@.%@", v32, objc_opt_class(), pathCopy}];
  }

  else
  {
    v26 = MEMORY[0x1E695DF30];
    v27 = *MEMORY[0x1E695D940];
    allObjects2 = [typesCopy allObjects];
    v29 = [allObjects2 componentsJoinedByString:{@", "}];
    [v26 raise:v27 format:{@"Invalid data types '%@' for %@.%@: %@", v29, objc_opt_class(), pathCopy, v23}];
  }

  v21 = 0;
LABEL_14:

LABEL_15:

  return v21;
}

+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  pathCopy = path;
  v10 = [self allowedDataTypeClassesForKeyPath:pathCopy];
  if ([typesCopy count] || (objc_msgSend(self, "allowsEmptyDataTypesSetForKeyPath:", pathCopy) & 1) != 0)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = typesCopy;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      errorCopy = error;
      v24 = pathCopy;
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
            allObjects = [v10 allObjects];
            v20 = [allObjects componentsJoinedByString:{@", "}];
            [v18 hk_assignError:errorCopy code:3 format:{@"'%@' not found in allowed data types classes (%@)", v16, v20}];

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
      pathCopy = v24;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:@"Filter requires at least one data type"];
    v17 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error
{
  pathCopy = path;
  valueCopy = value;
  v12 = [self allowedValueClassesForKeyPath:pathCopy];
  LOBYTE(error) = [self _isValidValue:valueCopy forKeyPath:pathCopy allowedClases:v12 error:error];

  return error;
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
  keyPath = [(_HKComparisonFilter *)self keyPath];
  self->_keyPathIntegerValue = [v6 enumRepresentationForKeyPath:keyPath];
}

+ (BOOL)_isValidValue:(id)value forKeyPath:(id)path allowedClases:(id)clases error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  pathCopy = path;
  clasesCopy = clases;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __68___HKComparisonFilter__isValidValue_forKeyPath_allowedClases_error___block_invoke;
  v36[3] = &unk_1E7382D18;
  v13 = valueCopy;
  v37 = v13;
  if (([clasesCopy hk_containsObjectPassingTest:v36] & 1) == 0)
  {
    v16 = MEMORY[0x1E696ABC0];
    v28 = objc_opt_class();
    v29 = clasesCopy;
    v17 = @"%@ is not in the set of valid clases %@";
    v18 = v16;
LABEL_5:
    [v18 hk_assignError:error code:3 format:{v17, v28, v29}];
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

  if (!v15 && ([self allowsEmptyContainerValuesForKeyPath:pathCopy] & 1) == 0)
  {
    v18 = MEMORY[0x1E696ABC0];
    v17 = @"Filter does not support empty containers as values";
    goto LABEL_5;
  }

  v30 = pathCopy;
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
        if (([clasesCopy hk_containsObjectPassingTest:v31] & 1) == 0)
        {
          [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"%@ is not in the set of valid clases %@", objc_opt_class(), clasesCopy}];

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
  pathCopy = v30;
LABEL_24:

  v26 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (_HKComparisonFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyPath"];
  v6 = [coderCopy decodeIntegerForKey:@"operatorType"];
  v7 = [objc_opt_class() allowedValueClassesForKeyPath:v5];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"value"];

  v9 = [MEMORY[0x1E695DFD8] hk_typesForSetOf:objc_opt_class()];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"dataTypes"];

  v11 = [coderCopy decodeInt64ForKey:@"sdkVersionToken"];
  v12 = HKBitPatternCastSignedToUnsignedInt64(v11);
  v13 = [objc_opt_class() _filterForKeyPath:v5 operatorType:v6 value:v8 dataTypes:v10 applicationSDKVersionToken:v12 isSubpredicate:0];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKComparisonFilter;
  coderCopy = coder;
  [(_HKFilter *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_keyPath forKey:{@"keyPath", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_operatorType forKey:@"operatorType"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
  [coderCopy encodeObject:self->_dataTypes forKey:@"dataTypes"];
  [coderCopy encodeInt64:self->_applicationSDKVersionToken forKey:@"sdkVersionToken"];
}

+ (BOOL)isSupportedKeyPath:(id)path
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_4();
  return 0;
}

+ (id)allowedDataTypeClassesForKeyPath:(id)path
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_4();
  v3 = MEMORY[0x1E695DFD8];

  return [v3 set];
}

+ (id)allowedValueClassesForKeyPath:(id)path
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_4();
  v3 = MEMORY[0x1E695DFD8];

  return [v3 set];
}

@end