@interface RefinementsBarUIView
- (_TtC4Maps20RefinementsBarUIView)initWithCoder:(id)a3;
- (_TtC4Maps23RefinementsBarViewModel)viewModel;
- (_TtP4Maps26RefinementsBarViewDelegate_)delegate;
- (void)setHostingView:(id)a3;
- (void)setViewModel:(id)a3;
@end

@implementation RefinementsBarUIView

- (void)setHostingView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps20RefinementsBarUIView_hostingView);
  *(self + OBJC_IVAR____TtC4Maps20RefinementsBarUIView_hostingView) = a3;
  v3 = a3;
}

- (_TtP4Maps26RefinementsBarViewDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps20RefinementsBarUIView)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC4Maps20RefinementsBarUIView_refinementBar);
  *v3 = 0u;
  v3[1] = 0u;
  *(self + OBJC_IVAR____TtC4Maps20RefinementsBarUIView_hostingView) = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC4Maps23RefinementsBarViewModel)viewModel
{
  v3 = *(self + OBJC_IVAR____TtC4Maps20RefinementsBarUIView_refinementBar + 8);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10033DDE4(a3);
}

@end