@interface CLKGaugeSegment
- (CLKGaugeSegment)initWithColor:(id)a3 state:(int64_t)a4;
@end

@implementation CLKGaugeSegment

- (CLKGaugeSegment)initWithColor:(id)a3 state:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CLKGaugeSegment;
  v8 = [(CLKGaugeSegment *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_color, a3);
    v9->_state = a4;
  }

  return v9;
}

@end