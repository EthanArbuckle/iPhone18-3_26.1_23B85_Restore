@interface objc_URLParserHelper
+ (id)urlTypeFor:(id)a3 bag:(id)a4 error:(id *)a5;
@end

@implementation objc_URLParserHelper

+ (id)urlTypeFor:(id)a3 bag:(id)a4 error:(id *)a5
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100080FB4(&unk_1003D0540);
  __chkstk_darwin(v11 - 8);
  v13 = &v17[-v12];
  if (a3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v8 + 32))(v13, v10, v7);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  sub_100081DFC(v13, v14, 1, v7);
  swift_unknownObjectRetain();
  v15 = sub_10018832C(v13, a4);
  sub_100146014(v13);
  swift_unknownObjectRelease();

  return v15;
}

@end