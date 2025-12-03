@interface EKCalendarSubscriptionURLEditItem
- (BOOL)becomeFirstResponder;
- (BOOL)saveStateToCalendar:(id)calendar;
- (EKCalendarSubscriptionURLEditItemDelegate)urlEditItemDelegate;
- (NSString)urlString;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width;
- (id)_textFieldColorForEditable:(BOOL)editable;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)headerTitle;
- (int64_t)_cellSelectionStyleForEditable:(BOOL)editable;
- (void)_notifyDelegateThatURLStringChangedIfNeeded;
- (void)_textFieldChanged;
- (void)calendarEditor:(id)editor didSelectSubitem:(unint64_t)subitem;
- (void)setEditable:(BOOL)editable;
- (void)setUrlString:(id)string;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation EKCalendarSubscriptionURLEditItem

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1000 reuseIdentifier:0];
    [(UITableViewCell *)v5 setAccessibilityIdentifier:@"calendar-url-cell"];
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    editableTextField = [(UITableViewCell *)v5 editableTextField];
    [editableTextField setFont:v6];

    v8 = EventKitUIBundle();
    v9 = [v8 localizedStringForKey:@"example.com/cal.ics" value:&stru_1F4EF6790 table:0];
    [(UITableViewCell *)v5 setPlaceHolderValue:v9];

    [(UITableViewCell *)v5 setTextFieldOffset:0.0];
    editableTextField2 = [(UITableViewCell *)v5 editableTextField];
    [editableTextField2 setClearButtonMode:1];

    editableTextField3 = [(UITableViewCell *)v5 editableTextField];
    [editableTextField3 setKeyboardType:3];

    editableTextField4 = [(UITableViewCell *)v5 editableTextField];
    [editableTextField4 setAutocorrectionType:1];

    editableTextField5 = [(UITableViewCell *)v5 editableTextField];
    [editableTextField5 setAutocapitalizationType:0];

    editable = self->_editable;
    editableTextField6 = [(UITableViewCell *)v5 editableTextField];
    [editableTextField6 setEnabled:editable];

    v16 = [(EKCalendarSubscriptionURLEditItem *)self _textFieldColorForEditable:self->_editable];
    editableTextField7 = [(UITableViewCell *)v5 editableTextField];
    [editableTextField7 setTextColor:v16];

    [(UITableViewCell *)v5 setSelectionStyle:[(EKCalendarSubscriptionURLEditItem *)self _cellSelectionStyleForEditable:self->_editable]];
    editableTextField8 = [(UITableViewCell *)v5 editableTextField];
    [editableTextField8 setDelegate:self];

    editableTextField9 = [(UITableViewCell *)v5 editableTextField];
    [editableTextField9 setAccessibilityIdentifier:@"calendar-url-textfield"];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v21 = *MEMORY[0x1E69DE5C0];
    editableTextField10 = [(UITableViewCell *)v5 editableTextField];
    [defaultCenter addObserver:self selector:sel__textFieldChanged name:v21 object:editableTextField10];

    urlString = self->_urlString;
    if (urlString || ([(EKCalendar *)self->super._calendar subcalURL], v24 = objc_claimAutoreleasedReturnValue(), v25 = self->_urlString, self->_urlString = v24, v25, (urlString = self->_urlString) != 0))
    {
      editableTextField11 = [(UITableViewCell *)v5 editableTextField];
      [editableTextField11 setText:urlString];
    }

    v27 = self->_cell;
    self->_cell = v5;

    cell = self->_cell;
  }

  return cell;
}

- (id)_textFieldColorForEditable:(BOOL)editable
{
  if (editable)
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

- (int64_t)_cellSelectionStyleForEditable:(BOOL)editable
{
  if (editable)
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
    editableTextField = [(UITableViewCell *)cell editableTextField];
    text = [editableTextField text];
    urlString = self->_urlString;
    self->_urlString = text;
  }

  v7 = self->_urlString;

  return v7;
}

- (void)setUrlString:(id)string
{
  stringCopy = string;
  objc_storeStrong(&self->_urlString, string);
  cell = self->_cell;
  if (cell)
  {
    urlString = self->_urlString;
    editableTextField = [(UITableViewCell *)cell editableTextField];
    [editableTextField setText:urlString];
  }
}

- (void)setEditable:(BOOL)editable
{
  self->_editable = editable;
  cell = self->_cell;
  if (cell)
  {
    editableCopy = editable;
    editableTextField = [(UITableViewCell *)cell editableTextField];
    [editableTextField setEnabled:editableCopy];

    v7 = [(EKCalendarSubscriptionURLEditItem *)self _textFieldColorForEditable:self->_editable];
    editableTextField2 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField2 setTextColor:v7];

    v9 = [(EKCalendarSubscriptionURLEditItem *)self _cellSelectionStyleForEditable:self->_editable];
    v10 = self->_cell;

    [(UITableViewCell *)v10 setSelectionStyle:v9];
  }
}

- (BOOL)becomeFirstResponder
{
  editableTextField = [(UITableViewCell *)self->_cell editableTextField];
  [editableTextField becomeFirstResponder];

  return 1;
}

- (BOOL)saveStateToCalendar:(id)calendar
{
  calendarCopy = calendar;
  urlString = [(EKCalendarSubscriptionURLEditItem *)self urlString];
  [calendarCopy setSubcalURL:urlString];

  return 1;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width
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

- (void)calendarEditor:(id)editor didSelectSubitem:(unint64_t)subitem
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E69CD9F8]);
  urlString = [(EKCalendarSubscriptionURLEditItem *)self urlString];
  v22[0] = urlString;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v8 = [v5 initWithActivityItems:v7 applicationActivities:0];

  cell = self->_cell;
  popoverPresentationController = [v8 popoverPresentationController];
  [popoverPresentationController setSourceView:cell];

  [(UITableViewCell *)self->_cell bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  popoverPresentationController2 = [v8 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v12, v14, v16, v18}];

  delegate = [(EKCalendarEditItem *)self delegate];
  owningNavigationController = [delegate owningNavigationController];
  [owningNavigationController presentViewController:v8 animated:1 completion:0];
}

- (void)textFieldDidEndEditing:(id)editing
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
  urlEditItemDelegate = [(EKCalendarSubscriptionURLEditItem *)self urlEditItemDelegate];
  if (urlEditItemDelegate)
  {
    v4 = urlEditItemDelegate;
    lastNotifiedURLString = self->_lastNotifiedURLString;
    if (lastNotifiedURLString)
    {
      urlString = [(EKCalendarSubscriptionURLEditItem *)self urlString];
      v7 = [(NSString *)lastNotifiedURLString isEqualToString:urlString];

      if (v7)
      {
        return;
      }
    }

    else
    {
    }

    urlString2 = [(EKCalendarSubscriptionURLEditItem *)self urlString];
    v9 = self->_lastNotifiedURLString;
    self->_lastNotifiedURLString = urlString2;

    urlEditItemDelegate2 = [(EKCalendarSubscriptionURLEditItem *)self urlEditItemDelegate];
    [urlEditItemDelegate2 URLEditItemDidChangeURLString:self];
  }
}

- (EKCalendarSubscriptionURLEditItemDelegate)urlEditItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_urlEditItemDelegate);

  return WeakRetained;
}

@end