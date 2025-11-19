@interface AnyListCollectionViewCell
- (_TtC7SwiftUI25AnyListCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation AnyListCollectionViewCell

- (_TtC7SwiftUI25AnyListCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_selectionDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_insetsDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_editMenuDelegate) = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for AnyListCollectionViewCell();
  return [(AnyListCollectionViewCell *)&v9 initWithFrame:x, y, width, height];
}

@end