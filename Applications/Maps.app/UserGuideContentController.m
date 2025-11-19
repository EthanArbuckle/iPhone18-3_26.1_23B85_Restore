@interface UserGuideContentController
- (_TtC4Maps26UserGuideContentController)init;
- (void)collectionHandlerContentUpdated:(id)a3;
- (void)collectionHandlerInfoUpdated:(id)a3;
- (void)dealloc;
- (void)didFailToResolveCollectionWithError:(id)a3 withFetchedCollection:(id)a4;
- (void)didResolveCollection:(id)a3 resolverInfo:(id)a4;
@end

@implementation UserGuideContentController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps26UserGuideContentController_collectionHandler);
  v5 = self;
  [v4 removeObserver:v5];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(UserGuideContentController *)&v6 dealloc];
}

- (_TtC4Maps26UserGuideContentController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionHandlerContentUpdated:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100396914(v4);
}

- (void)collectionHandlerInfoUpdated:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100396E08(v4);
}

- (void)didResolveCollection:(id)a3 resolverInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10039786C(v7);
}

- (void)didFailToResolveCollectionWithError:(id)a3 withFetchedCollection:(id)a4
{
  swift_getKeyPath();
  sub_10039749C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  v5 = self;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

@end