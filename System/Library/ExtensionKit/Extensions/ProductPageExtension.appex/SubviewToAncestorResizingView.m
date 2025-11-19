@interface SubviewToAncestorResizingView
- (_TtC20ProductPageExtensionP33_6FCC428BE5E9F72D661E47E4BB5045BF29SubviewToAncestorResizingView)initWithCoder:(id)a3;
- (_TtC20ProductPageExtensionP33_6FCC428BE5E9F72D661E47E4BB5045BF29SubviewToAncestorResizingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SubviewToAncestorResizingView

- (_TtC20ProductPageExtensionP33_6FCC428BE5E9F72D661E47E4BB5045BF29SubviewToAncestorResizingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10.receiver = self;
  v10.super_class = type metadata accessor for SubviewToAncestorResizingView();
  v8 = [(SubviewToAncestorResizingView *)&v10 initWithFrame:x, y, width, height];
  [(SubviewToAncestorResizingView *)v8 setUserInteractionEnabled:0];
  return v8;
}

- (_TtC20ProductPageExtensionP33_6FCC428BE5E9F72D661E47E4BB5045BF29SubviewToAncestorResizingView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1001E7B28();
}

@end