@interface MTKTextureIOBufferAllocator
- (MTKTextureIOBufferAllocator)initWithDevice:(id)device;
- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length deallocNotification:(id)notification error:(id *)error;
- (id)newBufferWithLength:(unint64_t)length;
@end

@implementation MTKTextureIOBufferAllocator

- (MTKTextureIOBufferAllocator)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = MTKTextureIOBufferAllocator;
  v6 = [(MTKTextureIOBufferAllocator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (id)newBufferWithLength:(unint64_t)length
{
  v5 = [MTKTextureIOBuffer alloc];
  device = self->_device;

  return [(MTKTextureIOBuffer *)v5 initWithLength:length device:device];
}

- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length deallocNotification:(id)notification error:(id *)error
{
  notificationCopy = notification;
  v11 = [[MTKTextureIOBuffer alloc] initWithBytesNoCopy:copy length:length deallocNotification:notificationCopy device:self->_device error:error];

  return v11;
}

@end