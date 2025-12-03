@interface BannerCollectionViewCell
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation BannerCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_13B394();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_13BCB8();
}

@end