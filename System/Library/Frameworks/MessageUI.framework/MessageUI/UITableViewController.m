@interface UITableViewController
@end

@implementation UITableViewController

void __81__UITableViewController_MessageUI__mf_updatePreferredContentSizeBasedOnTableView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained preferredContentSize];
  v3 = v2;
  [*(a1 + 32) contentSize];
  [WeakRetained setPreferredContentSize:v3];
}

@end