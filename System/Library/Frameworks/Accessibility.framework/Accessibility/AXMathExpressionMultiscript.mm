@interface AXMathExpressionMultiscript
- (AXMathExpressionMultiscript)initWithBaseExpression:(id)expression prescriptExpressions:(id)expressions postscriptExpressions:(id)postscriptExpressions;
@end

@implementation AXMathExpressionMultiscript

- (AXMathExpressionMultiscript)initWithBaseExpression:(id)expression prescriptExpressions:(id)expressions postscriptExpressions:(id)postscriptExpressions
{
  v12.receiver = self;
  v12.super_class = AXMathExpressionMultiscript;
  postscriptExpressionsCopy = postscriptExpressions;
  expressionsCopy = expressions;
  expressionCopy = expression;
  v10 = [(AXMathExpressionMultiscript *)&v12 init];
  [(AXMathExpressionMultiscript *)v10 setBaseExpression:expressionCopy, v12.receiver, v12.super_class];

  [(AXMathExpressionMultiscript *)v10 setPrescriptExpressions:expressionsCopy];
  [(AXMathExpressionMultiscript *)v10 setPostscriptExpressions:postscriptExpressionsCopy];

  return v10;
}

@end