@interface EKEventGenericDetailViewControllerOOPImpl
- (UIColor)oopContentBackgroundColor;
- (_TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl)initWithCoder:(id)a3;
- (_TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl)initWithHostViewID:(id)a3;
- (_TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl)initWithNibName:(id)a3 bundle:(id)a4;
- (void)bottomStatusButtonTapped:(int64_t)a3;
- (void)setOopContentBackgroundColor:(id)a3;
- (void)viewDidLoad;
@end

@implementation EKEventGenericDetailViewControllerOOPImpl

- (_TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl)initWithHostViewID:(id)a3
{
  v4 = sub_1D35DF384();
  v6 = v5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostingController) = 0;
  v7 = self + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 10) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_oopContentBackgroundColor) = 0;
  type metadata accessor for EKEventGenericDetailOOPHostViewModel();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostViewModel) = sub_1D35C2538(v4, v6);
  v9.receiver = self;
  v9.super_class = type metadata accessor for EKEventGenericDetailViewControllerOOPImpl();
  return [(EKEventGenericDetailViewControllerOOPImpl *)&v9 initWithNibName:0 bundle:0];
}

- (_TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl)initWithNibName:(id)a3 bundle:(id)a4
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostingController) = 0;
  v4 = self + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_oopContentBackgroundColor) = 0;
  result = sub_1D35DF754();
  __break(1u);
  return result;
}

- (_TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostingController) = 0;
  v3 = self + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 10) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_oopContentBackgroundColor) = 0;
  result = sub_1D35DF754();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D35AFB0C();
}

- (UIColor)oopContentBackgroundColor
{
  v3 = OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_oopContentBackgroundColor;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setOopContentBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D35B0868(a3);
}

- (void)bottomStatusButtonTapped:(int64_t)a3
{
  v3 = self + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView;
  v4 = *(&self->super._tabElement + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView);
  v16[2] = *(&self->super._tabBarItem + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView);
  v16[3] = v4;
  v16[4] = *(&self->super._toolbarItems + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView);
  v17 = *(&self->super._nibName + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView);
  v5 = *(&self->super._overrideTransitioningDelegate + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView);
  v16[0] = *(&self->super.super + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView);
  v16[1] = v5;
  if (*(&v16[0] + 1))
  {
    *&v10[88] = v16[0];
    v7 = *(v3 + 4);
    v13 = *(v3 + 3);
    v14 = v7;
    v15 = *(v3 + 10);
    v8 = *(v3 + 1);
    v12 = *(v3 + 2);
    v11 = v8;
    v9 = self;
    sub_1D35B0978(v16, v10);
    sub_1D35A037C(a3);

    sub_1D35AFCA4(v16);
  }
}

@end