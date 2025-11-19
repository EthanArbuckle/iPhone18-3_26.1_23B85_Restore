@interface DDDeviceDiscoveryViewSettingsSwift
+ (void)updateHostingControllerWithHostingController:(id)a3 serviceIdentifier:(id)a4 publicKey:(id)a5 browseDescriptor:(id)a6 browseParameters:(id)a7;
- (DDDeviceDiscoveryViewSettingsSwift)init;
@end

@implementation DDDeviceDiscoveryViewSettingsSwift

- (DDDeviceDiscoveryViewSettingsSwift)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DDDeviceDiscoveryViewSettingsSwift();
  return [(DDDeviceDiscoveryViewSettingsSwift *)&v3 init];
}

+ (void)updateHostingControllerWithHostingController:(id)a3 serviceIdentifier:(id)a4 publicKey:(id)a5 browseDescriptor:(id)a6 browseParameters:(id)a7
{
  if (a4)
  {
    v11 = sub_238154CCC();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = a3;
  v15 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_238102A6C(v14, v11, v13, a5, a6, a7);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end