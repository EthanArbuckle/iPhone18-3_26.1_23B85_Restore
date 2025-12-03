@interface FMProductActionHeaderView
- (_TtC6FindMy25FMProductActionHeaderView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMProductActionHeaderView

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMProductActionHeaderView();
  changeCopy = change;
  v5 = v6.receiver;
  [(FMProductActionHeaderView *)&v6 traitCollectionDidChange:changeCopy];
  sub_100479ED0();
}

- (_TtC6FindMy25FMProductActionHeaderView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end