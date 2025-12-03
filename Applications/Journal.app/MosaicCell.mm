@interface MosaicCell
- (NSArray)accessibilityCustomActions;
- (int64_t)focusItemDeferralMode;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setAccessibilityCustomActions:(id)actions;
@end

@implementation MosaicCell

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_100069310(attributesCopy);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100072BF4();

  (*(v5 + 8))(v7, v4);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100077808();
}

- (int64_t)focusItemDeferralMode
{
  v3 = type metadata accessor for UICellConfigurationState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  _bridgedConfigurationState = [(MosaicCell *)selfCopy _bridgedConfigurationState];
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

- (NSArray)accessibilityCustomActions
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for MosaicCell();
  v2 = v8.receiver;
  accessibilityCustomActions = [(MosaicCell *)&v8 accessibilityCustomActions];
  if (accessibilityCustomActions)
  {
    v4 = accessibilityCustomActions;
    sub_10043C194();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = sub_1007084F8();
  sub_1006ADFF8(v5);

  sub_10043C194();
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)setAccessibilityCustomActions:(id)actions
{
  isa = actions;
  if (actions)
  {
    sub_10043C194();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    selfCopy2 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for MosaicCell();
  [(MosaicCell *)&v7 setAccessibilityCustomActions:isa];
}

@end