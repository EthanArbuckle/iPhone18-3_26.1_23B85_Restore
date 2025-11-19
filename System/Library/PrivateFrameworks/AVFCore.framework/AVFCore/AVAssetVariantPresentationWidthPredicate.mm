@interface AVAssetVariantPresentationWidthPredicate
- (AVAssetVariantPresentationWidthPredicate)initWithPresentationWidth:(double)a3 operatorType:(unint64_t)a4;
@end

@implementation AVAssetVariantPresentationWidthPredicate

- (AVAssetVariantPresentationWidthPredicate)initWithPresentationWidth:(double)a3 operatorType:(unint64_t)a4
{
  v7 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"videoAttributes.presentationWidth"];
  v9.receiver = self;
  v9.super_class = AVAssetVariantPresentationWidthPredicate;
  return -[AVAssetVariantPresentationWidthPredicate initWithLeftExpression:rightExpression:modifier:type:options:](&v9, sel_initWithLeftExpression_rightExpression_modifier_type_options_, v7, [MEMORY[0x1E696ABC8] expressionForConstantValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", a3)}], 0, a4, 0);
}

@end