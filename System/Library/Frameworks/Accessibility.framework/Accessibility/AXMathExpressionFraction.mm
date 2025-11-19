@interface AXMathExpressionFraction
- (AXMathExpressionFraction)initWithNumeratorExpression:(id)a3 denimonatorExpression:(id)a4;
@end

@implementation AXMathExpressionFraction

- (AXMathExpressionFraction)initWithNumeratorExpression:(id)a3 denimonatorExpression:(id)a4
{
  v9.receiver = self;
  v9.super_class = AXMathExpressionFraction;
  v5 = a4;
  v6 = a3;
  v7 = [(AXMathExpressionFraction *)&v9 init];
  [(AXMathExpressionFraction *)v7 setNumeratorExpression:v6, v9.receiver, v9.super_class];

  [(AXMathExpressionFraction *)v7 setDenimonatorExpression:v5];
  return v7;
}

@end