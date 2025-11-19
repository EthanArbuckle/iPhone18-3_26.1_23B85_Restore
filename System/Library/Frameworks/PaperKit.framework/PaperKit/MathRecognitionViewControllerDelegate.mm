@interface MathRecognitionViewControllerDelegate
- (CGAffineTransform)mathViewControllerDrawingTransform:(SEL)a3;
- (_TtC8PaperKit37MathRecognitionViewControllerDelegate)init;
- (double)mathViewControllerLatestEndOfStrokeTimestamp:(id)a3;
- (id)mathViewController:(id)a3 createScrubberControllerForView:(id)a4 delegate:(id)a5;
- (id)mathViewController:(id)a3 createTypesetImageForExpression:(id)a4 latex:(BOOL)a5 fontSize:(double)a6;
- (id)mathViewController:(id)a3 createTypesetImageForItemUUID:(id)a4 showResult:(BOOL)a5 fontSize:(double)a6;
- (id)mathViewController:(id)a3 createTypesetViewControllerForExpression:(id)a4 latex:(BOOL)a5 fontSize:(double)a6;
- (id)mathViewController:(id)a3 expressionIdentifiersForCompatibleGraphNearLocation:(CGPoint)a4 expressionUUID:(id)a5;
- (id)mathViewController:(id)a3 expressionIdentifiersForExistingGraphNearLocation:(CGPoint)a4;
- (id)mathViewController:(id)a3 resultForLocale:(id)a4 itemUUID:(id)a5;
- (id)mathViewControllerDrawing:(id)a3;
- (id)mathViewControllerTiledView:(id)a3;
- (void)mathViewController:(id)a3 addGraphForExpression:(id)a4 variable:(id)a5 range:(CGRect)a6 identifier:(id)a7 expressionLocation:(CGPoint)a8 addToExisting:(BOOL)a9;
- (void)mathViewController:(id)a3 didUpdateExpressions:(id)a4 newExpressions:(id)a5 removedExpressions:(id)a6 mathItems:(id)a7;
- (void)mathViewController:(id)a3 replaceStrokes:(id)a4 withStrokes:(id)a5;
- (void)mathViewController:(id)a3 selectStrokes:(id)a4;
- (void)mathViewController:(id)a3 setHiddenStrokes:(id)a4;
- (void)mathViewController:(id)a3 setShouldSolve:(BOOL)a4 item:(id)a5 heroStroke:(id)a6 flag:(unint64_t)a7;
- (void)mathViewController:(id)a3 setShouldSolve:(BOOL)a4 item:(id)a5 heroStroke:(id)a6 flag:(unint64_t)a7 undoable:(BOOL)a8;
- (void)mathViewController:(id)a3 updatedResult:(id)a4 strokes:(id)a5 expressionUUID:(id)a6;
- (void)mathViewControllerUpdateFrameForContainer:(id)a3;
@end

@implementation MathRecognitionViewControllerDelegate

- (id)mathViewControllerDrawing:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = a3;
  v9 = self;
  MathRecognitionViewControllerDelegate.mathViewControllerDrawing(_:)(v7);

  v10 = type metadata accessor for PKDrawing();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    PKDrawing._bridgeToObjectiveC()(v12);
    v15 = v14;
    (*(v11 + 8))(v7, v10);
    v13 = v15;
  }

  return v13;
}

- (id)mathViewControllerTiledView:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x468);
    v7 = self;
    v8 = v6();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGAffineTransform)mathViewControllerDrawingTransform:(SEL)a3
{
  v6 = a4;
  v7 = self;
  specialized MathRecognitionViewControllerDelegate.mathViewControllerDrawingTransform(_:)(v11);

  v9 = v11[1];
  v10 = v11[2];
  *&retstr->a = v11[0];
  *&retstr->c = v9;
  *&retstr->tx = v10;
  return result;
}

- (double)mathViewControllerLatestEndOfStrokeTimestamp:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = specialized MathRecognitionViewControllerDelegate.mathViewControllerLatestEnd(ofStrokeTimestamp:)();

  return v6;
}

- (void)mathViewControllerUpdateFrameForContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized MathRecognitionViewControllerDelegate.mathViewControllerUpdateFrame(forContainer:)();
}

- (id)mathViewController:(id)a3 expressionIdentifiersForExistingGraphNearLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v16 = 0;
    v10 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0xA20);
    v11 = a3;
    v12 = self;
    v13 = v10(0, 0, &v16, x, y);

    if (v13)
    {
      isa = Set._bridgeToObjectiveC()().super.isa;

      Strong = isa;
    }

    else
    {
      Strong = 0;
    }
  }

  return Strong;
}

- (id)mathViewController:(id)a3 expressionIdentifiersForCompatibleGraphNearLocation:(CGPoint)a4 expressionUUID:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = self;
  v15 = specialized MathRecognitionViewControllerDelegate.mathViewController(_:expressionIdentifiersForCompatibleGraphNearLocation:expressionUUID:)(v12, x, y);

  (*(v10 + 8))(v12, v9);
  if (v15)
  {
    v16.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v16.super.isa = 0;
  }

  return v16.super.isa;
}

- (void)mathViewController:(id)a3 addGraphForExpression:(id)a4 variable:(id)a5 range:(CGRect)a6 identifier:(id)a7 expressionLocation:(CGPoint)a8 addToExisting:(BOOL)a9
{
  v9 = a9;
  y = a8.y;
  x = a8.x;
  height = a6.size.height;
  width = a6.size.width;
  v14 = a6.origin.y;
  v15 = a6.origin.x;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (a5)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v23;
  }

  else
  {
    v22 = 0;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  v27 = a3;
  v28 = self;
  specialized MathRecognitionViewControllerDelegate.mathViewController(_:addGraphForExpression:variable:range:identifier:expressionLocation:addToExisting:)(v19, v21, v22, a5, v24, v26, v9, v15, v14, width, height, x, y);
}

- (void)mathViewController:(id)a3 didUpdateExpressions:(id)a4 newExpressions:(id)a5 removedExpressions:(id)a6 mathItems:(id)a7
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKMathRecognitionItem);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = self;
  specialized MathRecognitionViewControllerDelegate.mathViewController(_:didUpdateExpressions:newExpressions:removedExpressions:mathItems:)(v9, v10, v11, v12);
}

- (void)mathViewController:(id)a3 replaceStrokes:(id)a4 withStrokes:(id)a5
{
  type metadata accessor for PKStroke();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  specialized MathRecognitionViewControllerDelegate.mathViewController(_:replace:with:)();
}

- (void)mathViewController:(id)a3 setHiddenStrokes:(id)a4
{
  type metadata accessor for PKStroke();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x798);
    v8 = Strong;
    v9 = self;
    v7(v5);
  }
}

- (id)mathViewController:(id)a3 createScrubberControllerForView:(id)a4 delegate:(id)a5
{
  v6 = objc_allocWithZone(type metadata accessor for CalculateScrubberController());
  v7 = a4;
  swift_unknownObjectRetain();
  v8 = specialized CalculateScrubberController.init(view:delegate:)();

  swift_unknownObjectRelease();

  return v8;
}

- (id)mathViewController:(id)a3 createTypesetViewControllerForExpression:(id)a4 latex:(BOOL)a5 fontSize:(double)a6
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a3;
  v14 = self;
  v15 = specialized MathRecognitionViewControllerDelegate.mathViewController(_:createTypesetViewControllerForExpression:latex:fontSize:)(v10, a6, v12, a5);

  return v15;
}

- (id)mathViewController:(id)a3 createTypesetImageForExpression:(id)a4 latex:(BOOL)a5 fontSize:(double)a6
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a3;
  v14 = self;
  v15 = specialized MathRecognitionViewControllerDelegate.mathViewController(_:createTypesetImageForExpression:latex:fontSize:)(v10, a6, v12, a5);

  return v15;
}

- (id)mathViewController:(id)a3 createTypesetImageForItemUUID:(id)a4 showResult:(BOOL)a5 fontSize:(double)a6
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = self;
  v16 = specialized MathRecognitionViewControllerDelegate.mathViewController(_:createTypesetImageForItemUUID:showResult:fontSize:)(v13, a5, a6);

  (*(v11 + 8))(v13, v10);

  return v16;
}

- (void)mathViewController:(id)a3 setShouldSolve:(BOOL)a4 item:(id)a5 heroStroke:(id)a6 flag:(unint64_t)a7
{
  v9 = a4;
  v11 = type metadata accessor for PKStroke();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a6;
  v16 = self;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    (*((*MEMORY[0x1E69E7D40] & Strong->super.isa) + 0xA08))(v9, v14, a7, 0);

    v16 = v18;
  }

  (*(v12 + 8))(v14, v11);
}

- (void)mathViewController:(id)a3 setShouldSolve:(BOOL)a4 item:(id)a5 heroStroke:(id)a6 flag:(unint64_t)a7 undoable:(BOOL)a8
{
  v8 = a8;
  v11 = a4;
  v13 = type metadata accessor for PKStroke();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a6;
  v18 = self;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    (*((*MEMORY[0x1E69E7D40] & Strong->super.isa) + 0xA08))(v11, v16, a7, v8);

    v18 = v20;
  }

  (*(v14 + 8))(v16, v13);
}

- (void)mathViewController:(id)a3 selectStrokes:(id)a4
{
  type metadata accessor for PKStroke();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  specialized MathRecognitionViewControllerDelegate.mathViewController(_:select:)(v6);
}

- (void)mathViewController:(id)a3 updatedResult:(id)a4 strokes:(id)a5 expressionUUID:(id)a6
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for PKStroke();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = self;
  specialized MathRecognitionViewControllerDelegate.mathViewController(_:updatedResult:strokes:expressionUUID:)(v13, v12);

  (*(v10 + 8))(v12, v9);
}

- (id)mathViewController:(id)a3 resultForLocale:(id)a4 itemUUID:(id)a5
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a3;
  v16 = self;
  v17 = specialized MathRecognitionViewControllerDelegate.mathViewController(_:resultFor:itemUUID:)(v14, v10);
  v19 = v18;

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  if (v19)
  {
    v20 = MEMORY[0x1DA6CCED0](v17, v19);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (_TtC8PaperKit37MathRecognitionViewControllerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end