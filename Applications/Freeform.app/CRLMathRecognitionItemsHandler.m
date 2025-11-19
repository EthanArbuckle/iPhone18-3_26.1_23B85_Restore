@interface CRLMathRecognitionItemsHandler
- (CGAffineTransform)mathViewControllerDrawingTransform:(SEL)a3;
- (CRLFreehandDrawingLayout)layout;
- (CRLFreehandDrawingRep)rep;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (NSDictionary)computedResultVisibilityStates;
- (NSString)crlaxRecognizedMathDescription;
- (_TtC8Freeform28CRLMathCalculationController)mathCalculationController;
- (_TtC8Freeform30CRLMathRecognitionItemsHandler)init;
- (id)mathViewController:(id)a3 coordinateSpaceForDrawing:(id)a4;
- (id)mathViewController:(id)a3 createTypesetImageForExpression:(id)a4 latex:(BOOL)a5 fontSize:(double)a6;
- (id)mathViewController:(id)a3 createTypesetImageForItemUUID:(id)a4 showResult:(BOOL)a5 fontSize:(double)a6;
- (id)mathViewController:(id)a3 createTypesetViewControllerForExpression:(id)a4 latex:(BOOL)a5 fontSize:(double)a6;
- (id)mathViewController:(id)a3 resultForLocale:(id)a4 itemUUID:(id)a5;
- (id)mathViewControllerDrawing:(id)a3;
- (id)mathViewControllerTiledView:(id)a3;
- (void)mathViewController:(id)a3 didUpdateExpressions:(id)a4 newExpressions:(id)a5 removedExpressions:(id)a6 mathItems:(id)a7;
- (void)mathViewController:(id)a3 setShouldSolve:(BOOL)a4 item:(id)a5 heroStroke:(id)a6 flag:(unint64_t)a7 undoable:(BOOL)a8;
- (void)mathViewControllerDidDismissPopoverUI:(id)a3;
- (void)mathViewControllerUpdateFrameForContainer:(id)a3;
- (void)setComputedResultVisibilityStates:(id)a3;
- (void)setMathViewController:(id)a3;
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

- (void)setMathViewController:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_mathViewController);
  *(self + OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_mathViewController) = a3;
  v3 = a3;
}

- (NSDictionary)computedResultVisibilityStates
{
  swift_beginAccess();
  type metadata accessor for UUID();
  sub_10099D754(&qword_1019FB870, &type metadata accessor for UUID);

  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setComputedResultVisibilityStates:(id)a3
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
  v2 = self;
  sub_100995DA0();
  v4 = v3;

  return v4;
}

- (_TtC8Freeform28CRLMathCalculationController)mathCalculationController
{
  v2 = self;
  sub_100995DA0();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 mathCalculationController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CRLFreehandDrawingRep)rep
{
  v2 = self;
  v3 = sub_10099628C();

  return v3;
}

- (void)updateMathSolvingStyle
{
  v2 = self;
  sub_100996A04();
}

- (void)willBeRemoved
{
  v2 = self;
  sub_100999870();
}

- (id)mathViewControllerDrawing:(id)a3
{
  v5 = sub_1005B981C(&qword_101A01C10);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = a3;
  v9 = self;
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

- (id)mathViewControllerTiledView:(id)a3
{
  v3 = self;
  sub_100995DA0();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 freehandDrawingToolkit];

    if (v6)
    {
      v7 = [v6 pkCanvasView];

      v6 = [v7 _tiledView];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGAffineTransform)mathViewControllerDrawingTransform:(SEL)a3
{
  retstr->a = 1.0;
  retstr->b = 0.0;
  retstr->c = 0.0;
  retstr->d = 1.0;
  retstr->tx = 0.0;
  retstr->ty = 0.0;
  return self;
}

- (id)mathViewController:(id)a3 coordinateSpaceForDrawing:(id)a4
{
  v7 = type metadata accessor for PKDrawing();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3;
  v12 = a4;
  v13 = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_10099DA68();
  (*(v8 + 8))(v10, v7);

  return v14;
}

- (id)mathViewController:(id)a3 createTypesetViewControllerForExpression:(id)a4 latex:(BOOL)a5 fontSize:(double)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = a3;
  v13 = self;
  v14 = sub_10099E1AC(v9, v11, a5);

  return v14;
}

- (void)mathViewController:(id)a3 setShouldSolve:(BOOL)a4 item:(id)a5 heroStroke:(id)a6 flag:(unint64_t)a7 undoable:(BOOL)a8
{
  v8 = a8;
  v14 = type metadata accessor for PKStroke();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = self;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10099E44C(a4, v19, v17, v8);
  (*(v15 + 8))(v17, v14);
}

- (void)mathViewControllerDidDismissPopoverUI:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10099E640();
}

- (id)mathViewController:(id)a3 resultForLocale:(id)a4 itemUUID:(id)a5
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
  v14 = self;
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

- (id)mathViewController:(id)a3 createTypesetImageForItemUUID:(id)a4 showResult:(BOOL)a5 fontSize:(double)a6
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = self;
  sub_10099E764(v11);
  v15 = v14;

  (*(v9 + 8))(v11, v8);

  return v15;
}

- (id)mathViewController:(id)a3 createTypesetImageForExpression:(id)a4 latex:(BOOL)a5 fontSize:(double)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = a3;
  v13 = self;
  v14 = sub_10099E870(v9, v11, a5);

  return v14;
}

- (void)mathViewController:(id)a3 didUpdateExpressions:(id)a4 newExpressions:(id)a5 removedExpressions:(id)a6 mathItems:(id)a7
{
  type metadata accessor for UUID();
  sub_10099D754(&qword_1019FB870, &type metadata accessor for UUID);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100006370(0, &qword_101A0A358);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = self;
  sub_10099EB6C(v9, v10, v11, v12);
}

- (void)mathViewControllerUpdateFrameForContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1009A0CF8();
}

- (void)updateCalculateDocumentProvider
{
  v2 = self;
  sub_10099AFD4();
}

- (NSString)crlaxRecognizedMathDescription
{
  v2 = self;
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