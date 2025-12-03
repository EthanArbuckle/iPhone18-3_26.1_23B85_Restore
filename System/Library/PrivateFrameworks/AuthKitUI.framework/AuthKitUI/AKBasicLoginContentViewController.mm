@interface AKBasicLoginContentViewController
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation AKBasicLoginContentViewController

- (void)loadView
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = AKBasicLoginContentViewController;
  [(AKBasicLoginContentViewController *)&v4 loadView];
  v2 = [AKBasicLoginContentViewControllerContainerView alloc];
  v3 = [(AKBasicLoginContentViewControllerContainerView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(AKBasicLoginContentViewController *)selfCopy setView:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = AKBasicLoginContentViewController;
  [(AKBasicLoginContentViewController *)&v5 viewWillLayoutSubviews];
  view = [(AKBasicLoginContentViewController *)selfCopy view];
  [view systemLayoutSizeFittingSize:{*MEMORY[0x277D76C80], *(MEMORY[0x277D76C80] + 8)}];
  [(AKBasicLoginContentViewController *)selfCopy setPreferredContentSize:v2, v3];
  MEMORY[0x277D82BD8](view);
}

@end