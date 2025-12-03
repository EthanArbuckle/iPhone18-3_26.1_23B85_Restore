@interface ICUITextViewDebuggingViewController
- (UITextView)textView;
- (void)dismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation ICUITextViewDebuggingViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ICUITextViewDebuggingViewController;
  [(ICUITextViewDebuggingViewController *)&v5 viewDidLoad];
  textView = [(ICUITextViewDebuggingViewController *)self textView];
  [textView setTextContainerInset:{16.0, 16.0, 16.0, 16.0}];

  navigationItem = [(ICUITextViewDebuggingViewController *)self navigationItem];
  [navigationItem setTitle:@"UITextView"];
}

- (void)dismiss:(id)dismiss
{
  navigationController = [(ICUITextViewDebuggingViewController *)self navigationController];
  presentingViewController = [navigationController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (UITextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end