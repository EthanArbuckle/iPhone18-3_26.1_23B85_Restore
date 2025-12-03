@interface MonthWorkoutIndicator
+ (id)filledWorkoutCircleWithSize:(CGSize)size;
+ (id)fitnessColors;
- (MonthWorkoutIndicator)init;
- (void)layoutSublayers;
- (void)setHasWorkout:(BOOL)workout;
@end

@implementation MonthWorkoutIndicator

- (MonthWorkoutIndicator)init
{
  v6.receiver = self;
  v6.super_class = MonthWorkoutIndicator;
  v2 = [(MonthWorkoutIndicator *)&v6 init];
  if (v2)
  {
    v3 = +[CALayer layer];
    backgroundLayer = v2->_backgroundLayer;
    v2->_backgroundLayer = v3;

    [(CALayer *)v2->_backgroundLayer setFrame:0.0, 0.0, 40.0, 40.0];
    [(MonthWorkoutIndicator *)v2 addSublayer:v2->_backgroundLayer];
  }

  return v2;
}

- (void)setHasWorkout:(BOOL)workout
{
  self->_hasWorkout = workout;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(CALayer *)self->_backgroundLayer setHidden:!self->_hasWorkout];

  +[CATransaction commit];
}

- (void)layoutSublayers
{
  v7.receiver = self;
  v7.super_class = MonthWorkoutIndicator;
  [(MonthWorkoutIndicator *)&v7 layoutSublayers];
  [(MonthWorkoutIndicator *)self bounds];
  [(CALayer *)self->_backgroundLayer setFrame:?];
  v3 = objc_opt_class();
  [(MonthWorkoutIndicator *)self bounds];
  v6 = [v3 filledWorkoutCircleWithSize:{v4, v5}];
  -[CALayer setContents:](self->_backgroundLayer, "setContents:", [v6 CGImage]);
}

+ (id)filledWorkoutCircleWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (*&xmmword_1008F9968 != size.width || *(&xmmword_1008F9968 + 1) != size.height)
  {
    xmmword_1008F9968 = size;
    UIGraphicsBeginImageContextWithOptions(size, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = width;
    v20.size.height = height;
    MidX = CGRectGetMidX(v20);
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = width;
    v21.size.height = height;
    MidY = CGRectGetMidY(v21);
    CGContextAddArc(CurrentContext, MidX, MidY, (width + -1.0) * 0.5, 0.0, 6.28318531, 1);
    CGContextClip(CurrentContext);
    fitnessColors = [objc_opt_class() fitnessColors];
    gradientLightColor = [fitnessColors gradientLightColor];
    gradientDarkColor = [fitnessColors gradientDarkColor];
    v12 = [ARUIMetricColors newGradientForStartColor:gradientLightColor endColor:gradientDarkColor];

    v18.y = 0.0;
    v18.x = width * 0.5;
    v19.x = width * 0.5;
    v19.y = height;
    CGContextDrawLinearGradient(CurrentContext, v12, v18, v19, 0);
    CGGradientRelease(v12);
    v13 = UIGraphicsGetImageFromCurrentImageContext();
    v14 = qword_1008F9960;
    qword_1008F9960 = v13;

    UIGraphicsEndImageContext();
  }

  v15 = qword_1008F9960;

  return v15;
}

+ (id)fitnessColors
{
  v2 = qword_1008F9978;
  if (!qword_1008F9978)
  {
    v3 = +[ARUIMetricColors keyColors];
    v4 = qword_1008F9978;
    qword_1008F9978 = v3;

    v2 = qword_1008F9978;
  }

  return v2;
}

@end