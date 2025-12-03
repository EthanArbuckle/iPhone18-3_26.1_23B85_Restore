@interface AMSSetItem
+ (id)setItemWithObject:(id)object hashKey:(id)key;
- (AMSSetItem)initWithObject:(id)object hashKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation AMSSetItem

+ (id)setItemWithObject:(id)object hashKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  v7 = [[AMSSetItem alloc] initWithObject:objectCopy hashKey:keyCopy];

  return v7;
}

- (AMSSetItem)initWithObject:(id)object hashKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = AMSSetItem;
  v9 = [(AMSSetItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_object, object);
    objc_storeStrong(&v10->_hashKey, key);
  }

  return v10;
}

- (unint64_t)hash
{
  hashKey = [(AMSSetItem *)self hashKey];
  v3 = [hashKey hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    hashKey = [equalCopy hashKey];
    hashKey2 = [(AMSSetItem *)self hashKey];
    v7 = [hashKey isEqualToString:hashKey2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end