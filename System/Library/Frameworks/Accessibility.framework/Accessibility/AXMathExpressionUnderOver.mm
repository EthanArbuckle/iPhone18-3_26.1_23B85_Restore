@interface AXMathExpressionUnderOver
- (AXMathExpressionUnderOver)initWithBaseExpression:(id)expression underExpression:(id)underExpression overExpression:(id)overExpression;
@end

@implementation AXMathExpressionUnderOver

- (AXMathExpressionUnderOver)initWithBaseExpression:(id)expression underExpression:(id)underExpression overExpression:(id)overExpression
{
  v12.receiver = self;
  v12.super_class = AXMathExpressionUnderOver;
  overExpressionCopy = overExpression;
  underExpressionCopy = underExpression;
  expressionCopy = expression;
  v10 = [(AXMathExpressionUnderOver *)&v12 init];
  [(AXMathExpressionUnderOver *)v10 setBaseExpression:expressionCopy, v12.receiver, v12.super_class];

  [(AXMathExpressionUnderOver *)v10 setUnderExpression:underExpressionCopy];
  [(AXMathExpressionUnderOver *)v10 setOverExpression:overExpressionCopy];

  return v10;
}

@end