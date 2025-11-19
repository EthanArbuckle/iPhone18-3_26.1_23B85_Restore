@interface DistanceCircleAnnotationView
- (void)_updateFromMap;
- (void)setDistanceRadius:(double)a3;
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

- (void)setDistanceRadius:(double)a3
{
  self->_distanceRadius = a3;
  [(DistanceCircleAnnotationView *)self _pointsForDistance:?];

  [(CircleAnnotationView *)self setRadius:?];
}

@end