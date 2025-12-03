@interface ProductCapabilityCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ProductCapabilityCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1003E6BF0();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1003E5F0C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1003E7274(change);
}

@end