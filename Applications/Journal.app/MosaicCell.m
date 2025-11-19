@interface MosaicCell
- (NSArray)accessibilityCustomActions;
- (int64_t)focusItemDeferralMode;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setAccessibilityCustomActions:(id)a3;
@end

@implementation MosaicCell

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100069310(v4);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100072BF4();

  (*(v5 + 8))(v7, v4);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100077808();
}

- (int64_t)focusItemDeferralMode
{
  v3 = type metadata accessor for UICellConfigurationState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  v8 = [(MosaicCell *)v7 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v8) = UICellConfigurationState.isEditing.getter();
  (*(v4 + 8))(v6, v3);
  if (v8)
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
  v3 = [(MosaicCell *)&v8 accessibilityCustomActions];
  if (v3)
  {
    v4 = v3;
    sub_10043C194();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = sub_1007084F8();
  sub_1006ADFF8(v5);

  sub_10043C194();
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)setAccessibilityCustomActions:(id)a3
{
  isa = a3;
  if (a3)
  {
    sub_10043C194();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = self;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for MosaicCell();
  [(MosaicCell *)&v7 setAccessibilityCustomActions:isa];
}

@end