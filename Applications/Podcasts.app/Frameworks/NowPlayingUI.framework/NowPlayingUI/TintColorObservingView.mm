@interface TintColorObservingView
- (_TtC12NowPlayingUI22TintColorObservingView)initWithCoder:(id)a3;
- (_TtC12NowPlayingUI22TintColorObservingView)initWithFrame:(CGRect)a3;
- (void)tintColorDidChange;
@end

@implementation TintColorObservingView

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TintColorObservingView();
  v2 = v6.receiver;
  [(TintColorObservingView *)&v6 tintColorDidChange];
  v3 = *&v2[OBJC_IVAR____TtC12NowPlayingUI22TintColorObservingView_tintColorDidChangeCallback];
  if (v3)
  {

    v4 = [v2 tintColor];
    if (v4)
    {
      v5 = v4;
      v3();

      sub_2173C(v3);
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

- (_TtC12NowPlayingUI22TintColorObservingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI22TintColorObservingView_tintColorDidChangeCallback);
  v9 = type metadata accessor for TintColorObservingView();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(TintColorObservingView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC12NowPlayingUI22TintColorObservingView)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI22TintColorObservingView_tintColorDidChangeCallback);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TintColorObservingView();
  v5 = a3;
  v6 = [(TintColorObservingView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end