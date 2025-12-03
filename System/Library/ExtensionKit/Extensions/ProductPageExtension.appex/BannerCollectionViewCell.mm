@interface BannerCollectionViewCell
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation BannerCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10011C664();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10011CF88();
}

@end