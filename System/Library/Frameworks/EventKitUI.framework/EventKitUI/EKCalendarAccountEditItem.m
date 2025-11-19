@interface EKCalendarAccountEditItem
- (BOOL)calendarEditor:(id)a3 shouldSelectSubitem:(unint64_t)a4;
- (BOOL)canAddCalendarToMoreThanOneAccount;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)currentSource;
- (id)initLimitedToSource:(id)a3;
- (void)accountTableViewController:(id)a3 selectedSourceChanged:(id)a4;
- (void)calendarEditor:(id)a3 didSelectSubitem:(unint64_t)a4;
@end

@implementation EKCalendarAccountEditItem

- (id)initLimitedToSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EKCalendarAccountEditItem;
  v6 = [(EKCalendarAccountEditItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_limitedToSource, a3);
  }

  return v7;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"EKCalendarAccountEditItem"];
  v5 = EventKitUIBundle();
  v6 = [v5 localizedStringForKey:@"Account" value:&stru_1F4EF6790 table:0];
  v7 = [v4 textLabel];
  [v7 setText:v6];

  [v4 setAccessibilityIdentifier:@"calendar-account-cell"];
  v8 = [(EKCalendarAccountEditItem *)self currentSource];
  v9 = CalDisplayedTitleForSourceAsCalendarTarget(v8);
  v10 = [v4 detailTextLabel];
  [v10 setText:v9];

  v11 = [v4 detailTextLabel];
  [v11 setAccessibilityIdentifier:@"calendar-current-selected-account"];

  if ([(EKCalendarAccountEditItem *)self canAddCalendarToMoreThanOneAccount]&& [(EKCalendarAccountEditItem *)self editable])
  {
    [v4 setAccessoryType:1];
  }

  else
  {
    [v4 setSelectionStyle:0];
  }

  return v4;
}

- (BOOL)canAddCalendarToMoreThanOneAccount
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(EKCalendarEditItem *)self delegate];
  if (![v3 isNewCalendar])
  {

    return 0;
  }

  limitedToSource = self->_limitedToSource;

  if (limitedToSource)
  {
    return 0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(EKEventStore *)self->super._store sources];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([(EKCalendar *)self->super._calendar isSubscribed])
        {
          if ([v11 isDelegate])
          {
            continue;
          }

          v12 = [v11 constraints];
          if ([v12 supportsSubscribedCalendars])
          {
          }

          else
          {
            v13 = [v11 sourceType];

            if (v13 != 4)
            {
              continue;
            }
          }

          ++v8;
        }

        else if ([v11 supportsCalendarCreation] && objc_msgSend(v11, "sourceType") != 4)
        {
          v8 += [v11 isDelegate] ^ 1;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (!v7)
      {
        v14 = v8 > 1;
        goto LABEL_24;
      }
    }
  }

  v14 = 0;
LABEL_24:

  return v14;
}

- (id)currentSource
{
  v3 = [(EKCalendar *)self->super._calendar source];

  if (!v3)
  {
    v4 = [EKCalendarEditor fetchInitialSourceWithLimitedToSource:self->_limitedToSource calendar:self->super._calendar store:self->super._store];
    [(EKCalendar *)self->super._calendar setSource:v4];
    -[EKCalendar setDisplayOrder:](self->super._calendar, "setDisplayOrder:", [v4 displayOrderForNewCalendar]);
  }

  calendar = self->super._calendar;

  return [(EKCalendar *)calendar source];
}

- (BOOL)calendarEditor:(id)a3 shouldSelectSubitem:(unint64_t)a4
{
  v5 = [(EKCalendarAccountEditItem *)self canAddCalendarToMoreThanOneAccount:a3];
  if (v5)
  {

    LOBYTE(v5) = [(EKCalendarAccountEditItem *)self editable];
  }

  return v5;
}

- (void)calendarEditor:(id)a3 didSelectSubitem:(unint64_t)a4
{
  if ([(EKCalendarAccountEditItem *)self canAddCalendarToMoreThanOneAccount:a3])
  {
    v9 = [[EKCalendarAccountTableViewController alloc] initWithCalendar:self->super._calendar andStore:self->super._store];
    [(EKCalendarAccountTableViewController *)v9 setDelegate:self];
    v5 = [(EKCalendarAccountEditItem *)self currentSource];
    v6 = [v5 sourceIdentifier];
    [(EKCalendarAccountTableViewController *)v9 setCurrentSourceIdentifier:v6];

    v7 = [(EKCalendarEditItem *)self delegate];
    v8 = [v7 owningNavigationController];
    [v8 pushViewController:v9 animated:1];
  }
}

- (void)accountTableViewController:(id)a3 selectedSourceChanged:(id)a4
{
  v8 = a4;
  v5 = [(EKCalendarEditItem *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(EKCalendarEditItem *)self delegate];
    [v7 accountEditItem:self selectedSourceChanged:v8];
  }
}

@end