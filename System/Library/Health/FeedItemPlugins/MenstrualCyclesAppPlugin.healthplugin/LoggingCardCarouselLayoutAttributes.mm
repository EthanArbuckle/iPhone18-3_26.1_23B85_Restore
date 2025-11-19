@interface LoggingCardCarouselLayoutAttributes
- (BOOL)isEqual:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes)init;
- (id)copyWithZone:(void *)a3;
@end

@implementation LoggingCardCarouselLayoutAttributes

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  sub_29DEC07D4(a3, v7);

  sub_29DE966D4(v7, v7[3]);
  v5 = sub_29E2C4904();
  sub_29DE93B3C(v7);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_29E2C43D4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v5 = self;
  }

  v6 = sub_29E2C3714();
  MEMORY[0x2A1C7C4A8](v6);
  v9[2] = v10;
  v9[3] = self;
  v7 = sub_29E0D8ABC(sub_29DEC0C98, v9, "MenstrualCyclesAppPlugin/LoggingCardCarouselLayoutAttributes.swift");

  sub_29DEC0CB4(v10);
  return v7 & 1;
}

- (_TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_zoomLevel) = 0x3FF0000000000000;
  *(&self->super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_xTranslationFactor) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_alphaValue) = 0x3FF0000000000000;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(UICollectionViewLayoutAttributes *)&v5 init];
}

@end