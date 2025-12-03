@interface STUsageMediaCollection
- (void)removeItemAtIndex:(unint64_t)index;
- (void)setItemSizes:(id)sizes;
- (void)setItems:(id)items;
- (void)sortItemsByMediaKey:(id)key;
@end

@implementation STUsageMediaCollection

- (void)removeItemAtIndex:(unint64_t)index
{
  v5 = [(NSMutableArray *)self->_itemSizes objectAtIndexedSubscript:?];
  self->_totalSize -= [v5 longLongValue];

  [(NSMutableArray *)self->_items removeObjectAtIndex:index];
  itemSizes = self->_itemSizes;

  [(NSMutableArray *)itemSizes removeObjectAtIndex:index];
}

- (void)sortItemsByMediaKey:(id)key
{
  if ([(STUsageMediaCollection *)self isGrouped])
  {
    v4 = [NSDictionary dictionaryWithObjects:self->_itemSizes forKeys:self->_items];
    items = self->_items;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_C4A4;
    v8[3] = &unk_2CDD8;
    v9 = v4;
    v6 = v4;
    [(NSMutableArray *)items sortUsingComparator:v8];
    [(NSMutableArray *)self->_itemSizes sortUsingComparator:&stru_2CE18];
  }

  else
  {
    v7 = self->_items;

    [(NSMutableArray *)v7 sortUsingComparator:&stru_2CE38];
  }
}

- (void)setItems:(id)items
{
  if (self->_items != items)
  {
    v5 = [items mutableCopy];
    items = self->_items;
    self->_items = v5;

    _objc_release_x1();
  }
}

- (void)setItemSizes:(id)sizes
{
  if (self->_itemSizes != sizes)
  {
    v5 = [sizes mutableCopy];
    itemSizes = self->_itemSizes;
    self->_itemSizes = v5;

    _objc_release_x1();
  }
}

@end