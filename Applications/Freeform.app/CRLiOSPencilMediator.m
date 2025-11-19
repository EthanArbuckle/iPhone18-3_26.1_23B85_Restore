@interface CRLiOSPencilMediator
- (BOOL)prefersPencilOnlyDrawing;
- (BOOL)shouldAllowNativeHoverPreviewAtUnscaledPoint:(CGPoint)a3;
- (BOOL)shouldAllowPencilKitHoverPreviewAtUnscaledPoint:(CGPoint)a3;
- (unint64_t)pencilBehaviorOutsideModesAtUnscaledPoint:(CGPoint)a3;
- (unint64_t)pencilModeToBeginFromToolbarItem;
- (void)fingerUsedForFreehandDrawingMode;
- (void)indirectTouchUsedForFreehandDrawingMode;
- (void)markPencilUsedForMode:(unint64_t)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCurrentPencilModeType:(unint64_t)a3;
- (void)setNextPencilModeType:(unint64_t)a3;
- (void)teardown;
@end

@implementation CRLiOSPencilMediator

- (void)teardown
{
  v2 = self;
  CRLiOSPencilMediator.teardown()();
}

- (BOOL)prefersPencilOnlyDrawing
{
  v2 = objc_opt_self();

  return [v2 prefersPencilOnlyDrawing];
}

- (void)setCurrentPencilModeType:(unint64_t)a3
{
  v4 = self;
  CRLiOSPencilMediator.setCurrentPencilModeType(_:)(a3);
}

- (void)setNextPencilModeType:(unint64_t)a3
{
  v4 = self;
  CRLiOSPencilMediator.setNextPencilModeType(_:)(a3);
}

- (void)markPencilUsedForMode:(unint64_t)a3
{
  v4 = self;
  CRLiOSPencilMediator.markPencilUsed(for:)(a3);
}

- (void)fingerUsedForFreehandDrawingMode
{
  v2 = self;
  CRLiOSPencilMediator.fingerUsedForFreehandDrawingMode()();
}

- (void)indirectTouchUsedForFreehandDrawingMode
{
  v2 = self;
  CRLiOSPencilMediator.indirectTouchUsedForFreehandDrawingMode()();
}

- (unint64_t)pencilModeToBeginFromToolbarItem
{
  v2 = self;
  v3 = CRLiOSPencilMediator.pencilModeToBeginFromToolbarItem.getter();

  return v3;
}

- (unint64_t)pencilBehaviorOutsideModesAtUnscaledPoint:(CGPoint)a3
{
  v3 = self;
  v4 = CRLiOSPencilMediator.pencilBehaviorOutsideModes(at:)();

  return v4;
}

- (BOOL)shouldAllowPencilKitHoverPreviewAtUnscaledPoint:(CGPoint)a3
{
  v3 = self;
  v4 = CRLiOSPencilMediator.shouldAllowPencilKitHoverPreview(at:)();

  return v4 & 1;
}

- (BOOL)shouldAllowNativeHoverPreviewAtUnscaledPoint:(CGPoint)a3
{
  v3 = self;
  v4 = sub_1008392DC();

  return (v4 - 1) < 2;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    v16 = a5;
    v17 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_10083BABC();
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  CRLiOSPencilMediator.observeValue(forKeyPath:of:change:context:)(v10, v12, v18, v15, a6);

  sub_1005E09AC(v18);
}

@end