@interface AXMathExpressionIdentifier
- (AXMathExpressionIdentifier)initWithContent:(id)a3;
@end

@implementation AXMathExpressionIdentifier

- (AXMathExpressionIdentifier)initWithContent:(id)a3
{
  v6.receiver = self;
  v6.super_class = AXMathExpressionIdentifier;
  v3 = a3;
  v4 = [(AXMathExpressionIdentifier *)&v6 init];
  [(AXMathExpressionIdentifier *)v4 setContent:v3, v6.receiver, v6.super_class];

  return v4;
}

@end