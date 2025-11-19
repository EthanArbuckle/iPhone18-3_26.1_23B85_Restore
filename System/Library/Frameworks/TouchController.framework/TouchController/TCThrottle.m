@interface TCThrottle
- (CGPoint)offset;
- (CGPoint)position;
- (CGSize)indicatorSize;
- (CGSize)size;
- (CGSize)throttleSize;
- (TCThrottle)initWithDescriptor:(id)a3 touchController:(id)a4;
- (TCTouchController)touchController;
- (id)jsonObject;
- (void)_calculateIndicatorPosition;
- (void)_calculatePosition;
- (void)collectQuadDataInto:(id)a3;
- (void)handleTouchBeganAtPoint:(CGPoint)a3;
- (void)handleTouchEndedAtPoint:(CGPoint)a3;
- (void)handleTouchMovedAtPoint:(CGPoint)a3;
- (void)processTouch:(CGPoint)a3;
@end

@implementation TCThrottle

- (TCThrottle)initWithDescriptor:(id)a3 touchController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = TCThrottle;
  v8 = [(TCThrottle *)&v31 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_touchController, v7);
    v9->_enabled = 1;
    v10 = [v6 backgroundContents];
    backgroundContents = v9->_backgroundContents;
    v9->_backgroundContents = v10;

    v12 = [v6 indicatorContents];
    indicatorContents = v9->_indicatorContents;
    v9->_indicatorContents = v12;

    v9->_anchor = [v6 anchor];
    v9->_anchorCoordinateSystem = [v6 anchorCoordinateSystem];
    [v6 offset];
    v9->_offset.x = v14;
    v9->_offset.y = v15;
    v9->_zIndex = [v6 zIndex];
    [v6 size];
    v9->_size.width = v16;
    v9->_size.height = v17;
    [v6 indicatorSize];
    v9->_indicatorSize.width = v18;
    v9->_indicatorSize.height = v19;
    [v6 throttleSize];
    v9->_throttleSize.width = v20;
    v9->_throttleSize.height = v21;
    [v6 highlightDuration];
    v9->_highlightDuration = v22;
    v23 = [v6 label];
    label = v9->_label;
    v9->_label = v23;

    v9->_orientation = [v6 orientation];
    v9->_snapsToBaseValue = [v6 snapsToBaseValue];
    if ([v6 colliderShape])
    {
      if ([v6 colliderShape] != 1)
      {
LABEL_7:
        [v6 baseValue];
        v9->_baseValue = v28;
        v9->_lastValue = v28;
        [(TCThrottle *)v9 _calculatePosition];
        WeakRetained = objc_loadWeakRetained(&v9->_touchController);
        [WeakRetained _setButtonValue:v9->_label forControl:v9->_baseValue];

        goto LABEL_8;
      }

      v25 = off_278B6B2E0;
    }

    else
    {
      v25 = off_278B6B2B0;
    }

    v26 = [objc_alloc(*v25) initWithControlLayout:v9];
    collider = v9->_collider;
    v9->_collider = v26;

    goto LABEL_7;
  }

LABEL_8:

  return v9;
}

- (void)_calculatePosition
{
  WeakRetained = objc_loadWeakRetained(&self->_touchController);
  [WeakRetained offsetForAnchor:self->_anchor anchorCoordinateSystem:self->_anchorCoordinateSystem];
  v5 = v4;
  v7 = v6;

  v8 = v5 + self->_offset.x;
  v9 = v7 + self->_offset.y;
  self->_position.x = v8;
  self->_position.y = v9;
  self->_center.x = v8;
  self->_center.y = v9;

  [(TCThrottle *)self _calculateIndicatorPosition];
}

- (void)_calculateIndicatorPosition
{
  if (self->_orientation == 1)
  {
    y = self->_position.y;
    v3 = self->_throttleSize.width - self->_indicatorSize.width * 0.5;
    x = self->_center.x - v3 * 0.5 + v3 * self->_lastValue;
  }

  else
  {
    v5 = self->_throttleSize.height - self->_indicatorSize.height * 0.5;
    x = self->_position.x;
    y = self->_center.y + v5 * 0.5 - v5 * self->_lastValue;
  }

  self->_indicatorPosition.x = x;
  self->_indicatorPosition.y = y;
}

- (void)processTouch:(CGPoint)a3
{
  if (self->_orientation == 1)
  {
    v4 = self->_throttleSize.width - self->_indicatorSize.width * 0.5;
    x = self->_center.x;
    if (a3.x < x - v4 * 0.5)
    {
      a3.x = x - v4 * 0.5;
    }

    if (a3.x >= x + v4 * 0.5)
    {
      a3.x = x + v4 * 0.5;
    }

    v6 = (a3.x - x - v4 * 0.5) / v4;
    v7 = 1.0;
    v8 = v6 + 1.0;
  }

  else
  {
    v9 = self->_throttleSize.height - self->_indicatorSize.height * 0.5;
    y = self->_center.y;
    v11 = y - v9 * 0.5;
    if (a3.y < v11)
    {
      a3.y = y - v9 * 0.5;
    }

    if (a3.y >= y + v9 * 0.5)
    {
      a3.y = y + v9 * 0.5;
    }

    v12 = (a3.y - v11) / v9;
    v7 = 1.0;
    v8 = 1.0 - v12;
  }

  if (v8 > v7)
  {
    v8 = v7;
  }

  if (v8 >= 0.0)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0.0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_touchController);
  [WeakRetained _setButtonValue:self->_label forControl:v13];

  self->_lastValue = v13;
}

- (void)handleTouchBeganAtPoint:(CGPoint)a3
{
  if (!self->pressed)
  {
    self->pressed = 1;
    self->highlightIntensity = 1.0;
    [(TCThrottle *)self processTouch:a3.x, a3.y];

    [(TCThrottle *)self _calculateIndicatorPosition];
  }
}

- (void)handleTouchMovedAtPoint:(CGPoint)a3
{
  if (self->pressed)
  {
    [(TCThrottle *)self processTouch:a3.x, a3.y];

    [(TCThrottle *)self _calculateIndicatorPosition];
  }
}

- (void)handleTouchEndedAtPoint:(CGPoint)a3
{
  if (self->pressed)
  {
    self->pressed = 0;
    if (self->_snapsToBaseValue)
    {
      self->_lastValue = self->_baseValue;
      WeakRetained = objc_loadWeakRetained(&self->_touchController);
      [WeakRetained _setButtonValue:self->_label forControl:self->_lastValue];
    }

    [(TCThrottle *)self _calculateIndicatorPosition];
  }
}

- (void)collectQuadDataInto:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_enabled)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = [(TCControlContents *)self->_backgroundContents images];
    v6 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v37;
      do
      {
        v9 = 0;
        do
        {
          if (*v37 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v36 + 1) + 8 * v9);
          v11 = objc_opt_new();
          x = self->_center.x;
          [v10 offset];
          v14 = x + v13;
          y = self->_center.y;
          [v10 offset];
          [v11 setPosition:{v14, y + v16}];
          [v10 size];
          [v11 setSize:?];
          [v11 setTintColor:{objc_msgSend(v10, "tintColor")}];
          [v11 setHighlightIntensity:0.0];
          v17 = [v10 texture];
          [v11 setTexture:v17];

          [v4 addObject:v11];
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v7);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = [(TCControlContents *)self->_indicatorContents images];
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      do
      {
        v22 = 0;
        do
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v32 + 1) + 8 * v22);
          v24 = objc_opt_new();
          v25 = self->_indicatorPosition.x;
          [v23 offset];
          v27 = v25 + v26;
          v28 = self->_indicatorPosition.y;
          [v23 offset];
          [v24 setPosition:{v27, v28 + v29}];
          [v23 size];
          [v24 setSize:?];
          [v24 setTintColor:{objc_msgSend(v23, "tintColor")}];
          [(TCThrottle *)self highlightIntensity];
          [v24 setHighlightIntensity:?];
          v30 = [v23 texture];
          [v24 setTexture:v30];

          [v4 addObject:v24];
          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v20);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)indicatorSize
{
  width = self->_indicatorSize.width;
  height = self->_indicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)throttleSize
{
  width = self->_throttleSize.width;
  height = self->_throttleSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (TCTouchController)touchController
{
  WeakRetained = objc_loadWeakRetained(&self->_touchController);

  return WeakRetained;
}

- (id)jsonObject
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"size";
  v2 = JSONDictionaryFromCGSize(self->_size.width, self->_size.height);
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end