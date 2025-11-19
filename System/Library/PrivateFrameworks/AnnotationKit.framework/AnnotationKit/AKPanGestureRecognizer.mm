@interface AKPanGestureRecognizer
- (CGPoint)locationOfFirstTouch;
- (CGPoint)locationOfFirstTouchInView:(id)a3;
- (id)accumulatedTouches;
- (unint64_t)additionalNumberOfTouches;
- (void)_checkTouchForStylus:(id)a3;
- (void)reset;
- (void)resetAccumulatedTouches;
- (void)resetAdditionalTouches;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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

- (void)_checkTouchForStylus:(id)a3
{
  if ([a3 type] == 2)
  {

    [(AKPanGestureRecognizer *)self setPenGestureDetected:1];
  }
}

- (id)accumulatedTouches
{
  v3 = [(AKPanGestureRecognizer *)self currentAccumulatedTouches];

  if (v3)
  {
    v4 = [(AKPanGestureRecognizer *)self currentAccumulatedTouches];
    v5 = [v4 copy];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)resetAccumulatedTouches
{
  v2 = [(AKPanGestureRecognizer *)self currentAccumulatedTouches];
  [v2 removeAllObjects];
}

- (void)resetAdditionalTouches
{
  v2 = [(AKPanGestureRecognizer *)self additionalTouches];
  [v2 removeAllObjects];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 anyObject];
  [(AKPanGestureRecognizer *)self _checkTouchForStylus:v8];
  [v8 force];
  [(AKPanGestureRecognizer *)self setCurrentWeight:?];
  [v8 maximumPossibleForce];
  [(AKPanGestureRecognizer *)self setCurrentMaxWeight:?];
  v9 = [(AKPanGestureRecognizer *)self view];
  [v8 locationInView:v9];
  [(AKPanGestureRecognizer *)self setLocationOfFirstTouch:?];

  v10 = [(AKPanGestureRecognizer *)self currentAccumulatedTouches];

  if (!v10)
  {
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    [(AKPanGestureRecognizer *)self setCurrentAccumulatedTouches:v11];
  }

  v12 = [(AKPanGestureRecognizer *)self currentAccumulatedTouches];
  v13 = [v7 coalescedTouchesForTouch:v8];
  [v12 addObjectsFromArray:v13];

  if ([(AKPanGestureRecognizer *)self state]== 2)
  {
    v14 = [(AKPanGestureRecognizer *)self additionalTouches];

    if (!v14)
    {
      v15 = objc_opt_new();
      [(AKPanGestureRecognizer *)self setAdditionalTouches:v15];
    }

    v16 = [(AKPanGestureRecognizer *)self additionalTouches];
    [v16 unionSet:v6];
  }

  v17.receiver = self;
  v17.super_class = AKPanGestureRecognizer;
  [(AKPanGestureRecognizer *)&v17 touchesBegan:v6 withEvent:v7];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 anyObject];
  [(AKPanGestureRecognizer *)self _checkTouchForStylus:v8];
  [v8 force];
  [(AKPanGestureRecognizer *)self setCurrentWeight:?];
  [v8 maximumPossibleForce];
  [(AKPanGestureRecognizer *)self setCurrentMaxWeight:?];
  v9 = [(AKPanGestureRecognizer *)self currentAccumulatedTouches];
  v10 = [v6 coalescedTouchesForTouch:v8];
  [v9 addObjectsFromArray:v10];

  v11.receiver = self;
  v11.super_class = AKPanGestureRecognizer;
  [(AKPanGestureRecognizer *)&v11 touchesMoved:v7 withEvent:v6];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 anyObject];
  [v8 force];
  [(AKPanGestureRecognizer *)self setCurrentWeight:?];
  [v8 maximumPossibleForce];
  [(AKPanGestureRecognizer *)self setCurrentMaxWeight:?];
  v9 = [(AKPanGestureRecognizer *)self currentAccumulatedTouches];
  v10 = [v6 coalescedTouchesForTouch:v8];
  [v9 addObjectsFromArray:v10];

  v11 = [(AKPanGestureRecognizer *)self additionalTouches];
  [v11 minusSet:v7];

  v12.receiver = self;
  v12.super_class = AKPanGestureRecognizer;
  [(AKPanGestureRecognizer *)&v12 touchesEnded:v7 withEvent:v6];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 anyObject];
  [(AKPanGestureRecognizer *)self setPenGestureDetected:0];
  [v8 force];
  [(AKPanGestureRecognizer *)self setCurrentWeight:?];
  [v8 maximumPossibleForce];
  [(AKPanGestureRecognizer *)self setCurrentMaxWeight:?];
  v9 = [(AKPanGestureRecognizer *)self currentAccumulatedTouches];
  v10 = [v6 coalescedTouchesForTouch:v8];
  [v9 addObjectsFromArray:v10];

  v11 = [(AKPanGestureRecognizer *)self additionalTouches];
  [v11 minusSet:v7];

  v12.receiver = self;
  v12.super_class = AKPanGestureRecognizer;
  [(AKPanGestureRecognizer *)&v12 touchesCancelled:v7 withEvent:v6];
}

- (unint64_t)additionalNumberOfTouches
{
  v2 = [(AKPanGestureRecognizer *)self additionalTouches];
  v3 = [v2 count];

  return v3;
}

- (CGPoint)locationOfFirstTouchInView:(id)a3
{
  v4 = a3;
  v5 = [(AKPanGestureRecognizer *)self view];
  [(AKPanGestureRecognizer *)self locationOfFirstTouch];
  [v5 convertPoint:v4 toView:?];
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