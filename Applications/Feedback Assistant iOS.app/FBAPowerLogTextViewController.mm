@interface FBAPowerLogTextViewController
- (UITextView)textView;
- (void)displayText:(id)text;
- (void)viewDidLoad;
@end

@implementation FBAPowerLogTextViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = FBAPowerLogTextViewController;
  [(FBAPowerLogTextViewController *)&v5 viewDidLoad];
  contents = [(FBAPowerLogTextViewController *)self contents];
  textView = [(FBAPowerLogTextViewController *)self textView];
  [textView setText:contents];
}

- (void)displayText:(id)text
{
  [(FBAPowerLogTextViewController *)self setContents:text];
  textView = [(FBAPowerLogTextViewController *)self textView];

  if (textView)
  {
    contents = [(FBAPowerLogTextViewController *)self contents];
    textView2 = [(FBAPowerLogTextViewController *)self textView];
    [textView2 setText:contents];
  }
}

- (UITextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end