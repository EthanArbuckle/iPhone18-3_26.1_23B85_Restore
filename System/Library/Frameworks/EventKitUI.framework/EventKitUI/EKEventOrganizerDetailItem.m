@interface EKEventOrganizerDetailItem
- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4;
- (void)reset;
- (void)setHideDisclosureIndicator:(BOOL)a3;
@end

@implementation EKEventOrganizerDetailItem

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5
{
  v6 = 16;
  v7 = [(EKEvent *)self->super._event organizer:a3];
  if (v7)
  {
    v6 = [(EKEvent *)self->super._event organizer];
    if (![v6 isCurrentUser])
    {
      v8 = 1;
LABEL_5:

      goto LABEL_6;
    }
  }

  v9 = [(EKEventOrganizerDetailItem *)self organizerOverride];
  v8 = v9 != 0;

  if (v7)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v8;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [EKEventDetailOrganizerCell alloc];
    event = self->super._event;
    v7 = [(EKEventOrganizerDetailItem *)self organizerOverride];
    v8 = [(EKEventDetailOrganizerCell *)v5 initWithEvent:event editable:0 organizerOverride:v7];
    v9 = self->_cell;
    self->_cell = v8;

    [(EKEventOrganizerDetailItem *)self _updateDisclosureIndicator];
    cell = self->_cell;
  }

  return cell;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5
{
  v5 = a5;
  if (EKUIUnscaledCatalyst())
  {
    return 65.0;
  }

  v10.receiver = self;
  v10.super_class = EKEventOrganizerDetailItem;
  [(EKEventDetailItem *)&v10 defaultCellHeightForSubitemAtIndex:a3 forWidth:v5 forceUpdate:a4];
  return result;
}

- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4
{
  v5 = [(EKEventOrganizerDetailItem *)self organizerOverride:a4];
  if (v5 || ([(EKEvent *)self->super._event organizer], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [[EKIdentityViewController alloc] initWithIdentity:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setHideDisclosureIndicator:(BOOL)a3
{
  if (self->_hideDisclosureIndicator != a3)
  {
    self->_hideDisclosureIndicator = a3;
    [(EKEventOrganizerDetailItem *)self _updateDisclosureIndicator];
  }
}

@end