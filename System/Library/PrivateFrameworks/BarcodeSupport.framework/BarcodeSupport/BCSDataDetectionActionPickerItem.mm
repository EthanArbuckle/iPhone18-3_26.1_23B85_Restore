@interface BCSDataDetectionActionPickerItem
- (BCSDataDetectionActionPickerItem)initWithAction:(id)action ddAction:(id)ddAction;
- (BOOL)isCopyActionItem;
- (NSString)icsString;
- (id)icon;
- (void)action:(id)action didDismissAlertController:(id)controller;
- (void)performActionWithFBOptions:(id)options;
@end

@implementation BCSDataDetectionActionPickerItem

- (BCSDataDetectionActionPickerItem)initWithAction:(id)action ddAction:(id)ddAction
{
  ddActionCopy = ddAction;
  actionCopy = action;
  localizedName = [ddActionCopy localizedName];
  v13.receiver = self;
  v13.super_class = BCSDataDetectionActionPickerItem;
  v10 = [(BCSActionPickerItem *)&v13 initWithLabel:localizedName action:actionCopy];

  if (v10)
  {
    objc_storeStrong(&v10->_ddAction, ddAction);
    v11 = v10;
  }

  return v10;
}

- (BOOL)isCopyActionItem
{
  ddAction = self->_ddAction;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = getDDCopyActionClass_softClass;
  v10 = getDDCopyActionClass_softClass;
  if (!getDDCopyActionClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getDDCopyActionClass_block_invoke;
    v6[3] = &unk_278CFE620;
    v6[4] = &v7;
    __getDDCopyActionClass_block_invoke(v6);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);
  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

- (id)icon
{
  icon = [(DDAction *)self->_ddAction icon];
  if ([icon isSymbolImage])
  {
    v3 = icon;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)icsString
{
  context = [(DDAction *)self->_ddAction context];
  v3 = [context objectForKeyedSubscript:@"ICS"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)performActionWithFBOptions:(id)options
{
  optionsCopy = options;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSDataDetectionActionPickerItem: performing action", v10, 2u);
  }

  actionPickerItemDelegate = [(BCSActionPickerItem *)self actionPickerItemDelegate];
  v6 = [actionPickerItemDelegate actionPickerItemAlertController:self];

  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v7 = getDDDetectionControllerClass_softClass;
  v14 = getDDDetectionControllerClass_softClass;
  if (!getDDDetectionControllerClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getDDDetectionControllerClass_block_invoke;
    v10[3] = &unk_278CFE620;
    v10[4] = &v11;
    __getDDDetectionControllerClass_block_invoke(v10);
    v7 = v12[3];
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);
  sharedController = [v7 sharedController];
  [sharedController performAction:self->_ddAction fromAlertController:v6 interactionDelegate:self];

  [(BCSActionPickerItem *)self didPerformAction];
}

- (void)action:(id)action didDismissAlertController:(id)controller
{
  controllerCopy = controller;
  actionPickerItemDelegate = [(BCSActionPickerItem *)self actionPickerItemDelegate];
  [actionPickerItemDelegate actionPickerItem:self didDismissAlertController:controllerCopy];
}

@end