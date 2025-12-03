@interface BaseCollectionViewLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (_TtC8AppStore34BaseCollectionViewLayoutAttributes)init;
- (id)copyWithZone:(void *)zone;
@end

@implementation BaseCollectionViewLayoutAttributes

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_10039D824(zone, v7);

  sub_10002A400(v7, v7[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100007000(v7);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_10039D978(v8);

  sub_10003D444(v8);
  return v6;
}

- (_TtC8AppStore34BaseCollectionViewLayoutAttributes)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_rubberbandingDistance) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_parallaxY) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_isRubberbanding) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for BaseCollectionViewLayoutAttributes();
  return [(BaseCollectionViewLayoutAttributes *)&v3 init];
}

@end