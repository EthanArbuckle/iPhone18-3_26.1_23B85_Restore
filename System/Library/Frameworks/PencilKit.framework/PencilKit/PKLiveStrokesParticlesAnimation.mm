@interface PKLiveStrokesParticlesAnimation
- (BOOL)isDoneAtTime:(double)time;
- (CGRect)bounds;
- (CGRect)destinationFrame;
- (PKLiveStrokesParticlesAnimation)initWithStrokes:(id)strokes startTime:(double)time duration:(double)duration destinationFrame:(CGRect)frame;
- (void)_calculateBounds;
@end

@implementation PKLiveStrokesParticlesAnimation

- (PKLiveStrokesParticlesAnimation)initWithStrokes:(id)strokes startTime:(double)time duration:(double)duration destinationFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  strokesCopy = strokes;
  v18.receiver = self;
  v18.super_class = PKLiveStrokesParticlesAnimation;
  v14 = [(PKLiveStrokesParticlesAnimation *)&v18 init];
  if (v14)
  {
    v15 = [strokesCopy copy];
    strokes = v14->_strokes;
    v14->_strokes = v15;

    v14->_startTime = time;
    v14->_duration = duration;
    v14->_destinationFrame.origin.x = x;
    v14->_destinationFrame.origin.y = y;
    v14->_destinationFrame.size.width = width;
    v14->_destinationFrame.size.height = height;
    [(PKLiveStrokesParticlesAnimation *)v14 _calculateBounds];
  }

  return v14;
}

- (void)_calculateBounds
{
  v21 = *MEMORY[0x1E69E9840];
  x = self->_destinationFrame.origin.x;
  y = self->_destinationFrame.origin.y;
  width = self->_destinationFrame.size.width;
  height = self->_destinationFrame.size.height;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_strokes;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v16 + 1) + 8 * v11) _bounds];
        v24.origin.x = v12;
        v24.origin.y = v13;
        v24.size.width = v14;
        v24.size.height = v15;
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        v23 = CGRectUnion(v22, v24);
        x = v23.origin.x;
        y = v23.origin.y;
        width = v23.size.width;
        height = v23.size.height;
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  self->_bounds.origin.x = x;
  self->_bounds.origin.y = y;
  self->_bounds.size.width = width;
  self->_bounds.size.height = height;
}

- (BOOL)isDoneAtTime:(double)time
{
  [(PKLiveStrokesParticlesAnimation *)self startTime];
  v6 = v5;
  [(PKLiveStrokesParticlesAnimation *)self duration];
  return v6 + v7 <= time;
}

- (CGRect)destinationFrame
{
  x = self->_destinationFrame.origin.x;
  y = self->_destinationFrame.origin.y;
  width = self->_destinationFrame.size.width;
  height = self->_destinationFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end