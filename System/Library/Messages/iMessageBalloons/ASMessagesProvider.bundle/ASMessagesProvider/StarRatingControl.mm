@interface StarRatingControl
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)accessibilityCustomActions;
- (NSString)accessibilityHint;
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (_TtC18ASMessagesProvider17StarRatingControl)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider17StarRatingControl)initWithFrame:(CGRect)frame;
- (void)accessibilitySetStarRatingFive;
- (void)accessibilitySetStarRatingFour;
- (void)accessibilitySetStarRatingOne;
- (void)accessibilitySetStarRatingThree;
- (void)accessibilitySetStarRatingTwo;
- (void)accessibilitySetStarRatingZero;
- (void)cancelTrackingWithEvent:(id)event;
- (void)drawRect:(CGRect)rect;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)setAccessibilityCustomActions:(id)actions;
- (void)setIsAccessibilityElement:(BOOL)element;
- (void)tintColorDidChange;
@end

@implementation StarRatingControl

- (_TtC18ASMessagesProvider17StarRatingControl)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_rating) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_lastSentRating) = 0;
  v3 = (self + OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_touchOutsideMargin);
  *v3 = xmmword_77ED30;
  v3[1] = xmmword_77ED30;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  traitCollection = [(StarRatingControl *)selfCopy traitCollection];
  v5 = sub_30FC78(1);
  [v5 size];
  v7 = v6;
  v9 = v8;

  v10 = (v7 + 12.0) * 5.0 + -12.0;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_30DF48(x, y, width, height);
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  selfCopy = self;
  sub_30FE68(touch);
}

- (void)cancelTrackingWithEvent:(id)event
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_lastSentRating);
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_rating);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_rating) = v3;
  if (v4 != v3)
  {
    [(StarRatingControl *)self setNeedsDisplay];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StarRatingControl();
  v2 = v3.receiver;
  [(StarRatingControl *)&v3 tintColorDidChange];
  [v2 setNeedsDisplay];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_touchOutsideMargin);
  v7 = *&self->rating[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_touchOutsideMargin];
  v8 = *&self->lastSentRating[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_touchOutsideMargin];
  v9 = *&self->touchOutsideMargin[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_touchOutsideMargin];
  selfCopy = self;
  [(StarRatingControl *)selfCopy bounds];
  v18.origin.x = v11 - v7;
  v18.origin.y = v12 - v6;
  v18.size.width = v7 + v9 + v13;
  v18.size.height = v6 + v8 + v14;
  v17.x = x;
  v17.y = y;
  v15 = CGRectContainsPoint(v18, v17);

  return v15;
}

- (void)setIsAccessibilityElement:(BOOL)element
{
  elementCopy = element;
  v4.receiver = self;
  v4.super_class = type metadata accessor for StarRatingControl();
  [(StarRatingControl *)&v4 setIsAccessibilityElement:elementCopy];
}

- (NSString)accessibilityLabel
{
  v5._object = 0x80000000007DAD00;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_75B750(v5, v6);
  v2 = sub_769210();

  return v2;
}

- (NSString)accessibilityHint
{
  v5._object = 0x80000000007DACE0;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_75B750(v5, v6);
  v2 = sub_769210();

  return v2;
}

- (NSString)accessibilityValue
{
  v2 = *(self + OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_rating);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    selfCopy = self;
    v6._object = 0x80000000007DACC0;
    v6._countAndFlagsBits = 0xD00000000000001ALL;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    sub_761130(v6, v2, v7);

    v4 = sub_769210();

    return v4;
  }

  return self;
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
  v3 = sub_30F1C0();

  if (v3)
  {
    sub_BE70(0, &qword_94F538);
    v4.super.isa = sub_769450().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setAccessibilityCustomActions:(id)actions
{
  isa = actions;
  if (actions)
  {
    sub_BE70(0, &qword_94F538);
    sub_769460();
    selfCopy = self;
    isa = sub_769450().super.isa;
  }

  else
  {
    selfCopy2 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for StarRatingControl();
  [(StarRatingControl *)&v7 setAccessibilityCustomActions:isa];
}

- (void)accessibilitySetStarRatingZero
{
  selfCopy = self;
  sub_30F4F4(0);
}

- (void)accessibilitySetStarRatingOne
{
  selfCopy = self;
  sub_30F4F4(1);
}

- (void)accessibilitySetStarRatingTwo
{
  selfCopy = self;
  sub_30F4F4(2);
}

- (void)accessibilitySetStarRatingThree
{
  selfCopy = self;
  sub_30F4F4(3);
}

- (void)accessibilitySetStarRatingFour
{
  selfCopy = self;
  sub_30F4F4(4);
}

- (void)accessibilitySetStarRatingFive
{
  selfCopy = self;
  sub_30F4F4(5);
}

- (_TtC18ASMessagesProvider17StarRatingControl)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end