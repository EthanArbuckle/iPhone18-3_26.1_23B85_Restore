@interface VerticallyScalingLayoutContext
- (VerticallyScalingLayoutContext)initWithContainer:(id)container;
- (id)verticallyScaleView:(id)view attribute:(int64_t)attribute withRatio:(double)ratio;
@end

@implementation VerticallyScalingLayoutContext

- (id)verticallyScaleView:(id)view attribute:(int64_t)attribute withRatio:(double)ratio
{
  v6 = [NSLayoutConstraint constraintWithItem:view attribute:attribute relatedBy:0 toItem:self->_container attribute:4 multiplier:ratio constant:0.0];
  [(MapsAutoLayoutContext *)self addConstraint:v6];

  return v6;
}

- (VerticallyScalingLayoutContext)initWithContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = VerticallyScalingLayoutContext;
  v6 = [(MapsAutoLayoutContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, container);
  }

  return v7;
}

@end