@interface UserGuidesActivityDataProvider
- (LPSpecializationMetadata)specializationMetadata;
- (NSURL)activityURL;
- (_TtC4Maps30UserGuidesActivityDataProvider)init;
- (id)thumbnailImageForSuggestedSize:(CGSize)a3;
- (void)fetchHTMLTemplateWithCompletion:(id)a3;
@end

@implementation UserGuidesActivityDataProvider

- (void)fetchHTMLTemplateWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v7 = *&self->MUActivityDataProvider_opaque[OBJC_IVAR____TtC4Maps30UserGuidesActivityDataProvider_configuration];
  v6 = *&self->configuration[OBJC_IVAR____TtC4Maps30UserGuidesActivityDataProvider_configuration];
  v8 = swift_allocObject();
  v8[2] = sub_1000DE4EC;
  v8[3] = v5;
  v8[4] = v7;
  v8[5] = v6;
  v11[4] = sub_100363EC8;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100362F2C;
  v11[3] = &unk_101613910;
  v9 = _Block_copy(v11);
  v10 = self;

  swift_unknownObjectRetain();

  [(UserGuidesActivityDataProvider *)v10 fetchActivityURLWithCompletion:v9];

  _Block_release(v9);
}

- (NSURL)activityURL
{
  v3 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = *&self->MUActivityDataProvider_opaque[OBJC_IVAR____TtC4Maps30UserGuidesActivityDataProvider_configuration];
  v10 = self;
  v11 = [v9 fullSharingURL];
  if (v11)
  {
    v12 = v11;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  }

  else
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  }

  sub_100102C34(v5, v8);

  type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v8, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    URL._bridgeToObjectiveC()(v15);
    v18 = v17;
    (*(v14 + 8))(v8, v13);
    v16 = v18;
  }

  return v16;
}

- (LPSpecializationMetadata)specializationMetadata
{
  v2 = self;
  sub_10036375C();
  v4 = v3;

  return v4;
}

- (id)thumbnailImageForSuggestedSize:(CGSize)a3
{
  v3 = [*&self->MUActivityDataProvider_opaque[OBJC_IVAR____TtC4Maps30UserGuidesActivityDataProvider_configuration] image];

  return v3;
}

- (_TtC4Maps30UserGuidesActivityDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end