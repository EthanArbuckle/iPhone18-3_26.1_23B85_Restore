@interface GCControllerTouchpad
- (BOOL)determineTouchStateWithDigitizerX:(float)a3 digitizerY:(float)a4 touchDown:(BOOL)a5;
- (CGPoint)addCGPoint:(CGPoint)a3 toPoint:(CGPoint)a4;
- (CGPoint)clampPoint:(CGPoint)a3 toLength:(double)a4;
- (CGPoint)mulCGPoint:(CGPoint)a3 byScalar:(double)a4;
- (CGPoint)normalizeCGPoint:(CGPoint)a3;
- (CGPoint)scaleCGPoint:(CGPoint)a3 toLength:(double)a4;
- (CGPoint)subCGPoint:(CGPoint)a3 fromPoint:(CGPoint)a4;
- (GCControllerTouchpad)initWithCoder:(id)a3;
- (GCControllerTouchpad)initWithDescriptionName:(id)a3;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)reportDigitizerChange:(id)a3;
@end

@implementation GCControllerTouchpad

- (GCControllerTouchpad)initWithDescriptionName:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = GCControllerTouchpad;
  v5 = [(GCControllerElement *)&v15 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = v4;
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

- (GCControllerTouchpad)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GCControllerTouchpad;
  v5 = [(GCControllerElement *)&v9 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"_touchpadRelativeWindowSize"];
    v5->_touchpadRelativeWindowSize = v6;
    [v4 decodeFloatForKey:@"_touchpadRelativeOriginBufferRadius"];
    v5->_touchpadRelativeOriginBufferSize = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  touchpadRelativeWindowSize = self->_touchpadRelativeWindowSize;
  v7 = a3;
  *&v5 = touchpadRelativeWindowSize;
  [v7 encodeFloat:@"_touchpadRelativeWindowSize" forKey:v5];
  *&v6 = self->_touchpadRelativeOriginBufferSize;
  [v7 encodeFloat:@"_touchpadRelativeOriginBufferSize" forKey:v6];
}

- (void)reportDigitizerChange:(id)a3
{
  v4 = a3;
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
  v11 = [(GCControllerButtonInput *)self->_button isPressed];
  self->_previousButtonState = v10;
  touchState = self->_touchState;
  switch(touchState)
  {
    case 0:
      v23 = [(GCControllerDirectionPad *)self->_touchSurface xAxis];
      [v23 _setValue:v4 queue:0.0];

      v24 = [(GCControllerDirectionPad *)self->_touchSurface yAxis];
      [v24 _setValue:v4 queue:0.0];

      v17 = v25;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v18 = __46__GCControllerTouchpad_reportDigitizerChange___block_invoke_3;
      goto LABEL_10;
    case 2:
      v19 = [(GCControllerDirectionPad *)self->_touchSurface xAxis];
      *&v20 = v7;
      [v19 _setValue:v4 queue:v20];

      v21 = [(GCControllerDirectionPad *)self->_touchSurface yAxis];
      *&v22 = v8;
      [v21 _setValue:v4 queue:v22];

      v17 = v26;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v18 = __46__GCControllerTouchpad_reportDigitizerChange___block_invoke_2;
      goto LABEL_10;
    case 1:
      v13 = [(GCControllerDirectionPad *)self->_touchSurface xAxis];
      *&v14 = v7;
      [v13 _setValue:v4 queue:v14];

      v15 = [(GCControllerDirectionPad *)self->_touchSurface yAxis];
      *&v16 = v8;
      [v15 _setValue:v4 queue:v16];

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
      *(v17 + 60) = v11;
      dispatch_async(v4, v17);
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

- (BOOL)determineTouchStateWithDigitizerX:(float)a3 digitizerY:(float)a4 touchDown:(BOOL)a5
{
  touchState = self->_touchState;
  if (touchState)
  {
    v6 = 0;
  }

  else
  {
    v6 = a5;
  }

  v7 = touchState == 1 && a5;
  if (v6 || v7 || (v8 = self->_touchState, !a5))
  {
    v9 = !v7;
    v10 = 1;
    if (!v9)
    {
      v10 = 2;
    }

    if (a5)
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
    v11 = !a5;
  }

  return !v11 && (v8 != 2 || self->_absolutePosition.x != a3 || self->_absolutePosition.y != a4);
}

- (CGPoint)normalizeCGPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(GCControllerTouchpad *)self magnitudeForCGPoint:?];
  v6 = y / v5;
  v7 = x / v5;
  result.y = v6;
  result.x = v7;
  return result;
}

- (CGPoint)scaleCGPoint:(CGPoint)a3 toLength:(double)a4
{
  [(GCControllerTouchpad *)self normalizeCGPoint:a3.x, a3.y];
  v6 = v5 * a4;
  v8 = v7 * a4;
  result.y = v8;
  result.x = v6;
  return result;
}

- (CGPoint)addCGPoint:(CGPoint)a3 toPoint:(CGPoint)a4
{
  v4 = a3.x + a4.x;
  v5 = a3.y + a4.y;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)subCGPoint:(CGPoint)a3 fromPoint:(CGPoint)a4
{
  v4 = a4.x - a3.x;
  v5 = a4.y - a3.y;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)mulCGPoint:(CGPoint)a3 byScalar:(double)a4
{
  v4 = a3.x * a4;
  v5 = a3.y * a4;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)clampPoint:(CGPoint)a3 toLength:(double)a4
{
  y = a3.y;
  x = a3.x;
  [(GCControllerTouchpad *)self magnitudeForCGPoint:?];
  if (v7 > a4)
  {
    x = x / v7 * a4;
    y = y / v7 * a4;
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
  v7 = [(GCControllerTouchpad *)self button];
  if ([v7 isPressed])
  {
    v8 = @"Pressed";
  }

  else
  {
    v8 = @"Not Pressed";
  }

  v9 = [(GCControllerTouchpad *)self touchSurface];
  v10 = [v5 stringWithFormat:@"%@ (%@, %@, %@)", descriptionName, v4, v8, v9];

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