@interface AKBasicLoginContentViewController
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation AKBasicLoginContentViewController

- (void)loadView
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = AKBasicLoginContentViewController;
  [(AKBasicLoginContentViewController *)&v3 loadView];
  v2 = [[AKBasicLoginContentViewControllerContainerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(AKBasicLoginContentViewController *)selfCopy setView:?];
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = AKBasicLoginContentViewController;
  [(AKBasicLoginContentViewController *)&v5 viewWillLayoutSubviews];
  view = [(AKBasicLoginContentViewController *)selfCopy view];
  [view systemLayoutSizeFittingSize:{UILayoutFittingExpandedSize.width, UILayoutFittingExpandedSize.height}];
  [(AKBasicLoginContentViewController *)selfCopy setPreferredContentSize:v2, v3];
}

@end