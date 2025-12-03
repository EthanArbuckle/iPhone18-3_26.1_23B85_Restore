@interface ProductCapabilityCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ProductCapabilityCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_35B49C();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_35A7B8();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_35BB20(change);
}

@end