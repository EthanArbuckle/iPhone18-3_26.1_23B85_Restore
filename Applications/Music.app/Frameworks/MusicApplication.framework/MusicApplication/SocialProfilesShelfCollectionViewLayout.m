@interface SocialProfilesShelfCollectionViewLayout
- (_TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout)init;
- (_TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout)initWithCoder:(id)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)finalizeCollectionViewUpdates;
- (void)prepareForCollectionViewUpdates:(id)a3;
@end

@implementation SocialProfilesShelfCollectionViewLayout

- (_TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout_updateItems) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_3DA068(x, y, width, height);

  if (v8)
  {
    sub_13C80(0, &qword_E04510);
    v9.super.isa = sub_AB9740().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB92A0();
  v13 = v12;
  sub_AB3790();
  v14 = a3;
  v15 = a4;
  v16 = self;
  v17 = sub_3DA210(v11, v13);

  (*(v8 + 8))(v10, v7);

  return v17;
}

- (void)prepareForCollectionViewUpdates:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_13C80(0, &qword_E00108);
  v6 = sub_AB9760();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v7 = self;
  [(SocialProfilesShelfCollectionViewLayout *)&v8 prepareForCollectionViewUpdates:a3];
  *(&v7->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout_updateItems) = v6;
}

- (void)finalizeCollectionViewUpdates
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(SocialProfilesShelfCollectionViewLayout *)&v3 finalizeCollectionViewUpdates];
  *&v2[OBJC_IVAR____TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout_updateItems] = 0;
}

- (_TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end