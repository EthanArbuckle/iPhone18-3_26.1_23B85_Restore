@interface NSValueTransformer
+ (NSArray)valueTransformerNames;
+ (NSValueTransformer)valueTransformerForName:(NSValueTransformerName)name;
+ (void)_warnAboutInscureArchiverCitingOffender:(uint64_t)offender;
+ (void)setValueTransformer:(NSValueTransformer *)transformer forName:(NSValueTransformerName)name;
- (id)_initForFoundationOnly;
- (id)reverseTransformedValue:(id)value;
@end

@implementation NSValueTransformer

- (id)_initForFoundationOnly
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSValueTransformer;
  return [(NSValueTransformer *)&v3 init];
}

+ (NSArray)valueTransformerNames
{
  os_unfair_lock_lock(&stru_1ED43FC64);
  v2 = qword_1ED43FC68;
  if (!qword_1ED43FC68)
  {
    v2 = [objc_msgSend(_getTransformerRegistry() "allKeys")];
    qword_1ED43FC68 = v2;
  }

  v3 = v2;
  os_unfair_lock_unlock(&stru_1ED43FC64);

  return v3;
}

+ (void)setValueTransformer:(NSValueTransformer *)transformer forName:(NSValueTransformerName)name
{
  if (!name)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Name cannot be nil" userInfo:0]);
  }

  os_unfair_lock_lock(&stru_1ED43FC64);
  TransformerRegistry = _getTransformerRegistry();
  if (transformer)
  {
    [TransformerRegistry setObject:transformer forKey:name];
  }

  else
  {
    [TransformerRegistry removeObjectForKey:name];
  }

  qword_1ED43FC68 = 0;

  os_unfair_lock_unlock(&stru_1ED43FC64);
}

+ (void)_warnAboutInscureArchiverCitingOffender:(uint64_t)offender
{
  v3[5] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (qword_1ED43FC70 != -1)
  {
    dispatch_once(&qword_1ED43FC70, &__block_literal_global_55);
  }

  if ((_MergedGlobals_128 & 1) == 0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __62__NSValueTransformer__warnAboutInscureArchiverCitingOffender___block_invoke_2;
    v3[3] = &unk_1E69F2C00;
    v3[4] = a2;
    if (qword_1ED43FC78 != -1)
    {
      dispatch_once(&qword_1ED43FC78, v3);
    }
  }
}

char *__62__NSValueTransformer__warnAboutInscureArchiverCitingOffender___block_invoke()
{
  result = getenv("NSValueTransformerDisableDeprecationWarnings");
  if (result && *result == 89 && result[1] == 69 && result[2] == 83)
  {
    _MergedGlobals_128 = 1;
  }

  return result;
}

void __62__NSValueTransformer__warnAboutInscureArchiverCitingOffender___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _NSOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_fault_impl(&dword_18075C000, v2, OS_LOG_TYPE_FAULT, "'%{public}@' should not be used to for un-archiving and will be removed in a future release", &v4, 0xCu);
  }
}

+ (NSValueTransformer)valueTransformerForName:(NSValueTransformerName)name
{
  v14 = *MEMORY[0x1E69E9840];
  if (name)
  {
    if (name == @"NSKeyedUnarchiveFromData" || name == @"NSUnarchiveFromData")
    {
      [NSValueTransformer _warnAboutInscureArchiverCitingOffender:?];
    }

    os_unfair_lock_lock(&stru_1ED43FC64);
    v7 = [_getTransformerRegistry() objectForKey:name];
    os_unfair_lock_unlock(&stru_1ED43FC64);
    if (v7)
    {
      return v7;
    }

    v7 = NSClassFromString(name);
    if (dyld_program_sdk_at_least())
    {
      if (!v7)
      {
        return v7;
      }

      if (![(objc_class *)v7 isSubclassOfClass:objc_opt_class()])
      {
        v9 = _NSOSLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = 138543618;
          v11 = _NSMethodExceptionProem(self, a2);
          v12 = 2114;
          v13 = name;
          _os_log_error_impl(&dword_18075C000, v9, OS_LOG_TYPE_ERROR, "%{public}@: '%{public}@' is not a subclass of NSValueTransformer.", &v10, 0x16u);
        }

        v7 = 0;
        return v7;
      }
    }

    else if (!v7)
    {
      return v7;
    }

    v7 = objc_alloc_init(v7);
    [self setValueTransformer:v7 forName:name];
    return v7;
  }

  return 0;
}

- (id)reverseTransformedValue:(id)value
{
  if (([objc_opt_class() allowsReverseTransformation] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Transformer does not support reverse transformations" userInfo:0]);
  }

  return [(NSValueTransformer *)self transformedValue:value];
}

@end