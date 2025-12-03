@interface MTLSharedTextureHandle
- (MTLSharedTextureHandle)initWithCoder:(id)coder;
- (MTLSharedTextureHandle)initWithIOSurface:(__IOSurface *)surface label:(id)label;
- (MTLSharedTextureHandle)initWithMachPort:(unsigned int)port;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTLSharedTextureHandle

- (MTLSharedTextureHandle)initWithIOSurface:(__IOSurface *)surface label:(id)label
{
  v9.receiver = self;
  v9.super_class = MTLSharedTextureHandle;
  v6 = [(MTLSharedTextureHandle *)&v9 init];
  if (v6)
  {
    v6->_priv = malloc_type_calloc(0x18uLL, 1uLL, 0xA00402214FCE6uLL);
    CFRetain(surface);
    *v6->_priv = surface;
    *(v6->_priv + 2) = [label copy];
    v7 = _copyIOSurfaceDevice(surface);
    *(v6->_priv + 1) = v7;
    if (!v7)
    {

      return 0;
    }
  }

  return v6;
}

- (MTLSharedTextureHandle)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = MTLSharedTextureHandle;
  v4 = [(MTLSharedTextureHandle *)&v7 init];
  if (v4)
  {
    *(v4 + 1) = malloc_type_calloc(0x18uLL, 1uLL, 0xA00402214FCE6uLL);
    **(v4 + 1) = [coder decodeObjectOfClass:objc_opt_class() forKey:@"ioSurface"];
    CFRetain(**(v4 + 1));
    v5 = _copyIOSurfaceDevice(**(v4 + 1));
    *(*(v4 + 1) + 8) = v5;
    if (v5)
    {
      *(*(v4 + 1) + 16) = [coder decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:*self->_priv forKey:@"ioSurface"];
  v5 = *(self->_priv + 2);

  [coder encodeObject:v5 forKey:@"label"];
}

- (MTLSharedTextureHandle)initWithMachPort:(unsigned int)port
{
  v7.receiver = self;
  v7.super_class = MTLSharedTextureHandle;
  v4 = [(MTLSharedTextureHandle *)&v7 init];
  if (v4)
  {
    *(v4 + 1) = malloc_type_calloc(0x18uLL, 1uLL, 0xA00402214FCE6uLL);
    **(v4 + 1) = IOSurfaceLookupFromMachPort(port);
    v5 = _copyIOSurfaceDevice(**(v4 + 1));
    *(*(v4 + 1) + 8) = v5;
    if (!v5)
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {

    v4 = self->_priv;
    if (*v4)
    {
      CFRelease(*v4);
      v4 = self->_priv;
    }

    free(v4);
  }

  v5.receiver = self;
  v5.super_class = MTLSharedTextureHandle;
  [(MTLSharedTextureHandle *)&v5 dealloc];
}

@end