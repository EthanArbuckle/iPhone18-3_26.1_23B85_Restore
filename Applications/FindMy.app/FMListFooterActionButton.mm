@interface FMListFooterActionButton
- (BOOL)isHighlighted;
- (NSString)accessibilityLabel;
- (_TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton)initWithFrame:(CGRect)a3;
- (void)addAction:(id)a3 forControlEvents:(unint64_t)a4;
- (void)setAccessibilityLabel:(id)a3;
- (void)setAccessibilityTraits:(unint64_t)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIsAccessibilityElement:(BOOL)a3;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMListFooterActionButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMListFooterActionButton();
  return [(FMListFooterActionButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMListFooterActionButton();
  v4 = v6.receiver;
  [(FMListFooterActionButton *)&v6 setHighlighted:v3];
  v5 = *&v4[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_backgroundView];
  [v5 setHidden:{objc_msgSend(v4, "isHighlighted", v6.receiver, v6.super_class) ^ 1}];
}

- (void)addAction:(id)a3 forControlEvents:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_100416188(v6, a4);
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMListFooterActionButton();
  v4 = a3;
  v5 = v6.receiver;
  [(FMListFooterActionButton *)&v6 traitCollectionDidChange:v4];
  sub_10041632C();
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self;
  [(FMListFooterActionButton *)v11 setHighlighted:0];
  v6 = sub_1000F07E4(v5);

  if (v6)
  {
    [v6 locationInView:v11];
    v8 = v7;
    v10 = v9;

    [(FMListFooterActionButton *)v11 bounds];
    v13.x = v8;
    v13.y = v10;
    if (CGRectContainsPoint(v14, v13))
    {
      [(FMListFooterActionButton *)v11 sendActionsForControlEvents:64];
    }
  }
}

- (_TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setIsAccessibilityElement:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMListFooterActionButton();
  [(FMListFooterActionButton *)&v4 setIsAccessibilityElement:v3];
}

- (NSString)accessibilityLabel
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_textLabel);
  v3 = self;
  v4 = [v2 accessibilityLabel];
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = self;
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for FMListFooterActionButton();
  [(FMListFooterActionButton *)&v7 setAccessibilityLabel:v5];
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMListFooterActionButton();
  [(FMListFooterActionButton *)&v4 setAccessibilityTraits:a3];
}

@end