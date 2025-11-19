@interface BCSShareActionPickerItem
- (BCSShareActionPickerItem)initWithAction:(id)a3;
- (id)icon;
- (void)performActionWithFBOptions:(id)a3;
@end

@implementation BCSShareActionPickerItem

- (BCSShareActionPickerItem)initWithAction:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BCSShareActionPickerItem;
  v5 = [(BCSActionPickerItem *)&v12 initWithAction:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    itemsToShare = v5->_itemsToShare;
    v5->_itemsToShare = v6;

    v8 = v5->_itemsToShare;
    v9 = [v4 urlThatCanBeOpened];
    [(NSMutableArray *)v8 addObject:v9];

    v10 = v5;
  }

  return v5;
}

- (id)icon
{
  UIImageClass = getUIImageClass();

  return [UIImageClass systemImageNamed:@"square.and.arrow.up"];
}

- (void)performActionWithFBOptions:(id)a3
{
  v4 = [objc_alloc(getUIActivityViewControllerClass()) initWithActivityItems:self->_itemsToShare applicationActivities:0];
  v5 = [v4 popoverPresentationController];
  v6 = [(BCSActionPickerItem *)self action];
  v7 = [v6 delegate];
  v8 = [v7 presentingViewControllerForAction:v6];

  if (v8)
  {
    [v5 _setCentersPopoverIfSourceViewNotSet:1];
    [v8 presentViewController:v4 animated:1 completion:0];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [BCSShareActionPickerItem performActionWithFBOptions:];
  }
}

@end