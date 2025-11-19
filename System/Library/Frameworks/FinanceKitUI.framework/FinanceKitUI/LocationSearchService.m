@interface LocationSearchService
- (void)completer:(id)a3 didFailWithError:(id)a4;
- (void)completerDidUpdateResults:(id)a3;
- (void)dealloc;
@end

@implementation LocationSearchService

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_completer);
  v5 = self;
  [v4 cancel];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(LocationSearchService *)&v6 dealloc];
}

- (void)completerDidUpdateResults:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23864F658(v4);
}

- (void)completer:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_238650A08(v8);
}

@end