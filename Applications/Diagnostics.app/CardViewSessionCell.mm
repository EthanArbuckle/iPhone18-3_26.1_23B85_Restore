@interface CardViewSessionCell
- (_TtC11Diagnostics19CardViewSessionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation CardViewSessionCell

- (_TtC11Diagnostics19CardViewSessionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_10011927C(style, identifier, v6);
}

@end