@interface DashboardSectionHeaderView
- (void)buttonDownWithSender:(id)sender;
- (void)buttonPressedWithSender:(id)sender;
- (void)buttonUpWithSender:(id)sender;
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
  layer = [*&v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button] layer];
  [*&v2[v3] bounds];
  [layer setCornerRadius:CGRectGetHeight(v6) * 0.5];
}

- (void)buttonPressedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10014B0EC();
}

- (void)buttonDownWithSender:(id)sender
{
  v4 = objc_allocWithZone(UIColor);
  selfCopy = self;
  v5 = [v4 initWithRed:0.0 green:0.5 blue:1.0 alpha:0.125];
  cGColor = [v5 CGColor];

  sub_10014ACAC(cGColor);
}

- (void)buttonUpWithSender:(id)sender
{
  selfCopy = self;
  tintColor = [(DashboardSectionHeaderView *)selfCopy tintColor];
  if (tintColor)
  {
    v4 = tintColor;
    cGColor = [tintColor CGColor];

    sub_10014ACAC(cGColor);
  }

  else
  {
    __break(1u);
  }
}

- (void)tintColorDidChange
{
  selfCopy = self;
  tintColor = [(DashboardSectionHeaderView *)selfCopy tintColor];
  if (tintColor)
  {
    v3 = tintColor;
    cGColor = [tintColor CGColor];

    sub_10014ACAC(cGColor);
  }

  else
  {
    __break(1u);
  }
}

@end