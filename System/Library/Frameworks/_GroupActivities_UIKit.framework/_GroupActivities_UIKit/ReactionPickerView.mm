@interface ReactionPickerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22_GroupActivities_UIKit18ReactionPickerView)init;
- (_TtC22_GroupActivities_UIKit18ReactionPickerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)presentReactionPicker;
- (void)willMoveToWindow:(id)window;
@end

@implementation ReactionPickerView

- (_TtC22_GroupActivities_UIKit18ReactionPickerView)init
{
  ObjectType = swift_getObjectType();
  v3 = (*(ObjectType + 264))(&outlined read-only object #0 of ReactionPickerView.init());
  swift_deallocPartialClassInstance();
  return v3;
}

- (void)willMoveToWindow:(id)window
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ReactionPickerView();
  [(ReactionPickerView *)&v4 willMoveToWindow:window];
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionPickerView_emojiButton) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
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
  selfCopy = self;
  [(ReactionPickerView *)selfCopy bounds];
  [v4 sizeThatFits_];
  [*(&self->super.super.super.isa + v3) setFrame_];
}

- (void)presentReactionPicker
{
  selfCopy = self;
  window = [(ReactionPickerView *)selfCopy window];
  if (window)
  {
    v3 = window;
    (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.isa) + 0x120))();
  }

  else
  {
    __break(1u);
  }
}

- (_TtC22_GroupActivities_UIKit18ReactionPickerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end