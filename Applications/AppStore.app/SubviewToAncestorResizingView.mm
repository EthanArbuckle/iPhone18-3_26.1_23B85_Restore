@interface SubviewToAncestorResizingView
- (_TtC8AppStoreP33_DA9BC2CFEEB6E3DF0988C0FBCF970E7129SubviewToAncestorResizingView)initWithCoder:(id)coder;
- (_TtC8AppStoreP33_DA9BC2CFEEB6E3DF0988C0FBCF970E7129SubviewToAncestorResizingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SubviewToAncestorResizingView

- (_TtC8AppStoreP33_DA9BC2CFEEB6E3DF0988C0FBCF970E7129SubviewToAncestorResizingView)initWithFrame:(CGRect)frame
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

- (_TtC8AppStoreP33_DA9BC2CFEEB6E3DF0988C0FBCF970E7129SubviewToAncestorResizingView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000F43F4();
}

@end