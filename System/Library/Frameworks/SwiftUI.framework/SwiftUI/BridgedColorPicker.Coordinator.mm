@interface BridgedColorPicker.Coordinator
- (_TtCV7SwiftUIP33_0B012DB3D42FBF9295A4AA29478C936C18BridgedColorPicker11Coordinator)init;
- (void)colorChanged:(id)changed;
@end

@implementation BridgedColorPicker.Coordinator

- (void)colorChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  BridgedColorPicker.Coordinator.colorChanged(_:)(changedCopy);
}

- (_TtCV7SwiftUIP33_0B012DB3D42FBF9295A4AA29478C936C18BridgedColorPicker11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end