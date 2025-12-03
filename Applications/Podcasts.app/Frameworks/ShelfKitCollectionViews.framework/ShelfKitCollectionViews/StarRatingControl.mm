@interface StarRatingControl
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)accessibilityCustomActions;
- (NSString)accessibilityHint;
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (_TtC23ShelfKitCollectionViews17StarRatingControl)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews17StarRatingControl)initWithFrame:(CGRect)frame;
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
@end

@implementation StarRatingControl

- (_TtC23ShelfKitCollectionViews17StarRatingControl)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_starCount) = (&dword_4 + 1);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_hasRTLTransformSet) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_lastSentRating) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
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

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_2D4540(x, y, width, height);
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  selfCopy = self;
  sub_2D5DB8(touch);
}

- (void)cancelTrackingWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_2D5E5C();
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
  mainBundle = [objc_opt_self() mainBundle];
  v6._countAndFlagsBits = 0xE000000000000000;
  v8._object = 0x8000000000345A00;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v3.super.isa = mainBundle;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_301AB8(v8, v9, v3, v10, v6);

  v4 = sub_30C098();

  return v4;
}

- (NSString)accessibilityHint
{
  mainBundle = [objc_opt_self() mainBundle];
  v6._countAndFlagsBits = 0xE000000000000000;
  v8._object = 0x80000000003459E0;
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v3.super.isa = mainBundle;
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
  selfCopy = self;
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

- (void)setAccessibilityCustomActions:(id)actions
{
  isa = actions;
  if (actions)
  {
    sub_124C4(0, &qword_3FEA78);
    sub_30C368();
    selfCopy = self;
    isa = sub_30C358().super.isa;
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
  sub_2D5484(0);
}

- (void)accessibilitySetStarRatingOne
{
  selfCopy = self;
  sub_2D5484(1);
}

- (void)accessibilitySetStarRatingTwo
{
  selfCopy = self;
  sub_2D5484(2);
}

- (void)accessibilitySetStarRatingThree
{
  selfCopy = self;
  sub_2D5484(3);
}

- (void)accessibilitySetStarRatingFour
{
  selfCopy = self;
  sub_2D5484(4);
}

- (void)accessibilitySetStarRatingFive
{
  selfCopy = self;
  sub_2D5484(5);
}

- (_TtC23ShelfKitCollectionViews17StarRatingControl)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end