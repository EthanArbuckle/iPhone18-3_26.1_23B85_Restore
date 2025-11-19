@interface CycleTimelineCollectionViewLayoutAttributes
- (BOOL)isEqual:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes)init;
- (id)copyWithZone:(void *)a3;
@end

@implementation CycleTimelineCollectionViewLayoutAttributes

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  sub_29E13A6B4(a3, v7);

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
  v7 = sub_29E0D8ABC(sub_29E13AD40, v9, "MenstrualCyclesAppPlugin/CycleTimelineCollectionViewLayoutAttributes.swift");

  sub_29DEC0CB4(v10);
  return v7 & 1;
}

- (_TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_zoomLevel) = 0;
  v2 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration;
  v3 = *MEMORY[0x29EDC8060];
  *v2 = 0;
  *(v2 + 8) = xmmword_29E2D9680;
  *(v2 + 24) = xmmword_29E2D9690;
  *(v2 + 40) = xmmword_29E2D96A0;
  *(v2 + 56) = xmmword_29E2D96B0;
  *(v2 + 72) = xmmword_29E2D96C0;
  *(v2 + 88) = xmmword_29E2D96D0;
  *(v2 + 104) = xmmword_29E2D96E0;
  *(v2 + 15) = 0x4033000000000000;
  *(v2 + 16) = v3;
  __asm { FMOV            V0.2D, #1.0 }

  *(v2 + 136) = _Q0;
  *(v2 + 19) = 0x3FF0000000000000;
  v11.receiver = self;
  v11.super_class = type metadata accessor for CycleTimelineCollectionViewLayoutAttributes();
  v9 = v3;
  return [(UICollectionViewLayoutAttributes *)&v11 init];
}

@end