@interface objc_MessageServerResponse
- (NSURL)url;
- (_TtC9storekitd26objc_MessageServerResponse)initWithUrl:(id)a3 shouldAllowDevloperControl:(BOOL)a4 messageType:(id)a5;
@end

@implementation objc_MessageServerResponse

- (NSURL)url
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100177894(v5);
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  (*(v3 + 8))(v5, v2);

  return v8;
}

- (_TtC9storekitd26objc_MessageServerResponse)initWithUrl:(id)a3 shouldAllowDevloperControl:(BOOL)a4 messageType:(id)a5
{
  v8 = sub_100080FB4(&unk_1003D0540);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  if (a3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for URL();
    v12 = 0;
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = 1;
  }

  sub_100081DFC(v10, v12, 1, v11);
  v13 = a5;
  return sub_100177978(v10, a4, a5);
}

@end