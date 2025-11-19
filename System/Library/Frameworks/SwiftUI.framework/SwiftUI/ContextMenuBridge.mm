@interface ContextMenuBridge
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
@end

@implementation ContextMenuBridge

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  v9 = specialized ContextMenuBridge.contextMenuInteraction(_:configurationForMenuAtLocation:)(x, y);

  return v9;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = specialized ContextMenuBridge.contextMenuInteraction(_:configuration:highlightPreviewForItemWithIdentifier:)(v7);

  swift_unknownObjectRelease();

  return v10;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = specialized ContextMenuBridge.contextMenuInteraction(_:configuration:dismissalPreviewForItemWithIdentifier:)(v8);

  swift_unknownObjectRelease();

  return v10;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  specialized ContextMenuBridge.contextMenuInteraction(_:willPerformPreviewActionForMenuWith:animator:)(v9, a5);

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  ContextMenuBridge.contextMenuInteraction(_:willDisplayMenuFor:animator:)(v8, v9, a5);

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  specialized ContextMenuBridge.contextMenuInteraction(_:willEndFor:animator:)(v9, a5);

  swift_unknownObjectRelease();
}

@end