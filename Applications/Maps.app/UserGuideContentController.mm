@interface UserGuideContentController
- (_TtC4Maps26UserGuideContentController)init;
- (void)collectionHandlerContentUpdated:(id)updated;
- (void)collectionHandlerInfoUpdated:(id)updated;
- (void)dealloc;
- (void)didFailToResolveCollectionWithError:(id)error withFetchedCollection:(id)collection;
- (void)didResolveCollection:(id)collection resolverInfo:(id)info;
@end

@implementation UserGuideContentController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps26UserGuideContentController_collectionHandler);
  selfCopy = self;
  [v4 removeObserver:selfCopy];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(UserGuideContentController *)&v6 dealloc];
}

- (_TtC4Maps26UserGuideContentController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionHandlerContentUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  sub_100396914(updatedCopy);
}

- (void)collectionHandlerInfoUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  sub_100396E08(updatedCopy);
}

- (void)didResolveCollection:(id)collection resolverInfo:(id)info
{
  collectionCopy = collection;
  infoCopy = info;
  selfCopy = self;
  sub_10039786C(infoCopy);
}

- (void)didFailToResolveCollectionWithError:(id)error withFetchedCollection:(id)collection
{
  swift_getKeyPath();
  sub_10039749C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  selfCopy = self;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

@end