@interface Client
- (ACAccount)account;
- (AMSBagProtocol)bag;
- (AMSProcessInfo)processInfo;
- (AMSURLRequestEncoder)urlRequestEncoder;
- (AMSURLSession)urlSession;
- (BOOL)canMakePayments;
- (NSString)accountMediaType;
- (NSString)currentAccountToken;
- (NSString)objc_clientDescription;
- (NSURL)callerBundleURL;
- (NSUUID)deviceVendorID;
- (_TtC22StoreKitUISceneService6Client)initWithAuditTokenData:(id)a3;
- (_TtC22StoreKitUISceneService6Client)initWithBundleIdentifier:(id)a3;
- (_TtC22StoreKitUISceneService6Client)initWithConnection:(id)a3 overridesDictionary:(id)a4;
- (_TtC22StoreKitUISceneService6Client)initWithURL:(id)a3 overridesDictionary:(id)a4;
- (char)objc_clientType;
- (id)queryWith:(BOOL)a3 customReceiptURL:(id)a4;
@end

@implementation Client

- (ACAccount)account
{
  v2 = self;
  v3 = sub_1000222C4();

  return v3;
}

- (NSString)accountMediaType
{
  v2 = self;
  v3 = sub_100022740();

  return v3;
}

- (AMSBagProtocol)bag
{
  v2 = self;
  v3 = sub_1000229C4();

  return v3;
}

- (NSURL)callerBundleURL
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022CA4(v6);
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  (*(v3 + 8))(v6, v2);

  return v9;
}

- (BOOL)canMakePayments
{
  v2 = self;
  v3 = sub_100022D48();

  return v3 & 1;
}

- (NSString)currentAccountToken
{
  v2 = self;
  sub_100023388();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSUUID)deviceVendorID
{
  v2 = sub_100012634(&qword_1000D2800, qword_100099E20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  sub_100024014(&v9 - v4);
  v6 = type metadata accessor for UUID();
  isa = 0;
  if (sub_100012898(v5, 1, v6) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return isa;
}

- (AMSProcessInfo)processInfo
{
  v2 = self;
  v3 = sub_10002420C();

  return v3;
}

- (AMSURLRequestEncoder)urlRequestEncoder
{
  v2 = self;
  v3 = sub_10002465C();

  return v3;
}

- (AMSURLSession)urlSession
{
  v2 = self;
  v3 = sub_100024738();

  return v3;
}

- (_TtC22StoreKitUISceneService6Client)initWithConnection:(id)a3 overridesDictionary:(id)a4
{
  if (a4)
  {
    type metadata accessor for SKClientOverridesKey(0);
    sub_10002F140(&qword_1000D1F28, type metadata accessor for SKClientOverridesKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a3;
  sub_10002490C();
  return result;
}

- (_TtC22StoreKitUISceneService6Client)initWithURL:(id)a3 overridesDictionary:(id)a4
{
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    type metadata accessor for SKClientOverridesKey(0);
    sub_10002F140(&qword_1000D1F28, type metadata accessor for SKClientOverridesKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000257EC();
  return result;
}

- (_TtC22StoreKitUISceneService6Client)initWithBundleIdentifier:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000270FC();
  return result;
}

- (_TtC22StoreKitUISceneService6Client)initWithAuditTokenData:(id)a3
{
  v3 = a3;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100027544();
  return result;
}

- (id)queryWith:(BOOL)a3 customReceiptURL:(id)a4
{
  v6 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  if (a4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    v11 = 0;
  }

  else
  {
    v10 = type metadata accessor for URL();
    v11 = 1;
  }

  sub_10001267C(v9, v11, 1, v10);
  v12 = self;
  sub_10002AE8C();

  sub_10002F5A8(v9, &qword_1000D1D58, &unk_1000954C0);
  type metadata accessor for SKServerKey(0);
  sub_10002F140(&qword_1000D1F38, type metadata accessor for SKServerKey);
  v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (char)objc_clientType
{
  v2 = self;
  v3 = sub_10002CCF0();

  return v3;
}

- (NSString)objc_clientDescription
{
  v2 = self;
  sub_10002D008();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end