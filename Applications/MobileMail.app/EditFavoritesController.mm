@interface EditFavoritesController
- (BOOL)selectedStateForMailbox:(id)mailbox;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)toggleAndReturnSelectedStateForMailbox:(id)mailbox;
- (EditFavoritesController)initWithAccountsProvider:(id)provider favoritesManager:(id)manager;
- (EditFavoritesControllerDelegate)delegate;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_contentSizeCategoryChanged:(id)changed;
- (void)doneButtonClicked:(id)clicked;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation EditFavoritesController

- (EditFavoritesController)initWithAccountsProvider:(id)provider favoritesManager:(id)manager
{
  providerCopy = provider;
  managerCopy = manager;
  v35.receiver = self;
  v35.super_class = EditFavoritesController;
  v6 = [(EditFavoritesController *)&v35 initWithStyle:2];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableArray);
    selectedSmartMailboxes = v6->_selectedSmartMailboxes;
    v6->_selectedSmartMailboxes = v7;

    v9 = objc_alloc_init(NSMutableArray);
    selectedFavoriteMailboxes = v6->_selectedFavoriteMailboxes;
    v6->_selectedFavoriteMailboxes = v9;

    orderedAccounts = [providerCopy orderedAccounts];
    -[EditFavoritesController setIsSingleAccount:](v6, "setIsSingleAccount:", [providerCopy isDisplayingMultipleAccounts] ^ 1);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    mailboxesCollection = [managerCopy mailboxesCollection];
    items = [mailboxesCollection items];

    v13 = [items countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v13)
    {
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(items);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          p_selectedFavoriteMailboxes = &v6->_selectedFavoriteMailboxes;
          if ((isKindOfClass & 1) == 0)
          {
            objc_opt_class();
            v19 = objc_opt_isKindOfClass();
            p_selectedFavoriteMailboxes = &v6->_selectedSmartMailboxes;
            if ((v19 & 1) == 0)
            {
              objc_opt_class();
              v20 = objc_opt_isKindOfClass();
              p_selectedFavoriteMailboxes = &v6->_selectedSmartMailboxes;
              if ((v20 & 1) == 0)
              {
                continue;
              }
            }
          }

          [*p_selectedFavoriteMailboxes addObject:v16];
        }

        v13 = [items countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v13);
    }

    if ([(EditFavoritesController *)v6 isSingleAccount])
    {
      sortedAccounts = [orderedAccounts firstObject];
      v22 = +[MailChangeManager sharedChangeManager];
      v23 = [v22 allMailboxUidsSortedWithSpecialsAtTopForAccount:sortedAccounts includingLocals:1 client:v6 outbox:0];
      sortedMailboxes = v6->_sortedMailboxes;
      v6->_sortedMailboxes = v23;
    }

    else
    {
      v25 = orderedAccounts;
      sortedAccounts = v6->_sortedAccounts;
      v6->_sortedAccounts = v25;
    }

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v6 selector:"_contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

    [(EditFavoritesController *)v6 setHidesBottomBarWhenPushed:1];
  }

  return v6;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = EditFavoritesController;
  [(EditFavoritesController *)&v13 viewDidLoad];
  v3 = [UIBarButtonItem alloc];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DONE" value:&stru_100662A88 table:@"Main"];
  v6 = [v3 initWithTitle:v5 style:2 target:self action:"doneButtonClicked:"];

  navigationItem = [(EditFavoritesController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v6];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"MAILBOXES" value:&stru_100662A88 table:@"Main"];
  navigationItem2 = [(EditFavoritesController *)self navigationItem];
  [navigationItem2 setTitle:v9];

  tableView = [(EditFavoritesController *)self tableView];
  +[MailboxTableCell defaultRowHeight];
  [tableView setEstimatedRowHeight:?];

  navigationController = [(EditFavoritesController *)self navigationController];
  [navigationController _setClipUnderlapWhileTransitioning:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = EditFavoritesController;
  [(EditFavoritesController *)&v6 viewWillAppear:appear];
  [(EditFavoritesController *)self preferredContentSize];
  [(EditFavoritesController *)self setPreferredContentSize:375.0];
  mf_updatePreferredContentSizeBasedOnTableView = [(EditFavoritesController *)self mf_updatePreferredContentSizeBasedOnTableView];
  [(EditFavoritesController *)self setTableViewObserver:mf_updatePreferredContentSizeBasedOnTableView];

  tableView = [(EditFavoritesController *)self tableView];
  [tableView reloadData];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = EditFavoritesController;
  [(EditFavoritesController *)&v5 traitCollectionDidChange:changeCopy];
  [(EditFavoritesController *)self mf_updateTableViewBackgroundColorForPopover];
}

- (void)doneButtonClicked:(id)clicked
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained editFavoritesControllerDidFinish:self];
}

- (BOOL)selectedStateForMailbox:(id)mailbox
{
  v4 = [FavoriteItem itemForMailbox:mailbox selected:1];
  LOBYTE(self) = [(NSMutableArray *)self->_selectedFavoriteMailboxes containsObject:v4];

  return self;
}

- (BOOL)toggleAndReturnSelectedStateForMailbox:(id)mailbox
{
  v4 = [FavoriteItem itemForMailbox:mailbox selected:1];
  v5 = [(NSMutableArray *)self->_selectedFavoriteMailboxes containsObject:v4];
  selectedFavoriteMailboxes = self->_selectedFavoriteMailboxes;
  if (v5)
  {
    [(NSMutableArray *)selectedFavoriteMailboxes removeObject:v4];
  }

  else
  {
    [(NSMutableArray *)selectedFavoriteMailboxes addObject:v4];
  }

  return v5 ^ 1;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return -1;
  }

  if ([(EditFavoritesController *)self isSingleAccount])
  {
    [(EditFavoritesController *)self sortedMailboxes];
  }

  else
  {
    [(EditFavoritesController *)self sortedAccounts];
  }
  v6 = ;
  v4 = [v6 count];

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    goto LABEL_26;
  }

  if ([(EditFavoritesController *)self isSingleAccount])
  {
    v6 = [viewCopy dequeueReusableCellWithIdentifier:@"MailReuseFavorites_Mailboxes"];
    if (!v6)
    {
      v6 = [[MailboxTableCell alloc] initWithStyle:0 reuseIdentifier:@"MailReuseFavorites_Mailboxes"];
    }

    sortedMailboxes = [(EditFavoritesController *)self sortedMailboxes];
    v8 = [sortedMailboxes objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v9 = [NSSet setWithObject:v8];
    [(MailboxTableCell *)v6 setLegacyMailboxes:v9];

    v10 = [FavoriteItem itemForMailbox:v8 selected:1];
    v11 = [(NSMutableArray *)self->_selectedFavoriteMailboxes containsObject:v10]? 3 : 0;
    [(MailboxTableCell *)v6 setAccessoryType:v11];
  }

  else
  {
    v6 = [viewCopy dequeueReusableCellWithIdentifier:@"MailReuseFavorites_Accounts"];
    if (!v6)
    {
      v6 = [[MailboxTableCell alloc] initWithStyle:1 reuseIdentifier:@"MailReuseFavorites_Accounts"];
    }

    sortedAccounts = [(EditFavoritesController *)self sortedAccounts];
    v13 = [sortedAccounts objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = self->_selectedFavoriteMailboxes;
    v15 = 0;
    v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v16)
    {
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          account = [*(*(&v32 + 1) + 8 * i) account];
          v20 = [account isEqual:v13];

          v15 += v20;
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    displayName = [v13 displayName];
    [(MailboxTableCell *)v6 setTitle:displayName];

    v22 = [MailAccount accountImageForAccount:v13];
    [(MailboxTableCell *)v6 setIcon:v22];

    if (v15)
    {
      v23 = [NSNumber numberWithUnsignedInteger:v15];
      detailTextLabel2 = [NSNumberFormatter localizedStringFromNumber:v23 numberStyle:1];

      v25 = [NSBundle bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"ITEMS_SELECTED%1$lu%2$@" value:&stru_100662A88 table:@"Main"];
      v27 = [NSString localizedStringWithFormat:v26, v15, detailTextLabel2];

      detailTextLabel = [(MailboxTableCell *)v6 detailTextLabel];
      [detailTextLabel setText:v27];
    }

    else
    {
      detailTextLabel2 = [(MailboxTableCell *)v6 detailTextLabel];
      [detailTextLabel2 setText:0];
    }

    [(MailboxTableCell *)v6 setAccessoryType:1];
  }

  if (!v6)
  {
LABEL_26:
    __assert_rtn("[EditFavoritesController tableView:cellForRowAtIndexPath:]", "EditFavoritesController.m", 215, "cell");
  }

  return v6;
}

- (void)_contentSizeCategoryChanged:(id)changed
{
  +[MailboxTableCell invalidateCachedLayoutInformation];
  tableView = [(EditFavoritesController *)self tableView];
  [tableView reloadData];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section])
  {
    if ([(EditFavoritesController *)self isSingleAccount])
    {
      v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
      sortedMailboxes = [(EditFavoritesController *)self sortedMailboxes];
      v9 = [sortedMailboxes objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

      if ([(EditFavoritesController *)self toggleAndReturnSelectedStateForMailbox:v9])
      {
        v10 = 3;
      }

      else
      {
        v10 = 0;
      }

      [v7 setAccessoryType:v10];
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    }

    else
    {
      sortedAccounts = [(EditFavoritesController *)self sortedAccounts];
      v7 = [sortedAccounts objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

      v9 = objc_alloc_init(AccountFavoritesPickerController);
      [(MailboxListViewControllerBase *)v9 setAccount:v7];
      [(AccountFavoritesPickerController *)v9 setDelegate:self];
      navigationController = [(EditFavoritesController *)self navigationController];
      [navigationController pushViewController:v9 animated:1];
    }
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    return UITableViewAutomaticDimension;
  }

  +[MailboxTableCell defaultRowHeight];
  return result;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy mf_updateBackgroundColorForPopover:{-[EditFavoritesController mf_supportsPopoverPresentation](self, "mf_supportsPopoverPresentation")}];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  sortedMailboxes = [(EditFavoritesController *)self sortedMailboxes];
  v7 = [sortedMailboxes objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  if (v7)
  {
    mv_isSelectable = [v7 mv_isSelectable];
  }

  else
  {
    mv_isSelectable = 1;
  }

  return mv_isSelectable;
}

- (EditFavoritesControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end