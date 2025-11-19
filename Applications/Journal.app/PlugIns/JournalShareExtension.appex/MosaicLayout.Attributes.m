@interface MosaicLayout.Attributes
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (_TtCC21JournalShareExtension12MosaicLayout10Attributes)init;
- (id)copyWithZone:(void *)a3;
@end

@implementation MosaicLayout.Attributes

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  sub_100019A68(a3, v7);

  sub_1000110C0(v7, v7[3]);
  v5 = sub_100101E64();
  sub_10001100C(v7);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_100101B14();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_100019B9C(v8);

  sub_10002329C(v8);
  return v6 & 1;
}

- (NSString)debugDescription
{
  v2 = self;
  sub_100019EC0();

  v3 = sub_100100F94();

  return v3;
}

- (_TtCC21JournalShareExtension12MosaicLayout10Attributes)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType) = 2;
  v2 = (self + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v4.receiver = self;
  v4.super_class = type metadata accessor for MosaicLayout.Attributes();
  return [(MosaicLayout.Attributes *)&v4 init];
}

@end