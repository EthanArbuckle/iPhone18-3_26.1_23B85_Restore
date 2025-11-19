@interface URLBagFeatureFlag
- (_TtC3akd17URLBagFeatureFlag)init;
- (_TtC3akd17URLBagFeatureFlag)initWithUrlBagKey:(id)a3 urlBagProvider:(id)a4;
- (void)featureStatusWithCompletionHandler:(id)a3;
- (void)fetchURLWithCompletionHandler:(id)a3;
@end

@implementation URLBagFeatureFlag

- (_TtC3akd17URLBagFeatureFlag)initWithUrlBagKey:(id)a3 urlBagProvider:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedURL;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(&self->$defaultActor[v9], 1, 1, v10);
  *&self->$defaultActor[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus] = 0;
  *&self->$defaultActor[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask] = 0;
  *&self->$defaultActor[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagKey] = v8;
  v11 = &self->$defaultActor[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagProvider];
  *v11 = sub_10022B974;
  v11[1] = v7;
  v13.receiver = self;
  v13.super_class = type metadata accessor for URLBagFeatureFlag();
  return [(URLBagFeatureFlag *)&v13 init];
}

- (void)fetchURLWithCompletionHandler:(id)a3
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029F4E0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029F4E8;
  v13[5] = v12;

  sub_100244978(0, 0, v8, &unk_10029F4F0, v13);
}

- (void)featureStatusWithCompletionHandler:(id)a3
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029F4D0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029C6A0;
  v13[5] = v12;

  sub_100244978(0, 0, v8, &unk_10029CEE0, v13);
}

- (_TtC3akd17URLBagFeatureFlag)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end