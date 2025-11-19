@interface ControlCenterAnimatingSpriteImageView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC6Bridge37ControlCenterAnimatingSpriteImageView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation ControlCenterAnimatingSpriteImageView

- (_TtC6Bridge37ControlCenterAnimatingSpriteImageView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_imageLayer;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(CALayer) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView__spriteImage) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_spriteFrameCount) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_spriteColumnCount) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_framesPerSecond) = 60;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_100142FC0();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_100142FC0();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100141B18();
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ControlCenterAnimatingSpriteImageView();
  v2 = v3.receiver;
  [(ControlCenterAnimatingSpriteImageView *)&v3 tintColorDidChange];
  sub_1001411D8();
}

@end