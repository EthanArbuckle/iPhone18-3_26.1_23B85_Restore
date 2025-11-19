@interface CNAvatarPosterPairCollectionViewCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation CNAvatarPosterPairCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_199AF0834();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_199AF098C();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_199AF139C(v4);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  v8 = a3;
  v10 = self;
  sub_199AF17C8(v8, a5, v9, y);
}

@end