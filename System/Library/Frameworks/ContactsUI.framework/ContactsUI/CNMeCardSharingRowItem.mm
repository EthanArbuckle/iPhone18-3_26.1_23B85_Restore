@interface CNMeCardSharingRowItem
- (CNMeCardSharingRowItem)initWithLabel:(id)label accessoryView:(id)view confirmationHandler:(id)handler;
@end

@implementation CNMeCardSharingRowItem

- (CNMeCardSharingRowItem)initWithLabel:(id)label accessoryView:(id)view confirmationHandler:(id)handler
{
  labelCopy = label;
  viewCopy = view;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = CNMeCardSharingRowItem;
  v12 = [(CNMeCardSharingRowItem *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_label, label);
    objc_storeStrong(&v13->_accessoryView, view);
    v14 = [handlerCopy copy];
    confirmationHandler = v13->_confirmationHandler;
    v13->_confirmationHandler = v14;

    v16 = v13;
  }

  return v13;
}

@end