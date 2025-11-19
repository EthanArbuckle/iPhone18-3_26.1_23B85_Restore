@interface AMSLRUCacheItem
- (AMSLRUCacheItem)initWithKey:(id)a3 object:(id)a4;
@end

@implementation AMSLRUCacheItem

- (AMSLRUCacheItem)initWithKey:(id)a3 object:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = AMSLRUCacheItem;
  v7 = [(AMSDoubleLinkedListNode *)&v11 initWithObject:a4];
  if (v7)
  {
    v8 = [v6 copyWithZone:0];
    key = v7->_key;
    v7->_key = v8;
  }

  return v7;
}

@end