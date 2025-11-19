@interface DashboardSectionHeaderView
- (void)buttonDownWithSender:(id)a3;
- (void)buttonPressedWithSender:(id)a3;
- (void)buttonUpWithSender:(id)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation DashboardSectionHeaderView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DashboardSectionHeaderView();
  v2 = v5.receiver;
  [(DashboardSectionHeaderView *)&v5 layoutSubviews];
  v3 = OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button;
  v4 = [*&v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button] layer];
  [*&v2[v3] bounds];
  [v4 setCornerRadius:CGRectGetHeight(v6) * 0.5];
}

- (void)buttonPressedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10014B0EC();
}

- (void)buttonDownWithSender:(id)a3
{
  v4 = objc_allocWithZone(UIColor);
  v7 = self;
  v5 = [v4 initWithRed:0.0 green:0.5 blue:1.0 alpha:0.125];
  v6 = [v5 CGColor];

  sub_10014ACAC(v6);
}

- (void)buttonUpWithSender:(id)a3
{
  v6 = self;
  v3 = [(DashboardSectionHeaderView *)v6 tintColor];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 CGColor];

    sub_10014ACAC(v5);
  }

  else
  {
    __break(1u);
  }
}

- (void)tintColorDidChange
{
  v5 = self;
  v2 = [(DashboardSectionHeaderView *)v5 tintColor];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 CGColor];

    sub_10014ACAC(v4);
  }

  else
  {
    __break(1u);
  }
}

@end