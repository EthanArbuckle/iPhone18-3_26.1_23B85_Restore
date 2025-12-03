@interface LTWindow
- (_TtC19LiveTranscriptionUI8LTWindow)initWithCoder:(id)coder;
- (_TtC19LiveTranscriptionUI8LTWindow)initWithFrame:(CGRect)frame;
- (_TtC19LiveTranscriptionUI8LTWindow)initWithWindowScene:(id)scene;
- (void)localeDidChangeWithNotification:(id)notification;
@end

@implementation LTWindow

- (_TtC19LiveTranscriptionUI8LTWindow)initWithWindowScene:(id)scene
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19LiveTranscriptionUI8LTWindow_screenshotsHidingChanged) = sub_10003DCD0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LTWindow();
  sceneCopy = scene;
  v5 = [(LTWindow *)&v7 initWithWindowScene:sceneCopy];
  sub_10003D998();

  return v5;
}

- (_TtC19LiveTranscriptionUI8LTWindow)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19LiveTranscriptionUI8LTWindow_screenshotsHidingChanged) = sub_10003DCD0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)localeDidChangeWithNotification:(id)notification
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  if (([objc_opt_self() liveCaptionsSupported] & 1) == 0)
  {
    _AXSLiveTranscriptionSetEnabled();
  }

  (*(v4 + 8))(v7, v3);
}

- (_TtC19LiveTranscriptionUI8LTWindow)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end