@interface FMCardContainerView
- (_TtC6FindMy19FMCardContainerView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMCardContainerView

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  changeCopy = change;
  sub_10001DA30();
  traitCollection = [(FMCardContainerView *)selfCopy traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (!changeCopy || horizontalSizeClass != [changeCopy horizontalSizeClass])
  {
    sub_100457A64();
  }
}

- (_TtC6FindMy19FMCardContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end