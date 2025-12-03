@interface _UIFontPickerSearchContentViewController
- (_UIFontPickerViewControllerHost)delegate;
- (id)contentUnavailableConfigurationState;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)_filterResultsForSearchTerm:(id)term;
- (void)_setConfiguration:(id)configuration;
- (void)_setResultFonts:(id)fonts;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateContentUnavailableConfigurationUsingState:(id)state;
@end

@implementation _UIFontPickerSearchContentViewController

- (void)loadView
{
  v21.receiver = self;
  v21.super_class = _UIFontPickerSearchContentViewController;
  [(_UIFontPickerSearchContentViewController *)&v21 loadView];
  tableView = [(_UIFontPickerSearchContentViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"UIFontPickerCell"];

  tableView2 = [(_UIFontPickerSearchContentViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"UIFontPickerFooter"];

  tableView3 = [(_UIFontPickerSearchContentViewController *)self tableView];
  [tableView3 setSeparatorInsetReference:1];

  tableView4 = [(_UIFontPickerSearchContentViewController *)self tableView];
  [tableView4 setKeyboardDismissMode:1];

  tableView5 = [(_UIFontPickerSearchContentViewController *)self tableView];
  [tableView5 setSectionFooterHeight:UITableViewAutomaticDimension];

  tableView6 = [(_UIFontPickerSearchContentViewController *)self tableView];
  [tableView6 setRowHeight:UITableViewAutomaticDimension];

  tableView7 = [(_UIFontPickerSearchContentViewController *)self tableView];
  [tableView7 setEstimatedRowHeight:50.0];

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

- (void)_setResultFonts:(id)fonts
{
  objc_storeStrong(&self->_fonts, fonts);
  tableView = [(_UIFontPickerSearchContentViewController *)self tableView];
  [tableView reloadData];

  [(_UIFontPickerSearchContentViewController *)self setNeedsUpdateContentUnavailableConfiguration];
}

- (void)_filterResultsForSearchTerm:(id)term
{
  termCopy = term;
  v4 = objc_opt_new();
  if ([(NSArray *)self->_fonts count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSArray *)self->_fonts objectAtIndexedSubscript:v5];
      if ([v6 matchesSearchString:termCopy])
      {
        [(NSArray *)v4 addObject:v6];
      }

      ++v5;
    }

    while (v5 < [(NSArray *)self->_fonts count]);
  }

  fonts = self->_fonts;
  self->_fonts = v4;

  tableView = [(_UIFontPickerSearchContentViewController *)self tableView];
  [tableView reloadData];

  [(_UIFontPickerSearchContentViewController *)self setNeedsUpdateContentUnavailableConfiguration];
}

- (void)_setConfiguration:(id)configuration
{
  objc_storeStrong(&self->_configuration, configuration);
  configurationCopy = configuration;
  [(_UIFontPickerSearchContentViewController *)self _setResultFonts:self->_fonts];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"UIFontPickerCell"];
  if (!v7)
  {
    v7 = [[_UIFontPickerTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"UIFontPickerCell"];
  }

  v8 = -[NSArray objectAtIndexedSubscript:](self->_fonts, "objectAtIndexedSubscript:", [pathCopy row]);
  v10 = sub_100074080(v9);
  v12 = *(v11 + 488);
  _clientFontContextEndpoint = [(UIFontPickerViewControllerConfiguration *)self->_configuration _clientFontContextEndpoint];
  v14 = [v12 sharedInstanceForEndpoint:_clientFontContextEndpoint];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100070568;
  v21[3] = &unk_100098D60;
  v15 = v7;
  v22 = v15;
  v16 = v8;
  v23 = v16;
  selfCopy = self;
  [v14 runBlockInClientFontContext:v21];
  if ([(UIFontPickerViewControllerConfiguration *)self->_configuration includeFaces]&& ([(UIFontPickerViewControllerConfiguration *)self->_configuration _filterFamilyName], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
  {
    hasMultipleFaces = [v16 hasMultipleFaces];
  }

  else
  {
    hasMultipleFaces = 0;
  }

  [(_UIFontPickerTableViewCell *)v15 setAccessoryType:hasMultipleFaces];
  v19 = v15;

  return v15;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:0];
  fonts = self->_fonts;
  v8 = [pathCopy row];

  v11 = [(NSArray *)fonts objectAtIndexedSubscript:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  fontDescriptor = [v11 fontDescriptor];
  [WeakRetained _pickerDidSelectFont:fontDescriptor];
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v6 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"UIFontPickerFooter"];
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
    textContainer = [(UITextView *)self->_footerTextView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [(UITextView *)self->_footerTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [v6 contentView];
    [contentView addSubview:self->_footerTextView];

    contentView2 = [v6 contentView];
    safeAreaLayoutGuide = [contentView2 safeAreaLayoutGuide];
    leadingAnchor = [safeAreaLayoutGuide leadingAnchor];
    leadingAnchor2 = [(UITextView *)self->_footerTextView leadingAnchor];
    v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v51[0] = v46;
    contentView3 = [v6 contentView];
    safeAreaLayoutGuide2 = [contentView3 safeAreaLayoutGuide];
    trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
    trailingAnchor2 = [(UITextView *)self->_footerTextView trailingAnchor];
    v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v51[1] = v41;
    contentView4 = [v6 contentView];
    safeAreaLayoutGuide3 = [contentView4 safeAreaLayoutGuide];
    topAnchor = [safeAreaLayoutGuide3 topAnchor];
    topAnchor2 = [(UITextView *)self->_footerTextView topAnchor];
    v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v51[2] = v36;
    contentView5 = [v6 contentView];
    safeAreaLayoutGuide4 = [contentView5 safeAreaLayoutGuide];
    bottomAnchor = [safeAreaLayoutGuide4 bottomAnchor];
    [(UITextView *)self->_footerTextView bottomAnchor];
    v15 = v14 = viewCopy;
    v16 = [bottomAnchor constraintEqualToAnchor:v15];
    v51[3] = v16;
    v17 = [NSArray arrayWithObjects:v51 count:4];
    [NSLayoutConstraint activateConstraints:v17];

    viewCopy = v14;
    v18 = +[UIColor clearColor];
    [(UITextView *)self->_footerTextView setBackgroundColor:v18];
  }

  defaultContentConfiguration = [v6 defaultContentConfiguration];
  configurationState = [v6 configurationState];
  v21 = [defaultContentConfiguration updatedConfigurationForState:configurationState];

  v22 = [(NSAttributedString *)self->_footerText mutableCopy];
  textProperties = [v21 textProperties];
  font = [textProperties font];
  [v22 addAttribute:NSFontAttributeName value:font range:{0, objc_msgSend(v22, "length")}];

  textProperties2 = [v21 textProperties];
  color = [textProperties2 color];
  [v22 addAttribute:NSForegroundColorAttributeName value:color range:{0, objc_msgSend(v22, "length")}];

  [(UITextView *)self->_footerTextView setAttributedText:v22];
  [v21 directionalLayoutMargins];
  v28 = v27;
  [viewCopy layoutMargins];
  v30 = v29;
  [v21 directionalLayoutMargins];
  v32 = v31;
  [viewCopy layoutMargins];
  v34 = v33;

  [(UITextView *)self->_footerTextView setTextContainerInset:v28, v30, v32, v34];

  return v6;
}

- (void)updateContentUnavailableConfigurationUsingState:(id)state
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
    secondaryButtonProperties = [v13 secondaryButtonProperties];
    [secondaryButtonProperties setPrimaryAction:v8];

    v10 = +[UIBackgroundConfiguration clearConfiguration];
    tableView = [(_UIFontPickerSearchContentViewController *)self tableView];
    backgroundColor = [tableView backgroundColor];
    [v10 setBackgroundColor:backgroundColor];

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
  contentUnavailableConfigurationState = [(_UIFontPickerSearchContentViewController *)&v6 contentUnavailableConfigurationState];
  searchTerm = [(_UIFontPickerSearchContentViewController *)self searchTerm];
  [contentUnavailableConfigurationState setSearchText:searchTerm];

  return contentUnavailableConfigurationState;
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  if (![item contentType])
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