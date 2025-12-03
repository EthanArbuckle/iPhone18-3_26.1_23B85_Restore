@interface WFAutomationListViewController
- (BOOL)scrollForNavigationTap;
@end

@implementation WFAutomationListViewController

- (BOOL)scrollForNavigationTap
{
  tableView = [(WFAutomationListViewController *)self tableView];
  v3 = [tableView wf_scrollToTopAnimated:1];

  return v3;
}

@end