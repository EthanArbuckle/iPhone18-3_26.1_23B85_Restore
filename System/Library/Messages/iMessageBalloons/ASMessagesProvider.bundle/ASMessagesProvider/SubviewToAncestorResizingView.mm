@interface SubviewToAncestorResizingView
- (_TtC18ASMessagesProviderP33_969995FABB6CC72FFF21E8E69346997329SubviewToAncestorResizingView)initWithCoder:(id)coder;
- (_TtC18ASMessagesProviderP33_969995FABB6CC72FFF21E8E69346997329SubviewToAncestorResizingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SubviewToAncestorResizingView

- (_TtC18ASMessagesProviderP33_969995FABB6CC72FFF21E8E69346997329SubviewToAncestorResizingView)initWithFrame:(CGRect)frame
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

- (_TtC18ASMessagesProviderP33_969995FABB6CC72FFF21E8E69346997329SubviewToAncestorResizingView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1DC17C();
}

@end