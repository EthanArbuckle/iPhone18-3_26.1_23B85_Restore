@interface CRLFreehandDrawingHandwrittenContentAccessibilityCache
+ (_TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache)sharedInstance;
+ (void)setSharedInstance:(id)instance;
- (BOOL)hasInFlightTaskForDrawing:(id)drawing;
- (id)stringForDrawing:(id)drawing attemptHandwritingRecognitionUponFailure:(BOOL)failure;
- (void)asyncCacheAccessibilityDescriptionForDrawing:(id)drawing;
- (void)cacheString:(id)string asAccessibilityDescriptionForDrawing:(id)drawing;
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

+ (void)setSharedInstance:(id)instance
{
  v3 = qword_1019F2788;
  instanceCopy = instance;
  if (v3 != -1)
  {
    v6 = instanceCopy;
    swift_once();
    instanceCopy = v6;
  }

  v5 = qword_101AD8A48;
  qword_101AD8A48 = instanceCopy;
}

- (void)asyncCacheAccessibilityDescriptionForDrawing:(id)drawing
{
  v5 = type metadata accessor for PKDrawing();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  drawingCopy = drawing;
  selfCopy = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100FB30AC();
  (*(v6 + 8))(v8, v5);
}

- (void)cacheString:(id)string asAccessibilityDescriptionForDrawing:(id)drawing
{
  v6 = type metadata accessor for PKDrawing();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  drawingCopy = drawing;
  selfCopy = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100FB3CB4(v10, v12, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)stringForDrawing:(id)drawing attemptHandwritingRecognitionUponFailure:(BOOL)failure
{
  v6 = type metadata accessor for PKDrawing();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  drawingCopy = drawing;
  selfCopy = self;
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

- (BOOL)hasInFlightTaskForDrawing:(id)drawing
{
  v5 = type metadata accessor for PKDrawing();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  drawingCopy = drawing;
  selfCopy = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(drawing) = sub_100FB449C();
  (*(v6 + 8))(v8, v5);
  return drawing & 1;
}

@end