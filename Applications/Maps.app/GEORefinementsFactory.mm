@interface GEORefinementsFactory
+ (id)allRefinementsSectionsWith:(id)with;
+ (id)barMultiSelectResultRefinementsWith:(id)with;
+ (id)barResultRefinementsWith:(id)with;
+ (id)updatedOpenOptionResultRefinementWith:(id)with;
- (_TtC4Maps21GEORefinementsFactory)init;
@end

@implementation GEORefinementsFactory

+ (id)barResultRefinementsWith:(id)with
{
  withCopy = with;
  v4 = sub_10048148C();

  if (v4)
  {
    sub_100014C84(0, &qword_10190A8D8);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

+ (id)allRefinementsSectionsWith:(id)with
{
  swift_getObjCClassMetadata();
  withCopy = with;
  v5 = sub_1004803C0(withCopy);

  if (v5)
  {
    sub_100014C84(0, &qword_10190A8E0);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

+ (id)barMultiSelectResultRefinementsWith:(id)with
{
  withCopy = with;
  v4 = sub_100481BEC(withCopy);

  return v4;
}

+ (id)updatedOpenOptionResultRefinementWith:(id)with
{
  withCopy = with;
  v4 = sub_1004816D0(withCopy);

  return v4;
}

- (_TtC4Maps21GEORefinementsFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GEORefinementsFactory();
  return [(GEORefinementsFactory *)&v3 init];
}

@end