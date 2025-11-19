@interface AppStoreComponent.AppStoreCoordinator
- (_TtCV16EventViewService17AppStoreComponent19AppStoreCoordinator)init;
- (id)metricsActivityForLockupView:(id)a3 toPerformActionOfOffer:(id)a4;
- (id)productDetailsPresentationContextForLockupView:(id)a3;
- (void)lockupView:(id)a3 appStateDidChange:(id)a4;
- (void)lockupViewDidFinishRequest:(id)a3;
@end

@implementation AppStoreComponent.AppStoreCoordinator

- (id)productDetailsPresentationContextForLockupView:(id)a3
{
  v3 = [objc_allocWithZone(ASCLockupProductDetailsPresentationContext) initWithPresentationStyle:1];

  return v3;
}

- (void)lockupView:(id)a3 appStateDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100185C70(v6, v7);
}

- (void)lockupViewDidFinishRequest:(id)a3
{
  v5 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = *&self->subtitle[OBJC_IVAR____TtCV16EventViewService17AppStoreComponent19AppStoreCoordinator_subtitle];
  if (v8)
  {
    v9 = *(&self->super.isa + OBJC_IVAR____TtCV16EventViewService17AppStoreComponent19AppStoreCoordinator_subtitle);
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    type metadata accessor for MainActor();
    v11 = a3;
    v12 = self;

    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v11;
    v14[5] = v9;
    v14[6] = v8;
    sub_1001904E0(0, 0, v7, &unk_1001C2AD8, v14);
  }
}

- (id)metricsActivityForLockupView:(id)a3 toPerformActionOfOffer:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV16EventViewService17AppStoreComponent19AppStoreCoordinator_metricsQuery);
  v5 = self;
  os_unfair_lock_lock((v4 + 32));
  sub_100186A18((v4 + 16), &v8);
  os_unfair_lock_unlock((v4 + 32));
  v6 = v8;

  return v6;
}

- (_TtCV16EventViewService17AppStoreComponent19AppStoreCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end