@interface ABPKImageData
- (ABPKImageData)init;
- (ABPKImageData)initWithPixelBuffer:(__CVBuffer *)buffer timestamp:(double)timestamp;
- (__CVBuffer)pixelBuffer;
- (double)timestamp;
- (void)setPixelBuffer:(__CVBuffer *)buffer;
- (void)setTimestamp:(double)timestamp;
@end

@implementation ABPKImageData

- (__CVBuffer)pixelBuffer
{
  v3 = OBJC_IVAR___ABPKImageData_pixelBuffer;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPixelBuffer:(__CVBuffer *)buffer
{
  v5 = OBJC_IVAR___ABPKImageData_pixelBuffer;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = buffer;
  bufferCopy = buffer;
}

- (double)timestamp
{
  v3 = OBJC_IVAR___ABPKImageData_timestamp;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTimestamp:(double)timestamp
{
  v5 = OBJC_IVAR___ABPKImageData_timestamp;
  swift_beginAccess();
  *(&self->super.isa + v5) = timestamp;
}

- (ABPKImageData)initWithPixelBuffer:(__CVBuffer *)buffer timestamp:(double)timestamp
{
  v7 = OBJC_IVAR___ABPKImageData_pixelBuffer;
  *(&self->super.isa + OBJC_IVAR___ABPKImageData_pixelBuffer) = 0;
  swift_beginAccess();
  *(&self->super.isa + v7) = buffer;
  *(&self->super.isa + OBJC_IVAR___ABPKImageData_timestamp) = timestamp;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ABPKImageData();
  bufferCopy = buffer;
  return [(ABPKImageData *)&v10 init];
}

- (ABPKImageData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end