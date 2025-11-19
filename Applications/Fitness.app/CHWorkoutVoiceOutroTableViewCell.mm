@interface CHWorkoutVoiceOutroTableViewCell
- (CHWorkoutVoiceOutroTableViewCell)initWithCoder:(id)a3;
- (CHWorkoutVoiceOutroTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureWithSupplementaryDataSource:(id)a3 parent:(id)a4;
@end

@implementation CHWorkoutVoiceOutroTableViewCell

- (CHWorkoutVoiceOutroTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_10039F28C(a3, a4, v6);
}

- (CHWorkoutVoiceOutroTableViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutVoiceOutroTableViewCell_hostingController) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutVoiceOutroTableViewCell_cellPadding) = 0x4028000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutVoiceOutroTableViewCell_cellInset) = 0x4030000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)configureWithSupplementaryDataSource:(id)a3 parent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10039F4FC(v6, v7);
}

@end