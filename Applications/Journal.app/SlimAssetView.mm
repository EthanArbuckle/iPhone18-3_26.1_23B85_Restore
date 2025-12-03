@interface SlimAssetView
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityElementsHidden;
- (NSArray)accessibilityCustomActions;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)horizontalSizeClassChanged;
- (void)setAccessibilityCustomActions:(id)actions;
- (void)setAccessibilityElementsHidden:(BOOL)hidden;
- (void)tapped;
- (void)userInterfaceStyleChanged;
@end

@implementation SlimAssetView

- (void)horizontalSizeClassChanged
{
  selfCopy = self;
  sub_1007FF930();
}

- (void)userInterfaceStyleChanged
{
  selfCopy = self;
  sub_100803A34();
}

- (void)tapped
{
  v3 = self + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAssetDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 16);
    selfCopy = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (BOOL)accessibilityActivate
{
  v3 = self + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAssetDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(v3 + 1);
    swift_getObjectType();
    v6 = *(v5 + 16);
    selfCopy = self;
    v6();
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
  v3 = sub_100806708();

  if (v3)
  {
    sub_1000065A8(0, &qword_100AD86C0);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setAccessibilityCustomActions:(id)actions
{
  isa = actions;
  if (actions)
  {
    sub_1000065A8(0, &qword_100AD86C0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    selfCopy2 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for SlimAssetView();
  [(SlimAssetView *)&v7 setAccessibilityCustomActions:isa];
}

- (BOOL)accessibilityElementsHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SlimAssetView();
  return [(SlimAssetView *)&v3 accessibilityElementsHidden];
}

- (void)setAccessibilityElementsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  selfCopy = self;
  [(SlimAssetView *)selfCopy setIsAccessibilityElement:hiddenCopy ^ 1];
  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for SlimAssetView();
  [(SlimAssetView *)&v5 setAccessibilityElementsHidden:hiddenCopy];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = sub_1008082F0();

  return v7;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1008084B4(interactionCopy, animator);

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1008085F4(animator);

  swift_unknownObjectRelease();
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  v6 = objc_allocWithZone(UIPreviewParameters);
  selfCopy = self;
  v8 = [v6 init];
  systemBackgroundColor = [objc_opt_self() systemBackgroundColor];
  [v8 setBackgroundColor:systemBackgroundColor];

  v10 = [objc_allocWithZone(UITargetedPreview) initWithView:selfCopy parameters:v8];

  return v10;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier
{
  v5 = [(SlimAssetView *)self contextMenuInteraction:interaction configuration:configuration highlightPreviewForItemWithIdentifier:identifier];

  return v5;
}

@end