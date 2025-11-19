@interface DragAndDropBridge
- (BOOL)dragInteraction:(id)a3 prefersFullSizePreviewsForSession:(id)a4;
- (id)_dragInteraction:(id)a3 sessionPropertiesForSession:(id)a4;
- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5;
- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5;
@end

@implementation DragAndDropBridge

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  specialized DragAndDropBridge.dragInteraction(_:itemsForBeginning:)(a4);

  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = self;
  specialized DragAndDropBridge.dragInteraction(_:itemsForAddingTo:withTouchAt:)(a4, x, y);

  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = specialized DragAndDropBridge.dragInteraction(_:previewForLifting:session:)(v8);

  swift_unknownObjectRelease();

  return v10;
}

- (BOOL)dragInteraction:(id)a3 prefersFullSizePreviewsForSession:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = specialized DragAndDropBridge.dragInteraction(_:prefersFullSizePreviewsFor:)(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = self;
  specialized DragAndDropBridge.dragInteraction(_:willAnimateLiftWith:session:)(a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  v10[4] = partial apply for closure #1 in DragAndDropBridge.dragInteraction(_:item:willAnimateCancelWith:);
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
  v10[3] = &block_descriptor_78_0;
  v8 = _Block_copy(v10);
  v9 = a4;
  swift_unknownObjectRetain();

  [a5 addCompletion_];

  swift_unknownObjectRelease();
  _Block_release(v8);
}

- (id)_dragInteraction:(id)a3 sessionPropertiesForSession:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = specialized DragAndDropBridge._dragInteraction(_:sessionPropertiesForSession:)(a4);

  swift_unknownObjectRelease();

  return v8;
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v5 = (self + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionEnded);
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionEnded);
  v7 = self;
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

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = specialized DragAndDropBridge.dropInteraction(_:sessionDidUpdate:)(a4);

  swift_unknownObjectRelease();

  return v8;
}

- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  v8 = swift_allocObject();
  *(v8 + 16) = self;
  *(v8 + 24) = a4;
  v13[4] = partial apply for closure #1 in DragAndDropBridge.dropInteraction(_:item:willAnimateDropWith:);
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
  v13[3] = &block_descriptor_55;
  v9 = _Block_copy(v13);
  v10 = a4;
  v11 = self;
  v12 = v10;
  swift_unknownObjectRetain();

  [a5 addCompletion_];

  swift_unknownObjectRelease();
  _Block_release(v9);
}

@end