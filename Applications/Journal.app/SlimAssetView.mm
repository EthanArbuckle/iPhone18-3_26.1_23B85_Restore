@interface SlimAssetView
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityElementsHidden;
- (NSArray)accessibilityCustomActions;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)horizontalSizeClassChanged;
- (void)setAccessibilityCustomActions:(id)a3;
- (void)setAccessibilityElementsHidden:(BOOL)a3;
- (void)tapped;
- (void)userInterfaceStyleChanged;
@end

@implementation SlimAssetView

- (void)horizontalSizeClassChanged
{
  v2 = self;
  sub_1007FF930();
}

- (void)userInterfaceStyleChanged
{
  v2 = self;
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
    v6 = self;
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
    v7 = self;
    v6();
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

- (NSArray)accessibilityCustomActions
{
  v2 = self;
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

- (void)setAccessibilityCustomActions:(id)a3
{
  isa = a3;
  if (a3)
  {
    sub_1000065A8(0, &qword_100AD86C0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = self;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6 = self;
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

- (void)setAccessibilityElementsHidden:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  [(SlimAssetView *)v4 setIsAccessibilityElement:v3 ^ 1];
  v5.receiver = v4;
  v5.super_class = type metadata accessor for SlimAssetView();
  [(SlimAssetView *)&v5 setAccessibilityElementsHidden:v3];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1008082F0();

  return v7;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1008084B4(v8, a5);

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1008085F4(a5);

  swift_unknownObjectRelease();
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v6 = objc_allocWithZone(UIPreviewParameters);
  v7 = self;
  v8 = [v6 init];
  v9 = [objc_opt_self() systemBackgroundColor];
  [v8 setBackgroundColor:v9];

  v10 = [objc_allocWithZone(UITargetedPreview) initWithView:v7 parameters:v8];

  return v10;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5
{
  v5 = [(SlimAssetView *)self contextMenuInteraction:a3 configuration:a4 highlightPreviewForItemWithIdentifier:a5];

  return v5;
}

@end