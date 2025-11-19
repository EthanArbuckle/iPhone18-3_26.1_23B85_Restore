@interface ShelfCollectionViewLayout.LayoutAttributes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
@end

@implementation ShelfCollectionViewLayout.LayoutAttributes

- (int64_t)hash
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ShelfCollectionViewLayout.LayoutAttributes();
  v2 = v7.receiver;
  v3 = [(ShelfCollectionViewLayout.LayoutAttributes *)&v7 hash];
  v4 = v2[OBJC_IVAR____TtCC16MusicApplication25ShelfCollectionViewLayout16LayoutAttributes_rowPosition];
  sub_ABB5C0();
  sub_ABB5D0(v4);
  v5 = sub_ABB610();

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_3254F0(v8);

  sub_12E1C(v8, &unk_DE8E40);
  return v6;
}

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  sub_325788(a3, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_ABB3A0();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

@end