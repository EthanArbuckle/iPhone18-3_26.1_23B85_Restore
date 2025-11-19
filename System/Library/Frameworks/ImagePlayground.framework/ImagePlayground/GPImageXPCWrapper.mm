@interface GPImageXPCWrapper
- (GPImageXPCWrapper)init;
- (GPImageXPCWrapper)initWithImage:(CGImage *)a3 orientation:(unsigned int)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GPImageXPCWrapper

- (void)encodeWithCoder:(id)a3
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  v6 = *(&self->super.isa + OBJC_IVAR___GPImageXPCWrapper_surface);
  v9 = a3;
  v7 = self;
  v8 = sub_1D2AC6BF4();
  [v5 encodeObject:v6 forKey:v8];
}

- (GPImageXPCWrapper)initWithImage:(CGImage *)a3 orientation:(unsigned int)a4
{
  v6 = objc_allocWithZone(swift_getObjectType());
  v7 = ImageXPCWrapper.init(_:orientation:)(a3, a4);
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