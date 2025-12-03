@interface LocationSearchService
- (void)completer:(id)completer didFailWithError:(id)error;
- (void)completerDidUpdateResults:(id)results;
- (void)dealloc;
@end

@implementation LocationSearchService

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_completer);
  selfCopy = self;
  [v4 cancel];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(LocationSearchService *)&v6 dealloc];
}

- (void)completerDidUpdateResults:(id)results
{
  resultsCopy = results;
  selfCopy = self;
  sub_23864F658(resultsCopy);
}

- (void)completer:(id)completer didFailWithError:(id)error
{
  completerCopy = completer;
  errorCopy = error;
  selfCopy = self;
  sub_238650A08(errorCopy);
}

@end