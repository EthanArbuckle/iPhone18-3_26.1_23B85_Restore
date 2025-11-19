@interface CacheEntry
- (id)description;
- (id)init:(id)a3;
- (int64_t)compare:(id)a3;
@end

@implementation CacheEntry

- (id)init:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CacheEntry;
  v6 = [(CacheEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nsManagedObjectId, a3);
    v7[2] = CFAbsoluteTimeGetCurrent();
  }

  return v7;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  [(CacheEntry *)self lastAccess];
  v6 = v5;
  [v4 lastAccess];
  if (v6 >= v7)
  {
    [(CacheEntry *)self lastAccess];
    v10 = v9;
    [v4 lastAccess];
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