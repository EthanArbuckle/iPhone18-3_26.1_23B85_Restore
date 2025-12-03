@interface _MTLIOScratchBuffer
- (id)init:(MTLIOScratchBufferPrivate *)init;
- (void)dealloc;
@end

@implementation _MTLIOScratchBuffer

- (id)init:(MTLIOScratchBufferPrivate *)init
{
  v9.receiver = self;
  v9.super_class = _MTLIOScratchBuffer;
  v4 = [(_MTLIOScratchBuffer *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_priv = init;
    v6 = init->var1;
    v7 = v5->_priv->var2;
  }

  return v5;
}

- (void)dealloc
{
  priv = self->_priv;
  var1 = priv->var1;
  var2 = priv->var2;
  [var2 returnPriv:?];

  v6.receiver = self;
  v6.super_class = _MTLIOScratchBuffer;
  [(_MTLIOScratchBuffer *)&v6 dealloc];
}

@end