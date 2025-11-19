@interface EKCalendarAccountTableViewController
- (EKCalendar)calendar;
- (EKCalendarAccountTableViewController)initWithCalendar:(id)a3 andStore:(id)a4;
- (EKCalendarAccountTableViewControllerDelegate)delegate;
- (EKEventStore)eventStore;
- (NSMutableArray)accounts;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)loadView;
- (void)resetBackgroundColor;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation EKCalendarAccountTableViewController

- (EKCalendarAccountTableViewController)initWithCalendar:(id)a3 andStore:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = EKCalendarAccountTableViewController;
  v8 = [(EKCalendarAccountTableViewController *)&v16 initWithStyle:2];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_eventStore, v7);
    objc_storeWeak(&v9->_calendar, v6);
    objc_initWeak(&location, v9);
    v17[0] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__EKCalendarAccountTableViewController_initWithCalendar_andStore___block_invoke;
    v13[3] = &unk_1E843EBE8;
    objc_copyWeak(&v14, &location);
    v11 = [(EKCalendarAccountTableViewController *)v9 registerForTraitChanges:v10 withHandler:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __66__EKCalendarAccountTableViewController_initWithCalendar_andStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetBackgroundColor];
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = EKCalendarAccountTableViewController;
  [(EKCalendarAccountTableViewController *)&v6 loadView];
  v3 = EventKitUIBundle();
  v4 = [v3 localizedStringForKey:@"Accounts - Account Picker" value:@"Accounts" table:0];
  [(EKCalendarAccountTableViewController *)self setTitle:v4];

  v5 = [(EKCalendarAccountTableViewController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"EKCalendarAccountCell"];

  [(EKCalendarAccountTableViewController *)self resetBackgroundColor];
}

- (void)resetBackgroundColor
{
  v3 = [(UIViewController *)self isPresentedInsidePopover];
  v5 = [(EKCalendarAccountTableViewController *)self tableView];
  if (v3)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }
  v4 = ;
  [v5 setBackgroundColor:v4];
}

- (NSMutableArray)accounts
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = accounts_accounts;
  if (!accounts_accounts)
  {
    v4 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->_eventStore);
    v6 = [WeakRetained sources];

    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = v7;
    v9 = *v21;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = objc_loadWeakRetained(&self->_calendar);
        v13 = [v12 isSubscribed];

        if (v13)
        {
          if ([v11 isDelegate])
          {
            goto LABEL_15;
          }

          v14 = [v11 constraints];
          if ([v14 supportsSubscribedCalendars])
          {

LABEL_14:
            [v4 addObject:v11];
            goto LABEL_15;
          }

          v15 = [v11 sourceType];

          if (v15 == 4)
          {
            goto LABEL_14;
          }
        }

        else if ([v11 supportsCalendarCreation] && objc_msgSend(v11, "sourceType") != 4 && (objc_msgSend(v11, "isDelegate") & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_15:
        ++v10;
      }

      while (v8 != v10);
      v16 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v8 = v16;
      if (!v16)
      {
LABEL_20:

        v17 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];
        v18 = accounts_accounts;
        accounts_accounts = v17;

        v3 = accounts_accounts;
        break;
      }
    }
  }

  return v3;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(EKCalendarAccountTableViewController *)self accounts:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"EKCalendarAccountCell" forIndexPath:v6];
  v8 = [(EKCalendarAccountTableViewController *)self accounts];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];

  v11 = CalDisplayedTitleForSourceAsCalendarTarget(v10);
  v12 = [v7 textLabel];
  [v12 setText:v11];

  v13 = [(EKCalendarAccountTableViewController *)self currentSourceIdentifier];
  v14 = [v10 sourceIdentifier];
  LODWORD(v12) = [v13 isEqualToString:v14];

  if (v12)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  [v7 setAccessoryType:v15];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(EKCalendarAccountTableViewController *)self accounts];
  v7 = [v5 row];

  v14 = [v6 objectAtIndexedSubscript:v7];

  WeakRetained = objc_loadWeakRetained(&self->_calendar);
  [WeakRetained setSource:v14];

  v9 = objc_loadWeakRetained(&self->_calendar);
  [v9 setDisplayOrder:{objc_msgSend(v14, "displayOrderForNewCalendar")}];

  v10 = [v14 sourceIdentifier];
  [(EKCalendarAccountTableViewController *)self setCurrentSourceIdentifier:v10];

  v11 = [(EKCalendarAccountTableViewController *)self tableView];
  [v11 reloadData];

  v12 = [(EKCalendarAccountTableViewController *)self delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v13 = [(EKCalendarAccountTableViewController *)self delegate];
    [v13 accountTableViewController:self selectedSourceChanged:v14];
  }
}

- (EKCalendarAccountTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (EKEventStore)eventStore
{
  WeakRetained = objc_loadWeakRetained(&self->_eventStore);

  return WeakRetained;
}

- (EKCalendar)calendar
{
  WeakRetained = objc_loadWeakRetained(&self->_calendar);

  return WeakRetained;
}

@end