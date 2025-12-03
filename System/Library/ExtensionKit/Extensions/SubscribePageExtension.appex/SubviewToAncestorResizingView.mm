@interface SubviewToAncestorResizingView
- (_TtC22SubscribePageExtensionP33_3543AF4FE77A7B16189F6DD7510C410929SubviewToAncestorResizingView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtensionP33_3543AF4FE77A7B16189F6DD7510C410929SubviewToAncestorResizingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SubviewToAncestorResizingView

- (_TtC22SubscribePageExtensionP33_3543AF4FE77A7B16189F6DD7510C410929SubviewToAncestorResizingView)initWithFrame:(CGRect)frame
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

- (_TtC22SubscribePageExtensionP33_3543AF4FE77A7B16189F6DD7510C410929SubviewToAncestorResizingView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001535C4();
}

@end