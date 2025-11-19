@interface CondensedAdLockupWithIconBackgroundCollectionViewCell
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CondensedAdLockupWithIconBackgroundCollectionViewCell

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(CondensedAdLockupWithIconBackgroundCollectionViewCell *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView];
  [v2 bounds];
  [v3 setFrame:?];
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView];
  [v2 bounds];
  [v4 setFrame:?];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(CondensedAdLockupWithIconBackgroundCollectionViewCell *)&v4 prepareForReuse];
  sub_759190();
  v3 = OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *&v2[v3] = 0;
}

@end