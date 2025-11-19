@interface SFCreditCardCaptureViewController
@end

@implementation SFCreditCardCaptureViewController

void __68___SFCreditCardCaptureViewController_cameraReader_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 creditCardCaptureViewControllerDidCancel:*(a1 + 32)];
}

void __57___SFCreditCardCaptureViewController_cameraReaderDidEnd___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 creditCardCaptureViewController:*(a1 + 32) didCaptureCreditCard:*(*(a1 + 32) + 1480)];
}

void __60___SFCreditCardCaptureViewController_cameraReaderDidCancel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 creditCardCaptureViewControllerDidCancel:*(a1 + 32)];
}

@end