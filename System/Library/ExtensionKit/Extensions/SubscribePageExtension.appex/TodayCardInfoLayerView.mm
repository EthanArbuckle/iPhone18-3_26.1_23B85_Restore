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
  sub_10056880C();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100569C14();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_10056A5B8(event, x, y);

  return v10;
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_1006787A8();
  v4 = v3;

  if (v4)
  {
    v5 = sub_100753064();
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
    sub_100753094();
    selfCopy = self;
    label = sub_100753064();
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