@interface PKMathRecognitionItemAttributes
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKMathRecognitionItemAttributes

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PKMathRecognitionItemAttributes);
  v5 = [(PKMathRecognitionItemAttributes *)self tokens];
  [(PKMathRecognitionItemAttributes *)v4 setTokens:v5];

  [(PKMathRecognitionItemAttributes *)v4 setExpressionFeatures:[(PKMathRecognitionItemAttributes *)self expressionFeatures]];
  v6 = [(PKMathRecognitionItemAttributes *)self graphableVariables];
  [(PKMathRecognitionItemAttributes *)v4 setGraphableVariables:v6];

  v7 = [(PKMathRecognitionItemAttributes *)self graphableVariables3D];
  [(PKMathRecognitionItemAttributes *)v4 setGraphableVariables3D:v7];

  return v4;
}

@end