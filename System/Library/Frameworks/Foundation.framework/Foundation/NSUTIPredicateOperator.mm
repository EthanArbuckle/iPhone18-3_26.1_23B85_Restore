@interface NSUTIPredicateOperator
- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initForVariant:(unint64_t)a3;
- (id)predicateFormat;
@end

@implementation NSUTIPredicateOperator

- (id)initForVariant:(unint64_t)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v8 = @"parameter";
    v9[0] = [NSNumber numberWithInteger:?];
    objc_exception_throw([v5 exceptionWithName:v6 reason:@"Unsupported variant" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}]);
  }

  if (a3)
  {
    v3 = 1101;
  }

  else
  {
    v3 = 1100;
  }

  v7.receiver = self;
  v7.super_class = NSUTIPredicateOperator;
  return [(NSPredicateOperator *)&v7 initWithOperatorType:v3 modifier:0];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(NSUTIPredicateOperator *)self variant];

  return [v4 initForVariant:v5];
}

- (id)predicateFormat
{
  if ([(NSPredicateOperator *)self operatorType]== 1100)
  {
    return @"UTI-EQUALS";
  }

  else
  {
    return @"UTI-CONFORMS-TO";
  }
}

- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4
{
  result = 0;
  v18[2] = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    if (_NSIsNSString() && (_NSIsNSString() & 1) != 0)
    {
      if (qword_1ED43F608 != -1)
      {
        dispatch_once(&qword_1ED43F608, &__block_literal_global_16);
      }

      if ([(NSPredicateOperator *)self operatorType]== 1100)
      {
        v8 = _MergedGlobals_97;
        if (!_MergedGlobals_97)
        {
          v9 = MEMORY[0x1E695DF30];
          v10 = *MEMORY[0x1E695D930];
          v15[0] = @"lhs";
          v15[1] = @"rhs";
          v16[0] = a3;
          v16[1] = a4;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
          v12 = @"Unable to load UTTypeEqual";
          goto LABEL_14;
        }

        return v8(a3, a4) != 0;
      }

      v8 = qword_1ED43F600;
      if (qword_1ED43F600)
      {
        return v8(a3, a4) != 0;
      }

      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D930];
      v13[0] = @"lhs";
      v13[1] = @"rhs";
      v14[0] = a3;
      v14[1] = a4;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
      v12 = @"Unable to load UTTypeConformsTo";
    }

    else
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D940];
      v17[0] = @"lhs";
      v17[1] = @"rhs";
      v18[0] = a3;
      v18[1] = a4;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
      v12 = @"Unsupported variant";
    }

LABEL_14:
    objc_exception_throw([v9 exceptionWithName:v10 reason:v12 userInfo:v11]);
  }

  return result;
}

void __73__NSUTIPredicateOperator_performPrimitiveOperationUsingObject_andObject___block_invoke()
{
  v0 = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 256);
  if (v0)
  {
    v1 = v0;
    _MergedGlobals_97 = dlsym(v0, "UTTypeEqual");
    v2 = dlsym(v1, "UTTypeConformsTo");
    qword_1ED43F600 = v2;
  }

  else
  {
    v2 = qword_1ED43F600;
  }

  if (_MergedGlobals_97)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    NSLog(@"NSUTIPredicateOperator couldn't load a MobileCoreServices symbol.");
  }
}

@end