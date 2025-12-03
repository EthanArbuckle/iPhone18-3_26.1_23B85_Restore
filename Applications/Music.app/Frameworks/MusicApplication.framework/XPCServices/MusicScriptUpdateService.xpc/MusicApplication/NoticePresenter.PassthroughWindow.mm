@interface NoticePresenter.PassthroughWindow
- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow)initWithCoder:(id)coder;
- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow)initWithFrame:(CGRect)frame;
- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow)initWithWindowScene:(id)scene;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation NoticePresenter.PassthroughWindow

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1002FE14C(event, x, y);

  return v10;
}

- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow)initWithWindowScene:(id)scene
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 1;
  v5.receiver = self;
  v5.super_class = type metadata accessor for NoticePresenter.PassthroughWindow();
  return [(NoticePresenter.PassthroughWindow *)&v5 initWithWindowScene:scene];
}

- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NoticePresenter.PassthroughWindow();
  return [(NoticePresenter.PassthroughWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for NoticePresenter.PassthroughWindow();
  coderCopy = coder;
  v5 = [(NoticePresenter.PassthroughWindow *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end