@interface CycleView
- (_TtC23ShelfKitCollectionViews9CycleView)init;
- (_TtC23ShelfKitCollectionViews9CycleView)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews9CycleView)initWithFrame:(CGRect)a3;
@end

@implementation CycleView

- (_TtC23ShelfKitCollectionViews9CycleView)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hiddenViews) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hostedViewSettings) = &_swiftEmptyDictionarySingleton;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentViewConstraints) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hostedViews) = _swiftEmptyArrayStorage;
  v6.receiver = self;
  v6.super_class = ObjectType;
  v4 = [(CycleView *)&v6 initWithFrame:0.0, 0.0, 0.0, 0.0];
  [(CycleView *)v4 setClipsToBounds:1];
  return v4;
}

- (_TtC23ShelfKitCollectionViews9CycleView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hiddenViews) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hostedViewSettings) = &_swiftEmptyDictionarySingleton;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentViewConstraints) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (_TtC23ShelfKitCollectionViews9CycleView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end