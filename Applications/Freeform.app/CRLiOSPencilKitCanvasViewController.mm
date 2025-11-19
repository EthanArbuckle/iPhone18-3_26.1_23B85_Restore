@interface CRLiOSPencilKitCanvasViewController
- (BOOL)_canvasView:(id)a3 hoverShouldBeActiveAt:(CGPoint)a4;
- (CRLBezierPath)unscaledRulerBezierPath;
- (PKCanvasView)pencilKitCanvasView;
- (_TtC8Freeform35CRLiOSPencilKitCanvasViewController)initWithCoder:(id)a3;
- (_TtC8Freeform35CRLiOSPencilKitCanvasViewController)initWithDelegate:(id)a3;
- (_TtC8Freeform35CRLiOSPencilKitCanvasViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)pencilKitCanvasViewForPKSelectionManager:(id)a3;
- (id)rulerEdgePathInUnscaledSpaceForTopOfRuler:(BOOL)a3;
- (void)_canvasView:(id)a3 didChangeHiddenState:(BOOL)a4;
- (void)_canvasView:(id)a3 endedStroke:(id)a4 shapeStrokes:(id)a5;
- (void)_canvasView:(id)a3 scratchOutStrokes:(id)a4 drawing:(id)a5;
- (void)_canvasViewWillCreateSnapshot:(id)a3;
- (void)installSmartSelectionView:(id)a3 forPKSelectionManager:(id)a4;
- (void)loadView;
- (void)removeSmartSelectionViewIfNecessary;
- (void)setSmartSelectionManager:(id)a3;
- (void)setSmartSelectionView:(id)a3;
- (void)tearDown;
- (void)toolkitDidUpdateCurrentToolSelection;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)willUndoOrRedo;
@end

@implementation CRLiOSPencilKitCanvasViewController

- (_TtC8Freeform35CRLiOSPencilKitCanvasViewController)initWithDelegate:(id)a3
{
  swift_unknownObjectRetain();

  return sub_101050084(a3, self);
}

- (_TtC8Freeform35CRLiOSPencilKitCanvasViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_isTornDown) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionManager) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)tearDown
{
  v2 = self;
  sub_1008F69BC();
}

- (PKCanvasView)pencilKitCanvasView
{
  v2 = self;
  result = [(CRLiOSPencilKitCanvasViewController *)v2 view];
  if (result)
  {

    objc_opt_self();
    v4 = swift_dynamicCastObjCClassUnconditional();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setSmartSelectionManager:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionManager);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionManager) = a3;
  v3 = a3;
}

- (void)setSmartSelectionView:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionView);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionView) = a3;
  v3 = a3;
}

- (void)willUndoOrRedo
{
  v2 = self;
  sub_1008F708C();
}

- (void)loadView
{
  v2 = self;
  CRLiOSPencilKitCanvasViewController.loadView()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  CRLiOSPencilKitCanvasViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  CRLiOSPencilKitCanvasViewController.viewDidAppear(_:)(a3);
}

- (id)rulerEdgePathInUnscaledSpaceForTopOfRuler:(BOOL)a3
{
  v4 = self;
  v5 = sub_1008F8BBC(a3);

  return v5;
}

- (CRLBezierPath)unscaledRulerBezierPath
{
  v2 = self;
  v3 = sub_1008F8DA4();

  return v3;
}

- (_TtC8Freeform35CRLiOSPencilKitCanvasViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_canvasView:(id)a3 didChangeHiddenState:(BOOL)a4
{
  v4 = a4;
  v7 = self;
  v5 = [(CRLiOSPencilKitCanvasViewController *)v7 view];
  if (v5)
  {
    v6 = v5;
    [v5 setHidden:v4];

    [swift_unknownObjectUnownedLoadStrong() pencilKitViewWantsSuppressedFreehandContent:v4 ^ 1 forPencilKitCanvasViewController:v7];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (void)_canvasView:(id)a3 endedStroke:(id)a4 shapeStrokes:(id)a5
{
  v7 = type metadata accessor for PKStroke();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a4;
  v12 = self;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  [swift_unknownObjectUnownedLoadStrong() prepareForPencilKitEndingOrCancellingStroke:v12];
  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
}

- (void)_canvasView:(id)a3 scratchOutStrokes:(id)a4 drawing:(id)a5
{
  v8 = type metadata accessor for PKDrawing();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PKStroke();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a5;
  v14 = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1008FAB74();

  (*(v9 + 8))(v11, v8);
}

- (BOOL)_canvasView:(id)a3 hoverShouldBeActiveAt:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  LOBYTE(self) = CRLiOSPencilKitCanvasViewController._canvasView(_:hoverShouldBeActiveAt:)(v7, x, y);

  return self & 1;
}

- (void)_canvasViewWillCreateSnapshot:(id)a3
{
  v4 = a3;
  v5 = self;
  _s8Freeform35CRLiOSPencilKitCanvasViewControllerC07_canvasF18WillCreateSnapshotyySo08PKCanvasF0CF_0();
}

- (void)toolkitDidUpdateCurrentToolSelection
{
  v2 = self;
  CRLiOSPencilKitCanvasViewController.toolkitDidUpdateCurrentToolSelection()();
}

- (void)installSmartSelectionView:(id)a3 forPKSelectionManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  _s8Freeform35CRLiOSPencilKitCanvasViewControllerC021installSmartSelectionF0_3forySo6UIViewCSg_So36CRLFreehandDrawingPKSelectionManagerCtF_0(a3);
}

- (id)pencilKitCanvasViewForPKSelectionManager:(id)a3
{
  v3 = self;
  result = [(CRLiOSPencilKitCanvasViewController *)v3 view];
  if (result)
  {

    objc_opt_self();
    v5 = swift_dynamicCastObjCClassUnconditional();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)removeSmartSelectionViewIfNecessary
{
  v2 = OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionView;
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionView);
  if (v3)
  {
    v5 = self;
    [v3 removeFromSuperview];
    v6 = *(&self->super.super.super.isa + v2);
    *(&self->super.super.super.isa + v2) = 0;
  }
}

@end