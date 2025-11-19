@interface AKBasicLoginContentViewController
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation AKBasicLoginContentViewController

- (void)loadView
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = AKBasicLoginContentViewController;
  [(AKBasicLoginContentViewController *)&v3 loadView];
  v2 = [[AKBasicLoginContentViewControllerContainerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(AKBasicLoginContentViewController *)v5 setView:?];
}

- (void)viewWillLayoutSubviews
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = AKBasicLoginContentViewController;
  [(AKBasicLoginContentViewController *)&v5 viewWillLayoutSubviews];
  v4 = [(AKBasicLoginContentViewController *)v7 view];
  [v4 systemLayoutSizeFittingSize:{UILayoutFittingExpandedSize.width, UILayoutFittingExpandedSize.height}];
  [(AKBasicLoginContentViewController *)v7 setPreferredContentSize:v2, v3];
}

@end