@interface _CFStreamDelegate
- (_CFStreamDelegate)initWithStreamEvents:(unint64_t)events callback:(void *)callback context:(id *)context;
- (void)dealloc;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation _CFStreamDelegate

- (_CFStreamDelegate)initWithStreamEvents:(unint64_t)events callback:(void *)callback context:(id *)context
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = _CFStreamDelegate;
  v8 = [(_CFStreamDelegate *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_flags = events;
    v8->_cb._rcb = callback;
    v10 = *&context->var0;
    v11 = *&context->var2;
    v8->_client.copyDescription = context->var4;
    *&v8->_client.version = v10;
    *&v8->_client.retain = v11;
    retain = v8->_client.retain;
    if (retain)
    {
      if (v8->_client.release)
      {
        v8->_client.info = retain(v8->_client.info);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  release = self->_client.release;
  if (release)
  {
    info = self->_client.info;
    if (info)
    {
      release(info, a2);
    }
  }

  v6.receiver = self;
  v6.super_class = _CFStreamDelegate;
  [(_CFStreamDelegate *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  if ((self->_flags & event) != 0)
  {
    (self->_cb._rcb)(stream, event, self->_client.info);
  }
}

@end