@interface CRLCLCopyPasteHelper
+ (BOOL)containsSupportedCanvasObjectFromTypeIdentifiers:(id)a3;
+ (NSArray)canvasObjectTypeIdentifiers;
+ (NSArray)canvasObjectVersionsToExport;
+ (id)canvasObjectTypeIdentifierForVersion:(id)a3;
+ (id)canvasObjectTypeIdentifierToUseFromTypeIdentifiers:(id)a3;
+ (id)metaTypeIdentifiersForBoardItems:(id)a3;
- (_TtC8Freeform20CRLCLCopyPasteHelper)init;
@end

@implementation CRLCLCopyPasteHelper

+ (NSArray)canvasObjectTypeIdentifiers
{
  swift_getObjCClassMetadata();
  sub_1007AB88C();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (id)metaTypeIdentifiersForBoardItems:(id)a3
{
  type metadata accessor for CRLBoardItem(0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10080D698(v3);

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

+ (BOOL)containsSupportedCanvasObjectFromTypeIdentifiers:(id)a3
{
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1007AC158(v3);
  v5 = v4;

  if (v5)
  {
  }

  return v5 != 0;
}

+ (id)canvasObjectTypeIdentifierToUseFromTypeIdentifiers:(id)a3
{
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1007AC158(v3);
  v5 = v4;

  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_TtC8Freeform20CRLCLCopyPasteHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLCLCopyPasteHelper();
  return [(CRLCLCopyPasteHelper *)&v3 init];
}

+ (NSArray)canvasObjectVersionsToExport
{
  if (qword_1019F1578 != -1)
  {
    swift_once();
  }

  type metadata accessor for TSCLVersion();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (id)canvasObjectTypeIdentifierForVersion:(id)a3
{
  v3 = a3;
  v4 = [v3 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

@end