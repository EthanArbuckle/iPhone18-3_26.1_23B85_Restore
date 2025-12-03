@interface ToastContainerView.ContainerView
- (_TtCC5Books18ToastContainerViewP33_4DBEA752A9924E02BEA433C77282CE1A13ContainerView)initWithCoder:(id)coder;
- (_TtCC5Books18ToastContainerViewP33_4DBEA752A9924E02BEA433C77282CE1A13ContainerView)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
@end

@implementation ToastContainerView.ContainerView

- (_TtCC5Books18ToastContainerViewP33_4DBEA752A9924E02BEA433C77282CE1A13ContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for ToastContainerView.ContainerView();
  return [(ToastContainerView.ContainerView *)&v9 initWithFrame:x, y, width, height];
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ToastContainerView.ContainerView();
  v2 = v4.receiver;
  [(ToastContainerView.ContainerView *)&v4 didMoveToSuperview];
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong setNeedsLayout];
}

- (_TtCC5Books18ToastContainerViewP33_4DBEA752A9924E02BEA433C77282CE1A13ContainerView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for ToastContainerView.ContainerView();
  coderCopy = coder;
  v6 = [(ToastContainerView.ContainerView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end