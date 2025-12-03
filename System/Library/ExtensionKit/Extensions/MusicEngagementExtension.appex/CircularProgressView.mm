@interface CircularProgressView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC11MusicCoreUI20CircularProgressView)initWithFrame:(CGRect)frame;
- (double)accessibilityProgressValue;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation CircularProgressView

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(CircularProgressView *)&v3 tintColorDidChange];
  CircularProgressView.updateColors()();
}

- (void)layoutSubviews
{
  selfCopy = self;
  CircularProgressView.layoutSubviews()();
}

- (CGSize)intrinsicContentSize
{
  v2 = (self + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = (self + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  result.height = v5;
  result.width = v4;
  return result;
}

- (double)accessibilityProgressValue
{
  v2 = self + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((self->preferredSize[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 2] & 1) == 0)
  {
    v4 = *v2;
    v5 = *(v2 + 4);
    if ((v5 & 0x100) != 0)
    {
      if (!(*&v4 | v5))
      {
        return 1.0;
      }
    }

    else
    {
      result = v4;
      if (v5)
      {
        return 0.0;
      }
    }
  }

  return result;
}

- (_TtC11MusicCoreUI20CircularProgressView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end