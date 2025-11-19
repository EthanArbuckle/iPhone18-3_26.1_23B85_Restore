@interface _CFStreamDelegate
- (_CFStreamDelegate)initWithStreamEvents:(unint64_t)a3 callback:(void *)a4 context:(id *)a5;
- (void)dealloc;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation _CFStreamDelegate

- (_CFStreamDelegate)initWithStreamEvents:(unint64_t)a3 callback:(void *)a4 context:(id *)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = _CFStreamDelegate;
  v8 = [(_CFStreamDelegate *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_flags = a3;
    v8->_cb._rcb = a4;
    v10 = *&a5->var0;
    v11 = *&a5->var2;
    v8->_client.copyDescription = a5->var4;
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

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  if ((self->_flags & a4) != 0)
  {
    (self->_cb._rcb)(a3, a4, self->_client.info);
  }
}

@end