@interface CollectionViewMaterialRendererVideoCoordinator
- (_TtC16MusicApplication46CollectionViewMaterialRendererVideoCoordinator)init;
- (void)outputMediaDataWillChange:(id)change;
@end

@implementation CollectionViewMaterialRendererVideoCoordinator

- (void)outputMediaDataWillChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_113E0C(changeCopy);
}

- (_TtC16MusicApplication46CollectionViewMaterialRendererVideoCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end