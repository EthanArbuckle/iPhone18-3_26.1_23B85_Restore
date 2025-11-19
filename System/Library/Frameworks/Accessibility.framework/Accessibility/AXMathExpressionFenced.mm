@interface AXMathExpressionFenced
- (AXMathExpressionFenced)initWithExpressions:(id)a3 openString:(id)a4 closeString:(id)a5;
@end

@implementation AXMathExpressionFenced

- (AXMathExpressionFenced)initWithExpressions:(id)a3 openString:(id)a4 closeString:(id)a5
{
  v12.receiver = self;
  v12.super_class = AXMathExpressionFenced;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(AXMathExpressionFenced *)&v12 init];
  [(AXMathExpressionFenced *)v10 setOpenString:v8, v12.receiver, v12.super_class];

  [(AXMathExpressionFenced *)v10 setExpressions:v9];
  [(AXMathExpressionFenced *)v10 setCloseString:v7];

  return v10;
}

@end