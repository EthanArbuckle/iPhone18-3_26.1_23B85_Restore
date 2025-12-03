@interface SocialProfilesFlowCollectionViewLayout
- (_TtC16MusicApplication38SocialProfilesFlowCollectionViewLayout)init;
- (_TtC16MusicApplication38SocialProfilesFlowCollectionViewLayout)initWithCoder:(id)coder;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
@end

@implementation SocialProfilesFlowCollectionViewLayout

- (_TtC16MusicApplication38SocialProfilesFlowCollectionViewLayout)initWithCoder:(id)coder
{
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
  v17 = sub_4BC6D4(v11, v13);

  (*(v8 + 8))(v10, v7);

  return v17;
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  selfCopy = self;
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