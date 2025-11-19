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
- (_TtC9storekitd6Client)initWithAuditTokenData:(id)a3;
- (_TtC9storekitd6Client)initWithBundleIdentifier:(id)a3;
- (_TtC9storekitd6Client)initWithConnection:(id)a3 overridesDictionary:(id)a4;
- (_TtC9storekitd6Client)initWithURL:(id)a3 overridesDictionary:(id)a4;
- (char)objc_clientType;
- (id)queryWith:(BOOL)a3 customReceiptURL:(id)a4;
@end

@implementation Client

- (ACAccount)account
{
  v2 = self;
  v3 = sub_1001A81B0(v2);

  return v3;
}

- (NSString)accountMediaType
{
  v2 = self;
  v3 = sub_1001AA204(v2);

  return v3;
}

- (AMSBagProtocol)bag
{
  v2 = self;
  v3 = sub_1001A7AB4(v2);

  return v3;
}

- (NSURL)callerBundleURL
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AAA34(v5);
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  (*(v3 + 8))(v5, v2);

  return v8;
}

- (BOOL)canMakePayments
{
  v2 = self;
  v3 = sub_1001A7C68();

  return v3 & 1;
}

- (NSString)currentAccountToken
{
  v2 = self;
  sub_1001A82CC(v2);
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
  v2 = sub_100080FB4(&unk_1003CE610);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_1001AAFE4(&v8 - v3);
  v5 = type metadata accessor for UUID();
  isa = 0;
  if (sub_100081D0C(v4, 1, v5) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return isa;
}

- (AMSProcessInfo)processInfo
{
  v2 = self;
  v3 = sub_1001A8808();

  return v3;
}

- (AMSURLRequestEncoder)urlRequestEncoder
{
  v2 = self;
  v3 = sub_1001A9564(v2);

  return v3;
}

- (AMSURLSession)urlSession
{
  v2 = self;
  v3 = sub_1001A9498();

  return v3;
}

- (_TtC9storekitd6Client)initWithConnection:(id)a3 overridesDictionary:(id)a4
{
  if (a4)
  {
    type metadata accessor for SKClientOverridesKey(0);
    sub_1001B3300(&qword_1003CC3A8, type metadata accessor for SKClientOverridesKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a3;
  sub_1001AB4E8();
  return result;
}

- (_TtC9storekitd6Client)initWithURL:(id)a3 overridesDictionary:(id)a4
{
  v5 = type metadata accessor for URL();
  __chkstk_darwin(v5 - 8);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    type metadata accessor for SKClientOverridesKey(0);
    sub_1001B3300(&qword_1003CC3A8, type metadata accessor for SKClientOverridesKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1001AC388();
  return result;
}

- (_TtC9storekitd6Client)initWithBundleIdentifier:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001ADC78();
  return result;
}

- (_TtC9storekitd6Client)initWithAuditTokenData:(id)a3
{
  v3 = a3;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001AE0B0();
  return result;
}

- (id)queryWith:(BOOL)a3 customReceiptURL:(id)a4
{
  v6 = sub_100080FB4(&unk_1003D0540);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  if (a4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for URL();
    v10 = 0;
  }

  else
  {
    v9 = type metadata accessor for URL();
    v10 = 1;
  }

  sub_100081DFC(v8, v10, 1, v9);
  v11 = self;
  sub_1001A8A94();

  sub_10013B1E8(v8, &unk_1003D0540);
  type metadata accessor for SKServerKey(0);
  sub_1001B3300(&qword_1003CC3B8, type metadata accessor for SKServerKey);
  v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v12.super.isa;
}

- (char)objc_clientType
{
  v2 = self;
  v3 = sub_1001AA4F4(v2);

  return v3;
}

- (NSString)objc_clientDescription
{
  v2 = self;
  sub_1001B33F4();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end