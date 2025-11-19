@interface MTKTextureIOBufferAllocator
- (MTKTextureIOBufferAllocator)initWithDevice:(id)a3;
- (id)newBufferWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 deallocNotification:(id)a5 error:(id *)a6;
- (id)newBufferWithLength:(unint64_t)a3;
@end

@implementation MTKTextureIOBufferAllocator

- (MTKTextureIOBufferAllocator)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTKTextureIOBufferAllocator;
  v6 = [(MTKTextureIOBufferAllocator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (id)newBufferWithLength:(unint64_t)a3
{
  v5 = [MTKTextureIOBuffer alloc];
  device = self->_device;

  return [(MTKTextureIOBuffer *)v5 initWithLength:a3 device:device];
}

- (id)newBufferWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 deallocNotification:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = [[MTKTextureIOBuffer alloc] initWithBytesNoCopy:a3 length:a4 deallocNotification:v10 device:self->_device error:a6];

  return v11;
}

@end