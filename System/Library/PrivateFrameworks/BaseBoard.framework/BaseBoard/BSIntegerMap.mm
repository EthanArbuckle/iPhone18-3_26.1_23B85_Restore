@interface BSIntegerMap
- (BOOL)isEqual:(id)equal;
- (BSIntegerMap)initWithCapacity:(unint64_t)capacity;
- (id)_initWithMapTable:(void *)table zeroIndexValue:;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation BSIntegerMap

- (BSIntegerMap)initWithCapacity:(unint64_t)capacity
{
  v4 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:1282 valueOptions:0 capacity:capacity];
  v5 = [(BSIntegerMap *)&self->super.isa _initWithMapTable:v4 zeroIndexValue:0];

  return v5;
}

- (id)_initWithMapTable:(void *)table zeroIndexValue:
{
  v6 = a2;
  tableCopy = table;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = BSIntegerMap;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(self + 2, table);
    }
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(NSMapTable *)self->_mapTable isEqual:v5->_mapTable])
      {
        zeroIndexValue = self->_zeroIndexValue;
        v7 = v5->_zeroIndexValue;
        if (zeroIndexValue == v7)
        {
          v8 = 1;
        }

        else
        {
          v8 = 0;
          if (zeroIndexValue && v7)
          {
            v8 = [zeroIndexValue isEqual:?];
          }
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [BSMutableIntegerMap allocWithZone:?];
  v6 = [(NSMapTable *)self->_mapTable copyWithZone:zone];
  v7 = [(BSIntegerMap *)&v5->super.super.isa _initWithMapTable:v6 zeroIndexValue:self->_zeroIndexValue];

  return v7;
}

@end