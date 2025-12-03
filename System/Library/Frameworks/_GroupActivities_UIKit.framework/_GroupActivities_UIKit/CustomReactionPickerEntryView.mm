@interface CustomReactionPickerEntryView
- (_TtC22_GroupActivities_UIKit29CustomReactionPickerEntryView)init;
- (_TtC22_GroupActivities_UIKit29CustomReactionPickerEntryView)initWithCoder:(id)coder;
- (_TtC22_GroupActivities_UIKit29CustomReactionPickerEntryView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (void)insertText:(id)text;
@end

@implementation CustomReactionPickerEntryView

- (_TtC22_GroupActivities_UIKit29CustomReactionPickerEntryView)init
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit29CustomReactionPickerEntryView_onReaction);
  v4 = type metadata accessor for CustomReactionPickerEntryView();
  *v3 = 0;
  v3[1] = 0;
  v7.receiver = self;
  v7.super_class = v4;
  v5 = [(CustomReactionPickerEntryView *)&v7 initWithFrame:0 textContainer:0.0, 0.0, 0.0, 0.0];
  [(CustomReactionPickerEntryView *)v5 setKeyboardType:124];
  [(CustomReactionPickerEntryView *)v5 setForceDisableDictation:1];

  return v5;
}

- (_TtC22_GroupActivities_UIKit29CustomReactionPickerEntryView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit29CustomReactionPickerEntryView_onReaction);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)insertText:(id)text
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  CustomReactionPickerEntryView.insertText(_:)(v8);
}

- (_TtC22_GroupActivities_UIKit29CustomReactionPickerEntryView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end