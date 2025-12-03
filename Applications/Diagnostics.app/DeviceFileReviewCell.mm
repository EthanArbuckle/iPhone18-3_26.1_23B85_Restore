@interface DeviceFileReviewCell
- (_TtC11Diagnostics20DeviceFileReviewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)handleFileTapped:(id)tapped;
- (void)prepareForReuse;
@end

@implementation DeviceFileReviewCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_100111D0C();
}

- (void)handleFileTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_100111F3C(tappedCopy);
}

- (_TtC11Diagnostics20DeviceFileReviewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  sub_1001120B4(style, identifier, v6);
  return result;
}

@end