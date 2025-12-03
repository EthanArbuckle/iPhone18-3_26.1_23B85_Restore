@interface ContextMenuButton
- (UIColor)tintColor;
- (_TtC23ShelfKitCollectionViews17ContextMenuButton)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews17ContextMenuButton)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)setTintColor:(id)color;
@end

@implementation ContextMenuButton

- (_TtC23ShelfKitCollectionViews17ContextMenuButton)initWithCoder:(id)coder
{
  result = sub_30D648();
  __break(1u);
  return result;
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  tintColor = [(ContextMenuButton *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  ObjectType = swift_getObjectType();
  v11.receiver = self;
  v11.super_class = ObjectType;
  colorCopy = color;
  selfCopy = self;
  [(ContextMenuButton *)&v11 setTintColor:colorCopy];
  v8 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_button);
  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  tintColor = [(ContextMenuButton *)&v10 tintColor];
  [v8 setTintColor:tintColor];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v17 = sub_302268();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_3022E8();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&self->episodeController[OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_episodeController + 8];
  v15[1] = *&self->episodeController[OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_episodeController + 16];
  v15[0] = __swift_project_boxed_opaque_existential_1Tm((&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_episodeController), v11);
  selfCopy = self;
  sub_3022B8();
  sub_30CE78();
  v13 = sub_30A9D8();
  (*(v5 + 8))(v7, v17);
  (*(v8 + 8))(v10, v16);

  return v13;
}

- (_TtC23ShelfKitCollectionViews17ContextMenuButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end