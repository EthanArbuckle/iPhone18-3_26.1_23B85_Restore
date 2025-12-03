@interface ProductCapabilityCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ProductCapabilityCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001BEBE4();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1001BF220();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1001BF30C(change);
}

@end