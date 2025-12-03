@interface SPCacheAsset
+ (id)fromProto:(id)proto;
+ (id)toProto:(id)proto;
- (SPCacheAsset)initWithName:(id)name size:(unint64_t)size state:(unint64_t)state accessDate:(id)date;
@end

@implementation SPCacheAsset

- (SPCacheAsset)initWithName:(id)name size:(unint64_t)size state:(unint64_t)state accessDate:(id)date
{
  nameCopy = name;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = SPCacheAsset;
  v13 = [(SPCacheAsset *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_key, name);
    v14->_state = state;
    v14->_size = size;
    [dateCopy timeIntervalSinceReferenceDate];
    v14->_accessDate = v15;
  }

  return v14;
}

+ (id)toProto:(id)proto
{
  protoCopy = proto;
  v4 = objc_alloc_init(SPProtoCacheAsset);
  v5 = [protoCopy key];
  [(SPProtoCacheAsset *)v4 setKey:v5];

  -[SPProtoCacheAsset setSize:](v4, "setSize:", [protoCopy size]);
  -[SPProtoCacheAsset setState:](v4, "setState:", [protoCopy state]);
  [protoCopy accessDate];
  v7 = v6;

  [(SPProtoCacheAsset *)v4 setAccessDate:v7];

  return v4;
}

+ (id)fromProto:(id)proto
{
  protoCopy = proto;
  v4 = objc_alloc_init(SPCacheAsset);
  v5 = [protoCopy key];
  [(SPCacheAsset *)v4 setKey:v5];

  -[SPCacheAsset setState:](v4, "setState:", [protoCopy state]);
  -[SPCacheAsset setSize:](v4, "setSize:", [protoCopy size]);
  [protoCopy accessDate];
  v7 = v6;

  [(SPCacheAsset *)v4 setAccessDate:v7];

  return v4;
}

@end