@interface IntentHandler
- (_TtC31BatteriesWidgetIntentsExtension13IntentHandler)init;
- (id)defaultDeviceForViewPossibleDevices:(id)a3;
- (void)provideDeviceOptionsCollectionForViewPossibleDevices:(id)a3 withCompletion:(id)a4;
@end

@implementation IntentHandler

- (_TtC31BatteriesWidgetIntentsExtension13IntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IntentHandler();
  return [(IntentHandler *)&v3 init];
}

- (void)provideDeviceOptionsCollectionForViewPossibleDevices:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = self;
  sub_100001500(v7, sub_100005ACC);
}

- (id)defaultDeviceForViewPossibleDevices:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10000259C(v4);

  return v6;
}

@end