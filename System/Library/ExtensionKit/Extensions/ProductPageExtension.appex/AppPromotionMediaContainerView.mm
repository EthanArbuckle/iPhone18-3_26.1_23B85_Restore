@interface AppPromotionMediaContainerView
- (CGRect)frame;
- (_TtC20ProductPageExtension30AppPromotionMediaContainerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v11.receiver = self;
  v11.super_class = ObjectType;
  selfCopy = self;
  [(AppPromotionMediaContainerView *)&v11 frame];
  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  [(AppPromotionMediaContainerView *)&v10 setFrame:x, y, width, height];
  sub_1006467B0();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100646A80();
}

- (void)videoTapGestureRecognized
{
  selfCopy = self;
  sub_100646D28();
}

- (_TtC20ProductPageExtension30AppPromotionMediaContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end