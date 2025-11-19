@interface SPCacheAsset
+ (id)fromProto:(id)a3;
+ (id)toProto:(id)a3;
- (SPCacheAsset)initWithName:(id)a3 size:(unint64_t)a4 state:(unint64_t)a5 accessDate:(id)a6;
@end

@implementation SPCacheAsset

- (SPCacheAsset)initWithName:(id)a3 size:(unint64_t)a4 state:(unint64_t)a5 accessDate:(id)a6
{
  v11 = a3;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = SPCacheAsset;
  v13 = [(SPCacheAsset *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_key, a3);
    v14->_state = a5;
    v14->_size = a4;
    [v12 timeIntervalSinceReferenceDate];
    v14->_accessDate = v15;
  }

  return v14;
}

+ (id)toProto:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SPProtoCacheAsset);
  v5 = [v3 key];
  [(SPProtoCacheAsset *)v4 setKey:v5];

  -[SPProtoCacheAsset setSize:](v4, "setSize:", [v3 size]);
  -[SPProtoCacheAsset setState:](v4, "setState:", [v3 state]);
  [v3 accessDate];
  v7 = v6;

  [(SPProtoCacheAsset *)v4 setAccessDate:v7];

  return v4;
}

+ (id)fromProto:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SPCacheAsset);
  v5 = [v3 key];
  [(SPCacheAsset *)v4 setKey:v5];

  -[SPCacheAsset setState:](v4, "setState:", [v3 state]);
  -[SPCacheAsset setSize:](v4, "setSize:", [v3 size]);
  [v3 accessDate];
  v7 = v6;

  [(SPCacheAsset *)v4 setAccessDate:v7];

  return v4;
}

@end