@interface VerticallyScalingLayoutContext
- (VerticallyScalingLayoutContext)initWithContainer:(id)a3;
- (id)verticallyScaleView:(id)a3 attribute:(int64_t)a4 withRatio:(double)a5;
@end

@implementation VerticallyScalingLayoutContext

- (id)verticallyScaleView:(id)a3 attribute:(int64_t)a4 withRatio:(double)a5
{
  v6 = [NSLayoutConstraint constraintWithItem:a3 attribute:a4 relatedBy:0 toItem:self->_container attribute:4 multiplier:a5 constant:0.0];
  [(MapsAutoLayoutContext *)self addConstraint:v6];

  return v6;
}

- (VerticallyScalingLayoutContext)initWithContainer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VerticallyScalingLayoutContext;
  v6 = [(MapsAutoLayoutContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, a3);
  }

  return v7;
}

@end