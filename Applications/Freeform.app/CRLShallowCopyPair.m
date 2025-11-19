@interface CRLShallowCopyPair
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation CRLShallowCopyPair

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRLShallowCopyPair allocWithZone:a3];
  v5 = [(CRLPair *)self first];
  v6 = [(CRLPair *)self second];
  v7 = [(CRLPair *)v4 initWithFirst:v5 second:v6];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRLMutableShallowCopyPair allocWithZone:a3];
  v5 = [(CRLPair *)self first];
  v6 = [(CRLPair *)self second];
  v7 = [(CRLPair *)v4 initWithFirst:v5 second:v6];

  return v7;
}

@end