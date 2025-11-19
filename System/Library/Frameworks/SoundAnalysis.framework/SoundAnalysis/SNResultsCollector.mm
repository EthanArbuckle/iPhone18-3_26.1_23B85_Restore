@interface SNResultsCollector
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
- (void)clearCompleteCount;
- (void)clearErrors;
- (void)clearResults;
- (void)request:(id)a3 didFailWithError:(id)a4;
- (void)request:(id)a3 didProduceResult:(id)a4;
- (void)requestDidComplete:(id)a3;
@end

@implementation SNResultsCollector

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v3 = sub_1C9A924A8();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = static SNResultsCollector.automaticallyNotifiesObservers(forKey:)(v3, v5);

  return v6 & 1;
}

- (void)request:(id)a3 didProduceResult:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = self;
  SNResultsCollector.request(_:didProduce:)(v6, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)request:(id)a3 didFailWithError:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v6 = self;
  SNResultsCollector.request(_:didFailWithError:)(v6, v7);
  swift_unknownObjectRelease();
}

- (void)requestDidComplete:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  SNResultsCollector.requestDidComplete(_:)();
  swift_unknownObjectRelease();
}

- (void)clearResults
{
  v2 = self;
  sub_1C98CF0FC(0x73746C75736572, 0xE700000000000000, &OBJC_IVAR___SNResultsCollector_results);
}

- (void)clearErrors
{
  v2 = self;
  sub_1C98CF0FC(0x73726F727265, 0xE600000000000000, &OBJC_IVAR___SNResultsCollector_errors);
}

- (void)clearCompleteCount
{
  v2 = self;
  sub_1C98CF214();
}

@end