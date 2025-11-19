@interface _UIFontPickerSearchContentViewController
- (_UIFontPickerViewControllerHost)delegate;
- (id)contentUnavailableConfigurationState;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
- (void)_filterResultsForSearchTerm:(id)a3;
- (void)_setConfiguration:(id)a3;
- (void)_setResultFonts:(id)a3;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateContentUnavailableConfigurationUsingState:(id)a3;
@end

@implementation _UIFontPickerSearchContentViewController

- (void)loadView
{
  v21.receiver = self;
  v21.super_class = _UIFontPickerSearchContentViewController;
  [(_UIFontPickerSearchContentViewController *)&v21 loadView];
  v3 = [(_UIFontPickerSearchContentViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"UIFontPickerCell"];

  v4 = [(_UIFontPickerSearchContentViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"UIFontPickerFooter"];

  v5 = [(_UIFontPickerSearchContentViewController *)self tableView];
  [v5 setSeparatorInsetReference:1];

  v6 = [(_UIFontPickerSearchContentViewController *)self tableView];
  [v6 setKeyboardDismissMode:1];

  v7 = [(_UIFontPickerSearchContentViewController *)self tableView];
  [v7 setSectionFooterHeight:UITableViewAutomaticDimension];

  v8 = [(_UIFontPickerSearchContentViewController *)self tableView];
  [v8 setRowHeight:UITableViewAutomaticDimension];

  v9 = [(_UIFontPickerSearchContentViewController *)self tableView];
  [v9 setEstimatedRowHeight:50.0];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"FONT_PICKER_SETTINGS_LINK_FORMAT" value:@"Manage and find more fonts in Settings. %@" table:@"Localizable"];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"FONT_PICKER_SETTINGS_LINK" value:@"Open Fonts…" table:@"Localizable"];
  v14 = [NSString localizedStringWithFormat:v11, v13];

  v15 = [[NSMutableAttributedString alloc] initWithString:v14];
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"FONT_PICKER_SETTINGS_LINK" value:@"Open Fonts…" table:@"Localizable"];
  v18 = [v14 rangeOfString:v17];
  [(NSAttributedString *)v15 addAttribute:NSLinkAttributeName value:@"settings-navigation://com.apple.Settings.General/FONT_SETTING" range:v18, v19];

  footerText = self->_footerText;
  self->_footerText = v15;
}

- (void)_setResultFonts:(id)a3
{
  objc_storeStrong(&self->_fonts, a3);
  v4 = [(_UIFontPickerSearchContentViewController *)self tableView];
  [v4 reloadData];

  [(_UIFontPickerSearchContentViewController *)self setNeedsUpdateContentUnavailableConfiguration];
}

- (void)_filterResultsForSearchTerm:(id)a3
{
  v9 = a3;
  v4 = objc_opt_new();
  if ([(NSArray *)self->_fonts count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSArray *)self->_fonts objectAtIndexedSubscript:v5];
      if ([v6 matchesSearchString:v9])
      {
        [(NSArray *)v4 addObject:v6];
      }

      ++v5;
    }

    while (v5 < [(NSArray *)self->_fonts count]);
  }

  fonts = self->_fonts;
  self->_fonts = v4;

  v8 = [(_UIFontPickerSearchContentViewController *)self tableView];
  [v8 reloadData];

  [(_UIFontPickerSearchContentViewController *)self setNeedsUpdateContentUnavailableConfiguration];
}

- (void)_setConfiguration:(id)a3
{
  objc_storeStrong(&self->_configuration, a3);
  v5 = a3;
  [(_UIFontPickerSearchContentViewController *)self _setResultFonts:self->_fonts];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"UIFontPickerCell"];
  if (!v7)
  {
    v7 = [[_UIFontPickerTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"UIFontPickerCell"];
  }

  v8 = -[NSArray objectAtIndexedSubscript:](self->_fonts, "objectAtIndexedSubscript:", [v6 row]);
  v10 = sub_100074080(v9);
  v12 = *(v11 + 488);
  v13 = [(UIFontPickerViewControllerConfiguration *)self->_configuration _clientFontContextEndpoint];
  v14 = [v12 sharedInstanceForEndpoint:v13];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100070568;
  v21[3] = &unk_100098D60;
  v15 = v7;
  v22 = v15;
  v16 = v8;
  v23 = v16;
  v24 = self;
  [v14 runBlockInClientFontContext:v21];
  if ([(UIFontPickerViewControllerConfiguration *)self->_configuration includeFaces]&& ([(UIFontPickerViewControllerConfiguration *)self->_configuration _filterFamilyName], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
  {
    v18 = [v16 hasMultipleFaces];
  }

  else
  {
    v18 = 0;
  }

  [(_UIFontPickerTableViewCell *)v15 setAccessoryType:v18];
  v19 = v15;

  return v15;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:0];
  fonts = self->_fonts;
  v8 = [v6 row];

  v11 = [(NSArray *)fonts objectAtIndexedSubscript:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [v11 fontDescriptor];
  [WeakRetained _pickerDidSelectFont:v10];
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 dequeueReusableHeaderFooterViewWithIdentifier:@"UIFontPickerFooter"];
  if (!v6)
  {
    v6 = [[UITableViewHeaderFooterView alloc] initWithReuseIdentifier:@"UIFontPickerFooter"];
  }

  if (!self->_footerTextView)
  {
    v7 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    footerTextView = self->_footerTextView;
    self->_footerTextView = v7;

    [(UITextView *)self->_footerTextView setDelegate:self];
    [(UITextView *)self->_footerTextView setScrollEnabled:0];
    [(UITextView *)self->_footerTextView setEditable:0];
    [(UITextView *)self->_footerTextView setSelectable:1];
    [(UITextView *)self->_footerTextView setDataDetectorTypes:2];
    v9 = [(UITextView *)self->_footerTextView textContainer];
    [v9 setLineFragmentPadding:0.0];

    [(UITextView *)self->_footerTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v6 contentView];
    [v10 addSubview:self->_footerTextView];

    v50 = [v6 contentView];
    v49 = [v50 safeAreaLayoutGuide];
    v48 = [v49 leadingAnchor];
    v47 = [(UITextView *)self->_footerTextView leadingAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v51[0] = v46;
    v45 = [v6 contentView];
    v44 = [v45 safeAreaLayoutGuide];
    v43 = [v44 trailingAnchor];
    v42 = [(UITextView *)self->_footerTextView trailingAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v51[1] = v41;
    v40 = [v6 contentView];
    v39 = [v40 safeAreaLayoutGuide];
    v38 = [v39 topAnchor];
    v37 = [(UITextView *)self->_footerTextView topAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v51[2] = v36;
    v11 = [v6 contentView];
    v12 = [v11 safeAreaLayoutGuide];
    v13 = [v12 bottomAnchor];
    [(UITextView *)self->_footerTextView bottomAnchor];
    v15 = v14 = v5;
    v16 = [v13 constraintEqualToAnchor:v15];
    v51[3] = v16;
    v17 = [NSArray arrayWithObjects:v51 count:4];
    [NSLayoutConstraint activateConstraints:v17];

    v5 = v14;
    v18 = +[UIColor clearColor];
    [(UITextView *)self->_footerTextView setBackgroundColor:v18];
  }

  v19 = [v6 defaultContentConfiguration];
  v20 = [v6 configurationState];
  v21 = [v19 updatedConfigurationForState:v20];

  v22 = [(NSAttributedString *)self->_footerText mutableCopy];
  v23 = [v21 textProperties];
  v24 = [v23 font];
  [v22 addAttribute:NSFontAttributeName value:v24 range:{0, objc_msgSend(v22, "length")}];

  v25 = [v21 textProperties];
  v26 = [v25 color];
  [v22 addAttribute:NSForegroundColorAttributeName value:v26 range:{0, objc_msgSend(v22, "length")}];

  [(UITextView *)self->_footerTextView setAttributedText:v22];
  [v21 directionalLayoutMargins];
  v28 = v27;
  [v5 layoutMargins];
  v30 = v29;
  [v21 directionalLayoutMargins];
  v32 = v31;
  [v5 layoutMargins];
  v34 = v33;

  [(UITextView *)self->_footerTextView setTextContainerInset:v28, v30, v32, v34];

  return v6;
}

- (void)updateContentUnavailableConfigurationUsingState:(id)a3
{
  if ([(NSArray *)self->_fonts count])
  {
    v4 = 0;
  }

  else
  {
    v13 = +[UIContentUnavailableConfiguration searchConfiguration];
    v5 = +[UIButtonConfiguration plainButtonConfiguration];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"FONT_PICKER_SETTINGS_LINK_SHORT" value:@"Manage Fonts" table:@"Localizable"];
    [v5 setTitle:v7];

    [v13 setSecondaryButton:v5];
    v8 = [UIAction actionWithHandler:&stru_100098F30];
    v9 = [v13 secondaryButtonProperties];
    [v9 setPrimaryAction:v8];

    v10 = +[UIBackgroundConfiguration clearConfiguration];
    v11 = [(_UIFontPickerSearchContentViewController *)self tableView];
    v12 = [v11 backgroundColor];
    [v10 setBackgroundColor:v12];

    [v13 setBackground:v10];
    v4 = v13;
  }

  v14 = v4;
  [(_UIFontPickerSearchContentViewController *)self setContentUnavailableConfiguration:v4];
}

- (id)contentUnavailableConfigurationState
{
  v6.receiver = self;
  v6.super_class = _UIFontPickerSearchContentViewController;
  v3 = [(_UIFontPickerSearchContentViewController *)&v6 contentUnavailableConfigurationState];
  v4 = [(_UIFontPickerSearchContentViewController *)self searchTerm];
  [v3 setSearchText:v4];

  return v3;
}

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  if (![a4 contentType])
  {
    sub_10006C3C0();
  }

  return 0;
}

- (_UIFontPickerViewControllerHost)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end