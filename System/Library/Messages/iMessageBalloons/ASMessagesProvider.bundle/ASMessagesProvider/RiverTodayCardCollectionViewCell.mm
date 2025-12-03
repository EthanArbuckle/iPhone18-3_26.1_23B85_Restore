@interface RiverTodayCardCollectionViewCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)willMoveToWindow:(id)window;
@end

@implementation RiverTodayCardCollectionViewCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(BaseTodayCardCollectionViewCell *)&v4 layoutSubviews];
  sub_58E980();
  sub_58EB2C();
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_590BD8();
}

- (void)willMoveToWindow:(id)window
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  windowCopy = window;
  [(RiverTodayCardCollectionViewCell *)&v8 willMoveToWindow:windowCopy];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_58F294(Strong);

    swift_unknownObjectWeakAssign();
  }

  else
  {
  }
}

@end