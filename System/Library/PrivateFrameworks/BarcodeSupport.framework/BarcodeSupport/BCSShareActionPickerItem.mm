@interface BCSShareActionPickerItem
- (BCSShareActionPickerItem)initWithAction:(id)action;
- (id)icon;
- (void)performActionWithFBOptions:(id)options;
@end

@implementation BCSShareActionPickerItem

- (BCSShareActionPickerItem)initWithAction:(id)action
{
  actionCopy = action;
  v12.receiver = self;
  v12.super_class = BCSShareActionPickerItem;
  v5 = [(BCSActionPickerItem *)&v12 initWithAction:actionCopy];
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    itemsToShare = v5->_itemsToShare;
    v5->_itemsToShare = array;

    v8 = v5->_itemsToShare;
    urlThatCanBeOpened = [actionCopy urlThatCanBeOpened];
    [(NSMutableArray *)v8 addObject:urlThatCanBeOpened];

    v10 = v5;
  }

  return v5;
}

- (id)icon
{
  UIImageClass = getUIImageClass();

  return [UIImageClass systemImageNamed:@"square.and.arrow.up"];
}

- (void)performActionWithFBOptions:(id)options
{
  v4 = [objc_alloc(getUIActivityViewControllerClass()) initWithActivityItems:self->_itemsToShare applicationActivities:0];
  popoverPresentationController = [v4 popoverPresentationController];
  action = [(BCSActionPickerItem *)self action];
  delegate = [action delegate];
  v8 = [delegate presentingViewControllerForAction:action];

  if (v8)
  {
    [popoverPresentationController _setCentersPopoverIfSourceViewNotSet:1];
    [v8 presentViewController:v4 animated:1 completion:0];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [BCSShareActionPickerItem performActionWithFBOptions:];
  }
}

@end