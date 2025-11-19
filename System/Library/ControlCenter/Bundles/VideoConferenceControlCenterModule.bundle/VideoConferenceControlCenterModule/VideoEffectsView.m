@interface VideoEffectsView
- (CGSize)intrinsicContentSize;
- (_TtC34VideoConferenceControlCenterModule16VideoEffectsView)initWithCoder:(id)a3;
- (_TtC34VideoConferenceControlCenterModule16VideoEffectsView)initWithFrame:(CGRect)a3;
@end

@implementation VideoEffectsView

- (CGSize)intrinsicContentSize
{
  v2 = *(&stru_20.maxprot + (swift_isaMask & self->super.super.super.isa));
  v3 = self;
  v4 = v2();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (_TtC34VideoConferenceControlCenterModule16VideoEffectsView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC34VideoConferenceControlCenterModule16VideoEffectsView_controlSize) = CGSizeZero;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VideoEffectsView();
  return [(VideoEffectsView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC34VideoConferenceControlCenterModule16VideoEffectsView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC34VideoConferenceControlCenterModule16VideoEffectsView_controlSize) = CGSizeZero;
  v7.receiver = self;
  v7.super_class = type metadata accessor for VideoEffectsView();
  v4 = a3;
  v5 = [(VideoEffectsView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end