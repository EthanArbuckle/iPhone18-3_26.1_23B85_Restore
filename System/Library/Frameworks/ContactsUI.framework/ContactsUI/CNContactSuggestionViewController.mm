@interface CNContactSuggestionViewController
+ (id)viewControllerWithDataSource:(id)source;
- (BOOL)shouldShowAddRejectActions;
- (BOOL)shouldShowPreview;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)alertMessageForIgnoreContactDetail;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)titleForIgnoreContactDetail;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)addToContact:(id)contact;
- (void)ignore:(id)ignore;
- (void)setAction:(id)action;
- (void)showSource:(id)source;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updatePreview;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CNContactSuggestionViewController

- (id)alertMessageForIgnoreContactDetail
{
  v3 = CNContactsUIBundle();
  v4 = [v3 localizedStringForKey:@"SUGGESTION_IGNORE_ALERT_CONTROLLER_INFO_DETAIL" value:&stru_1F0CE7398 table:@"Localized"];

  propertyCell = [(CNContactSuggestionViewController *)self propertyCell];
  propertyItem = [propertyCell propertyItem];
  group = [propertyItem group];
  property = [group property];
  v9 = [property isEqualToString:*MEMORY[0x1E695C330]];

  if (v9)
  {
    v10 = @"SUGGESTION_IGNORE_ALERT_CONTROLLER_INFO_DETAIL_PHONE";
  }

  else
  {
    propertyCell2 = [(CNContactSuggestionViewController *)self propertyCell];
    propertyItem2 = [propertyCell2 propertyItem];
    group2 = [propertyItem2 group];
    property2 = [group2 property];
    v15 = [property2 isEqualToString:*MEMORY[0x1E695C208]];

    if (v15)
    {
      v10 = @"SUGGESTION_IGNORE_ALERT_CONTROLLER_INFO_DETAIL_EMAIL";
    }

    else
    {
      propertyCell3 = [(CNContactSuggestionViewController *)self propertyCell];
      propertyItem3 = [propertyCell3 propertyItem];
      group3 = [propertyItem3 group];
      property3 = [group3 property];
      v20 = [property3 isEqualToString:*MEMORY[0x1E695C360]];

      if (v20)
      {
        v10 = @"SUGGESTION_IGNORE_ALERT_CONTROLLER_INFO_DETAIL_ADDRESS";
      }

      else
      {
        propertyCell4 = [(CNContactSuggestionViewController *)self propertyCell];
        propertyItem4 = [propertyCell4 propertyItem];
        group4 = [propertyItem4 group];
        property4 = [group4 property];
        v25 = [property4 isEqualToString:@"birthdays"];

        if (!v25)
        {
          goto LABEL_10;
        }

        v10 = @"SUGGESTION_IGNORE_ALERT_CONTROLLER_INFO_DETAIL_BIRTHDAY";
      }
    }
  }

  v26 = CNContactsUIBundle();
  v27 = [v26 localizedStringForKey:v10 value:&stru_1F0CE7398 table:@"Localized"];

  v4 = v27;
LABEL_10:

  return v4;
}

- (id)titleForIgnoreContactDetail
{
  v3 = CNContactsUIBundle();
  v4 = [v3 localizedStringForKey:@"SUGGESTION_IGNORE_CONTACT_DETAIL_BUTTON_DETAIL" value:&stru_1F0CE7398 table:@"Localized"];

  propertyCell = [(CNContactSuggestionViewController *)self propertyCell];
  propertyItem = [propertyCell propertyItem];
  group = [propertyItem group];
  property = [group property];
  v9 = [property isEqualToString:*MEMORY[0x1E695C330]];

  if (v9)
  {
    v10 = @"SUGGESTION_IGNORE_CONTACT_DETAIL_BUTTON_PHONE";
  }

  else
  {
    propertyCell2 = [(CNContactSuggestionViewController *)self propertyCell];
    propertyItem2 = [propertyCell2 propertyItem];
    group2 = [propertyItem2 group];
    property2 = [group2 property];
    v15 = [property2 isEqualToString:*MEMORY[0x1E695C208]];

    if (v15)
    {
      v10 = @"SUGGESTION_IGNORE_CONTACT_DETAIL_BUTTON_EMAIL";
    }

    else
    {
      propertyCell3 = [(CNContactSuggestionViewController *)self propertyCell];
      propertyItem3 = [propertyCell3 propertyItem];
      group3 = [propertyItem3 group];
      property3 = [group3 property];
      v20 = [property3 isEqualToString:*MEMORY[0x1E695C360]];

      if (v20)
      {
        v10 = @"SUGGESTION_IGNORE_CONTACT_DETAIL_BUTTON_ADDRESS";
      }

      else
      {
        propertyCell4 = [(CNContactSuggestionViewController *)self propertyCell];
        propertyItem4 = [propertyCell4 propertyItem];
        group4 = [propertyItem4 group];
        property4 = [group4 property];
        v25 = [property4 isEqualToString:@"birthdays"];

        if (!v25)
        {
          goto LABEL_10;
        }

        v10 = @"SUGGESTION_IGNORE_CONTACT_DETAIL_BUTTON_BIRTHDAY";
      }
    }
  }

  v26 = CNContactsUIBundle();
  v27 = [v26 localizedStringForKey:v10 value:&stru_1F0CE7398 table:@"Localized"];

  v4 = v27;
LABEL_10:

  return v4;
}

- (void)showSource:(id)source
{
  action = [(CNContactSuggestionViewController *)self action];
  [action setSelectedChoice:3];
}

- (void)ignore:(id)ignore
{
  ignoreCopy = ignore;
  objc_initWeak(&location, self);
  titleForIgnoreContactDetail = [(CNContactSuggestionViewController *)self titleForIgnoreContactDetail];
  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  alertMessageForIgnoreContactDetail = [(CNContactSuggestionViewController *)self alertMessageForIgnoreContactDetail];
  [v6 setMessage:alertMessageForIgnoreContactDetail];

  v8 = MEMORY[0x1E69DC648];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __44__CNContactSuggestionViewController_ignore___block_invoke;
  v17 = &unk_1E74E4B28;
  objc_copyWeak(&v18, &location);
  v9 = [v8 actionWithTitle:titleForIgnoreContactDetail style:2 handler:&v14];
  [v6 addAction:{v9, v14, v15, v16, v17}];

  v10 = MEMORY[0x1E69DC648];
  v11 = CNContactsUIBundle();
  v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v13 = [v10 actionWithTitle:v12 style:1 handler:0];
  [v6 addAction:v13];

  [(CNContactSuggestionViewController *)self presentViewController:v6 animated:1 completion:0];
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

void __44__CNContactSuggestionViewController_ignore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained action];
  [v1 setSelectedChoice:2];
}

- (void)addToContact:(id)contact
{
  action = [(CNContactSuggestionViewController *)self action];
  [action setSelectedChoice:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CNContactSuggestionViewController;
  [(CNContactSuggestionViewController *)&v4 viewDidDisappear:disappear];
  if (([(CNContactSuggestionViewController *)self isBeingDismissed]& 1) != 0 || [(CNContactSuggestionViewController *)self isMovingFromParentViewController])
  {
    [(CNContactSuggestionViewController *)self setAction:0];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] || objc_msgSend(pathCopy, "row"))
  {
    if ([pathCopy section] != 1)
    {
      goto LABEL_10;
    }

    dataSource = [(CNContactSuggestionViewController *)self dataSource];
    v8 = [dataSource url];

    if (v8)
    {
      [*MEMORY[0x1E69DDA98] openURL:v8 withCompletionHandler:0];
    }
  }

  else
  {
    v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 shouldPerformDefaultAction])
    {
      [v8 performDefaultAction];
    }
  }

LABEL_10:
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if ([pathCopy section] || objc_msgSend(pathCopy, "row") != 1)
  {
    if ([pathCopy section] || objc_msgSend(pathCopy, "row") != 2)
    {
      if ([pathCopy section] != 1)
      {
        goto LABEL_10;
      }

      [cellCopy setPreservesSuperviewLayoutMargins:0];
      propertyCell = [(CNContactSuggestionViewController *)self propertyCell];
      [propertyCell layoutMargins];
      v23 = v22;
      fromLeadingMargin = [(CNContactSuggestionViewController *)self fromLeadingMargin];
      [fromLeadingMargin setConstant:v23];

      propertyCell2 = [(CNContactSuggestionViewController *)self propertyCell];
      [propertyCell2 layoutMargins];
      v14 = v25;
      dateTrailingMargin = [(CNContactSuggestionViewController *)self dateTrailingMargin];
    }

    else
    {
      propertyCell3 = [(CNContactSuggestionViewController *)self propertyCell];
      [propertyCell3 layoutMargins];
      v18 = v17;
      ignoreLeadingMargin = [(CNContactSuggestionViewController *)self ignoreLeadingMargin];
      [ignoreLeadingMargin setConstant:v18];

      propertyCell2 = [(CNContactSuggestionViewController *)self propertyCell];
      [propertyCell2 layoutMargins];
      v14 = v20;
      dateTrailingMargin = [(CNContactSuggestionViewController *)self ignoreTrailingMargin];
    }
  }

  else
  {
    propertyCell4 = [(CNContactSuggestionViewController *)self propertyCell];
    [propertyCell4 layoutMargins];
    v10 = v9;
    addToContactLeadingMargin = [(CNContactSuggestionViewController *)self addToContactLeadingMargin];
    [addToContactLeadingMargin setConstant:v10];

    propertyCell2 = [(CNContactSuggestionViewController *)self propertyCell];
    [propertyCell2 layoutMargins];
    v14 = v13;
    dateTrailingMargin = [(CNContactSuggestionViewController *)self addToContactTrailingMargin];
  }

  v26 = dateTrailingMargin;
  [dateTrailingMargin setConstant:v14];

LABEL_10:
  [cellCopy _cnui_applyContactStyle];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = ![pathCopy section] && !objc_msgSend(pathCopy, "row") || objc_msgSend(pathCopy, "section") == 1;

  return v5;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (([pathCopy section] || objc_msgSend(pathCopy, "row")) && objc_msgSend(pathCopy, "section") != 1)
  {
    v11.receiver = self;
    v11.super_class = CNContactSuggestionViewController;
    [(CNContactSuggestionViewController *)&v11 tableView:viewCopy heightForRowAtIndexPath:pathCopy];
    v8 = v9;
  }

  else
  {
    v8 = *MEMORY[0x1E69DE3D0];
  }

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] || objc_msgSend(pathCopy, "row"))
  {
    v10.receiver = self;
    v10.super_class = CNContactSuggestionViewController;
    v8 = [(CNContactSuggestionViewController *)&v10 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
    if ([pathCopy section] == 1)
    {
      [(CNContactSuggestionViewController *)self updatePreview];
    }

    [(UITableViewCell *)v8 _cnui_applyContactStyle];
  }

  else
  {
    v8 = self->_propertyCell;
  }

  return v8;
}

- (BOOL)shouldShowAddRejectActions
{
  action = [(CNContactSuggestionViewController *)self action];
  propertyItem = [action propertyItem];
  contact = [propertyItem contact];
  if ([contact isSuggested])
  {
    action2 = [(CNContactSuggestionViewController *)self action];
    propertyItem2 = [action2 propertyItem];
    contact2 = [propertyItem2 contact];
    isSuggestedMe = [contact2 isSuggestedMe];
  }

  else
  {
    isSuggestedMe = 1;
  }

  return isSuggestedMe;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 1;
  }

  if ([(CNContactSuggestionViewController *)self shouldShowAddRejectActions:view])
  {
    return 3;
  }

  return 1;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(CNContactSuggestionViewController *)self shouldShowPreview])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section == 1 && (v5 = *MEMORY[0x1E6996568], -[CNContactSuggestionViewController dataSource](self, "dataSource", view), v6 = objc_claimAutoreleasedReturnValue(), [v6 appName], v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(v5) = (*(v5 + 16))(v5, v7), v7, v6, (v5 & 1) == 0))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"SUGGESTION_RELATED_INFO_FROM_APP" value:&stru_1F0CE7398 table:@"Localized"];
    dataSource = [(CNContactSuggestionViewController *)self dataSource];
    appName = [dataSource appName];
    v8 = [v9 stringWithFormat:v11, appName];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updatePreview
{
  dataSource = [(CNContactSuggestionViewController *)self dataSource];
  formattedSnippet = [dataSource formattedSnippet];
  contentLabel = [(CNContactSuggestionViewController *)self contentLabel];
  [contentLabel setAttributedText:formattedSnippet];

  dataSource2 = [(CNContactSuggestionViewController *)self dataSource];
  title = [dataSource2 title];
  subjectLabel = [(CNContactSuggestionViewController *)self subjectLabel];
  [subjectLabel setText:title];

  dataSource3 = [(CNContactSuggestionViewController *)self dataSource];
  date = [dataSource3 date];
  dateLabel = [(CNContactSuggestionViewController *)self dateLabel];
  [dateLabel setText:date];

  dataSource4 = [(CNContactSuggestionViewController *)self dataSource];
  with = [dataSource4 with];
  withLabel = [(CNContactSuggestionViewController *)self withLabel];
  [withLabel setText:with];
}

- (BOOL)shouldShowPreview
{
  dataSource = [(CNContactSuggestionViewController *)self dataSource];
  type = [dataSource type];

  if (type == 5)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = *MEMORY[0x1E6996568];
    dataSource2 = [(CNContactSuggestionViewController *)self dataSource];
    formattedSnippet = [dataSource2 formattedSnippet];
    string = [formattedSnippet string];
    if ((*(v6 + 16))(v6, string))
    {
      dataSource3 = [(CNContactSuggestionViewController *)self dataSource];
      title = [dataSource3 title];
      if ((*(v6 + 16))(v6, title))
      {
        dataSource4 = [(CNContactSuggestionViewController *)self dataSource];
        date = [dataSource4 date];
        if ((*(v6 + 16))(v6, date))
        {
          dataSource5 = [(CNContactSuggestionViewController *)self dataSource];
          [dataSource5 with];
          v14 = v17 = dataSource4;
          v5 = (*(v6 + 16))(v6, v14) ^ 1;

          dataSource4 = v17;
        }

        else
        {
          LOBYTE(v5) = 1;
        }
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)setAction:(id)action
{
  actionCopy = action;
  if (self->_action != actionCopy)
  {
    v7 = actionCopy;
    objc_storeStrong(&self->_action, action);
    tableView = [(CNContactSuggestionViewController *)self tableView];
    [tableView reloadData];

    actionCopy = v7;
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = CNContactSuggestionViewController;
  [(CNContactSuggestionViewController *)&v10 viewWillAppear:appear];
  addToContactButton = [(CNContactSuggestionViewController *)self addToContactButton];
  titleLabel = [addToContactButton titleLabel];
  tintColorOverride = [titleLabel tintColorOverride];
  addToContactButton2 = [(CNContactSuggestionViewController *)self addToContactButton];
  [addToContactButton2 setTintColor:tintColorOverride];

  ignoreButton = [(CNContactSuggestionViewController *)self ignoreButton];
  titleForIgnoreContactDetail = [(CNContactSuggestionViewController *)self titleForIgnoreContactDetail];
  [ignoreButton setTitle:titleForIgnoreContactDetail forState:0];
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = CNContactSuggestionViewController;
  [(CNContactSuggestionViewController *)&v29 viewDidLoad];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v3 _scaledValueForValue:44.0];
  v5 = v4;
  tableView = [(CNContactSuggestionViewController *)self tableView];
  [tableView setEstimatedRowHeight:v5];

  v7 = CNContactsUIBundle();
  v8 = [v7 localizedStringForKey:@"SUGGESTION_REVIEW_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  navigationItem = [(CNContactSuggestionViewController *)self navigationItem];
  [navigationItem setTitle:v8];

  contentLabel = [(CNContactSuggestionViewController *)self contentLabel];
  text = [contentLabel text];
  if ([text isNaturallyRTL])
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  contentLabel2 = [(CNContactSuggestionViewController *)self contentLabel];
  [contentLabel2 setTextAlignment:v12];

  tableView2 = [(CNContactSuggestionViewController *)self tableView];
  [tableView2 _cnui_applyContactStyle];

  withLabel = [(CNContactSuggestionViewController *)self withLabel];
  [withLabel _cnui_applyContactStyle];

  v16 = +[CNContactStyle currentStyle];
  textColor = [v16 textColor];
  withLabel2 = [(CNContactSuggestionViewController *)self withLabel];
  [withLabel2 setTextColor:textColor];

  v19 = +[CNContactStyle currentStyle];
  suggestedValueTextColor = [v19 suggestedValueTextColor];
  dateLabel = [(CNContactSuggestionViewController *)self dateLabel];
  [dateLabel setTextColor:suggestedValueTextColor];

  v22 = +[CNContactStyle currentStyle];
  suggestedValueTextColor2 = [v22 suggestedValueTextColor];
  subjectLabel = [(CNContactSuggestionViewController *)self subjectLabel];
  [subjectLabel setTextColor:suggestedValueTextColor2];

  v25 = +[CNContactStyle currentStyle];
  suggestedValueTextColor3 = [v25 suggestedValueTextColor];
  contentLabel3 = [(CNContactSuggestionViewController *)self contentLabel];
  [contentLabel3 setTextColor:suggestedValueTextColor3];

  navigationItem2 = [(CNContactSuggestionViewController *)self navigationItem];
  [navigationItem2 setLargeTitleDisplayMode:2];
}

+ (id)viewControllerWithDataSource:(id)source
{
  v3 = MEMORY[0x1E69DCFB8];
  sourceCopy = source;
  v5 = CNContactsUIBundle();
  v6 = [v3 storyboardWithName:@"Suggestion" bundle:v5];
  instantiateInitialViewController = [v6 instantiateInitialViewController];

  [instantiateInitialViewController setDataSource:sourceCopy];

  return instantiateInitialViewController;
}

@end