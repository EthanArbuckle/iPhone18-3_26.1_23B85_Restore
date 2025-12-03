@interface EKCalendarTitleEditItem
- (BOOL)becomeFirstResponder;
- (BOOL)saveStateToCalendar:(id)calendar;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)headerTitle;
- (void)reset;
@end

@implementation EKCalendarTitleEditItem

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
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

    editableTextField = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField setAccessibilityIdentifier:@"calendar-title-field"];

    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    editableTextField2 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField2 setFont:v8];

    editableTextField3 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField3 setDelegate:self];

    v11 = EventKitUIBundle();
    v12 = [v11 localizedStringForKey:@"Calendar Name" value:&stru_1F4EF6790 table:0];
    editableTextField4 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField4 setPlaceholder:v12];

    title = [(EKCalendar *)self->super._calendar title];
    v15 = [title isEqualToString:&stru_1F4EF6790];
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = CUIKDisplayedTitleForCalendar();
    }

    editableTextField5 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField5 setText:v16];

    if ((v15 & 1) == 0)
    {
    }

    prefillTitle = [(EKCalendarTitleEditItem *)self prefillTitle];
    if (prefillTitle)
    {
      v19 = prefillTitle;
      editableTextField6 = [(UITableViewCell *)self->_cell editableTextField];
      text = [editableTextField6 text];
      v22 = [text length];

      if (!v22)
      {
        prefillTitle2 = [(EKCalendarTitleEditItem *)self prefillTitle];
        editableTextField7 = [(UITableViewCell *)self->_cell editableTextField];
        [editableTextField7 setText:prefillTitle2];
      }
    }

    editableTextField8 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField8 setAutocapitalizationType:2];

    [(UITableViewCell *)self->_cell setTextFieldOffset:0.0];
    editableTextField9 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField9 setClearButtonMode:1];

    [(UITableViewCell *)self->_cell setSelectionStyle:0];
    editableTextField10 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField10 setEnabled:v6];

    if (v6)
    {
      [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] tableCellGrayTextColor];
    }
    v28 = ;
    editableTextField11 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField11 setTextColor:v28];
  }

  v30 = self->_cell;

  return v30;
}

- (BOOL)saveStateToCalendar:(id)calendar
{
  calendarCopy = calendar;
  editableTextField = [(UITableViewCell *)self->_cell editableTextField];
  text = [editableTextField text];
  v7 = text != 0;
  if (!text)
  {
LABEL_8:

    goto LABEL_9;
  }

  v8 = text;
  editableTextField2 = [(UITableViewCell *)self->_cell editableTextField];
  isEnabled = [editableTextField2 isEnabled];

  if (isEnabled)
  {
    editableTextField = [(UITableViewCell *)self->_cell editableTextField];
    text2 = [editableTextField text];
    if ([text2 isEqualToString:&stru_1F4EF6790])
    {
      editableTextField3 = EventKitUIBundle();
      [editableTextField3 localizedStringForKey:@"Untitled Calendar" value:&stru_1F4EF6790 table:0];
    }

    else
    {
      editableTextField3 = [(UITableViewCell *)self->_cell editableTextField];
      [editableTextField3 text];
    }
    v13 = ;
    [calendarCopy setTitle:v13];

    goto LABEL_8;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (BOOL)becomeFirstResponder
{
  editableTextField = [(UITableViewCell *)self->_cell editableTextField];
  [editableTextField becomeFirstResponder];

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
  if (self->_showHeader)
  {
    v2 = EventKitUIBundle();
    headerTitle = [v2 localizedStringForKey:@"Title in calendar editor" value:@"Title" table:0];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = EKCalendarTitleEditItem;
    headerTitle = [(EKCalendarEditItem *)&v5 headerTitle];
  }

  return headerTitle;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  v6 = [(EKCalendarEditItem *)self delegate:field];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate = [(EKCalendarEditItem *)self delegate];
    [delegate calendarItemStartedEditing:self];
  }

  return 1;
}

@end