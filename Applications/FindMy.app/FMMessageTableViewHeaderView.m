@interface FMMessageTableViewHeaderView
- (_TtC6FindMy28FMMessageTableViewHeaderView)initWithReuseIdentifier:(id)a3;
- (void)layoutSubviews;
@end

@implementation FMMessageTableViewHeaderView

- (void)layoutSubviews
{
  v2 = self;
  sub_100424D20();
}

- (_TtC6FindMy28FMMessageTableViewHeaderView)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_100424E98(v3, v4);
}

@end