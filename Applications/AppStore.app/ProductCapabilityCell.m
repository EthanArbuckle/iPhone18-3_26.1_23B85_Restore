@interface ProductCapabilityCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ProductCapabilityCell

- (void)layoutSubviews
{
  v2 = self;
  sub_1004F1944();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1004F0C60();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1004F1FC8(a3);
}

@end