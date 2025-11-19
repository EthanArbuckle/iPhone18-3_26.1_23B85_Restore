@interface LoggingCardCarouselCollectionViewFlowLayout
+ (Class)layoutAttributesClass;
- (_TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout)init;
- (_TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout)initWithCoder:(id)a3;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (void)prepareLayout;
@end

@implementation LoggingCardCarouselCollectionViewFlowLayout

- (_TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_scaleFactor) = 0x3FC3333333333333;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_scaleAlphaFactor) = 0x3FB999999999999ALL;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_xScaleFactor) = 0x3FF0000000000000;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

+ (Class)layoutAttributesClass
{
  type metadata accessor for LoggingCardCarouselLayoutAttributes();

  return swift_getObjCClassFromMetadata();
}

- (void)prepareLayout
{
  v2 = self;
  sub_29E27C898();
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_29E27C9A0(x, y, width, height);
  v9 = v8;

  if (v9)
  {
    sub_29DF76F98();
    v10 = sub_29E2C3604();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v7 = v13.receiver;
  v8 = [(UICollectionViewFlowLayout *)&v13 invalidationContextForBoundsChange:x, y, width, height];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    [v10 setInvalidateFlowLayoutDelegateMetrics_];
    [v10 setInvalidateFlowLayoutAttributes_];
  }

  return v8;
}

- (_TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end