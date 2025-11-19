@interface MTLSharedTextureHandle
- (MTLSharedTextureHandle)initWithCoder:(id)a3;
- (MTLSharedTextureHandle)initWithIOSurface:(__IOSurface *)a3 label:(id)a4;
- (MTLSharedTextureHandle)initWithMachPort:(unsigned int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTLSharedTextureHandle

- (MTLSharedTextureHandle)initWithIOSurface:(__IOSurface *)a3 label:(id)a4
{
  v9.receiver = self;
  v9.super_class = MTLSharedTextureHandle;
  v6 = [(MTLSharedTextureHandle *)&v9 init];
  if (v6)
  {
    v6->_priv = malloc_type_calloc(0x18uLL, 1uLL, 0xA00402214FCE6uLL);
    CFRetain(a3);
    *v6->_priv = a3;
    *(v6->_priv + 2) = [a4 copy];
    v7 = _copyIOSurfaceDevice(a3);
    *(v6->_priv + 1) = v7;
    if (!v7)
    {

      return 0;
    }
  }

  return v6;
}

- (MTLSharedTextureHandle)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = MTLSharedTextureHandle;
  v4 = [(MTLSharedTextureHandle *)&v7 init];
  if (v4)
  {
    *(v4 + 1) = malloc_type_calloc(0x18uLL, 1uLL, 0xA00402214FCE6uLL);
    **(v4 + 1) = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"ioSurface"];
    CFRetain(**(v4 + 1));
    v5 = _copyIOSurfaceDevice(**(v4 + 1));
    *(*(v4 + 1) + 8) = v5;
    if (v5)
    {
      *(*(v4 + 1) + 16) = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:*self->_priv forKey:@"ioSurface"];
  v5 = *(self->_priv + 2);

  [a3 encodeObject:v5 forKey:@"label"];
}

- (MTLSharedTextureHandle)initWithMachPort:(unsigned int)a3
{
  v7.receiver = self;
  v7.super_class = MTLSharedTextureHandle;
  v4 = [(MTLSharedTextureHandle *)&v7 init];
  if (v4)
  {
    *(v4 + 1) = malloc_type_calloc(0x18uLL, 1uLL, 0xA00402214FCE6uLL);
    **(v4 + 1) = IOSurfaceLookupFromMachPort(a3);
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