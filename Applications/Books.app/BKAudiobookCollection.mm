@interface BKAudiobookCollection
- (BKAudiobookCollection)initWithStoreID:(id)d;
- (NSArray)items;
- (id)description;
- (void)addItem:(id)item;
@end

@implementation BKAudiobookCollection

- (BKAudiobookCollection)initWithStoreID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = BKAudiobookCollection;
  v6 = [(BKAudiobookCollection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeID, d);
    v8 = +[NSMutableArray array];
    mutableItems = v7->_mutableItems;
    v7->_mutableItems = v8;
  }

  return v7;
}

- (NSArray)items
{
  mutableItems = [(BKAudiobookCollection *)self mutableItems];
  v3 = [mutableItems copy];

  return v3;
}

- (void)addItem:(id)item
{
  itemCopy = item;
  mutableItems = [(BKAudiobookCollection *)self mutableItems];
  [mutableItems addObject:itemCopy];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  items = [(BKAudiobookCollection *)self items];
  v6 = [NSString stringWithFormat:@"<%@(%p) %@>", v4, self, items];

  return v6;
}

@end