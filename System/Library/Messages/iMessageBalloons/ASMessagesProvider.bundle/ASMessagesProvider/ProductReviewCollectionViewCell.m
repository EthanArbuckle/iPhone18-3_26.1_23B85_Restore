@interface ProductReviewCollectionViewCell
- (_TtC18ASMessagesProvider31ProductReviewCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ProductReviewCollectionViewCell

- (_TtC18ASMessagesProvider31ProductReviewCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider31ProductReviewCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider31ProductReviewCollectionViewCell_reviewsView;
  type metadata accessor for ProductReviewView();
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_308AF0();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_308BD4();
}

@end