@interface PrivacyFooterCollectionViewCell
- (_TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation PrivacyFooterCollectionViewCell

- (_TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_bodyText;
  v7 = sub_BD88(&unk_944E80);
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_5B1048();
}

@end