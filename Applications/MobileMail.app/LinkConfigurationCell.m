@interface LinkConfigurationCell
- (NSString)accessibilityLabel;
- (void)_linkViewMetadataDidBecomeComplete:(id)a3;
- (void)layoutSubviews;
- (void)linkViewNeedsResize:(id)a3;
- (void)setAccessibilityLabel:(id)a3;
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

- (void)setAccessibilityLabel:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(a3);
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

- (void)linkViewNeedsResize:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_100346584();
  _objc_release(self);
  _objc_release(a3);
}

- (void)_linkViewMetadataDidBecomeComplete:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_100346584();
  _objc_release(self);
  _objc_release(a3);
}

@end