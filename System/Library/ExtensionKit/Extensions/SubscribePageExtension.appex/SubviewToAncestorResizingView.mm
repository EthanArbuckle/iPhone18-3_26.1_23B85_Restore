@interface SubviewToAncestorResizingView
- (_TtC22SubscribePageExtensionP33_3543AF4FE77A7B16189F6DD7510C410929SubviewToAncestorResizingView)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtensionP33_3543AF4FE77A7B16189F6DD7510C410929SubviewToAncestorResizingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SubviewToAncestorResizingView

- (_TtC22SubscribePageExtensionP33_3543AF4FE77A7B16189F6DD7510C410929SubviewToAncestorResizingView)initWithFrame:(CGRect)a3
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

- (_TtC22SubscribePageExtensionP33_3543AF4FE77A7B16189F6DD7510C410929SubviewToAncestorResizingView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1001535C4();
}

@end