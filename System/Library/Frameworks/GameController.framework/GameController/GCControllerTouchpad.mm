@interface GCControllerTouchpad
- (BOOL)determineTouchStateWithDigitizerX:(float)x digitizerY:(float)y touchDown:(BOOL)down;
- (CGPoint)addCGPoint:(CGPoint)point toPoint:(CGPoint)toPoint;
- (CGPoint)clampPoint:(CGPoint)point toLength:(double)length;
- (CGPoint)mulCGPoint:(CGPoint)point byScalar:(double)scalar;
- (CGPoint)normalizeCGPoint:(CGPoint)point;
- (CGPoint)scaleCGPoint:(CGPoint)point toLength:(double)length;
- (CGPoint)subCGPoint:(CGPoint)point fromPoint:(CGPoint)fromPoint;
- (GCControllerTouchpad)initWithCoder:(id)coder;
- (GCControllerTouchpad)initWithDescriptionName:(id)name;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)reportDigitizerChange:(id)change;
@end

@implementation GCControllerTouchpad

- (GCControllerTouchpad)initWithDescriptionName:(id)name
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = GCControllerTouchpad;
  v5 = [(GCControllerElement *)&v15 init];
  v6 = v5;
  if (v5)
  {
    if (nameCopy)
    {
      v7 = nameCopy;
    }

    else
    {
      v7 = @"Touchpad";
    }

    objc_storeStrong(&v5->_descriptionName, v7);
    [(GCControllerElement *)v6 setPrimaryAlias:v6->_descriptionName];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v6->_descriptionName, @"Surface"];
    v9 = [[GCControllerDirectionPad alloc] initWithDigital:0 descriptionName:v8];
    touchSurface = v6->_touchSurface;
    v6->_touchSurface = v9;

    [(GCControllerElement *)v6->_touchSurface setCollection:v6];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v6->_descriptionName, @"Button"];
    v12 = [[GCControllerButtonInput alloc] initWithDescriptionName:v11];
    button = v6->_button;
    v6->_button = v12;

    [(GCControllerButtonInput *)v6->_button setTouchedAndValueDistinct:1];
    [(GCControllerElement *)v6->_button setCollection:v6];
    v6->_touchState = 0;
    v6->_touchpadRelativeWindowSize = 0.5;
    v6->_touchpadRelativeOriginBufferSize = 0.225;
    v6->_reportsAbsoluteTouchSurfaceValues = 1;
    v6->_previousButtonState = 0.0;
    [(GCControllerButtonInput *)v6->_button setNonAnalog:1];
  }

  return v6;
}

- (GCControllerTouchpad)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = GCControllerTouchpad;
  v5 = [(GCControllerElement *)&v9 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"_touchpadRelativeWindowSize"];
    v5->_touchpadRelativeWindowSize = v6;
    [coderCopy decodeFloatForKey:@"_touchpadRelativeOriginBufferRadius"];
    v5->_touchpadRelativeOriginBufferSize = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  touchpadRelativeWindowSize = self->_touchpadRelativeWindowSize;
  coderCopy = coder;
  *&v5 = touchpadRelativeWindowSize;
  [coderCopy encodeFloat:@"_touchpadRelativeWindowSize" forKey:v5];
  *&v6 = self->_touchpadRelativeOriginBufferSize;
  [coderCopy encodeFloat:@"_touchpadRelativeOriginBufferSize" forKey:v6];
}

- (void)reportDigitizerChange:(id)change
{
  changeCopy = change;
  if (self->_reportsAbsoluteTouchSurfaceValues)
  {
    v5 = &OBJC_IVAR___GCControllerTouchpad__absolutePosition;
  }

  else
  {
    v5 = &OBJC_IVAR___GCControllerTouchpad__relativePosition;
  }

  v6 = (self + *v5);
  v7 = *v6;
  v8 = v6[1];
  [(GCControllerButtonInput *)self->_button value];
  v10 = v9;
  isPressed = [(GCControllerButtonInput *)self->_button isPressed];
  self->_previousButtonState = v10;
  touchState = self->_touchState;
  switch(touchState)
  {
    case 0:
      xAxis = [(GCControllerDirectionPad *)self->_touchSurface xAxis];
      [xAxis _setValue:changeCopy queue:0.0];

      yAxis = [(GCControllerDirectionPad *)self->_touchSurface yAxis];
      [yAxis _setValue:changeCopy queue:0.0];

      v17 = v25;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v18 = __46__GCControllerTouchpad_reportDigitizerChange___block_invoke_3;
      goto LABEL_10;
    case 2:
      xAxis2 = [(GCControllerDirectionPad *)self->_touchSurface xAxis];
      *&v20 = v7;
      [xAxis2 _setValue:changeCopy queue:v20];

      yAxis2 = [(GCControllerDirectionPad *)self->_touchSurface yAxis];
      *&v22 = v8;
      [yAxis2 _setValue:changeCopy queue:v22];

      v17 = v26;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v18 = __46__GCControllerTouchpad_reportDigitizerChange___block_invoke_2;
      goto LABEL_10;
    case 1:
      xAxis3 = [(GCControllerDirectionPad *)self->_touchSurface xAxis];
      *&v14 = v7;
      [xAxis3 _setValue:changeCopy queue:v14];

      yAxis3 = [(GCControllerDirectionPad *)self->_touchSurface yAxis];
      *&v16 = v8;
      [yAxis3 _setValue:changeCopy queue:v16];

      v17 = v27;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v18 = __46__GCControllerTouchpad_reportDigitizerChange___block_invoke;
LABEL_10:
      *(v17 + 2) = v18;
      *(v17 + 3) = &unk_1E8419DB0;
      *(v17 + 4) = self;
      v17[5] = v7;
      v17[6] = v8;
      *(v17 + 14) = v10;
      *(v17 + 60) = isPressed;
      dispatch_async(changeCopy, v17);
      break;
  }
}

void __46__GCControllerTouchpad_reportDigitizerChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) touchDown];

  if (v2)
  {
    v5 = [*(a1 + 32) touchDown];
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    (*(v5 + 2))(v5, *(a1 + 32), *(a1 + 60), v3, v4, *(a1 + 56));
  }
}

void __46__GCControllerTouchpad_reportDigitizerChange___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) touchMoved];

  if (v2)
  {
    v5 = [*(a1 + 32) touchMoved];
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    (*(v5 + 2))(v5, *(a1 + 32), *(a1 + 60), v3, v4, *(a1 + 56));
  }
}

void __46__GCControllerTouchpad_reportDigitizerChange___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) touchUp];

  if (v2)
  {
    v5 = [*(a1 + 32) touchUp];
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    (*(v5 + 2))(v5, *(a1 + 32), *(a1 + 60), v3, v4, *(a1 + 56));
  }
}

- (BOOL)determineTouchStateWithDigitizerX:(float)x digitizerY:(float)y touchDown:(BOOL)down
{
  touchState = self->_touchState;
  if (touchState)
  {
    downCopy = 0;
  }

  else
  {
    downCopy = down;
  }

  v7 = touchState == 1 && down;
  if (downCopy || v7 || (v8 = self->_touchState, !down))
  {
    v9 = !v7;
    v10 = 1;
    if (!v9)
    {
      v10 = 2;
    }

    if (down)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }

    self->_touchState = v8;
  }

  if (touchState)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v11 = !down;
  }

  return !v11 && (v8 != 2 || self->_absolutePosition.x != x || self->_absolutePosition.y != y);
}

- (CGPoint)normalizeCGPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(GCControllerTouchpad *)self magnitudeForCGPoint:?];
  v6 = y / v5;
  v7 = x / v5;
  result.y = v6;
  result.x = v7;
  return result;
}

- (CGPoint)scaleCGPoint:(CGPoint)point toLength:(double)length
{
  [(GCControllerTouchpad *)self normalizeCGPoint:point.x, point.y];
  v6 = v5 * length;
  v8 = v7 * length;
  result.y = v8;
  result.x = v6;
  return result;
}

- (CGPoint)addCGPoint:(CGPoint)point toPoint:(CGPoint)toPoint
{
  v4 = point.x + toPoint.x;
  v5 = point.y + toPoint.y;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)subCGPoint:(CGPoint)point fromPoint:(CGPoint)fromPoint
{
  v4 = fromPoint.x - point.x;
  v5 = fromPoint.y - point.y;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)mulCGPoint:(CGPoint)point byScalar:(double)scalar
{
  v4 = point.x * scalar;
  v5 = point.y * scalar;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)clampPoint:(CGPoint)point toLength:(double)length
{
  y = point.y;
  x = point.x;
  [(GCControllerTouchpad *)self magnitudeForCGPoint:?];
  if (v7 > length)
  {
    x = x / v7 * length;
    y = y / v7 * length;
  }

  v8 = x;
  v9 = y;
  result.y = v9;
  result.x = v8;
  return result;
}

- (id)description
{
  touchState = self->_touchState;
  if (touchState > 2)
  {
    v4 = &stru_1F4E3B4E0;
  }

  else
  {
    v4 = off_1E8419DD0[touchState];
  }

  v5 = MEMORY[0x1E696AEC0];
  descriptionName = self->_descriptionName;
  button = [(GCControllerTouchpad *)self button];
  if ([button isPressed])
  {
    v8 = @"Pressed";
  }

  else
  {
    v8 = @"Not Pressed";
  }

  touchSurface = [(GCControllerTouchpad *)self touchSurface];
  v10 = [v5 stringWithFormat:@"%@ (%@, %@, %@)", descriptionName, v4, v8, touchSurface];

  return v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCControllerTouchpad *)self description];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, v6];

  return v7;
}

@end