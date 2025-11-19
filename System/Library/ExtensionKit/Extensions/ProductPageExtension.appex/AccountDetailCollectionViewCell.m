@interface AccountDetailCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)didTapWithAccessoryView:(id)a3;
- (void)layoutSubviews;
- (void)preferredContentSizeDidChangeWithView:(id)a3 previousTraitCollection:(id)a4;
- (void)prepareForReuse;
- (void)wasTapped;
@end

@implementation AccountDetailCollectionViewCell

- (void)wasTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_selectionHandler);
  if (v2)
  {
    v3 = self;
    v4 = sub_10001CE50(v2);
    v2(v4);

    sub_1000167E0(v2);
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1003D0F88();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_1003D2348(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)preferredContentSizeDidChangeWithView:(id)a3 previousTraitCollection:(id)a4
{
  v5 = a4;
  v8 = self;
  v6 = [(AccountDetailCollectionViewCell *)v8 traitCollection];
  v7 = sub_10077071C() & 1;

  if (v7 != (sub_10077071C() & 1))
  {
    sub_1003D3078();
  }
}

- (void)didTapWithAccessoryView:(id)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryAction);
  if (v3)
  {
    v8[3] = sub_100016F40(0, &unk_10094BB70);
    v8[0] = a3;
    v6 = a3;
    v7 = self;
    sub_10001CE50(v3);
    v3(v8);
    sub_1000167E0(v3);
    sub_10000CFBC(v8, &unk_1009434C0);
  }
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1003D3D40();
}

@end