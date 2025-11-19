@interface SearchBar
- (NSArray)keyCommands;
- (_TtC8AppStore9SearchBar)initWithCoder:(id)a3;
- (_TtC8AppStore9SearchBar)initWithFrame:(CGRect)a3;
- (void)handleCancelKeyCommand;
- (void)layoutSubviews;
@end

@implementation SearchBar

- (_TtC8AppStore9SearchBar)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_getObjectType();
  v12.receiver = self;
  v12.super_class = type metadata accessor for SearchBar();
  v8 = [(SearchBar *)&v12 initWithFrame:x, y, width, height];
  sub_10002849C(&qword_10097B110);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B10D0;
  *(v9 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v9 + 40) = &protocol witness table for UITraitLegibilityWeight;
  v10 = v8;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v10;
}

- (_TtC8AppStore9SearchBar)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSArray)keyCommands
{
  v2 = self;
  v3 = sub_100615954();

  if (v3)
  {
    sub_100005744(0, &qword_100982610);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)handleCancelKeyCommand
{
  v4 = self;
  v2 = [(SearchBar *)v4 delegate];
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector:"searchBarCancelButtonClicked:"])
    {
      [v3 searchBarCancelButtonClicked:v4];
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
  sub_100615BAC();
}

@end