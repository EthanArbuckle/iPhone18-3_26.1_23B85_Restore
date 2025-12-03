@interface TTRIRemindersBoardMainCollectionView
- (_TtC9Reminders36TTRIRemindersBoardMainCollectionView)initWithCoder:(id)coder;
- (_TtC9Reminders36TTRIRemindersBoardMainCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
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

- (_TtC9Reminders36TTRIRemindersBoardMainCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainCollectionView____lazy_storage___insetsUpdater) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(TTRIRemindersBoardMainCollectionView *)&v12 initWithFrame:layout collectionViewLayout:x, y, width, height];
}

- (_TtC9Reminders36TTRIRemindersBoardMainCollectionView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainCollectionView____lazy_storage___insetsUpdater) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(TTRIRemindersBoardMainCollectionView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end