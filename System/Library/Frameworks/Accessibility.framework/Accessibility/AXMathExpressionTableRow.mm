@interface AXMathExpressionTableRow
- (AXMathExpressionTableRow)initWithExpressions:(id)a3;
@end

@implementation AXMathExpressionTableRow

- (AXMathExpressionTableRow)initWithExpressions:(id)a3
{
  v6.receiver = self;
  v6.super_class = AXMathExpressionTableRow;
  v3 = a3;
  v4 = [(AXMathExpressionTableRow *)&v6 init];
  [(AXMathExpressionTableRow *)v4 setExpressions:v3, v6.receiver, v6.super_class];

  return v4;
}

@end