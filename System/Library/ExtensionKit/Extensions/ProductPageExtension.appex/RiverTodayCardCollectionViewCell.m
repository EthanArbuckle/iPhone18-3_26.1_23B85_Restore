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
  sub_10069A624();
  sub_10069A7D0();
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v2 = self;
  sub_10069C87C();
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
    sub_10069AF38(Strong);

    swift_unknownObjectWeakAssign();
  }

  else
  {
  }
}

@end