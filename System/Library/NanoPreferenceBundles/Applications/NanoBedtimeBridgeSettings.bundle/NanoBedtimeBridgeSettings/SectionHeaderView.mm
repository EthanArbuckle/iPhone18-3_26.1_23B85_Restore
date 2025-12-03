@interface SectionHeaderView
- (_TtC25NanoBedtimeBridgeSettings17SectionHeaderView)initWithCoder:(id)coder;
- (_TtC25NanoBedtimeBridgeSettings17SectionHeaderView)initWithFrame:(CGRect)frame;
- (_TtC25NanoBedtimeBridgeSettings17SectionHeaderView)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width;
@end

@implementation SectionHeaderView

- (_TtC25NanoBedtimeBridgeSettings17SectionHeaderView)initWithSpecifier:(id)specifier
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_2B88(specifier);

  return v4;
}

- (_TtC25NanoBedtimeBridgeSettings17SectionHeaderView)initWithCoder:(id)coder
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_3EFC();
}

- (double)preferredHeightForWidth:(double)width
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  [(SectionHeaderView *)selfCopy directionalLayoutMargins];
  v7 = width - v6;
  [(SectionHeaderView *)selfCopy directionalLayoutMargins];
  v9 = v7 - v8;
  LODWORD(v10) = 1148846080;
  LODWORD(v8) = 1112014848;
  [(SectionHeaderView *)selfCopy systemLayoutSizeFittingSize:v9 withHorizontalFittingPriority:0.0 verticalFittingPriority:v10, v8];
  v12 = v11;

  return v12;
}

- (_TtC25NanoBedtimeBridgeSettings17SectionHeaderView)initWithFrame:(CGRect)frame
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