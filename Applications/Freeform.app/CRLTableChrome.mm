@interface CRLTableChrome
- (NSArray)decoratorOverlayRenderables;
- (_TtC8Freeform14CRLTableChrome)init;
- (void)dealloc;
- (void)validateTableAxisChrome;
- (void)willBeginZoomingOperation;
@end

@implementation CRLTableChrome

- (void)willBeginZoomingOperation
{
  *(self + OBJC_IVAR____TtC8Freeform14CRLTableChrome_shouldSuppressTableAxisChrome) = 1;
  v1 = *(self + OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHoveringSelectorLayer);
  *(self + OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHoveringSelectorLayer) = 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLTableChrome();
  v2 = v3.receiver;
  [(CRLTableChrome *)&v3 dealloc];
}

- (void)validateTableAxisChrome
{
  selfCopy = self;
  sub_1011C0F38();
}

- (_TtC8Freeform14CRLTableChrome)init
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

@end