@interface DDDeviceDiscoveryViewSettingsSwift
+ (void)updateHostingControllerWithHostingController:(id)controller serviceIdentifier:(id)identifier publicKey:(id)key browseDescriptor:(id)descriptor browseParameters:(id)parameters;
- (DDDeviceDiscoveryViewSettingsSwift)init;
@end

@implementation DDDeviceDiscoveryViewSettingsSwift

- (DDDeviceDiscoveryViewSettingsSwift)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DDDeviceDiscoveryViewSettingsSwift();
  return [(DDDeviceDiscoveryViewSettingsSwift *)&v3 init];
}

+ (void)updateHostingControllerWithHostingController:(id)controller serviceIdentifier:(id)identifier publicKey:(id)key browseDescriptor:(id)descriptor browseParameters:(id)parameters
{
  if (identifier)
  {
    v11 = sub_238154CCC();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  controllerCopy = controller;
  keyCopy = key;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_238102A6C(controllerCopy, v11, v13, key, descriptor, parameters);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end