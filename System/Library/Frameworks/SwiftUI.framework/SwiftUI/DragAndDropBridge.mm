@interface DragAndDropBridge
- (BOOL)dragInteraction:(id)interaction prefersFullSizePreviewsForSession:(id)session;
- (id)_dragInteraction:(id)interaction sessionPropertiesForSession:(id)session;
- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator;
@end

@implementation DragAndDropBridge

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DragAndDropBridge.dragInteraction(_:itemsForBeginning:)(session);

  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DragAndDropBridge.dragInteraction(_:itemsForAddingTo:withTouchAt:)(session, x, y);

  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  interactionCopy = interaction;
  itemCopy = item;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = specialized DragAndDropBridge.dragInteraction(_:previewForLifting:session:)(itemCopy);

  swift_unknownObjectRelease();

  return v10;
}

- (BOOL)dragInteraction:(id)interaction prefersFullSizePreviewsForSession:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = specialized DragAndDropBridge.dragInteraction(_:prefersFullSizePreviewsFor:)(session);

  swift_unknownObjectRelease();
  return v8 & 1;
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DragAndDropBridge.dragInteraction(_:willAnimateLiftWith:session:)(animator, session);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  v7 = swift_allocObject();
  *(v7 + 16) = item;
  v10[4] = partial apply for closure #1 in DragAndDropBridge.dragInteraction(_:item:willAnimateCancelWith:);
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
  v10[3] = &block_descriptor_78_0;
  v8 = _Block_copy(v10);
  itemCopy = item;
  swift_unknownObjectRetain();

  [animator addCompletion_];

  swift_unknownObjectRelease();
  _Block_release(v8);
}

- (id)_dragInteraction:(id)interaction sessionPropertiesForSession:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = specialized DragAndDropBridge._dragInteraction(_:sessionPropertiesForSession:)(session);

  swift_unknownObjectRelease();

  return v8;
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  v5 = (self + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionEnded);
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionEnded);
  selfCopy = self;
  if (v6)
  {
    v8 = outlined copy of AppIntentExecutor?(v6);
    v6(v8);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6);
    v9 = *v5;
  }

  else
  {
    v9 = 0;
  }

  *v5 = 0;
  v5[1] = 0;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v9);
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = specialized DragAndDropBridge.dropInteraction(_:sessionDidUpdate:)(update);

  swift_unknownObjectRelease();

  return v8;
}

- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator
{
  v8 = swift_allocObject();
  *(v8 + 16) = self;
  *(v8 + 24) = item;
  v13[4] = partial apply for closure #1 in DragAndDropBridge.dropInteraction(_:item:willAnimateDropWith:);
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
  v13[3] = &block_descriptor_55;
  v9 = _Block_copy(v13);
  itemCopy = item;
  selfCopy = self;
  v12 = itemCopy;
  swift_unknownObjectRetain();

  [animator addCompletion_];

  swift_unknownObjectRelease();
  _Block_release(v9);
}

@end