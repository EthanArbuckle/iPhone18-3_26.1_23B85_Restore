@interface StarRatingControl
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)accessibilityCustomActions;
- (NSString)accessibilityHint;
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (_TtC23ShelfKitCollectionViews17StarRatingControl)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews17StarRatingControl)initWithFrame:(CGRect)a3;
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
@end

@implementation StarRatingControl

- (_TtC23ShelfKitCollectionViews17StarRatingControl)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_starCount) = (&dword_4 + 1);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_hasRTLTransformSet) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_lastSentRating) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_2D5CB4();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(StarRatingControl *)self sizeThatFits:0.0, 0.0];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_2D4540(x, y, width, height);
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_2D5DB8(a3);
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2D5E5C();
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
  v2 = [objc_opt_self() mainBundle];
  v6._countAndFlagsBits = 0xE000000000000000;
  v8._object = 0x8000000000345A00;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v3.super.isa = v2;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_301AB8(v8, v9, v3, v10, v6);

  v4 = sub_30C098();

  return v4;
}

- (NSString)accessibilityHint
{
  v2 = [objc_opt_self() mainBundle];
  v6._countAndFlagsBits = 0xE000000000000000;
  v8._object = 0x80000000003459E0;
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v3.super.isa = v2;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_301AB8(v8, v9, v3, v10, v6);

  v4 = sub_30C098();

  return v4;
}

- (NSString)accessibilityValue
{
  sub_2D5F00(*(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating));
  if (v2)
  {
    v3 = sub_30C098();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)accessibilityCustomActions
{
  v2 = self;
  v3 = sub_2D5054();

  if (v3)
  {
    sub_124C4(0, &qword_3FEA78);
    v4.super.isa = sub_30C358().super.isa;
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
    sub_124C4(0, &qword_3FEA78);
    sub_30C368();
    v5 = self;
    isa = sub_30C358().super.isa;
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
  sub_2D5484(0);
}

- (void)accessibilitySetStarRatingOne
{
  v2 = self;
  sub_2D5484(1);
}

- (void)accessibilitySetStarRatingTwo
{
  v2 = self;
  sub_2D5484(2);
}

- (void)accessibilitySetStarRatingThree
{
  v2 = self;
  sub_2D5484(3);
}

- (void)accessibilitySetStarRatingFour
{
  v2 = self;
  sub_2D5484(4);
}

- (void)accessibilitySetStarRatingFive
{
  v2 = self;
  sub_2D5484(5);
}

- (_TtC23ShelfKitCollectionViews17StarRatingControl)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end