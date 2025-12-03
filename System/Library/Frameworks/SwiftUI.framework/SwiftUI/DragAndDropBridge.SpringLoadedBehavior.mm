@interface DragAndDropBridge.SpringLoadedBehavior
- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context;
- (_TtCC7SwiftUI17DragAndDropBridge20SpringLoadedBehavior)init;
- (void)interactionDidFinish:(id)finish;
@end

@implementation DragAndDropBridge.SpringLoadedBehavior

- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(&self->super.isa + OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge20SpringLoadedBehavior_base);
    interactionCopy = interaction;
    swift_unknownObjectRetain();
    selfCopy = self;
    if ([v9 shouldAllowInteraction:interactionCopy withContext:context])
    {
      v12 = specialized DragAndDropBridge.shouldAllow(_:with:)(context);
    }

    else
    {
      v12 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (void)interactionDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  DragAndDropBridge.SpringLoadedBehavior.interactionDidFinish(_:)(finishCopy);
}

- (_TtCC7SwiftUI17DragAndDropBridge20SpringLoadedBehavior)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end