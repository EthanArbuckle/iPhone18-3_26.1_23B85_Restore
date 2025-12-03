@interface CRLiOSPencilKitCanvasViewController
- (BOOL)_canvasView:(id)view hoverShouldBeActiveAt:(CGPoint)at;
- (CRLBezierPath)unscaledRulerBezierPath;
- (PKCanvasView)pencilKitCanvasView;
- (_TtC8Freeform35CRLiOSPencilKitCanvasViewController)initWithCoder:(id)coder;
- (_TtC8Freeform35CRLiOSPencilKitCanvasViewController)initWithDelegate:(id)delegate;
- (_TtC8Freeform35CRLiOSPencilKitCanvasViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)pencilKitCanvasViewForPKSelectionManager:(id)manager;
- (id)rulerEdgePathInUnscaledSpaceForTopOfRuler:(BOOL)ruler;
- (void)_canvasView:(id)view didChangeHiddenState:(BOOL)state;
- (void)_canvasView:(id)view endedStroke:(id)stroke shapeStrokes:(id)strokes;
- (void)_canvasView:(id)view scratchOutStrokes:(id)strokes drawing:(id)drawing;
- (void)_canvasViewWillCreateSnapshot:(id)snapshot;
- (void)installSmartSelectionView:(id)view forPKSelectionManager:(id)manager;
- (void)loadView;
- (void)removeSmartSelectionViewIfNecessary;
- (void)setSmartSelectionManager:(id)manager;
- (void)setSmartSelectionView:(id)view;
- (void)tearDown;
- (void)toolkitDidUpdateCurrentToolSelection;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)willUndoOrRedo;
@end

@implementation CRLiOSPencilKitCanvasViewController

- (_TtC8Freeform35CRLiOSPencilKitCanvasViewController)initWithDelegate:(id)delegate
{
  swift_unknownObjectRetain();

  return sub_101050084(delegate, self);
}

- (_TtC8Freeform35CRLiOSPencilKitCanvasViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1008F69BC();
}

- (PKCanvasView)pencilKitCanvasView
{
  selfCopy = self;
  result = [(CRLiOSPencilKitCanvasViewController *)selfCopy view];
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

- (void)setSmartSelectionManager:(id)manager
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionManager);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionManager) = manager;
  managerCopy = manager;
}

- (void)setSmartSelectionView:(id)view
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionView);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionView) = view;
  viewCopy = view;
}

- (void)willUndoOrRedo
{
  selfCopy = self;
  sub_1008F708C();
}

- (void)loadView
{
  selfCopy = self;
  CRLiOSPencilKitCanvasViewController.loadView()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  CRLiOSPencilKitCanvasViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  CRLiOSPencilKitCanvasViewController.viewDidAppear(_:)(appear);
}

- (id)rulerEdgePathInUnscaledSpaceForTopOfRuler:(BOOL)ruler
{
  selfCopy = self;
  v5 = sub_1008F8BBC(ruler);

  return v5;
}

- (CRLBezierPath)unscaledRulerBezierPath
{
  selfCopy = self;
  v3 = sub_1008F8DA4();

  return v3;
}

- (_TtC8Freeform35CRLiOSPencilKitCanvasViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_canvasView:(id)view didChangeHiddenState:(BOOL)state
{
  stateCopy = state;
  selfCopy = self;
  view = [(CRLiOSPencilKitCanvasViewController *)selfCopy view];
  if (view)
  {
    v6 = view;
    [view setHidden:stateCopy];

    [swift_unknownObjectUnownedLoadStrong() pencilKitViewWantsSuppressedFreehandContent:stateCopy ^ 1 forPencilKitCanvasViewController:selfCopy];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (void)_canvasView:(id)view endedStroke:(id)stroke shapeStrokes:(id)strokes
{
  v7 = type metadata accessor for PKStroke();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  strokeCopy = stroke;
  selfCopy = self;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  [swift_unknownObjectUnownedLoadStrong() prepareForPencilKitEndingOrCancellingStroke:selfCopy];
  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
}

- (void)_canvasView:(id)view scratchOutStrokes:(id)strokes drawing:(id)drawing
{
  v8 = type metadata accessor for PKDrawing();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PKStroke();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  drawingCopy = drawing;
  selfCopy = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1008FAB74();

  (*(v9 + 8))(v11, v8);
}

- (BOOL)_canvasView:(id)view hoverShouldBeActiveAt:(CGPoint)at
{
  y = at.y;
  x = at.x;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = CRLiOSPencilKitCanvasViewController._canvasView(_:hoverShouldBeActiveAt:)(viewCopy, x, y);

  return self & 1;
}

- (void)_canvasViewWillCreateSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  selfCopy = self;
  _s8Freeform35CRLiOSPencilKitCanvasViewControllerC07_canvasF18WillCreateSnapshotyySo08PKCanvasF0CF_0();
}

- (void)toolkitDidUpdateCurrentToolSelection
{
  selfCopy = self;
  CRLiOSPencilKitCanvasViewController.toolkitDidUpdateCurrentToolSelection()();
}

- (void)installSmartSelectionView:(id)view forPKSelectionManager:(id)manager
{
  viewCopy = view;
  managerCopy = manager;
  selfCopy = self;
  _s8Freeform35CRLiOSPencilKitCanvasViewControllerC021installSmartSelectionF0_3forySo6UIViewCSg_So36CRLFreehandDrawingPKSelectionManagerCtF_0(view);
}

- (id)pencilKitCanvasViewForPKSelectionManager:(id)manager
{
  selfCopy = self;
  result = [(CRLiOSPencilKitCanvasViewController *)selfCopy view];
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
    selfCopy = self;
    [v3 removeFromSuperview];
    v6 = *(&self->super.super.super.isa + v2);
    *(&self->super.super.super.isa + v2) = 0;
  }
}

@end