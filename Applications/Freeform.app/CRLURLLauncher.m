@interface CRLURLLauncher
+ (BOOL)canOpenURL:(id)a3;
+ (void)openURL:(id)a3;
- (_TtC8Freeform14CRLURLLauncher)init;
@end

@implementation CRLURLLauncher

+ (BOOL)canOpenURL:(id)a3
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = [v7 canOpenURL:v9];

  if (v11)
  {
    URL._bridgeToObjectiveC()(v12);
    v14 = v13;
    v15 = [v13 crl_canOpenURL];
  }

  else
  {
    v15 = 0;
  }

  (*(v4 + 8))(v6, v3);
  return v15;
}

+ (void)openURL:(id)a3
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100878B04(v6);
  (*(v4 + 8))(v6, v3);
}

- (_TtC8Freeform14CRLURLLauncher)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLURLLauncher();
  return [(CRLURLLauncher *)&v3 init];
}

@end