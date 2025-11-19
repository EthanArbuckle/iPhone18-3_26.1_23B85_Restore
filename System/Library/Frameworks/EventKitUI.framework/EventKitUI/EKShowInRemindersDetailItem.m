@interface EKShowInRemindersDetailItem
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (void)reset;
@end

@implementation EKShowInRemindersDetailItem

- (void)reset
{
  v4.receiver = self;
  v4.super_class = EKShowInRemindersDetailItem;
  [(EKEventDetailItem *)&v4 reset];
  cell = self->_cell;
  self->_cell = 0;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[EKShowInRemindersDetailCell alloc] initWithEvent:self->super._event editable:0];
    v6 = self->_cell;
    self->_cell = v5;

    cell = self->_cell;
  }

  return cell;
}

@end