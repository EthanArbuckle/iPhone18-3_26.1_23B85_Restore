@interface AXMathExpressionTableCell
- (AXMathExpressionTableCell)initWithExpressions:(id)expressions;
@end

@implementation AXMathExpressionTableCell

- (AXMathExpressionTableCell)initWithExpressions:(id)expressions
{
  v6.receiver = self;
  v6.super_class = AXMathExpressionTableCell;
  expressionsCopy = expressions;
  v4 = [(AXMathExpressionTableCell *)&v6 init];
  [(AXMathExpressionTableCell *)v4 setExpressions:expressionsCopy, v6.receiver, v6.super_class];

  return v4;
}

@end