@interface TTRIBoardColumnCollectionView
- (_TtC9Reminders29TTRIBoardColumnCollectionView)initWithCoder:(id)coder;
- (_TtC9Reminders29TTRIBoardColumnCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)safeAreaInsetsDidChange;
@end

@implementation TTRIBoardColumnCollectionView

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  sub_1004DD754();
  sub_1004DD7A0();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  sub_1004DD41C(v6, event);
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

- (_TtC9Reminders29TTRIBoardColumnCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders29TTRIBoardColumnCollectionView____lazy_storage___insetsUpdater) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(TTRIBoardColumnCollectionView *)&v12 initWithFrame:layout collectionViewLayout:x, y, width, height];
}

- (_TtC9Reminders29TTRIBoardColumnCollectionView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders29TTRIBoardColumnCollectionView____lazy_storage___insetsUpdater) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(TTRIBoardColumnCollectionView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end