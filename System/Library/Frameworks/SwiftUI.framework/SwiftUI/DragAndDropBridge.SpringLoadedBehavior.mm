@interface DragAndDropBridge.SpringLoadedBehavior
- (BOOL)shouldAllowInteraction:(id)a3 withContext:(id)a4;
- (_TtCC7SwiftUI17DragAndDropBridge20SpringLoadedBehavior)init;
- (void)interactionDidFinish:(id)a3;
@end

@implementation DragAndDropBridge.SpringLoadedBehavior

- (BOOL)shouldAllowInteraction:(id)a3 withContext:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(&self->super.isa + OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge20SpringLoadedBehavior_base);
    v10 = a3;
    swift_unknownObjectRetain();
    v11 = self;
    if ([v9 shouldAllowInteraction:v10 withContext:a4])
    {
      v12 = specialized DragAndDropBridge.shouldAllow(_:with:)(a4);
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

- (void)interactionDidFinish:(id)a3
{
  v4 = a3;
  v5 = self;
  DragAndDropBridge.SpringLoadedBehavior.interactionDidFinish(_:)(v4);
}

- (_TtCC7SwiftUI17DragAndDropBridge20SpringLoadedBehavior)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end