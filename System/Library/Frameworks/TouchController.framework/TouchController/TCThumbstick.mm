@interface TCThumbstick
+ (id)descriptorForJsonDictionary:(id)dictionary;
- (CGPoint)offset;
- (CGPoint)position;
- (CGSize)size;
- (CGSize)stickSize;
- (GCSJSONObject)jsonObject;
- (TCThumbstick)initWithDescriptor:(id)descriptor touchController:(id)controller;
- (TCTouchController)touchController;
- (void)_calculatePosition;
- (void)collectQuadDataInto:(id)into;
- (void)handleTouchBeganAtPoint:(CGPoint)point;
- (void)handleTouchEndedAtPoint:(CGPoint)point;
- (void)handleTouchMovedAtPoint:(CGPoint)point;
- (void)processTouch:(CGPoint)touch;
- (void)setThumbstickPos:(CGPoint)pos center:(CGPoint)center;
@end

@implementation TCThumbstick

- (TCThumbstick)initWithDescriptor:(id)descriptor touchController:(id)controller
{
  descriptorCopy = descriptor;
  controllerCopy = controller;
  v34.receiver = self;
  v34.super_class = TCThumbstick;
  v8 = [(TCThumbstick *)&v34 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_touchController, controllerCopy);
    v9->_enabled = 1;
    v9->_hidesWhenNotPressed = [descriptorCopy hidesWhenNotPressed];
    backgroundContents = [descriptorCopy backgroundContents];
    backgroundContents = v9->_backgroundContents;
    v9->_backgroundContents = backgroundContents;

    stickContents = [descriptorCopy stickContents];
    stickContents = v9->_stickContents;
    v9->_stickContents = stickContents;

    v9->_anchor = [descriptorCopy anchor];
    v9->_anchorCoordinateSystem = [descriptorCopy anchorCoordinateSystem];
    [descriptorCopy offset];
    v9->_offset.x = v14;
    v9->_offset.y = v15;
    v9->_zIndex = [descriptorCopy zIndex];
    [descriptorCopy size];
    v9->_size.width = v16;
    v9->_size.height = v17;
    [descriptorCopy stickSize];
    v9->_stickSize.width = v18;
    v9->_stickSize.height = v19;
    [descriptorCopy highlightDuration];
    v9->_highlightDuration = v20;
    label = [descriptorCopy label];
    label = v9->_label;
    v9->_label = label;

    v23 = v9->_stickSize.width + v9->_size.width;
    v9->_thumbstickDiameter = v23;
    v9->_thumbstickInnerDiameter = v23 * 0.33;
    v9->_thumbstickWorkZone = ((v23 * 0.33) * -0.5) + (v23 * 0.5);
    v9->_thumbstickDeadZone = 0.1;
    if ([descriptorCopy colliderShape])
    {
      if ([descriptorCopy colliderShape] != 1)
      {
        if ([descriptorCopy colliderShape] == 2)
        {
          v27 = [TCRegionCollider alloc];
          WeakRetained = objc_loadWeakRetained(&v9->_touchController);
          v28 = v27;
          v29 = 0;
        }

        else
        {
          if ([descriptorCopy colliderShape] != 3)
          {
LABEL_13:
            [(TCThumbstick *)v9 _calculatePosition];
            goto LABEL_14;
          }

          v30 = [TCRegionCollider alloc];
          WeakRetained = objc_loadWeakRetained(&v9->_touchController);
          v28 = v30;
          v29 = 1;
        }

        v31 = [(TCRegionCollider *)v28 initWithRegion:v29 TouchController:WeakRetained];
        collider = v9->_collider;
        v9->_collider = v31;

LABEL_12:
        goto LABEL_13;
      }

      v24 = TCRectCollider;
    }

    else
    {
      v24 = TCCircleCollider;
    }

    v25 = [[v24 alloc] initWithControlLayout:v9];
    WeakRetained = v9->_collider;
    v9->_collider = v25;
    goto LABEL_12;
  }

LABEL_14:

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
  self->_stickPosition.x = v8;
  self->_stickPosition.y = v9;
}

- (void)processTouch:(CGPoint)touch
{
  x = self->_center.x;
  y = self->_center.y;
  v5 = x + touch.x - self->_touchStartPos.x;
  v6 = y + touch.y - self->_touchStartPos.y;
  thumbstickWorkZone = self->_thumbstickWorkZone;
  v8 = v5 - x;
  v9 = v6 - y;
  v10 = v9 * v9 + v8 * v8;
  v11 = sqrtf(v10);
  if (v11 > thumbstickWorkZone)
  {
    v12 = (thumbstickWorkZone / v11);
    v13 = v8 * v12;
    v14 = v9 * v12;
    v5 = x + v13;
    v6 = y + v14;
  }

  self->_stickPosition.x = v5;
  self->_stickPosition.y = v6;
  [TCThumbstick setThumbstickPos:"setThumbstickPos:center:" center:?];
}

- (void)setThumbstickPos:(CGPoint)pos center:(CGPoint)center
{
  v5 = pos.x - center.x;
  thumbstickWorkZone = self->_thumbstickWorkZone;
  v7 = v5 / thumbstickWorkZone;
  v8 = -(pos.y - center.y) / thumbstickWorkZone;
  v9 = sqrtf((v8 * v8) + (v7 * v7));
  v10 = v9 < self->_thumbstickDeadZone;
  if (v9 >= self->_thumbstickDeadZone)
  {
    v11 = v8;
  }

  else
  {
    v9 = 0.0;
    v11 = 0.0;
  }

  if (v10)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v7;
  }

  self->_prevThumbstickMagnitude = v9;
  WeakRetained = objc_loadWeakRetained(&self->_touchController);
  [WeakRetained _setDirectionPadPosition:self->_label forControl:{v12, v11}];
}

- (void)handleTouchBeganAtPoint:(CGPoint)point
{
  if (!self->pressed)
  {
    self->_touchStartPos.x = point.x;
    self->pressed = 1;
    self->highlightIntensity = 1.0;
    self->_touchStartPos.y = point.y;
    touchStartPos = self->_touchStartPos;
    self->_touchPrevPos = touchStartPos;
    self->_stickPosition = touchStartPos;
    if (self->_hidesWhenNotPressed)
    {
      self->_center = self->_touchStartPos;
    }

    self->_prevThumbstickMagnitude = 0.0;
    [(TCThumbstick *)self processTouch:?];
  }
}

- (void)handleTouchMovedAtPoint:(CGPoint)point
{
  if (self->pressed)
  {
    [(TCThumbstick *)self processTouch:point.x, point.y];
  }
}

- (void)handleTouchEndedAtPoint:(CGPoint)point
{
  if (self->pressed)
  {
    self->pressed = 0;
    WeakRetained = objc_loadWeakRetained(&self->_touchController);
    [WeakRetained _setDirectionPadPosition:self->_label forControl:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

    if (!self->_hidesWhenNotPressed)
    {
      self->_stickPosition = self->_center;
    }
  }
}

- (void)collectQuadDataInto:(id)into
{
  v44 = *MEMORY[0x277D85DE8];
  intoCopy = into;
  if (self->_enabled)
  {
    if (!self->_hidesWhenNotPressed || self->pressed || ([(TCThumbstick *)self highlightIntensity], v5 > 0.005))
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      images = [(TCControlContents *)self->_backgroundContents images];
      v7 = [images countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v39;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v39 != v9)
            {
              objc_enumerationMutation(images);
            }

            v11 = *(*(&v38 + 1) + 8 * i);
            v12 = objc_opt_new();
            x = self->_center.x;
            [v11 offset];
            v15 = x + v14;
            y = self->_center.y;
            [v11 offset];
            [v12 setPosition:{v15, y + v17}];
            [v11 size];
            [v12 setSize:?];
            [v12 setTintColor:{objc_msgSend(v11, "tintColor")}];
            [v12 setHighlightIntensity:0.0];
            texture = [v11 texture];
            [v12 setTexture:texture];

            [intoCopy addObject:v12];
          }

          v8 = [images countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v8);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      images2 = [(TCControlContents *)self->_stickContents images];
      v20 = [images2 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v35;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(images2);
            }

            v24 = *(*(&v34 + 1) + 8 * j);
            v25 = objc_opt_new();
            v26 = self->_stickPosition.x;
            [v24 offset];
            v28 = v26 + v27;
            v29 = self->_stickPosition.y;
            [v24 offset];
            [v25 setPosition:{v28, v29 + v30}];
            [v24 size];
            [v25 setSize:?];
            [v25 setTintColor:{objc_msgSend(v24, "tintColor")}];
            v31 = 0.0;
            if (!self->_hidesWhenNotPressed)
            {
              [(TCThumbstick *)self highlightIntensity];
            }

            [v25 setHighlightIntensity:v31];
            texture2 = [v24 texture];
            [v25 setTexture:texture2];

            [intoCopy addObject:v25];
          }

          v21 = [images2 countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v21);
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
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

- (CGSize)stickSize
{
  width = self->_stickSize.width;
  height = self->_stickSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (TCTouchController)touchController
{
  WeakRetained = objc_loadWeakRetained(&self->_touchController);

  return WeakRetained;
}

+ (id)descriptorForJsonDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v5 = [dictionaryCopy objectForKeyedSubscript:@"size"];
  [v4 setSize:CGSizeFromJSONDictionary(v5)];

  v6 = [dictionaryCopy objectForKeyedSubscript:@"stickSize"];
  [v4 setStickSize:CGSizeFromJSONDictionary(v6)];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"offset"];
  [v4 setOffset:CGPointFromJSONDictionary(v7)];

  v8 = [TCControlLabel alloc];
  v9 = [dictionaryCopy objectForKey:@"label"];
  v10 = [(TCControlLabel *)v8 initWithJSONObject:v9];
  [v4 setLabel:v10];

  v11 = [dictionaryCopy objectForKey:@"hidesWhenNotPressed"];
  [v4 setHidesWhenNotPressed:{objc_msgSend(v11, "BOOLValue")}];
  v12 = [dictionaryCopy objectForKey:@"anchor"];
  [v4 setAnchor:{objc_msgSend(v12, "unsignedIntValue")}];
  v13 = [dictionaryCopy objectForKey:@"layer"];
  [v4 setZIndex:{objc_msgSend(v13, "unsignedIntValue")}];
  v14 = [dictionaryCopy objectForKey:@"colliderShape"];

  [v4 setColliderShape:{objc_msgSend(v14, "unsignedIntValue")}];

  return v4;
}

- (GCSJSONObject)jsonObject
{
  v16[9] = *MEMORY[0x277D85DE8];
  v15[0] = @"size";
  v3 = JSONDictionaryFromCGSize(self->_size.width, self->_size.height);
  v16[0] = v3;
  v15[1] = @"stickSize";
  v4 = JSONDictionaryFromCGSize(self->_stickSize.width, self->_stickSize.height);
  v16[1] = v4;
  v15[2] = @"offset";
  v5 = JSONDictionaryFromCGPoint(self->_offset.x, self->_offset.y);
  v16[2] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{self->_enabled, @"size", @"stickSize", @"offset", @"enabled"}];
  v16[3] = v6;
  v15[4] = @"hidesWhenNotPressed";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_hidesWhenNotPressed];
  v16[4] = v7;
  v15[5] = @"label";
  jsonObject = [(TCControlLabel *)self->_label jsonObject];
  v16[5] = jsonObject;
  v15[6] = @"anchor";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_anchor];
  v16[6] = v9;
  v15[7] = @"layer";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_zIndex];
  v16[7] = v10;
  v15[8] = @"colliderShape";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TCCollider colliderShape](self->_collider, "colliderShape")}];
  v16[8] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:9];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end