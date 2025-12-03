@interface PlacardHeaderView
- (_TtC15JournalSettings17PlacardHeaderView)initWithCoder:(id)coder;
- (_TtC15JournalSettings17PlacardHeaderView)initWithReuseIdentifier:(id)identifier;
- (_TtC15JournalSettings17PlacardHeaderView)initWithSpecifier:(id)specifier;
- (void)refreshContentsWithSpecifier:(id)specifier;
@end

@implementation PlacardHeaderView

- (_TtC15JournalSettings17PlacardHeaderView)initWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlacardHeaderView();
  specifierCopy = specifier;
  v5 = [(PlacardHeaderView *)&v7 initWithReuseIdentifier:0];
  sub_7B768(specifierCopy);

  return v5;
}

- (_TtC15JournalSettings17PlacardHeaderView)initWithCoder:(id)coder
{
  type metadata accessor for PlacardHeaderView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)refreshContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_7B768(specifierCopy);
}

- (_TtC15JournalSettings17PlacardHeaderView)initWithReuseIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end