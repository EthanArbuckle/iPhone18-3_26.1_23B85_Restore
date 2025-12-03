@interface TKSharedResource
- (TKSharedResource)initWithSlot:(id)slot;
- (void)dealloc;
- (void)invalidate;
@end

@implementation TKSharedResource

- (void)dealloc
{
  [(TKSharedResourceSlot *)self->_slot releaseResourceImmediatelly:0];
  v3.receiver = self;
  v3.super_class = TKSharedResource;
  [(TKSharedResource *)&v3 dealloc];
}

- (TKSharedResource)initWithSlot:(id)slot
{
  slotCopy = slot;
  v9.receiver = self;
  v9.super_class = TKSharedResource;
  v6 = [(TKSharedResource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_slot, slot);
  }

  return v7;
}

- (void)invalidate
{
  [(TKSharedResourceSlot *)self->_slot releaseResourceImmediatelly:1];
  slot = self->_slot;
  self->_slot = 0;
}

@end