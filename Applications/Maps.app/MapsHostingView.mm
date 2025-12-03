@interface MapsHostingView
- (CGSize)intrinsicContentSize;
- (_TtC4Maps15MapsHostingView)initWithCoder:(id)coder;
- (_TtC4Maps15MapsHostingView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
@end

@implementation MapsHostingView

- (_TtC4Maps15MapsHostingView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps15MapsHostingView_hostingController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MapsHostingView();
  v2 = v3.receiver;
  [(MapsHostingView *)&v3 didMoveToWindow];
  sub_10046A914(0);
  sub_10046A3C0();
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps15MapsHostingView_hostingController);
  if (v2)
  {
    selfCopy = self;
    view = [v2 view];
    if (!view)
    {
      __break(1u);
      goto LABEL_7;
    }

    v7 = view;
    [view intrinsicContentSize];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v9 = 0.0;
    v11 = 0.0;
  }

  v5 = v9;
  v6 = v11;
LABEL_7:
  result.height = v6;
  result.width = v5;
  return result;
}

- (_TtC4Maps15MapsHostingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end