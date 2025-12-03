@interface TodayCardInfoLayerView
- (NSString)accessibilityLabel;
- (double)_continuousCornerRadius;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
@end

@implementation TodayCardInfoLayerView

- (double)_continuousCornerRadius
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  [(TodayCardInfoLayerView *)&v3 _continuousCornerRadius];
  return result;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TodayCardInfoLayerView *)&v5 _setContinuousCornerRadius:radius];
  sub_1000A3894();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000A6820();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1000A71C4(event, x, y);

  return v10;
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_1005504B4();
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

- (void)setAccessibilityLabel:(id)label
{
  ObjectType = swift_getObjectType();
  if (label)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    label = String._bridgeToObjectiveC()();
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TodayCardInfoLayerView *)&v8 setAccessibilityLabel:label];
}

@end