@interface HighlightedParagraphButton
- (_TtC23ShelfKitCollectionViewsP33_300F106C73478CB5ADE35ED9D53492A526HighlightedParagraphButton)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViewsP33_300F106C73478CB5ADE35ED9D53492A526HighlightedParagraphButton)initWithFrame:(CGRect)a3;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation HighlightedParagraphButton

- (_TtC23ShelfKitCollectionViewsP33_300F106C73478CB5ADE35ED9D53492A526HighlightedParagraphButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_300F106C73478CB5ADE35ED9D53492A526HighlightedParagraphButton_onDismissMenu);
  *v9 = 0;
  v9[1] = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(HighlightedParagraphButton *)&v12 initWithFrame:x, y, width, height];
  [(HighlightedParagraphButton *)v10 setShowsMenuAsPrimaryAction:1];
  return v10;
}

- (_TtC23ShelfKitCollectionViewsP33_300F106C73478CB5ADE35ED9D53492A526HighlightedParagraphButton)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_300F106C73478CB5ADE35ED9D53492A526HighlightedParagraphButton_onDismissMenu);
  *v3 = 0;
  v3[1] = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v8 = a3;
  v9 = a4;
  v10 = v14.receiver;
  swift_unknownObjectRetain();
  [(HighlightedParagraphButton *)&v14 contextMenuInteraction:v8 willEndForConfiguration:v9 animator:a5];
  v11 = *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_300F106C73478CB5ADE35ED9D53492A526HighlightedParagraphButton_onDismissMenu];
  if (v11)
  {
    v12 = *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_300F106C73478CB5ADE35ED9D53492A526HighlightedParagraphButton_onDismissMenu + 8];

    v11(v13);

    swift_unknownObjectRelease();
    sub_2B8D4(v11, v12);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

@end