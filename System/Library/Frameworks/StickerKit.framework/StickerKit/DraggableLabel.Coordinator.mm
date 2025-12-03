@interface DraggableLabel.Coordinator
- (_TtCV10StickerKit14DraggableLabel11Coordinator)init;
- (void)dragDidEnd:(id)end withOperation:(unint64_t)operation;
- (void)longPressGestureRecognized:(id)recognized;
@end

@implementation DraggableLabel.Coordinator

- (void)longPressGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  sub_19A63B0E0(recognizedCopy);
}

- (void)dragDidEnd:(id)end withOperation:(unint64_t)operation
{
  endCopy = end;
  selfCopy = self;
  sub_19A63D55C(operation);
}

- (_TtCV10StickerKit14DraggableLabel11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end