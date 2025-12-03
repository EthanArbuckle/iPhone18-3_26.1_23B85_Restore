@interface CARSettingsTableViewCell
+ (NSString)reuseIdentifier;
- (_TtC15CarPlaySettings24CARSettingsTableViewCell)initWithCoder:(id)coder;
- (_TtC15CarPlaySettings24CARSettingsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)_switchValueChanged:(id)changed;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)prepareForReuse;
- (void)setSpecifier:(id)specifier;
- (void)specifier:(id)specifier didUpdateEnabled:(BOOL)enabled;
- (void)specifier:(id)specifier didUpdateSelectionStyle:(int64_t)style;
- (void)specifier:(id)specifier didUpdateValue:(id)value;
@end

@implementation CARSettingsTableViewCell

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_10004D06C(specifier);
}

- (_TtC15CarPlaySettings24CARSettingsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return CARSettingsTableViewCell.init(style:reuseIdentifier:)(style, identifier, v6);
}

- (_TtC15CarPlaySettings24CARSettingsTableViewCell)initWithCoder:(id)coder
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

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for CARSettingsTableViewCell();
  contextCopy = context;
  coordinatorCopy = coordinator;
  v8 = v9.receiver;
  [(CARSettingsTableViewCell *)&v9 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  [v8 setNeedsUpdateConfiguration];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  CARSettingsTableViewCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)_switchValueChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_10004CAB4(changedCopy);
}

- (void)specifier:(id)specifier didUpdateSelectionStyle:(int64_t)style
{
  selfCopy = self;
  [(CARSettingsTableViewCell *)selfCopy setSelectionStyle:style];
  [(CARSettingsTableViewCell *)selfCopy setNeedsUpdateConfiguration];
}

- (void)specifier:(id)specifier didUpdateEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  [(CARSettingsTableViewCell *)selfCopy setUserInteractionEnabled:enabledCopy];
  [(CARSettingsTableViewCell *)selfCopy setNeedsUpdateConfiguration];
}

- (void)specifier:(id)specifier didUpdateValue:(id)value
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  [(CARSettingsTableViewCell *)selfCopy setNeedsUpdateConfiguration];

  sub_100038D70(&v6);
}

@end