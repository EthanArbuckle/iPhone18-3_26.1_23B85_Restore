@interface MacContextMenuButton
- (_TtC23ShelfKitCollectionViews20MacContextMenuButton)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews20MacContextMenuButton)initWithFrame:(CGRect)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
@end

@implementation MacContextMenuButton

- (_TtC23ShelfKitCollectionViews20MacContextMenuButton)initWithCoder:(id)a3
{
  result = sub_30D648();
  __break(1u);
  return result;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  v9 = sub_B8C20(v7, x, y);

  return v9;
}

- (_TtC23ShelfKitCollectionViews20MacContextMenuButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end