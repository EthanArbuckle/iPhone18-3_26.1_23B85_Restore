@interface StatusBarOverlayWindow
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B422StatusBarOverlayWindow)initWithCoder:(id)coder;
- (_TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B422StatusBarOverlayWindow)initWithFrame:(CGRect)frame;
- (_TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B422StatusBarOverlayWindow)initWithWindowScene:(id)scene;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation StatusBarOverlayWindow

- (_TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B422StatusBarOverlayWindow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B422StatusBarOverlayWindow_interactionView) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  height = [(StatusBarOverlayWindow *)&v11 initWithFrame:x, y, width, height];
  [(StatusBarOverlayWindow *)height setWindowLevel:UIWindowLevelStatusBar];
  [(StatusBarOverlayWindow *)height _setWindowControlsStatusBarOrientation:0];

  return height;
}

- (_TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B422StatusBarOverlayWindow)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B422StatusBarOverlayWindow_interactionView) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(StatusBarOverlayWindow *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B422StatusBarOverlayWindow_interactionView);
  if (!v4)
  {
    return 0;
  }

  y = inside.y;
  x = inside.x;
  eventCopy = event;
  selfCopy = self;
  v10 = v4;
  [(StatusBarOverlayWindow *)selfCopy convertPoint:v10 toCoordinateSpace:x, y];
  v11 = [v10 pointInside:eventCopy withEvent:?];

  return v11;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(StatusBarOverlayWindow *)&v13 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_BE70(0, &qword_93E550);
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = sub_76A1C0();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (_TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B422StatusBarOverlayWindow)initWithWindowScene:(id)scene
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end