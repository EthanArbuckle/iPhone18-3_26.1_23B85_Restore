@interface OverlayContentContainerView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC18ASMessagesProviderP33_A13096A9E7C66318CD41C376931EE6CA27OverlayContentContainerView)initWithCoder:(id)a3;
- (_TtC18ASMessagesProviderP33_A13096A9E7C66318CD41C376931EE6CA27OverlayContentContainerView)initWithFrame:(CGRect)a3;
@end

@implementation OverlayContentContainerView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  LOBYTE(v4) = sub_6DD68C(v4, x, y);

  return v4 & 1;
}

- (_TtC18ASMessagesProviderP33_A13096A9E7C66318CD41C376931EE6CA27OverlayContentContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(OverlayContentContainerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18ASMessagesProviderP33_A13096A9E7C66318CD41C376931EE6CA27OverlayContentContainerView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(OverlayContentContainerView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end