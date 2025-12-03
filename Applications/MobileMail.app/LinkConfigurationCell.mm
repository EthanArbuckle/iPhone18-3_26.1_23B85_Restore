@interface LinkConfigurationCell
- (NSString)accessibilityLabel;
- (void)_linkViewMetadataDidBecomeComplete:(id)complete;
- (void)layoutSubviews;
- (void)linkViewNeedsResize:(id)resize;
- (void)setAccessibilityLabel:(id)label;
@end

@implementation LinkConfigurationCell

- (NSString)accessibilityLabel
{
  _objc_retain(self);
  sub_10034570C();
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
  sub_1003458F4();
  _objc_release(self);
}

- (void)linkViewNeedsResize:(id)resize
{
  _objc_retain(resize);
  _objc_retain(self);
  sub_100346584();
  _objc_release(self);
  _objc_release(resize);
}

- (void)_linkViewMetadataDidBecomeComplete:(id)complete
{
  _objc_retain(complete);
  _objc_retain(self);
  sub_100346584();
  _objc_release(self);
  _objc_release(complete);
}

@end