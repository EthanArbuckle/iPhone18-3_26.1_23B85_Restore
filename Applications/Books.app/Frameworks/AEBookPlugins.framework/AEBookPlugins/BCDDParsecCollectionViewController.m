@interface BCDDParsecCollectionViewController
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation BCDDParsecCollectionViewController

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [(BCDDParsecCollectionViewController *)self dismissCompletionHandler];

  if (v4)
  {
    v5 = [(BCDDParsecCollectionViewController *)self dismissCompletionHandler];
    v5[2]();

    [(BCDDParsecCollectionViewController *)self setDismissCompletionHandler:0];
  }
}

@end