@interface BCSActionPickerItem
+ (id)actionPickerItemWithLabel:(id)label actionHandler:(id)handler;
- (BCSActionPickerItem)initWithAction:(id)action;
- (BCSActionPickerItem)initWithLabel:(id)label action:(id)action;
- (BCSActionPickerItem)initWithLabel:(id)label actionHandler:(id)handler;
- (BCSActionPickerItemDelegate)actionPickerItemDelegate;
- (int64_t)dataType;
- (void)didPerformAction;
- (void)performActionWithFBOptions:(id)options;
@end

@implementation BCSActionPickerItem

+ (id)actionPickerItemWithLabel:(id)label actionHandler:(id)handler
{
  handlerCopy = handler;
  labelCopy = label;
  v8 = [[self alloc] initWithLabel:labelCopy actionHandler:handlerCopy];

  return v8;
}

- (BCSActionPickerItem)initWithLabel:(id)label action:(id)action
{
  labelCopy = label;
  actionCopy = action;
  v13.receiver = self;
  v13.super_class = BCSActionPickerItem;
  v8 = [(BCSActionPickerItem *)&v13 init];
  if (v8)
  {
    v9 = [labelCopy copy];
    label = v8->_label;
    v8->_label = v9;

    objc_storeStrong(&v8->_action, action);
    v11 = v8;
  }

  return v8;
}

- (BCSActionPickerItem)initWithLabel:(id)label actionHandler:(id)handler
{
  labelCopy = label;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = BCSActionPickerItem;
  v8 = [(BCSActionPickerItem *)&v15 init];
  if (v8)
  {
    v9 = [labelCopy copy];
    label = v8->_label;
    v8->_label = v9;

    v11 = [handlerCopy copy];
    actionHandler = v8->_actionHandler;
    v8->_actionHandler = v11;

    v13 = v8;
  }

  return v8;
}

- (BCSActionPickerItem)initWithAction:(id)action
{
  actionCopy = action;
  localizedDefaultActionDescription = [actionCopy localizedDefaultActionDescription];
  v6 = [(BCSActionPickerItem *)self initWithLabel:localizedDefaultActionDescription action:actionCopy];

  return v6;
}

- (void)performActionWithFBOptions:(id)options
{
  optionsCopy = options;
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
    [(BCSAction *)action performActionWithOptions:optionsCopy completion:&__block_literal_global];
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
  data = [(BCSAction *)self->_action data];
  type = [data type];

  return type;
}

- (BCSActionPickerItemDelegate)actionPickerItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionPickerItemDelegate);

  return WeakRetained;
}

@end