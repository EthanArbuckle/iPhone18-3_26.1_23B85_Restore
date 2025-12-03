@interface BKHistoryEntity
- (BKHistoryEntity)init;
- (id)description;
- (int64_t)pageForLookupKey:(id)key;
- (void)setPage:(int64_t)page forLookupKey:(id)key;
@end

@implementation BKHistoryEntity

- (BKHistoryEntity)init
{
  v6.receiver = self;
  v6.super_class = BKHistoryEntity;
  v2 = [(BKHistoryEntity *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    pagination = v2->_pagination;
    v2->_pagination = v3;
  }

  return v2;
}

- (int64_t)pageForLookupKey:(id)key
{
  keyCopy = key;
  pagination = [(BKHistoryEntity *)self pagination];
  v6 = [pagination objectForKey:keyCopy];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return intValue;
}

- (void)setPage:(int64_t)page forLookupKey:(id)key
{
  keyCopy = key;
  v6 = [keyCopy length];
  if ((page - 1) <= 0x7FFFFFFFFFFFFFFDLL && v6)
  {
    v7 = [[NSNumber alloc] initWithInteger:page];
    pagination = [(BKHistoryEntity *)self pagination];
    [pagination setObject:v7 forKey:keyCopy];
  }
}

- (id)description
{
  pagination = [(BKHistoryEntity *)self pagination];
  allValues = [pagination allValues];
  lastObject = [allValues lastObject];

  v6 = objc_opt_class();
  location = [(BKHistoryEntity *)self location];
  v8 = objc_opt_class();
  location2 = [(BKHistoryEntity *)self location];
  ordinal = [location2 ordinal];
  pagination2 = [(BKHistoryEntity *)self pagination];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p>(Location: %@ {Ordinal: %d}-- Pagination Keys: %d -- {Last Page Value: %@})", v6, self, v8, ordinal, [pagination2 count], lastObject);

  return v12;
}

@end