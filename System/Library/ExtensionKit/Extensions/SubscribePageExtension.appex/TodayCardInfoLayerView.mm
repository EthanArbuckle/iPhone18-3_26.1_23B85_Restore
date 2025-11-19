@interface TodayCardInfoLayerView
- (NSString)accessibilityLabel;
- (double)_continuousCornerRadius;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
@end

@implementation TodayCardInfoLayerView

- (double)_continuousCornerRadius
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  [(TodayCardInfoLayerView *)&v3 _continuousCornerRadius];
  return result;
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TodayCardInfoLayerView *)&v5 _setContinuousCornerRadius:a3];
  sub_10056880C();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100569C14();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_10056A5B8(a4, x, y);

  return v10;
}

- (NSString)accessibilityLabel
{
  v2 = self;
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

- (void)setAccessibilityLabel:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_100753094();
    v6 = self;
    a3 = sub_100753064();
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TodayCardInfoLayerView *)&v8 setAccessibilityLabel:a3];
}

@end