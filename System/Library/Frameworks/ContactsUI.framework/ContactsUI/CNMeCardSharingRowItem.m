@interface CNMeCardSharingRowItem
- (CNMeCardSharingRowItem)initWithLabel:(id)a3 accessoryView:(id)a4 confirmationHandler:(id)a5;
@end

@implementation CNMeCardSharingRowItem

- (CNMeCardSharingRowItem)initWithLabel:(id)a3 accessoryView:(id)a4 confirmationHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = CNMeCardSharingRowItem;
  v12 = [(CNMeCardSharingRowItem *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_label, a3);
    objc_storeStrong(&v13->_accessoryView, a4);
    v14 = [v11 copy];
    confirmationHandler = v13->_confirmationHandler;
    v13->_confirmationHandler = v14;

    v16 = v13;
  }

  return v13;
}

@end