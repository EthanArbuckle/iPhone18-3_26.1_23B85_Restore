@interface BSUIPlaceholderViewController
- (CGSize)expectedContentSize;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLoad;
@end

@implementation BSUIPlaceholderViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = BSUIPlaceholderViewController;
  [(BSUIPlaceholderViewController *)&v6 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(BSUIPlaceholderViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = +[UIContentUnavailableConfiguration loadingConfiguration];
  [(BSUIPlaceholderViewController *)self setContentUnavailableConfiguration:v5];

  [(BSUIPlaceholderViewController *)self bc_setNavBarVisible:1];
}

- (CGSize)expectedContentSize
{
  view = [(BSUIPlaceholderViewController *)self view];
  [view frame];
  v5 = v4;

  view2 = [(BSUIPlaceholderViewController *)self view];
  [view2 sizeThatFits:{v5, 3.40282347e38}];
  v8 = v7;

  v9 = v8 + 32.0;
  v10 = v5;
  result.height = v9;
  result.width = v10;
  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom] == &dword_0 + 1)
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

@end