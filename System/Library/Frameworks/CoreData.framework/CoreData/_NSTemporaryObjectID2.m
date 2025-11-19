@interface _NSTemporaryObjectID2
+ (id)initWithEntity:(id)a3 andUUIDString:(id)a4;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)_setPersistentStore:(id)a3;
- (void)dealloc;
@end

@implementation _NSTemporaryObjectID2

+ (id)initWithEntity:(id)a3 andUUIDString:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if ([a4 length] < 0x25)
  {
    v9 = [a4 UTF8String];
    v10 = 0;
  }

  else
  {
    v7 = [a4 substringToIndex:36];
    v8 = [a4 substringFromIndex:36];
    v9 = [v7 UTF8String];
    v10 = [v8 intValue];
  }

  memset(uu, 0, sizeof(uu));
  v11 = uuid_parse(v9, uu);
  v12 = 0;
  if (!v11)
  {
    if (*uu == *(qword_1ED4BE848 + 8) && *&uu[8] == *(qword_1ED4BE848 + 16))
    {
      v12 = _PFAllocateObject(_NSTemporaryObjectID_Default_Class, 0);
    }

    else
    {
      v12 = _PFAllocateObject(a1, 0);
      v14 = [_NS128bitWrapper alloc];
      if (v14)
      {
        v17.receiver = v14;
        v17.super_class = _NS128bitWrapper;
        v14 = objc_msgSendSuper2(&v17, sel_init);
        if (v14)
        {
          v14->bits = *uu;
        }
      }

      v12[4] = v14;
    }

    v12[2] = a3;
    *(v12 + 3) = v10;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)dealloc
{
  self->_store = 0;
  uuid128 = self->_uuid128;
  if (uuid128 != qword_1ED4BE848)
  {
  }

  self->_uuid128 = 0;

  _PFDeallocateObject(self);
}

- (unint64_t)hash
{
  counter = self->super._counter;
  if (counter)
  {
    return __rbit32(counter);
  }

  else
  {
    return [(_NS128bitWrapper *)self->_uuid128 hash];
  }
}

- (void)_setPersistentStore:(id)a3
{
  store = self->_store;
  if (store != a3)
  {

    self->_store = a3;
  }
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  Class = object_getClass(self);
  if (Class != objc_opt_class() || self->super._counter != *(a3 + 3))
  {
    return 0;
  }

  uuid128 = self->_uuid128;
  if (uuid128 == *(a3 + 4))
  {
    return 1;
  }

  return [(_NS128bitWrapper *)uuid128 isEqual:?];
}

@end