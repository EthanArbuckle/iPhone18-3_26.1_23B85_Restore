@interface ListTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC7SwiftUI17ListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
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
  selfCopy = self;
  ListTableViewCell.prepareForReuse()();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = ListTableViewCell.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for ListTableViewCell();
  contextCopy = context;
  coordinatorCopy = coordinator;
  v8 = v10.receiver;
  [(ListTableViewCell *)&v10 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  v9 = *&v8[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host];
  [v9 didUpdateFocusInContext:contextCopy withAnimationCoordinator:{coordinatorCopy, v10.receiver, v10.super_class}];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ListTableViewCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (_TtC7SwiftUI17ListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return ListTableViewCell.init(style:reuseIdentifier:)(style, identifier, v6);
}

@end