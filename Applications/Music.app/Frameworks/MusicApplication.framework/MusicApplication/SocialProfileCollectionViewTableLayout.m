@interface SocialProfileCollectionViewTableLayout
- (_TtC16MusicApplicationP33_D07372EB1E7BFF940D6ACB726B7DD12B38SocialProfileCollectionViewTableLayout)init;
- (_TtC16MusicApplicationP33_D07372EB1E7BFF940D6ACB726B7DD12B38SocialProfileCollectionViewTableLayout)initWithCoder:(id)a3;
- (id)contextualActionForDeletingRowAtIndexPath:(id)a3;
@end

@implementation SocialProfileCollectionViewTableLayout

- (id)contextualActionForDeletingRowAtIndexPath:(id)a3
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v9 = a3;
  v10 = self;
  v11 = sub_1B312C(v8);

  (*(v6 + 8))(v8, v5);

  return v11;
}

- (_TtC16MusicApplicationP33_D07372EB1E7BFF940D6ACB726B7DD12B38SocialProfileCollectionViewTableLayout)init
{
  *&self->delegate[OBJC_IVAR____TtC16MusicApplicationP33_D07372EB1E7BFF940D6ACB726B7DD12B38SocialProfileCollectionViewTableLayout_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for SocialProfileCollectionViewTableLayout();
  return [(SocialProfileCollectionViewTableLayout *)&v4 init];
}

- (_TtC16MusicApplicationP33_D07372EB1E7BFF940D6ACB726B7DD12B38SocialProfileCollectionViewTableLayout)initWithCoder:(id)a3
{
  *&self->delegate[OBJC_IVAR____TtC16MusicApplicationP33_D07372EB1E7BFF940D6ACB726B7DD12B38SocialProfileCollectionViewTableLayout_delegate] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for SocialProfileCollectionViewTableLayout();
  v5 = a3;
  v6 = [(SocialProfileCollectionViewTableLayout *)&v8 initWithCoder:v5];

  return v6;
}

@end