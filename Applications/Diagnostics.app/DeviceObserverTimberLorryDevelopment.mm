@interface DeviceObserverTimberLorryDevelopment
- (_TtC11Diagnostics36DeviceObserverTimberLorryDevelopment)init;
- (id)beginDiscoveringDevicesWithHandler:(id)handler;
@end

@implementation DeviceObserverTimberLorryDevelopment

- (id)beginDiscoveringDevicesWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  v6 = sub_1000519C0(v4);
  _Block_release(v4);
  _Block_release(v4);

  return v6;
}

- (_TtC11Diagnostics36DeviceObserverTimberLorryDevelopment)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeviceObserverTimberLorryDevelopment();
  return [(DeviceObserverTimberLorryDevelopment *)&v3 init];
}

@end