@interface AAUIViewServiceRootViewController
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation AAUIViewServiceRootViewController

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  [(AAUIViewServiceRootViewController *)self setView:v3];

  v5 = +[UIColor clearColor];
  v4 = [(AAUIViewServiceRootViewController *)self view];
  [v4 setBackgroundColor:v5];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AAUIViewServiceRootViewController;
  [(AAUIViewServiceRootViewController *)&v3 viewDidLoad];
  [(AAUIRemoteViewController *)self->_aauiRemoteViewController prepareViewServiceForPresentation];
}

@end