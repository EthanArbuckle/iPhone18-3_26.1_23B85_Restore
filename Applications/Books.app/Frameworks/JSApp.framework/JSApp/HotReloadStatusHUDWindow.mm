@interface HotReloadStatusHUDWindow
- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA224HotReloadStatusHUDWindow)initWithCoder:(id)coder;
- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA224HotReloadStatusHUDWindow)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation HotReloadStatusHUDWindow

- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA224HotReloadStatusHUDWindow)initWithCoder:(id)coder
{
  result = sub_84AFC();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for HotReloadStatusHUDWindow();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(HotReloadStatusHUDWindow *)&v13 hitTest:eventCopy withEvent:x, y];
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

- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA224HotReloadStatusHUDWindow)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end