@interface ReactionPickerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC22_GroupActivities_UIKit18ReactionPickerView)init;
- (_TtC22_GroupActivities_UIKit18ReactionPickerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)presentReactionPicker;
- (void)willMoveToWindow:(id)a3;
@end

@implementation ReactionPickerView

- (_TtC22_GroupActivities_UIKit18ReactionPickerView)init
{
  ObjectType = swift_getObjectType();
  v3 = (*(ObjectType + 264))(&outlined read-only object #0 of ReactionPickerView.init());
  swift_deallocPartialClassInstance();
  return v3;
}

- (void)willMoveToWindow:(id)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ReactionPickerView();
  [(ReactionPickerView *)&v4 willMoveToWindow:a3];
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionPickerView_emojiButton) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionPickerView_emojiButton) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3 = OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionPickerView_emojiButton;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionPickerView_emojiButton);
  v9 = self;
  [(ReactionPickerView *)v9 bounds];
  [v4 sizeThatFits_];
  [*(&self->super.super.super.isa + v3) setFrame_];
}

- (void)presentReactionPicker
{
  v4 = self;
  v2 = [(ReactionPickerView *)v4 window];
  if (v2)
  {
    v3 = v2;
    (*((*MEMORY[0x277D85000] & v4->super.super.super.isa) + 0x120))();
  }

  else
  {
    __break(1u);
  }
}

- (_TtC22_GroupActivities_UIKit18ReactionPickerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end