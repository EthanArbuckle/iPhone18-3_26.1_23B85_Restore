@interface CRLiOSTapGestureRecognizer
- (CGPoint)firstTapLocation;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation CRLiOSTapGestureRecognizer

- (void)reset
{
  self->_tapCount = 0;
  self->_firstTapLocation = CGPointZero;
  self->_savedFirstTapLocation = 0;
  self->_touchTypeForTap = 0;
  v2.receiver = self;
  v2.super_class = CRLiOSTapGestureRecognizer;
  [(CRLiOSTapGestureRecognizer *)&v2 reset];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 allTouches];
  v9 = [v8 count];
  v10 = [(CRLiOSTapGestureRecognizer *)self numberOfTouchesRequired];

  if (v9 <= v10)
  {
    v17.receiver = self;
    v17.super_class = CRLiOSTapGestureRecognizer;
    [(CRLiOSTapGestureRecognizer *)&v17 touchesBegan:v6 withEvent:v7];
    v13 = [v6 anyObject];
    if (!self->_savedFirstTapLocation)
    {
      v14 = [(CRLiOSTapGestureRecognizer *)self view];
      [(CRLiOSTapGestureRecognizer *)self locationInView:v14];
      self->_firstTapLocation.x = v15;
      self->_firstTapLocation.y = v16;

      self->_savedFirstTapLocation = 1;
    }

    self->_tapCount = [v13 tapCount];
    self->_touchTypeForTap = [v13 type];
  }

  else
  {
    if ([(CRLiOSTapGestureRecognizer *)self state])
    {
      v11 = self;
      v12 = 4;
    }

    else
    {
      v11 = self;
      v12 = 5;
    }

    [(CRLiOSTapGestureRecognizer *)v11 setState:v12];
  }
}

- (CGPoint)firstTapLocation
{
  x = self->_firstTapLocation.x;
  y = self->_firstTapLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end