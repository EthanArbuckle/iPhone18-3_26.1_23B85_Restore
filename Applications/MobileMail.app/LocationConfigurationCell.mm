@interface LocationConfigurationCell
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
@end

@implementation LocationConfigurationCell

- (NSString)accessibilityLabel
{
  _objc_retain(self);
  sub_10034929C();
  v7 = v2;
  _objc_release(self);
  if (v7)
  {
    v4 = String._bridgeToObjectiveC()();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityLabel:(id)label
{
  _objc_retain(label);
  _objc_retain(self);
  if (label)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(label);
  }

  sub_1002C760C();
  _objc_release(self);
}

- (void)layoutSubviews
{
  _objc_retain(self);
  sub_100349684();
  _objc_release(self);
}

@end