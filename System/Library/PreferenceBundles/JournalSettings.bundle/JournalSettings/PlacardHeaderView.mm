@interface PlacardHeaderView
- (_TtC15JournalSettings17PlacardHeaderView)initWithCoder:(id)a3;
- (_TtC15JournalSettings17PlacardHeaderView)initWithReuseIdentifier:(id)a3;
- (_TtC15JournalSettings17PlacardHeaderView)initWithSpecifier:(id)a3;
- (void)refreshContentsWithSpecifier:(id)a3;
@end

@implementation PlacardHeaderView

- (_TtC15JournalSettings17PlacardHeaderView)initWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlacardHeaderView();
  v4 = a3;
  v5 = [(PlacardHeaderView *)&v7 initWithReuseIdentifier:0];
  sub_7B768(v4);

  return v5;
}

- (_TtC15JournalSettings17PlacardHeaderView)initWithCoder:(id)a3
{
  type metadata accessor for PlacardHeaderView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)refreshContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_7B768(v4);
}

- (_TtC15JournalSettings17PlacardHeaderView)initWithReuseIdentifier:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end