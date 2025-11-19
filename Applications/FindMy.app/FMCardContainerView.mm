@interface FMCardContainerView
- (_TtC6FindMy19FMCardContainerView)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMCardContainerView

- (void)traitCollectionDidChange:(id)a3
{
  v7 = self;
  v4 = a3;
  sub_10001DA30();
  v5 = [(FMCardContainerView *)v7 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (!v4 || v6 != [v4 horizontalSizeClass])
  {
    sub_100457A64();
  }
}

- (_TtC6FindMy19FMCardContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end