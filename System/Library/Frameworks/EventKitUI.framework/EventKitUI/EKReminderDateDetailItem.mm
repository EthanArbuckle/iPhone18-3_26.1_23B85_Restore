@interface EKReminderDateDetailItem
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)reset;
- (void)setHidesBottomSeparator:(BOOL)separator;
@end

@implementation EKReminderDateDetailItem

- (void)reset
{
  v4.receiver = self;
  v4.super_class = EKReminderDateDetailItem;
  [(EKEventDetailItem *)&v4 reset];
  cell = self->_cell;
  self->_cell = 0;
}

- (void)setHidesBottomSeparator:(BOOL)separator
{
  self->_hidesBottomSeparator = separator;
  cell = self->_cell;
  if (cell)
  {
    [(EKReminderDateDetailCell *)cell setHideBottomCellSeparator:?];
  }
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[EKReminderDateDetailCell alloc] initWithEvent:self->super._event reminder:self->super._reminder editable:0];
    v6 = self->_cell;
    self->_cell = v5;

    [(EKReminderDateDetailCell *)self->_cell setHideBottomCellSeparator:self->_hidesBottomSeparator];
    cell = self->_cell;
  }

  return cell;
}

@end