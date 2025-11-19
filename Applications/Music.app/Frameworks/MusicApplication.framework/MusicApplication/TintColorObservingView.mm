@interface TintColorObservingView
- (_TtC16MusicApplication22TintColorObservingView)initWithCoder:(id)a3;
- (_TtC16MusicApplication22TintColorObservingView)initWithFrame:(CGRect)a3;
- (void)tintColorDidChange;
@end

@implementation TintColorObservingView

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TintColorObservingView();
  v2 = v7.receiver;
  [(TintColorObservingView *)&v7 tintColorDidChange];
  v3 = &v2[OBJC_IVAR____TtC16MusicApplication22TintColorObservingView_tintColorDidChangeCallback];
  swift_beginAccess();
  v4 = *v3;
  if (!*v3)
  {
    goto LABEL_4;
  }

  v5 = [v2 tintColor];
  if (v5)
  {
    v6 = v5;
    v4();

    sub_17654(v4);
LABEL_4:

    return;
  }

  __break(1u);
}

- (_TtC16MusicApplication22TintColorObservingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication22TintColorObservingView_tintColorDidChangeCallback);
  v9 = type metadata accessor for TintColorObservingView();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(TintColorObservingView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC16MusicApplication22TintColorObservingView)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication22TintColorObservingView_tintColorDidChangeCallback);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TintColorObservingView();
  v5 = a3;
  v6 = [(TintColorObservingView *)&v8 initWithCoder:v5];

  return v6;
}

@end