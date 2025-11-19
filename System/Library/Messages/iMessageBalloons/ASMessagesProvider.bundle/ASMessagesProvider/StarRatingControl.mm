@interface StarRatingControl
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)accessibilityCustomActions;
- (NSString)accessibilityHint;
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (_TtC18ASMessagesProvider17StarRatingControl)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider17StarRatingControl)initWithFrame:(CGRect)a3;
- (void)accessibilitySetStarRatingFive;
- (void)accessibilitySetStarRatingFour;
- (void)accessibilitySetStarRatingOne;
- (void)accessibilitySetStarRatingThree;
- (void)accessibilitySetStarRatingTwo;
- (void)accessibilitySetStarRatingZero;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)drawRect:(CGRect)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)setAccessibilityCustomActions:(id)a3;
- (void)setIsAccessibilityElement:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation StarRatingControl

- (_TtC18ASMessagesProvider17StarRatingControl)initWithCoder:(id)a3
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = [(StarRatingControl *)v3 traitCollection];
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

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_30DF48(x, y, width, height);
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_30FE68(a3);
}

- (void)cancelTrackingWithEvent:(id)a3
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_touchOutsideMargin);
  v7 = *&self->rating[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_touchOutsideMargin];
  v8 = *&self->lastSentRating[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_touchOutsideMargin];
  v9 = *&self->touchOutsideMargin[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_touchOutsideMargin];
  v10 = self;
  [(StarRatingControl *)v10 bounds];
  v18.origin.x = v11 - v7;
  v18.origin.y = v12 - v6;
  v18.size.width = v7 + v9 + v13;
  v18.size.height = v6 + v8 + v14;
  v17.x = x;
  v17.y = y;
  v15 = CGRectContainsPoint(v18, v17);

  return v15;
}

- (void)setIsAccessibilityElement:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for StarRatingControl();
  [(StarRatingControl *)&v4 setIsAccessibilityElement:v3];
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
    v3 = self;
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
  v2 = self;
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

- (void)setAccessibilityCustomActions:(id)a3
{
  isa = a3;
  if (a3)
  {
    sub_BE70(0, &qword_94F538);
    sub_769460();
    v5 = self;
    isa = sub_769450().super.isa;
  }

  else
  {
    v6 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for StarRatingControl();
  [(StarRatingControl *)&v7 setAccessibilityCustomActions:isa];
}

- (void)accessibilitySetStarRatingZero
{
  v2 = self;
  sub_30F4F4(0);
}

- (void)accessibilitySetStarRatingOne
{
  v2 = self;
  sub_30F4F4(1);
}

- (void)accessibilitySetStarRatingTwo
{
  v2 = self;
  sub_30F4F4(2);
}

- (void)accessibilitySetStarRatingThree
{
  v2 = self;
  sub_30F4F4(3);
}

- (void)accessibilitySetStarRatingFour
{
  v2 = self;
  sub_30F4F4(4);
}

- (void)accessibilitySetStarRatingFive
{
  v2 = self;
  sub_30F4F4(5);
}

- (_TtC18ASMessagesProvider17StarRatingControl)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end