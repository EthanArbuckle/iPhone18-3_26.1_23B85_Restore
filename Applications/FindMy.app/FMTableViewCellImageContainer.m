@interface FMTableViewCellImageContainer
- (_TtC6FindMy29FMTableViewCellImageContainer)initWithArrangedSubviews:(id)a3;
- (_TtC6FindMy29FMTableViewCellImageContainer)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMTableViewCellImageContainer

- (void)layoutSubviews
{
  v2 = self;
  sub_100048740();
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMTableViewCellImageContainer();
  v4 = a3;
  v5 = v6.receiver;
  [(FMTableViewCellImageContainer *)&v6 traitCollectionDidChange:v4];
  sub_100048C58();
}

- (_TtC6FindMy29FMTableViewCellImageContainer)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6FindMy29FMTableViewCellImageContainer)initWithArrangedSubviews:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end