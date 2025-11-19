@interface AXMathExpressionRow
- (AXMathExpressionRow)initWithExpressions:(id)a3;
@end

@implementation AXMathExpressionRow

- (AXMathExpressionRow)initWithExpressions:(id)a3
{
  v6.receiver = self;
  v6.super_class = AXMathExpressionRow;
  v3 = a3;
  v4 = [(AXMathExpressionRow *)&v6 init];
  [(AXMathExpressionRow *)v4 setExpressions:v3, v6.receiver, v6.super_class];

  return v4;
}

@end