@interface EKEventConferenceDetailItem
- (BOOL)conferenceCellShouldPresentShareSheet:(id)a3;
- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)owningViewController;
- (void)conferenceCell:(id)a3 requestPresentShareSheetWithActivityItems:(id)a4 withPopoverSourceView:(id)a5;
- (void)conferenceCellUpdated:(id)a3;
- (void)reset;
@end

@implementation EKEventConferenceDetailItem

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5
{
  if (!MEMORY[0x1D38B98D0](self, a2, a3, a4, a5))
  {
    return 0;
  }

  v6 = [(EKEventDetailItem *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(EKEventDetailItem *)self delegate];
    v9 = [v8 showsDetectedConferenceItem];
  }

  else
  {
    v9 = 0;
  }

  v11 = [(EKEvent *)self->super._event virtualConference];
  if (v11)
  {
    v10 = 1;
  }

  else
  {
    v12 = [(EKEvent *)self->super._event conferenceURLForDisplay];
    v10 = (v12 != 0) & v9;
  }

  return v10;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
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
  v3 = [(EKEventDetailItem *)self delegate];
  v4 = [v3 viewControllerForEventItem:self];

  return v4;
}

- (void)conferenceCellUpdated:(id)a3
{
  v3 = [(EKEventDetailItem *)self delegate];
  [v3 eventDetailItemWantsRefeshForHeightChange];
}

- (BOOL)conferenceCellShouldPresentShareSheet:(id)a3
{
  v4 = [(EKEventDetailItem *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = [(EKEventDetailItem *)self delegate];
  v7 = [v6 eventDetailItemShouldPresentShareSheet:self];

  return v7;
}

- (void)conferenceCell:(id)a3 requestPresentShareSheetWithActivityItems:(id)a4 withPopoverSourceView:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(EKEventDetailItem *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(EKEventDetailItem *)self delegate];
    [v10 eventDetailItem:self requestPresentShareSheetWithActivityItems:v11 withPopoverSourceView:v7];
  }
}

@end