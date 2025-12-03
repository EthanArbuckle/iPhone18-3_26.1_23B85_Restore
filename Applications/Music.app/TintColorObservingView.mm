@interface TintColorObservingView
- (_TtC5Music22TintColorObservingView)initWithCoder:(id)coder;
- (_TtC5Music22TintColorObservingView)initWithFrame:(CGRect)frame;
- (void)tintColorDidChange;
@end

@implementation TintColorObservingView

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TintColorObservingView();
  v2 = v7.receiver;
  [(TintColorObservingView *)&v7 tintColorDidChange];
  v3 = &v2[OBJC_IVAR____TtC5Music22TintColorObservingView_tintColorDidChangeCallback];
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {

    tintColor = [v2 tintColor];
    if (tintColor)
    {
      v6 = tintColor;
      v4();

      sub_100020438(v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

- (_TtC5Music22TintColorObservingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC5Music22TintColorObservingView_tintColorDidChangeCallback);
  v9 = type metadata accessor for TintColorObservingView();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(TintColorObservingView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC5Music22TintColorObservingView)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC5Music22TintColorObservingView_tintColorDidChangeCallback);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TintColorObservingView();
  coderCopy = coder;
  v6 = [(TintColorObservingView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end