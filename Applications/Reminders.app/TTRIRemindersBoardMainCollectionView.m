@interface TTRIRemindersBoardMainCollectionView
- (_TtC9Reminders36TTRIRemindersBoardMainCollectionView)initWithCoder:(id)a3;
- (_TtC9Reminders36TTRIRemindersBoardMainCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)safeAreaInsetsDidChange;
@end

@implementation TTRIRemindersBoardMainCollectionView

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIRemindersBoardMainCollectionView *)&v3 safeAreaInsetsDidChange];
  sub_1005036D0();
  sub_1005F56E4();
}

- (_TtC9Reminders36TTRIRemindersBoardMainCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainCollectionView____lazy_storage___insetsUpdater) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(TTRIRemindersBoardMainCollectionView *)&v12 initWithFrame:a4 collectionViewLayout:x, y, width, height];
}

- (_TtC9Reminders36TTRIRemindersBoardMainCollectionView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainCollectionView____lazy_storage___insetsUpdater) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(TTRIRemindersBoardMainCollectionView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end