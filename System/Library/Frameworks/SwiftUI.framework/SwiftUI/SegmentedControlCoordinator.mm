@interface SegmentedControlCoordinator
- (_TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator)init;
- (void)selectionChanged:(id)changed;
@end

@implementation SegmentedControlCoordinator

- (void)selectionChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  SegmentedControlCoordinator.selectionChanged(_:)(changedCopy);
}

- (_TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end