@interface EKEventOrganizerDetailItem
- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index;
- (void)reset;
- (void)setHideDisclosureIndicator:(BOOL)indicator;
@end

@implementation EKEventOrganizerDetailItem

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview
{
  organizer = 16;
  v7 = [(EKEvent *)self->super._event organizer:event];
  if (v7)
  {
    organizer = [(EKEvent *)self->super._event organizer];
    if (![organizer isCurrentUser])
    {
      v8 = 1;
LABEL_5:

      goto LABEL_6;
    }
  }

  organizerOverride = [(EKEventOrganizerDetailItem *)self organizerOverride];
  v8 = organizerOverride != 0;

  if (v7)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v8;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [EKEventDetailOrganizerCell alloc];
    event = self->super._event;
    organizerOverride = [(EKEventOrganizerDetailItem *)self organizerOverride];
    v8 = [(EKEventDetailOrganizerCell *)v5 initWithEvent:event editable:0 organizerOverride:organizerOverride];
    v9 = self->_cell;
    self->_cell = v8;

    [(EKEventOrganizerDetailItem *)self _updateDisclosureIndicator];
    cell = self->_cell;
  }

  return cell;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update
{
  updateCopy = update;
  if (EKUIUnscaledCatalyst())
  {
    return 65.0;
  }

  v10.receiver = self;
  v10.super_class = EKEventOrganizerDetailItem;
  [(EKEventDetailItem *)&v10 defaultCellHeightForSubitemAtIndex:index forWidth:updateCopy forceUpdate:width];
  return result;
}

- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index
{
  v5 = [(EKEventOrganizerDetailItem *)self organizerOverride:index];
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

- (void)setHideDisclosureIndicator:(BOOL)indicator
{
  if (self->_hideDisclosureIndicator != indicator)
  {
    self->_hideDisclosureIndicator = indicator;
    [(EKEventOrganizerDetailItem *)self _updateDisclosureIndicator];
  }
}

@end