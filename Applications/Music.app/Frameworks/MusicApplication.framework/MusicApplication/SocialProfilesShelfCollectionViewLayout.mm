@interface SocialProfilesShelfCollectionViewLayout
- (_TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout)init;
- (_TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout)initWithCoder:(id)coder;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)finalizeCollectionViewUpdates;
- (void)prepareForCollectionViewUpdates:(id)updates;
@end

@implementation SocialProfilesShelfCollectionViewLayout

- (_TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout_updateItems) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
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

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB92A0();
  v13 = v12;
  sub_AB3790();
  kindCopy = kind;
  pathCopy = path;
  selfCopy = self;
  v17 = sub_3DA210(v11, v13);

  (*(v8 + 8))(v10, v7);

  return v17;
}

- (void)prepareForCollectionViewUpdates:(id)updates
{
  ObjectType = swift_getObjectType();
  sub_13C80(0, &qword_E00108);
  v6 = sub_AB9760();
  v8.receiver = self;
  v8.super_class = ObjectType;
  selfCopy = self;
  [(SocialProfilesShelfCollectionViewLayout *)&v8 prepareForCollectionViewUpdates:updates];
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout_updateItems) = v6;
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