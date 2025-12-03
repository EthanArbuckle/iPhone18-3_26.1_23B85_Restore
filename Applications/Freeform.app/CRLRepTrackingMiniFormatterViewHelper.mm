@interface CRLRepTrackingMiniFormatterViewHelper
- (NSArray)decoratorOverlayRenderables;
- (_TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper)init;
- (id)crlaxRepToFocus;
- (void)didEndDynamicOperation;
- (void)didEndScrollingOperation;
- (void)didEndZoomingOperation;
- (void)unobscuredFrameDidChange;
- (void)willBeginDynamicOperation;
- (void)willBeginScrollingOperation;
- (void)willBeginZoomingOperation;
@end

@implementation CRLRepTrackingMiniFormatterViewHelper

- (id)crlaxRepToFocus
{
  selfCopy = self;

  v4 = sub_100BC17E0(v3);

  return v4;
}

- (_TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSArray)decoratorOverlayRenderables
{
  sub_100636208();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)willBeginDynamicOperation
{
  selfCopy = self;
  sub_10091CA0C();
}

- (void)didEndDynamicOperation
{
  selfCopy = self;
  sub_10091CCE4();
}

- (void)willBeginScrollingOperation
{
  v2 = qword_1019F2218;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.crlMiniFormatter;
  v4 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v4, "[MiniFormatter] RepTrackingViewHelper is beginning scroll operation", 67, 2, _swiftEmptyArrayStorage);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_isScrollingBoard) = 1;
}

- (void)didEndScrollingOperation
{
  v2 = qword_1019F2218;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.crlMiniFormatter;
  v4 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v4, "[MiniFormatter] RepTrackingViewHelper is ending scroll operation", 64, 2, _swiftEmptyArrayStorage);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_isScrollingBoard) = 0;
  sub_10091C3B4();
}

- (void)willBeginZoomingOperation
{
  selfCopy = self;
  sub_10091D134();
}

- (void)didEndZoomingOperation
{
  selfCopy = self;
  sub_10091D2BC();
}

- (void)unobscuredFrameDidChange
{
  selfCopy = self;
  sub_10091C3B4();
}

@end