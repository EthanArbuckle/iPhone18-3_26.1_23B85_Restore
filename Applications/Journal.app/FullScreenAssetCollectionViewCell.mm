@interface FullScreenAssetCollectionViewCell
- (UICellConfigurationState)_bridgedConfigurationState;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)applyLayoutAttributes:(id)attributes;
- (void)updateConstraints;
@end

@implementation FullScreenAssetCollectionViewCell

- (UICellConfigurationState)_bridgedConfigurationState
{
  v3 = type metadata accessor for UICellConfigurationState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for FullScreenAssetCollectionViewCell();
  v17.receiver = self;
  v17.super_class = v10;
  selfCopy = self;
  _bridgedConfigurationState = [(FullScreenAssetCollectionViewCell *)&v17 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  contentView = [(FullScreenAssetCollectionViewCell *)selfCopy contentView];
  isUserInteractionEnabled = [contentView isUserInteractionEnabled];

  if ((isUserInteractionEnabled & 1) == 0)
  {
    UICellConfigurationState.isDisabled.setter();
  }

  (*(v4 + 32))(v9, v6, v3);
  v15.super.super.isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  (*(v4 + 8))(v9, v3);

  return v15.super.super.isa;
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_1006FD53C(attributesCopy);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1006FD770();

  (*(v5 + 8))(v7, v4);
}

- (void)updateConstraints
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static UIView.Invalidating.subscript.getter();

  v4 = OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_aspectConstraint;
  swift_beginAccess();
  sub_10031BEA8((&selfCopy->super.super.super.super.super.isa + v4), v6, v7);
  swift_endAccess();
  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for FullScreenAssetCollectionViewCell();
  [(FullScreenAssetCollectionViewCell *)&v5 updateConstraints];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  v6 = sub_1006FDA70(attributesCopy);

  return v6;
}

@end