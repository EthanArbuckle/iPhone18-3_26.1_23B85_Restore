@interface SelfServiceViewCell
- (CGSize)intrinsicContentSize;
- (_TtC11Diagnostics19SelfServiceViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation SelfServiceViewCell

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_1000BAD38();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC11Diagnostics19SelfServiceViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1000BAE58(a3, a4, v6);
}

@end