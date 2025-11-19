@interface CNContactSuggestionViewController
+ (id)viewControllerWithDataSource:(id)a3;
- (BOOL)shouldShowAddRejectActions;
- (BOOL)shouldShowPreview;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)alertMessageForIgnoreContactDetail;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)titleForIgnoreContactDetail;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)addToContact:(id)a3;
- (void)ignore:(id)a3;
- (void)setAction:(id)a3;
- (void)showSource:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updatePreview;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CNContactSuggestionViewController

- (id)alertMessageForIgnoreContactDetail
{
  v3 = CNContactsUIBundle();
  v4 = [v3 localizedStringForKey:@"SUGGESTION_IGNORE_ALERT_CONTROLLER_INFO_DETAIL" value:&stru_1F0CE7398 table:@"Localized"];

  v5 = [(CNContactSuggestionViewController *)self propertyCell];
  v6 = [v5 propertyItem];
  v7 = [v6 group];
  v8 = [v7 property];
  v9 = [v8 isEqualToString:*MEMORY[0x1E695C330]];

  if (v9)
  {
    v10 = @"SUGGESTION_IGNORE_ALERT_CONTROLLER_INFO_DETAIL_PHONE";
  }

  else
  {
    v11 = [(CNContactSuggestionViewController *)self propertyCell];
    v12 = [v11 propertyItem];
    v13 = [v12 group];
    v14 = [v13 property];
    v15 = [v14 isEqualToString:*MEMORY[0x1E695C208]];

    if (v15)
    {
      v10 = @"SUGGESTION_IGNORE_ALERT_CONTROLLER_INFO_DETAIL_EMAIL";
    }

    else
    {
      v16 = [(CNContactSuggestionViewController *)self propertyCell];
      v17 = [v16 propertyItem];
      v18 = [v17 group];
      v19 = [v18 property];
      v20 = [v19 isEqualToString:*MEMORY[0x1E695C360]];

      if (v20)
      {
        v10 = @"SUGGESTION_IGNORE_ALERT_CONTROLLER_INFO_DETAIL_ADDRESS";
      }

      else
      {
        v21 = [(CNContactSuggestionViewController *)self propertyCell];
        v22 = [v21 propertyItem];
        v23 = [v22 group];
        v24 = [v23 property];
        v25 = [v24 isEqualToString:@"birthdays"];

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

  v5 = [(CNContactSuggestionViewController *)self propertyCell];
  v6 = [v5 propertyItem];
  v7 = [v6 group];
  v8 = [v7 property];
  v9 = [v8 isEqualToString:*MEMORY[0x1E695C330]];

  if (v9)
  {
    v10 = @"SUGGESTION_IGNORE_CONTACT_DETAIL_BUTTON_PHONE";
  }

  else
  {
    v11 = [(CNContactSuggestionViewController *)self propertyCell];
    v12 = [v11 propertyItem];
    v13 = [v12 group];
    v14 = [v13 property];
    v15 = [v14 isEqualToString:*MEMORY[0x1E695C208]];

    if (v15)
    {
      v10 = @"SUGGESTION_IGNORE_CONTACT_DETAIL_BUTTON_EMAIL";
    }

    else
    {
      v16 = [(CNContactSuggestionViewController *)self propertyCell];
      v17 = [v16 propertyItem];
      v18 = [v17 group];
      v19 = [v18 property];
      v20 = [v19 isEqualToString:*MEMORY[0x1E695C360]];

      if (v20)
      {
        v10 = @"SUGGESTION_IGNORE_CONTACT_DETAIL_BUTTON_ADDRESS";
      }

      else
      {
        v21 = [(CNContactSuggestionViewController *)self propertyCell];
        v22 = [v21 propertyItem];
        v23 = [v22 group];
        v24 = [v23 property];
        v25 = [v24 isEqualToString:@"birthdays"];

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

- (void)showSource:(id)a3
{
  v3 = [(CNContactSuggestionViewController *)self action];
  [v3 setSelectedChoice:3];
}

- (void)ignore:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CNContactSuggestionViewController *)self titleForIgnoreContactDetail];
  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v7 = [(CNContactSuggestionViewController *)self alertMessageForIgnoreContactDetail];
  [v6 setMessage:v7];

  v8 = MEMORY[0x1E69DC648];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __44__CNContactSuggestionViewController_ignore___block_invoke;
  v17 = &unk_1E74E4B28;
  objc_copyWeak(&v18, &location);
  v9 = [v8 actionWithTitle:v5 style:2 handler:&v14];
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

- (void)addToContact:(id)a3
{
  v3 = [(CNContactSuggestionViewController *)self action];
  [v3 setSelectedChoice:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNContactSuggestionViewController;
  [(CNContactSuggestionViewController *)&v4 viewDidDisappear:a3];
  if (([(CNContactSuggestionViewController *)self isBeingDismissed]& 1) != 0 || [(CNContactSuggestionViewController *)self isMovingFromParentViewController])
  {
    [(CNContactSuggestionViewController *)self setAction:0];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v6 section] || objc_msgSend(v6, "row"))
  {
    if ([v6 section] != 1)
    {
      goto LABEL_10;
    }

    v7 = [(CNContactSuggestionViewController *)self dataSource];
    v8 = [v7 url];

    if (v8)
    {
      [*MEMORY[0x1E69DDA98] openURL:v8 withCompletionHandler:0];
    }
  }

  else
  {
    v8 = [v9 cellForRowAtIndexPath:v6];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 shouldPerformDefaultAction])
    {
      [v8 performDefaultAction];
    }
  }

LABEL_10:
  [v9 deselectRowAtIndexPath:v6 animated:1];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v27 = a4;
  v7 = a5;
  if ([v7 section] || objc_msgSend(v7, "row") != 1)
  {
    if ([v7 section] || objc_msgSend(v7, "row") != 2)
    {
      if ([v7 section] != 1)
      {
        goto LABEL_10;
      }

      [v27 setPreservesSuperviewLayoutMargins:0];
      v21 = [(CNContactSuggestionViewController *)self propertyCell];
      [v21 layoutMargins];
      v23 = v22;
      v24 = [(CNContactSuggestionViewController *)self fromLeadingMargin];
      [v24 setConstant:v23];

      v12 = [(CNContactSuggestionViewController *)self propertyCell];
      [v12 layoutMargins];
      v14 = v25;
      v15 = [(CNContactSuggestionViewController *)self dateTrailingMargin];
    }

    else
    {
      v16 = [(CNContactSuggestionViewController *)self propertyCell];
      [v16 layoutMargins];
      v18 = v17;
      v19 = [(CNContactSuggestionViewController *)self ignoreLeadingMargin];
      [v19 setConstant:v18];

      v12 = [(CNContactSuggestionViewController *)self propertyCell];
      [v12 layoutMargins];
      v14 = v20;
      v15 = [(CNContactSuggestionViewController *)self ignoreTrailingMargin];
    }
  }

  else
  {
    v8 = [(CNContactSuggestionViewController *)self propertyCell];
    [v8 layoutMargins];
    v10 = v9;
    v11 = [(CNContactSuggestionViewController *)self addToContactLeadingMargin];
    [v11 setConstant:v10];

    v12 = [(CNContactSuggestionViewController *)self propertyCell];
    [v12 layoutMargins];
    v14 = v13;
    v15 = [(CNContactSuggestionViewController *)self addToContactTrailingMargin];
  }

  v26 = v15;
  [v15 setConstant:v14];

LABEL_10:
  [v27 _cnui_applyContactStyle];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = a4;
  v5 = ![v4 section] && !objc_msgSend(v4, "row") || objc_msgSend(v4, "section") == 1;

  return v5;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 section] || objc_msgSend(v7, "row")) && objc_msgSend(v7, "section") != 1)
  {
    v11.receiver = self;
    v11.super_class = CNContactSuggestionViewController;
    [(CNContactSuggestionViewController *)&v11 tableView:v6 heightForRowAtIndexPath:v7];
    v8 = v9;
  }

  else
  {
    v8 = *MEMORY[0x1E69DE3D0];
  }

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section] || objc_msgSend(v7, "row"))
  {
    v10.receiver = self;
    v10.super_class = CNContactSuggestionViewController;
    v8 = [(CNContactSuggestionViewController *)&v10 tableView:v6 cellForRowAtIndexPath:v7];
    if ([v7 section] == 1)
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
  v3 = [(CNContactSuggestionViewController *)self action];
  v4 = [v3 propertyItem];
  v5 = [v4 contact];
  if ([v5 isSuggested])
  {
    v6 = [(CNContactSuggestionViewController *)self action];
    v7 = [v6 propertyItem];
    v8 = [v7 contact];
    v9 = [v8 isSuggestedMe];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  if ([(CNContactSuggestionViewController *)self shouldShowAddRejectActions:a3])
  {
    return 3;
  }

  return 1;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 == 1 && (v5 = *MEMORY[0x1E6996568], -[CNContactSuggestionViewController dataSource](self, "dataSource", a3), v6 = objc_claimAutoreleasedReturnValue(), [v6 appName], v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(v5) = (*(v5 + 16))(v5, v7), v7, v6, (v5 & 1) == 0))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"SUGGESTION_RELATED_INFO_FROM_APP" value:&stru_1F0CE7398 table:@"Localized"];
    v12 = [(CNContactSuggestionViewController *)self dataSource];
    v13 = [v12 appName];
    v8 = [v9 stringWithFormat:v11, v13];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updatePreview
{
  v3 = [(CNContactSuggestionViewController *)self dataSource];
  v4 = [v3 formattedSnippet];
  v5 = [(CNContactSuggestionViewController *)self contentLabel];
  [v5 setAttributedText:v4];

  v6 = [(CNContactSuggestionViewController *)self dataSource];
  v7 = [v6 title];
  v8 = [(CNContactSuggestionViewController *)self subjectLabel];
  [v8 setText:v7];

  v9 = [(CNContactSuggestionViewController *)self dataSource];
  v10 = [v9 date];
  v11 = [(CNContactSuggestionViewController *)self dateLabel];
  [v11 setText:v10];

  v14 = [(CNContactSuggestionViewController *)self dataSource];
  v12 = [v14 with];
  v13 = [(CNContactSuggestionViewController *)self withLabel];
  [v13 setText:v12];
}

- (BOOL)shouldShowPreview
{
  v3 = [(CNContactSuggestionViewController *)self dataSource];
  v4 = [v3 type];

  if (v4 == 5)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = *MEMORY[0x1E6996568];
    v7 = [(CNContactSuggestionViewController *)self dataSource];
    v8 = [v7 formattedSnippet];
    v9 = [v8 string];
    if ((*(v6 + 16))(v6, v9))
    {
      v10 = [(CNContactSuggestionViewController *)self dataSource];
      v11 = [v10 title];
      if ((*(v6 + 16))(v6, v11))
      {
        v12 = [(CNContactSuggestionViewController *)self dataSource];
        v13 = [v12 date];
        if ((*(v6 + 16))(v6, v13))
        {
          v16 = [(CNContactSuggestionViewController *)self dataSource];
          [v16 with];
          v14 = v17 = v12;
          v5 = (*(v6 + 16))(v6, v14) ^ 1;

          v12 = v17;
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

- (void)setAction:(id)a3
{
  v5 = a3;
  if (self->_action != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_action, a3);
    v6 = [(CNContactSuggestionViewController *)self tableView];
    [v6 reloadData];

    v5 = v7;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CNContactSuggestionViewController;
  [(CNContactSuggestionViewController *)&v10 viewWillAppear:a3];
  v4 = [(CNContactSuggestionViewController *)self addToContactButton];
  v5 = [v4 titleLabel];
  v6 = [v5 tintColorOverride];
  v7 = [(CNContactSuggestionViewController *)self addToContactButton];
  [v7 setTintColor:v6];

  v8 = [(CNContactSuggestionViewController *)self ignoreButton];
  v9 = [(CNContactSuggestionViewController *)self titleForIgnoreContactDetail];
  [v8 setTitle:v9 forState:0];
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = CNContactSuggestionViewController;
  [(CNContactSuggestionViewController *)&v29 viewDidLoad];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v3 _scaledValueForValue:44.0];
  v5 = v4;
  v6 = [(CNContactSuggestionViewController *)self tableView];
  [v6 setEstimatedRowHeight:v5];

  v7 = CNContactsUIBundle();
  v8 = [v7 localizedStringForKey:@"SUGGESTION_REVIEW_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v9 = [(CNContactSuggestionViewController *)self navigationItem];
  [v9 setTitle:v8];

  v10 = [(CNContactSuggestionViewController *)self contentLabel];
  v11 = [v10 text];
  if ([v11 isNaturallyRTL])
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(CNContactSuggestionViewController *)self contentLabel];
  [v13 setTextAlignment:v12];

  v14 = [(CNContactSuggestionViewController *)self tableView];
  [v14 _cnui_applyContactStyle];

  v15 = [(CNContactSuggestionViewController *)self withLabel];
  [v15 _cnui_applyContactStyle];

  v16 = +[CNContactStyle currentStyle];
  v17 = [v16 textColor];
  v18 = [(CNContactSuggestionViewController *)self withLabel];
  [v18 setTextColor:v17];

  v19 = +[CNContactStyle currentStyle];
  v20 = [v19 suggestedValueTextColor];
  v21 = [(CNContactSuggestionViewController *)self dateLabel];
  [v21 setTextColor:v20];

  v22 = +[CNContactStyle currentStyle];
  v23 = [v22 suggestedValueTextColor];
  v24 = [(CNContactSuggestionViewController *)self subjectLabel];
  [v24 setTextColor:v23];

  v25 = +[CNContactStyle currentStyle];
  v26 = [v25 suggestedValueTextColor];
  v27 = [(CNContactSuggestionViewController *)self contentLabel];
  [v27 setTextColor:v26];

  v28 = [(CNContactSuggestionViewController *)self navigationItem];
  [v28 setLargeTitleDisplayMode:2];
}

+ (id)viewControllerWithDataSource:(id)a3
{
  v3 = MEMORY[0x1E69DCFB8];
  v4 = a3;
  v5 = CNContactsUIBundle();
  v6 = [v3 storyboardWithName:@"Suggestion" bundle:v5];
  v7 = [v6 instantiateInitialViewController];

  [v7 setDataSource:v4];

  return v7;
}

@end