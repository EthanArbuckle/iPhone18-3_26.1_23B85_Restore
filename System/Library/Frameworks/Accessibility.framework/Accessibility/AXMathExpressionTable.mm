@interface AXMathExpressionTable
- (AXMathExpressionTable)initWithExpressions:(id)a3;
@end

@implementation AXMathExpressionTable

- (AXMathExpressionTable)initWithExpressions:(id)a3
{
  v6.receiver = self;
  v6.super_class = AXMathExpressionTable;
  v3 = a3;
  v4 = [(AXMathExpressionTable *)&v6 init];
  [(AXMathExpressionTable *)v4 setExpressions:v3, v6.receiver, v6.super_class];

  return v4;
}

@end