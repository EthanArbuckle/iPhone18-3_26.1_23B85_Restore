@interface TCTouchpad
- (CGPoint)offset;
- (CGPoint)position;
- (CGSize)size;
- (TCTouchController)touchController;
- (TCTouchpad)initWithDescriptor:(id)descriptor touchController:(id)controller;
- (void)_calculatePosition;
- (void)_calculateSize;
- (void)collectQuadDataInto:(id)into;
- (void)handleTouchBeganAtPoint:(CGPoint)point;
- (void)handleTouchEndedAtPoint:(CGPoint)point;
- (void)handleTouchMovedAtPoint:(CGPoint)point;
- (void)layoutIfNeeded;
- (void)resetDeltas;
@end

@implementation TCTouchpad

- (TCTouchpad)initWithDescriptor:(id)descriptor touchController:(id)controller
{
  descriptorCopy = descriptor;
  controllerCopy = controller;
  v29.receiver = self;
  v29.super_class = TCTouchpad;
  v8 = [(TCTouchpad *)&v29 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_touchController, controllerCopy);
    v9->_enabled = 1;
    contents = [descriptorCopy contents];
    contents = v9->_contents;
    v9->_contents = contents;

    v9->_anchor = [descriptorCopy anchor];
    v9->_anchorCoordinateSystem = [descriptorCopy anchorCoordinateSystem];
    [descriptorCopy offset];
    v9->_offset.x = v12;
    v9->_offset.y = v13;
    v9->_zIndex = [descriptorCopy zIndex];
    [descriptorCopy size];
    v9->_size.width = v14;
    v9->_size.height = v15;
    [descriptorCopy highlightDuration];
    v9->_highlightDuration = v16;
    label = [descriptorCopy label];
    label = v9->_label;
    v9->_label = label;

    v9->_reportsRelativeValues = [descriptorCopy reportsRelativeValues];
    if ([descriptorCopy colliderShape])
    {
      if ([descriptorCopy colliderShape] != 1)
      {
        if ([descriptorCopy colliderShape] == 2)
        {
          v22 = [TCRegionCollider alloc];
          WeakRetained = objc_loadWeakRetained(&v9->_touchController);
          v23 = v22;
          v24 = 0;
        }

        else
        {
          if ([descriptorCopy colliderShape] != 3)
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
    colliderShape = [(TCCollider *)self->_collider colliderShape];
    v10 = 0.25;
    if (colliderShape == 2)
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

- (void)handleTouchBeganAtPoint:(CGPoint)point
{
  if (!self->pressed)
  {
    self->pressed = 1;
    self->_touchStartPos = point;
    self->_touchPrevPos = self->_touchStartPos;
    [(TCTouchpad *)self processTouch:?];
  }
}

- (void)handleTouchMovedAtPoint:(CGPoint)point
{
  if (self->pressed)
  {
    [(TCTouchpad *)self processTouch:point.x, point.y];
  }
}

- (void)handleTouchEndedAtPoint:(CGPoint)point
{
  if (self->pressed)
  {
    self->pressed = 0;
    WeakRetained = objc_loadWeakRetained(&self->_touchController);
    [WeakRetained _setDirectionPadPosition:self->_label forControl:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  }
}

- (void)collectQuadDataInto:(id)into
{
  v25 = *MEMORY[0x277D85DE8];
  intoCopy = into;
  if (self->_enabled)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    images = [(TCControlContents *)self->_contents images];
    v6 = [images countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(images);
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
          texture = [v10 texture];
          [v11 setTexture:texture];

          highlightTexture = [v10 highlightTexture];
          [v11 setHighlightTexture:highlightTexture];

          [intoCopy addObject:v11];
          ++v9;
        }

        while (v7 != v9);
        v7 = [images countByEnumeratingWithState:&v20 objects:v24 count:16];
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