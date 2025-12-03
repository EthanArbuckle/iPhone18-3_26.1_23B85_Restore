@interface EKEventVisibilityEditItem
- (BOOL)canBeConfiguredForCalendarConstraints:(id)constraints;
- (BOOL)saveAndDismissWithForce:(BOOL)force;
- (BOOL)shouldAppear;
- (EKEventVisibilityEditItem)init;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width;
- (double)footerHeightForWidth:(double)width;
- (id)_editItemForIndex:(unint64_t)index;
- (id)_lowestEditItem;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index;
- (id)footerTitle;
- (id)footerView;
- (unint64_t)numberOfSubitems;
- (unint64_t)onSaveEditorReloadBehavior;
- (void)reset;
- (void)setCalendarItem:(id)item store:(id)store;
- (void)setDelegate:(id)delegate;
@end

@implementation EKEventVisibilityEditItem

- (EKEventVisibilityEditItem)init
{
  v8.receiver = self;
  v8.super_class = EKEventVisibilityEditItem;
  v2 = [(EKEventVisibilityEditItem *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(EKEventAvailabilityEditItem);
    availabilityEditItem = v2->_availabilityEditItem;
    v2->_availabilityEditItem = v3;

    v5 = objc_alloc_init(EKEventPrivacyLevelInlineEditItem);
    privacyLevelEditItem = v2->_privacyLevelEditItem;
    v2->_privacyLevelEditItem = v5;
  }

  return v2;
}

- (void)reset
{
  [(EKCalendarItemEditItem *)self->_availabilityEditItem reset];
  privacyLevelEditItem = self->_privacyLevelEditItem;

  [(EKCalendarItemEditItem *)privacyLevelEditItem reset];
}

- (unint64_t)onSaveEditorReloadBehavior
{
  onSaveEditorReloadBehavior = [(EKCalendarItemEditItem *)self->_availabilityEditItem onSaveEditorReloadBehavior];
  result = [(EKEventPrivacyLevelInlineEditItem *)self->_privacyLevelEditItem onSaveEditorReloadBehavior];
  if (onSaveEditorReloadBehavior > result)
  {
    return onSaveEditorReloadBehavior;
  }

  return result;
}

- (BOOL)canBeConfiguredForCalendarConstraints:(id)constraints
{
  constraintsCopy = constraints;
  v5 = [(EKEventAvailabilityEditItem *)self->_availabilityEditItem canBeConfiguredForCalendarConstraints:constraintsCopy]|| [(EKEventPrivacyLevelInlineEditItem *)self->_privacyLevelEditItem canBeConfiguredForCalendarConstraints:constraintsCopy];

  return v5;
}

- (BOOL)shouldAppear
{
  if ([(EKCalendarItemEditItem *)self->_availabilityEditItem shouldAppear])
  {
    return 1;
  }

  privacyLevelEditItem = self->_privacyLevelEditItem;

  return [(EKEventPrivacyLevelInlineEditItem *)privacyLevelEditItem shouldAppear];
}

- (void)setCalendarItem:(id)item store:(id)store
{
  v8.receiver = self;
  v8.super_class = EKEventVisibilityEditItem;
  storeCopy = store;
  itemCopy = item;
  [(EKEventEditItem *)&v8 setCalendarItem:itemCopy store:storeCopy];
  [(EKEventEditItem *)self->_availabilityEditItem setCalendarItem:itemCopy store:storeCopy, v8.receiver, v8.super_class];
  [(EKEventEditItem *)self->_privacyLevelEditItem setCalendarItem:itemCopy store:storeCopy];
}

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = EKEventVisibilityEditItem;
  delegateCopy = delegate;
  [(EKCalendarItemEditItem *)&v5 setDelegate:delegateCopy];
  [(EKCalendarItemEditItem *)self->_availabilityEditItem setDelegate:delegateCopy, v5.receiver, v5.super_class];
  [(EKCalendarItemEditItem *)self->_privacyLevelEditItem setDelegate:delegateCopy];
}

- (unint64_t)numberOfSubitems
{
  if ([(EKEventPrivacyLevelInlineEditItem *)self->_privacyLevelEditItem shouldAppear])
  {
    result = 2;
  }

  else
  {
    result = 1;
  }

  self->_lastKnownNumberOfSubitems = result;
  return result;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width
{
  v5 = [(EKEventVisibilityEditItem *)self _editItemForIndex:index];
  [v5 defaultCellHeightForSubitemAtIndex:0 forWidth:width];
  v7 = v6;

  return v7;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  v3 = [(EKEventVisibilityEditItem *)self _editItemForIndex:index];
  v4 = [v3 cellForSubitemAtIndex:0];

  return v4;
}

- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = [(EKEventVisibilityEditItem *)self _editItemForIndex:index];
  subitemOfLastDetailViewControllerRequested = self->_subitemOfLastDetailViewControllerRequested;
  self->_subitemOfLastDetailViewControllerRequested = v9;

  v11 = self->_subitemOfLastDetailViewControllerRequested;

  return [(EKCalendarItemEditItem *)v11 detailViewControllerWithFrame:0 forSubitemAtIndex:x, y, width, height];
}

- (BOOL)saveAndDismissWithForce:(BOOL)force
{
  forceCopy = force;
  v5 = [(EKEventAvailabilityEditItem *)self->_availabilityEditItem saveAndDismissWithForce:?];
  return v5 | [(EKEventPrivacyLevelInlineEditItem *)self->_privacyLevelEditItem saveAndDismissWithForce:forceCopy];
}

- (double)footerHeightForWidth:(double)width
{
  _lowestEditItem = [(EKEventVisibilityEditItem *)self _lowestEditItem];
  [_lowestEditItem footerHeightForWidth:width];
  v6 = v5;

  return v6;
}

- (id)footerTitle
{
  _lowestEditItem = [(EKEventVisibilityEditItem *)self _lowestEditItem];
  footerTitle = [_lowestEditItem footerTitle];

  return footerTitle;
}

- (id)footerView
{
  _lowestEditItem = [(EKEventVisibilityEditItem *)self _lowestEditItem];
  footerView = [_lowestEditItem footerView];

  return footerView;
}

- (id)_lowestEditItem
{
  v13 = *MEMORY[0x1E69E9840];
  lastKnownNumberOfSubitems = self->_lastKnownNumberOfSubitems;
  if (lastKnownNumberOfSubitems == 2)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (lastKnownNumberOfSubitems == 1)
  {
    v4 = 0;
LABEL_5:
    v5 = [(EKEventVisibilityEditItem *)self _editItemForIndex:v4];
    goto LABEL_9;
  }

  v6 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    v7 = self->_lastKnownNumberOfSubitems;
    v9 = 138412546;
    selfCopy = self;
    v11 = 2048;
    v12 = v7;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_ERROR, "Cannot find lowest edit item for [%@] with number of subitems: [%lu]", &v9, 0x16u);
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)_editItemForIndex:(unint64_t)index
{
  if (!index)
  {
    v4 = &OBJC_IVAR___EKEventVisibilityEditItem__availabilityEditItem;
LABEL_5:
    v5 = *(&self->super.super.super.isa + *v4);

    return v5;
  }

  if (index == 1)
  {
    v4 = &OBJC_IVAR___EKEventVisibilityEditItem__privacyLevelEditItem;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

@end