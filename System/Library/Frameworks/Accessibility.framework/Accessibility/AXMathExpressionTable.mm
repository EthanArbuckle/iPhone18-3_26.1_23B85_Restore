@interface AXMathExpressionTable
- (AXMathExpressionTable)initWithExpressions:(id)expressions;
@end

@implementation AXMathExpressionTable

- (AXMathExpressionTable)initWithExpressions:(id)expressions
{
  v6.receiver = self;
  v6.super_class = AXMathExpressionTable;
  expressionsCopy = expressions;
  v4 = [(AXMathExpressionTable *)&v6 init];
  [(AXMathExpressionTable *)v4 setExpressions:expressionsCopy, v6.receiver, v6.super_class];

  return v4;
}

@end