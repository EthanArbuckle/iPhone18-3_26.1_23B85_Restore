@interface AKBasicLoginContentViewController
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation AKBasicLoginContentViewController

- (void)loadView
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = AKBasicLoginContentViewController;
  [(AKBasicLoginContentViewController *)&v4 loadView];
  v2 = [AKBasicLoginContentViewControllerContainerView alloc];
  v3 = [(AKBasicLoginContentViewControllerContainerView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(AKBasicLoginContentViewController *)v6 setView:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)viewWillLayoutSubviews
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = AKBasicLoginContentViewController;
  [(AKBasicLoginContentViewController *)&v5 viewWillLayoutSubviews];
  v4 = [(AKBasicLoginContentViewController *)v7 view];
  [v4 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C80], *(MEMORY[0x277D76C80] + 8)}];
  [(AKBasicLoginContentViewController *)v7 setPreferredContentSize:v2, v3];
  MEMORY[0x277D82BD8](v4);
}

@end