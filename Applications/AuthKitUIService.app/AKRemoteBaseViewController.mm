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
  view = [(AKRemoteBaseViewController *)self view];
  [view setBackgroundColor:v4];

  view2 = [(AKRemoteBaseViewController *)self view];
  [view2 setClipsToBounds:0];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKRemoteBaseViewController;
  [(AKRemoteBaseViewController *)&v2 viewDidLoad];
}

@end