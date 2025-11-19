@interface PlayerTimeControl
- (BOOL)accessibilityIsLiveContent;
- (_TtC5Music17PlayerTimeControl)initWithFrame:(CGRect)a3;
- (double)accessibilityElapsedDuration;
- (double)accessibilityTotalDuration;
- (double)alpha;
- (void)accessibilityUpdateWithElapsedDuration:(double)a3;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAlpha:(double)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PlayerTimeControl

- (void)setHidden:(BOOL)a3
{
  v4 = self;
  sub_10030F3E0(a3);
}

- (double)alpha
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlayerTimeControl();
  [(PlayerTimeControl *)&v3 alpha];
  return result;
}

- (void)setAlpha:(double)a3
{
  v4 = self;
  sub_10030F574(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10030F670();
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PlayerTimeControl();
  v4 = a3;
  v5 = v6.receiver;
  [(PlayerTimeControl *)&v6 traitCollectionDidChange:v4];
  sub_10031042C();
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PlayerTimeControl();
  v2 = v5.receiver;
  [(PlayerTimeControl *)&v5 didMoveToWindow];
  v3 = [v2 window];
  v4 = [v3 windowScene];

  PlaybackTimeObserver.windowScene.setter(v4);
}

- (void)didMoveToSuperview
{
  v2 = self;
  sub_10030F918();
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlayerTimeControl();
  v2 = v3.receiver;
  [(PlayerTimeControl *)&v3 tintColorDidChange];
  sub_10030FBC0();
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for PlayerTimeControl();
  v11.receiver = self;
  v11.super_class = v5;
  v6 = self;
  v7 = [(PlayerTimeControl *)&v11 isEnabled];
  v10.receiver = v6;
  v10.super_class = v5;
  [(PlayerTimeControl *)&v10 setEnabled:v3];
  if (v7 != [(PlayerTimeControl *)v6 isEnabled])
  {
    v8 = *(&v6->super.super.super.super.isa + OBJC_IVAR____TtC5Music17PlayerTimeControl_slider);
    v9 = [(PlayerTimeControl *)v6 isEnabled];
    (*((swift_isaMask & *v8) + 0x258))(v9);
  }
}

- (double)accessibilityTotalDuration
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music17PlayerTimeControl_timeObserver);
  swift_beginAccess();
  result = 0.0;
  if (*(v2 + 104) != 2)
  {
    return *(v2 + 80);
  }

  return result;
}

- (double)accessibilityElapsedDuration
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music17PlayerTimeControl_timeObserver);
  swift_beginAccess();
  v4 = *(v3 + 104);
  result = 0.0;
  if (v4 != 2)
  {
    v6 = *(v3 + 96);
    v7 = *(v3 + 88);
    v8 = self;
    v11 = *(v3 + 72);
    v12 = *(v3 + 56);
    static Date.timeIntervalSinceReferenceDate.getter();
    v13[0] = v12;
    v13[1] = v11;
    v14 = v7;
    v15 = v6;
    v16 = v4 & 0x101;
    v17 = BYTE2(v4) & 1;
    v10 = sub_100311B00(v13, v9);

    return v10;
  }

  return result;
}

- (void)accessibilityUpdateWithElapsedDuration:(double)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music17PlayerTimeControl_timeDidChangeHandler);
  if (v3)
  {
    v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music17PlayerTimeControl__tracking);
    v6 = self;
    sub_100030444(v3);
    v3(v5, a3);

    sub_100020438(v3);
  }
}

- (BOOL)accessibilityIsLiveContent
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music17PlayerTimeControl_timeObserver);
  swift_beginAccess();
  return (*(v2 + 104) != 2) & *(v2 + 104);
}

- (_TtC5Music17PlayerTimeControl)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end