@interface EKEventNotesInlineEditItem
- (BOOL)isSaveable;
- (BOOL)saveAndDismissWithForce:(BOOL)a3;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)reset;
- (void)tableViewDidScroll;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation EKEventNotesInlineEditItem

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DE080] object:0];
  [v4 removeObserver:self name:*MEMORY[0x1E69DE078] object:0];
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
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
    v9 = [(EKEventEditItem *)self event];
    v10 = [v9 displayNotes];

    v11 = [(EKEventEditItem *)self event];
    v12 = [v11 calendar];
    if ([v12 type] == 2)
    {
      HasInlineExchangeAttachments = CUIKNotesFieldHasInlineExchangeAttachments();

      if (!HasInlineExchangeAttachments)
      {
LABEL_7:
        v15 = [(CalendarNotesCell *)self->_cell textView];
        [v15 setText:v10];

        v16 = [(CalendarNotesCell *)self->_cell textView];
        [v16 setDelegate:self];

        v17 = [(CalendarNotesCell *)self->_cell textView];
        [v17 setAccessibilityIdentifier:@"notes-text-view"];

        v18 = [(CalendarNotesCell *)self->_cell textView];
        CalDisableFocusRingForView();

        v19 = [MEMORY[0x1E696AD88] defaultCenter];
        [v19 addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
        [v19 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

        cell = self->_cell;
        goto LABEL_8;
      }

      v14 = [(CalendarNotesCell *)self->_cell textView];
      [v14 setEditable:0];

      CUIKStripInlineExchangeAttachmentsFromNotes();
      v10 = v11 = v10;
    }

    else
    {
    }

    goto LABEL_7;
  }

LABEL_8:

  return cell;
}

- (void)_keyboardWillShow:(id)a3
{
  p_keyboardRect = &self->_keyboardRect;
  v9 = [a3 userInfo];
  v4 = [v9 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v4 CGRectValue];
  p_keyboardRect->origin.x = v5;
  p_keyboardRect->origin.y = v6;
  p_keyboardRect->size.width = v7;
  p_keyboardRect->size.height = v8;
}

- (void)_keyboardWillHide:(id)a3
{
  v4 = *(MEMORY[0x1E695F058] + 16);
  self->_keyboardRect.origin = *MEMORY[0x1E695F058];
  self->_keyboardRect.size = v4;
  v5 = [(CalendarNotesCell *)self->_cell textView];
  [v5 contentInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CalendarNotesCell *)self->_cell textView];
  [v12 setContentInset:{v7, v9, 0.0, v11}];
}

- (void)tableViewDidScroll
{
  v3 = [(CalendarNotesCell *)self->_cell textView];
  v4 = [v3 isEditing];

  if (v4)
  {
    v5 = [(CalendarNotesCell *)self->_cell textView];
    [v5 contentInset];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [(CalendarNotesCell *)self->_cell textView];
    v15 = [v14 window];
    v16 = [(CalendarNotesCell *)self->_cell textView];
    [v15 convertRect:v16 toView:{self->_keyboardRect.origin.x, self->_keyboardRect.origin.y, self->_keyboardRect.size.width, self->_keyboardRect.size.height}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = [(CalendarNotesCell *)self->_cell textView];
    [v25 bounds];
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

    v30 = [(CalendarNotesCell *)self->_cell textView];
    [v30 setContentInset:{v7, v9, v11, v13}];
  }
}

- (BOOL)saveAndDismissWithForce:(BOOL)a3
{
  cell = self->_cell;
  if (cell && self->_textViewDirty)
  {
    v5 = [(CalendarNotesCell *)cell textView];
    v6 = [v5 text];
    v7 = [(EKEventEditItem *)self event];
    [v7 setDisplayNotes:v6];

    self->_textViewDirty = 0;
  }

  [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];
  return 1;
}

- (BOOL)isSaveable
{
  lastTextChange = self->_lastTextChange;
  v3 = [(EKEventEditItem *)self event];
  v4 = [v3 displayNotes];
  LOBYTE(lastTextChange) = [(NSString *)lastTextChange isEqualToString:v4];

  return lastTextChange ^ 1;
}

- (void)textViewDidBeginEditing:(id)a3
{
  [(EKCalendarItemEditItem *)self setSelectedResponder:a3];

  [(EKCalendarItemEditItem *)self notifyDidStartEditing];
}

- (void)textViewDidEndEditing:(id)a3
{
  [(EKCalendarItemEditItem *)self notifyDidEndEditing];

  [(EKCalendarItemEditItem *)self setSelectedResponder:0];
}

- (void)textViewDidChange:(id)a3
{
  v4 = [a3 text];
  lastTextChange = self->_lastTextChange;
  self->_lastTextChange = v4;

  self->_textViewDirty = 1;

  [(EKCalendarItemEditItem *)self notifyTextChanged];
}

@end