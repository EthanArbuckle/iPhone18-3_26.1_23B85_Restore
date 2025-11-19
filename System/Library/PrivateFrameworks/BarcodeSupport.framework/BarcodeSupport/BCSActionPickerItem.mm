@interface BCSActionPickerItem
+ (id)actionPickerItemWithLabel:(id)a3 actionHandler:(id)a4;
- (BCSActionPickerItem)initWithAction:(id)a3;
- (BCSActionPickerItem)initWithLabel:(id)a3 action:(id)a4;
- (BCSActionPickerItem)initWithLabel:(id)a3 actionHandler:(id)a4;
- (BCSActionPickerItemDelegate)actionPickerItemDelegate;
- (int64_t)dataType;
- (void)didPerformAction;
- (void)performActionWithFBOptions:(id)a3;
@end

@implementation BCSActionPickerItem

+ (id)actionPickerItemWithLabel:(id)a3 actionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithLabel:v7 actionHandler:v6];

  return v8;
}

- (BCSActionPickerItem)initWithLabel:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = BCSActionPickerItem;
  v8 = [(BCSActionPickerItem *)&v13 init];
  if (v8)
  {
    v9 = [v6 copy];
    label = v8->_label;
    v8->_label = v9;

    objc_storeStrong(&v8->_action, a4);
    v11 = v8;
  }

  return v8;
}

- (BCSActionPickerItem)initWithLabel:(id)a3 actionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = BCSActionPickerItem;
  v8 = [(BCSActionPickerItem *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    label = v8->_label;
    v8->_label = v9;

    v11 = [v7 copy];
    actionHandler = v8->_actionHandler;
    v8->_actionHandler = v11;

    v13 = v8;
  }

  return v8;
}

- (BCSActionPickerItem)initWithAction:(id)a3
{
  v4 = a3;
  v5 = [v4 localizedDefaultActionDescription];
  v6 = [(BCSActionPickerItem *)self initWithLabel:v5 action:v4];

  return v6;
}

- (void)performActionWithFBOptions:(id)a3
{
  v4 = a3;
  if (self->_actionHandler)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSActionPickerItem: _actionHandler called in -performAction", v6, 2u);
    }

    (*(self->_actionHandler + 2))();
  }

  action = self->_action;
  if (action)
  {
    [(BCSAction *)action performActionWithOptions:v4 completion:&__block_literal_global];
  }

  [(BCSActionPickerItem *)self didPerformAction];
}

- (void)didPerformAction
{
  action = self->_action;
  if (action)
  {
    v3 = action;
    v4 = +[BCSAWDLogger sharedLogger];
    [v4 logBarcodeActivatedEventForAction:v3];
  }
}

- (int64_t)dataType
{
  v2 = [(BCSAction *)self->_action data];
  v3 = [v2 type];

  return v3;
}

- (BCSActionPickerItemDelegate)actionPickerItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionPickerItemDelegate);

  return WeakRetained;
}

@end