@interface MapRegionActivityDataProvider
- (NSData)pushSubmissionData;
- (NSString)activityTitle;
- (NSURL)activityURL;
- (_TtC4Maps29MapRegionActivityDataProvider)init;
- (_TtC4Maps29MapRegionActivityDataProvider)initWithMapRegion:(id *)a3 camera:(id)a4 title:(id)a5 mapType:(unint64_t)a6;
@end

@implementation MapRegionActivityDataProvider

- (_TtC4Maps29MapRegionActivityDataProvider)initWithMapRegion:(id *)a3 camera:(id)a4 title:(id)a5 mapType:(unint64_t)a6
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = a3;
  v20 = sub_1000D4208(v19, v16, v18, a5, v15, v14, v13, v12);

  return v20;
}

- (NSURL)activityURL
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, &self->MUActivityDataProvider_opaque[OBJC_IVAR____TtC4Maps29MapRegionActivityDataProvider_url], v3, v5);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (NSString)activityTitle
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSData)pushSubmissionData
{
  v2 = self;
  v3 = sub_1000D3E78();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000D41A0(v3, v5);
    v6 = isa;
  }

  return v6;
}

- (_TtC4Maps29MapRegionActivityDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end