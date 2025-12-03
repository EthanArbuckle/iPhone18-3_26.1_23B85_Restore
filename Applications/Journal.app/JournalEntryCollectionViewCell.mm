@interface JournalEntryCollectionViewCell
- (BOOL)accessibilityActivate;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (NSArray)accessibilityCustomActions;
- (NSArray)accessibilityUserInputLabels;
- (NSString)accessibilityHint;
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (int64_t)focusItemDeferralMode;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)focusAssetGrid:(id)grid;
- (void)focusCell:(id)cell;
- (void)setAccessibilityUserInputLabels:(id)labels;
@end

@implementation JournalEntryCollectionViewCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v13 = type metadata accessor for JournalEntryCollectionViewCell();
  v16.receiver = selfCopy;
  v16.super_class = v13;
  [(JournalEntryCollectionViewCell *)&v16 _bridgedUpdateConfigurationUsingState:isa];

  sub_1000831FC(v6);
  v14 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  UICollectionViewCell.backgroundConfiguration.setter();
  v15 = UICellConfigurationState.isEditing.getter();
  sub_100601BAC(v15 & 1);

  (*(v8 + 8))(v10, v7);
}

- (int64_t)focusItemDeferralMode
{
  v3 = type metadata accessor for UICellConfigurationState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  _bridgedConfigurationState = [(JournalEntryCollectionViewCell *)selfCopy _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(_bridgedConfigurationState) = UICellConfigurationState.isEditing.getter();
  (*(v4 + 8))(v6, v3);
  if (_bridgedConfigurationState)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_10060204C();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)accessibilityUserInputLabels
{
  selfCopy = self;
  sub_100602354();
  v4 = v3;

  if (v4)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (void)setAccessibilityUserInputLabels:(id)labels
{
  if (labels)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    selfCopy2 = self;
    v5.super.isa = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for JournalEntryCollectionViewCell();
  [(JournalEntryCollectionViewCell *)&v7 setAccessibilityUserInputLabels:v5.super.isa];
}

- (NSString)accessibilityValue
{
  if (*(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry) && (v2 = self, , sub_10048F1C0(), v4 = v3, v2, , v4))
  {
    v5 = String._bridgeToObjectiveC()();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)accessibilityHint
{
  if (qword_100AD0820 != -1)
  {
    swift_once();
  }

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  v3 = sub_100602880();

  return v3 & 1;
}

- (NSArray)accessibilityCustomActions
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for JournalEntryCollectionViewCell();
  v2 = v9.receiver;
  accessibilityCustomActions = [(JournalEntryCollectionViewCell *)&v9 accessibilityCustomActions];
  if (accessibilityCustomActions)
  {
    v4 = accessibilityCustomActions;
    sub_1000065A8(0, &qword_100AD86C0);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v10 = v5;
  v6 = sub_1006009BC();
  sub_1006ADFF8(v6);

  sub_1000065A8(0, &qword_100AD86C0);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_100602DD0(action, v10);

  sub_100004F84(v10, &qword_100AD13D0);
  return v8 & 1;
}

- (void)focusAssetGrid:(id)grid
{
  gridCopy = grid;
  selfCopy = self;
  sub_10060371C("Toggling focus preference to asset grid!", 1, "Focus preference toggled to asset grid.");
}

- (void)focusCell:(id)cell
{
  cellCopy = cell;
  selfCopy = self;
  sub_10060371C("Toggling focus preference to timeline cell!", 0, "Focus preference toggled to timeline cell.");
}

@end