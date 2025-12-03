@interface SNResultsCollector
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
- (void)clearCompleteCount;
- (void)clearErrors;
- (void)clearResults;
- (void)request:(id)request didFailWithError:(id)error;
- (void)request:(id)request didProduceResult:(id)result;
- (void)requestDidComplete:(id)complete;
@end

@implementation SNResultsCollector

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  v3 = sub_1C9A924A8();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = static SNResultsCollector.automaticallyNotifiesObservers(forKey:)(v3, v5);

  return v6 & 1;
}

- (void)request:(id)request didProduceResult:(id)result
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  SNResultsCollector.request(_:didProduce:)(selfCopy, result);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)request:(id)request didFailWithError:(id)error
{
  swift_unknownObjectRetain();
  errorCopy = error;
  selfCopy = self;
  SNResultsCollector.request(_:didFailWithError:)(selfCopy, errorCopy);
  swift_unknownObjectRelease();
}

- (void)requestDidComplete:(id)complete
{
  swift_unknownObjectRetain();
  selfCopy = self;
  SNResultsCollector.requestDidComplete(_:)();
  swift_unknownObjectRelease();
}

- (void)clearResults
{
  selfCopy = self;
  sub_1C98CF0FC(0x73746C75736572, 0xE700000000000000, &OBJC_IVAR___SNResultsCollector_results);
}

- (void)clearErrors
{
  selfCopy = self;
  sub_1C98CF0FC(0x73726F727265, 0xE600000000000000, &OBJC_IVAR___SNResultsCollector_errors);
}

- (void)clearCompleteCount
{
  selfCopy = self;
  sub_1C98CF214();
}

@end