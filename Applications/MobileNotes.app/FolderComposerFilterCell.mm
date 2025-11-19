@interface FolderComposerFilterCell
- (NSString)accessibilityValue;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)updateConstraints;
@end

@implementation FolderComposerFilterCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1004B6000(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)updateConstraints
{
  v2 = self;
  sub_1004B7384();
}

- (NSString)accessibilityValue
{
  v2 = self;
  v3 = sub_1004B5C64();
  v4 = [v3 text];

  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
  }

  return v4;
}

@end