@interface SCNMTLArgumentBinder
- (SCNMTLArgumentBinder)initWithBlock:(id)block frequency:(int)frequency needsRenderResource:(BOOL)resource;
- (void)dealloc;
@end

@implementation SCNMTLArgumentBinder

- (SCNMTLArgumentBinder)initWithBlock:(id)block frequency:(int)frequency needsRenderResource:(BOOL)resource
{
  v10.receiver = self;
  v10.super_class = SCNMTLArgumentBinder;
  v8 = [(SCNMTLArgumentBinder *)&v10 init];
  if (v8)
  {
    v8->_block = _Block_copy(block);
    v8->_frequency = frequency;
    v8->_needsRenderResource = resource;
  }

  return v8;
}

- (void)dealloc
{
  _Block_release(self->_block);
  v3.receiver = self;
  v3.super_class = SCNMTLArgumentBinder;
  [(SCNMTLArgumentBinder *)&v3 dealloc];
}

@end