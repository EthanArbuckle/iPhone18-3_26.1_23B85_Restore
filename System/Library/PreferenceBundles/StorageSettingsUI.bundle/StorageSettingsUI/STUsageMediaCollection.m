@interface STUsageMediaCollection
- (void)removeItemAtIndex:(unint64_t)a3;
- (void)setItemSizes:(id)a3;
- (void)setItems:(id)a3;
- (void)sortItemsByMediaKey:(id)a3;
@end

@implementation STUsageMediaCollection

- (void)removeItemAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableArray *)self->_itemSizes objectAtIndexedSubscript:?];
  self->_totalSize -= [v5 longLongValue];

  [(NSMutableArray *)self->_items removeObjectAtIndex:a3];
  itemSizes = self->_itemSizes;

  [(NSMutableArray *)itemSizes removeObjectAtIndex:a3];
}

- (void)sortItemsByMediaKey:(id)a3
{
  if ([(STUsageMediaCollection *)self isGrouped])
  {
    v4 = [NSDictionary dictionaryWithObjects:self->_itemSizes forKeys:self->_items];
    items = self->_items;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_C828;
    v8[3] = &unk_AA8F8;
    v9 = v4;
    v6 = v4;
    [(NSMutableArray *)items sortUsingComparator:v8];
    [(NSMutableArray *)self->_itemSizes sortUsingComparator:&stru_AA938];
  }

  else
  {
    v7 = self->_items;

    [(NSMutableArray *)v7 sortUsingComparator:&stru_AA958];
  }
}

- (void)setItems:(id)a3
{
  if (self->_items != a3)
  {
    v5 = [a3 mutableCopy];
    items = self->_items;
    self->_items = v5;

    _objc_release_x1();
  }
}

- (void)setItemSizes:(id)a3
{
  if (self->_itemSizes != a3)
  {
    v5 = [a3 mutableCopy];
    itemSizes = self->_itemSizes;
    self->_itemSizes = v5;

    _objc_release_x1();
  }
}

@end