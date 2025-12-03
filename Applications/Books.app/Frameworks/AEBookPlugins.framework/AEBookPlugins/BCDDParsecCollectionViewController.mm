@interface BCDDParsecCollectionViewController
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation BCDDParsecCollectionViewController

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCompletionHandler = [(BCDDParsecCollectionViewController *)self dismissCompletionHandler];

  if (dismissCompletionHandler)
  {
    dismissCompletionHandler2 = [(BCDDParsecCollectionViewController *)self dismissCompletionHandler];
    dismissCompletionHandler2[2]();

    [(BCDDParsecCollectionViewController *)self setDismissCompletionHandler:0];
  }
}

@end