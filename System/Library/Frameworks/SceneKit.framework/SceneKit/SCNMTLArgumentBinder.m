@interface SCNMTLArgumentBinder
- (SCNMTLArgumentBinder)initWithBlock:(id)a3 frequency:(int)a4 needsRenderResource:(BOOL)a5;
- (void)dealloc;
@end

@implementation SCNMTLArgumentBinder

- (SCNMTLArgumentBinder)initWithBlock:(id)a3 frequency:(int)a4 needsRenderResource:(BOOL)a5
{
  v10.receiver = self;
  v10.super_class = SCNMTLArgumentBinder;
  v8 = [(SCNMTLArgumentBinder *)&v10 init];
  if (v8)
  {
    v8->_block = _Block_copy(a3);
    v8->_frequency = a4;
    v8->_needsRenderResource = a5;
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