@interface MediumAdLockupWithScreenshotsBackgroundView
- (NSArray)accessibilityElements;
- (void)layoutSubviews;
- (void)setAccessibilityElements:(id)a3;
@end

@implementation MediumAdLockupWithScreenshotsBackgroundView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  v2 = v4.receiver;
  [(MediumAdLockupWithScreenshotsBackgroundView *)&v4 layoutSubviews];
  sub_17EA68();
  sub_17E8E8();
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (NSArray)accessibilityElements
{
  sub_BD88(&qword_941C10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_77B6D0;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView);
  *(v3 + 56) = type metadata accessor for TodayCardLockupView();
  *(v3 + 32) = v4;
  v5 = v4;
  v6.super.isa = sub_769450().super.isa;

  return v6.super.isa;
}

- (void)setAccessibilityElements:(id)a3
{
  if (a3)
  {
    sub_769460();
    v4 = self;
    v5.super.isa = sub_769450().super.isa;
  }

  else
  {
    v6 = self;
    v5.super.isa = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  [(MediumAdLockupWithScreenshotsBackgroundView *)&v7 setAccessibilityElements:v5.super.isa];
}

@end