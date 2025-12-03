@interface CRLShallowCopyPair
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation CRLShallowCopyPair

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLShallowCopyPair allocWithZone:zone];
  first = [(CRLPair *)self first];
  second = [(CRLPair *)self second];
  v7 = [(CRLPair *)v4 initWithFirst:first second:second];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRLMutableShallowCopyPair allocWithZone:zone];
  first = [(CRLPair *)self first];
  second = [(CRLPair *)self second];
  v7 = [(CRLPair *)v4 initWithFirst:first second:second];

  return v7;
}

@end