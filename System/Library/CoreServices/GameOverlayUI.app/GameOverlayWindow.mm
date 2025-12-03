@interface GameOverlayWindow
- (_TtC13GameOverlayUI17GameOverlayWindow)initWithCoder:(id)coder;
- (_TtC13GameOverlayUI17GameOverlayWindow)initWithFrame:(CGRect)frame;
- (_TtC13GameOverlayUI17GameOverlayWindow)initWithWindowScene:(id)scene;
- (void)handleCancelGestureWithSender:(id)sender;
@end

@implementation GameOverlayWindow

- (void)handleCancelGestureWithSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1000D98C4();

  sub_100005688(v6, &qword_100131118, &unk_1000ED6E0);
}

- (_TtC13GameOverlayUI17GameOverlayWindow)initWithWindowScene:(id)scene
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13GameOverlayUI17GameOverlayWindow_pressGestureRecognizer) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(GameOverlayWindow *)&v7 initWithWindowScene:scene];
}

- (_TtC13GameOverlayUI17GameOverlayWindow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13GameOverlayUI17GameOverlayWindow_pressGestureRecognizer) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(GameOverlayWindow *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC13GameOverlayUI17GameOverlayWindow)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13GameOverlayUI17GameOverlayWindow_pressGestureRecognizer) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(GameOverlayWindow *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end