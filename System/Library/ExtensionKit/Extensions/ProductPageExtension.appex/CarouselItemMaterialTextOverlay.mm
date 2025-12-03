@interface CarouselItemMaterialTextOverlay
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)handleSelection:(id)selection;
- (void)layoutSubviews;
@end

@implementation CarouselItemMaterialTextOverlay

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CarouselItemMaterialTextOverlay();
  v2 = v6.receiver;
  [(CarouselItemMaterialTextOverlay *)&v6 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_materialBackground];
  sub_10076422C();
  [v3 setFrame:?];
  sub_1003E172C(0, v5);
  sub_10000CF78(v5, v5[3]);
  sub_10076422C();
  traitCollection = [v2 traitCollection];
  sub_10076E0EC();

  sub_10000CD74(v5);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1003E172C(1, v11);
  v6 = sub_1007255D8(v11, width, height);
  v8 = v7;

  sub_10000CD74(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)handleSelection:(id)selection
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_selectionHandler);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10001CE50(v3);
    v3(v5);

    sub_1000167E0(v3);
  }
}

@end