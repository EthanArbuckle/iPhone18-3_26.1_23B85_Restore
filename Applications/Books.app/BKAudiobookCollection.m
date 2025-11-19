@interface BKAudiobookCollection
- (BKAudiobookCollection)initWithStoreID:(id)a3;
- (NSArray)items;
- (id)description;
- (void)addItem:(id)a3;
@end

@implementation BKAudiobookCollection

- (BKAudiobookCollection)initWithStoreID:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BKAudiobookCollection;
  v6 = [(BKAudiobookCollection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeID, a3);
    v8 = +[NSMutableArray array];
    mutableItems = v7->_mutableItems;
    v7->_mutableItems = v8;
  }

  return v7;
}

- (NSArray)items
{
  v2 = [(BKAudiobookCollection *)self mutableItems];
  v3 = [v2 copy];

  return v3;
}

- (void)addItem:(id)a3
{
  v4 = a3;
  v5 = [(BKAudiobookCollection *)self mutableItems];
  [v5 addObject:v4];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BKAudiobookCollection *)self items];
  v6 = [NSString stringWithFormat:@"<%@(%p) %@>", v4, self, v5];

  return v6;
}

@end