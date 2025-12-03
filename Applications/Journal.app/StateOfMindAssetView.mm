@interface StateOfMindAssetView
- (BOOL)isAccessibilityElement;
- (NSString)accessibilityValue;
- (int64_t)accessibilityContainerType;
- (void)layoutSubviews;
- (void)setAccessibilityValue:(id)value;
- (void)userInterfaceStyleChanged;
@end

@implementation StateOfMindAssetView

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v3 = sub_1000F67F4();

  return v3 & 1;
}

- (int64_t)accessibilityContainerType
{
  selfCopy = self;
  v3 = sub_1000F6968();

  return v3;
}

- (NSString)accessibilityValue
{
  selfCopy = self;
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

- (void)setAccessibilityValue:(id)value
{
  if (value)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for StateOfMindAssetView();
  [(StateOfMindAssetView *)&v7 setAccessibilityValue:v5];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000F7980();
}

- (void)userInterfaceStyleChanged
{
  selfCopy = self;
  sub_1000F7BD4();
}

@end