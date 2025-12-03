@interface HighlightedParagraphButton
- (_TtC23ShelfKitCollectionViewsP33_300F106C73478CB5ADE35ED9D53492A526HighlightedParagraphButton)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViewsP33_300F106C73478CB5ADE35ED9D53492A526HighlightedParagraphButton)initWithFrame:(CGRect)frame;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation HighlightedParagraphButton

- (_TtC23ShelfKitCollectionViewsP33_300F106C73478CB5ADE35ED9D53492A526HighlightedParagraphButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_300F106C73478CB5ADE35ED9D53492A526HighlightedParagraphButton_onDismissMenu);
  *v9 = 0;
  v9[1] = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(HighlightedParagraphButton *)&v12 initWithFrame:x, y, width, height];
  [(HighlightedParagraphButton *)height setShowsMenuAsPrimaryAction:1];
  return height;
}

- (_TtC23ShelfKitCollectionViewsP33_300F106C73478CB5ADE35ED9D53492A526HighlightedParagraphButton)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_300F106C73478CB5ADE35ED9D53492A526HighlightedParagraphButton_onDismissMenu);
  *v3 = 0;
  v3[1] = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  interactionCopy = interaction;
  configurationCopy = configuration;
  v10 = v14.receiver;
  swift_unknownObjectRetain();
  [(HighlightedParagraphButton *)&v14 contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animator];
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