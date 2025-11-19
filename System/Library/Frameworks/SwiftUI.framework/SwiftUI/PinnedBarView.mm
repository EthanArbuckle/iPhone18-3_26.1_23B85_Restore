@interface PinnedBarView
- (_TtC7SwiftUI13PinnedBarView)initWithCoder:(id)a3;
- (_TtC7SwiftUI13PinnedBarView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)willMoveToWindow:(id)a3;
@end

@implementation PinnedBarView

- (_TtC7SwiftUI13PinnedBarView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PinnedBarView();
  v2 = v5.receiver;
  [(PinnedBarView *)&v5 didMoveToWindow];
  v3 = UIView.containingHostingScrollView.getter();
  if (v3)
  {
    v4 = v3;
    HostingScrollView.addPinnedView(_:edge:)(v2, *(v2 + OBJC_IVAR____TtC7SwiftUI13PinnedBarView_edge));
  }
}

- (void)willMoveToWindow:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for PinnedBarView();
  v4 = v8.receiver;
  v5 = a3;
  [(PinnedBarView *)&v8 willMoveToWindow:v5];
  v6 = UIView.containingHostingScrollView.getter();
  if (v6)
  {
    v7 = v6;
    HostingScrollView.removePinnedView(_:)(v4);
  }
}

- (_TtC7SwiftUI13PinnedBarView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end