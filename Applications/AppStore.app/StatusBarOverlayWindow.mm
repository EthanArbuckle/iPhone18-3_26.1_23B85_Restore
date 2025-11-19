@interface StatusBarOverlayWindow
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F22StatusBarOverlayWindow)initWithCoder:(id)a3;
- (_TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F22StatusBarOverlayWindow)initWithFrame:(CGRect)a3;
- (_TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F22StatusBarOverlayWindow)initWithWindowScene:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation StatusBarOverlayWindow

- (_TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F22StatusBarOverlayWindow)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F22StatusBarOverlayWindow_interactionView) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(StatusBarOverlayWindow *)&v11 initWithFrame:x, y, width, height];
  [(StatusBarOverlayWindow *)v9 setWindowLevel:UIWindowLevelStatusBar];
  [(StatusBarOverlayWindow *)v9 _setWindowControlsStatusBarOrientation:0];

  return v9;
}

- (_TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F22StatusBarOverlayWindow)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F22StatusBarOverlayWindow_interactionView) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(StatusBarOverlayWindow *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F22StatusBarOverlayWindow_interactionView);
  if (!v4)
  {
    return 0;
  }

  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = v4;
  [(StatusBarOverlayWindow *)v9 convertPoint:v10 toCoordinateSpace:x, y];
  v11 = [v10 pointInside:v8 withEvent:?];

  return v11;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(StatusBarOverlayWindow *)&v13 hitTest:v8 withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_100005744(0, &qword_100972EB0);
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = static NSObject.== infix(_:_:)();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (_TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F22StatusBarOverlayWindow)initWithWindowScene:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end