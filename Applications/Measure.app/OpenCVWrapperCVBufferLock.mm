@interface OpenCVWrapperCVBufferLock
- (id)initInternal;
- (void)dealloc;
@end

@implementation OpenCVWrapperCVBufferLock

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7Measure25OpenCVWrapperCVBufferLock_buffer);
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtC7Measure25OpenCVWrapperCVBufferLock_lockFlags);
  v6 = self;
  v7 = CVPixelBufferUnlockBaseAddress(v4, v5);
  v8._object = 0x8000000100408770;
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  logCVError(_:label:)(v7, v8);
  v9.receiver = v6;
  v9.super_class = ObjectType;
  [(OpenCVWrapperCVBufferLock *)&v9 dealloc];
}

- (id)initInternal
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end