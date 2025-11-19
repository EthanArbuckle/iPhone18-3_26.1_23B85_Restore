@interface AXMathExpressionTableCell
- (AXMathExpressionTableCell)initWithExpressions:(id)a3;
@end

@implementation AXMathExpressionTableCell

- (AXMathExpressionTableCell)initWithExpressions:(id)a3
{
  v6.receiver = self;
  v6.super_class = AXMathExpressionTableCell;
  v3 = a3;
  v4 = [(AXMathExpressionTableCell *)&v6 init];
  [(AXMathExpressionTableCell *)v4 setExpressions:v3, v6.receiver, v6.super_class];

  return v4;
}

@end