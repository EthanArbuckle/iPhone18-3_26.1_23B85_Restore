@interface AXMutableReplayableGesture
- (id)_forcesByFingerIdentifierAtEventIndex:(unint64_t)index;
- (id)_pointsByFingerIdentifierAtEventIndex:(unint64_t)index;
- (void)_addPoint:(CGPoint)point force:(double)force forFingerIdentifier:(id)identifier atEventIndex:(unint64_t)index;
- (void)_addPoint:(CGPoint)point force:(double)force forFingerIdentifier:(id)identifier atTime:(double)time;
- (void)_removeFingersAtEventIndex:(unint64_t)index;
- (void)addPointsByFingerIdentifier:(id)identifier forces:(id)forces atTime:(double)time;
- (void)addPointsFromReplayableGesture:(id)gesture;
@end

@implementation AXMutableReplayableGesture

- (void)addPointsByFingerIdentifier:(id)identifier forces:(id)forces atTime:(double)time
{
  v19[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  forcesCopy = forces;
  v10 = forcesCopy;
  if (identifierCopy)
  {
    v11 = forcesCopy == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    _AXAssert();
  }

  if (!self->super._allEvents)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    allEvents = self->super._allEvents;
    self->super._allEvents = v16;

    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v12)
  {
LABEL_12:
    v13 = self->super._allEvents;
    v18[0] = @"Time";
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:time];
    v19[0] = v14;
    v19[1] = identifierCopy;
    v18[1] = @"Fingers";
    v18[2] = @"Forces";
    v19[2] = v10;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
    [(NSArray *)v13 addObject:v15];
  }

LABEL_13:
}

- (void)addPointsFromReplayableGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = gestureCopy;
  if (gestureCopy)
  {
    allEvents = self->super._allEvents;
    v9 = v5;
    if (allEvents)
    {
      gestureCopy = [(NSArray *)allEvents addObjectsFromArray:v5[1]];
    }

    else
    {
      v7 = [v5[1] mutableCopy];
      v8 = self->super._allEvents;
      self->super._allEvents = v7;
    }

    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](gestureCopy, v5);
}

- (void)_addPoint:(CGPoint)point force:(double)force forFingerIdentifier:(id)identifier atTime:(double)time
{
  y = point.y;
  x = point.x;
  v26[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  allEvents = self->super._allEvents;
  if (!allEvents)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = self->super._allEvents;
    self->super._allEvents = v13;

    allEvents = self->super._allEvents;
  }

  v25[0] = @"Time";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  v26[0] = v15;
  v25[1] = @"Fingers";
  v23 = identifierCopy;
  v16 = [MEMORY[0x1E696B098] axValueWithCGPoint:{x, y}];
  v24 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26[1] = v17;
  v25[2] = @"Forces";
  v21 = identifierCopy;
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:force];
  v22 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v26[2] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
  [(NSArray *)allEvents addObject:v20];
}

- (void)_addPoint:(CGPoint)point force:(double)force forFingerIdentifier:(id)identifier atEventIndex:(unint64_t)index
{
  y = point.y;
  x = point.x;
  v23[3] = *MEMORY[0x1E69E9840];
  allEvents = self->super._allEvents;
  identifierCopy = identifier;
  v13 = [(NSArray *)allEvents objectAtIndexedSubscript:index];
  v14 = [v13 objectForKeyedSubscript:@"Fingers"];
  v15 = [v14 mutableCopy];

  v16 = [MEMORY[0x1E696B098] axValueWithCGPoint:{x, y}];
  [v15 setObject:v16 forKeyedSubscript:identifierCopy];

  v17 = [v13 objectForKeyedSubscript:@"Forces"];
  v18 = [v17 mutableCopy];

  v19 = [MEMORY[0x1E696AD98] numberWithDouble:force];
  [v18 setObject:v19 forKeyedSubscript:identifierCopy];

  v22[0] = @"Fingers";
  v22[1] = @"Forces";
  v23[0] = v15;
  v23[1] = v18;
  v22[2] = @"Time";
  v20 = [v13 objectForKeyedSubscript:?];
  v23[2] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  [(NSArray *)self->super._allEvents setObject:v21 atIndexedSubscript:index];
}

- (void)_removeFingersAtEventIndex:(unint64_t)index
{
  v9[3] = *MEMORY[0x1E69E9840];
  v5 = [(NSArray *)self->super._allEvents objectAtIndexedSubscript:?];
  v8[0] = @"Fingers";
  v8[1] = @"Forces";
  v9[0] = MEMORY[0x1E695E0F8];
  v9[1] = MEMORY[0x1E695E0F8];
  v8[2] = @"Time";
  v6 = [v5 objectForKeyedSubscript:?];
  v9[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  [(NSArray *)self->super._allEvents setObject:v7 atIndexedSubscript:index];
}

- (id)_pointsByFingerIdentifierAtEventIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->super._allEvents objectAtIndexedSubscript:index];
  v4 = [v3 objectForKeyedSubscript:@"Fingers"];

  return v4;
}

- (id)_forcesByFingerIdentifierAtEventIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->super._allEvents objectAtIndexedSubscript:index];
  v4 = [v3 objectForKeyedSubscript:@"Forces"];

  return v4;
}

@end