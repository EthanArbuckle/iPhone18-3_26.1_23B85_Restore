@interface DocumentAccessoryView
- (_TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView)initWithCoder:(id)coder;
- (_TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
@end

@implementation DocumentAccessoryView

- (_TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView)initWithCoder:(id)coder
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = DocumentAccessoryView.hitTest(_:with:)(event, x, y);

  return v10;
}

- (_TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end