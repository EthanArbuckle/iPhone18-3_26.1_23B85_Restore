@interface CRLBidirectionalMap
- (CRLBidirectionalMap)init;
- (id)allKeys;
- (id)allValues;
- (id)copyWithZone:(_NSZone *)zone;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation CRLBidirectionalMap

- (CRLBidirectionalMap)init
{
  v8.receiver = self;
  v8.super_class = CRLBidirectionalMap;
  v2 = [(CRLBidirectionalMap *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    forward = v2->_forward;
    v2->_forward = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    backward = v2->_backward;
    v2->_backward = v5;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CRLBidirectionalMap);
  v5 = [(NSMutableDictionary *)self->_forward mutableCopy];
  forward = v4->_forward;
  v4->_forward = v5;

  v7 = [(NSMutableDictionary *)self->_backward mutableCopy];
  backward = v4->_backward;
  v4->_backward = v7;

  return v4;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  v5 = [(NSMutableDictionary *)self->_forward objectForKeyedSubscript:subscriptCopy];
  if (!v5)
  {
    v5 = [(NSMutableDictionary *)self->_backward objectForKeyedSubscript:subscriptCopy];
  }

  return v5;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  v7 = [(NSMutableDictionary *)self->_forward objectForKeyedSubscript:subscriptCopy];
  v8 = [(NSMutableDictionary *)self->_backward objectForKeyedSubscript:subscriptCopy];
  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_forward objectForKeyedSubscript:v8];
    if (v9)
    {
      [(NSMutableDictionary *)self->_forward setObject:0 forKeyedSubscript:v8];
    }

    if (objectCopy)
    {
      [(NSMutableDictionary *)self->_forward setObject:subscriptCopy forKeyedSubscript:objectCopy];
    }

    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  else
  {
    if (v7)
    {
      [(NSMutableDictionary *)self->_backward setObject:0 forKeyedSubscript:v7];
    }

    if (objectCopy)
    {
      [(NSMutableDictionary *)self->_backward setObject:subscriptCopy forKeyedSubscript:objectCopy];
    }

    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }
}

- (id)allKeys
{
  allKeys = [(NSMutableDictionary *)self->_forward allKeys];
  allKeys2 = [(NSMutableDictionary *)self->_backward allKeys];
  v5 = [allKeys arrayByAddingObjectsFromArray:allKeys2];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  v8 = v7;

  return v7;
}

- (id)allValues
{
  allValues = [(NSMutableDictionary *)self->_forward allValues];
  allValues2 = [(NSMutableDictionary *)self->_backward allValues];
  v5 = [allValues arrayByAddingObjectsFromArray:allValues2];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  v8 = v7;

  return v7;
}

@end