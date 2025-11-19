@interface TSSIMUnlockListViewController
- (BOOL)_anESIMExistsInSubscriptionContexts;
- (BOOL)_doTwoEsimsExist;
- (BOOL)_doesPhysicalSimExist;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (TSSIMUnlockListViewController)initWithSubscriptionContexts:(id)a3 subscriptionActions:(id)a4 suppressCancellation:(BOOL)a5 delegate:(id)a6;
- (TSSIMUnlockListViewControllerDelegate)delegate;
- (id)_nameForSIMWithSubscriptionContext:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (unint64_t)_numberOfLockedSubscriptionContexts;
- (void)_cancelButtonItemPressed:(id)a3;
- (void)_configureAncillaryViews;
- (void)_configureFooterView;
- (void)_configureNavigationItem;
- (void)_continueButtonTapped:(id)a3;
- (void)addSubscriptionContext:(id)a3 withSubscriptionAction:(id)a4 atIndex:(unint64_t)a5;
- (void)removeSubscriptionContextAtIndex:(unint64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)unlockDetailViewController:(id)a3 didCompleteWithResult:(int64_t)a4;
- (void)unlockListFooterViewContinueButtonWasPressed:(id)a3;
- (void)updateSubscriptionContext:(id)a3 withSubscriptionAction:(id)a4 atIndex:(unint64_t)a5;
- (void)viewDidLoad;
@end

@implementation TSSIMUnlockListViewController

- (TSSIMUnlockListViewController)initWithSubscriptionContexts:(id)a3 subscriptionActions:(id)a4 suppressCancellation:(BOOL)a5 delegate:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = sub_10000C1BC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10000F1A8(v12);
  }

  v13 = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v52 count:16];
  v46 = v11;
  if (v15)
  {
    v16 = v15;
    v17 = *v49;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [v13 getSimHardwareInfo:*(*(&v48 + 1) + 8 * i) error:0];
        v20 = [v19 hardwareType];

        if (v20 != 2)
        {
          v21 = v10;
          v22 = 1;
          goto LABEL_13;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v21 = v10;
  v22 = 0;
LABEL_13:

  v23 = [v14 count];
  v24 = +[NSBundle mainBundle];
  v25 = v24;
  v26 = @"SINGLE_ESIM_LOCKED";
  if (v22)
  {
    v26 = @"SINGLE_SIM_LOCKED";
  }

  v27 = @"SINGLE_ESIM_LOCKED_DESCRIPTION";
  if (v22)
  {
    v27 = @"SINGLE_SIM_LOCKED_DESCRIPTION";
  }

  v28 = @"MULTIPLE_SIMS_LOCKED";
  if (!v22)
  {
    v28 = @"MULTIPLE_ESIMS_LOCKED";
  }

  v29 = @"ESIM_LOCKED_DESCRIPTION";
  if (v22)
  {
    v29 = @"SIM_LOCKED_DESCRIPTION";
  }

  if (v23 == 1)
  {
    v30 = v26;
  }

  else
  {
    v30 = v28;
  }

  if (v23 == 1)
  {
    v31 = v27;
  }

  else
  {
    v31 = v29;
  }

  v32 = [v24 localizedStringForKey:v30 value:&stru_10001CA70 table:@"Localizable"];

  v33 = +[NSBundle mainBundle];
  v34 = [v33 localizedStringForKey:v31 value:&stru_10001CA70 table:@"Localizable"];

  if (+[TSUtilities inBuddy])
  {
    v35 = +[NSBundle mainBundle];
    v36 = [v35 localizedStringForKey:@"SIM_LOCKED_DESCRIPTION_IN_BUDDY" value:&stru_10001CA70 table:@"Localizable"];
    v37 = [NSString stringWithFormat:@"%@%@", v34, v36];

    v34 = v37;
  }

  v47.receiver = self;
  v47.super_class = TSSIMUnlockListViewController;
  v38 = [(TSSIMUnlockListViewController *)&v47 initWithTitle:v32 detailText:v34 symbolName:0 adoptTableViewScrollView:1];
  v39 = v38;
  if (v38)
  {
    v38->_suppressCancellation = a5;
    objc_storeStrong(&v38->_telephonyClient, v13);
    v40 = [v14 mutableCopy];
    subscriptionContexts = v39->_subscriptionContexts;
    v39->_subscriptionContexts = v40;

    v42 = [v21 mutableCopy];
    subscriptionActions = v39->_subscriptionActions;
    v39->_subscriptionActions = v42;

    objc_storeWeak(&v39->_delegate, v46);
    v39->_isEsimExist = [(TSSIMUnlockListViewController *)v39 _anESIMExistsInSubscriptionContexts];
  }

  return v39;
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = TSSIMUnlockListViewController;
  [(TSSIMUnlockListViewController *)&v33 viewDidLoad];
  v3 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(TSSIMUnlockListViewController *)self setTableView:v3];

  v4 = [(TSSIMUnlockListViewController *)self tableView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(TSSIMUnlockListViewController *)self tableView];
  [v5 setDirectionalLayoutMargins:{1.0, 1.0, 1.0, 1.0}];

  v6 = [(TSSIMUnlockListViewController *)self tableView];
  v7 = +[UIColor clearColor];
  [v6 setBackgroundColor:v7];

  v8 = [(TSSIMUnlockListViewController *)self tableView];
  [v8 setDataSource:self];

  v9 = [(TSSIMUnlockListViewController *)self tableView];
  [v9 setDelegate:self];

  v10 = [(TSSIMUnlockListViewController *)self tableView];
  [v10 setScrollEnabled:1];

  v11 = [(TSSIMUnlockListViewController *)self tableView];
  [v11 setAllowsMultipleSelection:0];

  v12 = [(TSSIMUnlockListViewController *)self tableView];
  [v12 reloadData];

  v13 = [(TSSIMUnlockListViewController *)self tableView];
  [v13 layoutIfNeeded];

  if (!self->_isEsimExist && [(NSMutableArray *)self->_subscriptionContexts count]>= 2)
  {
    v14 = objc_alloc_init(TSSIMUnlockListTableFooterView);
    tableFooterView = self->_tableFooterView;
    self->_tableFooterView = v14;
  }

  v16 = [(TSSIMUnlockListViewController *)self _numberOfLockedSubscriptionContexts];
  v17 = [UIButton buttonWithType:1];
  skipButton = self->_skipButton;
  self->_skipButton = v17;

  v19 = self->_skipButton;
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"SKIP" value:&stru_10001CA70 table:@"Localizable"];
  [(OBTextAccessoryButton *)v19 setTitle:v21 forState:0];

  [(OBTextAccessoryButton *)self->_skipButton sizeToFit];
  [(OBTextAccessoryButton *)self->_skipButton addTarget:self action:"_continueButtonTapped:" forControlEvents:64];
  v22 = +[SSOBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v22;

  [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:"_continueButtonTapped:" forControlEvents:64];
  [(SSOBBoldTrayButton *)self->_continueButton setEnabled:1];
  v24 = self->_continueButton;
  v25 = +[NSBundle mainBundle];
  v26 = [v25 localizedStringForKey:@"CONTINUE" value:&stru_10001CA70 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v24 setTitle:v26 forState:0];

  v27 = [(NSMutableArray *)self->_subscriptionContexts count];
  v28 = [(TSSIMUnlockListViewController *)self buttonTray];
  v29 = v28;
  if (v16 == v27)
  {
    v30 = 48;
  }

  else
  {
    v30 = 40;
  }

  [v28 addButton:*&self->TSOBTableWelcomeController_opaque[v30]];

  [(TSSIMUnlockListViewController *)self setEdgesForExtendedLayout:0];
  v31 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:"_cancelButtonItemPressed:"];
  [v31 setDirection:8];
  [v31 setDelegate:self];
  v32 = [(TSSIMUnlockListViewController *)self view];
  [v32 addGestureRecognizer:v31];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = -[NSMutableArray objectAtIndexedSubscript:](self->_subscriptionContexts, "objectAtIndexedSubscript:", [a4 row]);
  v8 = [v7 uuid];
  v9 = [(NSMutableDictionary *)self->_subscriptionActions objectForKeyedSubscript:v8];
  if ([v9 actionType])
  {
    v49 = v8;
    if ([v9 actionType] == 1 && (objc_msgSend(v9, "carrierName"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v11))
    {
      v47 = v7;
      v48 = v6;
      v12 = [v6 dequeueReusableCellWithIdentifier:@"SIMUnlockListUnlockedCellIdentifier"];
      v13 = [v9 carrierName];
      v14 = [v9 phoneNumber];
      v15 = v12;
      v16 = v13;
      v17 = v15;
      v46 = v15;
      if (!v15)
      {
        v17 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"SIMUnlockListUnlockedCellIdentifier"];
      }

      v18 = [v17 defaultContentConfiguration];
      [v18 setText:v16];
      v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      v20 = [v18 textProperties];
      [v20 setFont:v19];

      v21 = [TSUtilities formattedPhoneNumber:v14 withCountryCode:0];
      [v18 setSecondaryText:v21];

      v22 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
      v23 = [v18 secondaryTextProperties];
      [v23 setFont:v22];

      v24 = +[UIColor lightGrayColor];
      v25 = [v18 secondaryTextProperties];
      [v25 setColor:v24];

      [v17 setContentConfiguration:v18];
      v26 = [UIImage systemImageNamed:@"chevron.forward"];
      v27 = [[UIImageView alloc] initWithImage:v26];
      v28 = [UIView alloc];
      [v27 frame];
      v29 = [v28 initWithFrame:?];
      [v17 setAccessoryView:v29];
      +[NSBundle mainBundle];
      v30 = v45 = v14;
      v31 = [v30 localizedStringForKey:@"SIM_UNLOCKED" value:&stru_10001CA70 table:@"Localizable"];
      v32 = [v17 contentView];
      sub_100009800(v31, v32);

      v7 = v47;
      v6 = v48;
      v33 = v45;
      v34 = v46;
    }

    else
    {
      v35 = [v6 dequeueReusableCellWithIdentifier:@"SIMUnlockListLockedCellIdentifier"];
      v36 = [(TSSIMUnlockListViewController *)self _nameForSIMWithSubscriptionContext:v7];
      v37 = [v9 actionType];
      if ((v37 - 1) > 3)
      {
        v41 = 0;
      }

      else
      {
        v38 = *(&off_10001C880 + (v37 - 1));
        +[NSBundle mainBundle];
        v40 = v39 = v7;
        v41 = [v40 localizedStringForKey:v38 value:&stru_10001CA70 table:@"Localizable"];

        v7 = v39;
      }

      v34 = v35;
      v16 = v36;
      v18 = v41;
      v17 = v34;
      if (!v34)
      {
        v17 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"SIMUnlockListLockedCellIdentifier"];
      }

      v26 = [v17 defaultContentConfiguration];
      [v26 setText:v16];
      v42 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
      v43 = [v26 textProperties];
      [v43 setFont:v42];

      [v17 setContentConfiguration:v26];
      [v17 setAccessoryType:1];
      v27 = [v17 contentView];
      sub_100009800(v18, v27);
      v33 = v18;
    }

    v8 = v49;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = -[NSMutableArray objectAtIndexedSubscript:](self->_subscriptionContexts, "objectAtIndexedSubscript:", [a4 row]);
  v6 = [v5 uuid];
  v7 = [(NSMutableDictionary *)self->_subscriptionActions objectForKeyedSubscript:v6];
  v8 = [v7 actionType] - 2 < 3;

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = -[NSMutableArray objectAtIndexedSubscript:](self->_subscriptionContexts, "objectAtIndexedSubscript:", [a4 row]);
  v5 = [v10 uuid];
  v6 = [(NSMutableDictionary *)self->_subscriptionActions objectForKeyedSubscript:v5];
  if ([v6 actionType] - 2 <= 2)
  {
    v7 = [(TSSIMUnlockListViewController *)self _nameForSIMWithSubscriptionContext:v10];
    v8 = [[TSSIMUnlockDetailViewController alloc] initWithSubscriptionContext:v10 subscriptionAction:v6 lockedSIMName:v7 delegate:self];
    v9 = [(TSSIMUnlockListViewController *)self navigationController];
    [v9 pushViewController:v8 animated:1];
  }
}

- (void)unlockDetailViewController:(id)a3 didCompleteWithResult:(int64_t)a4
{
  v6 = sub_10000C1BC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10000F22C();
  }

  if (a4 < 4 || a4 == 6)
  {
    v7 = [(TSSIMUnlockListViewController *)self navigationController];
    v8 = [v7 popToViewController:self animated:1];
  }
}

- (void)unlockListFooterViewContinueButtonWasPressed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained unlockListViewControllerDidComplete:self];
}

- (void)_continueButtonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained unlockListViewControllerDidComplete:self];
}

- (void)addSubscriptionContext:(id)a3 withSubscriptionAction:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = sub_10000C1BC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [v8 slotID];
    v15 = CTSubscriptionSlotAsString();
    v16 = sub_1000071C0([v9 actionType]);
    *buf = 136316162;
    v19 = "[TSSIMUnlockListViewController addSubscriptionContext:withSubscriptionAction:atIndex:]";
    v20 = 2080;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    v24 = 2048;
    v25 = a5;
    v26 = 2080;
    v27 = "[TSSIMUnlockListViewController addSubscriptionContext:withSubscriptionAction:atIndex:]";
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[Db] %s: context %s, action %@, index %ld @%s", buf, 0x34u);
  }

  v11 = [v8 uuid];
  [(NSMutableDictionary *)self->_subscriptionActions setObject:v9 forKeyedSubscript:v11];
  [(NSMutableArray *)self->_subscriptionContexts insertObject:v8 atIndex:a5];
  if ([(TSSIMUnlockListViewController *)self isViewLoaded])
  {
    v12 = [NSIndexPath indexPathForRow:a5 inSection:0];
    v13 = [(TSSIMUnlockListViewController *)self tableView];
    v17 = v12;
    v14 = [NSArray arrayWithObjects:&v17 count:1];
    [v13 insertRowsAtIndexPaths:v14 withRowAnimation:100];

    [(TSSIMUnlockListViewController *)self _configureAncillaryViews];
  }
}

- (void)updateSubscriptionContext:(id)a3 withSubscriptionAction:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = sub_10000C1BC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [v8 slotID];
    v15 = CTSubscriptionSlotAsString();
    v16 = sub_1000071C0([v9 actionType]);
    *buf = 136316162;
    v19 = "[TSSIMUnlockListViewController updateSubscriptionContext:withSubscriptionAction:atIndex:]";
    v20 = 2080;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    v24 = 2048;
    v25 = a5;
    v26 = 2080;
    v27 = "[TSSIMUnlockListViewController updateSubscriptionContext:withSubscriptionAction:atIndex:]";
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[Db] %s: context %s, action %@, index %ld @%s", buf, 0x34u);
  }

  v11 = [v8 uuid];
  [(NSMutableDictionary *)self->_subscriptionActions setObject:v9 forKeyedSubscript:v11];
  [(NSMutableArray *)self->_subscriptionContexts replaceObjectAtIndex:a5 withObject:v8];
  if ([(TSSIMUnlockListViewController *)self isViewLoaded])
  {
    v12 = [NSIndexPath indexPathForRow:a5 inSection:0];
    v13 = [(TSSIMUnlockListViewController *)self tableView];
    v17 = v12;
    v14 = [NSArray arrayWithObjects:&v17 count:1];
    [v13 reloadRowsAtIndexPaths:v14 withRowAnimation:100];

    [(TSSIMUnlockListViewController *)self _configureAncillaryViews];
  }
}

- (void)removeSubscriptionContextAtIndex:(unint64_t)a3
{
  v5 = sub_10000C1BC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000F2AC();
  }

  v6 = [(NSMutableArray *)self->_subscriptionContexts objectAtIndexedSubscript:a3];
  v7 = [v6 uuid];
  [(NSMutableDictionary *)self->_subscriptionActions setObject:0 forKeyedSubscript:v7];
  [(NSMutableArray *)self->_subscriptionContexts removeObjectAtIndex:a3];
  if ([(TSSIMUnlockListViewController *)self isViewLoaded])
  {
    v8 = [NSIndexPath indexPathForRow:a3 inSection:0];
    v9 = [(TSSIMUnlockListViewController *)self tableView];
    v11 = v8;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [v9 deleteRowsAtIndexPaths:v10 withRowAnimation:100];

    [(TSSIMUnlockListViewController *)self _configureAncillaryViews];
  }
}

- (void)_configureAncillaryViews
{
  [(TSSIMUnlockListViewController *)self _configureNavigationItem];

  [(TSSIMUnlockListViewController *)self _configureFooterView];
}

- (void)_configureNavigationItem
{
  if (self->_suppressCancellation || (v3 = [(NSMutableArray *)self->_subscriptionContexts count], v3 != [(TSSIMUnlockListViewController *)self _numberOfLockedSubscriptionContexts]))
  {
    cancelButtonItem = self->_cancelButtonItem;
    if (!cancelButtonItem)
    {
      goto LABEL_8;
    }

    self->_cancelButtonItem = 0;
  }

  else
  {
    if (self->_cancelButtonItem)
    {
      goto LABEL_8;
    }

    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonItemPressed:"];
    cancelButtonItem = self->_cancelButtonItem;
    self->_cancelButtonItem = v4;
  }

LABEL_8:
  v6 = [(TSSIMUnlockListViewController *)self navigationItem];
  [v6 setLeftBarButtonItem:self->_cancelButtonItem];

  v9 = +[UIColor systemBackgroundColor];
  v7 = [(TSSIMUnlockListViewController *)self navigationController];
  v8 = [v7 view];
  [v8 setBackgroundColor:v9];
}

- (void)_configureFooterView
{
  v3 = [(TSSIMUnlockListViewController *)self _numberOfLockedSubscriptionContexts];
  v4 = [(TSSIMUnlockListViewController *)self buttonTray];
  [v4 removeAllButtons];

  v5 = [(NSMutableArray *)self->_subscriptionContexts count];
  v6 = [(TSSIMUnlockListViewController *)self buttonTray];
  v8 = v6;
  v7 = &OBJC_IVAR___TSSIMUnlockListViewController__continueButton;
  if (v3 == v5)
  {
    v7 = &OBJC_IVAR___TSSIMUnlockListViewController__skipButton;
  }

  [v6 addButton:*&self->TSOBTableWelcomeController_opaque[*v7]];
}

- (unint64_t)_numberOfLockedSubscriptionContexts
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NSMutableDictionary *)self->_subscriptionActions allValues];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        if (([*(*(&v9 + 1) + 8 * i) actionType] & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          ++v5;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_cancelButtonItemPressed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained unlockListViewControllerDidComplete:self];
}

- (BOOL)_anESIMExistsInSubscriptionContexts
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_subscriptionContexts;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(CoreTelephonyClient *)self->_telephonyClient getSimHardwareInfo:*(*(&v12 + 1) + 8 * i) error:0, v12];
        v9 = [v8 hardwareType];

        if (v9 == 2)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)_doesPhysicalSimExist
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_subscriptionContexts;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(CoreTelephonyClient *)self->_telephonyClient getSimHardwareInfo:*(*(&v12 + 1) + 8 * i) error:0, v12];
        v9 = [v8 hardwareType];

        if (v9 != 2)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)_doTwoEsimsExist
{
  if (!self->_isEsimExist || [(NSMutableDictionary *)self->_subscriptionActions count]< 2)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_subscriptionContexts;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(CoreTelephonyClient *)self->_telephonyClient getSimHardwareInfo:*(*(&v12 + 1) + 8 * i) error:0, v12];
        v10 = [v9 hardwareType];

        if (v10 != 2)
        {
          v3 = 0;
          goto LABEL_14;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v3 = 1;
LABEL_14:

  return v3;
}

- (id)_nameForSIMWithSubscriptionContext:(id)a3
{
  v4 = a3;
  v5 = [(CoreTelephonyClient *)self->_telephonyClient getSimLabel:v4 error:0];
  v6 = [(CoreTelephonyClient *)self->_telephonyClient getSimHardwareInfo:v4 error:0];
  if (v5 && [v5 didSetup])
  {
    v7 = [v5 text];
    v8 = [v7 length] != 0;
  }

  else
  {
    v8 = 0;
  }

  if (!self->_isEsimExist && [(NSMutableArray *)self->_subscriptionContexts count]!= 1)
  {
    v13 = [v6 simLocation];
    if (v13 == 2)
    {
      if (!v8)
      {
        v9 = +[NSBundle mainBundle];
        v10 = v9;
        v11 = @"HARDWARE_SLOT_TWO_NAME";
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    if (v13 != 1)
    {
      goto LABEL_25;
    }

    if (!v8)
    {
      v9 = +[NSBundle mainBundle];
      v10 = v9;
      v11 = @"HARDWARE_SLOT_ONE_NAME";
      goto LABEL_21;
    }

LABEL_27:
    v10 = [v5 text];
    v14 = [NSString stringWithString:v10];
    goto LABEL_28;
  }

  if ([v6 hardwareType] != 2)
  {
    if (v8)
    {
      v12 = [v5 text];
      goto LABEL_29;
    }

    v9 = +[NSBundle mainBundle];
    v10 = v9;
    v11 = @"COMBINATION_SIMS_PHYSICAL_NAME";
    goto LABEL_21;
  }

  if (![(TSSIMUnlockListViewController *)self _doTwoEsimsExist])
  {
    if (!v8)
    {
      v9 = +[NSBundle mainBundle];
      v10 = v9;
      v11 = @"COMBINATION_SIMS_ESIM_NAME";
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  if ([v4 slotID] != 1)
  {
    if ([v4 slotID] == 2)
    {
      if (!v8)
      {
        v9 = +[NSBundle mainBundle];
        v10 = v9;
        v11 = @"COMBINATION_SIMS_ESIM_2_NAME";
        goto LABEL_21;
      }

      goto LABEL_27;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_29;
  }

  if (v8)
  {
    goto LABEL_27;
  }

  v9 = +[NSBundle mainBundle];
  v10 = v9;
  v11 = @"COMBINATION_SIMS_ESIM_1_NAME";
LABEL_21:
  v14 = [v9 localizedStringForKey:v11 value:&stru_10001CA70 table:@"Localizable"];
LABEL_28:
  v12 = v14;

LABEL_29:

  return v12;
}

- (TSSIMUnlockListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end