@interface DraggableLabel.Coordinator
- (_TtCV10StickerKit14DraggableLabel11Coordinator)init;
- (void)dragDidEnd:(id)a3 withOperation:(unint64_t)a4;
- (void)longPressGestureRecognized:(id)a3;
@end

@implementation DraggableLabel.Coordinator

- (void)longPressGestureRecognized:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19A63B0E0(v4);
}

- (void)dragDidEnd:(id)a3 withOperation:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_19A63D55C(a4);
}

- (_TtCV10StickerKit14DraggableLabel11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end