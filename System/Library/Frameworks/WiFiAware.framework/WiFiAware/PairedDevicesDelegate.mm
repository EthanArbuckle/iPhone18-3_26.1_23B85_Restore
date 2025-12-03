@interface PairedDevicesDelegate
- (_TtC9WiFiAwareP33_4E33C3FECA76895B2C3A387BEA68C22E21PairedDevicesDelegate)init;
- (void)deviceAdded:(id)added;
- (void)deviceChanged:(id)changed;
- (void)deviceRemoved:(id)removed;
@end

@implementation PairedDevicesDelegate

- (void)deviceAdded:(id)added
{
  addedCopy = added;
  selfCopy = self;
  sub_23B5C5AC0(addedCopy);
}

- (void)deviceRemoved:(id)removed
{
  removedCopy = removed;
  selfCopy = self;
  sub_23B5C5FA8(removedCopy);
}

- (void)deviceChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_23B5C6468(changedCopy);
}

- (_TtC9WiFiAwareP33_4E33C3FECA76895B2C3A387BEA68C22E21PairedDevicesDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end