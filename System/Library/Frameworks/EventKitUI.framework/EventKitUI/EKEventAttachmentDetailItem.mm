@interface EKEventAttachmentDetailItem
- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)parentViewControllerForAttachmentCellController:(id)controller;
- (unint64_t)numberOfSubitems;
- (void)_cleanUpCellControllers;
- (void)_setUpCellControllers;
- (void)dealloc;
- (void)eventViewController:(id)controller didSelectSubitem:(unint64_t)subitem;
- (void)reset;
- (void)setEvent:(id)event reminder:(id)reminder store:(id)store;
@end

@implementation EKEventAttachmentDetailItem

- (void)_cleanUpCellControllers
{
  cellControllers = self->_cellControllers;
  if (cellControllers)
  {
    self->_cellControllers = 0;
  }
}

- (void)_setUpCellControllers
{
  self->_visibilityChanged = 0;
  calendar = [(EKEvent *)self->super._event calendar];
  source = [calendar source];

  mEMORY[0x1E6993370] = [MEMORY[0x1E6993370] sharedInstance];
  v5 = [mEMORY[0x1E6993370] sourceIsManaged:source];

  attachments = [(EKEvent *)self->super._event attachments];
  array = [EKEventAttachmentCellController cellControllersForAttachments:attachments givenExistingControllers:self->_cellControllers sourceIsManaged:v5];

  if (!array)
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  [(NSArray *)self->_cellControllers makeObjectsPerformSelector:sel_setDelegate_ withObject:0];
  cellControllers = self->_cellControllers;
  self->_cellControllers = array;
  v9 = array;

  [(NSArray *)self->_cellControllers makeObjectsPerformSelector:sel_setDelegate_ withObject:self];
}

- (void)setEvent:(id)event reminder:(id)reminder store:(id)store
{
  v6.receiver = self;
  v6.super_class = EKEventAttachmentDetailItem;
  [(EKEventDetailItem *)&v6 setEvent:event reminder:reminder store:store];
  [(EKEventAttachmentDetailItem *)self _setUpCellControllers];
}

- (void)reset
{
  cellControllers = self->_cellControllers;
  if (cellControllers)
  {
    if (![(NSArray *)cellControllers count]&& ([(EKEvent *)self->super._event attachments], v5 = objc_claimAutoreleasedReturnValue(), v5, v5) || [(NSArray *)self->_cellControllers count]&& ([(EKEvent *)self->super._event attachments], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
    {
      self->_visibilityChanged = 1;
    }
  }

  [(EKEventAttachmentDetailItem *)self _cleanUpCellControllers];
}

- (void)dealloc
{
  [(EKEventAttachmentDetailItem *)self _cleanUpCellControllers];
  v3.receiver = self;
  v3.super_class = EKEventAttachmentDetailItem;
  [(EKEventDetailItem *)&v3 dealloc];
}

- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview
{
  cellControllers = self->_cellControllers;
  if (!cellControllers)
  {
    [(EKEventAttachmentDetailItem *)self _setUpCellControllers:event];
    cellControllers = self->_cellControllers;
  }

  return [(NSArray *)cellControllers count:event]!= 0;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cellControllers = self->_cellControllers;
  if (!cellControllers)
  {
    [(EKEventAttachmentDetailItem *)self _setUpCellControllers];
    cellControllers = self->_cellControllers;
  }

  if ([(NSArray *)cellControllers count]<= index)
  {
    v8 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_ERROR, "No cellControllers found in the attachment detail item.  We shouldn't be drawn, but tableview thinks we want to display, returning empty cell", v10, 2u);
    }

    cell = objc_opt_new();
  }

  else
  {
    v6 = [(NSArray *)self->_cellControllers objectAtIndex:index];
    cell = [v6 cell];
  }

  return cell;
}

- (unint64_t)numberOfSubitems
{
  cellControllers = self->_cellControllers;
  if (!cellControllers)
  {
    [(EKEventAttachmentDetailItem *)self _setUpCellControllers];
    cellControllers = self->_cellControllers;
  }

  return [(NSArray *)cellControllers count];
}

- (void)eventViewController:(id)controller didSelectSubitem:(unint64_t)subitem
{
  if ([(NSArray *)self->_cellControllers count]> subitem)
  {
    v6 = [(NSArray *)self->_cellControllers objectAtIndex:subitem];
    [v6 cellSelected];
  }
}

- (id)parentViewControllerForAttachmentCellController:(id)controller
{
  delegate = [(EKEventDetailItem *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(EKEventDetailItem *)self delegate];
    v7 = [delegate2 viewControllerForEventItem:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end