@interface PlayControlsStackView
- (CGSize)intrinsicContentSize;
- (_TtC23ShelfKitCollectionViews21PlayControlsStackView)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews21PlayControlsStackView)initWithFrame:(CGRect)frame;
- (void)setAccessibilityPlayButtonState:(int64_t)state;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PlayControlsStackView

- (_TtC23ShelfKitCollectionViews21PlayControlsStackView)initWithFrame:(CGRect)frame
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_playButton) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_accessibilityPlayButtonState) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_objectGraph) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (_TtC23ShelfKitCollectionViews21PlayControlsStackView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_playButton) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_accessibilityPlayButtonState) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_objectGraph) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  PlayControlsStackView.traitCollectionDidChange(_:)(v9);
}

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  if (qword_3FAA28 != -1)
  {
    swift_once();
    v2 = UIViewNoIntrinsicMetric;
  }

  v3 = *&qword_4023A0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setAccessibilityPlayButtonState:(int64_t)state
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_accessibilityPlayButtonState) = state;
  selfCopy = self;
  sub_308868();
  sub_308868();
}

@end