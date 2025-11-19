@interface PairedDevicesDelegate
- (_TtC9WiFiAwareP33_4E33C3FECA76895B2C3A387BEA68C22E21PairedDevicesDelegate)init;
- (void)deviceAdded:(id)a3;
- (void)deviceChanged:(id)a3;
- (void)deviceRemoved:(id)a3;
@end

@implementation PairedDevicesDelegate

- (void)deviceAdded:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23B5C5AC0(v4);
}

- (void)deviceRemoved:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23B5C5FA8(v4);
}

- (void)deviceChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23B5C6468(v4);
}

- (_TtC9WiFiAwareP33_4E33C3FECA76895B2C3A387BEA68C22E21PairedDevicesDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end