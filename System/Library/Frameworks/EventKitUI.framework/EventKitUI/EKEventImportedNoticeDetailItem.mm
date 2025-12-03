@interface EKEventImportedNoticeDetailItem
- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)reset;
@end

@implementation EKEventImportedNoticeDetailItem

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview
{
  v6 = [(EKEvent *)self->super._event organizer:event];
  if (v6)
  {
    selfAttendee = [(EKEvent *)self->super._event selfAttendee];
    if (selfAttendee)
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v8 = [(EKEvent *)self->super._event isEditable]^ 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update
{
  cell = self->_cell;
  if (cell)
  {
    updateCopy = update;
    [(EKEventDetailImportedNoticeCell *)cell sizeToFit:index];
    if (updateCopy)
    {
      [(EKEventDetailImportedNoticeCell *)self->_cell update];
    }

    v8 = self->_cell;
    [(EKEventDetailImportedNoticeCell *)v8 frame];
    [(EKEventDetailCell *)v8 layoutForWidth:[(EKEventDetailItem *)self cellPosition] position:v9];
  }

  else
  {
    width = [(EKEventImportedNoticeDetailItem *)self cellForSubitemAtIndex:index, update, width];
    [(EKEventDetailImportedNoticeCell *)self->_cell sizeToFit];
  }

  [(EKEventDetailImportedNoticeCell *)self->_cell frame];
  return v11;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[EKEventDetailImportedNoticeCell alloc] initWithEvent:self->super._event editable:1];
    v6 = self->_cell;
    self->_cell = v5;

    cell = self->_cell;
  }

  return cell;
}

@end