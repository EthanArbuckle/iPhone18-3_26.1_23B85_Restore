@interface FBAPowerLogTextViewController
- (UITextView)textView;
- (void)displayText:(id)a3;
- (void)viewDidLoad;
@end

@implementation FBAPowerLogTextViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = FBAPowerLogTextViewController;
  [(FBAPowerLogTextViewController *)&v5 viewDidLoad];
  v3 = [(FBAPowerLogTextViewController *)self contents];
  v4 = [(FBAPowerLogTextViewController *)self textView];
  [v4 setText:v3];
}

- (void)displayText:(id)a3
{
  [(FBAPowerLogTextViewController *)self setContents:a3];
  v4 = [(FBAPowerLogTextViewController *)self textView];

  if (v4)
  {
    v6 = [(FBAPowerLogTextViewController *)self contents];
    v5 = [(FBAPowerLogTextViewController *)self textView];
    [v5 setText:v6];
  }
}

- (UITextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end