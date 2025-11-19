@interface AXMathExpressionMultiscript
- (AXMathExpressionMultiscript)initWithBaseExpression:(id)a3 prescriptExpressions:(id)a4 postscriptExpressions:(id)a5;
@end

@implementation AXMathExpressionMultiscript

- (AXMathExpressionMultiscript)initWithBaseExpression:(id)a3 prescriptExpressions:(id)a4 postscriptExpressions:(id)a5
{
  v12.receiver = self;
  v12.super_class = AXMathExpressionMultiscript;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(AXMathExpressionMultiscript *)&v12 init];
  [(AXMathExpressionMultiscript *)v10 setBaseExpression:v9, v12.receiver, v12.super_class];

  [(AXMathExpressionMultiscript *)v10 setPrescriptExpressions:v8];
  [(AXMathExpressionMultiscript *)v10 setPostscriptExpressions:v7];

  return v10;
}

@end