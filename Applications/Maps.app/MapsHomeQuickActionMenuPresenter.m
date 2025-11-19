@interface MapsHomeQuickActionMenuPresenter
- (BOOL)shouldBeginOrbGestureAtLocation:(CGPoint)a3 inView:(id)a4;
- (_TtC4Maps32MapsHomeQuickActionMenuPresenter)initWithCollectionView:(id)a3;
- (_TtC4Maps32MapsHomeQuickActionMenuPresenter)initWithView:(id)a3;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
@end

@implementation MapsHomeQuickActionMenuPresenter

- (_TtC4Maps32MapsHomeQuickActionMenuPresenter)initWithCollectionView:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC4Maps32MapsHomeQuickActionMenuPresenter_collectionView) = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MapsHomeQuickActionMenuPresenter();
  return [(QuickActionMenuPresenter *)&v5 initWithView:a3];
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = _s4Maps0A28HomeQuickActionMenuPresenterC07contextE11Interaction_13configuration37highlightPreviewForItemWithIdentifierSo010UITargetedK0CSgSo09UIContexteH0C_So0qE13ConfigurationCSo9NSCopying_ptF_0();

  swift_unknownObjectRelease();

  return v10;
}

- (BOOL)shouldBeginOrbGestureAtLocation:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  LOBYTE(self) = MapsHomeQuickActionMenuPresenter.shouldBeginOrbGesture(atLocation:in:)(v7, x, y);

  return self & 1;
}

- (_TtC4Maps32MapsHomeQuickActionMenuPresenter)initWithView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end