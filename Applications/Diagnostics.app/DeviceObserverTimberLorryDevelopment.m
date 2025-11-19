@interface DeviceObserverTimberLorryDevelopment
- (_TtC11Diagnostics36DeviceObserverTimberLorryDevelopment)init;
- (id)beginDiscoveringDevicesWithHandler:(id)a3;
@end

@implementation DeviceObserverTimberLorryDevelopment

- (id)beginDiscoveringDevicesWithHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
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