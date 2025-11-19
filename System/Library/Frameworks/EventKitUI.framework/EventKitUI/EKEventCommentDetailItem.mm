@interface EKEventCommentDetailItem
- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (void)reset;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation EKEventCommentDetailItem

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5
{
  v6 = a4;
  if ([(EKEvent *)self->super._event allowsParticipationStatusModifications])
  {
    v7 = [v6 source];
    v8 = [v7 constraints];
    if ([v8 supportsResponseComments])
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

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[EKEventDetailCommentCell alloc] initWithEvent:self->super._event editable:1];
    v6 = self->_cell;
    self->_cell = v5;

    v7 = [(EKEventDetailCommentCell *)self->_cell editableTextField];
    [v7 setDelegate:self];

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

- (void)textFieldDidEndEditing:(id)a3
{
  event = self->super._event;
  v5 = a3;
  v13 = [(EKEvent *)event responseComment];
  v6 = [v5 text];

  v7 = [(EKEvent *)self->super._event proposedStartDate];

  if (v7)
  {
    v8 = MEMORY[0x1E6993410];
    v9 = [(EKEvent *)self->super._event proposedStartDate];
    v10 = [(EKEvent *)self->super._event timeZone];
    v11 = [v8 comment:v6 withInsertedAutoCommentForDate:v9 timeZone:v10];

    v6 = v11;
  }

  if (![v6 length])
  {

    v6 = 0;
  }

  if ([v13 length])
  {
    v12 = v13;
  }

  else
  {

    v12 = 0;
  }

  v14 = v12;
  if ((CalEqualStrings() & 1) == 0)
  {
    [(EKEvent *)self->super._event setResponseComment:v6];
  }

  [(EKEventDetailItem *)self notifySubitemDidSave:0];
  [(EKEventDetailItem *)self editItemViewController:0 didCompleteWithAction:3];
}

@end