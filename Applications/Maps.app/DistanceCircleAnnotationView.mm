@interface DistanceCircleAnnotationView
- (void)_updateFromMap;
- (void)setDistanceRadius:(double)radius;
@end

@implementation DistanceCircleAnnotationView

- (void)_updateFromMap
{
  [(DistanceCircleAnnotationView *)self _pointsForDistance:self->_distanceRadius];
  [(CircleAnnotationView *)self setRadius:?];
  v3.receiver = self;
  v3.super_class = DistanceCircleAnnotationView;
  [(DistanceCircleAnnotationView *)&v3 _updateFromMap];
}

- (void)setDistanceRadius:(double)radius
{
  self->_distanceRadius = radius;
  [(DistanceCircleAnnotationView *)self _pointsForDistance:?];

  [(CircleAnnotationView *)self setRadius:?];
}

@end