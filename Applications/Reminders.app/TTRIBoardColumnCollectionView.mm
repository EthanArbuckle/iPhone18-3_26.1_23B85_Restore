@interface TTRIBoardColumnCollectionView
- (_TtC9Reminders29TTRIBoardColumnCollectionView)initWithCoder:(id)a3;
- (_TtC9Reminders29TTRIBoardColumnCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)safeAreaInsetsDidChange;
@end

@implementation TTRIBoardColumnCollectionView

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  sub_1004DD754();
  sub_1004DD7A0();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  sub_1004DD41C(v6, a4);
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIBoardColumnCollectionView *)&v3 safeAreaInsetsDidChange];
  sub_1004DD370();
  sub_1005F56E4();
}

- (_TtC9Reminders29TTRIBoardColumnCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders29TTRIBoardColumnCollectionView____lazy_storage___insetsUpdater) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(TTRIBoardColumnCollectionView *)&v12 initWithFrame:a4 collectionViewLayout:x, y, width, height];
}

- (_TtC9Reminders29TTRIBoardColumnCollectionView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders29TTRIBoardColumnCollectionView____lazy_storage___insetsUpdater) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(TTRIBoardColumnCollectionView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end