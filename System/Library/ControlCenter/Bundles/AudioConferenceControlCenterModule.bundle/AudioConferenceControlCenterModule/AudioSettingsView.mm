@interface AudioSettingsView
- (CGSize)intrinsicContentSize;
- (_TtC34AudioConferenceControlCenterModule17AudioSettingsView)initWithCoder:(id)coder;
- (_TtC34AudioConferenceControlCenterModule17AudioSettingsView)initWithFrame:(CGRect)frame;
@end

@implementation AudioSettingsView

- (CGSize)intrinsicContentSize
{
  v2 = *(&stru_20.maxprot + (swift_isaMask & self->super.super.super.isa));
  selfCopy = self;
  v4 = v2();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (_TtC34AudioConferenceControlCenterModule17AudioSettingsView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC34AudioConferenceControlCenterModule17AudioSettingsView_controlSize) = CGSizeZero;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AudioSettingsView();
  return [(AudioSettingsView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC34AudioConferenceControlCenterModule17AudioSettingsView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC34AudioConferenceControlCenterModule17AudioSettingsView_controlSize) = CGSizeZero;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudioSettingsView();
  coderCopy = coder;
  v5 = [(AudioSettingsView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end