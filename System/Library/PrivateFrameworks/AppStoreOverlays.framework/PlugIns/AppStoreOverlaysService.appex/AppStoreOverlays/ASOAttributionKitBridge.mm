@interface ASOAttributionKitBridge
- (ASOAttributionKitBridge)init;
- (id)processReengagementWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s bundleID:(id)iD url:(id)url;
@end

@implementation ASOAttributionKitBridge

- (id)processReengagementWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s bundleID:(id)iD url:(id)url
{
  v8 = *(*(sub_10000D4AC(&qword_10002C1C8, &unk_10001CCA0) - 8) + 64);
  v9 = (__chkstk_darwin)();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  sub_100018458();
  sub_100018458();
  if (url)
  {
    sub_100018078();
    v14 = sub_100018088();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v14 = sub_100018088();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  selfCopy = self;
  sub_10000DF3C();

  sub_10000E79C(v11, &qword_10002C1C8, &unk_10001CCA0);
  sub_100018088();
  v16 = *(v14 - 8);
  v17 = (*(v16 + 48))(v13, 1, v14);
  v18 = 0;
  if (v17 != 1)
  {
    sub_100018068(v17);
    v20 = v19;
    (*(v16 + 8))(v13, v14);
    v18 = v20;
  }

  return v18;
}

- (ASOAttributionKitBridge)init
{
  v3 = sub_1000183D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10002BF58 != -1)
  {
    swift_once();
  }

  v8 = sub_10000E764(v3, qword_10002CD88);
  (*(v4 + 16))(v7, v8, v3);
  sub_1000183E8();
  v9 = type metadata accessor for AttributionKitBridge();
  v11.receiver = self;
  v11.super_class = v9;
  return [(ASOAttributionKitBridge *)&v11 init];
}

@end