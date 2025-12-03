@interface SettingsHeaderView
- (_TtC22DepthCompanionSettings18SettingsHeaderView)initWithCoder:(id)coder;
- (_TtC22DepthCompanionSettings18SettingsHeaderView)initWithFrame:(CGRect)frame;
- (double)preferredHeightForWidth:(double)width;
@end

@implementation SettingsHeaderView

- (_TtC22DepthCompanionSettings18SettingsHeaderView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SettingsHeaderView();
  coderCopy = coder;
  v5 = [(SettingsHeaderView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC22DepthCompanionSettings18SettingsHeaderView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)preferredHeightForWidth:(double)width
{
  selfCopy = self;
  [(SettingsHeaderView *)selfCopy directionalLayoutMargins];
  v6 = width - v5;
  [(SettingsHeaderView *)selfCopy directionalLayoutMargins];
  v8 = v6 - v7;
  LODWORD(v9) = 1148846080;
  LODWORD(v7) = 1112014848;
  [(SettingsHeaderView *)selfCopy systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:0.0 verticalFittingPriority:v9, v7];
  v11 = v10;

  return v11;
}

@end