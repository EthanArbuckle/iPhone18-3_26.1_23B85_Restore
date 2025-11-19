@interface ContextMenuButton
- (UIColor)tintColor;
- (_TtC23ShelfKitCollectionViews17ContextMenuButton)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews17ContextMenuButton)initWithFrame:(CGRect)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)setTintColor:(id)a3;
@end

@implementation ContextMenuButton

- (_TtC23ShelfKitCollectionViews17ContextMenuButton)initWithCoder:(id)a3
{
  result = sub_30D648();
  __break(1u);
  return result;
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = [(ContextMenuButton *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  ObjectType = swift_getObjectType();
  v11.receiver = self;
  v11.super_class = ObjectType;
  v6 = a3;
  v7 = self;
  [(ContextMenuButton *)&v11 setTintColor:v6];
  v8 = *(&v7->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17ContextMenuButton_button);
  v10.receiver = v7;
  v10.super_class = ObjectType;
  v9 = [(ContextMenuButton *)&v10 tintColor];
  [v8 setTintColor:v9];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
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
  v12 = self;
  sub_3022B8();
  sub_30CE78();
  v13 = sub_30A9D8();
  (*(v5 + 8))(v7, v17);
  (*(v8 + 8))(v10, v16);

  return v13;
}

- (_TtC23ShelfKitCollectionViews17ContextMenuButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end