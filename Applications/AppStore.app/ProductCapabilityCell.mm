@interface ProductCapabilityCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ProductCapabilityCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1004F1944();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1004F0C60();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1004F1FC8(change);
}

@end