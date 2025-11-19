@interface InstructionListCell
- (_TtC11Diagnostics19InstructionListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation InstructionListCell

- (void)layoutSubviews
{
  v2 = self;
  sub_10009F870();
}

- (_TtC11Diagnostics19InstructionListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_10009FC04(a3, a4, v6);
}

@end