@interface CRLWPSystemFontNames
+ (NSArray)allSystemFontNames;
+ (NSString)baseName;
+ (NSString)black;
+ (NSString)bold;
+ (NSString)heavy;
+ (NSString)light;
+ (NSString)medium;
+ (NSString)regular;
+ (NSString)semibold;
+ (NSString)thin;
+ (NSString)ultraLight;
+ (double)weightForName:(id)a3;
+ (id)nameForWeight:(double)a3;
- (_TtC8Freeform20CRLWPSystemFontNames)init;
@end

@implementation CRLWPSystemFontNames

+ (NSString)baseName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)ultraLight
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)thin
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)light
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)regular
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)medium
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)semibold
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)bold
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)heavy
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)black
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSArray)allSystemFontNames
{
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (id)nameForWeight:(double)a3
{
  sub_100CB269C(a3);
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

+ (double)weightForName:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (qword_1019F1FE0 != -1)
  {
    v12 = v3;
    swift_once();
    v3 = v12;
  }

  v6 = qword_101AD7A38;
  if (*(qword_101AD7A38 + 16) && (v7 = sub_10000BE7C(v3, v5), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = &UIFontWeightRegular;
  }

  v10 = *v9;

  return v10;
}

- (_TtC8Freeform20CRLWPSystemFontNames)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLWPSystemFontNames();
  return [(CRLWPSystemFontNames *)&v3 init];
}

@end