@interface NSMatchingPredicateOperator
- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject;
- (NSMatchingPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier variant:(unint64_t)variant;
- (id)symbol;
- (void)_clearContext;
- (void)dealloc;
@end

@implementation NSMatchingPredicateOperator

- (NSMatchingPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier variant:(unint64_t)variant
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSMatchingPredicateOperator;
  result = [(NSStringPredicateOperator *)&v6 initWithOperatorType:type modifier:modifier variant:variant];
  if (result)
  {
    result->_regexContext = 0;
  }

  return result;
}

- (void)_clearContext
{
  regexContext = self->_regexContext;
  var1 = regexContext->var1;
  if (var1)
  {
    uregex_close(var1);
    self->_regexContext->var1 = 0;
    regexContext = self->_regexContext;
  }

  if (regexContext->var0)
  {
    CFRelease(regexContext->var0);
    self->_regexContext->var0 = 0;
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->_regexContext)
  {
    [(NSMatchingPredicateOperator *)self _clearContext];
    free(self->_regexContext);
    self->_regexContext = 0;
  }

  v3.receiver = self;
  v3.super_class = NSMatchingPredicateOperator;
  [(NSMatchingPredicateOperator *)&v3 dealloc];
}

- (id)symbol
{
  _modifierString = [(NSStringPredicateOperator *)self _modifierString];

  return [@"MATCHES" stringByAppendingString:_modifierString];
}

- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject
{
  v4 = 0;
  if (!object || !andObject)
  {
    return v4;
  }

  if ([&stru_1EEEFDF90 isEqual:andObject])
  {
    return 0;
  }

  if ((_NSIsNSString() & 1) == 0)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    andObject = [NSString stringWithFormat:@"Can't create a regex expression from object %@.", andObject];
    v14 = v11;
    v15 = v12;
    goto LABEL_16;
  }

  if ((_NSIsNSString() & 1) == 0)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    andObject = [NSString stringWithFormat:@"Can't do regex matching on object %@.", object];
    v14 = v16;
    v15 = v17;
LABEL_16:
    objc_exception_throw([v14 exceptionWithName:v15 reason:andObject userInfo:0]);
  }

  OSSpinLockLock(&self->_contextLock);
  regexContext = self->_regexContext;
  if (regexContext)
  {
    if (regexContext->var0 && ([regexContext->var0 isEqual:andObject] & 1) == 0)
    {
      [(NSMatchingPredicateOperator *)self _clearContext];
    }
  }

  else
  {
    v9 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040CC6EE3FDuLL);
    self->_regexContext = v9;
    v9->var0 = 0;
    v9->var1 = 0;
  }

  v4 = [_NSPredicateOperatorUtilities doRegexForString:object pattern:andObject likeProtect:[(NSMatchingPredicateOperator *)self _shouldEscapeForLike] flags:[(NSStringPredicateOperator *)self flags] context:self->_regexContext];
  OSSpinLockUnlock(&self->_contextLock);
  return v4;
}

@end