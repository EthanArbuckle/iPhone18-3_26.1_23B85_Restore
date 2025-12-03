@interface OpacitySliderView.Coordinator
- (_TtCV8PaperKit17OpacitySliderView11Coordinator)init;
- (void)didChange:(id)change;
@end

@implementation OpacitySliderView.Coordinator

- (void)didChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  OpacitySliderView.Coordinator.didChange(_:)(changeCopy);
}

- (_TtCV8PaperKit17OpacitySliderView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end