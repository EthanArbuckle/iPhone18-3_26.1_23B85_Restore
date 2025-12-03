@interface FolderComposerFilterCell
- (NSString)accessibilityValue;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)updateConstraints;
@end

@implementation FolderComposerFilterCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1004B6000(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)updateConstraints
{
  selfCopy = self;
  sub_1004B7384();
}

- (NSString)accessibilityValue
{
  selfCopy = self;
  v3 = sub_1004B5C64();
  text = [v3 text];

  if (text)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    text = String._bridgeToObjectiveC()();
  }

  else
  {
  }

  return text;
}

@end