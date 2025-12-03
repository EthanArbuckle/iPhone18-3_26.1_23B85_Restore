@interface AKPanGestureRecognizer
- (CGPoint)locationOfFirstTouch;
- (CGPoint)locationOfFirstTouchInView:(id)view;
- (id)accumulatedTouches;
- (unint64_t)additionalNumberOfTouches;
- (void)_checkTouchForStylus:(id)stylus;
- (void)reset;
- (void)resetAccumulatedTouches;
- (void)resetAdditionalTouches;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation AKPanGestureRecognizer

- (void)reset
{
  [(AKPanGestureRecognizer *)self setCurrentWeight:0.5];
  [(AKPanGestureRecognizer *)self setCurrentMaxWeight:0.0];
  [(AKPanGestureRecognizer *)self resetAccumulatedTouches];
  [(AKPanGestureRecognizer *)self resetAdditionalTouches];
  [(AKPanGestureRecognizer *)self setLocationOfFirstTouch:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(AKPanGestureRecognizer *)self setPenGestureDetected:0];
  v3.receiver = self;
  v3.super_class = AKPanGestureRecognizer;
  [(AKPanGestureRecognizer *)&v3 reset];
}

- (void)_checkTouchForStylus:(id)stylus
{
  if ([stylus type] == 2)
  {

    [(AKPanGestureRecognizer *)self setPenGestureDetected:1];
  }
}

- (id)accumulatedTouches
{
  currentAccumulatedTouches = [(AKPanGestureRecognizer *)self currentAccumulatedTouches];

  if (currentAccumulatedTouches)
  {
    currentAccumulatedTouches2 = [(AKPanGestureRecognizer *)self currentAccumulatedTouches];
    v5 = [currentAccumulatedTouches2 copy];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)resetAccumulatedTouches
{
  currentAccumulatedTouches = [(AKPanGestureRecognizer *)self currentAccumulatedTouches];
  [currentAccumulatedTouches removeAllObjects];
}

- (void)resetAdditionalTouches
{
  additionalTouches = [(AKPanGestureRecognizer *)self additionalTouches];
  [additionalTouches removeAllObjects];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  anyObject = [beganCopy anyObject];
  [(AKPanGestureRecognizer *)self _checkTouchForStylus:anyObject];
  [anyObject force];
  [(AKPanGestureRecognizer *)self setCurrentWeight:?];
  [anyObject maximumPossibleForce];
  [(AKPanGestureRecognizer *)self setCurrentMaxWeight:?];
  view = [(AKPanGestureRecognizer *)self view];
  [anyObject locationInView:view];
  [(AKPanGestureRecognizer *)self setLocationOfFirstTouch:?];

  currentAccumulatedTouches = [(AKPanGestureRecognizer *)self currentAccumulatedTouches];

  if (!currentAccumulatedTouches)
  {
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    [(AKPanGestureRecognizer *)self setCurrentAccumulatedTouches:v11];
  }

  currentAccumulatedTouches2 = [(AKPanGestureRecognizer *)self currentAccumulatedTouches];
  v13 = [eventCopy coalescedTouchesForTouch:anyObject];
  [currentAccumulatedTouches2 addObjectsFromArray:v13];

  if ([(AKPanGestureRecognizer *)self state]== 2)
  {
    additionalTouches = [(AKPanGestureRecognizer *)self additionalTouches];

    if (!additionalTouches)
    {
      v15 = objc_opt_new();
      [(AKPanGestureRecognizer *)self setAdditionalTouches:v15];
    }

    additionalTouches2 = [(AKPanGestureRecognizer *)self additionalTouches];
    [additionalTouches2 unionSet:beganCopy];
  }

  v17.receiver = self;
  v17.super_class = AKPanGestureRecognizer;
  [(AKPanGestureRecognizer *)&v17 touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  movedCopy = moved;
  anyObject = [movedCopy anyObject];
  [(AKPanGestureRecognizer *)self _checkTouchForStylus:anyObject];
  [anyObject force];
  [(AKPanGestureRecognizer *)self setCurrentWeight:?];
  [anyObject maximumPossibleForce];
  [(AKPanGestureRecognizer *)self setCurrentMaxWeight:?];
  currentAccumulatedTouches = [(AKPanGestureRecognizer *)self currentAccumulatedTouches];
  v10 = [eventCopy coalescedTouchesForTouch:anyObject];
  [currentAccumulatedTouches addObjectsFromArray:v10];

  v11.receiver = self;
  v11.super_class = AKPanGestureRecognizer;
  [(AKPanGestureRecognizer *)&v11 touchesMoved:movedCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  endedCopy = ended;
  anyObject = [endedCopy anyObject];
  [anyObject force];
  [(AKPanGestureRecognizer *)self setCurrentWeight:?];
  [anyObject maximumPossibleForce];
  [(AKPanGestureRecognizer *)self setCurrentMaxWeight:?];
  currentAccumulatedTouches = [(AKPanGestureRecognizer *)self currentAccumulatedTouches];
  v10 = [eventCopy coalescedTouchesForTouch:anyObject];
  [currentAccumulatedTouches addObjectsFromArray:v10];

  additionalTouches = [(AKPanGestureRecognizer *)self additionalTouches];
  [additionalTouches minusSet:endedCopy];

  v12.receiver = self;
  v12.super_class = AKPanGestureRecognizer;
  [(AKPanGestureRecognizer *)&v12 touchesEnded:endedCopy withEvent:eventCopy];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  cancelledCopy = cancelled;
  anyObject = [cancelledCopy anyObject];
  [(AKPanGestureRecognizer *)self setPenGestureDetected:0];
  [anyObject force];
  [(AKPanGestureRecognizer *)self setCurrentWeight:?];
  [anyObject maximumPossibleForce];
  [(AKPanGestureRecognizer *)self setCurrentMaxWeight:?];
  currentAccumulatedTouches = [(AKPanGestureRecognizer *)self currentAccumulatedTouches];
  v10 = [eventCopy coalescedTouchesForTouch:anyObject];
  [currentAccumulatedTouches addObjectsFromArray:v10];

  additionalTouches = [(AKPanGestureRecognizer *)self additionalTouches];
  [additionalTouches minusSet:cancelledCopy];

  v12.receiver = self;
  v12.super_class = AKPanGestureRecognizer;
  [(AKPanGestureRecognizer *)&v12 touchesCancelled:cancelledCopy withEvent:eventCopy];
}

- (unint64_t)additionalNumberOfTouches
{
  additionalTouches = [(AKPanGestureRecognizer *)self additionalTouches];
  v3 = [additionalTouches count];

  return v3;
}

- (CGPoint)locationOfFirstTouchInView:(id)view
{
  viewCopy = view;
  view = [(AKPanGestureRecognizer *)self view];
  [(AKPanGestureRecognizer *)self locationOfFirstTouch];
  [view convertPoint:viewCopy toView:?];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)locationOfFirstTouch
{
  x = self->_locationOfFirstTouch.x;
  y = self->_locationOfFirstTouch.y;
  result.y = y;
  result.x = x;
  return result;
}

@end