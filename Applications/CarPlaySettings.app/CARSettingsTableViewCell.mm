@interface CARSettingsTableViewCell
+ (NSString)reuseIdentifier;
- (_TtC15CarPlaySettings24CARSettingsTableViewCell)initWithCoder:(id)a3;
- (_TtC15CarPlaySettings24CARSettingsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)_switchValueChanged:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)prepareForReuse;
- (void)setSpecifier:(id)a3;
- (void)specifier:(id)a3 didUpdateEnabled:(BOOL)a4;
- (void)specifier:(id)a3 didUpdateSelectionStyle:(int64_t)a4;
- (void)specifier:(id)a3 didUpdateValue:(id)a4;
@end

@implementation CARSettingsTableViewCell

- (void)setSpecifier:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_10004D06C(a3);
}

- (_TtC15CarPlaySettings24CARSettingsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return CARSettingsTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

- (_TtC15CarPlaySettings24CARSettingsTableViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15CarPlaySettings24CARSettingsTableViewCell__specifier) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (NSString)reuseIdentifier
{
  if (qword_1001029F0 != -1)
  {
    swift_once();
  }

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CARSettingsTableViewCell();
  v2 = v3.receiver;
  [(CARSettingsTableViewCell *)&v3 prepareForReuse];
  (*((swift_isaMask & *v2) + 0x80))(0);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for CARSettingsTableViewCell();
  v6 = a3;
  v7 = a4;
  v8 = v9.receiver;
  [(CARSettingsTableViewCell *)&v9 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
  [v8 setNeedsUpdateConfiguration];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  CARSettingsTableViewCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)_switchValueChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10004CAB4(v4);
}

- (void)specifier:(id)a3 didUpdateSelectionStyle:(int64_t)a4
{
  v5 = self;
  [(CARSettingsTableViewCell *)v5 setSelectionStyle:a4];
  [(CARSettingsTableViewCell *)v5 setNeedsUpdateConfiguration];
}

- (void)specifier:(id)a3 didUpdateEnabled:(BOOL)a4
{
  v4 = a4;
  v5 = self;
  [(CARSettingsTableViewCell *)v5 setUserInteractionEnabled:v4];
  [(CARSettingsTableViewCell *)v5 setNeedsUpdateConfiguration];
}

- (void)specifier:(id)a3 didUpdateValue:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  [(CARSettingsTableViewCell *)v5 setNeedsUpdateConfiguration];

  sub_100038D70(&v6);
}

@end