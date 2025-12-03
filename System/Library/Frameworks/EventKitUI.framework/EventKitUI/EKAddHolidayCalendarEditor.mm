@interface EKAddHolidayCalendarEditor
- (BOOL)_alreadySubscribedToCalendar:(id)calendar;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (CGSize)calculatePreferredContentSize;
- (EKAddHolidayCalendarEditor)initWithCalendar:(id)calendar eventStore:(id)store entityType:(unint64_t)type limitedToSource:(id)source;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_beginLoadingHolidayCalendars;
- (void)_displayCalendarListScreen;
- (void)_displayErrorScreen;
- (void)_displayLoadingScreen;
- (void)_holidayCalendarsLoadCompletedWithCalendarData:(id)data;
- (void)_populatedAlreadySubscribedCalendarURLs;
- (void)calendarEditor:(id)editor didCompleteWithAction:(int)action;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation EKAddHolidayCalendarEditor

- (EKAddHolidayCalendarEditor)initWithCalendar:(id)calendar eventStore:(id)store entityType:(unint64_t)type limitedToSource:(id)source
{
  sourceCopy = source;
  v16.receiver = self;
  v16.super_class = EKAddHolidayCalendarEditor;
  v12 = [(EKAbstractCalendarEditor *)&v16 initWithCalendar:calendar eventStore:store entityType:type limitedToSource:sourceCopy];
  if (v12)
  {
    v13 = EventKitUIBundle();
    v14 = [v13 localizedStringForKey:@"Add Holiday Calendar - calendar list" value:@"Add Holiday Calendar" table:0];
    [(EKAddHolidayCalendarEditor *)v12 setTitle:v14];

    objc_storeStrong(&v12->_limitedToSource, source);
    v12->_entityType = type;
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

- (void)_holidayCalendarsLoadCompletedWithCalendarData:(id)data
{
  dataCopy = data;
  objc_storeStrong(&self->_calendarData, data);
  filteredCalendarData = self->_filteredCalendarData;
  self->_filteredCalendarData = dataCopy;
  v7 = dataCopy;

  v8 = [(NSArray *)self->_calendarData count];
  if (v8)
  {
    tableView = [(EKAddHolidayCalendarEditor *)self tableView];
    [tableView reloadData];

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
  eventStore = [(EKAbstractCalendarEditor *)self eventStore];
  v4 = [eventStore calendarsForEntityType:self->_entityType];

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
          source = [*(*(&v20 + 1) + 8 * i) source];
          v12 = [source isEqual:self->_limitedToSource];

          if (!v12)
          {
            continue;
          }

          if (self->_limitedToSource)
          {
            goto LABEL_18;
          }
        }

        source2 = [v10 source];
        isDelegate = [source2 isDelegate];

        if ((isDelegate & 1) == 0)
        {
LABEL_18:
          if ([v10 isSubscribed])
          {
            subcalURL = [v10 subcalURL];
            v16 = [subcalURL length];

            if (v16)
            {
              subcalURL2 = [v10 subcalURL];
              [(NSSet *)v19 addObject:subcalURL2];
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
  view = [(EKAddHolidayCalendarEditor *)self view];
  [view addSubview:self->_standbyScreen];

  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  standbyMessageLabel = self->_standbyMessageLabel;
  self->_standbyMessageLabel = v7;

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_standbyMessageLabel setTextColor:labelColor];

  [(UILabel *)self->_standbyMessageLabel setTextAlignment:1];
  [(UILabel *)self->_standbyMessageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_standbyMessageLabel setNumberOfLines:0];
  [(UILabel *)self->_standbyMessageLabel setHidden:1];
  [(UIView *)self->_standbyScreen addSubview:self->_standbyMessageLabel];
  v10 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
  spinner = self->_spinner;
  self->_spinner = v10;

  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  [(UIActivityIndicatorView *)self->_spinner setColor:labelColor2];

  [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)self->_spinner sizeToFit];
  [(UIView *)self->_standbyScreen addSubview:self->_spinner];
  array = [MEMORY[0x1E695DF70] array];
  v14 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_standbyMessageLabel attribute:9 relatedBy:0 toItem:self->_standbyScreen attribute:9 multiplier:1.0 constant:0.0];
  [array addObject:v14];

  v15 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_standbyMessageLabel attribute:11 relatedBy:0 toItem:self->_standbyScreen attribute:10 multiplier:1.0 constant:0.0];
  [array addObject:v15];

  v16 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_standbyMessageLabel attribute:5 relatedBy:1 toItem:self->_standbyScreen attribute:17 multiplier:1.0 constant:0.0];
  [array addObject:v16];

  v17 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_standbyMessageLabel attribute:6 relatedBy:-1 toItem:self->_standbyScreen attribute:18 multiplier:1.0 constant:0.0];
  [array addObject:v17];

  v18 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_spinner attribute:9 relatedBy:0 toItem:self->_standbyScreen attribute:9 multiplier:1.0 constant:0.0];
  [array addObject:v18];

  v19 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_spinner attribute:4 relatedBy:0 toItem:self->_standbyScreen attribute:10 multiplier:1.0 constant:0.0];
  [array addObject:v19];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
  tableView = [(EKAddHolidayCalendarEditor *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"_HolidayCalendarCellReuseIdentifier"];

  v21 = *MEMORY[0x1E69DE3D0];
  tableView2 = [(EKAddHolidayCalendarEditor *)self tableView];
  [tableView2 setEstimatedRowHeight:v21];

  tableView3 = [(EKAddHolidayCalendarEditor *)self tableView];
  [tableView3 setRowHeight:v21];

  [(EKAddHolidayCalendarEditor *)self _displayLoadingScreen];
  [(EKAddHolidayCalendarEditor *)self _beginLoadingHolidayCalendars];
  v24 = objc_alloc_init(MEMORY[0x1E69DCF10]);
  searchController = self->_searchController;
  self->_searchController = v24;

  [(UISearchController *)self->_searchController setSearchResultsUpdater:self];
  searchBar = [(UISearchController *)self->_searchController searchBar];
  [searchBar sizeToFit];

  searchBar2 = [(UISearchController *)self->_searchController searchBar];
  searchField = [searchBar2 searchField];
  [searchField setAccessibilityIdentifier:@"holiday-calendar-search-field"];

  v29 = self->_searchController;
  navigationItem = [(EKAddHolidayCalendarEditor *)self navigationItem];
  [navigationItem setSearchController:v29];

  navigationItem2 = [(EKAddHolidayCalendarEditor *)self navigationItem];
  [navigationItem2 setHidesSearchBarWhenScrolling:0];
}

- (void)viewWillLayoutSubviews
{
  v24.receiver = self;
  v24.super_class = EKAddHolidayCalendarEditor;
  [(EKAddHolidayCalendarEditor *)&v24 viewWillLayoutSubviews];
  view = [(EKAddHolidayCalendarEditor *)self view];
  [view safeAreaInsets];
  v5 = v4;

  view2 = [(EKAddHolidayCalendarEditor *)self view];
  [view2 safeAreaInsets];
  v8 = v7;

  view3 = [(EKAddHolidayCalendarEditor *)self view];
  [view3 layoutMargins];
  v11 = v10;
  view4 = [(EKAddHolidayCalendarEditor *)self view];
  [view4 bounds];
  v14 = v13;
  view5 = [(EKAddHolidayCalendarEditor *)self view];
  [view5 layoutMargins];
  v17 = v14 - v16;
  view6 = [(EKAddHolidayCalendarEditor *)self view];
  [view6 layoutMargins];
  v20 = v17 - v19;
  view7 = [(EKAddHolidayCalendarEditor *)self view];
  [view7 bounds];
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

- (BOOL)_alreadySubscribedToCalendar:(id)calendar
{
  alreadySubscribedCalendarURLStrings = self->_alreadySubscribedCalendarURLStrings;
  v4 = [calendar URL];
  absoluteString = [v4 absoluteString];
  LOBYTE(alreadySubscribedCalendarURLStrings) = [(NSSet *)alreadySubscribedCalendarURLStrings containsObject:absoluteString];

  return alreadySubscribedCalendarURLStrings;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  filteredCalendarData = self->_filteredCalendarData;
  pathCopy = path;
  viewCopy = view;
  v9 = -[NSArray objectAtIndex:](filteredCalendarData, "objectAtIndex:", [pathCopy row]);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:@"_HolidayCalendarCellReuseIdentifier" forIndexPath:pathCopy];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  if ([(EKAddHolidayCalendarEditor *)self _alreadySubscribedToCalendar:v9])
  {
    [v10 setAccessoryType:3];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];

    tertiaryLabelColor2 = [MEMORY[0x1E69DC888] tertiaryLabelColor];

    labelColor = tertiaryLabelColor;
    secondaryLabelColor = tertiaryLabelColor2;
  }

  else
  {
    [v10 setAccessoryType:0];
  }

  v15 = MEMORY[0x1E696AEC0];
  localizedDescription = [v9 localizedDescription];
  v17 = [v15 stringWithFormat:@"holiday-calendar-cell:%@", localizedDescription];
  [v10 setAccessibilityIdentifier:v17];

  localizedDescription2 = [v9 localizedDescription];
  textLabel = [v10 textLabel];
  [textLabel setText:localizedDescription2];

  textLabel2 = [v10 textLabel];
  [textLabel2 setTextColor:labelColor];

  textLabel3 = [v10 textLabel];
  [textLabel3 setNumberOfLines:0];

  v22 = MEMORY[0x1E696AEC0];
  localizedDescription3 = [v9 localizedDescription];
  v24 = [v22 stringWithFormat:@"holiday-calendar:%@", localizedDescription3];
  textLabel4 = [v10 textLabel];
  [textLabel4 setAccessibilityIdentifier:v24];

  descriptionInLocaleLanguage = [v9 descriptionInLocaleLanguage];
  detailTextLabel = [v10 detailTextLabel];
  [detailTextLabel setText:descriptionInLocaleLanguage];

  detailTextLabel2 = [v10 detailTextLabel];
  [detailTextLabel2 setTextColor:secondaryLabelColor];

  detailTextLabel3 = [v10 detailTextLabel];
  [detailTextLabel3 setNumberOfLines:0];

  return v10;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  selfCopy = self;
  v5 = -[NSArray objectAtIndex:](self->_filteredCalendarData, "objectAtIndex:", [path row]);
  LOBYTE(selfCopy) = [(EKAddHolidayCalendarEditor *)selfCopy _alreadySubscribedToCalendar:v5];

  return selfCopy ^ 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  obj = -[NSArray objectAtIndex:](self->_filteredCalendarData, "objectAtIndex:", [path row]);
  if (![(EKAddHolidayCalendarEditor *)self _alreadySubscribedToCalendar:?])
  {
    objc_storeStrong(&self->_selectedCalendarDatum, obj);
    navigationItem = [(EKAddHolidayCalendarEditor *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:1];

    v7 = [EKSubscribedCalendarEditor alloc];
    eventStore = [(EKAbstractCalendarEditor *)self eventStore];
    v9 = [(EKSubscribedCalendarEditor *)v7 initWithCalendar:0 eventStore:eventStore entityType:self->_entityType limitedToSource:self->_limitedToSource];

    subscriptionEditor = self->_subscriptionEditor;
    self->_subscriptionEditor = v9;
    v11 = v9;

    v12 = [obj URL];
    [(EKSubscribedCalendarEditor *)v11 setPrefillURL:v12];

    [(EKAbstractCalendarEditor *)v11 setDelegate:self];
    v13 = EventKitUIBundle();
    v14 = [v13 localizedStringForKey:@"Holidays (%@)" value:&stru_1F4EF6790 table:0];

    v15 = MEMORY[0x1E696AEC0];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    locale = [obj locale];
    countryCode = [locale countryCode];
    v19 = [currentLocale localizedStringForCountryCode:countryCode];
    v20 = [v15 stringWithFormat:v14, v19];

    [(EKSubscribedCalendarEditor *)v11 setHolidayCalendarModeWithTitle:v20];
    navigationController = [(EKAddHolidayCalendarEditor *)self navigationController];
    [navigationController pushViewController:v11 animated:1];

    v22 = EventKitUIBundle();
    v23 = [v22 localizedStringForKey:@"Add Holiday Calendar - calendar preview" value:@"Add Holiday Calendar" table:0];
    [(EKSubscribedCalendarEditor *)v11 setTitle:v23];
  }
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  v4 = [view cellForRowAtIndexPath:path];
  [v4 setHighlighted:0];
}

- (void)calendarEditor:(id)editor didCompleteWithAction:(int)action
{
  v17[4] = *MEMORY[0x1E69E9840];
  editorCopy = editor;
  if (self->_subscriptionEditor == editorCopy)
  {
    if (action)
    {
      if ((action & 0xFFFFFFFD) == 1)
      {
        v16[0] = @"url";
        v7 = [(CUIKSubscribedHolidayCalendar *)self->_selectedCalendarDatum URL];
        absoluteString = [v7 absoluteString];
        v17[0] = absoluteString;
        v16[1] = @"locale";
        locale = [(CUIKSubscribedHolidayCalendar *)self->_selectedCalendarDatum locale];
        localeIdentifier = [locale localeIdentifier];
        v17[1] = localeIdentifier;
        v16[2] = @"languageCode";
        languageCode = [(CUIKSubscribedHolidayCalendar *)self->_selectedCalendarDatum languageCode];
        v17[2] = languageCode;
        v16[3] = @"countryCode";
        countryCode = [(CUIKSubscribedHolidayCalendar *)self->_selectedCalendarDatum countryCode];
        v17[3] = countryCode;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
        CalAnalyticsSendEvent();

        [(EKAbstractCalendarEditor *)self done:0];
      }
    }

    else
    {
      navigationController = [(EKAddHolidayCalendarEditor *)self navigationController];
      v15 = [navigationController popViewControllerAnimated:1];
    }
  }
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  v22 = *MEMORY[0x1E69E9840];
  searchBar = [controller searchBar];
  text = [searchBar text];

  if ([text length])
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
          localizedDescription = [v12 localizedDescription];
          v14 = [localizedDescription localizedStandardContainsString:text];

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

  tableView = [(EKAddHolidayCalendarEditor *)self tableView];
  [tableView reloadData];
}

@end