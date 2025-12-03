@interface EKCalendarAccountEditItem
- (BOOL)calendarEditor:(id)editor shouldSelectSubitem:(unint64_t)subitem;
- (BOOL)canAddCalendarToMoreThanOneAccount;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)currentSource;
- (id)initLimitedToSource:(id)source;
- (void)accountTableViewController:(id)controller selectedSourceChanged:(id)changed;
- (void)calendarEditor:(id)editor didSelectSubitem:(unint64_t)subitem;
@end

@implementation EKCalendarAccountEditItem

- (id)initLimitedToSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = EKCalendarAccountEditItem;
  v6 = [(EKCalendarAccountEditItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_limitedToSource, source);
  }

  return v7;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"EKCalendarAccountEditItem"];
  v5 = EventKitUIBundle();
  v6 = [v5 localizedStringForKey:@"Account" value:&stru_1F4EF6790 table:0];
  textLabel = [v4 textLabel];
  [textLabel setText:v6];

  [v4 setAccessibilityIdentifier:@"calendar-account-cell"];
  currentSource = [(EKCalendarAccountEditItem *)self currentSource];
  v9 = CalDisplayedTitleForSourceAsCalendarTarget(currentSource);
  detailTextLabel = [v4 detailTextLabel];
  [detailTextLabel setText:v9];

  detailTextLabel2 = [v4 detailTextLabel];
  [detailTextLabel2 setAccessibilityIdentifier:@"calendar-current-selected-account"];

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
  delegate = [(EKCalendarEditItem *)self delegate];
  if (![delegate isNewCalendar])
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
  sources = [(EKEventStore *)self->super._store sources];
  v6 = [sources countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(sources);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([(EKCalendar *)self->super._calendar isSubscribed])
        {
          if ([v11 isDelegate])
          {
            continue;
          }

          constraints = [v11 constraints];
          if ([constraints supportsSubscribedCalendars])
          {
          }

          else
          {
            sourceType = [v11 sourceType];

            if (sourceType != 4)
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

      v7 = [sources countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  source = [(EKCalendar *)self->super._calendar source];

  if (!source)
  {
    v4 = [EKCalendarEditor fetchInitialSourceWithLimitedToSource:self->_limitedToSource calendar:self->super._calendar store:self->super._store];
    [(EKCalendar *)self->super._calendar setSource:v4];
    -[EKCalendar setDisplayOrder:](self->super._calendar, "setDisplayOrder:", [v4 displayOrderForNewCalendar]);
  }

  calendar = self->super._calendar;

  return [(EKCalendar *)calendar source];
}

- (BOOL)calendarEditor:(id)editor shouldSelectSubitem:(unint64_t)subitem
{
  v5 = [(EKCalendarAccountEditItem *)self canAddCalendarToMoreThanOneAccount:editor];
  if (v5)
  {

    LOBYTE(v5) = [(EKCalendarAccountEditItem *)self editable];
  }

  return v5;
}

- (void)calendarEditor:(id)editor didSelectSubitem:(unint64_t)subitem
{
  if ([(EKCalendarAccountEditItem *)self canAddCalendarToMoreThanOneAccount:editor])
  {
    v9 = [[EKCalendarAccountTableViewController alloc] initWithCalendar:self->super._calendar andStore:self->super._store];
    [(EKCalendarAccountTableViewController *)v9 setDelegate:self];
    currentSource = [(EKCalendarAccountEditItem *)self currentSource];
    sourceIdentifier = [currentSource sourceIdentifier];
    [(EKCalendarAccountTableViewController *)v9 setCurrentSourceIdentifier:sourceIdentifier];

    delegate = [(EKCalendarEditItem *)self delegate];
    owningNavigationController = [delegate owningNavigationController];
    [owningNavigationController pushViewController:v9 animated:1];
  }
}

- (void)accountTableViewController:(id)controller selectedSourceChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(EKCalendarEditItem *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(EKCalendarEditItem *)self delegate];
    [delegate2 accountEditItem:self selectedSourceChanged:changedCopy];
  }
}

@end