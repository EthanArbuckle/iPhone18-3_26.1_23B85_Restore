@interface ProductCapabilityCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ProductCapabilityCell

- (void)layoutSubviews
{
  v2 = self;
  sub_1003E6BF0();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1003E5F0C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1003E7274(a3);
}

@end