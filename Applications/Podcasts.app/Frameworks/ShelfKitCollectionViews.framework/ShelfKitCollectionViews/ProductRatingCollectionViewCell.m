@interface ProductRatingCollectionViewCell
- (_TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell)initWithCoder:(id)a3;
- (void)clearAllRatings;
- (void)layoutSubviews;
- (void)setRatingWithProportion:(float)a3 at:(int64_t)a4;
@end

@implementation ProductRatingCollectionViewCell

- (_TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_objectGraph) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2B2BD4();
}

- (void)setRatingWithProportion:(float)a3 at:(int64_t)a4
{
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_ratingBreakdownStack);
  v13 = self;
  v7 = [v6 arrangedSubviews];
  sub_124C4(0, &qword_3FBD90);
  v8 = sub_30C368();

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = sub_30D578();
    goto LABEL_5;
  }

  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) <= a4)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = *(v8 + 8 * a4 + 32);
LABEL_5:
  v10 = v9;

  type metadata accessor for RatingRowView();
  v11 = swift_dynamicCastClassUnconditional();
  *&v12 = a3;
  [*(v11 + OBJC_IVAR____TtC23ShelfKitCollectionViews13RatingRowView_barView) setProgress:v12];
}

- (void)clearAllRatings
{
  v2 = self;
  sub_2B34B8();
}

@end