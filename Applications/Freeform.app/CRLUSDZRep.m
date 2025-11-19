@interface CRLUSDZRep
- (BOOL)containsPoint:(CGPoint)a3 withPrecision:(BOOL)a4;
- (BOOL)directlyManagesContentPlatformView;
- (BOOL)directlyManagesVisibilityOfKnob:(id)a3;
- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4;
- (BOOL)manuallyControlsMiniFormatter;
- (BOOL)occludesSelectedRep;
- (BOOL)shouldShowKnobs;
- (BOOL)shouldSuppressSelectionHighlightDuringMultiselection;
- (CGRect)frameInUnscaledCanvasForMarqueeSelecting;
- (NSArray)additionalRenderablesOverRenderable;
- (NSArray)overlayRenderables;
- (NSString)crlaxLabel;
- (NSString)debugDescription;
- (UIView)contentPlatformView;
- (_TtC8Freeform10CRLUSDZRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)dynamicResizeDidBegin;
- (id)newTrackerForKnob:(id)a3;
- (id)resizedGeometryForTransform:(CGAffineTransform *)a3;
- (void)addKnobsToArray:(id)a3;
- (void)applicationDidEnterBackground;
- (void)becameNotSelected;
- (void)becameSelected;
- (void)didEndZooming;
- (void)didExitPreviewMode;
- (void)didUpdateRenderable:(id)a3;
- (void)drawInContext:(CGContext *)a3;
- (void)dynamicDragDidBegin;
- (void)dynamicDragDidEndAt:(CGPoint)a3;
- (void)dynamicOperationDidBeginWithRealTimeCommands:(BOOL)a3;
- (void)dynamicResizeDidEndWithTracker:(id)a3;
- (void)dynamicRotateDidBegin;
- (void)enterPreviewMode;
- (void)handleSpinnerTapWithSender:(id)a3;
- (void)hideMiniFormatterIfNecessary;
- (void)interruptRendering;
- (void)prepareForPencilKitSnapshotting;
- (void)processChangedProperty:(unint64_t)a3;
- (void)resumeRendering;
- (void)selectionPathDidChangeWithNotification:(id)a3;
- (void)updateRenderableGeometryFromLayout:(id)a3;
- (void)willBeRemoved;
- (void)willBeginZooming;
@end

@implementation CRLUSDZRep

- (_TtC8Freeform10CRLUSDZRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_100CF61CC(v5, a4);
}

- (BOOL)shouldShowKnobs
{
  if ((*(&self->super.super.isa + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_hideKnobsDueToBoundsUpdate) & 1) != 0 || *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isZooming) == 1)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLUSDZRep(0);
  return [(CRLCanvasRep *)&v5 shouldShowKnobs];
}

- (BOOL)manuallyControlsMiniFormatter
{
  v2 = *(*(&self->super.super.isa + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController) + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
  if (v2 && (*(v2 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying) & 1) != 0)
  {
    v3 = self;
    v4 = sub_100D0D22C();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (BOOL)directlyManagesVisibilityOfKnob:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100D05140(v4);

  return self & 1;
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4
{
  v4 = self;
  v5 = sub_100D152F0();

  return v5 & 1;
}

- (void)hideMiniFormatterIfNecessary
{
  v2 = self;
  sub_100D05494();
}

- (void)interruptRendering
{
  v2 = self;
  sub_100D05668();
}

- (void)resumeRendering
{
  v2 = self;
  sub_100D059F0();
}

- (void)applicationDidEnterBackground
{
  v2 = self;
  sub_100D0450C(0);
  sub_100F97B24(1);
}

- (BOOL)occludesSelectedRep
{
  v2 = self;
  sub_100D0656C();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)shouldSuppressSelectionHighlightDuringMultiselection
{
  v2 = self;
  v3 = sub_100D0686C();

  return v3 & 1;
}

- (UIView)contentPlatformView
{
  v2 = self;
  v3 = sub_100D069C8();

  return v3;
}

- (void)handleSpinnerTapWithSender:(id)a3
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v3, 0, sizeof(v3));
  }

  sub_10000CAAC(v3, &unk_1019F4D00);
}

- (BOOL)directlyManagesContentPlatformView
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState);
  v3 = *(&self->super.mCanvas + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState);
  v4 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v4 == 2)
    {
      return *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isInteractive);
    }

    if (v2 == 1 && v3 == 192)
    {
      return 1;
    }
  }

  else if (v4 && (*(v2 + 48) & 0x20) == 0)
  {
    return 1;
  }

  return 0;
}

- (NSArray)additionalRenderablesOverRenderable
{
  v2 = self;
  sub_100D08A40();

  sub_100006370(0, &qword_101A00020);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)processChangedProperty:(unint64_t)a3
{
  v4 = self;
  sub_100D08B34(a3);
}

- (void)updateRenderableGeometryFromLayout:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100D08DE0(v4);
}

- (NSArray)overlayRenderables
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLUSDZRep(0);
  v2 = v5.receiver;
  isa = [(CRLCanvasRep *)&v5 overlayRenderables];
  if (!isa)
  {
    sub_100006370(0, &qword_101A00020);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  return isa;
}

- (id)resizedGeometryForTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->c;
  v8[0] = *&a3->a;
  v8[1] = v3;
  v8[2] = *&a3->tx;
  v4 = self;
  sub_100D09678(v8);
  v6 = v5;

  return v6;
}

- (CGRect)frameInUnscaledCanvasForMarqueeSelecting
{
  v2 = self;
  [(CRLCanvasRep *)v2 boundsForStandardKnobs];
  [(CRLCanvasRep *)v2 convertNaturalRectToUnscaledCanvas:?];
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

- (void)becameSelected
{
  v2 = self;
  sub_100D098D4();
}

- (void)becameNotSelected
{
  v2 = self;
  sub_100D09CF8();
}

- (void)prepareForPencilKitSnapshotting
{
  v2 = self;
  sub_100D0A1E4();
}

- (BOOL)containsPoint:(CGPoint)a3 withPrecision:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  v7 = self;
  v8 = sub_100D0A6B4(a4, x, y);

  return v8 & 1;
}

- (void)didUpdateRenderable:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100D0A958(v4);
}

- (void)dynamicDragDidBegin
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CRLUSDZRep(0);
  v2 = v4.receiver;
  [(CRLCanvasRep *)&v4 dynamicDragDidBegin];
  sub_100CF979C();
  v3 = *(*&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController] + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
  if (v3 && (*(v3 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying) & 1) != 0)
  {
    sub_100F97F98(0);
  }
}

- (void)dynamicDragDidEndAt:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLUSDZRep(0);
  v5 = v7.receiver;
  [(CRLCanvasRep *)&v7 dynamicDragDidEndAt:x, y];
  sub_100CF979C();
  v6 = *(*&v5[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController] + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
  if (v6 && (*(v6 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying) & 1) != 0)
  {
    sub_100F97EA4(1);
  }
}

- (id)dynamicResizeDidBegin
{
  v2 = self;
  v3 = sub_100D0B4B0();

  return v3;
}

- (void)dynamicResizeDidEndWithTracker:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100D0B5D0(a3);
}

- (void)willBeginZooming
{
  v2 = self;
  sub_100D0B71C();
}

- (void)didEndZooming
{
  v2 = self;
  sub_100D0B810();
}

- (void)dynamicOperationDidBeginWithRealTimeCommands:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLUSDZRep(0);
  v4 = v5.receiver;
  [(CRLCanvasRep *)&v5 dynamicOperationDidBeginWithRealTimeCommands:v3];
  sub_100CF979C();
}

- (void)willBeRemoved
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLUSDZRep(0);
  v2 = v3.receiver;
  [(CRLCanvasRep *)&v3 willBeRemoved];
  sub_100D0C174();
  sub_100D0CD68();
  sub_100D0CF54();
}

- (void)selectionPathDidChangeWithNotification:(id)a3
{
  v3 = self;
  if ([(CRLCanvasRep *)v3 isLocked])
  {
    [(CRLCanvasRep *)v3 invalidateKnobs];
  }
}

- (void)drawInContext:(CGContext *)a3
{
  v4 = a3;
  v5 = self;
  sub_100D0D3F0(v4);
}

- (void)addKnobsToArray:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100D0EE58(v4);
}

- (id)newTrackerForKnob:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController);
  v5 = a3;
  v6 = self;
  v7 = sub_100D13FF4(v5, v6, v4);
  if (!v7)
  {
    v10.receiver = v6;
    v10.super_class = type metadata accessor for CRLUSDZRep(0);
    v7 = [(CRLCanvasRep *)&v10 newTrackerForKnob:v5];
  }

  v8 = v7;

  return v8;
}

- (NSString)crlaxLabel
{
  v2 = self;
  sub_100D1248C();
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

- (NSString)debugDescription
{
  v2 = self;
  sub_100D131D0();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)dynamicRotateDidBegin
{
  v0 = objc_opt_self();
  v1 = [v0 _atomicIncrementAssertCount];
  v23 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v23);
  StaticString.description.getter();
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v3 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v1;
  v10 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v10;
  v11 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 1549;
  v13 = v23;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  *(inited + 192) = v13;
  v14 = v2;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v17 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v17, "Unexpected call to dynamicRotateDidBegin.", 41, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:1549 isFatal:0 format:v22 args:v19];
}

- (void)enterPreviewMode
{
  v5 = self;
  v2 = [(CRLCanvasRep *)v5 info];
  type metadata accessor for CRLBoardItem(0);
  v3 = swift_isaMask & *swift_dynamicCastClassUnconditional();
  v4 = (*(v3 + 624))();
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_10125C9D4();
  }

  else
  {
    sub_10125CCF4(type metadata accessor for CRLUSDZRepPlaceholder, sub_10125E08C, &unk_1018B97E8, sub_10125E5DC);
  }
}

- (void)didExitPreviewMode
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for CRLUSDZRep(0);
  [(CRLCanvasRep *)&v2 didExitPreviewMode];
}

@end