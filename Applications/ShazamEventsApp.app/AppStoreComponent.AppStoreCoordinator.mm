@interface AppStoreComponent.AppStoreCoordinator
- (_TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator)init;
- (id)metricsActivityForLockupView:(id)view toPerformActionOfOffer:(id)offer;
- (id)productDetailsPresentationContextForLockupView:(id)view;
- (void)lockupView:(id)view appStateDidChange:(id)change;
- (void)lockupViewDidFinishRequest:(id)request;
@end

@implementation AppStoreComponent.AppStoreCoordinator

- (id)productDetailsPresentationContextForLockupView:(id)view
{
  v3 = [objc_allocWithZone(ASCLockupProductDetailsPresentationContext) initWithPresentationStyle:1];

  return v3;
}

- (void)lockupView:(id)view appStateDidChange:(id)change
{
  viewCopy = view;
  changeCopy = change;
  selfCopy = self;
  sub_100191A00(viewCopy, changeCopy);
}

- (void)lockupViewDidFinishRequest:(id)request
{
  v5 = sub_100009F70(&qword_10021F7D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = *&self->subtitle[OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_subtitle];
  if (v8)
  {
    v9 = *(&self->super.isa + OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_subtitle);
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    type metadata accessor for MainActor();
    requestCopy = request;
    selfCopy = self;

    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = requestCopy;
    v14[5] = v9;
    v14[6] = v8;
    sub_10013F12C(0, 0, v7, &unk_1001BCE10, v14);
  }
}

- (id)metricsActivityForLockupView:(id)view toPerformActionOfOffer:(id)offer
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_metricsQuery);
  selfCopy = self;
  os_unfair_lock_lock((v4 + 32));
  sub_1001927A8((v4 + 16), &v8);
  os_unfair_lock_unlock((v4 + 32));
  v6 = v8;

  return v6;
}

- (_TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end