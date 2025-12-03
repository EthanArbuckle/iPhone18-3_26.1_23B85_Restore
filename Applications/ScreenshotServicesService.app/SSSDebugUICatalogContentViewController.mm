@interface SSSDebugUICatalogContentViewController
- (void)viewDidLoad;
@end

@implementation SSSDebugUICatalogContentViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SSSDebugUICatalogContentViewController;
  [(SSSDebugUICatalogContentViewController *)&v5 viewDidLoad];
  view = [(SSSDebugUICatalogContentViewController *)self view];
  v4 = +[UIColor clearColor];
  [view setBackgroundColor:v4];
}

@end