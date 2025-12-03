@interface CHWorkoutVoiceOutroTableViewCell
- (CHWorkoutVoiceOutroTableViewCell)initWithCoder:(id)coder;
- (CHWorkoutVoiceOutroTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureWithSupplementaryDataSource:(id)source parent:(id)parent;
@end

@implementation CHWorkoutVoiceOutroTableViewCell

- (CHWorkoutVoiceOutroTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_10039F28C(style, identifier, v6);
}

- (CHWorkoutVoiceOutroTableViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutVoiceOutroTableViewCell_hostingController) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutVoiceOutroTableViewCell_cellPadding) = 0x4028000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutVoiceOutroTableViewCell_cellInset) = 0x4030000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)configureWithSupplementaryDataSource:(id)source parent:(id)parent
{
  sourceCopy = source;
  parentCopy = parent;
  selfCopy = self;
  sub_10039F4FC(sourceCopy, parentCopy);
}

@end