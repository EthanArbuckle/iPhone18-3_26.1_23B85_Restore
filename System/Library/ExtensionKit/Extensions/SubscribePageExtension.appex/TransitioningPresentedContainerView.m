@interface TransitioningPresentedContainerView
- (_TtC22SubscribePageExtension35TransitioningPresentedContainerView)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension35TransitioningPresentedContainerView)initWithFrame:(CGRect)a3;
- (void)didAddSubview:(id)a3;
@end

@implementation TransitioningPresentedContainerView

- (void)didAddSubview:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(TransitioningPresentedContainerView *)&v6 didAddSubview:v4];
  if (v5[OBJC_IVAR____TtC22SubscribePageExtension35TransitioningPresentedContainerView_hidesInsertedSubviews] == 1)
  {
    [v4 setHidden:{1, v6.receiver, v6.super_class}];
  }
}

- (_TtC22SubscribePageExtension35TransitioningPresentedContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35TransitioningPresentedContainerView_hidesInsertedSubviews) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(TransitioningPresentedContainerView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC22SubscribePageExtension35TransitioningPresentedContainerView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35TransitioningPresentedContainerView_hidesInsertedSubviews) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(TransitioningPresentedContainerView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end