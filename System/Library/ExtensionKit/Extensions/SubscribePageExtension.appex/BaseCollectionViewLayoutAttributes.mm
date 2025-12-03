@interface BaseCollectionViewLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (_TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes)init;
- (id)copyWithZone:(void *)zone;
@end

@implementation BaseCollectionViewLayoutAttributes

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_100725710(zone, v7);

  sub_10000C888(v7, v7[3]);
  v5 = sub_100754734();
  sub_10000C620(v7);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_100725864(v8);

  sub_1000277BC(v8);
  return v6;
}

- (_TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_rubberbandingDistance) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_parallaxY) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for BaseCollectionViewLayoutAttributes();
  return [(BaseCollectionViewLayoutAttributes *)&v3 init];
}

@end