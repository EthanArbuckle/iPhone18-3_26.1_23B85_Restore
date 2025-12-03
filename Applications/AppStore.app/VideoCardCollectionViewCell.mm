@interface VideoCardCollectionViewCell
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation VideoCardCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100169C08();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_100168FD8();
}

@end