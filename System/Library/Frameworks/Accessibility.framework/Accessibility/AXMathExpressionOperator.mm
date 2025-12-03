@interface AXMathExpressionOperator
- (AXMathExpressionOperator)initWithContent:(id)content;
@end

@implementation AXMathExpressionOperator

- (AXMathExpressionOperator)initWithContent:(id)content
{
  v6.receiver = self;
  v6.super_class = AXMathExpressionOperator;
  contentCopy = content;
  v4 = [(AXMathExpressionOperator *)&v6 init];
  [(AXMathExpressionOperator *)v4 setContent:contentCopy, v6.receiver, v6.super_class];

  return v4;
}

@end