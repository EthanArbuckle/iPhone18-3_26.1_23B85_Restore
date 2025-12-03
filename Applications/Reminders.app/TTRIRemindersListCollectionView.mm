@interface TTRIRemindersListCollectionView
- (CGPoint)contentOffset;
- (_TtC9Reminders31TTRIRemindersListCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)safeAreaInsetsDidChange;
- (void)setContentOffset:(CGPoint)offset;
@end

@implementation TTRIRemindersListCollectionView

- (CGPoint)contentOffset
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(TTRIRemindersListCollectionView *)&v4 contentOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  selfCopy = self;
  sub_10028FC0C(x, y);
}

- (_TtC9Reminders31TTRIRemindersListCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v11 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView_ownerViewControllerFor52010514);
  *v11 = 0;
  v11[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView____lazy_storage___insetsUpdater) = 0;
  v18.receiver = self;
  v18.super_class = ObjectType;
  layoutCopy = layout;
  height = [(TTRIRemindersListCollectionView *)&v18 initWithFrame:layoutCopy collectionViewLayout:x, y, width, height];
  v14 = objc_opt_self();
  v15 = height;
  systemBackgroundColor = [v14 systemBackgroundColor];
  [(TTRIRemindersListCollectionView *)v15 setBackgroundColor:systemBackgroundColor];

  return v15;
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIRemindersListCollectionView *)&v3 safeAreaInsetsDidChange];
  sub_10028FAC0();
  sub_1005F56E4();
}

@end