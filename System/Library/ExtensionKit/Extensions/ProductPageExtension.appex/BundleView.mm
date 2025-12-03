@interface BundleView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BundleView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100540D7C();
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for BundleView();
  changeCopy = change;
  v5 = v9.receiver;
  [(BundleView *)&v9 traitCollectionDidChange:changeCopy];
  v6 = *&v5[OBJC_IVAR____TtC20ProductPageExtension10BundleView_titleLabel];
  traitCollection = [v5 traitCollection];
  v8 = sub_10077071C();

  [v6 setNumberOfLines:(v8 & 1) == 0];
  [v5 setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = sub_10076BF6C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, self + OBJC_IVAR____TtC20ProductPageExtension10BundleView_iconStyle, v5, v7);
  selfCopy = self;
  v11 = sub_100541BC8(v9, _swiftEmptyArrayStorage, selfCopy);

  (*(v6 + 8))(v9, v5);
  v12 = width;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end