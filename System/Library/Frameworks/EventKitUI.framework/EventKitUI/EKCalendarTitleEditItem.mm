@interface EKCalendarTitleEditItem
- (BOOL)becomeFirstResponder;
- (BOOL)saveStateToCalendar:(id)a3;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)headerTitle;
- (void)reset;
@end

@implementation EKCalendarTitleEditItem

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  if (!self->_cell)
  {
    v4 = [[EKUITableViewCell alloc] initWithStyle:1000 reuseIdentifier:0];
    cell = self->_cell;
    self->_cell = &v4->super;

    [(UITableViewCell *)self->_cell setAccessibilityIdentifier:@"calendar-title-cell"];
    if ([(EKCalendar *)self->super._calendar isImmutable])
    {
      v6 = 0;
    }

    else
    {
      v6 = [(EKCalendar *)self->super._calendar isSubscribedHolidayCalendar]^ 1;
    }

    v7 = [(UITableViewCell *)self->_cell editableTextField];
    [v7 setAccessibilityIdentifier:@"calendar-title-field"];

    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v9 = [(UITableViewCell *)self->_cell editableTextField];
    [v9 setFont:v8];

    v10 = [(UITableViewCell *)self->_cell editableTextField];
    [v10 setDelegate:self];

    v11 = EventKitUIBundle();
    v12 = [v11 localizedStringForKey:@"Calendar Name" value:&stru_1F4EF6790 table:0];
    v13 = [(UITableViewCell *)self->_cell editableTextField];
    [v13 setPlaceholder:v12];

    v14 = [(EKCalendar *)self->super._calendar title];
    v15 = [v14 isEqualToString:&stru_1F4EF6790];
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = CUIKDisplayedTitleForCalendar();
    }

    v17 = [(UITableViewCell *)self->_cell editableTextField];
    [v17 setText:v16];

    if ((v15 & 1) == 0)
    {
    }

    v18 = [(EKCalendarTitleEditItem *)self prefillTitle];
    if (v18)
    {
      v19 = v18;
      v20 = [(UITableViewCell *)self->_cell editableTextField];
      v21 = [v20 text];
      v22 = [v21 length];

      if (!v22)
      {
        v23 = [(EKCalendarTitleEditItem *)self prefillTitle];
        v24 = [(UITableViewCell *)self->_cell editableTextField];
        [v24 setText:v23];
      }
    }

    v25 = [(UITableViewCell *)self->_cell editableTextField];
    [v25 setAutocapitalizationType:2];

    [(UITableViewCell *)self->_cell setTextFieldOffset:0.0];
    v26 = [(UITableViewCell *)self->_cell editableTextField];
    [v26 setClearButtonMode:1];

    [(UITableViewCell *)self->_cell setSelectionStyle:0];
    v27 = [(UITableViewCell *)self->_cell editableTextField];
    [v27 setEnabled:v6];

    if (v6)
    {
      [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] tableCellGrayTextColor];
    }
    v28 = ;
    v29 = [(UITableViewCell *)self->_cell editableTextField];
    [v29 setTextColor:v28];
  }

  v30 = self->_cell;

  return v30;
}

- (BOOL)saveStateToCalendar:(id)a3
{
  v4 = a3;
  v5 = [(UITableViewCell *)self->_cell editableTextField];
  v6 = [v5 text];
  v7 = v6 != 0;
  if (!v6)
  {
LABEL_8:

    goto LABEL_9;
  }

  v8 = v6;
  v9 = [(UITableViewCell *)self->_cell editableTextField];
  v10 = [v9 isEnabled];

  if (v10)
  {
    v5 = [(UITableViewCell *)self->_cell editableTextField];
    v11 = [v5 text];
    if ([v11 isEqualToString:&stru_1F4EF6790])
    {
      v12 = EventKitUIBundle();
      [v12 localizedStringForKey:@"Untitled Calendar" value:&stru_1F4EF6790 table:0];
    }

    else
    {
      v12 = [(UITableViewCell *)self->_cell editableTextField];
      [v12 text];
    }
    v13 = ;
    [v4 setTitle:v13];

    goto LABEL_8;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (BOOL)becomeFirstResponder
{
  v2 = [(UITableViewCell *)self->_cell editableTextField];
  [v2 becomeFirstResponder];

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
  if (self->_showHeader)
  {
    v2 = EventKitUIBundle();
    v3 = [v2 localizedStringForKey:@"Title in calendar editor" value:@"Title" table:0];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = EKCalendarTitleEditItem;
    v3 = [(EKCalendarEditItem *)&v5 headerTitle];
  }

  return v3;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v6 = [(EKCalendarEditItem *)self delegate:a3];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(EKCalendarEditItem *)self delegate];
    [v8 calendarItemStartedEditing:self];
  }

  return 1;
}

@end