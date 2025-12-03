@interface CRLUSDRenderingCoreRESharedTextureHandle
- (CRLUSDRenderingCoreRESharedTextureHandle)init;
- (CRLUSDRenderingCoreRESharedTextureHandle)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRLUSDRenderingCoreRESharedTextureHandle

- (CRLUSDRenderingCoreRESharedTextureHandle)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  sub_10096AC24();
  coderCopy = coder;
  v7 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v7)
  {
    *(&self->super.isa + OBJC_IVAR___CRLUSDRenderingCoreRESharedTextureHandle_handle) = v7;
    v10.receiver = self;
    v10.super_class = ObjectType;
    v8 = [(CRLUSDRenderingCoreRESharedTextureHandle *)&v10 init];
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR___CRLUSDRenderingCoreRESharedTextureHandle_handle);
  coderCopy = coder;
  selfCopy = self;
  v6 = String._bridgeToObjectiveC()();
  [coderCopy encodeObject:v4 forKey:v6];
}

- (CRLUSDRenderingCoreRESharedTextureHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end