@interface ReferenceLinkContextMenuInteractionDelegate
- (_TtC8ShelfKit43ReferenceLinkContextMenuInteractionDelegate)init;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
@end

@implementation ReferenceLinkContextMenuInteractionDelegate

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = sub_2E702C(interactionCopy);

  return v7;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_2E735C(interactionCopy);

  swift_unknownObjectRelease();

  return v10;
}

- (_TtC8ShelfKit43ReferenceLinkContextMenuInteractionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end