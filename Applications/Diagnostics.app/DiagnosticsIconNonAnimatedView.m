@interface DiagnosticsIconNonAnimatedView
- (_TtC11Diagnostics30DiagnosticsIconNonAnimatedView)initWithCoder:(id)a3;
- (_TtC11Diagnostics30DiagnosticsIconNonAnimatedView)initWithFrame:(CGRect)a3;
- (void)animateWithCompletion:(id)a3;
- (void)hide;
- (void)show;
@end

@implementation DiagnosticsIconNonAnimatedView

- (_TtC11Diagnostics30DiagnosticsIconNonAnimatedView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DiagnosticsIconNonAnimatedView();
  v7 = [(DiagnosticsIconNonAnimatedView *)&v9 initWithFrame:x, y, width, height];
  sub_1000B5318();

  return v7;
}

- (_TtC11Diagnostics30DiagnosticsIconNonAnimatedView)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DiagnosticsIconNonAnimatedView();
  v4 = a3;
  v5 = [(DiagnosticsIconNonAnimatedView *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1000B5318();
  }

  return v6;
}

- (void)animateWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, 1);

    _Block_release(v4);
  }
}

- (void)hide
{
  v2 = self;
  sub_1000B56F4();
}

- (void)show
{
  v2 = self;
  sub_1000B5764();
}

@end