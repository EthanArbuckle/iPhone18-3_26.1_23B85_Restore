@interface AXMathExpressionRoot
- (AXMathExpressionRoot)initWithRadicandExpressions:(id)a3 rootIndexExpression:(id)a4;
@end

@implementation AXMathExpressionRoot

- (AXMathExpressionRoot)initWithRadicandExpressions:(id)a3 rootIndexExpression:(id)a4
{
  v9.receiver = self;
  v9.super_class = AXMathExpressionRoot;
  v5 = a4;
  v6 = a3;
  v7 = [(AXMathExpressionRoot *)&v9 init];
  [(AXMathExpressionRoot *)v7 setRadicandExpressions:v6, v9.receiver, v9.super_class];

  [(AXMathExpressionRoot *)v7 setRootIndexExpression:v5];
  return v7;
}

@end