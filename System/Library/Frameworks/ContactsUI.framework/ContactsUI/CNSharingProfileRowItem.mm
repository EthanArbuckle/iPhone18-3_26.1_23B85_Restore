@interface CNSharingProfileRowItem
- (CNSharingProfileRowItem)initWithLabel:(id)label accessoryView:(id)view;
@end

@implementation CNSharingProfileRowItem

- (CNSharingProfileRowItem)initWithLabel:(id)label accessoryView:(id)view
{
  labelCopy = label;
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = CNSharingProfileRowItem;
  v9 = [(CNSharingProfileRowItem *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_label, label);
    objc_storeStrong(&v10->_accessoryView, view);
    v11 = v10;
  }

  return v10;
}

@end