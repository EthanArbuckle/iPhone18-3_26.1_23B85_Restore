@interface GPImageXPCWrapper
- (GPImageXPCWrapper)init;
- (GPImageXPCWrapper)initWithImage:(CGImage *)image orientation:(unsigned int)orientation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GPImageXPCWrapper

- (void)encodeWithCoder:(id)coder
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  v6 = *(&self->super.isa + OBJC_IVAR___GPImageXPCWrapper_surface);
  coderCopy = coder;
  selfCopy = self;
  v8 = sub_1D2AC6BF4();
  [v5 encodeObject:v6 forKey:v8];
}

- (GPImageXPCWrapper)initWithImage:(CGImage *)image orientation:(unsigned int)orientation
{
  v6 = objc_allocWithZone(swift_getObjectType());
  v7 = ImageXPCWrapper.init(_:orientation:)(image, orientation);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

- (GPImageXPCWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end