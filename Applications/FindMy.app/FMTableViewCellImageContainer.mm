@interface FMTableViewCellImageContainer
- (_TtC6FindMy29FMTableViewCellImageContainer)initWithArrangedSubviews:(id)subviews;
- (_TtC6FindMy29FMTableViewCellImageContainer)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMTableViewCellImageContainer

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100048740();
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMTableViewCellImageContainer();
  changeCopy = change;
  v5 = v6.receiver;
  [(FMTableViewCellImageContainer *)&v6 traitCollectionDidChange:changeCopy];
  sub_100048C58();
}

- (_TtC6FindMy29FMTableViewCellImageContainer)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6FindMy29FMTableViewCellImageContainer)initWithArrangedSubviews:(id)subviews
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end