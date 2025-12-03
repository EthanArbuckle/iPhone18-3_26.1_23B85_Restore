@interface CRLMathRecognitionItemsHandler
- (CGAffineTransform)mathViewControllerDrawingTransform:(SEL)transform;
- (CRLFreehandDrawingLayout)layout;
- (CRLFreehandDrawingRep)rep;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (NSDictionary)computedResultVisibilityStates;
- (NSString)crlaxRecognizedMathDescription;
- (_TtC8Freeform28CRLMathCalculationController)mathCalculationController;
- (_TtC8Freeform30CRLMathRecognitionItemsHandler)init;
- (id)mathViewController:(id)controller coordinateSpaceForDrawing:(id)drawing;
- (id)mathViewController:(id)controller createTypesetImageForExpression:(id)expression latex:(BOOL)latex fontSize:(double)size;
- (id)mathViewController:(id)controller createTypesetImageForItemUUID:(id)d showResult:(BOOL)result fontSize:(double)size;
- (id)mathViewController:(id)controller createTypesetViewControllerForExpression:(id)expression latex:(BOOL)latex fontSize:(double)size;
- (id)mathViewController:(id)controller resultForLocale:(id)locale itemUUID:(id)d;
- (id)mathViewControllerDrawing:(id)drawing;
- (id)mathViewControllerTiledView:(id)view;
- (void)mathViewController:(id)controller didUpdateExpressions:(id)expressions newExpressions:(id)newExpressions removedExpressions:(id)removedExpressions mathItems:(id)items;
- (void)mathViewController:(id)controller setShouldSolve:(BOOL)solve item:(id)item heroStroke:(id)stroke flag:(unint64_t)flag undoable:(BOOL)undoable;
- (void)mathViewControllerDidDismissPopoverUI:(id)i;
- (void)mathViewControllerUpdateFrameForContainer:(id)container;
- (void)setComputedResultVisibilityStates:(id)states;
- (void)setMathViewController:(id)controller;
- (void)updateCalculateDocumentProvider;
- (void)updateMathSolvingStyle;
- (void)willBeRemoved;
@end

@implementation CRLMathRecognitionItemsHandler

- (CRLFreehandDrawingLayout)layout
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setMathViewController:(id)controller
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_mathViewController);
  *(self + OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_mathViewController) = controller;
  controllerCopy = controller;
}

- (NSDictionary)computedResultVisibilityStates
{
  swift_beginAccess();
  type metadata accessor for UUID();
  sub_10099D754(&qword_1019FB870, &type metadata accessor for UUID);

  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setComputedResultVisibilityStates:(id)states
{
  type metadata accessor for UUID();
  sub_10099D754(&qword_1019FB870, &type metadata accessor for UUID);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_computedResultVisibilityStates;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  selfCopy = self;
  sub_100995DA0();
  v4 = v3;

  return v4;
}

- (_TtC8Freeform28CRLMathCalculationController)mathCalculationController
{
  selfCopy = self;
  sub_100995DA0();
  if (v3)
  {
    v4 = v3;
    mathCalculationController = [v3 mathCalculationController];
  }

  else
  {
    mathCalculationController = 0;
  }

  return mathCalculationController;
}

- (CRLFreehandDrawingRep)rep
{
  selfCopy = self;
  v3 = sub_10099628C();

  return v3;
}

- (void)updateMathSolvingStyle
{
  selfCopy = self;
  sub_100996A04();
}

- (void)willBeRemoved
{
  selfCopy = self;
  sub_100999870();
}

- (id)mathViewControllerDrawing:(id)drawing
{
  v5 = sub_1005B981C(&qword_101A01C10);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  drawingCopy = drawing;
  selfCopy = self;
  sub_10099A39C(v7);

  v10 = type metadata accessor for PKDrawing();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    isa = PKDrawing._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v7, v10);
    v13 = isa;
  }

  return v13;
}

- (id)mathViewControllerTiledView:(id)view
{
  selfCopy = self;
  sub_100995DA0();
  if (v4)
  {
    v5 = v4;
    freehandDrawingToolkit = [v4 freehandDrawingToolkit];

    if (freehandDrawingToolkit)
    {
      pkCanvasView = [freehandDrawingToolkit pkCanvasView];

      freehandDrawingToolkit = [pkCanvasView _tiledView];
    }
  }

  else
  {
    freehandDrawingToolkit = 0;
  }

  return freehandDrawingToolkit;
}

- (CGAffineTransform)mathViewControllerDrawingTransform:(SEL)transform
{
  retstr->a = 1.0;
  retstr->b = 0.0;
  retstr->c = 0.0;
  retstr->d = 1.0;
  retstr->tx = 0.0;
  retstr->ty = 0.0;
  return self;
}

- (id)mathViewController:(id)controller coordinateSpaceForDrawing:(id)drawing
{
  v7 = type metadata accessor for PKDrawing();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  controllerCopy = controller;
  drawingCopy = drawing;
  selfCopy = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_10099DA68();
  (*(v8 + 8))(v10, v7);

  return v14;
}

- (id)mathViewController:(id)controller createTypesetViewControllerForExpression:(id)expression latex:(BOOL)latex fontSize:(double)size
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  controllerCopy = controller;
  selfCopy = self;
  v14 = sub_10099E1AC(v9, v11, latex);

  return v14;
}

- (void)mathViewController:(id)controller setShouldSolve:(BOOL)solve item:(id)item heroStroke:(id)stroke flag:(unint64_t)flag undoable:(BOOL)undoable
{
  undoableCopy = undoable;
  v14 = type metadata accessor for PKStroke();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  controllerCopy = controller;
  itemCopy = item;
  strokeCopy = stroke;
  selfCopy = self;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10099E44C(solve, itemCopy, v17, undoableCopy);
  (*(v15 + 8))(v17, v14);
}

- (void)mathViewControllerDidDismissPopoverUI:(id)i
{
  iCopy = i;
  selfCopy = self;
  sub_10099E640();
}

- (id)mathViewController:(id)controller resultForLocale:(id)locale itemUUID:(id)d
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100995DA0();
  if (v15 && (v16 = v15, v17 = [v15 mathCalculationController], v16, v17))
  {
    CRLMathCalculationController.resultForExpressionWithUUID(_:locale:)(v9, v13);
    v19 = v18;

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
    if (v19)
    {
      v20 = String._bridgeToObjectiveC()();

      v21 = v20;
      goto LABEL_7;
    }
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
  }

  v21 = 0;
LABEL_7:

  return v21;
}

- (id)mathViewController:(id)controller createTypesetImageForItemUUID:(id)d showResult:(BOOL)result fontSize:(double)size
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_10099E764(v11);
  v15 = v14;

  (*(v9 + 8))(v11, v8);

  return v15;
}

- (id)mathViewController:(id)controller createTypesetImageForExpression:(id)expression latex:(BOOL)latex fontSize:(double)size
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  controllerCopy = controller;
  selfCopy = self;
  v14 = sub_10099E870(v9, v11, latex);

  return v14;
}

- (void)mathViewController:(id)controller didUpdateExpressions:(id)expressions newExpressions:(id)newExpressions removedExpressions:(id)removedExpressions mathItems:(id)items
{
  type metadata accessor for UUID();
  sub_10099D754(&qword_1019FB870, &type metadata accessor for UUID);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100006370(0, &qword_101A0A358);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_10099EB6C(v9, v10, v11, v12);
}

- (void)mathViewControllerUpdateFrameForContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  sub_1009A0CF8();
}

- (void)updateCalculateDocumentProvider
{
  selfCopy = self;
  sub_10099AFD4();
}

- (NSString)crlaxRecognizedMathDescription
{
  selfCopy = self;
  sub_10099C744();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtC8Freeform30CRLMathRecognitionItemsHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end