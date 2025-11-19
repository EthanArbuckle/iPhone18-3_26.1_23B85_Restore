@interface ICUITextViewDebuggingViewController
- (UITextView)textView;
- (void)dismiss:(id)a3;
- (void)viewDidLoad;
@end

@implementation ICUITextViewDebuggingViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ICUITextViewDebuggingViewController;
  [(ICUITextViewDebuggingViewController *)&v5 viewDidLoad];
  v3 = [(ICUITextViewDebuggingViewController *)self textView];
  [v3 setTextContainerInset:{16.0, 16.0, 16.0, 16.0}];

  v4 = [(ICUITextViewDebuggingViewController *)self navigationItem];
  [v4 setTitle:@"UITextView"];
}

- (void)dismiss:(id)a3
{
  v4 = [(ICUITextViewDebuggingViewController *)self navigationController];
  v3 = [v4 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (UITextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end