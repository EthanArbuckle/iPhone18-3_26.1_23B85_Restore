@interface ProductPageLinkCollectionViewCell
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChange;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ProductPageLinkCollectionViewCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(ProductPageLinkCollectionViewCell *)&v4 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage];
  *&v2[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage] = 0;

  sub_1005B06B4();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1005B0804();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1005B0BF0(change);
}

- (void)preferredContentSizeCategoryDidChange
{
  selfCopy = self;
  sub_1005B0D90();
}

@end