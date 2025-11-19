@interface CRLUSDRenderingCoreRESharedTextureHandle
- (CRLUSDRenderingCoreRESharedTextureHandle)init;
- (CRLUSDRenderingCoreRESharedTextureHandle)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRLUSDRenderingCoreRESharedTextureHandle

- (CRLUSDRenderingCoreRESharedTextureHandle)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_100086290();
  v6 = a3;
  v7 = sub_10008AE58();
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

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CRLUSDRenderingCoreRESharedTextureHandle_handle);
  v7 = a3;
  v5 = self;
  v6 = sub_10008AB08();
  [v7 encodeObject:v4 forKey:v6];
}

- (CRLUSDRenderingCoreRESharedTextureHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end