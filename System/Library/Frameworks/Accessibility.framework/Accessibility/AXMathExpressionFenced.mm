@interface AXMathExpressionFenced
- (AXMathExpressionFenced)initWithExpressions:(id)expressions openString:(id)string closeString:(id)closeString;
@end

@implementation AXMathExpressionFenced

- (AXMathExpressionFenced)initWithExpressions:(id)expressions openString:(id)string closeString:(id)closeString
{
  v12.receiver = self;
  v12.super_class = AXMathExpressionFenced;
  closeStringCopy = closeString;
  stringCopy = string;
  expressionsCopy = expressions;
  v10 = [(AXMathExpressionFenced *)&v12 init];
  [(AXMathExpressionFenced *)v10 setOpenString:stringCopy, v12.receiver, v12.super_class];

  [(AXMathExpressionFenced *)v10 setExpressions:expressionsCopy];
  [(AXMathExpressionFenced *)v10 setCloseString:closeStringCopy];

  return v10;
}

@end