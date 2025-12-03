@interface BKSTerminationContext
+ (id)context;
+ (id)terminationAssertionContext;
- (BOOL)_isEqualToTerminationContext:(id)context;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BKSTerminationContext

+ (id)terminationAssertionContext
{
  v2 = objc_alloc_init(BKSTerminationContext);
  [(BKSTerminationContext *)v2 setExplanation:@"Termination assertion"];
  [(BKSTerminationContext *)v2 setExceptionCode:3735905538];

  return v2;
}

+ (id)context
{
  v2 = objc_alloc_init(BKSTerminationContext);

  return v2;
}

- (BOOL)_isEqualToTerminationContext:(id)context
{
  contextCopy = context;
  exceptionCode = self->_exceptionCode;
  if (exceptionCode == [contextCopy exceptionCode])
  {
    explanation = self->_explanation;
    explanation = [contextCopy explanation];
    v8 = [(NSString *)explanation isEqualToString:explanation];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(BKSTerminationContext *)self _isEqualToTerminationContext:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[BKSTerminationContext allocWithZone:?]];
  [(BKSTerminationContext *)v4 setExceptionCode:self->_exceptionCode];
  [(BKSTerminationContext *)v4 setExplanation:self->_explanation];
  return v4;
}

@end