@interface SubtitledButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC12NowPlayingUI15SubtitledButton)initWithCoder:(id)coder;
- (_TtC12NowPlayingUI15SubtitledButton)initWithFrame:(CGRect)frame;
@end

@implementation SubtitledButton

- (_TtC12NowPlayingUI15SubtitledButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI15SubtitledButton_title);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI15SubtitledButton_subtitle);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC12NowPlayingUI15SubtitledButton_textColor;
  *(&self->super.super.super.super.super.isa + v11) = [objc_opt_self() whiteColor];
  v14.receiver = self;
  v14.super_class = ObjectType;
  height = [(MultilineButton *)&v14 initWithFrame:x, y, width, height];
  sub_AE154();

  return height;
}

- (_TtC12NowPlayingUI15SubtitledButton)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI15SubtitledButton_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI15SubtitledButton_subtitle);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC12NowPlayingUI15SubtitledButton_textColor;
  *(&self->super.super.super.super.super.isa + v5) = [objc_opt_self() whiteColor];
  result = sub_1452FC();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  [(MultilineButton *)&v7 sizeThatFits:width, height];
  v6 = 50.0;
  result.height = v6;
  result.width = v5;
  return result;
}

@end