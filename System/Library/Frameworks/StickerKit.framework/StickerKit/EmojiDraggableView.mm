@interface EmojiDraggableView
- (CGSize)intrinsicContentSize;
- (id)_dragInteraction:(id)interaction sessionPropertiesForSession:(id)session;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionDidTransferItems:(id)items;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)layoutSubviews;
@end

@implementation EmojiDraggableView

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_fixedLabel) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for EmojiDraggableView();
  v2 = v4.receiver;
  [(EmojiDraggableView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_fixedLabel];
  [v2 bounds];
  [v3 setFrame_];

  *&v2[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_liftScale] = 0x3FF0000000000000;
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  v5 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v5 defaultCenter];
  if (qword_1EAFCAFF0 != -1)
  {
    swift_once();
  }

  [defaultCenter postNotificationName:qword_1EAFDD660 object:selfCopy];
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  selfCopy = self;
  sub_19A610AD0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_19A63D55C(operation);
    swift_unknownObjectRelease();
  }
}

- (void)dragInteraction:(id)interaction sessionDidTransferItems:(id)items
{
  selfCopy = self;
  sub_19A611E54();
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  selfCopy = self;
  sub_19A611E54();
}

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  interactionCopy = interaction;
  itemCopy = item;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_19A611E54();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13[4] = sub_19A6124F0;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_19A719B64;
  v13[3] = &block_descriptor_105;
  v12 = _Block_copy(v13);

  [animator addCompletion_];
  _Block_release(v12);

  swift_unknownObjectRelease();
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_19A61260C();

  swift_unknownObjectRelease();
  sub_19A5F5028(0, &qword_1EAFCE4F0);
  v7 = sub_19A7AB234();

  return v7;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  interactionCopy = interaction;
  itemCopy = item;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_19A61288C();

  swift_unknownObjectRelease();

  return v10;
}

- (id)_dragInteraction:(id)interaction sessionPropertiesForSession:(id)session
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD480]) init];
  [v4 set:1 rotatable:?];
  [v4 set:1 resizable:?];
  [v4 set:300.0 maximumResizableSize:300.0];
  [v4 set:1 wantsElasticEffects:?];

  return v4;
}

- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_19A612D00();
}

@end