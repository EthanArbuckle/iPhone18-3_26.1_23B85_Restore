@interface GameOverlayWindow
- (_TtC13GameOverlayUI17GameOverlayWindow)initWithCoder:(id)a3;
- (_TtC13GameOverlayUI17GameOverlayWindow)initWithFrame:(CGRect)a3;
- (_TtC13GameOverlayUI17GameOverlayWindow)initWithWindowScene:(id)a3;
- (void)handleCancelGestureWithSender:(id)a3;
@end

@implementation GameOverlayWindow

- (void)handleCancelGestureWithSender:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1000D98C4();

  sub_100005688(v6, &qword_100131118, &unk_1000ED6E0);
}

- (_TtC13GameOverlayUI17GameOverlayWindow)initWithWindowScene:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13GameOverlayUI17GameOverlayWindow_pressGestureRecognizer) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(GameOverlayWindow *)&v7 initWithWindowScene:a3];
}

- (_TtC13GameOverlayUI17GameOverlayWindow)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13GameOverlayUI17GameOverlayWindow_pressGestureRecognizer) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(GameOverlayWindow *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC13GameOverlayUI17GameOverlayWindow)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13GameOverlayUI17GameOverlayWindow_pressGestureRecognizer) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(GameOverlayWindow *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end