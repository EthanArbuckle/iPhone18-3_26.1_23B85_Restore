@interface ListTableViewHeaderFooter
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC7SwiftUI25ListTableViewHeaderFooter)initWithReuseIdentifier:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)prepareForReuse;
@end

@implementation ListTableViewHeaderFooter

- (void)prepareForReuse
{
  v2 = self;
  ListTableViewHeaderFooter.prepareForReuse()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host))
  {
    v3 = self;
    v4 = [(ListTableViewHeaderFooter *)v3 contentView];
    [v4 bounds];

    specialized PlatformListViewBase<>.hostSizeThatFits(width:)();
    v6 = v5;
    v8 = v7;

    v9 = v8;
    v10 = v6;
  }

  else
  {
    height = a3.height;
    width = a3.width;
    v13.receiver = self;
    v13.super_class = type metadata accessor for ListTableViewHeaderFooter();
    [(ListTableViewHeaderFooter *)&v13 sizeThatFits:width, height];
  }

  result.height = v9;
  result.width = v10;
  return result;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UIViewConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIViewConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  ListTableViewHeaderFooter.updateConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (_TtC7SwiftUI25ListTableViewHeaderFooter)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return ListTableViewHeaderFooter.init(reuseIdentifier:)(v3, v4);
}

@end