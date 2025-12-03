@interface MathRecognitionViewControllerDelegate
- (CGAffineTransform)mathViewControllerDrawingTransform:(SEL)transform;
- (_TtC8PaperKit37MathRecognitionViewControllerDelegate)init;
- (double)mathViewControllerLatestEndOfStrokeTimestamp:(id)timestamp;
- (id)mathViewController:(id)controller createScrubberControllerForView:(id)view delegate:(id)delegate;
- (id)mathViewController:(id)controller createTypesetImageForExpression:(id)expression latex:(BOOL)latex fontSize:(double)size;
- (id)mathViewController:(id)controller createTypesetImageForItemUUID:(id)d showResult:(BOOL)result fontSize:(double)size;
- (id)mathViewController:(id)controller createTypesetViewControllerForExpression:(id)expression latex:(BOOL)latex fontSize:(double)size;
- (id)mathViewController:(id)controller expressionIdentifiersForCompatibleGraphNearLocation:(CGPoint)location expressionUUID:(id)d;
- (id)mathViewController:(id)controller expressionIdentifiersForExistingGraphNearLocation:(CGPoint)location;
- (id)mathViewController:(id)controller resultForLocale:(id)locale itemUUID:(id)d;
- (id)mathViewControllerDrawing:(id)drawing;
- (id)mathViewControllerTiledView:(id)view;
- (void)mathViewController:(id)controller addGraphForExpression:(id)expression variable:(id)variable range:(CGRect)range identifier:(id)identifier expressionLocation:(CGPoint)location addToExisting:(BOOL)existing;
- (void)mathViewController:(id)controller didUpdateExpressions:(id)expressions newExpressions:(id)newExpressions removedExpressions:(id)removedExpressions mathItems:(id)items;
- (void)mathViewController:(id)controller replaceStrokes:(id)strokes withStrokes:(id)withStrokes;
- (void)mathViewController:(id)controller selectStrokes:(id)strokes;
- (void)mathViewController:(id)controller setHiddenStrokes:(id)strokes;
- (void)mathViewController:(id)controller setShouldSolve:(BOOL)solve item:(id)item heroStroke:(id)stroke flag:(unint64_t)flag;
- (void)mathViewController:(id)controller setShouldSolve:(BOOL)solve item:(id)item heroStroke:(id)stroke flag:(unint64_t)flag undoable:(BOOL)undoable;
- (void)mathViewController:(id)controller updatedResult:(id)result strokes:(id)strokes expressionUUID:(id)d;
- (void)mathViewControllerUpdateFrameForContainer:(id)container;
@end

@implementation MathRecognitionViewControllerDelegate

- (id)mathViewControllerDrawing:(id)drawing
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  drawingCopy = drawing;
  selfCopy = self;
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

- (id)mathViewControllerTiledView:(id)view
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x468);
    selfCopy = self;
    v8 = v6();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGAffineTransform)mathViewControllerDrawingTransform:(SEL)transform
{
  v6 = a4;
  selfCopy = self;
  specialized MathRecognitionViewControllerDelegate.mathViewControllerDrawingTransform(_:)(v11);

  v9 = v11[1];
  v10 = v11[2];
  *&retstr->a = v11[0];
  *&retstr->c = v9;
  *&retstr->tx = v10;
  return result;
}

- (double)mathViewControllerLatestEndOfStrokeTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  selfCopy = self;
  v6 = specialized MathRecognitionViewControllerDelegate.mathViewControllerLatestEnd(ofStrokeTimestamp:)();

  return v6;
}

- (void)mathViewControllerUpdateFrameForContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  specialized MathRecognitionViewControllerDelegate.mathViewControllerUpdateFrame(forContainer:)();
}

- (id)mathViewController:(id)controller expressionIdentifiersForExistingGraphNearLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v16 = 0;
    v10 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0xA20);
    controllerCopy = controller;
    selfCopy = self;
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

- (id)mathViewController:(id)controller expressionIdentifiersForCompatibleGraphNearLocation:(CGPoint)location expressionUUID:(id)d
{
  y = location.y;
  x = location.x;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
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

- (void)mathViewController:(id)controller addGraphForExpression:(id)expression variable:(id)variable range:(CGRect)range identifier:(id)identifier expressionLocation:(CGPoint)location addToExisting:(BOOL)existing
{
  existingCopy = existing;
  y = location.y;
  x = location.x;
  height = range.size.height;
  width = range.size.width;
  v14 = range.origin.y;
  v15 = range.origin.x;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (variable)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    variable = v23;
  }

  else
  {
    v22 = 0;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  controllerCopy = controller;
  selfCopy = self;
  specialized MathRecognitionViewControllerDelegate.mathViewController(_:addGraphForExpression:variable:range:identifier:expressionLocation:addToExisting:)(v19, v21, v22, variable, v24, v26, existingCopy, v15, v14, width, height, x, y);
}

- (void)mathViewController:(id)controller didUpdateExpressions:(id)expressions newExpressions:(id)newExpressions removedExpressions:(id)removedExpressions mathItems:(id)items
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKMathRecognitionItem);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  specialized MathRecognitionViewControllerDelegate.mathViewController(_:didUpdateExpressions:newExpressions:removedExpressions:mathItems:)(v9, v10, v11, v12);
}

- (void)mathViewController:(id)controller replaceStrokes:(id)strokes withStrokes:(id)withStrokes
{
  type metadata accessor for PKStroke();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  specialized MathRecognitionViewControllerDelegate.mathViewController(_:replace:with:)();
}

- (void)mathViewController:(id)controller setHiddenStrokes:(id)strokes
{
  type metadata accessor for PKStroke();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x798);
    v8 = Strong;
    selfCopy = self;
    v7(v5);
  }
}

- (id)mathViewController:(id)controller createScrubberControllerForView:(id)view delegate:(id)delegate
{
  v6 = objc_allocWithZone(type metadata accessor for CalculateScrubberController());
  viewCopy = view;
  swift_unknownObjectRetain();
  v8 = specialized CalculateScrubberController.init(view:delegate:)();

  swift_unknownObjectRelease();

  return v8;
}

- (id)mathViewController:(id)controller createTypesetViewControllerForExpression:(id)expression latex:(BOOL)latex fontSize:(double)size
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  controllerCopy = controller;
  selfCopy = self;
  v15 = specialized MathRecognitionViewControllerDelegate.mathViewController(_:createTypesetViewControllerForExpression:latex:fontSize:)(v10, size, v12, latex);

  return v15;
}

- (id)mathViewController:(id)controller createTypesetImageForExpression:(id)expression latex:(BOOL)latex fontSize:(double)size
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  controllerCopy = controller;
  selfCopy = self;
  v15 = specialized MathRecognitionViewControllerDelegate.mathViewController(_:createTypesetImageForExpression:latex:fontSize:)(v10, size, v12, latex);

  return v15;
}

- (id)mathViewController:(id)controller createTypesetImageForItemUUID:(id)d showResult:(BOOL)result fontSize:(double)size
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  v16 = specialized MathRecognitionViewControllerDelegate.mathViewController(_:createTypesetImageForItemUUID:showResult:fontSize:)(v13, result, size);

  (*(v11 + 8))(v13, v10);

  return v16;
}

- (void)mathViewController:(id)controller setShouldSolve:(BOOL)solve item:(id)item heroStroke:(id)stroke flag:(unint64_t)flag
{
  solveCopy = solve;
  v11 = type metadata accessor for PKStroke();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  strokeCopy = stroke;
  selfCopy = self;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    (*((*MEMORY[0x1E69E7D40] & Strong->super.isa) + 0xA08))(solveCopy, v14, flag, 0);

    selfCopy = v18;
  }

  (*(v12 + 8))(v14, v11);
}

- (void)mathViewController:(id)controller setShouldSolve:(BOOL)solve item:(id)item heroStroke:(id)stroke flag:(unint64_t)flag undoable:(BOOL)undoable
{
  undoableCopy = undoable;
  solveCopy = solve;
  v13 = type metadata accessor for PKStroke();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  strokeCopy = stroke;
  selfCopy = self;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    (*((*MEMORY[0x1E69E7D40] & Strong->super.isa) + 0xA08))(solveCopy, v16, flag, undoableCopy);

    selfCopy = v20;
  }

  (*(v14 + 8))(v16, v13);
}

- (void)mathViewController:(id)controller selectStrokes:(id)strokes
{
  type metadata accessor for PKStroke();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  specialized MathRecognitionViewControllerDelegate.mathViewController(_:select:)(v6);
}

- (void)mathViewController:(id)controller updatedResult:(id)result strokes:(id)strokes expressionUUID:(id)d
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (result)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for PKStroke();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  specialized MathRecognitionViewControllerDelegate.mathViewController(_:updatedResult:strokes:expressionUUID:)(v13, v12);

  (*(v10 + 8))(v12, v9);
}

- (id)mathViewController:(id)controller resultForLocale:(id)locale itemUUID:(id)d
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
  controllerCopy = controller;
  selfCopy = self;
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