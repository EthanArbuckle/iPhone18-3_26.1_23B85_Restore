@interface DNCPoolEntry
- (DNCPoolEntry)initWithDNC:(id)a3 cacheKey:(unsigned int)a4;
@end

@implementation DNCPoolEntry

- (DNCPoolEntry)initWithDNC:(id)a3 cacheKey:(unsigned int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = DNCPoolEntry;
  v8 = [(DNCPoolEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dnc, a3);
    v9->_cacheKey = a4;
  }

  return v9;
}

@end