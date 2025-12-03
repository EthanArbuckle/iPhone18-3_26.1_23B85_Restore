@interface _FetchedItemVisitor
- (NSArray)visitedItems;
- (_FetchedItemVisitor)init;
- (void)visitImage:(id)image;
- (void)visitPoster:(id)poster;
@end

@implementation _FetchedItemVisitor

- (NSArray)visitedItems
{
  v2 = [(NSMutableArray *)self->_items copy];

  return v2;
}

- (_FetchedItemVisitor)init
{
  v7.receiver = self;
  v7.super_class = _FetchedItemVisitor;
  v2 = [(_FetchedItemVisitor *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    items = v2->_items;
    v2->_items = v3;

    v5 = v2;
  }

  return v2;
}

- (void)visitImage:(id)image
{
  imageCopy = image;
  v5 = [[CNContactImage alloc] initWithManagedObject:imageCopy];

  [(NSMutableArray *)self->_items _cn_addNonNilObject:v5];
}

- (void)visitPoster:(id)poster
{
  posterCopy = poster;
  v5 = [[CNContactPoster alloc] initWithManagedObject:posterCopy];

  [(NSMutableArray *)self->_items _cn_addNonNilObject:v5];
}

@end