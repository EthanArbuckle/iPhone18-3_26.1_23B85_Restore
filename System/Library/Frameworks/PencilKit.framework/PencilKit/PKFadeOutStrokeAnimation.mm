@interface PKFadeOutStrokeAnimation
- (BOOL)isDoneAtTime:(double)time;
- (PKFadeOutStrokeAnimation)initWithStroke:(id)stroke startTime:(double)time duration:(double)duration;
- (id)newStrokeAtTime:(double)time;
@end

@implementation PKFadeOutStrokeAnimation

- (PKFadeOutStrokeAnimation)initWithStroke:(id)stroke startTime:(double)time duration:(double)duration
{
  strokeCopy = stroke;
  v16.receiver = self;
  v16.super_class = PKFadeOutStrokeAnimation;
  v10 = [(PKFadeOutStrokeAnimation *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_stroke, stroke);
    v11->_startTime = time;
    v12 = [strokeCopy ink];
    color = [v12 color];
    startColor = v11->_startColor;
    v11->_startColor = color;

    v11->_duration = duration;
  }

  return v11;
}

- (id)newStrokeAtTime:(double)time
{
  stroke = [(PKFadeOutStrokeAnimation *)self stroke];
  v6 = [stroke mutableCopy];

  [(PKFadeOutStrokeAnimation *)self startTime];
  v8 = time - v7;
  [(PKFadeOutStrokeAnimation *)self duration];
  v10 = v8 / v9;
  if (v10 <= 1.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1.0;
  }

  [(UIColor *)self->_startColor alphaComponent];
  v13 = [(UIColor *)self->_startColor colorWithAlphaComponent:v12 * (1.0 - v11)];
  stroke2 = [(PKFadeOutStrokeAnimation *)self stroke];
  v15 = [stroke2 ink];
  identifier = [v15 identifier];
  stroke3 = [(PKFadeOutStrokeAnimation *)self stroke];
  v18 = [stroke3 ink];
  [v18 weight];
  v19 = [PKInk inkWithIdentifier:identifier color:v13 weight:?];
  [v6 setInk:v19];

  return v6;
}

- (BOOL)isDoneAtTime:(double)time
{
  [(PKFadeOutStrokeAnimation *)self startTime];
  v6 = v5;
  [(PKFadeOutStrokeAnimation *)self duration];
  return v6 + v7 <= time;
}

@end