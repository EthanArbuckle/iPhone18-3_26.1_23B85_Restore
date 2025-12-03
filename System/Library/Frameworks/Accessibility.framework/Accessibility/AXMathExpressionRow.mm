@interface AXMathExpressionRow
- (AXMathExpressionRow)initWithExpressions:(id)expressions;
@end

@implementation AXMathExpressionRow

- (AXMathExpressionRow)initWithExpressions:(id)expressions
{
  v6.receiver = self;
  v6.super_class = AXMathExpressionRow;
  expressionsCopy = expressions;
  v4 = [(AXMathExpressionRow *)&v6 init];
  [(AXMathExpressionRow *)v4 setExpressions:expressionsCopy, v6.receiver, v6.super_class];

  return v4;
}

@end