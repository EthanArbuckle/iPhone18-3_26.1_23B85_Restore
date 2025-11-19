@interface NSBasicObjectID
- (NSBasicObjectID)initWithObject:(id)a3;
- (id)_retainedURIString;
- (void)dealloc;
@end

@implementation NSBasicObjectID

- (NSBasicObjectID)initWithObject:(id)a3
{
  v7.receiver = self;
  v7.super_class = NSBasicObjectID;
  v4 = [(NSBasicObjectID *)&v7 init];
  if (v4)
  {
    v4->_referenceData = a3;
    Class = object_getClass(v4);
    atomic_fetch_add_explicit(object_getIndexedIvars(Class), 1u, memory_order_relaxed);
  }

  return v4;
}

- (void)dealloc
{
  self->_referenceData = 0;

  _PFDeallocateObject(self);
}

- (id)_retainedURIString
{
  v3 = [(_NSCoreManagedObjectID *)self _storeIdentifier];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1EF3F1768;
  }

  return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@://%@/%@/p%@", @"x-coredata", v4, objc_msgSend(-[_NSCoreManagedObjectID entity](self, "entity"), "name"), self->_referenceData];
}

@end