@interface MapsHomeQuickActionMenuPresenter
- (BOOL)shouldBeginOrbGestureAtLocation:(CGPoint)location inView:(id)view;
- (_TtC4Maps32MapsHomeQuickActionMenuPresenter)initWithCollectionView:(id)view;
- (_TtC4Maps32MapsHomeQuickActionMenuPresenter)initWithView:(id)view;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
@end

@implementation MapsHomeQuickActionMenuPresenter

- (_TtC4Maps32MapsHomeQuickActionMenuPresenter)initWithCollectionView:(id)view
{
  *(&self->super.super.isa + OBJC_IVAR____TtC4Maps32MapsHomeQuickActionMenuPresenter_collectionView) = view;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MapsHomeQuickActionMenuPresenter();
  return [(QuickActionMenuPresenter *)&v5 initWithView:view];
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = _s4Maps0A28HomeQuickActionMenuPresenterC07contextE11Interaction_13configuration37highlightPreviewForItemWithIdentifierSo010UITargetedK0CSgSo09UIContexteH0C_So0qE13ConfigurationCSo9NSCopying_ptF_0();

  swift_unknownObjectRelease();

  return v10;
}

- (BOOL)shouldBeginOrbGestureAtLocation:(CGPoint)location inView:(id)view
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = MapsHomeQuickActionMenuPresenter.shouldBeginOrbGesture(atLocation:in:)(viewCopy, x, y);

  return self & 1;
}

- (_TtC4Maps32MapsHomeQuickActionMenuPresenter)initWithView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end