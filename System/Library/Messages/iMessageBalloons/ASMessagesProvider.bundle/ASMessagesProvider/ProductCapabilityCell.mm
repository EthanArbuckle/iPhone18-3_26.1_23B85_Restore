@interface ProductCapabilityCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ProductCapabilityCell

- (void)layoutSubviews
{
  v2 = self;
  sub_35B49C();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_35A7B8();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_35BB20(a3);
}

@end