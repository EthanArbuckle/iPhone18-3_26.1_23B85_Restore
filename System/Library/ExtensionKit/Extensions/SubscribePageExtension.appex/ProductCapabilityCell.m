@interface ProductCapabilityCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ProductCapabilityCell

- (void)layoutSubviews
{
  v2 = self;
  sub_1001BEBE4();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1001BF220();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1001BF30C(a3);
}

@end