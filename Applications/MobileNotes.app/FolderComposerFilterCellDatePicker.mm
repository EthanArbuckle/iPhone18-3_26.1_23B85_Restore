@interface FolderComposerFilterCellDatePicker
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)dateSelectionChanged:(id)changed;
- (void)prepareForReuse;
@end

@implementation FolderComposerFilterCellDatePicker

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10036AD68();

  (*(v5 + 8))(v7, v4);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10036BAAC();
}

- (void)dateSelectionChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_10036BC14(changedCopy);
}

@end