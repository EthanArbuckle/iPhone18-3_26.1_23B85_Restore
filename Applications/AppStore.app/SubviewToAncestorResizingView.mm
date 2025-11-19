@interface SubviewToAncestorResizingView
- (_TtC8AppStoreP33_DA9BC2CFEEB6E3DF0988C0FBCF970E7129SubviewToAncestorResizingView)initWithCoder:(id)a3;
- (_TtC8AppStoreP33_DA9BC2CFEEB6E3DF0988C0FBCF970E7129SubviewToAncestorResizingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SubviewToAncestorResizingView

- (_TtC8AppStoreP33_DA9BC2CFEEB6E3DF0988C0FBCF970E7129SubviewToAncestorResizingView)initWithFrame:(CGRect)a3
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

- (_TtC8AppStoreP33_DA9BC2CFEEB6E3DF0988C0FBCF970E7129SubviewToAncestorResizingView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1000F43F4();
}

@end