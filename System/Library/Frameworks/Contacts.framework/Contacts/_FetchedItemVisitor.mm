@interface _FetchedItemVisitor
- (NSArray)visitedItems;
- (_FetchedItemVisitor)init;
- (void)visitImage:(id)a3;
- (void)visitPoster:(id)a3;
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

- (void)visitImage:(id)a3
{
  v4 = a3;
  v5 = [[CNContactImage alloc] initWithManagedObject:v4];

  [(NSMutableArray *)self->_items _cn_addNonNilObject:v5];
}

- (void)visitPoster:(id)a3
{
  v4 = a3;
  v5 = [[CNContactPoster alloc] initWithManagedObject:v4];

  [(NSMutableArray *)self->_items _cn_addNonNilObject:v5];
}

@end