@interface EKEventAttendeesDetailItem
- (EKEventAttendeesDetailItem)initWithModel:(id)a3;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4;
- (void)eventDetailAttendeeCellDidCompleteLoad:(id)a3;
- (void)eventDetailAttendeeCellWantsRefreshForHeightChange;
- (void)eventViewController:(id)a3 didSelectSubitem:(unint64_t)a4;
- (void)reset;
@end

@implementation EKEventAttendeesDetailItem

- (EKEventAttendeesDetailItem)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EKEventAttendeesDetailItem;
  v6 = [(EKEventAttendeesDetailItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
  }

  return v7;
}

- (void)reset
{
  if ([(EKEventDetailAttendeesCell *)self->_cell loadingAttendees])
  {
    oldCell = self->_oldCell;
    self->_oldCell = 0;
  }

  else
  {
    v4 = self->_cell;
    oldCell = self->_oldCell;
    self->_oldCell = v4;
  }

  cell = self->_cell;
  self->_cell = 0;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5
{
  v5 = [(EKEventAttendeesDetailItem *)self cellForSubitemAtIndex:a3, a5, a4];
  [v5 displayHeight];
  v7 = v6;

  return v7;
}

- (void)eventViewController:(id)a3 didSelectSubitem:(unint64_t)a4
{
  v4.receiver = self;
  v4.super_class = EKEventAttendeesDetailItem;
  [(EKEventDetailItem *)&v4 eventViewController:a3 didSelectSubitem:a4];
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  cell = self->_cell;
  if (!cell)
  {
    attendeesModel = self->_attendeesModel;
    if (!attendeesModel)
    {
      v6 = objc_alloc_init(EKEventDetailAttendeesCellModel);
      v7 = self->_attendeesModel;
      self->_attendeesModel = v6;

      attendeesModel = self->_attendeesModel;
    }

    [(EKEventDetailAttendeesCellModel *)attendeesModel setEvent:self->super._event];
    v8 = [[EKEventDetailAttendeesCell alloc] initWithEvent:self->super._event model:self->_attendeesModel];
    v9 = self->_cell;
    self->_cell = v8;

    [(EKEventDetailAttendeesCell *)self->_cell setAttendeeCellDelegate:self];
    [(EKEventDetailAttendeesCell *)self->_cell update];
    [(EKEventDetailAttendeesCell *)self->_cell layoutForWidth:[(EKEventDetailItem *)self cellPosition] position:300.0];
    cell = self->_cell;
  }

  v10 = [(EKEventDetailAttendeesCell *)cell loadingAttendees];
  oldCell = self->_oldCell;
  if (v10)
  {
    if (oldCell)
    {
      goto LABEL_11;
    }
  }

  else if (oldCell)
  {
    self->_oldCell = 0;
  }

  oldCell = self->_cell;
LABEL_11:
  v12 = oldCell;

  return v12;
}

- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4
{
  v5 = [[EKUIEventInviteesViewController alloc] initWithEvent:self->super._event fromDetail:1 model:self->_model];
  v6 = [(EKEventDetailItem *)self viewControllerToPresentFrom];
  v7 = [v6 navigationDelegate];
  [(EKUIEventInviteesViewController *)v5 setNavigationDelegate:v7];

  return v5;
}

- (void)eventDetailAttendeeCellWantsRefreshForHeightChange
{
  v2 = [(EKEventDetailItem *)self delegate];
  [v2 eventDetailItemWantsRefeshForHeightChange];
}

- (void)eventDetailAttendeeCellDidCompleteLoad:(id)a3
{
  v4 = a3;
  if (self->_oldCell && self->_cell == v4)
  {
    v6 = v4;
    v5 = [(EKEventDetailItem *)self delegate];
    [v5 eventDetailItemWantsRefresh:self];

    v4 = v6;
  }
}

@end