@interface EntryCell
- (_TtC7Journal9EntryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation EntryCell

- (_TtC7Journal9EntryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1004623B8(a3, a4, v6);
}

@end