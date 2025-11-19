@interface TCTouchpad
- (CGPoint)offset;
- (CGPoint)position;
- (CGSize)size;
- (TCTouchController)touchController;
- (TCTouchpad)initWithDescriptor:(id)a3 touchController:(id)a4;
- (void)_calculatePosition;
- (void)_calculateSize;
- (void)collectQuadDataInto:(id)a3;
- (void)handleTouchBeganAtPoint:(CGPoint)a3;
- (void)handleTouchEndedAtPoint:(CGPoint)a3;
- (void)handleTouchMovedAtPoint:(CGPoint)a3;
- (void)layoutIfNeeded;
- (void)resetDeltas;
@end

@implementation TCTouchpad

- (TCTouchpad)initWithDescriptor:(id)a3 touchController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = TCTouchpad;
  v8 = [(TCTouchpad *)&v29 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_touchController, v7);
    v9->_enabled = 1;
    v10 = [v6 contents];
    contents = v9->_contents;
    v9->_contents = v10;

    v9->_anchor = [v6 anchor];
    v9->_anchorCoordinateSystem = [v6 anchorCoordinateSystem];
    [v6 offset];
    v9->_offset.x = v12;
    v9->_offset.y = v13;
    v9->_zIndex = [v6 zIndex];
    [v6 size];
    v9->_size.width = v14;
    v9->_size.height = v15;
    [v6 highlightDuration];
    v9->_highlightDuration = v16;
    v17 = [v6 label];
    label = v9->_label;
    v9->_label = v17;

    v9->_reportsRelativeValues = [v6 reportsRelativeValues];
    if ([v6 colliderShape])
    {
      if ([v6 colliderShape] != 1)
      {
        if ([v6 colliderShape] == 2)
        {
          v22 = [TCRegionCollider alloc];
          WeakRetained = objc_loadWeakRetained(&v9->_touchController);
          v23 = v22;
          v24 = 0;
        }

        else
        {
          if ([v6 colliderShape] != 3)
          {
LABEL_13:
            [(TCTouchpad *)v9 _calculateSize];
            [(TCTouchpad *)v9 _calculatePosition];
            goto LABEL_14;
          }

          v25 = [TCRegionCollider alloc];
          WeakRetained = objc_loadWeakRetained(&v9->_touchController);
          v23 = v25;
          v24 = 1;
        }

        v26 = [(TCRegionCollider *)v23 initWithRegion:v24 TouchController:WeakRetained];
        collider = v9->_collider;
        v9->_collider = v26;

LABEL_12:
        goto LABEL_13;
      }

      v19 = TCRectCollider;
    }

    else
    {
      v19 = TCCircleCollider;
    }

    v20 = [[v19 alloc] initWithControlLayout:v9];
    WeakRetained = v9->_collider;
    v9->_collider = v20;
    goto LABEL_12;
  }

LABEL_14:

  return v9;
}

- (void)_calculateSize
{
  if ([(TCCollider *)self->_collider colliderShape]== 2 || [(TCCollider *)self->_collider colliderShape]== 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_touchController);
    [WeakRetained size];
    v5 = v4;

    v6 = objc_loadWeakRetained(&self->_touchController);
    [v6 size];
    v8 = v7;

    self->_size.width = v5 * 0.5 + -20.0;
    self->_size.height = (v8 + -20.0);
    self->_anchor = 4;
    v9 = [(TCCollider *)self->_collider colliderShape];
    v10 = 0.25;
    if (v9 == 2)
    {
      v10 = -0.25;
    }

    self->_offset.x = (v10 * v5);
    self->_offset.y = 0.0;
  }
}

- (void)_calculatePosition
{
  WeakRetained = objc_loadWeakRetained(&self->_touchController);
  [WeakRetained offsetForAnchor:self->_anchor anchorCoordinateSystem:self->_anchorCoordinateSystem];
  v7 = v5;
  v8 = v4;

  v6.f64[0] = v8;
  v6.f64[1] = v7;
  self->_position = vaddq_f64(v6, self->_offset);
}

- (void)layoutIfNeeded
{
  [(TCTouchpad *)self _calculateSize];

  [(TCTouchpad *)self _calculatePosition];
}

- (void)resetDeltas
{
  if (self->_reportsRelativeValues && self->pressed)
  {
    WeakRetained = objc_loadWeakRetained(&self->_touchController);
    [WeakRetained _setDirectionPadPosition:self->_label forControl:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  }
}

- (void)handleTouchBeganAtPoint:(CGPoint)a3
{
  if (!self->pressed)
  {
    self->pressed = 1;
    self->_touchStartPos = a3;
    self->_touchPrevPos = self->_touchStartPos;
    [(TCTouchpad *)self processTouch:?];
  }
}

- (void)handleTouchMovedAtPoint:(CGPoint)a3
{
  if (self->pressed)
  {
    [(TCTouchpad *)self processTouch:a3.x, a3.y];
  }
}

- (void)handleTouchEndedAtPoint:(CGPoint)a3
{
  if (self->pressed)
  {
    self->pressed = 0;
    WeakRetained = objc_loadWeakRetained(&self->_touchController);
    [WeakRetained _setDirectionPadPosition:self->_label forControl:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  }
}

- (void)collectQuadDataInto:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_enabled)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [(TCControlContents *)self->_contents images];
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * v9);
          v11 = objc_opt_new();
          x = self->_position.x;
          [v10 offset];
          v14 = x + v13;
          y = self->_position.y;
          [v10 offset];
          [v11 setPosition:{v14, y + v16}];
          [v10 size];
          [v11 setSize:?];
          [v11 setTintColor:{objc_msgSend(v10, "tintColor")}];
          [(TCTouchpad *)self highlightIntensity];
          [v11 setHighlightIntensity:?];
          v17 = [v10 texture];
          [v11 setTexture:v17];

          v18 = [v10 highlightTexture];
          [v11 setHighlightTexture:v18];

          [v4 addObject:v11];
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
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

- (TCTouchController)touchController
{
  WeakRetained = objc_loadWeakRetained(&self->_touchController);

  return WeakRetained;
}

@end