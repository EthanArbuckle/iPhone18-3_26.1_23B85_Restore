@interface ReferenceLinkContextMenuInteractionDelegate
- (_TtC8ShelfKit43ReferenceLinkContextMenuInteractionDelegate)init;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
@end

@implementation ReferenceLinkContextMenuInteractionDelegate

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_2E702C(v5);

  return v7;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = sub_2E735C(v7);

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