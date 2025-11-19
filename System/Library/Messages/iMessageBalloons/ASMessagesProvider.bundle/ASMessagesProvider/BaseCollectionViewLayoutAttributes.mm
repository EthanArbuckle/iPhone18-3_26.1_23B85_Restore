@interface BaseCollectionViewLayoutAttributes
- (BOOL)isEqual:(id)a3;
- (_TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes)init;
- (id)copyWithZone:(void *)a3;
@end

@implementation BaseCollectionViewLayoutAttributes

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  sub_3AE42C(a3, v7);

  sub_B170(v7, v7[3]);
  v5 = sub_76A930();
  sub_BEB8(v7);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_3AE580(v8);

  sub_BDD0(v8);
  return v6;
}

- (_TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_rubberbandingDistance) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_isRubberbanding) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for BaseCollectionViewLayoutAttributes();
  return [(BaseCollectionViewLayoutAttributes *)&v3 init];
}

@end