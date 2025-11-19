@interface CalculatorHistoryRecordManager.NSCacheObserver
- (_TtCC10Calculator30CalculatorHistoryRecordManagerP33_4DA60216990E372C1AC9732F1D785D1D15NSCacheObserver)init;
- (void)cache:(id)a3 willEvictObject:(id)a4;
@end

@implementation CalculatorHistoryRecordManager.NSCacheObserver

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v7 = *&v6->callback[OBJC_IVAR____TtCC10Calculator30CalculatorHistoryRecordManagerP33_4DA60216990E372C1AC9732F1D785D1D15NSCacheObserver_callback];
  (*(&v6->super.isa + OBJC_IVAR____TtCC10Calculator30CalculatorHistoryRecordManagerP33_4DA60216990E372C1AC9732F1D785D1D15NSCacheObserver_callback))(v5, v8);

  sub_100003F80(v8);
}

- (_TtCC10Calculator30CalculatorHistoryRecordManagerP33_4DA60216990E372C1AC9732F1D785D1D15NSCacheObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end