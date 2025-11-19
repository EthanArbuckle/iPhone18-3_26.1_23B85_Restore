@interface TTRIRemindersListCollectionView
- (CGPoint)contentOffset;
- (_TtC9Reminders31TTRIRemindersListCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)safeAreaInsetsDidChange;
- (void)setContentOffset:(CGPoint)a3;
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

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_10028FC0C(x, y);
}

- (_TtC9Reminders31TTRIRemindersListCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v11 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView_ownerViewControllerFor52010514);
  *v11 = 0;
  v11[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView____lazy_storage___insetsUpdater) = 0;
  v18.receiver = self;
  v18.super_class = ObjectType;
  v12 = a4;
  v13 = [(TTRIRemindersListCollectionView *)&v18 initWithFrame:v12 collectionViewLayout:x, y, width, height];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 systemBackgroundColor];
  [(TTRIRemindersListCollectionView *)v15 setBackgroundColor:v16];

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