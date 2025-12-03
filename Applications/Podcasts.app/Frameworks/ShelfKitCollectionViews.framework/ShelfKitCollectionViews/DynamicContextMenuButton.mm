@interface DynamicContextMenuButton
- (CGSize)intrinsicContentSize;
- (UIColor)tintColor;
- (_TtC23ShelfKitCollectionViews24DynamicContextMenuButton)initWithCoder:(id)coder;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
@end

@implementation DynamicContextMenuButton

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_button) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC23ShelfKitCollectionViews24DynamicContextMenuButton)initWithCoder:(id)coder
{
  *&self->button[OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_configProvider] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_glyph;
  v5 = sub_302AB8();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_objectGraph) = 0;
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
  v9 = sub_E4508(x, y);

  return v9;
}

- (UIColor)tintColor
{
  tintColor = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_button) tintColor];

  return tintColor;
}

@end