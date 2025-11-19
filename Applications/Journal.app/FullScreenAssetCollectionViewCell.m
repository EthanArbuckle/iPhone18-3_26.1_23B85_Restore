@interface FullScreenAssetCollectionViewCell
- (UICellConfigurationState)_bridgedConfigurationState;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
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
  v11 = self;
  v12 = [(FullScreenAssetCollectionViewCell *)&v17 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = [(FullScreenAssetCollectionViewCell *)v11 contentView];
  v14 = [v13 isUserInteractionEnabled];

  if ((v14 & 1) == 0)
  {
    UICellConfigurationState.isDisabled.setter();
  }

  (*(v4 + 32))(v9, v6, v3);
  v15.super.super.isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  (*(v4 + 8))(v9, v3);

  return v15.super.super.isa;
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1006FD53C(v4);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1006FD770();

  (*(v5 + 8))(v7, v4);
}

- (void)updateConstraints
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static UIView.Invalidating.subscript.getter();

  v4 = OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_aspectConstraint;
  swift_beginAccess();
  sub_10031BEA8((&v3->super.super.super.super.super.isa + v4), v6, v7);
  swift_endAccess();
  v5.receiver = v3;
  v5.super_class = type metadata accessor for FullScreenAssetCollectionViewCell();
  [(FullScreenAssetCollectionViewCell *)&v5 updateConstraints];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1006FDA70(v4);

  return v6;
}

@end