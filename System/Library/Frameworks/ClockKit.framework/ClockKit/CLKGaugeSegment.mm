@interface CLKGaugeSegment
- (CLKGaugeSegment)initWithColor:(id)color state:(int64_t)state;
@end

@implementation CLKGaugeSegment

- (CLKGaugeSegment)initWithColor:(id)color state:(int64_t)state
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = CLKGaugeSegment;
  v8 = [(CLKGaugeSegment *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_color, color);
    v9->_state = state;
  }

  return v9;
}

@end