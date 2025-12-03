@interface AMSLRUCacheItem
- (AMSLRUCacheItem)initWithKey:(id)key object:(id)object;
@end

@implementation AMSLRUCacheItem

- (AMSLRUCacheItem)initWithKey:(id)key object:(id)object
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = AMSLRUCacheItem;
  v7 = [(AMSDoubleLinkedListNode *)&v11 initWithObject:object];
  if (v7)
  {
    v8 = [keyCopy copyWithZone:0];
    key = v7->_key;
    v7->_key = v8;
  }

  return v7;
}

@end