@interface CNAvatarPosterPairCollectionViewCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation CNAvatarPosterPairCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_199AF0834();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_199AF098C();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_199AF139C(scrollCopy);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  draggingCopy = dragging;
  selfCopy = self;
  sub_199AF17C8(draggingCopy, offset, v9, y);
}

@end