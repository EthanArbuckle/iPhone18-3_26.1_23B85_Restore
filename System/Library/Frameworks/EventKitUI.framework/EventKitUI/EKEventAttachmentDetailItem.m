@interface EKEventAttachmentDetailItem
- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)parentViewControllerForAttachmentCellController:(id)a3;
- (unint64_t)numberOfSubitems;
- (void)_cleanUpCellControllers;
- (void)_setUpCellControllers;
- (void)dealloc;
- (void)eventViewController:(id)a3 didSelectSubitem:(unint64_t)a4;
- (void)reset;
- (void)setEvent:(id)a3 reminder:(id)a4 store:(id)a5;
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
  v3 = [(EKEvent *)self->super._event calendar];
  v10 = [v3 source];

  v4 = [MEMORY[0x1E6993370] sharedInstance];
  v5 = [v4 sourceIsManaged:v10];

  v6 = [(EKEvent *)self->super._event attachments];
  v7 = [EKEventAttachmentCellController cellControllersForAttachments:v6 givenExistingControllers:self->_cellControllers sourceIsManaged:v5];

  if (!v7)
  {
    v7 = [MEMORY[0x1E695DEC8] array];
  }

  [(NSArray *)self->_cellControllers makeObjectsPerformSelector:sel_setDelegate_ withObject:0];
  cellControllers = self->_cellControllers;
  self->_cellControllers = v7;
  v9 = v7;

  [(NSArray *)self->_cellControllers makeObjectsPerformSelector:sel_setDelegate_ withObject:self];
}

- (void)setEvent:(id)a3 reminder:(id)a4 store:(id)a5
{
  v6.receiver = self;
  v6.super_class = EKEventAttachmentDetailItem;
  [(EKEventDetailItem *)&v6 setEvent:a3 reminder:a4 store:a5];
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

- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5
{
  cellControllers = self->_cellControllers;
  if (!cellControllers)
  {
    [(EKEventAttachmentDetailItem *)self _setUpCellControllers:a3];
    cellControllers = self->_cellControllers;
  }

  return [(NSArray *)cellControllers count:a3]!= 0;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  cellControllers = self->_cellControllers;
  if (!cellControllers)
  {
    [(EKEventAttachmentDetailItem *)self _setUpCellControllers];
    cellControllers = self->_cellControllers;
  }

  if ([(NSArray *)cellControllers count]<= a3)
  {
    v8 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_ERROR, "No cellControllers found in the attachment detail item.  We shouldn't be drawn, but tableview thinks we want to display, returning empty cell", v10, 2u);
    }

    v7 = objc_opt_new();
  }

  else
  {
    v6 = [(NSArray *)self->_cellControllers objectAtIndex:a3];
    v7 = [v6 cell];
  }

  return v7;
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

- (void)eventViewController:(id)a3 didSelectSubitem:(unint64_t)a4
{
  if ([(NSArray *)self->_cellControllers count]> a4)
  {
    v6 = [(NSArray *)self->_cellControllers objectAtIndex:a4];
    [v6 cellSelected];
  }
}

- (id)parentViewControllerForAttachmentCellController:(id)a3
{
  v4 = [(EKEventDetailItem *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(EKEventDetailItem *)self delegate];
    v7 = [v6 viewControllerForEventItem:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end