@interface EKEventVisibilityEditItem
- (BOOL)canBeConfiguredForCalendarConstraints:(id)a3;
- (BOOL)saveAndDismissWithForce:(BOOL)a3;
- (BOOL)shouldAppear;
- (EKEventVisibilityEditItem)init;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4;
- (double)footerHeightForWidth:(double)a3;
- (id)_editItemForIndex:(unint64_t)a3;
- (id)_lowestEditItem;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4;
- (id)footerTitle;
- (id)footerView;
- (unint64_t)numberOfSubitems;
- (unint64_t)onSaveEditorReloadBehavior;
- (void)reset;
- (void)setCalendarItem:(id)a3 store:(id)a4;
- (void)setDelegate:(id)a3;
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
  v3 = [(EKCalendarItemEditItem *)self->_availabilityEditItem onSaveEditorReloadBehavior];
  result = [(EKEventPrivacyLevelInlineEditItem *)self->_privacyLevelEditItem onSaveEditorReloadBehavior];
  if (v3 > result)
  {
    return v3;
  }

  return result;
}

- (BOOL)canBeConfiguredForCalendarConstraints:(id)a3
{
  v4 = a3;
  v5 = [(EKEventAvailabilityEditItem *)self->_availabilityEditItem canBeConfiguredForCalendarConstraints:v4]|| [(EKEventPrivacyLevelInlineEditItem *)self->_privacyLevelEditItem canBeConfiguredForCalendarConstraints:v4];

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

- (void)setCalendarItem:(id)a3 store:(id)a4
{
  v8.receiver = self;
  v8.super_class = EKEventVisibilityEditItem;
  v6 = a4;
  v7 = a3;
  [(EKEventEditItem *)&v8 setCalendarItem:v7 store:v6];
  [(EKEventEditItem *)self->_availabilityEditItem setCalendarItem:v7 store:v6, v8.receiver, v8.super_class];
  [(EKEventEditItem *)self->_privacyLevelEditItem setCalendarItem:v7 store:v6];
}

- (void)setDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = EKEventVisibilityEditItem;
  v4 = a3;
  [(EKCalendarItemEditItem *)&v5 setDelegate:v4];
  [(EKCalendarItemEditItem *)self->_availabilityEditItem setDelegate:v4, v5.receiver, v5.super_class];
  [(EKCalendarItemEditItem *)self->_privacyLevelEditItem setDelegate:v4];
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

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4
{
  v5 = [(EKEventVisibilityEditItem *)self _editItemForIndex:a3];
  [v5 defaultCellHeightForSubitemAtIndex:0 forWidth:a4];
  v7 = v6;

  return v7;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v3 = [(EKEventVisibilityEditItem *)self _editItemForIndex:a3];
  v4 = [v3 cellForSubitemAtIndex:0];

  return v4;
}

- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(EKEventVisibilityEditItem *)self _editItemForIndex:a4];
  subitemOfLastDetailViewControllerRequested = self->_subitemOfLastDetailViewControllerRequested;
  self->_subitemOfLastDetailViewControllerRequested = v9;

  v11 = self->_subitemOfLastDetailViewControllerRequested;

  return [(EKCalendarItemEditItem *)v11 detailViewControllerWithFrame:0 forSubitemAtIndex:x, y, width, height];
}

- (BOOL)saveAndDismissWithForce:(BOOL)a3
{
  v3 = a3;
  v5 = [(EKEventAvailabilityEditItem *)self->_availabilityEditItem saveAndDismissWithForce:?];
  return v5 | [(EKEventPrivacyLevelInlineEditItem *)self->_privacyLevelEditItem saveAndDismissWithForce:v3];
}

- (double)footerHeightForWidth:(double)a3
{
  v4 = [(EKEventVisibilityEditItem *)self _lowestEditItem];
  [v4 footerHeightForWidth:a3];
  v6 = v5;

  return v6;
}

- (id)footerTitle
{
  v2 = [(EKEventVisibilityEditItem *)self _lowestEditItem];
  v3 = [v2 footerTitle];

  return v3;
}

- (id)footerView
{
  v2 = [(EKEventVisibilityEditItem *)self _lowestEditItem];
  v3 = [v2 footerView];

  return v3;
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
    v10 = self;
    v11 = 2048;
    v12 = v7;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_ERROR, "Cannot find lowest edit item for [%@] with number of subitems: [%lu]", &v9, 0x16u);
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)_editItemForIndex:(unint64_t)a3
{
  if (!a3)
  {
    v4 = &OBJC_IVAR___EKEventVisibilityEditItem__availabilityEditItem;
LABEL_5:
    v5 = *(&self->super.super.super.isa + *v4);

    return v5;
  }

  if (a3 == 1)
  {
    v4 = &OBJC_IVAR___EKEventVisibilityEditItem__privacyLevelEditItem;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

@end