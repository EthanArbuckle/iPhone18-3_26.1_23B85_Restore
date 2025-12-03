@interface InstructionListCell
- (_TtC11Diagnostics19InstructionListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation InstructionListCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10009F870();
}

- (_TtC11Diagnostics19InstructionListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_10009FC04(style, identifier, v6);
}

@end