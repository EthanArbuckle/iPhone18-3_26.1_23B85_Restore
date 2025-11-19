@interface CRLFreehandDrawingIntelligenceProvider
+ (BOOL)isRefineAvailable;
+ (NSString)deleteStrokesActionString;
+ (id)snapToShapeActionStringWithPlural:(BOOL)a3;
- (BOOL)canSnapToShapeSelectedStrokes;
- (BOOL)isDetectionDecoratorViewHitAtScaledPoint:(CGPoint)a3;
- (BOOL)isGestureRecognizerFromDescendantOfDetectorView:(id)a3;
- (NSArray)decoratorOverlayRenderables;
- (NSArray)decoratorOverlayViews;
- (PKRecognitionController)pkRecognitionController;
- (_TtC8Freeform38CRLFreehandDrawingIntelligenceProvider)init;
- (_TtC8Freeform38CRLFreehandDrawingIntelligenceProvider)initWithInteractiveCanvasController:(id)a3;
- (int64_t)snapToShapeSelectedStrokesCount;
- (void)canRefineHandwritingInSelectedStrokesWithCompletionHandler:(id)a3;
- (void)copyAsTextSelectedStrokesWithCompletionHandler:(id)a3;
- (void)deleteStrokes:(id)a3 selectDeletedStrokesOnUndo:(BOOL)a4;
- (void)documentModeDidChange;
- (void)pathBySnappingFillPathToShape:(id)a3 completion:(id)a4;
- (void)pkStrokesContainingAllDrawingsForEntireCanvasDidChange:(id)a3;
- (void)recognizedTextInSelectedStrokesWithCompletionHandler:(id)a3;
- (void)refineHandwritingInSelectedStrokesWithCompletionHandler:(id)a3;
- (void)registerRecentlyCreatedLocalStroke:(PKStroke *)a3 completionHandler:(id)a4;
- (void)setPencilKitCanvasViewController:(id)a3;
- (void)snapToShapeSelectedStrokesWithCompletionHandler:(id)a3;
- (void)straightenHandwritingInSelectedStrokesWithCompletionHandler:(id)a3;
- (void)tearDown;
- (void)willBeginDynamicOperation;
@end

@implementation CRLFreehandDrawingIntelligenceProvider

- (void)willBeginDynamicOperation
{
  v1 = a1;
  sub_10119D1E4();
}

- (_TtC8Freeform38CRLFreehandDrawingIntelligenceProvider)initWithInteractiveCanvasController:(id)a3
{
  v3 = a3;
  v4 = sub_1011A2358(v3);

  return v4;
}

- (_TtC8Freeform38CRLFreehandDrawingIntelligenceProvider)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_isTornDown) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_undoObserver) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)tearDown
{
  v2 = self;
  sub_10117E948();
}

- (PKRecognitionController)pkRecognitionController
{
  v2 = self;
  v3 = sub_10117FB18();

  return v3;
}

- (void)setPencilKitCanvasViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  if (sub_10098EABC(&_mh_execute_header, "setPencilKitCanvasViewController(_:)", 36, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 142))
  {
    swift_unknownObjectWeakAssign();
    sub_10117DAD0();
  }
}

- (void)registerRecentlyCreatedLocalStroke:(PKStroke *)a3 completionHandler:(id)a4
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1014CE358;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1014CE360;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10119D67C(0, 0, v9, &unk_1014CE368, v14);
}

+ (id)snapToShapeActionStringWithPlural:(BOOL)a3
{
  sub_1011A35C0();
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (BOOL)canSnapToShapeSelectedStrokes
{
  v2 = self;
  v3 = sub_101180810();

  return v3 != 0;
}

- (int64_t)snapToShapeSelectedStrokesCount
{
  v2 = self;
  v3 = sub_101180810();

  return v3;
}

- (void)snapToShapeSelectedStrokesWithCompletionHandler:(id)a3
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1014CE318;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1014CE320;
  v12[5] = v11;
  v13 = self;
  sub_10119D67C(0, 0, v7, &unk_1014CE328, v12);
}

- (void)pathBySnappingFillPathToShape:(id)a3 completion:(id)a4
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = a3;
  v14 = self;
  v15 = v13;

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v14;
  v17[5] = v15;
  v17[6] = sub_1011A6804;
  v17[7] = v11;
  sub_10064191C(0, 0, v9, &unk_1014CE2F8, v17);
}

- (void)straightenHandwritingInSelectedStrokesWithCompletionHandler:(id)a3
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1014CE2D0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1014CE2D8;
  v12[5] = v11;
  v13 = self;
  sub_10119D67C(0, 0, v7, &unk_1014CE2E0, v12);
}

+ (BOOL)isRefineAvailable
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecognitionController();
  static Locale.current.getter();
  v6 = static RecognitionController.isRefineAvailableForLocale(_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

- (void)canRefineHandwritingInSelectedStrokesWithCompletionHandler:(id)a3
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1014CE2A8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1014CE2B0;
  v12[5] = v11;
  v13 = self;
  sub_10119D67C(0, 0, v7, &unk_1014CE2B8, v12);
}

- (void)refineHandwritingInSelectedStrokesWithCompletionHandler:(id)a3
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1014CE280;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1014CE288;
  v12[5] = v11;
  v13 = self;
  sub_10119D67C(0, 0, v7, &unk_1014CE290, v12);
}

+ (NSString)deleteStrokesActionString
{
  sub_100AD5FEC(0x6574656C6544, 0xE600000000000000, 0, 0);
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)deleteStrokes:(id)a3 selectDeletedStrokesOnUndo:(BOOL)a4
{
  v4 = a4;
  type metadata accessor for PKStroke();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  sub_101198BC0(v6, v4);
}

- (void)documentModeDidChange
{
  v2 = self;
  if (sub_10098EABC(&_mh_execute_header, "documentModeDidChange()", 23, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 1282))
  {
    sub_101198F8C();
  }
}

- (BOOL)isDetectionDecoratorViewHitAtScaledPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = sub_1011990F4(x, y);

  return v6 & 1;
}

- (BOOL)isGestureRecognizerFromDescendantOfDetectorView:(id)a3
{
  v4 = a3;
  v5 = self;
  if ((sub_10098EABC(&_mh_execute_header, "isGestureRecognizerFromDescendantOfDetectorView(_:)", 51, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 1317) & 1) != 0 && (v6 = [v4 view]) != 0)
  {
    v7 = v6;
    v8 = *(&v5->super.isa + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_dataDetectorDecorationView);
    v9 = [v7 isDescendantOfView:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)recognizedTextInSelectedStrokesWithCompletionHandler:(id)a3
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1014CE260;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1014CE268;
  v12[5] = v11;
  v13 = self;
  sub_10119D67C(0, 0, v7, &unk_1014CE270, v12);
}

- (void)copyAsTextSelectedStrokesWithCompletionHandler:(id)a3
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1014CE200;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1014938A0;
  v12[5] = v11;
  v13 = self;
  sub_10119D67C(0, 0, v7, &unk_101470870, v12);
}

- (void)pkStrokesContainingAllDrawingsForEntireCanvasDidChange:(id)a3
{
  type metadata accessor for PKStroke();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_10119BE94(v4);
}

- (NSArray)decoratorOverlayRenderables
{
  sub_100006370(0, &qword_101A00020);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (NSArray)decoratorOverlayViews
{
  v2 = self;
  sub_10119CD20();

  sub_100006370(0, &qword_1019F6D00);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

@end