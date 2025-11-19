@interface PlayControlsStackView
- (CGSize)intrinsicContentSize;
- (_TtC23ShelfKitCollectionViews21PlayControlsStackView)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews21PlayControlsStackView)initWithFrame:(CGRect)a3;
- (void)setAccessibilityPlayButtonState:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PlayControlsStackView

- (_TtC23ShelfKitCollectionViews21PlayControlsStackView)initWithFrame:(CGRect)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_playButton) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_accessibilityPlayButtonState) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_objectGraph) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (_TtC23ShelfKitCollectionViews21PlayControlsStackView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_playButton) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_accessibilityPlayButtonState) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_objectGraph) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
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

- (void)setAccessibilityPlayButtonState:(int64_t)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_accessibilityPlayButtonState) = a3;
  v3 = self;
  sub_308868();
  sub_308868();
}

@end