@interface CRLWPTextMagnifierCaretController
- (CRLWPTextMagnifierCaretController)initWithPreferredStatusBarStyle:(int64_t)a3;
@end

@implementation CRLWPTextMagnifierCaretController

- (CRLWPTextMagnifierCaretController)initWithPreferredStatusBarStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CRLWPTextMagnifierCaretController;
  result = [(CRLWPTextMagnifierCaretController *)&v5 init];
  if (result)
  {
    result->_statusBarStyle = a3;
  }

  return result;
}

@end