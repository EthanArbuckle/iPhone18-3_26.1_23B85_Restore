@interface DeferredPublisher
- (_TtC11MobileTimer17DeferredPublisher)init;
- (void)deferActionWithTimeOut:(double)a3 completion:(id)a4;
- (void)publish;
@end

@implementation DeferredPublisher

- (void)deferActionWithTimeOut:(double)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = self;
  DeferredPublisher.deferAction(timeOut:completion:)(sub_100063930, v6);
}

- (void)publish
{
  v2 = self;
  sub_10005F248(&qword_1000D2510);
  sub_10006285C(&qword_1000D2590, &qword_1000D2510);
  Subject<>.send()();
}

- (_TtC11MobileTimer17DeferredPublisher)init
{
  v3 = OBJC_IVAR____TtC11MobileTimer17DeferredPublisher_receiver;
  sub_10005F248(&qword_1000D2510);
  swift_allocObject();
  *(&self->super.isa + v3) = PassthroughSubject.init()();
  *(&self->super.isa + OBJC_IVAR____TtC11MobileTimer17DeferredPublisher_cancellables) = &_swiftEmptySetSingleton;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DeferredPublisher();
  return [(DeferredPublisher *)&v5 init];
}

@end