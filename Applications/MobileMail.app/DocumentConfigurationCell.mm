@interface DocumentConfigurationCell
- (NSString)accessibilityLabel;
- (void)setAccessibilityLabel:(id)label;
@end

@implementation DocumentConfigurationCell

- (NSString)accessibilityLabel
{
  _objc_retain(self);
  sub_1002C7238();
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

@end