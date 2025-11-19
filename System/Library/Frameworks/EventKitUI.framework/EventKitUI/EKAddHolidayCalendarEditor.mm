@interface EKAddHolidayCalendarEditor
- (BOOL)_alreadySubscribedToCalendar:(id)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (CGSize)calculatePreferredContentSize;
- (EKAddHolidayCalendarEditor)initWithCalendar:(id)a3 eventStore:(id)a4 entityType:(unint64_t)a5 limitedToSource:(id)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_beginLoadingHolidayCalendars;
- (void)_displayCalendarListScreen;
- (void)_displayErrorScreen;
- (void)_displayLoadingScreen;
- (void)_holidayCalendarsLoadCompletedWithCalendarData:(id)a3;
- (void)_populatedAlreadySubscribedCalendarURLs;
- (void)calendarEditor:(id)a3 didCompleteWithAction:(int)a4;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation EKAddHolidayCalendarEditor

- (EKAddHolidayCalendarEditor)initWithCalendar:(id)a3 eventStore:(id)a4 entityType:(unint64_t)a5 limitedToSource:(id)a6
{
  v11 = a6;
  v16.receiver = self;
  v16.super_class = EKAddHolidayCalendarEditor;
  v12 = [(EKAbstractCalendarEditor *)&v16 initWithCalendar:a3 eventStore:a4 entityType:a5 limitedToSource:v11];
  if (v12)
  {
    v13 = EventKitUIBundle();
    v14 = [v13 localizedStringForKey:@"Add Holiday Calendar - calendar list" value:@"Add Holiday Calendar" table:0];
    [(EKAddHolidayCalendarEditor *)v12 setTitle:v14];

    objc_storeStrong(&v12->_limitedToSource, a6);
    v12->_entityType = a5;
  }

  return v12;
}

- (void)_beginLoadingHolidayCalendars
{
  [(EKAddHolidayCalendarEditor *)self _populatedAlreadySubscribedCalendarURLs];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__EKAddHolidayCalendarEditor__beginLoadingHolidayCalendars__block_invoke;
  v3[3] = &unk_1E8442688;
  v3[4] = self;
  [MEMORY[0x1E6993498] fetchAvailableHolidayCalendarsWithCompletion:v3 queue:MEMORY[0x1E69E96A0]];
}

- (void)_holidayCalendarsLoadCompletedWithCalendarData:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_calendarData, a3);
  filteredCalendarData = self->_filteredCalendarData;
  self->_filteredCalendarData = v5;
  v7 = v5;

  v8 = [(NSArray *)self->_calendarData count];
  if (v8)
  {
    v9 = [(EKAddHolidayCalendarEditor *)self tableView];
    [v9 reloadData];

    [(EKAddHolidayCalendarEditor *)self _displayCalendarListScreen];
  }

  else
  {

    [(EKAddHolidayCalendarEditor *)self _holidayCalendarsLoadFailed];
  }
}

- (void)_populatedAlreadySubscribedCalendarURLs
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(EKAbstractCalendarEditor *)self eventStore];
  v4 = [v3 calendarsForEntityType:self->_entityType];

  v19 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if (self->_limitedToSource)
        {
          v11 = [*(*(&v20 + 1) + 8 * i) source];
          v12 = [v11 isEqual:self->_limitedToSource];

          if (!v12)
          {
            continue;
          }

          if (self->_limitedToSource)
          {
            goto LABEL_18;
          }
        }

        v13 = [v10 source];
        v14 = [v13 isDelegate];

        if ((v14 & 1) == 0)
        {
LABEL_18:
          if ([v10 isSubscribed])
          {
            v15 = [v10 subcalURL];
            v16 = [v15 length];

            if (v16)
            {
              v17 = [v10 subcalURL];
              [(NSSet *)v19 addObject:v17];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  alreadySubscribedCalendarURLStrings = self->_alreadySubscribedCalendarURLStrings;
  self->_alreadySubscribedCalendarURLStrings = v19;
}

- (void)_displayLoadingScreen
{
  [(UIView *)self->_standbyScreen setHidden:0];
  [(UILabel *)self->_standbyMessageLabel setHidden:1];
  [(UIActivityIndicatorView *)self->_spinner setHidden:0];
  spinner = self->_spinner;

  [(UIActivityIndicatorView *)spinner startAnimating];
}

- (void)_displayErrorScreen
{
  [(UIView *)self->_standbyScreen setHidden:0];
  v3 = EventKitUIBundle();
  v4 = [v3 localizedStringForKey:@"Unable to load available holiday calendars" value:&stru_1F4EF6790 table:0];
  [(UILabel *)self->_standbyMessageLabel setText:v4];

  [(UILabel *)self->_standbyMessageLabel sizeToFit];
  [(UILabel *)self->_standbyMessageLabel setHidden:0];
  [(UIActivityIndicatorView *)self->_spinner setHidden:1];
  spinner = self->_spinner;

  [(UIActivityIndicatorView *)spinner stopAnimating];
}

- (void)_displayCalendarListScreen
{
  [(UIView *)self->_standbyScreen setHidden:1];
  [(UIActivityIndicatorView *)self->_spinner setHidden:1];
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];

  [(EKAbstractCalendarEditor *)self updatePreferredContentSize];
}

- (void)viewDidLoad
{
  v32.receiver = self;
  v32.super_class = EKAddHolidayCalendarEditor;
  [(EKAbstractCalendarEditor *)&v32 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  standbyScreen = self->_standbyScreen;
  self->_standbyScreen = v4;

  [(UIView *)self->_standbyScreen setAutoresizingMask:18];
  v6 = [(EKAddHolidayCalendarEditor *)self view];
  [v6 addSubview:self->_standbyScreen];

  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  standbyMessageLabel = self->_standbyMessageLabel;
  self->_standbyMessageLabel = v7;

  v9 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_standbyMessageLabel setTextColor:v9];

  [(UILabel *)self->_standbyMessageLabel setTextAlignment:1];
  [(UILabel *)self->_standbyMessageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_standbyMessageLabel setNumberOfLines:0];
  [(UILabel *)self->_standbyMessageLabel setHidden:1];
  [(UIView *)self->_standbyScreen addSubview:self->_standbyMessageLabel];
  v10 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
  spinner = self->_spinner;
  self->_spinner = v10;

  v12 = [MEMORY[0x1E69DC888] labelColor];
  [(UIActivityIndicatorView *)self->_spinner setColor:v12];

  [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)self->_spinner sizeToFit];
  [(UIView *)self->_standbyScreen addSubview:self->_spinner];
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_standbyMessageLabel attribute:9 relatedBy:0 toItem:self->_standbyScreen attribute:9 multiplier:1.0 constant:0.0];
  [v13 addObject:v14];

  v15 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_standbyMessageLabel attribute:11 relatedBy:0 toItem:self->_standbyScreen attribute:10 multiplier:1.0 constant:0.0];
  [v13 addObject:v15];

  v16 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_standbyMessageLabel attribute:5 relatedBy:1 toItem:self->_standbyScreen attribute:17 multiplier:1.0 constant:0.0];
  [v13 addObject:v16];

  v17 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_standbyMessageLabel attribute:6 relatedBy:-1 toItem:self->_standbyScreen attribute:18 multiplier:1.0 constant:0.0];
  [v13 addObject:v17];

  v18 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_spinner attribute:9 relatedBy:0 toItem:self->_standbyScreen attribute:9 multiplier:1.0 constant:0.0];
  [v13 addObject:v18];

  v19 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_spinner attribute:4 relatedBy:0 toItem:self->_standbyScreen attribute:10 multiplier:1.0 constant:0.0];
  [v13 addObject:v19];

  [MEMORY[0x1E696ACD8] activateConstraints:v13];
  v20 = [(EKAddHolidayCalendarEditor *)self tableView];
  [v20 registerClass:objc_opt_class() forCellReuseIdentifier:@"_HolidayCalendarCellReuseIdentifier"];

  v21 = *MEMORY[0x1E69DE3D0];
  v22 = [(EKAddHolidayCalendarEditor *)self tableView];
  [v22 setEstimatedRowHeight:v21];

  v23 = [(EKAddHolidayCalendarEditor *)self tableView];
  [v23 setRowHeight:v21];

  [(EKAddHolidayCalendarEditor *)self _displayLoadingScreen];
  [(EKAddHolidayCalendarEditor *)self _beginLoadingHolidayCalendars];
  v24 = objc_alloc_init(MEMORY[0x1E69DCF10]);
  searchController = self->_searchController;
  self->_searchController = v24;

  [(UISearchController *)self->_searchController setSearchResultsUpdater:self];
  v26 = [(UISearchController *)self->_searchController searchBar];
  [v26 sizeToFit];

  v27 = [(UISearchController *)self->_searchController searchBar];
  v28 = [v27 searchField];
  [v28 setAccessibilityIdentifier:@"holiday-calendar-search-field"];

  v29 = self->_searchController;
  v30 = [(EKAddHolidayCalendarEditor *)self navigationItem];
  [v30 setSearchController:v29];

  v31 = [(EKAddHolidayCalendarEditor *)self navigationItem];
  [v31 setHidesSearchBarWhenScrolling:0];
}

- (void)viewWillLayoutSubviews
{
  v24.receiver = self;
  v24.super_class = EKAddHolidayCalendarEditor;
  [(EKAddHolidayCalendarEditor *)&v24 viewWillLayoutSubviews];
  v3 = [(EKAddHolidayCalendarEditor *)self view];
  [v3 safeAreaInsets];
  v5 = v4;

  v6 = [(EKAddHolidayCalendarEditor *)self view];
  [v6 safeAreaInsets];
  v8 = v7;

  v9 = [(EKAddHolidayCalendarEditor *)self view];
  [v9 layoutMargins];
  v11 = v10;
  v12 = [(EKAddHolidayCalendarEditor *)self view];
  [v12 bounds];
  v14 = v13;
  v15 = [(EKAddHolidayCalendarEditor *)self view];
  [v15 layoutMargins];
  v17 = v14 - v16;
  v18 = [(EKAddHolidayCalendarEditor *)self view];
  [v18 layoutMargins];
  v20 = v17 - v19;
  v21 = [(EKAddHolidayCalendarEditor *)self view];
  [v21 bounds];
  v23 = v22 - v5 - v8;

  [(UIView *)self->_standbyScreen setFrame:v11, 0.0, v20, v23];
}

- (CGSize)calculatePreferredContentSize
{
  v5.receiver = self;
  v5.super_class = EKAddHolidayCalendarEditor;
  [(EKAbstractCalendarEditor *)&v5 calculatePreferredContentSize];
  v4 = fmax(v3, 400.0);
  result.height = v4;
  result.width = v2;
  return result;
}

- (BOOL)_alreadySubscribedToCalendar:(id)a3
{
  alreadySubscribedCalendarURLStrings = self->_alreadySubscribedCalendarURLStrings;
  v4 = [a3 URL];
  v5 = [v4 absoluteString];
  LOBYTE(alreadySubscribedCalendarURLStrings) = [(NSSet *)alreadySubscribedCalendarURLStrings containsObject:v5];

  return alreadySubscribedCalendarURLStrings;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  filteredCalendarData = self->_filteredCalendarData;
  v7 = a4;
  v8 = a3;
  v9 = -[NSArray objectAtIndex:](filteredCalendarData, "objectAtIndex:", [v7 row]);
  v10 = [v8 dequeueReusableCellWithIdentifier:@"_HolidayCalendarCellReuseIdentifier" forIndexPath:v7];

  v11 = [MEMORY[0x1E69DC888] labelColor];
  v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  if ([(EKAddHolidayCalendarEditor *)self _alreadySubscribedToCalendar:v9])
  {
    [v10 setAccessoryType:3];
    v13 = [MEMORY[0x1E69DC888] tertiaryLabelColor];

    v14 = [MEMORY[0x1E69DC888] tertiaryLabelColor];

    v11 = v13;
    v12 = v14;
  }

  else
  {
    [v10 setAccessoryType:0];
  }

  v15 = MEMORY[0x1E696AEC0];
  v16 = [v9 localizedDescription];
  v17 = [v15 stringWithFormat:@"holiday-calendar-cell:%@", v16];
  [v10 setAccessibilityIdentifier:v17];

  v18 = [v9 localizedDescription];
  v19 = [v10 textLabel];
  [v19 setText:v18];

  v20 = [v10 textLabel];
  [v20 setTextColor:v11];

  v21 = [v10 textLabel];
  [v21 setNumberOfLines:0];

  v22 = MEMORY[0x1E696AEC0];
  v23 = [v9 localizedDescription];
  v24 = [v22 stringWithFormat:@"holiday-calendar:%@", v23];
  v25 = [v10 textLabel];
  [v25 setAccessibilityIdentifier:v24];

  v26 = [v9 descriptionInLocaleLanguage];
  v27 = [v10 detailTextLabel];
  [v27 setText:v26];

  v28 = [v10 detailTextLabel];
  [v28 setTextColor:v12];

  v29 = [v10 detailTextLabel];
  [v29 setNumberOfLines:0];

  return v10;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = self;
  v5 = -[NSArray objectAtIndex:](self->_filteredCalendarData, "objectAtIndex:", [a4 row]);
  LOBYTE(v4) = [(EKAddHolidayCalendarEditor *)v4 _alreadySubscribedToCalendar:v5];

  return v4 ^ 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  obj = -[NSArray objectAtIndex:](self->_filteredCalendarData, "objectAtIndex:", [a4 row]);
  if (![(EKAddHolidayCalendarEditor *)self _alreadySubscribedToCalendar:?])
  {
    objc_storeStrong(&self->_selectedCalendarDatum, obj);
    v5 = [(EKAddHolidayCalendarEditor *)self navigationItem];
    v6 = [v5 rightBarButtonItem];
    [v6 setEnabled:1];

    v7 = [EKSubscribedCalendarEditor alloc];
    v8 = [(EKAbstractCalendarEditor *)self eventStore];
    v9 = [(EKSubscribedCalendarEditor *)v7 initWithCalendar:0 eventStore:v8 entityType:self->_entityType limitedToSource:self->_limitedToSource];

    subscriptionEditor = self->_subscriptionEditor;
    self->_subscriptionEditor = v9;
    v11 = v9;

    v12 = [obj URL];
    [(EKSubscribedCalendarEditor *)v11 setPrefillURL:v12];

    [(EKAbstractCalendarEditor *)v11 setDelegate:self];
    v13 = EventKitUIBundle();
    v14 = [v13 localizedStringForKey:@"Holidays (%@)" value:&stru_1F4EF6790 table:0];

    v15 = MEMORY[0x1E696AEC0];
    v16 = [MEMORY[0x1E695DF58] currentLocale];
    v17 = [obj locale];
    v18 = [v17 countryCode];
    v19 = [v16 localizedStringForCountryCode:v18];
    v20 = [v15 stringWithFormat:v14, v19];

    [(EKSubscribedCalendarEditor *)v11 setHolidayCalendarModeWithTitle:v20];
    v21 = [(EKAddHolidayCalendarEditor *)self navigationController];
    [v21 pushViewController:v11 animated:1];

    v22 = EventKitUIBundle();
    v23 = [v22 localizedStringForKey:@"Add Holiday Calendar - calendar preview" value:@"Add Holiday Calendar" table:0];
    [(EKSubscribedCalendarEditor *)v11 setTitle:v23];
  }
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v4 = [a3 cellForRowAtIndexPath:a4];
  [v4 setHighlighted:0];
}

- (void)calendarEditor:(id)a3 didCompleteWithAction:(int)a4
{
  v17[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_subscriptionEditor == v6)
  {
    if (a4)
    {
      if ((a4 & 0xFFFFFFFD) == 1)
      {
        v16[0] = @"url";
        v7 = [(CUIKSubscribedHolidayCalendar *)self->_selectedCalendarDatum URL];
        v8 = [v7 absoluteString];
        v17[0] = v8;
        v16[1] = @"locale";
        v9 = [(CUIKSubscribedHolidayCalendar *)self->_selectedCalendarDatum locale];
        v10 = [v9 localeIdentifier];
        v17[1] = v10;
        v16[2] = @"languageCode";
        v11 = [(CUIKSubscribedHolidayCalendar *)self->_selectedCalendarDatum languageCode];
        v17[2] = v11;
        v16[3] = @"countryCode";
        v12 = [(CUIKSubscribedHolidayCalendar *)self->_selectedCalendarDatum countryCode];
        v17[3] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
        CalAnalyticsSendEvent();

        [(EKAbstractCalendarEditor *)self done:0];
      }
    }

    else
    {
      v14 = [(EKAddHolidayCalendarEditor *)self navigationController];
      v15 = [v14 popViewControllerAnimated:1];
    }
  }
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [a3 searchBar];
  v5 = [v4 text];

  if ([v5 length])
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_calendarData, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_calendarData;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 localizedDescription];
          v14 = [v13 localizedStandardContainsString:v5];

          if (v14)
          {
            [(NSArray *)v6 addObject:v12];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    filteredCalendarData = self->_filteredCalendarData;
    self->_filteredCalendarData = v6;
  }

  else
  {
    objc_storeStrong(&self->_filteredCalendarData, self->_calendarData);
  }

  v16 = [(EKAddHolidayCalendarEditor *)self tableView];
  [v16 reloadData];
}

@end