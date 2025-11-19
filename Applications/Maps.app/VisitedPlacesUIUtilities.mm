@interface VisitedPlacesUIUtilities
+ (id)localizedBetaBadgeString;
+ (id)localizedByCategorySubtitle;
+ (id)localizedByCategoryTitle;
+ (id)localizedByCitySubtitle;
+ (id)localizedByCityTitle;
+ (id)localizedVisitedPlacesSearchPlaceholder;
+ (uint64_t)openMapsSettingsURL;
+ (void)setDefaultContaineeLayoutToFullIfNeeded:(id)a3;
- (_TtC4Maps24VisitedPlacesUIUtilities)init;
@end

@implementation VisitedPlacesUIUtilities

+ (id)localizedBetaBadgeString
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v7._object = 0x80000001012337F0;
  v2._object = 0x80000001012337D0;
  v7._countAndFlagsBits = 0xD00000000000003ELL;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v3._countAndFlagsBits = 1096041794;
  v3._object = 0xE400000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, qword_1019600D8, v3, v7);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

+ (id)localizedByCategoryTitle
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v7._object = 0x80000001012284E0;
  v2._countAndFlagsBits = 0x6765746143207942;
  v2._object = 0xEB0000000079726FLL;
  v3._object = 0x80000001012284A0;
  v7._countAndFlagsBits = 0xD00000000000005CLL;
  v3._countAndFlagsBits = 0xD000000000000031;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_1019600D8, v2, v7);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

+ (id)localizedByCategorySubtitle
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v7._object = 0x80000001012285B0;
  v2._countAndFlagsBits = 0xD000000000000033;
  v2._object = 0x8000000101228540;
  v3._object = 0x8000000101228580;
  v7._countAndFlagsBits = 0xD00000000000005FLL;
  v3._countAndFlagsBits = 0xD000000000000020;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, qword_1019600D8, v3, v7);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

+ (id)localizedByCityTitle
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v7._object = 0x800000010121A7E0;
  v2._countAndFlagsBits = 0x79746943207942;
  v3._object = 0x800000010121A7B0;
  v7._countAndFlagsBits = 0xD000000000000058;
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v2._object = 0xE700000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_1019600D8, v2, v7);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

+ (id)localizedByCitySubtitle
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v7._object = 0x800000010121A8A0;
  v2._countAndFlagsBits = 0xD000000000000030;
  v2._object = 0x800000010121A840;
  v3._object = 0x800000010121A880;
  v7._countAndFlagsBits = 0xD00000000000005BLL;
  v3._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, qword_1019600D8, v3, v7);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

+ (id)localizedVisitedPlacesSearchPlaceholder
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v7._object = 0x8000000101220630;
  v2._object = 0x80000001012205E0;
  v3._object = 0x8000000101220610;
  v7._countAndFlagsBits = 0xD00000000000003BLL;
  v2._countAndFlagsBits = 0xD000000000000029;
  v3._countAndFlagsBits = 0x100000000000001BLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, qword_1019600D8, v3, v7);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

+ (void)setDefaultContaineeLayoutToFullIfNeeded:(id)a3
{
  v3 = a3;
  sub_1003A7704(v3);
}

- (_TtC4Maps24VisitedPlacesUIUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VisitedPlacesUIUtilities();
  return [(VisitedPlacesUIUtilities *)&v3 init];
}

+ (uint64_t)openMapsSettingsURL
{
  v0 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1000FA5D4(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  sub_1000D0D9C(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1003A7F70();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 _maps_openURL:v11 options:isa completionHandler:0];

  return (*(v4 + 8))(v6, v3);
}

@end