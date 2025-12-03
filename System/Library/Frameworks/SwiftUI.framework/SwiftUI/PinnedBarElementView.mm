@interface PinnedBarElementView
- (_TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView)initWithCoder:(id)coder;
- (_TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)willMoveToWindow:(id)window;
@end

@implementation PinnedBarElementView

- (_TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_style) = 3;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_pocketInteraction) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PinnedBarElementView();
  v2 = v3.receiver;
  [(PinnedBarElementView *)&v3 didMoveToWindow];
  PinnedBarElementView.update()();
}

- (void)willMoveToWindow:(id)window
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for PinnedBarElementView();
  v4 = v10.receiver;
  windowCopy = window;
  [(PinnedBarElementView *)&v10 willMoveToWindow:windowCopy];
  v6 = OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_pocketInteraction;
  v7 = *&v4[OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_pocketInteraction];
  if (v7)
  {
    v8 = v7;
    [v4 removeInteraction_];

    v9 = *&v4[v6];
    *&v4[v6] = 0;

    v4 = v9;
  }

  else
  {
  }
}

- (_TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end