@interface AXMathExpressionIdentifier
- (AXMathExpressionIdentifier)initWithContent:(id)content;
@end

@implementation AXMathExpressionIdentifier

- (AXMathExpressionIdentifier)initWithContent:(id)content
{
  v6.receiver = self;
  v6.super_class = AXMathExpressionIdentifier;
  contentCopy = content;
  v4 = [(AXMathExpressionIdentifier *)&v6 init];
  [(AXMathExpressionIdentifier *)v4 setContent:contentCopy, v6.receiver, v6.super_class];

  return v4;
}

@end