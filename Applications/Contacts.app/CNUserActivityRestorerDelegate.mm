@interface CNUserActivityRestorerDelegate
- (BOOL)userActivityRestorer:(id)a3 restoreCreateContact:(id)a4 activity:(id)a5;
- (BOOL)userActivityRestorer:(id)a3 restoreEditContact:(id)a4 activity:(id)a5;
- (BOOL)userActivityRestorer:(id)a3 restoreSearch:(id)a4 activity:(id)a5;
- (BOOL)userActivityRestorer:(id)a3 restoreViewContact:(id)a4 activity:(id)a5;
- (BOOL)userActivityRestorer:(id)a3 restoreViewGroupsWithActivity:(id)a4;
- (BOOL)userActivityRestorer:(id)a3 restoreViewListAtContact:(id)a4 displayedContact:(id)a5 searchString:(id)a6 isShowingGroups:(BOOL)a7 activity:(id)a8;
- (CNUserActivityRestorerDelegate)initWithContactsSplitViewController:(id)a3;
- (ContactsSplitViewController)contactsSplitViewController;
- (id)userActivityRestorer:(id)a3 keysToFetchWhenRestoringEditContactContactActivity:(id)a4;
- (id)userActivityRestorer:(id)a3 keysToFetchWhenRestoringViewContactActivity:(id)a4;
@end

@implementation CNUserActivityRestorerDelegate

- (CNUserActivityRestorerDelegate)initWithContactsSplitViewController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNUserActivityRestorerDelegate;
  v5 = [(CNUserActivityRestorerDelegate *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_contactsSplitViewController, v4);
    v7 = v6;
  }

  return v6;
}

- (BOOL)userActivityRestorer:(id)a3 restoreCreateContact:(id)a4 activity:(id)a5
{
  v5 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController:a3];
  [v5 createNewContact];

  return 1;
}

- (BOOL)userActivityRestorer:(id)a3 restoreViewContact:(id)a4 activity:(id)a5
{
  if (a4)
  {
    v7 = a4;
    v8 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    [v8 showCardForContact:v7 fallbackToFirstContact:0];
  }

  return a4 != 0;
}

- (BOOL)userActivityRestorer:(id)a3 restoreEditContact:(id)a4 activity:(id)a5
{
  if (a4)
  {
    v7 = a4;
    v8 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    [v8 showEditingCardForContact:v7];
  }

  return a4 != 0;
}

- (BOOL)userActivityRestorer:(id)a3 restoreSearch:(id)a4 activity:(id)a5
{
  v6 = a4;
  v7 = (*(CNIsStringEmpty + 16))(CNIsStringEmpty, v6);
  if ((v7 & 1) == 0)
  {
    v8 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    [v8 searchForString:v6];
  }

  return v7 ^ 1;
}

- (BOOL)userActivityRestorer:(id)a3 restoreViewListAtContact:(id)a4 displayedContact:(id)a5 searchString:(id)a6 isShowingGroups:(BOOL)a7 activity:(id)a8
{
  v8 = a7;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
  v16 = [v15 _isCollapsed];

  if ((v16 & 1) == 0)
  {
    v17 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    v18 = [v17 contactNavigationController];
    v19 = +[CNUIContactsEnvironment currentEnvironment];
    [v18 showCardForContact:v13 resetFilter:0 resetSearch:0 fallbackToFirstContact:objc_msgSend(v19 scrollToContact:"runningInContactsAppOniPad") animated:{0, 0}];

    v20 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    [v20 showContactList];

    v21 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    v22 = [v21 contactNavigationController];
    v23 = [v22 contactListViewController];
    [v23 setCellStateSelected:1 forContact:v13 animated:0];
  }

  if ((*(CNIsStringNonempty + 16))(CNIsStringNonempty, v14))
  {
    v24 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    v25 = [v24 contactNavigationController];
    [v25 searchForString:v14];
  }

  if (v12)
  {
    v26 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    v27 = [v26 contactNavigationController];
    [v27 scrollToContact:v12 animated:0];
  }

  if (v8)
  {
    v28 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    [v28 showGroupsAnimated:0];
  }

  return 1;
}

- (BOOL)userActivityRestorer:(id)a3 restoreViewGroupsWithActivity:(id)a4
{
  v4 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController:a3];
  [v4 showGroupsAnimated:0];

  return 1;
}

- (id)userActivityRestorer:(id)a3 keysToFetchWhenRestoringViewContactActivity:(id)a4
{
  v6 = CNContactIdentifierKey;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (id)userActivityRestorer:(id)a3 keysToFetchWhenRestoringEditContactContactActivity:(id)a4
{
  v6 = CNContactIdentifierKey;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (ContactsSplitViewController)contactsSplitViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_contactsSplitViewController);

  return WeakRetained;
}

@end