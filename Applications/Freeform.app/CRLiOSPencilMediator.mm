@interface CRLiOSPencilMediator
- (BOOL)prefersPencilOnlyDrawing;
- (BOOL)shouldAllowNativeHoverPreviewAtUnscaledPoint:(CGPoint)point;
- (BOOL)shouldAllowPencilKitHoverPreviewAtUnscaledPoint:(CGPoint)point;
- (unint64_t)pencilBehaviorOutsideModesAtUnscaledPoint:(CGPoint)point;
- (unint64_t)pencilModeToBeginFromToolbarItem;
- (void)fingerUsedForFreehandDrawingMode;
- (void)indirectTouchUsedForFreehandDrawingMode;
- (void)markPencilUsedForMode:(unint64_t)mode;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCurrentPencilModeType:(unint64_t)type;
- (void)setNextPencilModeType:(unint64_t)type;
- (void)teardown;
@end

@implementation CRLiOSPencilMediator

- (void)teardown
{
  selfCopy = self;
  CRLiOSPencilMediator.teardown()();
}

- (BOOL)prefersPencilOnlyDrawing
{
  v2 = objc_opt_self();

  return [v2 prefersPencilOnlyDrawing];
}

- (void)setCurrentPencilModeType:(unint64_t)type
{
  selfCopy = self;
  CRLiOSPencilMediator.setCurrentPencilModeType(_:)(type);
}

- (void)setNextPencilModeType:(unint64_t)type
{
  selfCopy = self;
  CRLiOSPencilMediator.setNextPencilModeType(_:)(type);
}

- (void)markPencilUsedForMode:(unint64_t)mode
{
  selfCopy = self;
  CRLiOSPencilMediator.markPencilUsed(for:)(mode);
}

- (void)fingerUsedForFreehandDrawingMode
{
  selfCopy = self;
  CRLiOSPencilMediator.fingerUsedForFreehandDrawingMode()();
}

- (void)indirectTouchUsedForFreehandDrawingMode
{
  selfCopy = self;
  CRLiOSPencilMediator.indirectTouchUsedForFreehandDrawingMode()();
}

- (unint64_t)pencilModeToBeginFromToolbarItem
{
  selfCopy = self;
  v3 = CRLiOSPencilMediator.pencilModeToBeginFromToolbarItem.getter();

  return v3;
}

- (unint64_t)pencilBehaviorOutsideModesAtUnscaledPoint:(CGPoint)point
{
  selfCopy = self;
  v4 = CRLiOSPencilMediator.pencilBehaviorOutsideModes(at:)();

  return v4;
}

- (BOOL)shouldAllowPencilKitHoverPreviewAtUnscaledPoint:(CGPoint)point
{
  selfCopy = self;
  v4 = CRLiOSPencilMediator.shouldAllowPencilKitHoverPreview(at:)();

  return v4 & 1;
}

- (BOOL)shouldAllowNativeHoverPreviewAtUnscaledPoint:(CGPoint)point
{
  selfCopy = self;
  v4 = sub_1008392DC();

  return (v4 - 1) < 2;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_10083BABC();
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  CRLiOSPencilMediator.observeValue(forKeyPath:of:change:context:)(v10, v12, v18, v15, context);

  sub_1005E09AC(v18);
}

@end