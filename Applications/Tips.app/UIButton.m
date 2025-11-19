@interface UIButton
- (void)configureImageWithSymbolName:(id)a3 padding:(double)a4;
- (void)configureMediumFontStyle;
- (void)configureWithTitle:(id)a3;
- (void)configureWithTitle:(id)a3 preferredConfiguration:(id)a4;
- (void)onConfigurationUpdated;
- (void)setupReplayButtonConfiguration;
@end

@implementation UIButton

- (void)configureWithTitle:(id)a3
{
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3;
  v11 = self;
  static UIButton.Configuration.borderedProminent()();
  isa = UIButton.Configuration._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);
  [(UIButton *)v11 configureWithTitle:v10 preferredConfiguration:isa];
}

- (void)configureWithTitle:(id)a3 preferredConfiguration:(id)a4
{
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = self;
  sub_10002AC9C(v10, v12, v9);

  (*(v6 + 8))(v9, v5);
}

- (void)configureImageWithSymbolName:(id)a3 padding:(double)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_10002B164();
}

- (void)configureMediumFontStyle
{
  v2 = self;
  sub_10002B4DC();
}

- (void)onConfigurationUpdated
{
  v2 = self;
  [(UIButton *)v2 setNeedsUpdateConfiguration];
  [(UIButton *)v2 invalidateIntrinsicContentSize];
}

- (void)setupReplayButtonConfiguration
{
  v2 = self;
  sub_10002B8C0();
}

@end