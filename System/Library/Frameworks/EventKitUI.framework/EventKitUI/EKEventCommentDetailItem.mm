@interface EKEventCommentDetailItem
- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)reset;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation EKEventCommentDetailItem

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview
{
  calendarCopy = calendar;
  if ([(EKEvent *)self->super._event allowsParticipationStatusModifications])
  {
    source = [calendarCopy source];
    constraints = [source constraints];
    if ([constraints supportsResponseComments])
    {
      v9 = [(EKEvent *)self->super._event actionsState]== 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[EKEventDetailCommentCell alloc] initWithEvent:self->super._event editable:1];
    v6 = self->_cell;
    self->_cell = v5;

    editableTextField = [(EKEventDetailCommentCell *)self->_cell editableTextField];
    [editableTextField setDelegate:self];

    [(EKEventDetailCommentCell *)self->_cell update];
    v8 = self->_cell;
    [(EKEventDetailCommentCell *)v8 frame];
    [(EKEventDetailCell *)v8 layoutForWidth:[(EKEventDetailItem *)self cellPosition] position:v9];
    cell = self->_cell;
  }

  [(EKEventDetailCommentCell *)cell setAccessibilityIdentifier:@"event-details-comment-cell"];
  v10 = self->_cell;

  return v10;
}

- (void)textFieldDidEndEditing:(id)editing
{
  event = self->super._event;
  editingCopy = editing;
  responseComment = [(EKEvent *)event responseComment];
  text = [editingCopy text];

  proposedStartDate = [(EKEvent *)self->super._event proposedStartDate];

  if (proposedStartDate)
  {
    v8 = MEMORY[0x1E6993410];
    proposedStartDate2 = [(EKEvent *)self->super._event proposedStartDate];
    timeZone = [(EKEvent *)self->super._event timeZone];
    v11 = [v8 comment:text withInsertedAutoCommentForDate:proposedStartDate2 timeZone:timeZone];

    text = v11;
  }

  if (![text length])
  {

    text = 0;
  }

  if ([responseComment length])
  {
    v12 = responseComment;
  }

  else
  {

    v12 = 0;
  }

  v14 = v12;
  if ((CalEqualStrings() & 1) == 0)
  {
    [(EKEvent *)self->super._event setResponseComment:text];
  }

  [(EKEventDetailItem *)self notifySubitemDidSave:0];
  [(EKEventDetailItem *)self editItemViewController:0 didCompleteWithAction:3];
}

@end