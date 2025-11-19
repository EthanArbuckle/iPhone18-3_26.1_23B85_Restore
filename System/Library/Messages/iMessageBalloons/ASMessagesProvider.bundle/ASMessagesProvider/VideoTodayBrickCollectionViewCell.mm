@interface VideoTodayBrickCollectionViewCell
- (void)layoutSubviews;
@end

@implementation VideoTodayBrickCollectionViewCell

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(BaseTodayBrickCollectionViewCell *)&v5 layoutSubviews];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_mainContentView] bounds];
    [v4 setFrame:?];

    v2 = v4;
  }
}

@end