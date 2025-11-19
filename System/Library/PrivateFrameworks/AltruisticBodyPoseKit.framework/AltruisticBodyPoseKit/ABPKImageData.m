@interface ABPKImageData
- (ABPKImageData)init;
- (ABPKImageData)initWithPixelBuffer:(__CVBuffer *)a3 timestamp:(double)a4;
- (__CVBuffer)pixelBuffer;
- (double)timestamp;
- (void)setPixelBuffer:(__CVBuffer *)a3;
- (void)setTimestamp:(double)a3;
@end

@implementation ABPKImageData

- (__CVBuffer)pixelBuffer
{
  v3 = OBJC_IVAR___ABPKImageData_pixelBuffer;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPixelBuffer:(__CVBuffer *)a3
{
  v5 = OBJC_IVAR___ABPKImageData_pixelBuffer;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (double)timestamp
{
  v3 = OBJC_IVAR___ABPKImageData_timestamp;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTimestamp:(double)a3
{
  v5 = OBJC_IVAR___ABPKImageData_timestamp;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (ABPKImageData)initWithPixelBuffer:(__CVBuffer *)a3 timestamp:(double)a4
{
  v7 = OBJC_IVAR___ABPKImageData_pixelBuffer;
  *(&self->super.isa + OBJC_IVAR___ABPKImageData_pixelBuffer) = 0;
  swift_beginAccess();
  *(&self->super.isa + v7) = a3;
  *(&self->super.isa + OBJC_IVAR___ABPKImageData_timestamp) = a4;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ABPKImageData();
  v8 = a3;
  return [(ABPKImageData *)&v10 init];
}

- (ABPKImageData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end