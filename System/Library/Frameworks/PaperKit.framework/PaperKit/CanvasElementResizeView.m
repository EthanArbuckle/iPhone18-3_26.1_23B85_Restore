@interface CanvasElementResizeView
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)_dragInteraction:(id)a3 dataOwnerForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)controlHandleMoved:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)doubleTapped:(id)a3;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
- (void)handleSheetPresentationStateChanged:(id)a3;
- (void)layoutSubviews;
- (void)tapped:(id)a3;
@end

@implementation CanvasElementResizeView

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for CanvasElementResizeView();
  [(CanvasElementResizeView *)&v6 dealloc];
}

- (void)handleSheetPresentationStateChanged:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  CanvasElementResizeView.handleSheetPresentationStateChanged(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)didMoveToWindow
{
  v2 = self;
  CanvasElementResizeView.didMoveToWindow()();
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CanvasElementResizeView();
  v2 = v5.receiver;
  [(ResizeView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController];
  if (v3)
  {
    v4 = v3;
    specialized MiniMenuController.update()();
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  CanvasElementResizeView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (void)controlHandleMoved:(id)a3
{
  v4 = a3;
  v5 = self;
  CanvasElementResizeView.controlHandleMoved(_:)(v4);
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = CanvasElementResizeView.gestureRecognizerShouldBegin(_:)(v4);

  return self & 1;
}

- (void)tapped:(id)a3
{
  v4 = a3;
  v5 = self;
  CanvasElementResizeView.tapped(_:)(v4);
}

- (void)doubleTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  CanvasElementResizeView.doubleTapped(_:)(v4);
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  v9 = CanvasElementResizeView.contextMenuInteraction(_:configurationForMenuAtLocation:)(v7, __PAIR128__(*&y, *&x));

  return v9;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = a3;
    v10 = a4;
    v11 = self;
    v12 = CanvasElementResizeView.resizingCanvasElements.getter();
    v13 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC8PaperKit09AnyCanvasA4ViewC_SayAFGTt0g5(v12);
    v14 = AnyCanvas.contextMenuInteraction(_:canvasElementViews:previewForHighlightingMenuWithConfiguration:)(v9, v13, v10);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_unknownObjectRetain();
    v10 = self;

    v9 = CanvasElementResizeView.resizingCanvasElements.getter();
    _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC8PaperKit09AnyCanvasA4ViewC_SayAFGTt0g5(v9);

    [a5 setPreferredCommitStyle_];
    swift_unknownObjectRelease();
  }
}

- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = self;
  }

  v7 = self;
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = [(CanvasElementResizeView *)Strong _dragDataOwner];

  swift_unknownObjectRelease();
  return v9;
}

- (int64_t)_dragInteraction:(id)a3 dataOwnerForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = self;
  }

  v8 = self;
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = [(CanvasElementResizeView *)Strong _dragDataOwner];

  swift_unknownObjectRelease();
  return v10;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  v11.super.isa = specialized CanvasElementResizeView.dragInteraction(_:previewForLifting:session:)(v9, a5).super.isa;

  swift_unknownObjectRelease();

  return v11.super.isa;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  specialized CanvasElementResizeView.dragInteraction(_:itemsForBeginning:)(a4);

  swift_unknownObjectRelease();
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v8.value.super.isa = self;
  isa = v8.value.super.isa;
  specialized CanvasElementResizeView.dragInteraction(_:sessionWillBegin:)(v8);

  swift_unknownObjectRelease();
}

- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v15.value.super.isa = v10;
  v12 = specialized CanvasElementResizeView.dragInteraction(_:previewForCancelling:withDefault:)(v15);

  return v12;
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = self;
  specialized CanvasElementResizeView.dragInteraction(_:session:didEndWith:)(a4, a5);

  swift_unknownObjectRelease();
}

@end