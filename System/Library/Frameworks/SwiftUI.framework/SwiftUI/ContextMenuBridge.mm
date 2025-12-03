@interface ContextMenuBridge
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
@end

@implementation ContextMenuBridge

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  selfCopy = self;
  v9 = specialized ContextMenuBridge.contextMenuInteraction(_:configurationForMenuAtLocation:)(x, y);

  return v9;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = specialized ContextMenuBridge.contextMenuInteraction(_:configuration:highlightPreviewForItemWithIdentifier:)(interactionCopy);

  swift_unknownObjectRelease();

  return v10;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = specialized ContextMenuBridge.contextMenuInteraction(_:configuration:dismissalPreviewForItemWithIdentifier:)(configurationCopy);

  swift_unknownObjectRelease();

  return v10;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized ContextMenuBridge.contextMenuInteraction(_:willPerformPreviewActionForMenuWith:animator:)(configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  ContextMenuBridge.contextMenuInteraction(_:willDisplayMenuFor:animator:)(interactionCopy, configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized ContextMenuBridge.contextMenuInteraction(_:willEndFor:animator:)(configurationCopy, animator);

  swift_unknownObjectRelease();
}

@end