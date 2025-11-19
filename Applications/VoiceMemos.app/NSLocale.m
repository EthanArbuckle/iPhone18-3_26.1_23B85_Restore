@interface NSLocale
+ (id)numberingSystem;
@end

@implementation NSLocale

+ (id)numberingSystem
{
  v2 = type metadata accessor for Locale.NumberingSystem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.autoupdatingCurrent.getter();
  Locale.numberingSystem.getter();
  Locale.NumberingSystem.identifier.getter();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v12 = String._bridgeToObjectiveC()();

  return v12;
}

@end