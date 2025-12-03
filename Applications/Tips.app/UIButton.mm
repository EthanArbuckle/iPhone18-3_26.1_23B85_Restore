@interface UIButton
- (void)configureImageWithSymbolName:(id)name padding:(double)padding;
- (void)configureMediumFontStyle;
- (void)configureWithTitle:(id)title;
- (void)configureWithTitle:(id)title preferredConfiguration:(id)configuration;
- (void)onConfigurationUpdated;
- (void)setupReplayButtonConfiguration;
@end

@implementation UIButton

- (void)configureWithTitle:(id)title
{
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  titleCopy = title;
  selfCopy = self;
  static UIButton.Configuration.borderedProminent()();
  isa = UIButton.Configuration._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);
  [(UIButton *)selfCopy configureWithTitle:titleCopy preferredConfiguration:isa];
}

- (void)configureWithTitle:(id)title preferredConfiguration:(id)configuration
{
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10002AC9C(v10, v12, v9);

  (*(v6 + 8))(v9, v5);
}

- (void)configureImageWithSymbolName:(id)name padding:(double)padding
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10002B164();
}

- (void)configureMediumFontStyle
{
  selfCopy = self;
  sub_10002B4DC();
}

- (void)onConfigurationUpdated
{
  selfCopy = self;
  [(UIButton *)selfCopy setNeedsUpdateConfiguration];
  [(UIButton *)selfCopy invalidateIntrinsicContentSize];
}

- (void)setupReplayButtonConfiguration
{
  selfCopy = self;
  sub_10002B8C0();
}

@end