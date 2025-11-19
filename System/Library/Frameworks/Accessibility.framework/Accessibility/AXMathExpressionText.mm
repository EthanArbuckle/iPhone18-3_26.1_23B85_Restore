@interface AXMathExpressionText
- (AXMathExpressionText)initWithContent:(id)a3;
@end

@implementation AXMathExpressionText

- (AXMathExpressionText)initWithContent:(id)a3
{
  v6.receiver = self;
  v6.super_class = AXMathExpressionText;
  v3 = a3;
  v4 = [(AXMathExpressionText *)&v6 init];
  [(AXMathExpressionText *)v4 setContent:v3, v6.receiver, v6.super_class];

  return v4;
}

@end