@interface IntentHandler
- (_TtC31BatteriesWidgetIntentsExtension13IntentHandler)init;
- (id)defaultDeviceForViewPossibleDevices:(id)devices;
- (void)provideDeviceOptionsCollectionForViewPossibleDevices:(id)devices withCompletion:(id)completion;
@end

@implementation IntentHandler

- (_TtC31BatteriesWidgetIntentsExtension13IntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IntentHandler();
  return [(IntentHandler *)&v3 init];
}

- (void)provideDeviceOptionsCollectionForViewPossibleDevices:(id)devices withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v6;
  devicesCopy = devices;
  selfCopy = self;
  sub_100001500(devicesCopy, sub_100005ACC);
}

- (id)defaultDeviceForViewPossibleDevices:(id)devices
{
  devicesCopy = devices;
  selfCopy = self;
  v6 = sub_10000259C(devicesCopy);

  return v6;
}

@end