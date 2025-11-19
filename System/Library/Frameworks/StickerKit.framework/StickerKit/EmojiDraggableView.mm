@interface EmojiDraggableView
- (CGSize)intrinsicContentSize;
- (id)_dragInteraction:(id)a3 sessionPropertiesForSession:(id)a4;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)a3;
- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 sessionDidTransferItems:(id)a4;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5;
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

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  v5 = objc_opt_self();
  v7 = self;
  v6 = [v5 defaultCenter];
  if (qword_1EAFCAFF0 != -1)
  {
    swift_once();
  }

  [v6 postNotificationName:qword_1EAFDD660 object:v7];
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v6 = self;
  sub_19A610AD0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_19A63D55C(a5);
    swift_unknownObjectRelease();
  }
}

- (void)dragInteraction:(id)a3 sessionDidTransferItems:(id)a4
{
  v4 = self;
  sub_19A611E54();
}

- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5
{
  v5 = self;
  sub_19A611E54();
}

- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
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

  [a5 addCompletion_];
  _Block_release(v12);

  swift_unknownObjectRelease();
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_19A61260C();

  swift_unknownObjectRelease();
  sub_19A5F5028(0, &qword_1EAFCE4F0);
  v7 = sub_19A7AB234();

  return v7;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = sub_19A61288C();

  swift_unknownObjectRelease();

  return v10;
}

- (id)_dragInteraction:(id)a3 sessionPropertiesForSession:(id)a4
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD480]) init];
  [v4 set:1 rotatable:?];
  [v4 set:1 resizable:?];
  [v4 set:300.0 maximumResizableSize:300.0];
  [v4 set:1 wantsElasticEffects:?];

  return v4;
}

- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19A612D00();
}

@end