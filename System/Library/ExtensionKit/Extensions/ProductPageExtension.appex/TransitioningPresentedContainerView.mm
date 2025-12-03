@interface TransitioningPresentedContainerView
- (_TtC20ProductPageExtension35TransitioningPresentedContainerView)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension35TransitioningPresentedContainerView)initWithFrame:(CGRect)frame;
- (void)didAddSubview:(id)subview;
@end

@implementation TransitioningPresentedContainerView

- (void)didAddSubview:(id)subview
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  subviewCopy = subview;
  v5 = v6.receiver;
  [(TransitioningPresentedContainerView *)&v6 didAddSubview:subviewCopy];
  if (v5[OBJC_IVAR____TtC20ProductPageExtension35TransitioningPresentedContainerView_hidesInsertedSubviews] == 1)
  {
    [subviewCopy setHidden:{1, v6.receiver, v6.super_class}];
  }
}

- (_TtC20ProductPageExtension35TransitioningPresentedContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension35TransitioningPresentedContainerView_hidesInsertedSubviews) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(TransitioningPresentedContainerView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC20ProductPageExtension35TransitioningPresentedContainerView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension35TransitioningPresentedContainerView_hidesInsertedSubviews) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(TransitioningPresentedContainerView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end