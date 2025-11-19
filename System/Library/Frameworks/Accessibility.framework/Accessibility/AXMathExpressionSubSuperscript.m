@interface AXMathExpressionSubSuperscript
- (AXMathExpressionSubSuperscript)initWithBaseExpression:(id)a3 subscriptExpressions:(id)a4 superscriptExpressions:(id)a5;
@end

@implementation AXMathExpressionSubSuperscript

- (AXMathExpressionSubSuperscript)initWithBaseExpression:(id)a3 subscriptExpressions:(id)a4 superscriptExpressions:(id)a5
{
  v12.receiver = self;
  v12.super_class = AXMathExpressionSubSuperscript;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(AXMathExpressionSubSuperscript *)&v12 init];
  [(AXMathExpressionSubSuperscript *)v10 setBaseExpression:v9, v12.receiver, v12.super_class];

  [(AXMathExpressionSubSuperscript *)v10 setSubscriptExpressions:v8];
  [(AXMathExpressionSubSuperscript *)v10 setSuperscriptExpressions:v7];

  return v10;
}

@end