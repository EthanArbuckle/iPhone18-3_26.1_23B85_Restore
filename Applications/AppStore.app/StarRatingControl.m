@interface StarRatingControl
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)accessibilityCustomActions;
- (NSString)accessibilityHint;
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (_TtC8AppStore17StarRatingControl)initWithCoder:(id)a3;
- (_TtC8AppStore17StarRatingControl)initWithFrame:(CGRect)a3;
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

- (_TtC8AppStore17StarRatingControl)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore17StarRatingControl_rating) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore17StarRatingControl_lastSentRating) = 0;
  v3 = (self + OBJC_IVAR____TtC8AppStore17StarRatingControl_touchOutsideMargin);
  *v3 = xmmword_1007D6F40;
  v3[1] = xmmword_1007D6F40;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = [(StarRatingControl *)v3 traitCollection];
  v5 = sub_1005B5F7C(1);
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
  sub_1005B42AC(x, y, width, height);
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1005B616C(a3);
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore17StarRatingControl_lastSentRating);
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore17StarRatingControl_rating);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore17StarRatingControl_rating) = v3;
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
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore17StarRatingControl_touchOutsideMargin);
  v7 = *&self->rating[OBJC_IVAR____TtC8AppStore17StarRatingControl_touchOutsideMargin];
  v8 = *&self->lastSentRating[OBJC_IVAR____TtC8AppStore17StarRatingControl_touchOutsideMargin];
  v9 = *&self->touchOutsideMargin[OBJC_IVAR____TtC8AppStore17StarRatingControl_touchOutsideMargin];
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
  v2._object = 0x800000010081BAD0;
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  localizedString(_:comment:)(v2, v3);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (NSString)accessibilityHint
{
  v2._object = 0x800000010081BAB0;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  localizedString(_:comment:)(v2, v3);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (NSString)accessibilityValue
{
  v2 = *(self + OBJC_IVAR____TtC8AppStore17StarRatingControl_rating);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = self;
    v4._object = 0x800000010081BA90;
    v4._countAndFlagsBits = 0xD00000000000001ALL;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    localizedStringWithCount(_:count:comment:)(v4, v2, v5);

    v6 = String._bridgeToObjectiveC()();

    return v6;
  }

  return self;
}

- (NSArray)accessibilityCustomActions
{
  v2 = self;
  v3 = sub_1005B5514();

  if (v3)
  {
    sub_100005744(0, &qword_10098D770);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
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
    sub_100005744(0, &qword_10098D770);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = self;
    isa = Array._bridgeToObjectiveC()().super.isa;
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
  sub_1005B5848(0);
}

- (void)accessibilitySetStarRatingOne
{
  v2 = self;
  sub_1005B5848(1);
}

- (void)accessibilitySetStarRatingTwo
{
  v2 = self;
  sub_1005B5848(2);
}

- (void)accessibilitySetStarRatingThree
{
  v2 = self;
  sub_1005B5848(3);
}

- (void)accessibilitySetStarRatingFour
{
  v2 = self;
  sub_1005B5848(4);
}

- (void)accessibilitySetStarRatingFive
{
  v2 = self;
  sub_1005B5848(5);
}

- (_TtC8AppStore17StarRatingControl)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end