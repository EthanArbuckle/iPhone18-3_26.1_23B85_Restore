@interface StateOfMindAssetView
- (BOOL)isAccessibilityElement;
- (NSString)accessibilityValue;
- (int64_t)accessibilityContainerType;
- (void)layoutSubviews;
- (void)setAccessibilityValue:(id)a3;
- (void)userInterfaceStyleChanged;
@end

@implementation StateOfMindAssetView

- (BOOL)isAccessibilityElement
{
  v2 = self;
  v3 = sub_1000F67F4();

  return v3 & 1;
}

- (int64_t)accessibilityContainerType
{
  v2 = self;
  v3 = sub_1000F6968();

  return v3;
}

- (NSString)accessibilityValue
{
  v2 = self;
  sub_1000F6B24();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityValue:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = self;
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for StateOfMindAssetView();
  [(StateOfMindAssetView *)&v7 setAccessibilityValue:v5];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1000F7980();
}

- (void)userInterfaceStyleChanged
{
  v2 = self;
  sub_1000F7BD4();
}

@end