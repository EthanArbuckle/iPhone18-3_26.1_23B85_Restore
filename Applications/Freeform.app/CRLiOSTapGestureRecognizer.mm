@interface CRLiOSTapGestureRecognizer
- (CGPoint)firstTapLocation;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  allTouches = [eventCopy allTouches];
  v9 = [allTouches count];
  numberOfTouchesRequired = [(CRLiOSTapGestureRecognizer *)self numberOfTouchesRequired];

  if (v9 <= numberOfTouchesRequired)
  {
    v17.receiver = self;
    v17.super_class = CRLiOSTapGestureRecognizer;
    [(CRLiOSTapGestureRecognizer *)&v17 touchesBegan:beganCopy withEvent:eventCopy];
    anyObject = [beganCopy anyObject];
    if (!self->_savedFirstTapLocation)
    {
      view = [(CRLiOSTapGestureRecognizer *)self view];
      [(CRLiOSTapGestureRecognizer *)self locationInView:view];
      self->_firstTapLocation.x = v15;
      self->_firstTapLocation.y = v16;

      self->_savedFirstTapLocation = 1;
    }

    self->_tapCount = [anyObject tapCount];
    self->_touchTypeForTap = [anyObject type];
  }

  else
  {
    if ([(CRLiOSTapGestureRecognizer *)self state])
    {
      selfCopy2 = self;
      v12 = 4;
    }

    else
    {
      selfCopy2 = self;
      v12 = 5;
    }

    [(CRLiOSTapGestureRecognizer *)selfCopy2 setState:v12];
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