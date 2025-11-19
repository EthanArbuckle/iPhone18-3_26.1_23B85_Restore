@interface ConfigurableScrollCoordinator
- (_TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator)init;
@end

@implementation ConfigurableScrollCoordinator

- (_TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator)init
{
  *(&self->super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = 1;
  v3 = (&self->super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_didScroll);
  v4 = type metadata accessor for ConfigurableScrollCoordinator();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(ConfigurableScrollCoordinator *)&v6 init];
}

@end