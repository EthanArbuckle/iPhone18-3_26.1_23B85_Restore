@interface _NSTemporaryObjectID2
+ (id)initWithEntity:(id)entity andUUIDString:(id)string;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)_setPersistentStore:(id)store;
- (void)dealloc;
@end

@implementation _NSTemporaryObjectID2

+ (id)initWithEntity:(id)entity andUUIDString:(id)string
{
  v19 = *MEMORY[0x1E69E9840];
  if ([string length] < 0x25)
  {
    uTF8String = [string UTF8String];
    intValue = 0;
  }

  else
  {
    v7 = [string substringToIndex:36];
    v8 = [string substringFromIndex:36];
    uTF8String = [v7 UTF8String];
    intValue = [v8 intValue];
  }

  memset(uu, 0, sizeof(uu));
  v11 = uuid_parse(uTF8String, uu);
  v12 = 0;
  if (!v11)
  {
    if (*uu == *(qword_1ED4BE848 + 8) && *&uu[8] == *(qword_1ED4BE848 + 16))
    {
      v12 = _PFAllocateObject(_NSTemporaryObjectID_Default_Class, 0);
    }

    else
    {
      v12 = _PFAllocateObject(self, 0);
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

    v12[2] = entity;
    *(v12 + 3) = intValue;
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

- (void)_setPersistentStore:(id)store
{
  store = self->_store;
  if (store != store)
  {

    self->_store = store;
  }
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  Class = object_getClass(self);
  if (Class != objc_opt_class() || self->super._counter != *(equal + 3))
  {
    return 0;
  }

  uuid128 = self->_uuid128;
  if (uuid128 == *(equal + 4))
  {
    return 1;
  }

  return [(_NS128bitWrapper *)uuid128 isEqual:?];
}

@end