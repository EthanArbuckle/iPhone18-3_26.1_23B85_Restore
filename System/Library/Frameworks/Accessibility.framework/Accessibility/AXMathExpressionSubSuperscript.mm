@interface AXMathExpressionSubSuperscript
- (AXMathExpressionSubSuperscript)initWithBaseExpression:(id)expression subscriptExpressions:(id)expressions superscriptExpressions:(id)superscriptExpressions;
@end

@implementation AXMathExpressionSubSuperscript

- (AXMathExpressionSubSuperscript)initWithBaseExpression:(id)expression subscriptExpressions:(id)expressions superscriptExpressions:(id)superscriptExpressions
{
  v12.receiver = self;
  v12.super_class = AXMathExpressionSubSuperscript;
  superscriptExpressionsCopy = superscriptExpressions;
  expressionsCopy = expressions;
  expressionCopy = expression;
  v10 = [(AXMathExpressionSubSuperscript *)&v12 init];
  [(AXMathExpressionSubSuperscript *)v10 setBaseExpression:expressionCopy, v12.receiver, v12.super_class];

  [(AXMathExpressionSubSuperscript *)v10 setSubscriptExpressions:expressionsCopy];
  [(AXMathExpressionSubSuperscript *)v10 setSuperscriptExpressions:superscriptExpressionsCopy];

  return v10;
}

@end