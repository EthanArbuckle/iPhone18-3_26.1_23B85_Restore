@interface PDFPanGestureRecognizer
- (CGPoint)locationOfFirstTouch;
- (CGPoint)locationOfFirstTouchInView:(id)a3;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation PDFPanGestureRecognizer

- (void)reset
{
  [(PDFPanGestureRecognizer *)self setLocationOfFirstTouch:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v3.receiver = self;
  v3.super_class = PDFPanGestureRecognizer;
  [(PDFPanGestureRecognizer *)&v3 reset];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 anyObject];
  v9 = [(PDFPanGestureRecognizer *)self view];
  [v8 locationInView:v9];
  v11 = v10;
  v13 = v12;

  [(PDFPanGestureRecognizer *)self setLocationOfFirstTouch:v11, v13];
  v28.receiver = self;
  v28.super_class = PDFPanGestureRecognizer;
  [(PDFPanGestureRecognizer *)&v28 touchesBegan:v6 withEvent:v7];
  [(PDFPanGestureRecognizer *)self setDidForcePress:0];
  [(PDFPanGestureRecognizer *)self setTouchesDidHavePressure:0];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        [v19 force];
        v21 = v20;
        [v19 maximumPossibleForce];
        if (v21 / v22 >= 0.75)
        {
          [(PDFPanGestureRecognizer *)self setDidForcePress:1];
        }

        [v19 _pressure];
        if (v23 > 0.0)
        {
          [(PDFPanGestureRecognizer *)self setTouchesDidHavePressure:1];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v16);
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v17.receiver = self;
  v17.super_class = PDFPanGestureRecognizer;
  [(PDFPanGestureRecognizer *)&v17 touchesMoved:v6 withEvent:a4];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11) _pressure];
        if (v12 > 0.0)
        {
          [(PDFPanGestureRecognizer *)self setTouchesDidHavePressure:1];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v9);
  }
}

- (CGPoint)locationOfFirstTouchInView:(id)a3
{
  v4 = a3;
  v5 = [(PDFPanGestureRecognizer *)self view];
  [(PDFPanGestureRecognizer *)self locationOfFirstTouch];
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