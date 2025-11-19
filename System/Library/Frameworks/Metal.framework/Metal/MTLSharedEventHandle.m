@interface MTLSharedEventHandle
- (MTLSharedEventHandle)initWithCoder:(id)a3;
- (MTLSharedEventHandle)initWithSharedEvent:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTLSharedEventHandle

- (MTLSharedEventHandle)initWithSharedEvent:(id)a3
{
  v7.receiver = self;
  v7.super_class = MTLSharedEventHandle;
  v4 = [(MTLSharedEventHandle *)&v7 init];
  if (v4)
  {
    v4->_priv = malloc_type_calloc(0x18uLL, 1uLL, 0xC92F894uLL);
    v5 = [a3 eventPort];
    *v4->_priv = v5;
    if (mach_port_mod_refs(*MEMORY[0x1E69E9A60], v5, 0, 1))
    {
      *v4->_priv = 0;

      return 0;
    }

    else
    {
      *(v4->_priv + 1) = [objc_msgSend(a3 "label")];
      *(v4->_priv + 2) = [a3 labelTraceID];
    }
  }

  return v4;
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {
    if (*priv)
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], *priv, 0, -1);
      priv = self->_priv;
    }

    free(self->_priv);
  }

  v4.receiver = self;
  v4.super_class = MTLSharedEventHandle;
  [(MTLSharedEventHandle *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"This object may only be encoded by an NSXPCCoder."];
  }

  v5 = *self->_priv;
  v6 = xpc_mach_send_create();
  [a3 encodeXPCObject:v6 forKey:@"Port"];
  xpc_release(v6);
  v7 = *(self->_priv + 1);

  [a3 encodeObject:v7 forKey:@"Label"];
}

- (MTLSharedEventHandle)initWithCoder:(id)a3
{
  v4 = self;
  self->_priv = malloc_type_calloc(0x18uLL, 1uLL, 0x8551144BuLL);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"This object may only be decoded by an NSXPCCoder."];
  }

  if ([a3 decodeXPCObjectOfType:MEMORY[0x1E69E9EC0] forKey:@"Port"] && (v5 = xpc_mach_send_copy_right()) != 0)
  {
    *v4->_priv = v5;
    *(v4->_priv + 1) = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"Label"];
  }

  else
  {

    return 0;
  }

  return v4;
}

@end