@interface CRLBidirectionalMap
- (CRLBidirectionalMap)init;
- (id)allKeys;
- (id)allValues;
- (id)copyWithZone:(_NSZone *)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
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

- (id)copyWithZone:(_NSZone *)a3
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

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_forward objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [(NSMutableDictionary *)self->_backward objectForKeyedSubscript:v4];
  }

  return v5;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_forward objectForKeyedSubscript:v6];
  v8 = [(NSMutableDictionary *)self->_backward objectForKeyedSubscript:v6];
  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_forward objectForKeyedSubscript:v8];
    if (v9)
    {
      [(NSMutableDictionary *)self->_forward setObject:0 forKeyedSubscript:v8];
    }

    if (v10)
    {
      [(NSMutableDictionary *)self->_forward setObject:v6 forKeyedSubscript:v10];
    }

    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  else
  {
    if (v7)
    {
      [(NSMutableDictionary *)self->_backward setObject:0 forKeyedSubscript:v7];
    }

    if (v10)
    {
      [(NSMutableDictionary *)self->_backward setObject:v6 forKeyedSubscript:v10];
    }

    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }
}

- (id)allKeys
{
  v3 = [(NSMutableDictionary *)self->_forward allKeys];
  v4 = [(NSMutableDictionary *)self->_backward allKeys];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];
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
  v3 = [(NSMutableDictionary *)self->_forward allValues];
  v4 = [(NSMutableDictionary *)self->_backward allValues];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];
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