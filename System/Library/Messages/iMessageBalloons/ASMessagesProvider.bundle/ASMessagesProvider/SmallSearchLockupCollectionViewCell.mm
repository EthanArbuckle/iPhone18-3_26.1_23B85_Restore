@interface SmallSearchLockupCollectionViewCell
- (_TtC18ASMessagesProvider35SmallSearchLockupCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation SmallSearchLockupCollectionViewCell

- (_TtC18ASMessagesProvider35SmallSearchLockupCollectionViewCell)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider35SmallSearchLockupCollectionViewCell_lockupView;
  *(&self->super.super.super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for SmallSearchLockupCollectionViewCell();
  v2 = v13.receiver;
  [(SmallSearchLockupCollectionViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35SmallSearchLockupCollectionViewCell_lockupView];
  v4 = [v2 contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
}

@end