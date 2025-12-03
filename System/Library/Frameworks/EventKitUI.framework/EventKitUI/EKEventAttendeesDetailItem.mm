@interface EKEventAttendeesDetailItem
- (EKEventAttendeesDetailItem)initWithModel:(id)model;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index;
- (void)eventDetailAttendeeCellDidCompleteLoad:(id)load;
- (void)eventDetailAttendeeCellWantsRefreshForHeightChange;
- (void)eventViewController:(id)controller didSelectSubitem:(unint64_t)subitem;
- (void)reset;
@end

@implementation EKEventAttendeesDetailItem

- (EKEventAttendeesDetailItem)initWithModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = EKEventAttendeesDetailItem;
  v6 = [(EKEventAttendeesDetailItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
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

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update
{
  width = [(EKEventAttendeesDetailItem *)self cellForSubitemAtIndex:index, update, width];
  [width displayHeight];
  v7 = v6;

  return v7;
}

- (void)eventViewController:(id)controller didSelectSubitem:(unint64_t)subitem
{
  v4.receiver = self;
  v4.super_class = EKEventAttendeesDetailItem;
  [(EKEventDetailItem *)&v4 eventViewController:controller didSelectSubitem:subitem];
}

- (id)cellForSubitemAtIndex:(unint64_t)index
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

  loadingAttendees = [(EKEventDetailAttendeesCell *)cell loadingAttendees];
  oldCell = self->_oldCell;
  if (loadingAttendees)
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

- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index
{
  v5 = [[EKUIEventInviteesViewController alloc] initWithEvent:self->super._event fromDetail:1 model:self->_model];
  viewControllerToPresentFrom = [(EKEventDetailItem *)self viewControllerToPresentFrom];
  navigationDelegate = [viewControllerToPresentFrom navigationDelegate];
  [(EKUIEventInviteesViewController *)v5 setNavigationDelegate:navigationDelegate];

  return v5;
}

- (void)eventDetailAttendeeCellWantsRefreshForHeightChange
{
  delegate = [(EKEventDetailItem *)self delegate];
  [delegate eventDetailItemWantsRefeshForHeightChange];
}

- (void)eventDetailAttendeeCellDidCompleteLoad:(id)load
{
  loadCopy = load;
  if (self->_oldCell && self->_cell == loadCopy)
  {
    v6 = loadCopy;
    delegate = [(EKEventDetailItem *)self delegate];
    [delegate eventDetailItemWantsRefresh:self];

    loadCopy = v6;
  }
}

@end