@interface CRLTableRep
- (BOOL)containsPoint:(CGPoint)point withPrecision:(BOOL)precision;
- (BOOL)handleDragOperation:(unint64_t)operation withDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (BOOL)handleSingleTapAtPoint:(CGPoint)point inputType:(int64_t)type;
- (BOOL)hitRepChrome:(CGPoint)chrome;
- (BOOL)isSelectedIgnoringLocking;
- (BOOL)shouldShowSelectionHighlight;
- (CGRect)boundsForCollaboratorCursorRenderable;
- (CGRect)frameInUnscaledCanvas;
- (CGRect)layerFrameInScaledCanvas;
- (CRLContainerInfo)containerInfo;
- (NSArray)overlayRenderables;
- (_TtC8Freeform11CRLTableRep)initWithLayout:(id)layout canvas:(id)canvas;
- (id)newTrackerForKnob:(id)knob;
- (id)selectionBehaviorToCommitDragTrackerWithDraggedReps:(id)reps;
- (unint64_t)dragOperationForDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (void)addKnobsToArray:(id)array;
- (void)becameNotSelected;
- (void)collaboratorCursorChangedToSelectionPath:(id)path;
- (void)cursorMovedAtPoint:(CGPoint)point withPlatformObject:(id)object;
- (void)dragTrackerEnteredAt:(CGPoint)at withDraggedReps:(id)reps;
- (void)dragTrackerExitedAt:(CGPoint)at withDraggedReps:(id)reps;
- (void)drawInContext:(CGContext *)context;
- (void)dynamicOperationDidBeginWithRealTimeCommands:(BOOL)commands;
- (void)dynamicOperationDidEnd;
- (void)dynamicallyResizingWithTracker:(id)tracker;
- (void)hideDragAndDropUI;
- (void)processChangedProperty:(unint64_t)property;
- (void)updateCellSelectionHighlight;
- (void)updateDragAndDropUIForPoint:(CGPoint)point dragInfo:(id)info;
- (void)updateFromLayout;
- (void)updatePositionsOfKnobs:(id)knobs;
- (void)willBeginZooming;
- (void)willUpdateRenderable:(id)renderable;
@end

@implementation CRLTableRep

- (CRLContainerInfo)containerInfo
{
  info = [(CRLCanvasRep *)self info];
  v9 = sub_1003035DC(info, 1, v3, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLContainerInfo);

  return v9;
}

- (_TtC8Freeform11CRLTableRep)initWithLayout:(id)layout canvas:(id)canvas
{
  layoutCopy = layout;
  canvasCopy = canvas;
  return sub_1012138C8(layoutCopy, canvas);
}

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  sub_101213B6C(contextCopy);
}

- (CGRect)frameInUnscaledCanvas
{
  selfCopy = self;
  sub_101215E20();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)layerFrameInScaledCanvas
{
  selfCopy = self;
  canvas = [(CRLCanvasRep *)selfCopy canvas];
  if (canvas)
  {
    v4 = canvas;
    [(CRLTableRep *)selfCopy frameInUnscaledCanvas];
    [(CRLCanvas *)v4 convertUnscaledToBoundsRect:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(CRLCanvas *)v4 contentsScale];
    v14 = v13;

    v15 = sub_1001224A4(v6, v8, v10, v12, v14);
  }

  else
  {

    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
  }

  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (BOOL)hitRepChrome:(CGPoint)chrome
{
  y = chrome.y;
  x = chrome.x;
  selfCopy = self;
  v6 = sub_10121650C(x, y);

  return v6;
}

- (BOOL)containsPoint:(CGPoint)point withPrecision:(BOOL)precision
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  layout = [(CRLCanvasRep *)selfCopy layout];
  [(CRLCanvasLayout *)layout boundsForStandardKnobs];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  v19 = CGRectInset(v18, -25.0, -25.0);
  v17.x = x;
  v17.y = y;
  LOBYTE(layout) = CGRectContainsPoint(v19, v17);

  return layout;
}

- (void)willUpdateRenderable:(id)renderable
{
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform11CRLTableRep_chrome);
  renderableCopy = renderable;
  selfCopy = self;
  if (v5)
  {
    v8 = v5;
    sub_1011C0DF8();
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for CRLTableRep();
  [(CRLCanvasRep *)&v9 willUpdateRenderable:renderable];
}

- (void)processChangedProperty:(unint64_t)property
{
  selfCopy = self;
  sub_1012167B8(property);
}

- (void)dynamicallyResizingWithTracker:(id)tracker
{
  trackerCopy = tracker;
  selfCopy = self;
  sub_101216900(tracker);
}

- (id)newTrackerForKnob:(id)knob
{
  type metadata accessor for CRLTableKnob();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    if (*(v5 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant + 8) >= 2u)
    {
      v8 = v5;
      v9 = type metadata accessor for CRLTableRowColumnAdderKnobTracker();
      v10.receiver = objc_allocWithZone(v9);
      v10.super_class = v9;
      return [(CRLTableRep *)&v10 initWithRep:self knob:v8];
    }

    else
    {
      v6 = objc_allocWithZone(type metadata accessor for CRLTableRowColumnResizeKnobTracker());

      return [v6 initWithRep:self knob:knob];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = type metadata accessor for CRLTableRep();
    return [(CRLCanvasRep *)&v11 newTrackerForKnob:knob];
  }
}

- (BOOL)isSelectedIgnoringLocking
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for CRLTableRep();
  v2 = v9.receiver;
  if ([(CRLCanvasRep *)&v9 isSelectedIgnoringLocking])
  {
    v3 = sub_101213504();
    if (v3)
    {
      v4 = v3;
      sub_1011D6B9C();
      v6 = v5;

      v7 = v6 ^ 1;
    }

    else
    {

      v7 = 1;
    }
  }

  else
  {

    v7 = 0;
  }

  return v7 & 1;
}

- (void)addKnobsToArray:(id)array
{
  arrayCopy = array;
  selfCopy = self;
  sub_101216C80(arrayCopy);
}

- (void)updatePositionsOfKnobs:(id)knobs
{
  sub_100006370(0, &unk_101A28760);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1012173B4(v4);
}

- (NSArray)overlayRenderables
{
  selfCopy = self;
  sub_101218E44();

  sub_100006370(0, &qword_101A00020);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)collaboratorCursorChangedToSelectionPath:(id)path
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLTableRep();
  pathCopy = path;
  v5 = v8.receiver;
  [(CRLCanvasRep *)&v8 collaboratorCursorChangedToSelectionPath:pathCopy];
  type metadata accessor for CRLTableCellSelection(0);
  v6 = [pathCopy mostSpecificSelectionOfClass:{swift_getObjCClassFromMetadata(), v8.receiver, v8.super_class}];

  if (v6)
  {
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v6 = *&v5[OBJC_IVAR____TtC8Freeform11CRLTableRep_collaboratorTableCellSelection];
      *&v5[OBJC_IVAR____TtC8Freeform11CRLTableRep_collaboratorTableCellSelection] = v7;
    }
  }

  else
  {
    v6 = v5;
  }
}

- (CGRect)boundsForCollaboratorCursorRenderable
{
  v24.receiver = self;
  v24.super_class = type metadata accessor for CRLTableRep();
  v2 = v24.receiver;
  [(CRLCanvasRep *)&v24 boundsForCollaboratorCursorRenderable];
  v7 = OBJC_IVAR____TtC8Freeform11CRLTableRep_collaboratorTableCellSelection;
  v8 = *&v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_collaboratorTableCellSelection];
  if (v8)
  {
    v9 = v8;
    layout = [v2 layout];
    type metadata accessor for CRLTableLayout();
    swift_dynamicCastClassUnconditional();
    sub_10120C9E4(v9);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = *&v2[v7];
    *&v2[v7] = 0;
  }

  else
  {
    v12 = v3;
    v14 = v4;
    v16 = v5;
    v18 = v6;
  }

  v20 = v12;
  v21 = v14;
  v22 = v16;
  v23 = v18;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (BOOL)shouldShowSelectionHighlight
{
  selfCopy = self;
  v3 = sub_101213504();
  if (v3 && (v4 = v3, v5 = sub_1011D78CC(), v4, v5))
  {

    return 0;
  }

  else
  {
    v8.receiver = selfCopy;
    v8.super_class = type metadata accessor for CRLTableRep();
    shouldShowSelectionHighlight = [(CRLCanvasRep *)&v8 shouldShowSelectionHighlight];
  }

  return shouldShowSelectionHighlight;
}

- (void)updateFromLayout
{
  selfCopy = self;
  sub_10121A284();
}

- (void)dynamicOperationDidEnd
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLTableRep();
  v2 = v3.receiver;
  [(CRLCanvasRep *)&v3 dynamicOperationDidEnd];
  sub_10121C3DC();
}

- (void)dragTrackerEnteredAt:(CGPoint)at withDraggedReps:(id)reps
{
  y = at.y;
  x = at.x;
  selfCopy = self;
  layout = [(CRLCanvasRep *)selfCopy layout];
  type metadata accessor for CRLTableLayout();
  v7 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  sub_1012053C8();

  [(CRLCanvasRep *)selfCopy convertNaturalPointFromUnscaledCanvas:x, y];
  v8 = selfCopy + OBJC_IVAR____TtC8Freeform11CRLTableRep_currentDragPointOnRep;
  *v8 = v9;
  *(v8 + 1) = v10;
  v8[16] = 0;
}

- (void)dragTrackerExitedAt:(CGPoint)at withDraggedReps:(id)reps
{
  selfCopy = self;
  layout = [(CRLCanvasRep *)selfCopy layout];
  type metadata accessor for CRLTableLayout();
  v6 = swift_dynamicCastClassUnconditional();
  v7 = &v6[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
  swift_beginAccess();
  v8 = *v7;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  sub_1011DABBC(v8);
  [v6 invalidateSize];

  sub_10121C12C();
}

- (id)selectionBehaviorToCommitDragTrackerWithDraggedReps:(id)reps
{
  sub_100006370(0, &qword_1019FB7A0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v6 = sub_10121B708(v4);

  return v6;
}

- (void)updateCellSelectionHighlight
{
  selfCopy = self;
  sub_10121C3DC();
}

- (void)becameNotSelected
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform11CRLTableRep_rangeSelectionHighlightRenderable);
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform11CRLTableRep_rangeSelectionHighlightRenderable) = 0;
  selfCopy = self;

  v4 = selfCopy + OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedBaseCellIndex;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = selfCopy + OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedCursorCellIndex;
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for CRLTableRep();
  [(CRLCanvasRep *)&v6 becameNotSelected];
}

- (void)dynamicOperationDidBeginWithRealTimeCommands:(BOOL)commands
{
  commandsCopy = commands;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform11CRLTableRep_rangeSelectionHighlightRenderable);
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform11CRLTableRep_rangeSelectionHighlightRenderable) = 0;
  selfCopy = self;

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for CRLTableRep();
  [(CRLCanvasRep *)&v6 dynamicOperationDidBeginWithRealTimeCommands:commandsCopy];
}

- (void)willBeginZooming
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform11CRLTableRep_rangeSelectionHighlightRenderable);
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform11CRLTableRep_rangeSelectionHighlightRenderable) = 0;
  selfCopy = self;

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for CRLTableRep();
  [(CRLCanvasRep *)&v4 willBeginZooming];
}

- (void)cursorMovedAtPoint:(CGPoint)point withPlatformObject:(id)object
{
  y = point.y;
  x = point.x;
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform11CRLTableRep_chrome);
  objectCopy = object;
  selfCopy = self;
  if (v8)
  {
    v11 = v8;
    sub_1011C22F8(x, y);
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for CRLTableRep();
  [(CRLCanvasRep *)&v12 cursorMovedAtPoint:object withPlatformObject:x, y];
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)point inputType:(int64_t)type
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  LOBYTE(type) = sub_10121D740(type, x, y);

  return type & 1;
}

- (unint64_t)dragOperationForDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  infoCopy = info;
  selfCopy = self;
  if (-[CRLCanvasRep isLocked](selfCopy, "isLocked") || (v7 = [infoCopy itemSource]) == 0)
  {
  }

  else
  {
    v8 = [v7 preferredImportableDataTypeDetectingImportableURLsInText:1];

    swift_unknownObjectRelease();
    if (v8 == 2)
    {
      return 1;
    }
  }

  return 0;
}

- (BOOL)handleDragOperation:(unint64_t)operation withDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  selfCopy = self;
  sub_101224410(infoCopy, x, y);
  LOBYTE(self) = v10;

  return self & 1;
}

- (void)updateDragAndDropUIForPoint:(CGPoint)point dragInfo:(id)info
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  selfCopy = self;
  sub_101224F84(x, y);
}

- (void)hideDragAndDropUI
{
  selfCopy = self;
  sub_10121C12C();
}

@end