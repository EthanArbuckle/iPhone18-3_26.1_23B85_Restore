@interface ToastContainerView.ContainerView
- (_TtCC5Books18ToastContainerViewP33_4DBEA752A9924E02BEA433C77282CE1A13ContainerView)initWithCoder:(id)a3;
- (_TtCC5Books18ToastContainerViewP33_4DBEA752A9924E02BEA433C77282CE1A13ContainerView)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
@end

@implementation ToastContainerView.ContainerView

- (_TtCC5Books18ToastContainerViewP33_4DBEA752A9924E02BEA433C77282CE1A13ContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (_TtCC5Books18ToastContainerViewP33_4DBEA752A9924E02BEA433C77282CE1A13ContainerView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for ToastContainerView.ContainerView();
  v5 = a3;
  v6 = [(ToastContainerView.ContainerView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end