@interface AXMathExpressionTableRow
- (AXMathExpressionTableRow)initWithExpressions:(id)expressions;
@end

@implementation AXMathExpressionTableRow

- (AXMathExpressionTableRow)initWithExpressions:(id)expressions
{
  v6.receiver = self;
  v6.super_class = AXMathExpressionTableRow;
  expressionsCopy = expressions;
  v4 = [(AXMathExpressionTableRow *)&v6 init];
  [(AXMathExpressionTableRow *)v4 setExpressions:expressionsCopy, v6.receiver, v6.super_class];

  return v4;
}

@end