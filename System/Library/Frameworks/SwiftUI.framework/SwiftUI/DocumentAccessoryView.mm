@interface DocumentAccessoryView
- (_TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView)initWithCoder:(id)a3;
- (_TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
@end

@implementation DocumentAccessoryView

- (_TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(DocumentAccessoryView *)&v3 layoutMarginsDidChange];
  [v2 setNeedsLayout];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(DocumentAccessoryView *)&v3 layoutSubviews];
  DocumentAccessoryView.updateRootView()();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = DocumentAccessoryView.hitTest(_:with:)(a4, x, y);

  return v10;
}

- (_TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end