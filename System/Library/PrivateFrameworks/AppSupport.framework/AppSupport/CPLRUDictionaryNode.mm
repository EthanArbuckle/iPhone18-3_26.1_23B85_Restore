@interface CPLRUDictionaryNode
- (CPLRUDictionaryNode)initWithKey:(id)key object:(id)object;
- (void)dealloc;
@end

@implementation CPLRUDictionaryNode

- (CPLRUDictionaryNode)initWithKey:(id)key object:(id)object
{
  v8.receiver = self;
  v8.super_class = CPLRUDictionaryNode;
  v6 = [(CPLRUDictionaryNode *)&v8 init];
  if (v6)
  {
    v6->_key = key;
    v6->_object = object;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CPLRUDictionaryNode;
  [(CPLRUDictionaryNode *)&v3 dealloc];
}

@end