@interface PKFadeOutStrokeAnimation
- (BOOL)isDoneAtTime:(double)a3;
- (PKFadeOutStrokeAnimation)initWithStroke:(id)a3 startTime:(double)a4 duration:(double)a5;
- (id)newStrokeAtTime:(double)a3;
@end

@implementation PKFadeOutStrokeAnimation

- (PKFadeOutStrokeAnimation)initWithStroke:(id)a3 startTime:(double)a4 duration:(double)a5
{
  v9 = a3;
  v16.receiver = self;
  v16.super_class = PKFadeOutStrokeAnimation;
  v10 = [(PKFadeOutStrokeAnimation *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_stroke, a3);
    v11->_startTime = a4;
    v12 = [v9 ink];
    v13 = [v12 color];
    startColor = v11->_startColor;
    v11->_startColor = v13;

    v11->_duration = a5;
  }

  return v11;
}

- (id)newStrokeAtTime:(double)a3
{
  v5 = [(PKFadeOutStrokeAnimation *)self stroke];
  v6 = [v5 mutableCopy];

  [(PKFadeOutStrokeAnimation *)self startTime];
  v8 = a3 - v7;
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
  v14 = [(PKFadeOutStrokeAnimation *)self stroke];
  v15 = [v14 ink];
  v16 = [v15 identifier];
  v17 = [(PKFadeOutStrokeAnimation *)self stroke];
  v18 = [v17 ink];
  [v18 weight];
  v19 = [PKInk inkWithIdentifier:v16 color:v13 weight:?];
  [v6 setInk:v19];

  return v6;
}

- (BOOL)isDoneAtTime:(double)a3
{
  [(PKFadeOutStrokeAnimation *)self startTime];
  v6 = v5;
  [(PKFadeOutStrokeAnimation *)self duration];
  return v6 + v7 <= a3;
}

@end