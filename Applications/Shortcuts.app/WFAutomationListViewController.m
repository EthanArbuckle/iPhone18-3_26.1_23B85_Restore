@interface WFAutomationListViewController
- (BOOL)scrollForNavigationTap;
@end

@implementation WFAutomationListViewController

- (BOOL)scrollForNavigationTap
{
  v2 = [(WFAutomationListViewController *)self tableView];
  v3 = [v2 wf_scrollToTopAnimated:1];

  return v3;
}

@end