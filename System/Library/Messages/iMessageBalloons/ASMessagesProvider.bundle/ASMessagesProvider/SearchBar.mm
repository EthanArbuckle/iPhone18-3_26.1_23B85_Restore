@interface SearchBar
- (NSArray)keyCommands;
- (_TtC18ASMessagesProvider9SearchBar)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider9SearchBar)initWithFrame:(CGRect)frame;
- (void)handleCancelKeyCommand;
- (void)layoutSubviews;
@end

@implementation SearchBar

- (_TtC18ASMessagesProvider9SearchBar)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_getObjectType();
  v11.receiver = self;
  v11.super_class = type metadata accessor for SearchBar();
  height = [(SearchBar *)&v11 initWithFrame:x, y, width, height];
  [(SearchBar *)height _setOverrideContentInsets:1 forRectEdges:28.0, 0.0, 0.0, 0.0];
  sub_BD88(&qword_9477F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_77B6D0;
  *(v9 + 32) = sub_7676F0();
  *(v9 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return height;
}

- (_TtC18ASMessagesProvider9SearchBar)initWithCoder:(id)coder
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (NSArray)keyCommands
{
  selfCopy = self;
  v3 = sub_4C63CC();

  if (v3)
  {
    sub_BE70(0, &unk_949C60);
    v4.super.isa = sub_769450().super.isa;
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
  sub_4C6624();
}

@end