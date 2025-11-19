@interface CRLFreehandDrawingHandwrittenContentAccessibilityCache
+ (_TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache)sharedInstance;
+ (void)setSharedInstance:(id)a3;
- (BOOL)hasInFlightTaskForDrawing:(id)a3;
- (id)stringForDrawing:(id)a3 attemptHandwritingRecognitionUponFailure:(BOOL)a4;
- (void)asyncCacheAccessibilityDescriptionForDrawing:(id)a3;
- (void)cacheString:(id)a3 asAccessibilityDescriptionForDrawing:(id)a4;
@end

@implementation CRLFreehandDrawingHandwrittenContentAccessibilityCache

+ (_TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache)sharedInstance
{
  if (qword_1019F2788 != -1)
  {
    swift_once();
  }

  v3 = qword_101AD8A48;

  return v3;
}

+ (void)setSharedInstance:(id)a3
{
  v3 = qword_1019F2788;
  v4 = a3;
  if (v3 != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  v5 = qword_101AD8A48;
  qword_101AD8A48 = v4;
}

- (void)asyncCacheAccessibilityDescriptionForDrawing:(id)a3
{
  v5 = type metadata accessor for PKDrawing();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  v10 = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100FB30AC();
  (*(v6 + 8))(v8, v5);
}

- (void)cacheString:(id)a3 asAccessibilityDescriptionForDrawing:(id)a4
{
  v6 = type metadata accessor for PKDrawing();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a4;
  v14 = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100FB3CB4(v10, v12, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)stringForDrawing:(id)a3 attemptHandwritingRecognitionUponFailure:(BOOL)a4
{
  v6 = type metadata accessor for PKDrawing();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3;
  v11 = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100FB5AC4();
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  if (v13)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)hasInFlightTaskForDrawing:(id)a3
{
  v5 = type metadata accessor for PKDrawing();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  v10 = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(a3) = sub_100FB449C();
  (*(v6 + 8))(v8, v5);
  return a3 & 1;
}

@end