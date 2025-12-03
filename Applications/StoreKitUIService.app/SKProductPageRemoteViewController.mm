@interface SKProductPageRemoteViewController
- (SKProductPageRemoteViewControllerDelegate)delegate;
- (void)finishImmediately;
- (void)finishWithResult:(unint64_t)result completion:(id)completion;
- (void)loadDidFinish;
- (void)setCancelButtonTitle:(id)title;
- (void)setPreview:(id)preview;
- (void)setPromptString:(id)string;
- (void)setRightBarButtonTitle:(id)title;
- (void)setUsageContext:(id)context;
- (void)setVisibleInClientWindow:(id)window;
- (void)setupWithClientBundleID:(id)d bagType:(int64_t)type;
- (void)userDidInteractWithProduct:(unint64_t)product;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation SKProductPageRemoteViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  delegate = [(SKProductPageRemoteViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SKProductPageRemoteViewController *)self delegate];
    [delegate2 productPageRemoteViewController:self didTerminateWithError:errorCopy];
  }
}

- (void)finishWithResult:(unint64_t)result completion:(id)completion
{
  completionCopy = completion;
  delegate = [(SKProductPageRemoteViewController *)self delegate];
  [delegate productPageRemoteViewController:self finishWithResult:result completion:completionCopy];
}

- (void)loadDidFinish
{
  delegate = [(SKProductPageRemoteViewController *)self delegate];
  [delegate productPageRemoteViewControllerLoadDidFinish:self];
}

- (void)userDidInteractWithProduct:(unint64_t)product
{
  delegate = [(SKProductPageRemoteViewController *)self delegate];
  [delegate productPageRemoteViewController:self userDidInteractWithProduct:product];
}

- (void)setCancelButtonTitle:(id)title
{
  titleCopy = title;
  extensionProxy = [(SKProductPageRemoteViewController *)self extensionProxy];
  [extensionProxy _setCancelButtonTitle:titleCopy];
}

- (void)setRightBarButtonTitle:(id)title
{
  titleCopy = title;
  extensionProxy = [(SKProductPageRemoteViewController *)self extensionProxy];
  [extensionProxy _setRightBarButtonTitle:titleCopy];
}

- (void)setPromptString:(id)string
{
  stringCopy = string;
  extensionProxy = [(SKProductPageRemoteViewController *)self extensionProxy];
  [extensionProxy _setPromptString:stringCopy];
}

- (void)setUsageContext:(id)context
{
  contextCopy = context;
  extensionProxy = [(SKProductPageRemoteViewController *)self extensionProxy];
  [extensionProxy _setUsageContext:contextCopy];
}

- (void)setVisibleInClientWindow:(id)window
{
  windowCopy = window;
  extensionProxy = [(SKProductPageRemoteViewController *)self extensionProxy];
  [extensionProxy setVisibleInClientWindow:windowCopy];
}

- (void)finishImmediately
{
  delegate = [(SKProductPageRemoteViewController *)self delegate];
  [delegate productPageRemoteViewController:self finishWithResult:0 completion:0];
}

- (void)setPreview:(id)preview
{
  previewCopy = preview;
  extensionProxy = [(SKProductPageRemoteViewController *)self extensionProxy];
  [extensionProxy setPreview:previewCopy];
}

- (void)setupWithClientBundleID:(id)d bagType:(int64_t)type
{
  dCopy = d;
  extensionProxy = [(SKProductPageRemoteViewController *)self extensionProxy];
  [extensionProxy _setupWithClientBundleID:dCopy bagType:type];
}

- (SKProductPageRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end