@interface QLEditedItem
- (QLEditedItem)initWithItem:(id)item editedFileURL:(id)l;
@end

@implementation QLEditedItem

- (QLEditedItem)initWithItem:(id)item editedFileURL:(id)l
{
  itemCopy = item;
  lCopy = l;
  v13.receiver = self;
  v13.super_class = QLEditedItem;
  v9 = [(QLEditedItem *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_item, item);
    objc_storeStrong(&v10->_editedFileURL, l);
    v11 = v10;
  }

  return v10;
}

@end