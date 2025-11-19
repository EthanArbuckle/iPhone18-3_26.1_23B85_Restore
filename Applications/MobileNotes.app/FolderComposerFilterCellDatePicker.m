@interface FolderComposerFilterCellDatePicker
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)dateSelectionChanged:(id)a3;
- (void)prepareForReuse;
@end

@implementation FolderComposerFilterCellDatePicker

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10036AD68();

  (*(v5 + 8))(v7, v4);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_10036BAAC();
}

- (void)dateSelectionChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10036BC14(v4);
}

@end