@interface BKSTerminationContext
+ (id)context;
+ (id)terminationAssertionContext;
- (BOOL)_isEqualToTerminationContext:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (BOOL)_isEqualToTerminationContext:(id)a3
{
  v4 = a3;
  exceptionCode = self->_exceptionCode;
  if (exceptionCode == [v4 exceptionCode])
  {
    explanation = self->_explanation;
    v7 = [v4 explanation];
    v8 = [(NSString *)explanation isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(BKSTerminationContext *)self _isEqualToTerminationContext:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[BKSTerminationContext allocWithZone:?]];
  [(BKSTerminationContext *)v4 setExceptionCode:self->_exceptionCode];
  [(BKSTerminationContext *)v4 setExplanation:self->_explanation];
  return v4;
}

@end