@interface AKRemoteBaseViewController
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation AKRemoteBaseViewController

- (void)loadView
{
  v2 = objc_alloc_init(UIView);
  [(AKRemoteBaseViewController *)self setView:?];

  v4 = +[UIColor clearColor];
  v3 = [(AKRemoteBaseViewController *)self view];
  [v3 setBackgroundColor:v4];

  v5 = [(AKRemoteBaseViewController *)self view];
  [v5 setClipsToBounds:0];
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKRemoteBaseViewController;
  [(AKRemoteBaseViewController *)&v2 viewDidLoad];
}

@end