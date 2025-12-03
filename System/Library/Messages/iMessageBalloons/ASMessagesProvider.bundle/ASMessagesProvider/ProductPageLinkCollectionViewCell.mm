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
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImage];
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImage] = 0;

  sub_5A7B54();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_5A7CA4();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_5A8090(change);
}

- (void)preferredContentSizeCategoryDidChange
{
  selfCopy = self;
  sub_5A8230();
}

@end