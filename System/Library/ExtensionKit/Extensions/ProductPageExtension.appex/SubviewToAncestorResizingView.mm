@interface SubviewToAncestorResizingView
- (_TtC20ProductPageExtensionP33_6FCC428BE5E9F72D661E47E4BB5045BF29SubviewToAncestorResizingView)initWithCoder:(id)coder;
- (_TtC20ProductPageExtensionP33_6FCC428BE5E9F72D661E47E4BB5045BF29SubviewToAncestorResizingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SubviewToAncestorResizingView

- (_TtC20ProductPageExtensionP33_6FCC428BE5E9F72D661E47E4BB5045BF29SubviewToAncestorResizingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10.receiver = self;
  v10.super_class = type metadata accessor for SubviewToAncestorResizingView();
  height = [(SubviewToAncestorResizingView *)&v10 initWithFrame:x, y, width, height];
  [(SubviewToAncestorResizingView *)height setUserInteractionEnabled:0];
  return height;
}

- (_TtC20ProductPageExtensionP33_6FCC428BE5E9F72D661E47E4BB5045BF29SubviewToAncestorResizingView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001E7B28();
}

@end