@interface AXMathExpressionNumber
- (AXMathExpressionNumber)initWithContent:(id)a3;
@end

@implementation AXMathExpressionNumber

- (AXMathExpressionNumber)initWithContent:(id)a3
{
  v6.receiver = self;
  v6.super_class = AXMathExpressionNumber;
  v3 = a3;
  v4 = [(AXMathExpressionNumber *)&v6 init];
  [(AXMathExpressionNumber *)v4 setContent:v3, v6.receiver, v6.super_class];

  return v4;
}

@end