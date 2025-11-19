@interface CRLWPiOSTextCaretDragTrackerController
- (CRLWPiOSTextCaretDragTrackerController)initWithPreferredStatusBarStyle:(int64_t)a3;
@end

@implementation CRLWPiOSTextCaretDragTrackerController

- (CRLWPiOSTextCaretDragTrackerController)initWithPreferredStatusBarStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CRLWPiOSTextCaretDragTrackerController;
  result = [(CRLWPiOSTextCaretDragTrackerController *)&v5 init];
  if (result)
  {
    result->_statusBarStyle = a3;
  }

  return result;
}

@end