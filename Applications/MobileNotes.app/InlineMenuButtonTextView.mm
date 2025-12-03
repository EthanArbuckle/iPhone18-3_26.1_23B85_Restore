@interface InlineMenuButtonTextView
- (BOOL)accessibilityActivate;
- (CGPoint)accessibilityActivationPoint;
- (NSArray)accessibilityElements;
- (NSAttributedString)accessibilityAttributedValue;
- (NSAttributedString)attributedText;
- (NSString)accessibilityHint;
- (UIButton)filterButton;
- (_TtC11MobileNotes24InlineMenuButtonTextView)initWithCoder:(id)coder;
- (_TtC11MobileNotes24InlineMenuButtonTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (unint64_t)accessibilityTraits;
- (void)setAccessibilityTraits:(unint64_t)traits;
- (void)setAttributedText:(id)text;
@end

@implementation InlineMenuButtonTextView

- (_TtC11MobileNotes24InlineMenuButtonTextView)initWithCoder:(id)coder
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
  attributedText = [(InlineMenuButtonTextView *)&v4 attributedText];

  return attributedText;
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  selfCopy = self;
  sub_1004B073C(text);
}

- (NSArray)accessibilityElements
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  if (UIAccessibilityIsVoiceOverRunning() || (v10.receiver = selfCopy, v10.super_class = ObjectType, (v5 = [(InlineMenuButtonTextView *)&v10 accessibilityElements]) == 0))
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
  selfCopy = self;
  v3 = sub_1004AF270();

  return v3;
}

- (NSString)accessibilityHint
{
  selfCopy = self;
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
  selfCopy = self;
  if (UIAccessibilityIsVoiceOverRunning() && (v5 = sub_1004AF7D0()) != 0)
  {

    accessibilityTraits = UIAccessibilityTraitButton;
  }

  else
  {
    v8.receiver = selfCopy;
    v8.super_class = ObjectType;
    accessibilityTraits = [(InlineMenuButtonTextView *)&v8 accessibilityTraits];
  }

  return accessibilityTraits;
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(InlineMenuButtonTextView *)&v4 setAccessibilityTraits:traits];
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  v3 = sub_1004AFF70();

  return v3 & 1;
}

- (CGPoint)accessibilityActivationPoint
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
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
    v15.receiver = selfCopy;
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
  selfCopy = self;
  v3 = sub_1004AF7D0();

  return v3;
}

- (_TtC11MobileNotes24InlineMenuButtonTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end