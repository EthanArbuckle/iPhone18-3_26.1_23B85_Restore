@interface ProductRatingCollectionViewCell
- (_TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell)initWithCoder:(id)coder;
- (void)clearAllRatings;
- (void)layoutSubviews;
- (void)setRatingWithProportion:(float)proportion at:(int64_t)at;
@end

@implementation ProductRatingCollectionViewCell

- (_TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_objectGraph) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2B2BD4();
}

- (void)setRatingWithProportion:(float)proportion at:(int64_t)at
{
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_ratingBreakdownStack);
  selfCopy = self;
  arrangedSubviews = [v6 arrangedSubviews];
  sub_124C4(0, &qword_3FBD90);
  v8 = sub_30C368();

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = sub_30D578();
    goto LABEL_5;
  }

  if (at < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) <= at)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = *(v8 + 8 * at + 32);
LABEL_5:
  v10 = v9;

  type metadata accessor for RatingRowView();
  v11 = swift_dynamicCastClassUnconditional();
  *&v12 = proportion;
  [*(v11 + OBJC_IVAR____TtC23ShelfKitCollectionViews13RatingRowView_barView) setProgress:v12];
}

- (void)clearAllRatings
{
  selfCopy = self;
  sub_2B34B8();
}

@end