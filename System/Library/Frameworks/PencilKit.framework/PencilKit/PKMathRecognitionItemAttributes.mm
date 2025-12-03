@interface PKMathRecognitionItemAttributes
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PKMathRecognitionItemAttributes

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PKMathRecognitionItemAttributes);
  tokens = [(PKMathRecognitionItemAttributes *)self tokens];
  [(PKMathRecognitionItemAttributes *)v4 setTokens:tokens];

  [(PKMathRecognitionItemAttributes *)v4 setExpressionFeatures:[(PKMathRecognitionItemAttributes *)self expressionFeatures]];
  graphableVariables = [(PKMathRecognitionItemAttributes *)self graphableVariables];
  [(PKMathRecognitionItemAttributes *)v4 setGraphableVariables:graphableVariables];

  graphableVariables3D = [(PKMathRecognitionItemAttributes *)self graphableVariables3D];
  [(PKMathRecognitionItemAttributes *)v4 setGraphableVariables3D:graphableVariables3D];

  return v4;
}

@end