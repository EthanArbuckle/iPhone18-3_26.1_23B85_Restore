@interface HotReloadStatusHUDWindow
- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA224HotReloadStatusHUDWindow)initWithCoder:(id)a3;
- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA224HotReloadStatusHUDWindow)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation HotReloadStatusHUDWindow

- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA224HotReloadStatusHUDWindow)initWithCoder:(id)a3
{
  result = sub_84AFC();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for HotReloadStatusHUDWindow();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(HotReloadStatusHUDWindow *)&v13 hitTest:v8 withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  type metadata accessor for HotReloadStatusHUDManager();
  v11 = [v10 isKindOfClass:{swift_getObjCClassFromMetadata(), v13.receiver, v13.super_class}];

  v7 = v10;
  if ((v11 & 1) == 0)
  {
LABEL_5:

    v10 = 0;
  }

  return v10;
}

- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA224HotReloadStatusHUDWindow)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end