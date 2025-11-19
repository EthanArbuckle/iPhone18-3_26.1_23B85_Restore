@interface MoveModeSettingsCell
- (_TtC10FitnessApp20MoveModeSettingsCell)initWithCoder:(id)a3;
- (_TtC10FitnessApp20MoveModeSettingsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation MoveModeSettingsCell

- (_TtC10FitnessApp20MoveModeSettingsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_100387144(a3, a4, v6);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MoveModeSettingsCell();
  v2 = v3.receiver;
  [(MoveModeSettingsCell *)&v3 prepareForReuse];
  *&v2[OBJC_IVAR____TtC10FitnessApp20MoveModeSettingsCell_delegate + 8] = 0;
  swift_unknownObjectWeakAssign();
}

- (_TtC10FitnessApp20MoveModeSettingsCell)initWithCoder:(id)a3
{
  *&self->delegate[OBJC_IVAR____TtC10FitnessApp20MoveModeSettingsCell_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp20MoveModeSettingsCell_moveTimeSwitch) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end