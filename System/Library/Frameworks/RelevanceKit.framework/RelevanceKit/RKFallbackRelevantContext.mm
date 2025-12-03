@interface RKFallbackRelevantContext
- (BOOL)isEqual:(id)equal;
- (RKFallbackRelevantContext)init;
@end

@implementation RKFallbackRelevantContext

- (RKFallbackRelevantContext)init
{
  v3.receiver = self;
  v3.super_class = RKFallbackRelevantContext;
  return [(RKRelevantContext *)&v3 _init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    isKindOfClass = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end