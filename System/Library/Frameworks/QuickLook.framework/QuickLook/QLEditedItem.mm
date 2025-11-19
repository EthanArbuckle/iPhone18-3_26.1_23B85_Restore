@interface QLEditedItem
- (QLEditedItem)initWithItem:(id)a3 editedFileURL:(id)a4;
@end

@implementation QLEditedItem

- (QLEditedItem)initWithItem:(id)a3 editedFileURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = QLEditedItem;
  v9 = [(QLEditedItem *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_item, a3);
    objc_storeStrong(&v10->_editedFileURL, a4);
    v11 = v10;
  }

  return v10;
}

@end