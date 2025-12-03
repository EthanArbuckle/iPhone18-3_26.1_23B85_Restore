@interface CacheEntry
- (id)description;
- (id)init:(id)init;
- (int64_t)compare:(id)compare;
@end

@implementation CacheEntry

- (id)init:(id)init
{
  initCopy = init;
  v9.receiver = self;
  v9.super_class = CacheEntry;
  v6 = [(CacheEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nsManagedObjectId, init);
    v7[2] = CFAbsoluteTimeGetCurrent();
  }

  return v7;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  [(CacheEntry *)self lastAccess];
  v6 = v5;
  [compareCopy lastAccess];
  if (v6 >= v7)
  {
    [(CacheEntry *)self lastAccess];
    v10 = v9;
    [compareCopy lastAccess];
    v8 = v10 > v11;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)description
{
  v3 = [NSString alloc];
  [(CacheEntry *)self lastAccess];
  v5 = [v3 initWithFormat:@"last access: %lf", v4];

  return v5;
}

@end