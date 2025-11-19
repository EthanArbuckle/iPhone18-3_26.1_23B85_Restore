@interface WOQueriedExternalProviderBridge
- (BOOL)isEnabled;
- (NSData)sourceImageData;
- (NSString)sourceName;
- (WOQueriedExternalProviderBridge)init;
@end

@implementation WOQueriedExternalProviderBridge

- (NSString)sourceName
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOQueriedExternalProviderBridge_externalProvider);
  v3 = self;
  sub_22544();
  sub_22434();

  v4 = sub_22864();

  return v4;
}

- (NSData)sourceImageData
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOQueriedExternalProviderBridge_externalProvider);
  v3 = self;
  sub_22544();
  v4 = sub_22444();
  v6 = v5;

  v7.super.isa = sub_22214().super.isa;
  sub_1C758(v4, v6);

  return v7.super.isa;
}

- (BOOL)isEnabled
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOQueriedExternalProviderBridge_externalProvider);
  v3 = self;
  v4 = sub_22554();

  return v4 == 2;
}

- (WOQueriedExternalProviderBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end