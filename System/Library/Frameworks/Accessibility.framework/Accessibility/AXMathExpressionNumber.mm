@interface AXMathExpressionNumber
- (AXMathExpressionNumber)initWithContent:(id)content;
@end

@implementation AXMathExpressionNumber

- (AXMathExpressionNumber)initWithContent:(id)content
{
  v6.receiver = self;
  v6.super_class = AXMathExpressionNumber;
  contentCopy = content;
  v4 = [(AXMathExpressionNumber *)&v6 init];
  [(AXMathExpressionNumber *)v4 setContent:contentCopy, v6.receiver, v6.super_class];

  return v4;
}

@end