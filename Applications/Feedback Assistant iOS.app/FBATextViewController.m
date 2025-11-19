@interface FBATextViewController
- (UITextView)textView;
- (void)didReceiveMemoryWarning;
- (void)viewDidLoad;
@end

@implementation FBATextViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = FBATextViewController;
  [(FBATextViewController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = FBATextViewController;
  [(FBATextViewController *)&v2 didReceiveMemoryWarning];
}

- (UITextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end