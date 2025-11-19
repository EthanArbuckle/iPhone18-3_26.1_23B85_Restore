@interface AppPromotionMediaContainerView
- (CGRect)frame;
- (_TtC18ASMessagesProvider30AppPromotionMediaContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
- (void)videoTapGestureRecognized;
@end

@implementation AppPromotionMediaContainerView

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(AppPromotionMediaContainerView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = self;
  [(AppPromotionMediaContainerView *)&v11 frame];
  v10.receiver = v9;
  v10.super_class = ObjectType;
  [(AppPromotionMediaContainerView *)&v10 setFrame:x, y, width, height];
  sub_1EC618();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1EC8E8();
}

- (void)videoTapGestureRecognized
{
  v2 = self;
  sub_1ECB90();
}

- (_TtC18ASMessagesProvider30AppPromotionMediaContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end