@interface StoreItemResponseSwift
+ (id)nextOptimalDownloadWindowWithHour:(int64_t)a3 minute:(int64_t)a4 duration:(double)a5;
+ (id)nextOptimalDownloadWindowWithHour:(int64_t)a3 minute:(int64_t)a4 duration:(double)a5 now:(id)a6 hourSpreadFactor:(id)a7;
- (_TtC9appstored22StoreItemResponseSwift)init;
@end

@implementation StoreItemResponseSwift

+ (id)nextOptimalDownloadWindowWithHour:(int64_t)a3 minute:(int64_t)a4 duration:(double)a5
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100085D40(&qword_10059BC50);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  swift_getObjCClassMetadata();
  static Date.now.getter();
  sub_100089618(a3, a4, v11, v14, a5);
  (*(v9 + 8))(v11, v8);
  v15 = type metadata accessor for DateInterval();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);
  v18 = 0;
  if (v17 != 1)
  {
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    (*(v16 + 8))(v14, v15);
    v18 = isa;
  }

  return v18;
}

+ (id)nextOptimalDownloadWindowWithHour:(int64_t)a3 minute:(int64_t)a4 duration:(double)a5 now:(id)a6 hourSpreadFactor:(id)a7
{
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100085D40(&qword_10059BC50);
  __chkstk_darwin(v15 - 8);
  v17 = &v25 - v16;
  v18 = _Block_copy(a7);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  sub_10008A2D4(a3, a4, v14, v18, v17, a5);
  (*(v12 + 8))(v14, v11);
  v19 = type metadata accessor for DateInterval();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v17, 1, v19);
  v22 = 0;
  if (v21 != 1)
  {
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    (*(v20 + 8))(v17, v19);
    v22 = isa;
  }

  return v22;
}

- (_TtC9appstored22StoreItemResponseSwift)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(StoreItemResponseSwift *)&v3 init];
}

@end