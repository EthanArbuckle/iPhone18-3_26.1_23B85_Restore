@interface BKHistoryEntity
- (BKHistoryEntity)init;
- (id)description;
- (int64_t)pageForLookupKey:(id)a3;
- (void)setPage:(int64_t)a3 forLookupKey:(id)a4;
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

- (int64_t)pageForLookupKey:(id)a3
{
  v4 = a3;
  v5 = [(BKHistoryEntity *)self pagination];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 intValue];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (void)setPage:(int64_t)a3 forLookupKey:(id)a4
{
  v9 = a4;
  v6 = [v9 length];
  if ((a3 - 1) <= 0x7FFFFFFFFFFFFFFDLL && v6)
  {
    v7 = [[NSNumber alloc] initWithInteger:a3];
    v8 = [(BKHistoryEntity *)self pagination];
    [v8 setObject:v7 forKey:v9];
  }
}

- (id)description
{
  v3 = [(BKHistoryEntity *)self pagination];
  v4 = [v3 allValues];
  v5 = [v4 lastObject];

  v6 = objc_opt_class();
  v7 = [(BKHistoryEntity *)self location];
  v8 = objc_opt_class();
  v9 = [(BKHistoryEntity *)self location];
  v10 = [v9 ordinal];
  v11 = [(BKHistoryEntity *)self pagination];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p>(Location: %@ {Ordinal: %d}-- Pagination Keys: %d -- {Last Page Value: %@})", v6, self, v8, v10, [v11 count], v5);

  return v12;
}

@end