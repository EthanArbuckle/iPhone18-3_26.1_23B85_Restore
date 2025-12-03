@interface EKConferenceInformationInlineEditItem
- (BOOL)shouldAppear;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)reset;
@end

@implementation EKConferenceInformationInlineEditItem

- (BOOL)shouldAppear
{
  event = [(EKEventEditItem *)self event];
  virtualConference = [event virtualConference];
  if (virtualConference)
  {
    event2 = [(EKEventEditItem *)self event];
    virtualConference2 = [event2 virtualConference];
    joinMethods = [virtualConference2 joinMethods];
    if ([joinMethods count] <= 1)
    {
      event3 = [(EKEventEditItem *)self event];
      virtualConference3 = [event3 virtualConference];
      conferenceDetails = [virtualConference3 conferenceDetails];
      v8 = [conferenceDetails length] != 0;
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

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[CalendarNotesCell alloc] initWithStyle:0 reuseIdentifier:0];
    v6 = self->_cell;
    self->_cell = v5;

    textView = [(CalendarNotesCell *)self->_cell textView];
    [textView setEditable:0];

    textView2 = [(CalendarNotesCell *)self->_cell textView];
    [textView2 setDataDetectorTypes:-1];

    event = [(EKEventEditItem *)self event];
    virtualConferenceTextRepresentation = [event virtualConferenceTextRepresentation];
    textView3 = [(CalendarNotesCell *)self->_cell textView];
    [textView3 setText:virtualConferenceTextRepresentation];

    textView4 = [(CalendarNotesCell *)self->_cell textView];
    CalDisableFocusRingForView();

    cell = self->_cell;
  }

  return cell;
}

@end