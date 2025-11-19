@interface FMRecipientTableViewCell
- (_TtC6FindMy24FMRecipientTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation FMRecipientTableViewCell

- (_TtC6FindMy24FMRecipientTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1004899B4(a3, a4, v6);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_10048A510();
}

@end