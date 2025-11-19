@interface PrivacyFooterCollectionViewCell
- (_TtC8AppStore31PrivacyFooterCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation PrivacyFooterCollectionViewCell

- (_TtC8AppStore31PrivacyFooterCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_bodyText;
  v7 = sub_10002849C(&unk_100993030);
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100287EA4();
}

@end