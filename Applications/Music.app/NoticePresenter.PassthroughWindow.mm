@interface NoticePresenter.PassthroughWindow
- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow)initWithCoder:(id)a3;
- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow)initWithFrame:(CGRect)a3;
- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow)initWithWindowScene:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation NoticePresenter.PassthroughWindow

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_100B438F0(a4, x, y);

  return v10;
}

- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow)initWithWindowScene:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 1;
  v5.receiver = self;
  v5.super_class = type metadata accessor for NoticePresenter.PassthroughWindow();
  return [(NoticePresenter.PassthroughWindow *)&v5 initWithWindowScene:a3];
}

- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NoticePresenter.PassthroughWindow();
  return [(NoticePresenter.PassthroughWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for NoticePresenter.PassthroughWindow();
  v4 = a3;
  v5 = [(NoticePresenter.PassthroughWindow *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end