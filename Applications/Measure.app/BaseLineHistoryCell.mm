@interface BaseLineHistoryCell
- (_TtC7Measure19BaseLineHistoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation BaseLineHistoryCell

- (_TtC7Measure19BaseLineHistoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_10006E584(a3, a4, v6);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_10006E864();
}

@end