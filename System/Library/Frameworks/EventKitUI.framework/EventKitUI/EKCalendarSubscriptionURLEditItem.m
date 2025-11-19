@interface EKCalendarSubscriptionURLEditItem
- (BOOL)becomeFirstResponder;
- (BOOL)saveStateToCalendar:(id)a3;
- (EKCalendarSubscriptionURLEditItemDelegate)urlEditItemDelegate;
- (NSString)urlString;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4;
- (id)_textFieldColorForEditable:(BOOL)a3;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)headerTitle;
- (int64_t)_cellSelectionStyleForEditable:(BOOL)a3;
- (void)_notifyDelegateThatURLStringChangedIfNeeded;
- (void)_textFieldChanged;
- (void)calendarEditor:(id)a3 didSelectSubitem:(unint64_t)a4;
- (void)setEditable:(BOOL)a3;
- (void)setUrlString:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation EKCalendarSubscriptionURLEditItem

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1000 reuseIdentifier:0];
    [(UITableViewCell *)v5 setAccessibilityIdentifier:@"calendar-url-cell"];
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v7 = [(UITableViewCell *)v5 editableTextField];
    [v7 setFont:v6];

    v8 = EventKitUIBundle();
    v9 = [v8 localizedStringForKey:@"example.com/cal.ics" value:&stru_1F4EF6790 table:0];
    [(UITableViewCell *)v5 setPlaceHolderValue:v9];

    [(UITableViewCell *)v5 setTextFieldOffset:0.0];
    v10 = [(UITableViewCell *)v5 editableTextField];
    [v10 setClearButtonMode:1];

    v11 = [(UITableViewCell *)v5 editableTextField];
    [v11 setKeyboardType:3];

    v12 = [(UITableViewCell *)v5 editableTextField];
    [v12 setAutocorrectionType:1];

    v13 = [(UITableViewCell *)v5 editableTextField];
    [v13 setAutocapitalizationType:0];

    editable = self->_editable;
    v15 = [(UITableViewCell *)v5 editableTextField];
    [v15 setEnabled:editable];

    v16 = [(EKCalendarSubscriptionURLEditItem *)self _textFieldColorForEditable:self->_editable];
    v17 = [(UITableViewCell *)v5 editableTextField];
    [v17 setTextColor:v16];

    [(UITableViewCell *)v5 setSelectionStyle:[(EKCalendarSubscriptionURLEditItem *)self _cellSelectionStyleForEditable:self->_editable]];
    v18 = [(UITableViewCell *)v5 editableTextField];
    [v18 setDelegate:self];

    v19 = [(UITableViewCell *)v5 editableTextField];
    [v19 setAccessibilityIdentifier:@"calendar-url-textfield"];

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    v21 = *MEMORY[0x1E69DE5C0];
    v22 = [(UITableViewCell *)v5 editableTextField];
    [v20 addObserver:self selector:sel__textFieldChanged name:v21 object:v22];

    urlString = self->_urlString;
    if (urlString || ([(EKCalendar *)self->super._calendar subcalURL], v24 = objc_claimAutoreleasedReturnValue(), v25 = self->_urlString, self->_urlString = v24, v25, (urlString = self->_urlString) != 0))
    {
      v26 = [(UITableViewCell *)v5 editableTextField];
      [v26 setText:urlString];
    }

    v27 = self->_cell;
    self->_cell = v5;

    cell = self->_cell;
  }

  return cell;
}

- (id)_textFieldColorForEditable:(BOOL)a3
{
  if (a3)
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v3 = ;

  return v3;
}

- (int64_t)_cellSelectionStyleForEditable:(BOOL)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (NSString)urlString
{
  cell = self->_cell;
  if (cell)
  {
    v4 = [(UITableViewCell *)cell editableTextField];
    v5 = [v4 text];
    urlString = self->_urlString;
    self->_urlString = v5;
  }

  v7 = self->_urlString;

  return v7;
}

- (void)setUrlString:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_urlString, a3);
  cell = self->_cell;
  if (cell)
  {
    urlString = self->_urlString;
    v7 = [(UITableViewCell *)cell editableTextField];
    [v7 setText:urlString];
  }
}

- (void)setEditable:(BOOL)a3
{
  self->_editable = a3;
  cell = self->_cell;
  if (cell)
  {
    v5 = a3;
    v6 = [(UITableViewCell *)cell editableTextField];
    [v6 setEnabled:v5];

    v7 = [(EKCalendarSubscriptionURLEditItem *)self _textFieldColorForEditable:self->_editable];
    v8 = [(UITableViewCell *)self->_cell editableTextField];
    [v8 setTextColor:v7];

    v9 = [(EKCalendarSubscriptionURLEditItem *)self _cellSelectionStyleForEditable:self->_editable];
    v10 = self->_cell;

    [(UITableViewCell *)v10 setSelectionStyle:v9];
  }
}

- (BOOL)becomeFirstResponder
{
  v2 = [(UITableViewCell *)self->_cell editableTextField];
  [v2 becomeFirstResponder];

  return 1;
}

- (BOOL)saveStateToCalendar:(id)a3
{
  v4 = a3;
  v5 = [(EKCalendarSubscriptionURLEditItem *)self urlString];
  [v4 setSubcalURL:v5];

  return 1;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4
{
  if (EKUIUnscaledCatalyst())
  {

    return EKUIUnscaledCatalystTableRowHeightDefault();
  }

  else
  {

    return EKUITableRowHeightDefault();
  }
}

- (id)headerTitle
{
  editable = self->_editable;
  v3 = EventKitUIBundle();
  v4 = v3;
  if (editable)
  {
    v5 = @"Subscription URL";
  }

  else
  {
    v5 = @"Subscribed to";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1F4EF6790 table:0];

  return v6;
}

- (void)calendarEditor:(id)a3 didSelectSubitem:(unint64_t)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v6 = [(EKCalendarSubscriptionURLEditItem *)self urlString];
  v22[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v8 = [v5 initWithActivityItems:v7 applicationActivities:0];

  cell = self->_cell;
  v10 = [v8 popoverPresentationController];
  [v10 setSourceView:cell];

  [(UITableViewCell *)self->_cell bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v8 popoverPresentationController];
  [v19 setSourceRect:{v12, v14, v16, v18}];

  v20 = [(EKCalendarEditItem *)self delegate];
  v21 = [v20 owningNavigationController];
  [v21 presentViewController:v8 animated:1 completion:0];
}

- (void)textFieldDidEndEditing:(id)a3
{
  if (_os_feature_enabled_impl())
  {

    [(EKCalendarSubscriptionURLEditItem *)self _notifyDelegateThatURLStringChangedIfNeeded];
  }
}

- (void)_textFieldChanged
{
  if (_os_feature_enabled_impl())
  {
    if (self->_inWaitPeriodSinceLastChange)
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__waitPeriodElapsedSinceLastTextFieldChange object:0];
    }

    self->_inWaitPeriodSinceLastChange = 1;

    [(EKCalendarSubscriptionURLEditItem *)self performSelector:sel__waitPeriodElapsedSinceLastTextFieldChange withObject:0 afterDelay:0.2];
  }
}

- (void)_notifyDelegateThatURLStringChangedIfNeeded
{
  v3 = [(EKCalendarSubscriptionURLEditItem *)self urlEditItemDelegate];
  if (v3)
  {
    v4 = v3;
    lastNotifiedURLString = self->_lastNotifiedURLString;
    if (lastNotifiedURLString)
    {
      v6 = [(EKCalendarSubscriptionURLEditItem *)self urlString];
      v7 = [(NSString *)lastNotifiedURLString isEqualToString:v6];

      if (v7)
      {
        return;
      }
    }

    else
    {
    }

    v8 = [(EKCalendarSubscriptionURLEditItem *)self urlString];
    v9 = self->_lastNotifiedURLString;
    self->_lastNotifiedURLString = v8;

    v10 = [(EKCalendarSubscriptionURLEditItem *)self urlEditItemDelegate];
    [v10 URLEditItemDidChangeURLString:self];
  }
}

- (EKCalendarSubscriptionURLEditItemDelegate)urlEditItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_urlEditItemDelegate);

  return WeakRetained;
}

@end