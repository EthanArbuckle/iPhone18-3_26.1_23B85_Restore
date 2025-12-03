@interface CRLWPTextMagnifierCaretController
- (CRLWPTextMagnifierCaretController)initWithPreferredStatusBarStyle:(int64_t)style;
@end

@implementation CRLWPTextMagnifierCaretController

- (CRLWPTextMagnifierCaretController)initWithPreferredStatusBarStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = CRLWPTextMagnifierCaretController;
  result = [(CRLWPTextMagnifierCaretController *)&v5 init];
  if (result)
  {
    result->_statusBarStyle = style;
  }

  return result;
}

@end