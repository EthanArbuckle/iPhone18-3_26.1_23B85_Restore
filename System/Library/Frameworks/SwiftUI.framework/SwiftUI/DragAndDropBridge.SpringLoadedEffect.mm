@interface DragAndDropBridge.SpringLoadedEffect
- (_TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect)init;
- (void)interaction:(id)interaction didChangeWithContext:(id)context;
@end

@implementation DragAndDropBridge.SpringLoadedEffect

- (void)interaction:(id)interaction didChangeWithContext:(id)context
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  DragAndDropBridge.SpringLoadedEffect.interaction(_:didChangeWith:)(interactionCopy, context);

  swift_unknownObjectRelease();
}

- (_TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end