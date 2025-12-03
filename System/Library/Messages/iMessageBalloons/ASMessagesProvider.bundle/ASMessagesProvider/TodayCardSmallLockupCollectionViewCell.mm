@interface TodayCardSmallLockupCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TodayCardSmallLockupCollectionViewCell

- (_TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView;
  *(&self->super.super.super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_76A840();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView) sizeThatFits:{fits.width, fits.height}];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v2 = v13.receiver;
  [(TodayCardSmallLockupCollectionViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView];
  contentView = [v2 contentView];
  sub_2630C();
  sub_75D650();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(TodayCardSmallLockupCollectionViewCell *)&v5 prepareForReuse];
  v3 = *(*&v2[OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_7591D0(v6, v4);
}

@end