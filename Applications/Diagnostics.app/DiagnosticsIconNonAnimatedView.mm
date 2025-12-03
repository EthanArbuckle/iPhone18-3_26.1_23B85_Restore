@interface DiagnosticsIconNonAnimatedView
- (_TtC11Diagnostics30DiagnosticsIconNonAnimatedView)initWithCoder:(id)coder;
- (_TtC11Diagnostics30DiagnosticsIconNonAnimatedView)initWithFrame:(CGRect)frame;
- (void)animateWithCompletion:(id)completion;
- (void)hide;
- (void)show;
@end

@implementation DiagnosticsIconNonAnimatedView

- (_TtC11Diagnostics30DiagnosticsIconNonAnimatedView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DiagnosticsIconNonAnimatedView();
  height = [(DiagnosticsIconNonAnimatedView *)&v9 initWithFrame:x, y, width, height];
  sub_1000B5318();

  return height;
}

- (_TtC11Diagnostics30DiagnosticsIconNonAnimatedView)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DiagnosticsIconNonAnimatedView();
  coderCopy = coder;
  v5 = [(DiagnosticsIconNonAnimatedView *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1000B5318();
  }

  return v6;
}

- (void)animateWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, 1);

    _Block_release(v4);
  }
}

- (void)hide
{
  selfCopy = self;
  sub_1000B56F4();
}

- (void)show
{
  selfCopy = self;
  sub_1000B5764();
}

@end