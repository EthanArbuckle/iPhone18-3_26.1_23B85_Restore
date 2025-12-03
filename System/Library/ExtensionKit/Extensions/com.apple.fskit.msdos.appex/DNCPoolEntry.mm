@interface DNCPoolEntry
- (DNCPoolEntry)initWithDNC:(id)c cacheKey:(unsigned int)key;
@end

@implementation DNCPoolEntry

- (DNCPoolEntry)initWithDNC:(id)c cacheKey:(unsigned int)key
{
  cCopy = c;
  v11.receiver = self;
  v11.super_class = DNCPoolEntry;
  v8 = [(DNCPoolEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dnc, c);
    v9->_cacheKey = key;
  }

  return v9;
}

@end