@interface TTRIStackedAvatarsView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC9Reminders22TTRIStackedAvatarsView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation TTRIStackedAvatarsView

- (_TtC9Reminders22TTRIStackedAvatarsView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_contacts) = _swiftEmptyArrayStorage;
  v9 = self + OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize;
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarsNeedUpdate) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarViewControllers) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarBorderViews) = _swiftEmptyArrayStorage;
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRIStackedAvatarsView *)&v12 initWithFrame:x, y, width, height];
  sub_10002A9FC();

  return v10;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_1005A6CF8();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIStackedAvatarsView *)&v3 layoutSubviews];
  if (v2[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarsNeedUpdate] == 1)
  {
    v2[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarsNeedUpdate] = 0;
    sub_1005A5A4C();
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_1005A6CF8();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end