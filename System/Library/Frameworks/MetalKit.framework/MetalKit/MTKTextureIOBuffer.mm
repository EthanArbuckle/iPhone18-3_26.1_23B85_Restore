@interface MTKTextureIOBuffer
- (MTKTextureIOBuffer)initWithBytesNoCopy:(void *)copy length:(unint64_t)length deallocNotification:(id)notification device:(id)device error:(id *)error;
- (MTKTextureIOBuffer)initWithLength:(unint64_t)length device:(id)device;
- (id)copyWithZone:(_NSZone *)zone;
- (id)map;
@end

@implementation MTKTextureIOBuffer

- (MTKTextureIOBuffer)initWithLength:(unint64_t)length device:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = MTKTextureIOBuffer;
  v7 = [(MTKTextureIOBuffer *)&v11 init];
  if (v7)
  {
    v8 = [deviceCopy newBufferWithLength:length options:0];
    buffer = v7->_buffer;
    v7->_buffer = v8;
  }

  return v7;
}

- (MTKTextureIOBuffer)initWithBytesNoCopy:(void *)copy length:(unint64_t)length deallocNotification:(id)notification device:(id)device error:(id *)error
{
  notificationCopy = notification;
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = MTKTextureIOBuffer;
  v13 = [(MTKTextureIOBuffer *)&v17 init];
  if (v13)
  {
    v14 = [deviceCopy newBufferWithBytesNoCopy:copy length:length options:0 deallocator:notificationCopy];
    buffer = v13->_buffer;
    v13->_buffer = v14;
  }

  return v13;
}

- (id)map
{
  v2 = [[MTKTextureIOBufferMap alloc] initWithContents:[(MTLBuffer *)self->_buffer contents]];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MTKTextureIOBuffer alloc];
  v5 = [(MTLBuffer *)self->_buffer length];
  device = [(MTLBuffer *)self->_buffer device];
  v7 = [(MTKTextureIOBuffer *)v4 initWithLength:v5 device:device];

  memcpy([v7[1] contents], -[MTLBuffer contents](self->_buffer, "contents"), -[MTLBuffer length](self->_buffer, "length"));
  return v7;
}

@end