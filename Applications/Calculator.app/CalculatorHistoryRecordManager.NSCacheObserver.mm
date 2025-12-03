@interface CalculatorHistoryRecordManager.NSCacheObserver
- (_TtCC10Calculator30CalculatorHistoryRecordManagerP33_4DA60216990E372C1AC9732F1D785D1D15NSCacheObserver)init;
- (void)cache:(id)cache willEvictObject:(id)object;
@end

@implementation CalculatorHistoryRecordManager.NSCacheObserver

- (void)cache:(id)cache willEvictObject:(id)object
{
  cacheCopy = cache;
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v7 = *&selfCopy->callback[OBJC_IVAR____TtCC10Calculator30CalculatorHistoryRecordManagerP33_4DA60216990E372C1AC9732F1D785D1D15NSCacheObserver_callback];
  (*(&selfCopy->super.isa + OBJC_IVAR____TtCC10Calculator30CalculatorHistoryRecordManagerP33_4DA60216990E372C1AC9732F1D785D1D15NSCacheObserver_callback))(cacheCopy, v8);

  sub_100003F80(v8);
}

- (_TtCC10Calculator30CalculatorHistoryRecordManagerP33_4DA60216990E372C1AC9732F1D785D1D15NSCacheObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end