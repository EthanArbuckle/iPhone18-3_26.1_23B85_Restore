@interface SocialProfilesFlowCollectionViewLayout
- (_TtC16MusicApplication38SocialProfilesFlowCollectionViewLayout)init;
- (_TtC16MusicApplication38SocialProfilesFlowCollectionViewLayout)initWithCoder:(id)a3;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
@end

@implementation SocialProfilesFlowCollectionViewLayout

- (_TtC16MusicApplication38SocialProfilesFlowCollectionViewLayout)initWithCoder:(id)a3
{
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
  v8 = sub_4BC530(x, y, width, height);

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
  v17 = sub_4BC6D4(v11, v13);

  (*(v8 + 8))(v10, v7);

  return v17;
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_4BC998(x, y, width, height);

  return v8;
}

- (_TtC16MusicApplication38SocialProfilesFlowCollectionViewLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end