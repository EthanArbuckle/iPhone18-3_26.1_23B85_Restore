@interface NSAttributeDescription
+ (NSString)_classNameForType:(uint64_t)a1;
+ (id)stringForAttributeType:(unint64_t)a3;
+ (void)initialize;
- (BOOL)_attributeTypeIsSchemaEqual:(unint64_t)a3;
- (BOOL)_comparePredicatesAndWarnings:(id)a3;
- (BOOL)_epsilonEquals:(id)a3 rhs:(id)a4 withFlags:(int)a5;
- (BOOL)_isSchemaEqual:(id)a3;
- (BOOL)_nonPredicateValidateValue:(id *)a3 forKey:(id)a4 inObject:(id)a5 error:(id *)a6;
- (BOOL)isIndexed;
- (BOOL)usesMergeableStorage;
- (Class)_attributeValueClass;
- (NSAttributeDescription)initWithCoder:(id)a3;
- (NSData)versionHash;
- (id)_initWithName:(id)a3 type:(unint64_t)a4;
- (id)_initWithName:(id)a3 type:(unint64_t)a4 withClassName:(id)a5;
- (id)_rawValidationPredicates;
- (id)_rawValidationWarnings;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)validationPredicates;
- (id)validationWarnings;
- (uint64_t)_attributeValueClasses;
- (uint64_t)_canConvertPredicate:(void *)a3 andWarning:;
- (uint64_t)_comparePredicatesAndWarningsWithUnoptimizedAttributeDescription:(uint64_t)result;
- (uint64_t)_sortOutDefaultNumericValuesBecauseDoublesAndFloatsDontCompareEqual:(uint64_t)a1;
- (void)_createCachesAndOptimizeState;
- (void)_versionHash:(char *)a3 inStyle:(unint64_t)a4;
- (void)_writeIntoData:(id)a3 propertiesDict:(id)a4 uniquedPropertyNames:(id)a5 uniquedStrings:(id)a6 uniquedData:(id)a7 entitiesSlots:(id)a8 fetchRequests:(id)a9;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAllowsCloudEncryption:(BOOL)allowsCloudEncryption;
- (void)setAllowsExternalBinaryDataStorage:(BOOL)allowsExternalBinaryDataStorage;
- (void)setAttributeType:(NSAttributeType)attributeType;
- (void)setAttributeValueClassName:(NSString *)attributeValueClassName;
- (void)setDefaultValue:(id)defaultValue;
- (void)setIsFileBackedFuture:(BOOL)a3;
- (void)setPreserveValueOnDeletionInPersistentHistory:(BOOL)a3;
- (void)setPreservesValueInHistoryOnDeletion:(BOOL)preservesValueInHistoryOnDeletion;
- (void)setValueTransformerName:(NSString *)valueTransformerName;
@end

@implementation NSAttributeDescription

- (id)_rawValidationPredicates
{
  v3.receiver = self;
  v3.super_class = NSAttributeDescription;
  return [(NSPropertyDescription *)&v3 validationPredicates];
}

- (id)_rawValidationWarnings
{
  v3.receiver = self;
  v3.super_class = NSAttributeDescription;
  return [(NSPropertyDescription *)&v3 validationWarnings];
}

- (void)dealloc
{
  self->_attributeValueClassName = 0;

  self->_valueTransformerName = 0;
  self->_defaultValue = 0;
  v3.receiver = self;
  v3.super_class = NSAttributeDescription;
  [(NSPropertyDescription *)&v3 dealloc];
}

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    objc_opt_self();
  }

  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___NSAttributeDescription;
  objc_msgSendSuper2(&v4, sel_initialize);
}

- (id)validationWarnings
{
  v3 = [(NSPropertyDescription *)self _hasMinValueInExtraIvars];
  v4 = [(NSPropertyDescription *)self _hasMaxValueInExtraIvars];
  v5 = v4;
  if (!v3 && !v4)
  {
    v11.receiver = self;
    v11.super_class = NSAttributeDescription;
    return [(NSPropertyDescription *)&v11 validationWarnings];
  }

  v12.receiver = self;
  v12.super_class = NSAttributeDescription;
  v6 = [MEMORY[0x1E695DF70] arrayWithArray:{-[NSPropertyDescription validationWarnings](&v12, sel_validationWarnings)}];
  v7 = [(NSAttributeDescription *)self attributeType];
  if (v7 <= 399)
  {
    if (v7 != NSInteger16AttributeType && v7 != NSInteger32AttributeType && v7 != NSInteger64AttributeType)
    {
LABEL_12:
      if (v3)
      {
        [v6 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 1640)}];
      }

      if (v5)
      {
        v8 = MEMORY[0x1E696AD98];
        v9 = 1630;
LABEL_22:
        [v6 addObject:{objc_msgSend(v8, "numberWithInteger:", v9)}];
        return v6;
      }

      return v6;
    }
  }

  else if (v7 > 599)
  {
    if (v7 == NSStringAttributeType)
    {
      if (v3)
      {
        [v6 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 1670)}];
      }

      if (v5)
      {
        v8 = MEMORY[0x1E696AD98];
        v9 = 1660;
        goto LABEL_22;
      }

      return v6;
    }

    if (v7 != NSFloatAttributeType)
    {
      goto LABEL_12;
    }
  }

  else if (v7 != NSDecimalAttributeType && v7 != NSDoubleAttributeType)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    [v6 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 1620)}];
  }

  if (v5)
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = 1610;
    goto LABEL_22;
  }

  return v6;
}

- (void)_createCachesAndOptimizeState
{
  v63 = *MEMORY[0x1E69E9840];
  v56.receiver = self;
  v56.super_class = NSAttributeDescription;
  [(NSPropertyDescription *)&v56 _createCachesAndOptimizeState];
  v3 = [(NSDictionary *)[[(NSEntityDescription *)[(NSPropertyDescription *)self entity] superentity] propertiesByName] objectForKey:[(NSPropertyDescription *)self name]];
  if (v3)
  {
    v4 = [v3 allowsCloudEncryption];
    if (v4 != [(NSAttributeDescription *)self allowsCloudEncryption])
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@:%@ - Encryption must also be applied to all inherited attributes from the parent entity (%@)", -[NSEntityDescription name](-[NSPropertyDescription entity](self, "entity"), "name"), -[NSPropertyDescription name](self, "name"), -[NSEntityDescription name](-[NSEntityDescription superentity](-[NSPropertyDescription entity](self, "entity"), "superentity"), "name")), 0}]);
    }
  }

  if (self->_type == 1800)
  {
    valueTransformerName = self->_valueTransformerName;
    if (-[NSString length](valueTransformerName, "length") && ![MEMORY[0x1E696B0A0] valueTransformerForName:valueTransformerName])
    {
      if ([(NSString *)valueTransformerName isEqualToString:@"NSSecureUnarchiveFromDataTransformerName"])
      {
        self->_valueTransformerName = *MEMORY[0x1E696A8B0];
      }

      else if (!PFUseToolchainBehaviors())
      {
        v6 = objc_autoreleasePoolPush();
        _pflogInitialize(5);
        if (_NSCoreDataIsLogEnabled(5) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v8 = self->_valueTransformerName;
              v9 = [(NSPropertyDescription *)self name];
              v10 = [(NSEntityDescription *)[(NSPropertyDescription *)self entity] name];
              *buf = 138412802;
              v58 = v8;
              v59 = 2112;
              v60 = v9;
              v61 = 2112;
              v62 = v10;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: no NSValueTransformer with class name '%@' was found for attribute '%@' on entity '%@'\n", buf, 0x20u);
            }
          }

          else
          {
            v11 = _PFLogGetLogStream(5);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = self->_valueTransformerName;
              v13 = [(NSPropertyDescription *)self name];
              v14 = [(NSEntityDescription *)[(NSPropertyDescription *)self entity] name];
              *buf = 138412802;
              v58 = v12;
              v59 = 2112;
              v60 = v13;
              v61 = 2112;
              v62 = v14;
              _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_DEFAULT, "CoreData: warning: no NSValueTransformer with class name '%@' was found for attribute '%@' on entity '%@'\n", buf, 0x20u);
            }
          }
        }

        v15 = _pflogging_catastrophic_mode;
        v16 = self->_valueTransformerName;
        v17 = [(NSPropertyDescription *)self name];
        v18 = [(NSEntityDescription *)[(NSPropertyDescription *)self entity] name];
        v19 = 5;
        if (v15)
        {
          v19 = 1;
        }

        _NSCoreDataLog_console(v19, "no NSValueTransformer with class name '%@' was found for attribute '%@' on entity '%@'", v16, v17, v18);
        objc_autoreleasePoolPop(v6);
      }
    }

    if (!PFUseToolchainBehaviors())
    {
      v40 = self->_valueTransformerName;
      if (!v40 || [(NSString *)self->_valueTransformerName isEqualToString:*MEMORY[0x1E696A9F8]]|| [(NSString *)v40 isEqualToString:*MEMORY[0x1E696A510]])
      {
        v41 = [MEMORY[0x1E696AE30] processInfo];
        if ([@"xctest" isEqual:{objc_msgSend(v41, "processName")}] & 1) != 0 || (objc_msgSend(@"cplctl", "isEqual:", objc_msgSend(v41, "processName")))
        {
          goto LABEL_54;
        }

        if (_createCachesAndOptimizeState_token != -1)
        {
          dispatch_once(&_createCachesAndOptimizeState_token, &__block_literal_global_293);
        }

        v43 = objc_autoreleasePoolPush();
        _pflogInitialize(5);
        if (_NSCoreDataIsLogEnabled(5) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v44 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v45 = [(NSPropertyDescription *)self name];
              v46 = [(NSEntityDescription *)[(NSPropertyDescription *)self entity] name];
              v47 = *MEMORY[0x1E696A8B0];
              *buf = 138412802;
              v58 = v45;
              v59 = 2112;
              v60 = v46;
              v61 = 2112;
              v62 = v47;
              _os_log_error_impl(&dword_18565F000, v44, OS_LOG_TYPE_ERROR, "CoreData: error: Property '%@' on Entity '%@' is using nil or an insecure NSValueTransformer.  Please switch to using %@ or a subclass of NSSecureUnarchiveFromDataTransformer instead.\n", buf, 0x20u);
            }
          }

          else
          {
            v48 = _PFLogGetLogStream(5);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v49 = [(NSPropertyDescription *)self name];
              v50 = [(NSEntityDescription *)[(NSPropertyDescription *)self entity] name];
              v51 = *MEMORY[0x1E696A8B0];
              *buf = 138412802;
              v58 = v49;
              v59 = 2112;
              v60 = v50;
              v61 = 2112;
              v62 = v51;
              _os_log_impl(&dword_18565F000, v48, OS_LOG_TYPE_DEFAULT, "CoreData: warning: Property '%@' on Entity '%@' is using nil or an insecure NSValueTransformer.  Please switch to using %@ or a subclass of NSSecureUnarchiveFromDataTransformer instead.\n", buf, 0x20u);
            }
          }
        }

        v52 = _pflogging_catastrophic_mode;
        v53 = [(NSPropertyDescription *)self name];
        v54 = [(NSEntityDescription *)[(NSPropertyDescription *)self entity] name];
        v55 = 5;
        if (v52)
        {
          v55 = 1;
        }

        _NSCoreDataLog_console(v55, "Property '%@' on Entity '%@' is using nil or an insecure NSValueTransformer.  Please switch to using %@ or a subclass of NSSecureUnarchiveFromDataTransformer instead.", v53, v54, *MEMORY[0x1E696A8B0]);
        objc_autoreleasePoolPop(v43);
      }
    }
  }

  v20 = [(NSDictionary *)[(NSPropertyDescription *)self userInfo] objectForKey:@"NSTriggerKey"];
  if ([v20 isNSString] && objc_msgSend(v20, "length"))
  {
    *&self->super._propertyDescriptionFlags |= 0x2000u;
  }

  v21 = [(NSAttributeDescription *)self validationWarnings];
  v22 = [v21 count];
  if (v22)
  {
    v23 = v22;
    v24 = [(NSAttributeDescription *)self validationPredicates];
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = 0;
    while (1)
    {
      v28 = [v24 objectAtIndex:v27];
      v29 = [v21 objectAtIndex:v27];
      v30 = [(NSAttributeDescription *)self _canConvertPredicate:v28 andWarning:v29];
      if (v30)
      {
        v31 = v30;
        if (v30 <= 0)
        {
          v32 = 1024;
        }

        else
        {
          v32 = 512;
        }

        *&self->super._propertyDescriptionFlags |= v32;
        v33 = [objc_msgSend(v28 "rightExpression")];
        v34 = [(NSPropertyDescription *)self _extraIVars];
        type = self->_type;
        if (type > 0x12B)
        {
          if (type == 700 || type == 300)
          {
LABEL_36:
            if (v31 <= 0)
            {
              v36 = 8;
            }

            else
            {
              v36 = 16;
            }

            *(&v34->var0 + v36) = [v33 longLongValue];
            goto LABEL_40;
          }
        }

        else if (type == 100 || type == 200)
        {
          goto LABEL_36;
        }

        if (v31 <= 0)
        {
          v37 = 8;
        }

        else
        {
          v37 = 16;
        }

        [v33 doubleValue];
        *(&v34->var0 + v37) = v38;
      }

      else
      {
        [v25 addObject:v28];
        [v26 addObject:v29];
      }

LABEL_40:
      if (v23 == ++v27)
      {
        v39 = [v21 count];
        if (v39 == [v26 count])
        {
        }

        else
        {
          [(NSPropertyDescription *)self _replaceValidationPredicates:v25 andWarnings:v26];
        }

        break;
      }
    }
  }

LABEL_54:
  v42 = *MEMORY[0x1E69E9840];
}

- (BOOL)usesMergeableStorage
{
  if ([(NSAttributeDescription *)self attributeType]!= NSTransformableAttributeType)
  {
    return 0;
  }

  if (![(NSAttributeDescription *)self valueTransformerName])
  {
    return 0;
  }

  if (![(NSAttributeDescription *)self attributeValueClassName])
  {
    return 0;
  }

  v3 = _PFClassFromString([(NSAttributeDescription *)self attributeValueClassName]);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![(objc_class *)v4 supportsSecureCoding]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(objc_class *)v4 supportsMergeableTransformable];
}

- (Class)_attributeValueClass
{
  v21 = *MEMORY[0x1E69E9840];
  if (byte_1ED4BEECE)
  {
    v3 = atomic_load(&self->_attributeValueClass);
    if (!v3)
    {
      if (!self->_attributeValueClassName || (v4 = objc_autoreleasePoolPush(), v3 = [-[NSAttributeDescription _attributeValueClasses](&self->super.super.isa) firstObject], objc_autoreleasePoolPop(v4), !v3))
      {
        v3 = objc_opt_class();
      }

      v5 = 0;
      atomic_compare_exchange_strong(&self->_attributeValueClass, &v5, v3);
      if (v5)
      {
        v3 = v5;
      }
    }

    if (v3 == objc_opt_class())
    {
      result = 0;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    if (!atomic_load(&self->_attributeValueClass))
    {
      attributeValueClassName = self->_attributeValueClassName;
      if (attributeValueClassName)
      {
        atomic_store(_PFClassFromString(attributeValueClassName), &self->_attributeValueClass);
        if (!atomic_load(&self->_attributeValueClass))
        {
          if (byte_1ED4BEECE == 1)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v14 = self->_attributeValueClassName;
              v17 = 138412546;
              v18 = v14;
              v19 = 2112;
              v20 = [(NSPropertyDescription *)self name];
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Could not materialize Objective-C class %@ for attribute named %@, property setter will not validate type\n", &v17, 0x16u);
            }

            v12 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
            {
              v15 = self->_attributeValueClassName;
              v16 = [(NSPropertyDescription *)self name];
              v17 = 138412546;
              v18 = v15;
              v19 = 2112;
              v20 = v16;
              _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Could not materialize Objective-C class %@ for attribute named %@, property setter will not validate type", &v17, 0x16u);
            }
          }

          atomic_store(objc_opt_class(), &self->_attributeValueClass);
        }
      }
    }

    v8 = atomic_load(&self->_attributeValueClass);
    if (v8 == objc_opt_class())
    {
      result = 0;
    }

    else
    {
      result = atomic_load(&self->_attributeValueClass);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)validationPredicates
{
  v3 = [(NSPropertyDescription *)self _hasMinValueInExtraIvars];
  v4 = [(NSPropertyDescription *)self _hasMaxValueInExtraIvars];
  v5 = v4;
  if (!v3 && !v4)
  {
    v20.receiver = self;
    v20.super_class = NSAttributeDescription;
    return [(NSPropertyDescription *)&v20 validationPredicates];
  }

  v21.receiver = self;
  v21.super_class = NSAttributeDescription;
  v6 = [MEMORY[0x1E695DF70] arrayWithArray:{-[NSPropertyDescription validationPredicates](&v21, sel_validationPredicates)}];
  v7 = [(NSPropertyDescription *)self _extraIVars];
  v8 = [(NSAttributeDescription *)self attributeType];
  if (v8 <= 399)
  {
    if (v8 == NSInteger16AttributeType || v8 == NSInteger32AttributeType || v8 == NSInteger64AttributeType)
    {
      if (v3)
      {
        v9 = [MEMORY[0x1E696AD98] numberWithLongLong:v7->var1];
        [v6 addObject:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"SELF >= %@", v9)}];
      }

      if (!v5)
      {
        goto LABEL_25;
      }

      v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v7->var2];
      goto LABEL_23;
    }

LABEL_28:
    if (v3)
    {
      v16 = [MEMORY[0x1E696AD98] numberWithDouble:*&v7->var1];
      [v6 addObject:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"self >= %@", v16)}];
    }

    if (!v5)
    {
      goto LABEL_25;
    }

    v17 = [MEMORY[0x1E696AD98] numberWithDouble:*&v7->var2];
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self =< %@", v17];
    goto LABEL_24;
  }

  if (v8 != NSDecimalAttributeType)
  {
    if (v8 == NSStringAttributeType)
    {
      if (v3)
      {
        v18 = [MEMORY[0x1E696AD98] numberWithLongLong:v7->var1];
        [v6 addObject:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"length >= %@", v18)}];
      }

      if (!v5)
      {
        goto LABEL_25;
      }

      v19 = [MEMORY[0x1E696AD98] numberWithLongLong:v7->var2];
      v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"length =< %@", v19];
      goto LABEL_24;
    }

    if (v8 == NSDateAttributeType)
    {
      if (v3)
      {
        v11 = [MEMORY[0x1E696AD98] numberWithDouble:*&v7->var1];
        [v6 addObject:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"timeIntervalSinceReferenceDate >= %@", v11)}];
      }

      if (!v5)
      {
        goto LABEL_25;
      }

      v12 = [MEMORY[0x1E696AD98] numberWithDouble:*&v7->var2];
      v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"timeIntervalSinceReferenceDate =< %@", v12];
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  if (v3)
  {
    v14 = [MEMORY[0x1E696AB90] numberWithDouble:*&v7->var1];
    [v6 addObject:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"SELF >= %@", v14)}];
  }

  if (!v5)
  {
    goto LABEL_25;
  }

  v10 = [MEMORY[0x1E696AB90] numberWithDouble:*&v7->var2];
LABEL_23:
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF =< %@", v10];
LABEL_24:
  [v6 addObject:v13];
LABEL_25:
  if ([(NSAttributeDescription *)self attributeType]== NSURIAttributeType)
  {
    [v6 addObject:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &__block_literal_global_4)}];
  }

  return v6;
}

- (uint64_t)_attributeValueClasses
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_39;
  }

  v2 = a1[13];
  if (!v2)
  {
    goto LABEL_39;
  }

  v3 = _PFClassFromString(v2);
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x1E695DF70];
    v6 = *MEMORY[0x1E69E9840];

    return [v5 arrayWithObject:v4];
  }

  v8 = [MEMORY[0x1E696AD48] characterSetWithCharactersInString:@"$_"];
  [v8 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x1E696AB08], "alphanumericCharacterSet")}];
  [v8 invert];
  if ([v8 characterIsMember:{objc_msgSend(a1[13], "characterAtIndex:", 0)}])
  {
    if (byte_1ED4BEECE != 1)
    {
      goto LABEL_39;
    }

    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v32 = a1[13];
      *buf = 138412546;
      v41 = v32;
      v42 = 2112;
      v43 = [a1 name];
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Declared Objective-C type %@ for attribute named %@ is not valid\n", buf, 0x16u);
    }

    v10 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_39;
    }

    v11 = a1[13];
    v12 = [a1 name];
    *buf = 138412546;
    v41 = v11;
    v42 = 2112;
    v43 = v12;
    v13 = "CoreData: Declared Objective-C type %@ for attribute named %@ is not valid";
LABEL_13:
    v14 = v10;
    v15 = 22;
LABEL_38:
    _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, v13, buf, v15);
    goto LABEL_39;
  }

  v16 = [a1[13] componentsSeparatedByCharactersInSet:v8];
  if ([v16 count] == 1 && objc_msgSend(a1[13], "isEqualToString:", objc_msgSend(v16, "firstObject")))
  {
    if (byte_1ED4BEECE != 1)
    {
      goto LABEL_39;
    }

    v17 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v35 = a1[13];
      *buf = 138412546;
      v41 = v35;
      v42 = 2112;
      v43 = [a1 name];
      _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: fault: Could not materialize Objective-C class for declared attribute value class name %@ of attribute named %@\n", buf, 0x16u);
    }

    v10 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_39;
    }

    v18 = a1[13];
    v19 = [a1 name];
    *buf = 138412546;
    v41 = v18;
    v42 = 2112;
    v43 = v19;
    v13 = "CoreData: Could not materialize Objective-C class for declared attribute value class name %@ of attribute named %@";
    goto LABEL_13;
  }

  v20 = [MEMORY[0x1E695DF70] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v21 = [v16 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (!v21)
  {
    goto LABEL_40;
  }

  v22 = v21;
  v23 = *v37;
LABEL_23:
  v24 = 0;
  while (1)
  {
    if (*v37 != v23)
    {
      objc_enumerationMutation(v16);
    }

    v25 = *(*(&v36 + 1) + 8 * v24);
    if (![(NSString *)v25 length])
    {
      goto LABEL_30;
    }

    v26 = _PFClassFromString(v25);
    if (!v26)
    {
      break;
    }

    [v20 addObject:v26];
LABEL_30:
    if (v22 == ++v24)
    {
      v22 = [v16 countByEnumeratingWithState:&v36 objects:v46 count:16];
      if (v22)
      {
        goto LABEL_23;
      }

      goto LABEL_40;
    }
  }

  if ([a1 _swiftDataPropertyFlags])
  {
    goto LABEL_30;
  }

  if (byte_1ED4BEECE == 1)
  {
    v27 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v33 = a1[13];
      v34 = [a1 name];
      *buf = 138412802;
      v41 = v25;
      v42 = 2112;
      v43 = v33;
      v44 = 2112;
      v45 = v34;
      _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: fault: Could not materialize Objective-C class named %@ from declared attribute value type %@ of attribute named %@\n", buf, 0x20u);
    }

    v28 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      v29 = a1[13];
      v30 = [a1 name];
      *buf = 138412802;
      v41 = v25;
      v42 = 2112;
      v43 = v29;
      v44 = 2112;
      v45 = v30;
      v13 = "CoreData: Could not materialize Objective-C class named %@ from declared attribute value type %@ of attribute named %@";
      v14 = v28;
      v15 = 32;
      goto LABEL_38;
    }
  }

LABEL_39:
  v20 = 0;
LABEL_40:
  v31 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v8.receiver = self;
  v8.super_class = NSAttributeDescription;
  [(NSPropertyDescription *)&v8 encodeWithCoder:a3];
  [a3 encodeInt:-[NSAttributeDescription attributeType](self forKey:{"attributeType"), @"NSAttributeType"}];
  [a3 encodeObject:-[NSAttributeDescription attributeValueClassName](self forKey:{"attributeValueClassName"), @"NSAttributeValueClassName"}];
  [a3 encodeObject:-[NSAttributeDescription defaultValue](self forKey:{"defaultValue"), @"NSDefaultValue"}];
  [a3 encodeObject:-[NSAttributeDescription valueTransformerName](self forKey:{"valueTransformerName"), @"NSValueTransformerName"}];
  if ([(NSAttributeDescription *)self isIndexed])
  {
    [a3 encodeBool:1 forKey:@"NSIsIndexed"];
  }

  if ([(NSPropertyDescription *)self _storeBinaryDataExternally])
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if ([(NSAttributeDescription *)self preservesValueInHistoryOnDeletion])
  {
    v6 |= 0x10u;
  }

  if ([(NSAttributeDescription *)self isFileBackedFuture])
  {
    v7 = v6 | 0x20;
  }

  else
  {
    v7 = v6;
  }

  [a3 encodeInt32:-[NSAttributeDescription _encodedAttributeFlagsForFlags:](self forKey:{"_encodedAttributeFlagsForFlags:", v7), @"NSFlagsKey"}];
  objc_autoreleasePoolPop(v5);
}

- (uint64_t)_sortOutDefaultNumericValuesBecauseDoublesAndFloatsDontCompareEqual:(uint64_t)a1
{
  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  if (![a2 isNSNumber])
  {
    return a2;
  }

  v5 = [a2 objCType];
  v6 = *(a1 + 80);
  if (v6 != 600)
  {
    if (v6 == 500)
    {
      v7 = *v5;
      if (v7 == 102)
      {
        if (!v5[1])
        {
          goto LABEL_13;
        }
      }

      else if (102 == v7)
      {
LABEL_13:
        [a2 floatValue];
        v9 = MEMORY[0x1E696AD98];
        v11 = v10;

        return [v9 numberWithDouble:v11];
      }
    }

    return a2;
  }

  v8 = *v5;
  if (v8 == 100)
  {
    if (v5[1])
    {
      return a2;
    }
  }

  else if (100 != v8)
  {
    return a2;
  }

  [a2 doubleValue];
  v12 = MEMORY[0x1E696AD98];
  *&v13 = v13;

  return [v12 numberWithFloat:v13];
}

- (NSAttributeDescription)initWithCoder:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = NSAttributeDescription;
  v4 = [(NSPropertyDescription *)&v38 initWithCoder:?];
  if (!v4)
  {
    goto LABEL_54;
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"NSValueTransformerName"}];
  v4->_valueTransformerName = v7;
  if (v7)
  {
    if (![(NSString *)v7 isNSString])
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A250];
      v19 = &unk_1EF434B30;
LABEL_20:
      [a3 failWithError:{objc_msgSend(v17, "errorWithDomain:code:userInfo:", v18, 4866, v19)}];

      v4 = 0;
      goto LABEL_54;
    }

    if ([(NSString *)v4->_valueTransformerName isEqualToString:@"NSSecureUnarchiveFromDataTransformerName"])
    {

      v4->_valueTransformerName = [*MEMORY[0x1E696A8B0] copy];
    }
  }

  v4->_type = [a3 decodeIntForKey:@"NSAttributeType"];
  v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSAttributeValueClassName"];
  v4->_attributeValueClassName = v8;
  if (v8 && ([(NSString *)v8 isNSString]& 1) == 0)
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A250];
    v19 = &unk_1EF434B58;
    goto LABEL_20;
  }

  v9 = +[_PFRoutines attributeClassesForSecureCoding];
  if (v4->_type != 1800)
  {
    goto LABEL_32;
  }

  v10 = [(NSAttributeDescription *)&v4->super.super.isa _attributeValueClasses];
  if (!v10)
  {
    v10 = [MEMORY[0x1E695DF70] array];
  }

  v11 = _PFClassFromString(v4->_valueTransformerName);
  if (v11)
  {
    v12 = v11;
    if (-[objc_class instancesRespondToSelector:](v11, "instancesRespondToSelector:", sel_transformedValue_) && ([v12 instancesRespondToSelector:sel_reverseTransformedValue_] & 1) != 0)
    {
      goto LABEL_23;
    }

    v13 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v14 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v16 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        if (v16)
        {
          goto LABEL_58;
        }
      }

      else if (v16)
      {
LABEL_58:
        v35 = [(NSPropertyDescription *)v4 name];
        v36 = [(NSEntityDescription *)[(NSPropertyDescription *)v4 entity] name];
        valueTransformerName = v4->_valueTransformerName;
        *buf = 138412802;
        v40 = v35;
        v41 = 2112;
        v42 = v36;
        v43 = 2112;
        v44 = valueTransformerName;
      }
    }

    objc_autoreleasePoolPop(v13);

    v4->_valueTransformerName = [*MEMORY[0x1E696A8B0] copy];
    v12 = objc_opt_class();
LABEL_23:
    if (objc_opt_respondsToSelector())
    {
      v20 = [v12 allowedTopLevelClasses];
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = MEMORY[0x1E695E0F0];
      }

      [v10 addObjectsFromArray:v21];
    }

    if (objc_opt_respondsToSelector())
    {
      v22 = [v12 transformedValueClass];
      if (v22)
      {
        [v10 addObject:v22];
      }
    }
  }

  v9 = [v9 setByAddingObjectsFromArray:v10];
LABEL_32:
  v4->_defaultValue = -[NSAttributeDescription _sortOutDefaultNumericValuesBecauseDoublesAndFloatsDontCompareEqual:](v4, [a3 decodeObjectOfClasses:v9 forKey:@"NSDefaultValue"]);
  v23 = [a3 decodeInt32ForKey:@"NSFlagsKey"];
  if (!v23)
  {
    goto LABEL_49;
  }

  v24 = v23 & 2;
  *&v4->super._propertyDescriptionFlags = *&v4->super._propertyDescriptionFlags & 0xA1FF | ((v23 & 3) << 9) & 0xA7FF | (((v23 >> 2) & 1) << 11) & 0xAFFF | (((v23 >> 4) & 1) << 12) & 0xBFFF | (((v23 >> 5) & 1) << 14);
  if ((v23 & 1) == 0)
  {
LABEL_41:
    if (!v24)
    {
      goto LABEL_49;
    }

LABEL_42:
    type = v4->_type;
    if (type > 0x12B)
    {
      if (type != 700 && type != 300)
      {
        goto LABEL_57;
      }
    }

    else if (type != 100 && type != 200)
    {
LABEL_57:
      v33 = [(NSPropertyDescription *)v4 _extraIVars];
      [a3 decodeDoubleForKey:@"NSMinValueName"];
      *(v33 + 8) = v34;
      goto LABEL_49;
    }

    v28 = [a3 decodeInt64ForKey:@"NSMinValueName"];
    *([(NSPropertyDescription *)v4 _extraIVars]+ 8) = v28;
    goto LABEL_49;
  }

  v25 = v4->_type;
  if (v25 <= 0x12B)
  {
    if (v25 != 100 && v25 != 200)
    {
      goto LABEL_55;
    }

    goto LABEL_40;
  }

  if (v25 == 700 || v25 == 300)
  {
LABEL_40:
    v26 = [a3 decodeInt64ForKey:@"NSMaxValueName"];
    *([(NSPropertyDescription *)v4 _extraIVars]+ 16) = v26;
    goto LABEL_41;
  }

LABEL_55:
  v31 = [(NSPropertyDescription *)v4 _extraIVars];
  [a3 decodeDoubleForKey:@"NSMaxValueName"];
  *(v31 + 16) = v32;
  if (v24)
  {
    goto LABEL_42;
  }

LABEL_49:
  if (!-[NSPropertyDescription _isFileBackedFuture](v4, "_isFileBackedFuture") && [-[NSDictionary valueForKey:](-[NSPropertyDescription userInfo](v4 "userInfo")])
  {
    *&v4->super._propertyDescriptionFlags |= 0x4800u;
  }

  if ([a3 decodeBoolForKey:@"NSIsIndexed"])
  {
    [(NSPropertyDescription *)v4 setIndexed:1];
  }

LABEL_54:
  v29 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = NSAttributeDescription;
  v4 = [(NSPropertyDescription *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    v4[40] = self->_type;
    *(v4 + 13) = [(NSString *)self->_attributeValueClassName copy];
    v5[14] = [(NSAttributeDescription *)self _sortOutDefaultNumericValuesBecauseDoublesAndFloatsDontCompareEqual:?];
    v5[12] = self->_valueTransformerName;
    if ([(NSPropertyDescription *)self _storeBinaryDataExternally])
    {
      *(v5 + 36) |= 0x800u;
    }

    if ([(NSAttributeDescription *)self preservesValueInHistoryOnDeletion])
    {
      *(v5 + 36) |= 0x1000u;
    }

    if ([(NSAttributeDescription *)self isFileBackedFuture])
    {
      *(v5 + 36) |= 0x4000u;
    }

    if ([(NSAttributeDescription *)self allowsCloudEncryption])
    {
      *(v5 + 36) |= 0x8000u;
    }
  }

  return v5;
}

- (BOOL)_isSchemaEqual:(id)a3
{
  v9.receiver = self;
  v9.super_class = NSAttributeDescription;
  v5 = [(NSPropertyDescription *)&v9 _isSchemaEqual:?];
  if (v5)
  {
    v5 = -[NSAttributeDescription _attributeTypeIsSchemaEqual:](self, "_attributeTypeIsSchemaEqual:", [a3 attributeType]);
    if (v5)
    {
      v6 = [(NSAttributeDescription *)self isFileBackedFuture];
      if (v6 == [a3 isFileBackedFuture])
      {
        v7 = [(NSAttributeDescription *)self storesBinaryDataExternally];
        LOBYTE(v5) = v7 ^ [a3 storesBinaryDataExternally] ^ 1;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = NSAttributeDescription;
  v5 = [(NSPropertyDescription *)&v15 description];
  v6 = [(NSAttributeDescription *)self attributeType];
  v7 = [(NSAttributeDescription *)self attributeValueClassName];
  v8 = [(NSAttributeDescription *)self defaultValue];
  v9 = @"NO";
  if ([(NSAttributeDescription *)self preservesValueInHistoryOnDeletion])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if ([(NSAttributeDescription *)self allowsCloudEncryption])
  {
    v9 = @"YES";
  }

  v11 = [(NSAttributeDescription *)self usesMergeableStorage];
  v12 = &stru_1EF3F1768;
  if (v11)
  {
    v12 = @", usesMergeableStorage YES";
  }

  v13 = [v4 stringWithFormat:@"%@, attributeType %lu, attributeValueClassName %@, defaultValue %@, preservesValueInHistoryOnDeletion %@, allowsCloudEncryption %@%@", v5, v6, v7, v8, v10, v9, v12];
  objc_autoreleasePoolPop(v3);
  return v13;
}

- (void)setAttributeValueClassName:(NSString *)attributeValueClassName
{
  [(NSPropertyDescription *)self _throwIfNotEditable];
  if (!attributeValueClassName && ![(NSPropertyDescription *)self isTransient])
  {
    type = self->_type;
    if (type != 1800 && type != 2100 && type != 2200)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't set attributeValueClassName to nil for a non-transient attribute." userInfo:0]);
    }
  }

  if (self->_attributeValueClassName != attributeValueClassName)
  {
    atomic_store(0, &self->_attributeValueClass);

    self->_attributeValueClassName = [(NSString *)attributeValueClassName copy];
  }
}

- (void)setAttributeType:(NSAttributeType)attributeType
{
  [(NSPropertyDescription *)self _throwIfNotEditable];
  if (self->_type == attributeType)
  {
    return;
  }

  if (attributeType)
  {
    if (attributeType == NSObjectIDAttributeType)
    {
      v5 = MEMORY[0x1E695DF30];
      v6 = *MEMORY[0x1E695D940];
      v7 = MEMORY[0x1E696AEC0];
      v8 = [NSAttributeDescription stringForAttributeType:2000];
      v9 = objc_opt_class();
      v10 = [v7 stringWithFormat:@"'%@' is only supported for use with '%@'.", v8, NSStringFromClass(v9)];
      v11 = v5;
      v12 = v6;
      goto LABEL_12;
    }
  }

  else if (![(NSPropertyDescription *)self isTransient])
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v10 = @"Can't set attribute type to undefined for non-transient attribute.";
LABEL_12:
    objc_exception_throw([v11 exceptionWithName:v12 reason:v10 userInfo:0]);
  }

  v13 = [NSAttributeDescription _classNameForType:?];
  if (v13 == NSKeyValueCoding_NullValue)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't find class for type %lu", attributeType];
    v11 = v14;
    v12 = v15;
    goto LABEL_12;
  }

  self->_type = attributeType;

  [(NSAttributeDescription *)self setAttributeValueClassName:v13];
}

+ (NSString)_classNameForType:(uint64_t)a1
{
  objc_opt_self();
  result = 0;
  if (a2 > 799)
  {
    if (a2 > 1199)
    {
      if (a2 > 2099)
      {
        if (a2 != 2100)
        {
          if (a2 == 2200)
          {
            return result;
          }

          return NSKeyValueCoding_NullValue;
        }
      }

      else if (a2 != 1200)
      {
        if (a2 == 1800)
        {
          return result;
        }

        return NSKeyValueCoding_NullValue;
      }

      goto LABEL_28;
    }

    if (a2 > 999)
    {
      if (a2 == 1000 || a2 == 1100)
      {
        goto LABEL_28;
      }
    }

    else if (a2 == 800 || a2 == 900)
    {
      goto LABEL_28;
    }

    return NSKeyValueCoding_NullValue;
  }

  if (a2 > 399)
  {
    if (a2 > 599)
    {
      if (a2 == 600 || a2 == 700)
      {
        goto LABEL_28;
      }
    }

    else if (a2 == 400 || a2 == 500)
    {
      goto LABEL_28;
    }

    return NSKeyValueCoding_NullValue;
  }

  if (a2 > 199)
  {
    if (a2 == 200 || a2 == 300)
    {
      goto LABEL_28;
    }

    return NSKeyValueCoding_NullValue;
  }

  if (!a2)
  {
    return result;
  }

  if (a2 != 100)
  {
    return NSKeyValueCoding_NullValue;
  }

LABEL_28:
  v4 = objc_opt_class();

  return NSStringFromClass(v4);
}

- (void)setDefaultValue:(id)defaultValue
{
  [(NSPropertyDescription *)self _throwIfNotEditable];
  v5 = self->_defaultValue;
  if (v5 != defaultValue)
  {

    self->_defaultValue = [(NSAttributeDescription *)self _sortOutDefaultNumericValuesBecauseDoublesAndFloatsDontCompareEqual:?];
  }
}

- (BOOL)isIndexed
{
  v4.receiver = self;
  v4.super_class = NSAttributeDescription;
  return [(NSPropertyDescription *)&v4 isIndexed]|| [(NSDictionary *)[(NSPropertyDescription *)self userInfo] objectForKey:@"_NSCreateIndex"]!= 0;
}

- (void)setValueTransformerName:(NSString *)valueTransformerName
{
  v3 = self->_valueTransformerName;
  if (v3 != valueTransformerName)
  {

    if (valueTransformerName)
    {
      v6 = [(NSString *)valueTransformerName isEqualToString:@"NSSecureUnarchiveFromDataTransformerName"];
      v7 = *MEMORY[0x1E696A8B0];
      if (!v6)
      {
        v7 = valueTransformerName;
      }
    }

    else
    {
      v7 = 0;
    }

    self->_valueTransformerName = v7;
  }
}

- (NSData)versionHash
{
  v3.receiver = self;
  v3.super_class = NSAttributeDescription;
  return [(NSPropertyDescription *)&v3 versionHash];
}

- (void)setAllowsExternalBinaryDataStorage:(BOOL)allowsExternalBinaryDataStorage
{
  v3 = allowsExternalBinaryDataStorage;
  [(NSPropertyDescription *)self _throwIfNotEditable];
  if (v3)
  {
    v5 = 2048;
  }

  else
  {
    v5 = 0;
  }

  v6 = *&self->super._propertyDescriptionFlags & 0xF7FF | v5;
  v7 = *&self->super._propertyDescriptionFlags & 0xB7FF | v5 & 0xBFFF;
  if (!v3)
  {
    v6 = v7;
  }

  *&self->super._propertyDescriptionFlags = v6;
}

- (void)setAllowsCloudEncryption:(BOOL)allowsCloudEncryption
{
  v3 = allowsCloudEncryption;
  [(NSPropertyDescription *)self _throwIfNotEditable];
  if (v3)
  {
    v5 = 0x8000;
  }

  else
  {
    v5 = 0;
  }

  *&self->super._propertyDescriptionFlags = v5 & 0x8000 | *&self->super._propertyDescriptionFlags & 0x7FFF;
}

- (void)setPreservesValueInHistoryOnDeletion:(BOOL)preservesValueInHistoryOnDeletion
{
  v3 = preservesValueInHistoryOnDeletion;
  [(NSPropertyDescription *)self _throwIfNotEditable];
  if (self)
  {
    if (v3)
    {
      v5 = 4096;
    }

    else
    {
      v5 = 0;
    }

    *&self->super._propertyDescriptionFlags = *&self->super._propertyDescriptionFlags & 0xEFFF | v5;
  }
}

- (void)setPreserveValueOnDeletionInPersistentHistory:(BOOL)a3
{
  v3 = a3;
  [(NSPropertyDescription *)self _throwIfNotEditable];
  if (self)
  {
    if (v3)
    {
      v5 = 4096;
    }

    else
    {
      v5 = 0;
    }

    *&self->super._propertyDescriptionFlags = *&self->super._propertyDescriptionFlags & 0xEFFF | v5;
  }
}

- (BOOL)_attributeTypeIsSchemaEqual:(unint64_t)a3
{
  type = self->_type;
  if (type == a3)
  {
    return 1;
  }

  if (type == 100)
  {
    return a3 == 300 || a3 == 200;
  }

  if (a3 == 300 && type == 200 || a3 == 500 && type == 600)
  {
    return 1;
  }

  if (type != 800)
  {
    return 0;
  }

  result = 1;
  if (a3 != 100 && a3 != 200 && a3 != 300)
  {
    return 0;
  }

  return result;
}

- (id)_initWithName:(id)a3 type:(unint64_t)a4 withClassName:(id)a5
{
  v6 = a4;
  v7 = [(NSPropertyDescription *)self _initWithName:a3];
  v8 = v7;
  if (v7)
  {
    *(v7 + 40) = v6;
    v7[13] = [a5 copy];
    v8[14] = 0;
    v8[12] = 0;
  }

  return v8;
}

- (void)setIsFileBackedFuture:(BOOL)a3
{
  v3 = a3;
  [(NSPropertyDescription *)self _throwIfNotEditable];
  if (v3)
  {
    v5 = 18432;
  }

  else
  {
    v5 = 0;
  }

  *&self->super._propertyDescriptionFlags = v5 | *&self->super._propertyDescriptionFlags & 0xB7FF;
}

+ (id)stringForAttributeType:(unint64_t)a3
{
  if (a3 > 899)
  {
    if (a3 > 1799)
    {
      if (a3 > 2099)
      {
        if (a3 == 2100)
        {
          return @"NSCompositeAttributeType";
        }

        if (a3 == 2200)
        {
          return @"NSCodableAttributeType";
        }
      }

      else
      {
        if (a3 == 1800)
        {
          return @"NSTransformableAttributeType";
        }

        if (a3 == 2000)
        {
          return @"NSObjectIDAttributeType";
        }
      }
    }

    else if (a3 > 1099)
    {
      if (a3 == 1100)
      {
        return @"NSUUIDAttributeType";
      }

      if (a3 == 1200)
      {
        return @"NSURIAttributeType";
      }
    }

    else
    {
      if (a3 == 900)
      {
        return @"NSDateAttributeType";
      }

      if (a3 == 1000)
      {
        return @"NSBinaryDataAttributeType";
      }
    }
  }

  else if (a3 > 499)
  {
    if (a3 > 699)
    {
      if (a3 == 700)
      {
        return @"NSStringAttributeType";
      }

      if (a3 == 800)
      {
        return @"NSBooleanAttributeType";
      }
    }

    else
    {
      if (a3 == 500)
      {
        return @"NSDoubleAttributeType";
      }

      if (a3 == 600)
      {
        return @"NSFloatAttributeType";
      }
    }
  }

  else if (a3 > 299)
  {
    if (a3 == 300)
    {
      return @"NSInteger64AttributeType";
    }

    if (a3 == 400)
    {
      return @"NSDecimalAttributeType";
    }
  }

  else
  {
    if (a3 == 100)
    {
      return @"NSInteger16AttributeType";
    }

    if (a3 == 200)
    {
      return @"NSInteger32AttributeType";
    }
  }

  return @"NSUndefinedAttributeType";
}

- (BOOL)_epsilonEquals:(id)a3 rhs:(id)a4 withFlags:(int)a5
{
  if (a3 == a4 || a5 == 1 && [(NSPropertyDescription *)self _isTriggerBacked])
  {
    return 1;
  }

  v9 = [(NSAttributeDescription *)self attributeType];
  if (v9 == NSDateAttributeType)
  {
    if ([a3 isNSDate] && objc_msgSend(a4, "isNSDate"))
    {
      [a3 timeIntervalSinceReferenceDate];
      v11 = v17;
      [a4 timeIntervalSinceReferenceDate];
LABEL_18:
      if (v11 != v12)
      {
        return vabdd_f64(v11, v12) <= 2.22044605e-16;
      }

      return 1;
    }
  }

  else if (v9 == NSFloatAttributeType)
  {
    if ([a3 isNSNumber] && objc_msgSend(a4, "isNSNumber"))
    {
      [a3 floatValue];
      v14 = v13;
      [a4 floatValue];
      if (v14 != v15)
      {
        return vabds_f32(v14, v15) <= 0.00000011921;
      }

      return 1;
    }
  }

  else if (v9 == NSDoubleAttributeType && [a3 isNSNumber] && objc_msgSend(a4, "isNSNumber"))
  {
    [a3 doubleValue];
    v11 = v10;
    [a4 doubleValue];
    goto LABEL_18;
  }

  return [a3 isEqual:a4];
}

- (uint64_t)_canConvertPredicate:(void *)a3 andWarning:
{
  if (result)
  {
    v4 = result;
    if (![a3 isNSNumber])
    {
      return 0;
    }

    result = 0;
    v5 = *(v4 + 80);
    if (v5 > 0x1F3)
    {
      if (*(v4 + 80) > 0x2BBu)
      {
        if (v5 == 700)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            return 0;
          }

          v11 = [a2 leftExpression];
          if ([v11 expressionType] != 3)
          {
            return 0;
          }

          v8 = [v11 keyPath];
          v7 = @"length";
        }

        else
        {
          if (v5 != 900)
          {
            return result;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            return 0;
          }

          v10 = [a2 leftExpression];
          if ([v10 expressionType] != 3)
          {
            return 0;
          }

          v8 = [v10 keyPath];
          v7 = @"timeIntervalSinceReferenceDate";
        }

LABEL_16:
        if (-[__CFString isEqual:](v7, "isEqual:", v8) && ![objc_msgSend(a2 "rightExpression")])
        {
          v9 = [a2 predicateOperatorType];
          if (v9 == 3)
          {
            return -1;
          }

          else
          {
            return v9 == 1;
          }
        }

        return 0;
      }

      if (v5 == 500 || v5 == 600)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (*(v4 + 80) <= 0x12Bu)
      {
        if (v5 != 100 && v5 != 200)
        {
          return result;
        }

        goto LABEL_14;
      }

      if (v5 == 300 || v5 == 400)
      {
LABEL_14:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }

        v6 = [a2 leftExpression];
        v7 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
        v8 = v6;
        goto LABEL_16;
      }
    }
  }

  return result;
}

- (uint64_t)_comparePredicatesAndWarningsWithUnoptimizedAttributeDescription:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = [a2 _rawValidationPredicates];
    v5 = [a2 _rawValidationWarnings];
    v6 = [v3 _rawValidationPredicates];
    v7 = [v3 _rawValidationWarnings];
    v8 = [v3 _extraIVars];
    v9 = [v4 count];
    if (v9)
    {
      v10 = v9;
      for (i = 0; v10 != i; ++i)
      {
        v12 = [v4 objectAtIndex:i];
        v13 = -[NSAttributeDescription _canConvertPredicate:andWarning:](v3, v12, [v5 objectAtIndex:i]);
        if (!v13)
        {
          if (!v6)
          {
            return 0;
          }

          v17 = [v6 indexOfObject:v12];
          if (v17 == 0x7FFFFFFFFFFFFFFFLL || ([objc_msgSend(v7 objectAtIndex:{v17), "isEqual:", objc_msgSend(v5, "objectAtIndex:", i)}] & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        v14 = v13;
        v15 = [objc_msgSend(v12 "rightExpression")];
        v16 = v3[40];
        if (v16 > 0x12B)
        {
          if (v16 != 700 && v16 != 300)
          {
LABEL_20:
            v20 = 8;
            if (v14 > 0)
            {
              v20 = 16;
            }

            v21 = *(v8 + v20);
            [v15 doubleValue];
            if (v21 != v22)
            {
              return 0;
            }

            continue;
          }
        }

        else if (v16 != 100 && v16 != 200)
        {
          goto LABEL_20;
        }

        v18 = 8;
        if (v14 > 0)
        {
          v18 = 16;
        }

        v19 = *(v8 + v18);
        if (v19 != [v15 longLongValue])
        {
          return 0;
        }
      }
    }

    return 1;
  }

  return result;
}

- (BOOL)_comparePredicatesAndWarnings:(id)a3
{
  v5 = [(NSPropertyDescription *)self _hasMaxValueInExtraIvars]|| [(NSPropertyDescription *)self _hasMinValueInExtraIvars];
  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    a3 = [a3 _underlyingProperty];
  }

  if ([a3 _hasMaxValueInExtraIvars] & 1) != 0 || (objc_msgSend(a3, "_hasMinValueInExtraIvars"))
  {
    if (v5)
    {
      v7 = [(NSPropertyDescription *)self _extraIVars];
      v8 = [a3 _extraIVars];
      if (v7->var1 != *(v8 + 8) || v7->var2 != *(v8 + 16))
      {
        return 0;
      }

      goto LABEL_19;
    }

    v10 = a3;
    v11 = self;
  }

  else
  {
    if (!v5)
    {
LABEL_19:
      v12.receiver = self;
      v12.super_class = NSAttributeDescription;
      return [(NSPropertyDescription *)&v12 _comparePredicatesAndWarnings:a3];
    }

    v10 = self;
    v11 = a3;
  }

  return [(NSAttributeDescription *)v10 _comparePredicatesAndWarningsWithUnoptimizedAttributeDescription:v11];
}

void __75__NSAttributeDescription__NSInternalMethods___createCachesAndOptimizeState__block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    v3 = *MEMORY[0x1E696A8B0];
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: One or more models in this application are using transformable properties with transformer names that are either unset, or set to NSKeyedUnarchiveFromDataTransformerName. Please switch to using %@ or a subclass of NSSecureUnarchiveFromDataTransformer instead. At some point, Core Data will default to using %@ when nil is specified, and transformable properties containing classes that do not support NSSecureCoding will become unreadable.\n", &v5, 0x16u);
  }

  v1 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v4 = *MEMORY[0x1E696A8B0];
    v5 = 138412546;
    v6 = v4;
    v7 = 2112;
    v8 = v4;
    _os_log_fault_impl(&dword_18565F000, v1, OS_LOG_TYPE_FAULT, "CoreData: One or more models in this application are using transformable properties with transformer names that are either unset, or set to NSKeyedUnarchiveFromDataTransformerName. Please switch to using %@ or a subclass of NSSecureUnarchiveFromDataTransformer instead. At some point, Core Data will default to using %@ when nil is specified, and transformable properties containing classes that do not support NSSecureCoding will become unreadable.", &v5, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (BOOL)_nonPredicateValidateValue:(id *)a3 forKey:(id)a4 inObject:(id)a5 error:(id *)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = NSAttributeDescription;
  LODWORD(v10) = [NSPropertyDescription _nonPredicateValidateValue:sel__nonPredicateValidateValue_forKey_inObject_error_ forKey:a3 inObject:a4 error:?];
  if (!v10)
  {
    goto LABEL_53;
  }

  if (!*a3)
  {
    LOBYTE(v10) = 1;
    goto LABEL_53;
  }

  v11 = [(NSPropertyDescription *)self _hasMaxValueInExtraIvars];
  v12 = [(NSPropertyDescription *)self _hasMinValueInExtraIvars];
  v13 = v12;
  if (v11 || v12 || self->_type == 700)
  {
    v14 = [(NSPropertyDescription *)self _extraIVars];
    v15 = 0;
    type = self->_type;
    if (type > 0x1F3)
    {
      if (self->_type <= 0x2BBu)
      {
        if (type != 500 && type != 600)
        {
          goto LABEL_42;
        }

        goto LABEL_19;
      }

      if (type == 700)
      {
        if (v11)
        {
          if ([*a3 length] <= v14->var2)
          {
            v15 = 0;
          }

          else
          {
            v15 = 1660;
          }
        }

        else
        {
          v15 = 0;
        }

        if (v13 && [*a3 length] < v14->var1)
        {
          v15 = 1670;
        }

        v26 = [*a3 length];
        if (CFStringGetCharactersPtr(*a3))
        {
          if (CFStringEncodingUnicodeToBytes())
          {
            v15 = 1671;
          }
        }

        else
        {
          MEMORY[0x1EEE9AC00](0);
          v29 = (&v31 - v28);
          if (v26 >= 0x80)
          {
            v29 = malloc_type_malloc(4 * v26, 0x1000040BDFB0063uLL);
          }

          v34.location = 0;
          v34.length = v26;
          CFStringGetCharacters(*a3, v34, v29);
          if (CFStringEncodingUnicodeToBytes())
          {
            v15 = 1671;
          }

          if (v26 >= 0x80)
          {
            free(v29);
          }
        }

        goto LABEL_42;
      }

      if (type == 900)
      {
        if (v11)
        {
          [*a3 timeIntervalSinceReferenceDate];
          v15 = v18 <= *&v14->var2 ? 0 : 1630;
        }

        else
        {
          v15 = 0;
        }

        if (v13)
        {
          [*a3 timeIntervalSinceReferenceDate];
          v19 = v27 < *&v14->var1;
          v21 = 1640;
LABEL_40:
          if (v19)
          {
            v15 = v21;
          }
        }
      }
    }

    else
    {
      if (self->_type <= 0x12Bu)
      {
        if (type != 100 && type != 200)
        {
          goto LABEL_42;
        }

        goto LABEL_23;
      }

      if (type == 300)
      {
LABEL_23:
        if (v11)
        {
          if ([*a3 longLongValue] <= v14->var2)
          {
            v15 = 0;
          }

          else
          {
            v15 = 1610;
          }
        }

        else
        {
          v15 = 0;
        }

        if (!v13)
        {
          goto LABEL_42;
        }

        v19 = [*a3 longLongValue] < v14->var1;
        goto LABEL_39;
      }

      if (type == 400)
      {
LABEL_19:
        if (v11)
        {
          [*a3 doubleValue];
          if (v17 <= *&v14->var2)
          {
            v15 = 0;
          }

          else
          {
            v15 = 1610;
          }
        }

        else
        {
          v15 = 0;
        }

        if (!v13)
        {
          goto LABEL_42;
        }

        [*a3 doubleValue];
        v19 = v20 < *&v14->var1;
LABEL_39:
        v21 = 1620;
        goto LABEL_40;
      }
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_42:
  if ([(NSAttributeDescription *)self attributeType]== NSURIAttributeType)
  {
    v22 = [*a3 absoluteString];
    v23 = 1560;
    if (!v15)
    {
      v23 = 1690;
    }

    if (!v22)
    {
      v15 = v23;
    }
  }

  LOBYTE(v10) = v15 == 0;
  if (a6 && v15)
  {
    if (a5)
    {
      v10 = [(NSManagedObject *)a5 _generateErrorWithCode:v15 andMessage:0 forKey:[(NSPropertyDescription *)self name] andValue:*a3 additionalDetail:0];
    }

    else
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:v15 userInfo:0];
    }

    v24 = v10;
    LOBYTE(v10) = 0;
    *a6 = v24;
  }

LABEL_53:
  v25 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)_versionHash:(char *)a3 inStyle:(unint64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v10.receiver = self;
  v10.super_class = NSAttributeDescription;
  [(NSPropertyDescription *)&v10 _versionHash:data inStyle:a4];
  CC_SHA256_Update(&c, data, 0x20u);
  v9 = [(NSAttributeDescription *)self attributeType];
  CC_SHA256_Update(&c, &v9, 4u);
  if ([(NSAttributeDescription *)self allowsExternalBinaryDataStorage])
  {
    v8 = 1;
    CC_SHA256_Update(&c, &v8, 1u);
  }

  if ([(NSAttributeDescription *)self preservesValueInHistoryOnDeletion])
  {
    v8 = 1;
    CC_SHA256_Update(&c, &v8, 1u);
  }

  CC_SHA256_Final(a3, &c);
  v7 = *MEMORY[0x1E69E9840];
}

- (id)_initWithName:(id)a3 type:(unint64_t)a4
{
  v7 = [NSAttributeDescription _classNameForType:a4];
  if (v7 == NSKeyValueCoding_NullValue)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Can't find class for type %lu", a4), 0}]);
  }

  return [(NSAttributeDescription *)self _initWithName:a3 type:a4 withClassName:v7];
}

- (void)_writeIntoData:(id)a3 propertiesDict:(id)a4 uniquedPropertyNames:(id)a5 uniquedStrings:(id)a6 uniquedData:(id)a7 entitiesSlots:(id)a8 fetchRequests:(id)a9
{
  v16 = [a3 length];
  _writeInt32IntoData(a3, 0);
  v17 = [a3 length];
  v39.receiver = self;
  v39.super_class = NSAttributeDescription;
  [(NSPropertyDescription *)&v39 _appendPropertyFieldsToData:a3 propertiesDict:a4 uniquedPropertyNames:a5 uniquedStrings:a6 uniquedData:a7 entitiesSlots:a8];
  if (self->_valueTransformerName)
  {
    v18 = [objc_msgSend(a6 "valueForKey:"unsignedIntegerValue"")];
  }

  else
  {
    v18 = 0;
  }

  _writeInt32IntoData(a3, v18);
  _writeInt32IntoData(a3, self->_type);
  if (self->_attributeValueClassName)
  {
    v19 = [objc_msgSend(a5 "valueForKey:"unsignedIntegerValue"")];
  }

  else
  {
    v19 = 0;
  }

  _writeInt32IntoData(a3, v19);
  if (self->_defaultValue)
  {
    _writeInt32IntoData(a3, 1u);
    type = self->_type;
    if (type <= 0x1F3)
    {
      if (self->_type > 0x12Bu)
      {
        if (type == 300)
        {
          _writeInt64IntoData(a3, [self->_defaultValue longLongValue]);
          goto LABEL_40;
        }

        if (type == 400)
        {
          defaultValue = [self->_defaultValue stringValue];
          v22 = a5;
          goto LABEL_37;
        }

LABEL_36:
        defaultValue = self->_defaultValue;
        v22 = a7;
        goto LABEL_37;
      }

      if (type != 100 && type != 200)
      {
        goto LABEL_36;
      }

LABEL_18:
      v25 = [self->_defaultValue integerValue];
LABEL_38:
      v24 = v25;
      v23 = a3;
      goto LABEL_39;
    }

    if (self->_type <= 0x2BBu)
    {
      if (type != 500)
      {
        if (type != 600)
        {
          goto LABEL_36;
        }

        v26 = [a3 length];
        v27 = (v26 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        if (v27 != v26)
        {
          v38 = 0;
          [a3 appendBytes:&v38 length:v27 - v26];
        }

        [self->_defaultValue floatValue];
        LODWORD(v38) = bswap32(v28);
        v29 = a3;
        v30 = 4;
LABEL_35:
        [v29 appendBytes:&v38 length:v30];
        goto LABEL_40;
      }

      v34 = [a3 length];
      v35 = (v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v35 != v34)
      {
        v38 = 0;
        [a3 appendBytes:&v38 length:v35 - v34];
      }

      [self->_defaultValue doubleValue];
    }

    else
    {
      if (type != 900)
      {
        if (type != 800)
        {
          if (type == 700)
          {
            defaultValue = self->_defaultValue;
            v22 = a6;
LABEL_37:
            v25 = [objc_msgSend(v22 objectForKey:{defaultValue), "unsignedIntegerValue"}];
            goto LABEL_38;
          }

          goto LABEL_36;
        }

        goto LABEL_18;
      }

      v31 = [a3 length];
      v32 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v32 != v31)
      {
        v38 = 0;
        [a3 appendBytes:&v38 length:v32 - v31];
      }

      [self->_defaultValue timeIntervalSinceReferenceDate];
    }

    v38 = bswap64(v33);
    v29 = a3;
    v30 = 8;
    goto LABEL_35;
  }

  v23 = a3;
  v24 = 0;
LABEL_39:
  _writeInt32IntoData(v23, v24);
LABEL_40:
  v36 = [(NSPropertyDescription *)self _hasMaxValueInExtraIvars];
  if ([(NSPropertyDescription *)self _hasMinValueInExtraIvars])
  {
    v36 |= 2u;
  }

  if ([(NSPropertyDescription *)self _storeBinaryDataExternally])
  {
    v36 |= 4u;
  }

  if ([(NSPropertyDescription *)self _isTriggerBacked])
  {
    v36 |= 8u;
  }

  if ([(NSAttributeDescription *)self preservesValueInHistoryOnDeletion])
  {
    v36 |= 0x10u;
  }

  if ([(NSPropertyDescription *)self _isFileBackedFuture])
  {
    v36 |= 0x20u;
  }

  else if ([-[NSDictionary valueForKey:](-[NSPropertyDescription userInfo](self "userInfo")])
  {
    v36 |= 0x24u;
  }

  if ([(NSPropertyDescription *)self _allowsCloudEncryption])
  {
    v37 = v36 | 0x40;
  }

  else
  {
    v37 = v36;
  }

  _writeInt32IntoData(a3, v37);
  v38 = bswap32([a3 length] - v16);
  [a3 replaceBytesInRange:v17 - 4 withBytes:{4, &v38}];
}

@end