@interface EKCalendarAccountTableViewController
- (EKCalendar)calendar;
- (EKCalendarAccountTableViewController)initWithCalendar:(id)calendar andStore:(id)store;
- (EKCalendarAccountTableViewControllerDelegate)delegate;
- (EKEventStore)eventStore;
- (NSMutableArray)accounts;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)loadView;
- (void)resetBackgroundColor;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation EKCalendarAccountTableViewController

- (EKCalendarAccountTableViewController)initWithCalendar:(id)calendar andStore:(id)store
{
  v17[1] = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  storeCopy = store;
  v16.receiver = self;
  v16.super_class = EKCalendarAccountTableViewController;
  v8 = [(EKCalendarAccountTableViewController *)&v16 initWithStyle:2];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_eventStore, storeCopy);
    objc_storeWeak(&v9->_calendar, calendarCopy);
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

  tableView = [(EKCalendarAccountTableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"EKCalendarAccountCell"];

  [(EKCalendarAccountTableViewController *)self resetBackgroundColor];
}

- (void)resetBackgroundColor
{
  isPresentedInsidePopover = [(UIViewController *)self isPresentedInsidePopover];
  tableView = [(EKCalendarAccountTableViewController *)self tableView];
  if (isPresentedInsidePopover)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }
  v4 = ;
  [tableView setBackgroundColor:v4];
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
    sources = [WeakRetained sources];

    v7 = [sources countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(sources);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = objc_loadWeakRetained(&self->_calendar);
        isSubscribed = [v12 isSubscribed];

        if (isSubscribed)
        {
          if ([v11 isDelegate])
          {
            goto LABEL_15;
          }

          constraints = [v11 constraints];
          if ([constraints supportsSubscribedCalendars])
          {

LABEL_14:
            [v4 addObject:v11];
            goto LABEL_15;
          }

          sourceType = [v11 sourceType];

          if (sourceType == 4)
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
      v16 = [sources countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(EKCalendarAccountTableViewController *)self accounts:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"EKCalendarAccountCell" forIndexPath:pathCopy];
  accounts = [(EKCalendarAccountTableViewController *)self accounts];
  v9 = [pathCopy row];

  v10 = [accounts objectAtIndexedSubscript:v9];

  v11 = CalDisplayedTitleForSourceAsCalendarTarget(v10);
  textLabel = [v7 textLabel];
  [textLabel setText:v11];

  currentSourceIdentifier = [(EKCalendarAccountTableViewController *)self currentSourceIdentifier];
  sourceIdentifier = [v10 sourceIdentifier];
  LODWORD(textLabel) = [currentSourceIdentifier isEqualToString:sourceIdentifier];

  if (textLabel)
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  accounts = [(EKCalendarAccountTableViewController *)self accounts];
  v7 = [pathCopy row];

  v14 = [accounts objectAtIndexedSubscript:v7];

  WeakRetained = objc_loadWeakRetained(&self->_calendar);
  [WeakRetained setSource:v14];

  v9 = objc_loadWeakRetained(&self->_calendar);
  [v9 setDisplayOrder:{objc_msgSend(v14, "displayOrderForNewCalendar")}];

  sourceIdentifier = [v14 sourceIdentifier];
  [(EKCalendarAccountTableViewController *)self setCurrentSourceIdentifier:sourceIdentifier];

  tableView = [(EKCalendarAccountTableViewController *)self tableView];
  [tableView reloadData];

  delegate = [(EKCalendarAccountTableViewController *)self delegate];
  LOBYTE(accounts) = objc_opt_respondsToSelector();

  if (accounts)
  {
    delegate2 = [(EKCalendarAccountTableViewController *)self delegate];
    [delegate2 accountTableViewController:self selectedSourceChanged:v14];
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