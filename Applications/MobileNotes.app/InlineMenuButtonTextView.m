@interface InlineMenuButtonTextView
- (BOOL)accessibilityActivate;
- (CGPoint)accessibilityActivationPoint;
- (NSArray)accessibilityElements;
- (NSAttributedString)accessibilityAttributedValue;
- (NSAttributedString)attributedText;
- (NSString)accessibilityHint;
- (UIButton)filterButton;
- (_TtC11MobileNotes24InlineMenuButtonTextView)initWithCoder:(id)a3;
- (_TtC11MobileNotes24InlineMenuButtonTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (unint64_t)accessibilityTraits;
- (void)setAccessibilityTraits:(unint64_t)a3;
- (void)setAttributedText:(id)a3;
@end

@implementation InlineMenuButtonTextView

- (_TtC11MobileNotes24InlineMenuButtonTextView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_menu) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_preservesMenuLineHeight) = 0;
  v3 = self + OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_fontSymbolicTraits;
  *v3 = 0;
  v3[4] = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView____lazy_storage___menuAttachment) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSAttributedString)attributedText
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = [(InlineMenuButtonTextView *)&v4 attributedText];

  return v2;
}

- (void)setAttributedText:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1004B073C(a3);
}

- (NSArray)accessibilityElements
{
  ObjectType = swift_getObjectType();
  v4 = self;
  if (UIAccessibilityIsVoiceOverRunning() || (v10.receiver = v4, v10.super_class = ObjectType, (v5 = [(InlineMenuButtonTextView *)&v10 accessibilityElements]) == 0))
  {

    v8 = 0;
  }

  else
  {
    v6 = v5;
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  return v8;
}

- (NSAttributedString)accessibilityAttributedValue
{
  v2 = self;
  v3 = sub_1004AF270();

  return v3;
}

- (NSString)accessibilityHint
{
  v2 = self;
  sub_1004AFB14();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  ObjectType = swift_getObjectType();
  v4 = self;
  if (UIAccessibilityIsVoiceOverRunning() && (v5 = sub_1004AF7D0()) != 0)
  {

    v6 = UIAccessibilityTraitButton;
  }

  else
  {
    v8.receiver = v4;
    v8.super_class = ObjectType;
    v6 = [(InlineMenuButtonTextView *)&v8 accessibilityTraits];
  }

  return v6;
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(InlineMenuButtonTextView *)&v4 setAccessibilityTraits:a3];
}

- (BOOL)accessibilityActivate
{
  v2 = self;
  v3 = sub_1004AFF70();

  return v3 & 1;
}

- (CGPoint)accessibilityActivationPoint
{
  ObjectType = swift_getObjectType();
  v4 = self;
  v5 = sub_1004AF7D0();
  if (v5)
  {
    v6 = v5;
    [v5 accessibilityActivationPoint];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v15.receiver = v4;
    v15.super_class = ObjectType;
    [(InlineMenuButtonTextView *)&v15 accessibilityActivationPoint];
    v8 = v11;
    v10 = v12;
  }

  v13 = v8;
  v14 = v10;
  result.y = v14;
  result.x = v13;
  return result;
}

- (UIButton)filterButton
{
  v2 = self;
  v3 = sub_1004AF7D0();

  return v3;
}

- (_TtC11MobileNotes24InlineMenuButtonTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end