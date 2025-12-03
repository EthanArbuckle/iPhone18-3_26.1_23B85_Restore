@interface EKEventConferenceDetailItem
- (BOOL)conferenceCellShouldPresentShareSheet:(id)sheet;
- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)owningViewController;
- (void)conferenceCell:(id)cell requestPresentShareSheetWithActivityItems:(id)items withPopoverSourceView:(id)view;
- (void)conferenceCellUpdated:(id)updated;
- (void)reset;
@end

@implementation EKEventConferenceDetailItem

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview
{
  if (!MEMORY[0x1D38B98D0](self, a2, event, calendar, preview))
  {
    return 0;
  }

  delegate = [(EKEventDetailItem *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(EKEventDetailItem *)self delegate];
    showsDetectedConferenceItem = [delegate2 showsDetectedConferenceItem];
  }

  else
  {
    showsDetectedConferenceItem = 0;
  }

  virtualConference = [(EKEvent *)self->super._event virtualConference];
  if (virtualConference)
  {
    v10 = 1;
  }

  else
  {
    conferenceURLForDisplay = [(EKEvent *)self->super._event conferenceURLForDisplay];
    v10 = (conferenceURLForDisplay != 0) & showsDetectedConferenceItem;
  }

  return v10;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[EKEventDetailConferenceCell alloc] initWithEvent:self->super._event editable:0];
    v6 = self->_cell;
    self->_cell = v5;

    [(EKEventDetailConferenceCell *)self->_cell setDelegate:self];
    [(EKEventDetailConferenceCell *)self->_cell setAccessibilityIdentifier:@"event-details-conference-detail-cell"];
    cell = self->_cell;
  }

  return cell;
}

- (id)owningViewController
{
  delegate = [(EKEventDetailItem *)self delegate];
  v4 = [delegate viewControllerForEventItem:self];

  return v4;
}

- (void)conferenceCellUpdated:(id)updated
{
  delegate = [(EKEventDetailItem *)self delegate];
  [delegate eventDetailItemWantsRefeshForHeightChange];
}

- (BOOL)conferenceCellShouldPresentShareSheet:(id)sheet
{
  delegate = [(EKEventDetailItem *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(EKEventDetailItem *)self delegate];
  v7 = [delegate2 eventDetailItemShouldPresentShareSheet:self];

  return v7;
}

- (void)conferenceCell:(id)cell requestPresentShareSheetWithActivityItems:(id)items withPopoverSourceView:(id)view
{
  itemsCopy = items;
  viewCopy = view;
  delegate = [(EKEventDetailItem *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(EKEventDetailItem *)self delegate];
    [delegate2 eventDetailItem:self requestPresentShareSheetWithActivityItems:itemsCopy withPopoverSourceView:viewCopy];
  }
}

@end