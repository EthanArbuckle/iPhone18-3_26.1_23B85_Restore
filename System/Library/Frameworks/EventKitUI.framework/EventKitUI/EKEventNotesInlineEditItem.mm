@interface EKEventNotesInlineEditItem
- (BOOL)isSaveable;
- (BOOL)saveAndDismissWithForce:(BOOL)force;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)reset;
- (void)tableViewDidScroll;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation EKEventNotesInlineEditItem

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE080] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE078] object:0];
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[CalendarNotesCell alloc] initWithStyle:0 reuseIdentifier:0];
    v6 = self->_cell;
    self->_cell = v5;

    v7 = EventKitUIBundle();
    v8 = [v7 localizedStringForKey:@"Notes" value:&stru_1F4EF6790 table:0];
    [(CalendarNotesCell *)self->_cell setPlaceholder:v8];

    [(CalendarNotesCell *)self->_cell setAccessibilityIdentifier:@"notes-cell"];
    event = [(EKEventEditItem *)self event];
    displayNotes = [event displayNotes];

    event2 = [(EKEventEditItem *)self event];
    calendar = [event2 calendar];
    if ([calendar type] == 2)
    {
      HasInlineExchangeAttachments = CUIKNotesFieldHasInlineExchangeAttachments();

      if (!HasInlineExchangeAttachments)
      {
LABEL_7:
        textView = [(CalendarNotesCell *)self->_cell textView];
        [textView setText:displayNotes];

        textView2 = [(CalendarNotesCell *)self->_cell textView];
        [textView2 setDelegate:self];

        textView3 = [(CalendarNotesCell *)self->_cell textView];
        [textView3 setAccessibilityIdentifier:@"notes-text-view"];

        textView4 = [(CalendarNotesCell *)self->_cell textView];
        CalDisableFocusRingForView();

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
        [defaultCenter addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

        cell = self->_cell;
        goto LABEL_8;
      }

      textView5 = [(CalendarNotesCell *)self->_cell textView];
      [textView5 setEditable:0];

      CUIKStripInlineExchangeAttachmentsFromNotes();
      displayNotes = event2 = displayNotes;
    }

    else
    {
    }

    goto LABEL_7;
  }

LABEL_8:

  return cell;
}

- (void)_keyboardWillShow:(id)show
{
  p_keyboardRect = &self->_keyboardRect;
  userInfo = [show userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
  [v4 CGRectValue];
  p_keyboardRect->origin.x = v5;
  p_keyboardRect->origin.y = v6;
  p_keyboardRect->size.width = v7;
  p_keyboardRect->size.height = v8;
}

- (void)_keyboardWillHide:(id)hide
{
  v4 = *(MEMORY[0x1E695F058] + 16);
  self->_keyboardRect.origin = *MEMORY[0x1E695F058];
  self->_keyboardRect.size = v4;
  textView = [(CalendarNotesCell *)self->_cell textView];
  [textView contentInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  textView2 = [(CalendarNotesCell *)self->_cell textView];
  [textView2 setContentInset:{v7, v9, 0.0, v11}];
}

- (void)tableViewDidScroll
{
  textView = [(CalendarNotesCell *)self->_cell textView];
  isEditing = [textView isEditing];

  if (isEditing)
  {
    textView2 = [(CalendarNotesCell *)self->_cell textView];
    [textView2 contentInset];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    textView3 = [(CalendarNotesCell *)self->_cell textView];
    window = [textView3 window];
    textView4 = [(CalendarNotesCell *)self->_cell textView];
    [window convertRect:textView4 toView:{self->_keyboardRect.origin.x, self->_keyboardRect.origin.y, self->_keyboardRect.size.width, self->_keyboardRect.size.height}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    textView5 = [(CalendarNotesCell *)self->_cell textView];
    [textView5 bounds];
    v35.origin.x = v18;
    v35.origin.y = v20;
    v35.size.width = v22;
    v35.size.height = v24;
    v33 = CGRectIntersection(v32, v35);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;

    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    if (!CGRectIsEmpty(v34))
    {
      v11 = height;
    }

    textView6 = [(CalendarNotesCell *)self->_cell textView];
    [textView6 setContentInset:{v7, v9, v11, v13}];
  }
}

- (BOOL)saveAndDismissWithForce:(BOOL)force
{
  cell = self->_cell;
  if (cell && self->_textViewDirty)
  {
    textView = [(CalendarNotesCell *)cell textView];
    text = [textView text];
    event = [(EKEventEditItem *)self event];
    [event setDisplayNotes:text];

    self->_textViewDirty = 0;
  }

  [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];
  return 1;
}

- (BOOL)isSaveable
{
  lastTextChange = self->_lastTextChange;
  event = [(EKEventEditItem *)self event];
  displayNotes = [event displayNotes];
  LOBYTE(lastTextChange) = [(NSString *)lastTextChange isEqualToString:displayNotes];

  return lastTextChange ^ 1;
}

- (void)textViewDidBeginEditing:(id)editing
{
  [(EKCalendarItemEditItem *)self setSelectedResponder:editing];

  [(EKCalendarItemEditItem *)self notifyDidStartEditing];
}

- (void)textViewDidEndEditing:(id)editing
{
  [(EKCalendarItemEditItem *)self notifyDidEndEditing];

  [(EKCalendarItemEditItem *)self setSelectedResponder:0];
}

- (void)textViewDidChange:(id)change
{
  text = [change text];
  lastTextChange = self->_lastTextChange;
  self->_lastTextChange = text;

  self->_textViewDirty = 1;

  [(EKCalendarItemEditItem *)self notifyTextChanged];
}

@end