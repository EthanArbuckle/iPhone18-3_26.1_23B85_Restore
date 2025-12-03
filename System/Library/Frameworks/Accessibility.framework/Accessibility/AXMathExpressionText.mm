@interface AXMathExpressionText
- (AXMathExpressionText)initWithContent:(id)content;
@end

@implementation AXMathExpressionText

- (AXMathExpressionText)initWithContent:(id)content
{
  v6.receiver = self;
  v6.super_class = AXMathExpressionText;
  contentCopy = content;
  v4 = [(AXMathExpressionText *)&v6 init];
  [(AXMathExpressionText *)v4 setContent:contentCopy, v6.receiver, v6.super_class];

  return v4;
}

@end