@interface RiverTodayCardCollectionViewCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)willMoveToWindow:(id)a3;
@end

@implementation RiverTodayCardCollectionViewCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(BaseTodayCardCollectionViewCell *)&v4 layoutSubviews];
  sub_10007B360();
  sub_10007B50C();
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_gradientView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v2 = self;
  sub_10007D5B8();
}

- (void)willMoveToWindow:(id)a3
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  v5 = a3;
  [(RiverTodayCardCollectionViewCell *)&v8 willMoveToWindow:v5];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_10007BC74(Strong);

    swift_unknownObjectWeakAssign();
  }

  else
  {
  }
}

@end