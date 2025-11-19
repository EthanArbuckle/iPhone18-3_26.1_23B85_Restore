@interface BSIntegerMap
- (BOOL)isEqual:(id)a3;
- (BSIntegerMap)initWithCapacity:(unint64_t)a3;
- (id)_initWithMapTable:(void *)a3 zeroIndexValue:;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation BSIntegerMap

- (BSIntegerMap)initWithCapacity:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:1282 valueOptions:0 capacity:a3];
  v5 = [(BSIntegerMap *)&self->super.isa _initWithMapTable:v4 zeroIndexValue:0];

  return v5;
}

- (id)_initWithMapTable:(void *)a3 zeroIndexValue:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = BSIntegerMap;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [BSMutableIntegerMap allocWithZone:?];
  v6 = [(NSMapTable *)self->_mapTable copyWithZone:a3];
  v7 = [(BSIntegerMap *)&v5->super.super.isa _initWithMapTable:v6 zeroIndexValue:self->_zeroIndexValue];

  return v7;
}

@end