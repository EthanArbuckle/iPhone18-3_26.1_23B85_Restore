@interface CRLMutableGradientFillStop
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CRLMutableGradientFillStop

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRLGradientFillStop allocWithZone:a3];
  v5 = [(CRLGradientFillStop *)self color];
  [(CRLGradientFillStop *)self fraction];
  v7 = v6;
  [(CRLGradientFillStop *)self inflection];
  v9 = [(CRLGradientFillStop *)v4 initWithColor:v5 fraction:v7 inflection:v8];

  return v9;
}

@end