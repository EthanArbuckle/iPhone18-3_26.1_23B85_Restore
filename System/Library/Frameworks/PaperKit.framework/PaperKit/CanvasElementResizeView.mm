@interface CanvasElementResizeView
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int64_t)_dragInteraction:(id)interaction dataOwnerForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point;
- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)controlHandleMoved:(id)moved;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)doubleTapped:(id)tapped;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)handleSheetPresentationStateChanged:(id)changed;
- (void)layoutSubviews;
- (void)tapped:(id)tapped;
@end

@implementation CanvasElementResizeView

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for CanvasElementResizeView();
  [(CanvasElementResizeView *)&v6 dealloc];
}

- (void)handleSheetPresentationStateChanged:(id)changed
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  CanvasElementResizeView.handleSheetPresentationStateChanged(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)didMoveToWindow
{
  selfCopy = self;
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  CanvasElementResizeView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (void)controlHandleMoved:(id)moved
{
  movedCopy = moved;
  selfCopy = self;
  CanvasElementResizeView.controlHandleMoved(_:)(movedCopy);
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = CanvasElementResizeView.gestureRecognizerShouldBegin(_:)(beginCopy);

  return self & 1;
}

- (void)tapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  CanvasElementResizeView.tapped(_:)(tappedCopy);
}

- (void)doubleTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  CanvasElementResizeView.doubleTapped(_:)(tappedCopy);
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  selfCopy = self;
  v9 = CanvasElementResizeView.contextMenuInteraction(_:configurationForMenuAtLocation:)(interactionCopy, __PAIR128__(*&y, *&x));

  return v9;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    interactionCopy = interaction;
    configurationCopy = configuration;
    selfCopy = self;
    v12 = CanvasElementResizeView.resizingCanvasElements.getter();
    v13 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC8PaperKit09AnyCanvasA4ViewC_SayAFGTt0g5(v12);
    v14 = AnyCanvas.contextMenuInteraction(_:canvasElementViews:previewForHighlightingMenuWithConfiguration:)(interactionCopy, v13, configurationCopy);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_unknownObjectRetain();
    selfCopy = self;

    v9 = CanvasElementResizeView.resizingCanvasElements.getter();
    _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC8PaperKit09AnyCanvasA4ViewC_SayAFGTt0g5(v9);

    [animator setPreferredCommitStyle_];
    swift_unknownObjectRelease();
  }
}

- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = self;
  }

  selfCopy = self;
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  _dragDataOwner = [(CanvasElementResizeView *)Strong _dragDataOwner];

  swift_unknownObjectRelease();
  return _dragDataOwner;
}

- (int64_t)_dragInteraction:(id)interaction dataOwnerForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = self;
  }

  selfCopy = self;
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  _dragDataOwner = [(CanvasElementResizeView *)Strong _dragDataOwner];

  swift_unknownObjectRelease();
  return _dragDataOwner;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  interactionCopy = interaction;
  itemCopy = item;
  swift_unknownObjectRetain();
  selfCopy = self;
  v11.super.isa = specialized CanvasElementResizeView.dragInteraction(_:previewForLifting:session:)(itemCopy, session).super.isa;

  swift_unknownObjectRelease();

  return v11.super.isa;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized CanvasElementResizeView.dragInteraction(_:itemsForBeginning:)(session);

  swift_unknownObjectRelease();
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  v8.value.super.isa = self;
  isa = v8.value.super.isa;
  specialized CanvasElementResizeView.dragInteraction(_:sessionWillBegin:)(v8);

  swift_unknownObjectRelease();
}

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  interactionCopy = interaction;
  itemCopy = item;
  defaultCopy = default;
  selfCopy = self;
  v15.value.super.isa = defaultCopy;
  v12 = specialized CanvasElementResizeView.dragInteraction(_:previewForCancelling:withDefault:)(v15);

  return v12;
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized CanvasElementResizeView.dragInteraction(_:session:didEndWith:)(session, operation);

  swift_unknownObjectRelease();
}

@end