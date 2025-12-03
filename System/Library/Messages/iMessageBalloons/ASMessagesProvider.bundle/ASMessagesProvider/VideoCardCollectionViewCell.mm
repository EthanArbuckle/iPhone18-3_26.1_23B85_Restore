@interface VideoCardCollectionViewCell
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation VideoCardCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_4D880();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_4DA48();
}

@end