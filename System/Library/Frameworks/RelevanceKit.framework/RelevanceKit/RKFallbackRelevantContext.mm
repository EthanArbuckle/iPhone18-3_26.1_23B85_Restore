@interface RKFallbackRelevantContext
- (BOOL)isEqual:(id)a3;
- (RKFallbackRelevantContext)init;
@end

@implementation RKFallbackRelevantContext

- (RKFallbackRelevantContext)init
{
  v3.receiver = self;
  v3.super_class = RKFallbackRelevantContext;
  return [(RKRelevantContext *)&v3 _init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    isKindOfClass = 1;
  }

  else
  {
    v3 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end