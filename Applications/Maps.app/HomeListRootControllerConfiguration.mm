@interface HomeListRootControllerConfiguration
- (HomeActionDelegate)homeActionDelegate;
- (HomeUpdateDelegate)homeUpdateDelegate;
- (_TtC4Maps35HomeListRootControllerConfiguration)init;
- (_TtC4Maps35HomeListRootControllerConfiguration)initWithCollectionView:(id)view;
@end

@implementation HomeListRootControllerConfiguration

- (_TtC4Maps35HomeListRootControllerConfiguration)initWithCollectionView:(id)view
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC4Maps35HomeListRootControllerConfiguration_collectionView) = view;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomeListRootControllerConfiguration();
  viewCopy = view;
  return [(HomeListRootControllerConfiguration *)&v7 init];
}

- (HomeActionDelegate)homeActionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (HomeUpdateDelegate)homeUpdateDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps35HomeListRootControllerConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end