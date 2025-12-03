@interface BaseCollectionViewLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (_TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes)init;
- (id)copyWithZone:(void *)zone;
@end

@implementation BaseCollectionViewLayoutAttributes

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_1003B5C40(zone, v7);

  sub_10000CF78(v7, v7[3]);
  v5 = sub_10077165C();
  sub_10000CD74(v7);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1003B5D94(v8);

  sub_1000258C0(v8);
  return v6;
}

- (_TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_rubberbandingDistance) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for BaseCollectionViewLayoutAttributes();
  return [(BaseCollectionViewLayoutAttributes *)&v3 init];
}

@end