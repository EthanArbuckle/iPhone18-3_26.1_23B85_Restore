@interface BundleView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BundleView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_315638();
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for BundleView();
  changeCopy = change;
  v5 = v9.receiver;
  [(BundleView *)&v9 traitCollectionDidChange:changeCopy];
  v6 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_titleLabel];
  traitCollection = [v5 traitCollection];
  v8 = sub_769A00();

  [v6 setNumberOfLines:(v8 & 1) == 0];
  [v5 setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = sub_7652D0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, self + OBJC_IVAR____TtC18ASMessagesProvider10BundleView_iconStyle, v5, v7);
  selfCopy = self;
  v11 = sub_316484(v9, _swiftEmptyArrayStorage, selfCopy);

  (*(v6 + 8))(v9, v5);
  v12 = width;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end