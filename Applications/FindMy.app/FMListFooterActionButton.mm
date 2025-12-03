@interface FMListFooterActionButton
- (BOOL)isHighlighted;
- (NSString)accessibilityLabel;
- (_TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton)initWithFrame:(CGRect)frame;
- (void)addAction:(id)action forControlEvents:(unint64_t)events;
- (void)setAccessibilityLabel:(id)label;
- (void)setAccessibilityTraits:(unint64_t)traits;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIsAccessibilityElement:(BOOL)element;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMListFooterActionButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMListFooterActionButton();
  return [(FMListFooterActionButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMListFooterActionButton();
  v4 = v6.receiver;
  [(FMListFooterActionButton *)&v6 setHighlighted:highlightedCopy];
  v5 = *&v4[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_backgroundView];
  [v5 setHidden:{objc_msgSend(v4, "isHighlighted", v6.receiver, v6.super_class) ^ 1}];
}

- (void)addAction:(id)action forControlEvents:(unint64_t)events
{
  actionCopy = action;
  selfCopy = self;
  sub_100416188(actionCopy, events);
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMListFooterActionButton();
  changeCopy = change;
  v5 = v6.receiver;
  [(FMListFooterActionButton *)&v6 traitCollectionDidChange:changeCopy];
  sub_10041632C();
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  [(FMListFooterActionButton *)selfCopy setHighlighted:0];
  v6 = sub_1000F07E4(v5);

  if (v6)
  {
    [v6 locationInView:selfCopy];
    v8 = v7;
    v10 = v9;

    [(FMListFooterActionButton *)selfCopy bounds];
    v13.x = v8;
    v13.y = v10;
    if (CGRectContainsPoint(v14, v13))
    {
      [(FMListFooterActionButton *)selfCopy sendActionsForControlEvents:64];
    }
  }
}

- (_TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setIsAccessibilityElement:(BOOL)element
{
  elementCopy = element;
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMListFooterActionButton();
  [(FMListFooterActionButton *)&v4 setIsAccessibilityElement:elementCopy];
}

- (NSString)accessibilityLabel
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_textLabel);
  selfCopy = self;
  accessibilityLabel = [v2 accessibilityLabel];
  if (accessibilityLabel)
  {
    v5 = accessibilityLabel;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for FMListFooterActionButton();
  [(FMListFooterActionButton *)&v7 setAccessibilityLabel:v5];
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMListFooterActionButton();
  [(FMListFooterActionButton *)&v4 setAccessibilityTraits:traits];
}

@end