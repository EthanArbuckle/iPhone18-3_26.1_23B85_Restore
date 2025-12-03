@interface AXMathExpressionFraction
- (AXMathExpressionFraction)initWithNumeratorExpression:(id)expression denimonatorExpression:(id)denimonatorExpression;
@end

@implementation AXMathExpressionFraction

- (AXMathExpressionFraction)initWithNumeratorExpression:(id)expression denimonatorExpression:(id)denimonatorExpression
{
  v9.receiver = self;
  v9.super_class = AXMathExpressionFraction;
  denimonatorExpressionCopy = denimonatorExpression;
  expressionCopy = expression;
  v7 = [(AXMathExpressionFraction *)&v9 init];
  [(AXMathExpressionFraction *)v7 setNumeratorExpression:expressionCopy, v9.receiver, v9.super_class];

  [(AXMathExpressionFraction *)v7 setDenimonatorExpression:denimonatorExpressionCopy];
  return v7;
}

@end