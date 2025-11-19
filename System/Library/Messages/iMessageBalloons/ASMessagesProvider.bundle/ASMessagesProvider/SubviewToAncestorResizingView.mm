@interface SubviewToAncestorResizingView
- (_TtC18ASMessagesProviderP33_969995FABB6CC72FFF21E8E69346997329SubviewToAncestorResizingView)initWithCoder:(id)a3;
- (_TtC18ASMessagesProviderP33_969995FABB6CC72FFF21E8E69346997329SubviewToAncestorResizingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SubviewToAncestorResizingView

- (_TtC18ASMessagesProviderP33_969995FABB6CC72FFF21E8E69346997329SubviewToAncestorResizingView)initWithFrame:(CGRect)a3
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

- (_TtC18ASMessagesProviderP33_969995FABB6CC72FFF21E8E69346997329SubviewToAncestorResizingView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1DC17C();
}

@end