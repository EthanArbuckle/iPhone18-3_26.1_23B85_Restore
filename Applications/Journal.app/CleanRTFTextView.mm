@interface CleanRTFTextView
- (BOOL)_shouldHandleTextFormattingChangeValue:(id)value;
- (_TtC7JournalP33_52B12D7015364A2A97B4965365E27BCB16CleanRTFTextView)initWithCoder:(id)coder;
- (_TtC7JournalP33_52B12D7015364A2A97B4965365E27BCB16CleanRTFTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (id)_configurationForTextFormattingOptions;
@end

@implementation CleanRTFTextView

- (BOOL)_shouldHandleTextFormattingChangeValue:(id)value
{
  v3 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UITextFormattingViewController.ChangeValue._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v4 + 8))(v6, v3);
  return 1;
}

- (id)_configurationForTextFormattingOptions
{
  v2 = sub_1003B5588();

  return v2;
}

- (_TtC7JournalP33_52B12D7015364A2A97B4965365E27BCB16CleanRTFTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CleanRTFTextView();
  return [(CleanRTFTextView *)&v10 initWithFrame:container textContainer:x, y, width, height];
}

- (_TtC7JournalP33_52B12D7015364A2A97B4965365E27BCB16CleanRTFTextView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CleanRTFTextView();
  coderCopy = coder;
  v5 = [(CleanRTFTextView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end