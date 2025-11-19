@interface DeviceFileReviewCell
- (_TtC11Diagnostics20DeviceFileReviewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)handleFileTapped:(id)a3;
- (void)prepareForReuse;
@end

@implementation DeviceFileReviewCell

- (void)prepareForReuse
{
  v2 = self;
  sub_100111D0C();
}

- (void)handleFileTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100111F3C(v4);
}

- (_TtC11Diagnostics20DeviceFileReviewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  sub_1001120B4(a3, a4, v6);
  return result;
}

@end