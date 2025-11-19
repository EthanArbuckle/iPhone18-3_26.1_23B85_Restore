@interface CanvasStackView
- (BOOL)accessibilityElementsHidden;
- (BOOL)isAccessibilityElement;
- (_TtC7Journal15CanvasStackView)initWithCoder:(id)a3;
@end

@implementation CanvasStackView

- (_TtC7Journal15CanvasStackView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal15CanvasStackView_reflectionPromptView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal15CanvasStackView_journalEntry) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal15CanvasStackView_isEditing) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal15CanvasStackView_mindfulMinutesCanvasTipView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal15CanvasStackView_mindfulMinuteCanvasTipTask) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)isAccessibilityElement
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CanvasStackView();
  v2 = v7.receiver;
  if ([(CanvasStackView *)&v7 isAccessibilityElement])
  {
    v3 = [v2 arrangedSubviews];
    sub_10021DE14();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v5 != 0;
  }

  else
  {

    return 0;
  }
}

- (BOOL)accessibilityElementsHidden
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CanvasStackView();
  v2 = v7.receiver;
  if ([(CanvasStackView *)&v7 accessibilityElementsHidden])
  {

    return 1;
  }

  else
  {
    v4 = [v2 arrangedSubviews];
    sub_10021DE14();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v6 == 0;
  }
}

@end