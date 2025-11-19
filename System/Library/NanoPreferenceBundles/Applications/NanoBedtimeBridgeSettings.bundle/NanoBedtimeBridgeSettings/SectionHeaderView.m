@interface SectionHeaderView
- (_TtC25NanoBedtimeBridgeSettings17SectionHeaderView)initWithCoder:(id)a3;
- (_TtC25NanoBedtimeBridgeSettings17SectionHeaderView)initWithFrame:(CGRect)a3;
- (_TtC25NanoBedtimeBridgeSettings17SectionHeaderView)initWithSpecifier:(id)a3;
- (double)preferredHeightForWidth:(double)a3;
@end

@implementation SectionHeaderView

- (_TtC25NanoBedtimeBridgeSettings17SectionHeaderView)initWithSpecifier:(id)a3
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_2B88(a3);

  return v4;
}

- (_TtC25NanoBedtimeBridgeSettings17SectionHeaderView)initWithCoder:(id)a3
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_3EFC();
}

- (double)preferredHeightForWidth:(double)a3
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  [(SectionHeaderView *)v5 directionalLayoutMargins];
  v7 = a3 - v6;
  [(SectionHeaderView *)v5 directionalLayoutMargins];
  v9 = v7 - v8;
  LODWORD(v10) = 1148846080;
  LODWORD(v8) = 1112014848;
  [(SectionHeaderView *)v5 systemLayoutSizeFittingSize:v9 withHorizontalFittingPriority:0.0 verticalFittingPriority:v10, v8];
  v12 = v11;

  return v12;
}

- (_TtC25NanoBedtimeBridgeSettings17SectionHeaderView)initWithFrame:(CGRect)a3
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end