@interface CRLWPiOSTextCaretDragTrackerController
- (CRLWPiOSTextCaretDragTrackerController)initWithPreferredStatusBarStyle:(int64_t)style;
@end

@implementation CRLWPiOSTextCaretDragTrackerController

- (CRLWPiOSTextCaretDragTrackerController)initWithPreferredStatusBarStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = CRLWPiOSTextCaretDragTrackerController;
  result = [(CRLWPiOSTextCaretDragTrackerController *)&v5 init];
  if (result)
  {
    result->_statusBarStyle = style;
  }

  return result;
}

@end