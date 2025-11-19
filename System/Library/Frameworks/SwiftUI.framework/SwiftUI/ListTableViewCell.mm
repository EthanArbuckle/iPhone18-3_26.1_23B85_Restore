@interface ListTableViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC7SwiftUI17ListTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutMarginsDidChange;
- (void)prepareForReuse;
@end

@implementation ListTableViewCell

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ListTableViewCell();
  v2 = v3.receiver;
  [(ListTableViewCell *)&v3 layoutMarginsDidChange];
  ListTableViewCell.updateSeparatorsFromConfiguration()();
}

- (void)prepareForReuse
{
  v2 = self;
  ListTableViewCell.prepareForReuse()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = ListTableViewCell.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for ListTableViewCell();
  v6 = a3;
  v7 = a4;
  v8 = v10.receiver;
  [(ListTableViewCell *)&v10 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
  v9 = *&v8[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host];
  [v9 didUpdateFocusInContext:v6 withAnimationCoordinator:{v7, v10.receiver, v10.super_class}];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  ListTableViewCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (_TtC7SwiftUI17ListTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return ListTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

@end