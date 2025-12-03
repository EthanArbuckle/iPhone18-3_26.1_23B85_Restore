@interface CarouselItemTextOverlay
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)handleSelection:(id)selection;
- (void)layoutSubviews;
@end

@implementation CarouselItemTextOverlay

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CarouselItemTextOverlay();
  v2 = v5.receiver;
  [(CarouselItemTextOverlay *)&v5 layoutSubviews];
  sub_100112988(v4);
  sub_10000CF78(v4, v4[3]);
  sub_10076422C();
  traitCollection = [v2 traitCollection];
  sub_10076E0EC();

  sub_10000CD74(v4);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_100112988(v11);
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
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_selectionHandler);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10001CE50(v3);
    v3(v5);

    sub_1000167E0(v3);
  }
}

@end