@interface SearchBar
- (NSArray)keyCommands;
- (_TtC20ProductPageExtension9SearchBar)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension9SearchBar)initWithFrame:(CGRect)frame;
- (void)handleCancelKeyCommand;
- (void)layoutSubviews;
@end

@implementation SearchBar

- (_TtC20ProductPageExtension9SearchBar)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_getObjectType();
  v12.receiver = self;
  v12.super_class = type metadata accessor for SearchBar();
  height = [(SearchBar *)&v12 initWithFrame:x, y, width, height];
  sub_10000A5D4(&unk_100945BF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100783DD0;
  *(v9 + 32) = sub_10076E3FC();
  *(v9 + 40) = &protocol witness table for UITraitLegibilityWeight;
  v10 = height;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v10;
}

- (_TtC20ProductPageExtension9SearchBar)initWithCoder:(id)coder
{
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (NSArray)keyCommands
{
  selfCopy = self;
  v3 = sub_100510A7C();

  if (v3)
  {
    sub_100016F40(0, &unk_10094C270);
    v4.super.isa = sub_1007701AC().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)handleCancelKeyCommand
{
  selfCopy = self;
  delegate = [(SearchBar *)selfCopy delegate];
  if (delegate)
  {
    v3 = delegate;
    if ([delegate respondsToSelector:"searchBarCancelButtonClicked:"])
    {
      [v3 searchBarCancelButtonClicked:selfCopy];
    }

    swift_unknownObjectRelease();
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchBar();
  v2 = v3.receiver;
  [(SearchBar *)&v3 layoutSubviews];
  sub_100510CD4();
}

@end