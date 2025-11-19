@interface EKEventImportedNoticeDetailItem
- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (void)reset;
@end

@implementation EKEventImportedNoticeDetailItem

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5
{
  v6 = [(EKEvent *)self->super._event organizer:a3];
  if (v6)
  {
    v7 = [(EKEvent *)self->super._event selfAttendee];
    if (v7)
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

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5
{
  cell = self->_cell;
  if (cell)
  {
    v7 = a5;
    [(EKEventDetailImportedNoticeCell *)cell sizeToFit:a3];
    if (v7)
    {
      [(EKEventDetailImportedNoticeCell *)self->_cell update];
    }

    v8 = self->_cell;
    [(EKEventDetailImportedNoticeCell *)v8 frame];
    [(EKEventDetailCell *)v8 layoutForWidth:[(EKEventDetailItem *)self cellPosition] position:v9];
  }

  else
  {
    v10 = [(EKEventImportedNoticeDetailItem *)self cellForSubitemAtIndex:a3, a5, a4];
    [(EKEventDetailImportedNoticeCell *)self->_cell sizeToFit];
  }

  [(EKEventDetailImportedNoticeCell *)self->_cell frame];
  return v11;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
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