@interface EKConferenceInformationInlineEditItem
- (BOOL)shouldAppear;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (void)reset;
@end

@implementation EKConferenceInformationInlineEditItem

- (BOOL)shouldAppear
{
  v3 = [(EKEventEditItem *)self event];
  v4 = [v3 virtualConference];
  if (v4)
  {
    v5 = [(EKEventEditItem *)self event];
    v6 = [v5 virtualConference];
    v7 = [v6 joinMethods];
    if ([v7 count] <= 1)
    {
      v9 = [(EKEventEditItem *)self event];
      v10 = [v9 virtualConference];
      v11 = [v10 conferenceDetails];
      v8 = [v11 length] != 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[CalendarNotesCell alloc] initWithStyle:0 reuseIdentifier:0];
    v6 = self->_cell;
    self->_cell = v5;

    v7 = [(CalendarNotesCell *)self->_cell textView];
    [v7 setEditable:0];

    v8 = [(CalendarNotesCell *)self->_cell textView];
    [v8 setDataDetectorTypes:-1];

    v9 = [(EKEventEditItem *)self event];
    v10 = [v9 virtualConferenceTextRepresentation];
    v11 = [(CalendarNotesCell *)self->_cell textView];
    [v11 setText:v10];

    v12 = [(CalendarNotesCell *)self->_cell textView];
    CalDisableFocusRingForView();

    cell = self->_cell;
  }

  return cell;
}

@end