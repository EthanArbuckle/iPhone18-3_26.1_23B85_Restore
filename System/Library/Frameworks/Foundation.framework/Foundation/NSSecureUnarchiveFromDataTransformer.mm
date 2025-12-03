@interface NSSecureUnarchiveFromDataTransformer
+ (NSArray)allowedTopLevelClasses;
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation NSSecureUnarchiveFromDataTransformer

+ (NSArray)allowedTopLevelClasses
{
  v4[1] = *MEMORY[0x1E69E9840];
  transformedValueClass = [objc_opt_class() transformedValueClass];
  if (transformedValueClass)
  {
    v4[0] = transformedValueClass;
    return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  else
  {
    if (qword_1ED43FC88 != -1)
    {
      dispatch_once(&qword_1ED43FC88, &__block_literal_global_96);
    }

    return qword_1ED43FC80;
  }
}

uint64_t __62__NSSecureUnarchiveFromDataTransformer_allowedTopLevelClasses__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  result = [v0 initWithObjects:{MEMORY[0x1E695DEC8], MEMORY[0x1E695DF20], MEMORY[0x1E695DFD8], NSString, NSNumber, MEMORY[0x1E695DF00], MEMORY[0x1E695DEF0], objc_opt_class(), NSUUID, MEMORY[0x1E695DFB0], 0}];
  qword_1ED43FC80 = result;
  return result;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  v15[1] = *MEMORY[0x1E69E9840];
  if (value)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v12 = @"Cannot unarchive type from non-NSData object.";
      v9 = 0;
LABEL_10:
      objc_exception_throw([v10 exceptionWithName:v11 reason:v12 userInfo:v9]);
    }

    v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:{objc_msgSend(objc_opt_class(), "allowedTopLevelClasses")}];
    v13 = 0;
    valueCopy = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:valueCopy error:&v13];

    if (valueCopy)
    {
      v5 = 1;
    }

    else
    {
      v5 = v13 == 0;
    }

    if (!v5)
    {
      v7 = MEMORY[0x1E695DF30];
      localizedDescription = [v13 localizedDescription];
      v14 = @"NSUnderlyingError";
      v15[0] = v13;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v10 = v7;
      v11 = @"NSInvalidUnarchiveOperationException";
      v12 = localizedDescription;
      goto LABEL_10;
    }
  }

  return valueCopy;
}

- (id)reverseTransformedValue:(id)value
{
  v25 = *MEMORY[0x1E69E9840];
  if (!value)
  {
    return 0;
  }

  allowedTopLevelClasses = [objc_opt_class() allowedTopLevelClasses];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [allowedTopLevelClasses countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = *v22;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v22 != v7)
    {
      objc_enumerationMutation(allowedTopLevelClasses);
    }

    if (objc_opt_isKindOfClass())
    {
      break;
    }

    if (v6 == ++v8)
    {
      v6 = [allowedTopLevelClasses countByEnumeratingWithState:&v21 objects:v20 count:16];
      if (!v6)
      {
LABEL_10:
        v9 = [NSString stringWithFormat:@"Object of class %@ is not among allowed top level class list %@", objc_opt_class(), allowedTopLevelClasses];
        v10 = MEMORY[0x1E695DF30];
        v11 = *MEMORY[0x1E695D940];
        v12 = 0;
        goto LABEL_16;
      }

      goto LABEL_4;
    }
  }

  v17 = 0;
  result = [NSKeyedArchiver archivedDataWithRootObject:value requiringSecureCoding:1 error:&v17];
  if (result)
  {
    v14 = 1;
  }

  else
  {
    v14 = v17 == 0;
  }

  if (!v14)
  {
    v15 = MEMORY[0x1E695DF30];
    localizedDescription = [v17 localizedDescription];
    v18 = @"NSUnderlyingError";
    v19 = v17;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v10 = v15;
    v11 = @"NSInvalidArchiveOperationException";
    v9 = localizedDescription;
LABEL_16:
    objc_exception_throw([v10 exceptionWithName:v11 reason:v9 userInfo:v12]);
  }

  return result;
}

@end