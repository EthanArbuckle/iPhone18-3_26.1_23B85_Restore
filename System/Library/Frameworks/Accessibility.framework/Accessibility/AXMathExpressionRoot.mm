@interface AXMathExpressionRoot
- (AXMathExpressionRoot)initWithRadicandExpressions:(id)expressions rootIndexExpression:(id)expression;
@end

@implementation AXMathExpressionRoot

- (AXMathExpressionRoot)initWithRadicandExpressions:(id)expressions rootIndexExpression:(id)expression
{
  v9.receiver = self;
  v9.super_class = AXMathExpressionRoot;
  expressionCopy = expression;
  expressionsCopy = expressions;
  v7 = [(AXMathExpressionRoot *)&v9 init];
  [(AXMathExpressionRoot *)v7 setRadicandExpressions:expressionsCopy, v9.receiver, v9.super_class];

  [(AXMathExpressionRoot *)v7 setRootIndexExpression:expressionCopy];
  return v7;
}

@end