@interface CRLMutableGradientFillStop
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CRLMutableGradientFillStop

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLGradientFillStop allocWithZone:zone];
  color = [(CRLGradientFillStop *)self color];
  [(CRLGradientFillStop *)self fraction];
  v7 = v6;
  [(CRLGradientFillStop *)self inflection];
  v9 = [(CRLGradientFillStop *)v4 initWithColor:color fraction:v7 inflection:v8];

  return v9;
}

@end