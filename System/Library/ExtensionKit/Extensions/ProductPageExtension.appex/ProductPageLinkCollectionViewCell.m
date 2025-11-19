@interface ProductPageLinkCollectionViewCell
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChange;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ProductPageLinkCollectionViewCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(ProductPageLinkCollectionViewCell *)&v4 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage] = 0;

  sub_10032280C();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10032295C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100323054(a3);
}

- (void)preferredContentSizeCategoryDidChange
{
  v2 = self;
  sub_1003231F4();
}

@end