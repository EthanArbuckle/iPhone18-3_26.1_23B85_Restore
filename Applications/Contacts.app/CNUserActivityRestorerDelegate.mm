@interface CNUserActivityRestorerDelegate
- (BOOL)userActivityRestorer:(id)restorer restoreCreateContact:(id)contact activity:(id)activity;
- (BOOL)userActivityRestorer:(id)restorer restoreEditContact:(id)contact activity:(id)activity;
- (BOOL)userActivityRestorer:(id)restorer restoreSearch:(id)search activity:(id)activity;
- (BOOL)userActivityRestorer:(id)restorer restoreViewContact:(id)contact activity:(id)activity;
- (BOOL)userActivityRestorer:(id)restorer restoreViewGroupsWithActivity:(id)activity;
- (BOOL)userActivityRestorer:(id)restorer restoreViewListAtContact:(id)contact displayedContact:(id)displayedContact searchString:(id)string isShowingGroups:(BOOL)groups activity:(id)activity;
- (CNUserActivityRestorerDelegate)initWithContactsSplitViewController:(id)controller;
- (ContactsSplitViewController)contactsSplitViewController;
- (id)userActivityRestorer:(id)restorer keysToFetchWhenRestoringEditContactContactActivity:(id)activity;
- (id)userActivityRestorer:(id)restorer keysToFetchWhenRestoringViewContactActivity:(id)activity;
@end

@implementation CNUserActivityRestorerDelegate

- (CNUserActivityRestorerDelegate)initWithContactsSplitViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = CNUserActivityRestorerDelegate;
  v5 = [(CNUserActivityRestorerDelegate *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_contactsSplitViewController, controllerCopy);
    v7 = v6;
  }

  return v6;
}

- (BOOL)userActivityRestorer:(id)restorer restoreCreateContact:(id)contact activity:(id)activity
{
  v5 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController:restorer];
  [v5 createNewContact];

  return 1;
}

- (BOOL)userActivityRestorer:(id)restorer restoreViewContact:(id)contact activity:(id)activity
{
  if (contact)
  {
    contactCopy = contact;
    contactsSplitViewController = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    [contactsSplitViewController showCardForContact:contactCopy fallbackToFirstContact:0];
  }

  return contact != 0;
}

- (BOOL)userActivityRestorer:(id)restorer restoreEditContact:(id)contact activity:(id)activity
{
  if (contact)
  {
    contactCopy = contact;
    contactsSplitViewController = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    [contactsSplitViewController showEditingCardForContact:contactCopy];
  }

  return contact != 0;
}

- (BOOL)userActivityRestorer:(id)restorer restoreSearch:(id)search activity:(id)activity
{
  searchCopy = search;
  v7 = (*(CNIsStringEmpty + 16))(CNIsStringEmpty, searchCopy);
  if ((v7 & 1) == 0)
  {
    contactsSplitViewController = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    [contactsSplitViewController searchForString:searchCopy];
  }

  return v7 ^ 1;
}

- (BOOL)userActivityRestorer:(id)restorer restoreViewListAtContact:(id)contact displayedContact:(id)displayedContact searchString:(id)string isShowingGroups:(BOOL)groups activity:(id)activity
{
  groupsCopy = groups;
  contactCopy = contact;
  displayedContactCopy = displayedContact;
  stringCopy = string;
  contactsSplitViewController = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
  _isCollapsed = [contactsSplitViewController _isCollapsed];

  if ((_isCollapsed & 1) == 0)
  {
    contactsSplitViewController2 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    contactNavigationController = [contactsSplitViewController2 contactNavigationController];
    v19 = +[CNUIContactsEnvironment currentEnvironment];
    [contactNavigationController showCardForContact:displayedContactCopy resetFilter:0 resetSearch:0 fallbackToFirstContact:objc_msgSend(v19 scrollToContact:"runningInContactsAppOniPad") animated:{0, 0}];

    contactsSplitViewController3 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    [contactsSplitViewController3 showContactList];

    contactsSplitViewController4 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    contactNavigationController2 = [contactsSplitViewController4 contactNavigationController];
    contactListViewController = [contactNavigationController2 contactListViewController];
    [contactListViewController setCellStateSelected:1 forContact:displayedContactCopy animated:0];
  }

  if ((*(CNIsStringNonempty + 16))(CNIsStringNonempty, stringCopy))
  {
    contactsSplitViewController5 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    contactNavigationController3 = [contactsSplitViewController5 contactNavigationController];
    [contactNavigationController3 searchForString:stringCopy];
  }

  if (contactCopy)
  {
    contactsSplitViewController6 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    contactNavigationController4 = [contactsSplitViewController6 contactNavigationController];
    [contactNavigationController4 scrollToContact:contactCopy animated:0];
  }

  if (groupsCopy)
  {
    contactsSplitViewController7 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController];
    [contactsSplitViewController7 showGroupsAnimated:0];
  }

  return 1;
}

- (BOOL)userActivityRestorer:(id)restorer restoreViewGroupsWithActivity:(id)activity
{
  v4 = [(CNUserActivityRestorerDelegate *)self contactsSplitViewController:restorer];
  [v4 showGroupsAnimated:0];

  return 1;
}

- (id)userActivityRestorer:(id)restorer keysToFetchWhenRestoringViewContactActivity:(id)activity
{
  v6 = CNContactIdentifierKey;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (id)userActivityRestorer:(id)restorer keysToFetchWhenRestoringEditContactContactActivity:(id)activity
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