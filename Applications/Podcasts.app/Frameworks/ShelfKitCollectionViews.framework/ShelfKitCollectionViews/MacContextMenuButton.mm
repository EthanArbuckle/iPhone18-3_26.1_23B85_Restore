@interface MacContextMenuButton
- (_TtC23ShelfKitCollectionViews20MacContextMenuButton)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews20MacContextMenuButton)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
@end

@implementation MacContextMenuButton

- (_TtC23ShelfKitCollectionViews20MacContextMenuButton)initWithCoder:(id)coder
{
  result = sub_30D648();
  __break(1u);
  return result;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  selfCopy = self;
  v9 = sub_B8C20(interactionCopy, x, y);

  return v9;
}

- (_TtC23ShelfKitCollectionViews20MacContextMenuButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end