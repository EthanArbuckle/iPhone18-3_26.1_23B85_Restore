@interface TCButton
+ (id)descriptorForJsonDictionary:(id)dictionary;
- (CGPoint)offset;
- (CGPoint)position;
- (CGSize)size;
- (GCSJSONObject)jsonObject;
- (TCButton)initWithDescriptor:(id)descriptor touchController:(id)controller;
- (TCTouchController)touchController;
- (void)_calculatePosition;
- (void)collectQuadDataInto:(id)into;
- (void)handleTouchBeganAtPoint:(CGPoint)point;
- (void)handleTouchEndedAtPoint:(CGPoint)point;
@end

@implementation TCButton

- (TCButton)initWithDescriptor:(id)descriptor touchController:(id)controller
{
  descriptorCopy = descriptor;
  controllerCopy = controller;
  v23.receiver = self;
  v23.super_class = TCButton;
  v8 = [(TCButton *)&v23 init];
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

    if ([descriptorCopy colliderShape])
    {
      if ([descriptorCopy colliderShape] != 1)
      {
LABEL_7:
        [(TCButton *)v9 _calculatePosition];
        goto LABEL_8;
      }

      v19 = off_278B6B2E0;
    }

    else
    {
      v19 = off_278B6B2B0;
    }

    v20 = [objc_alloc(*v19) initWithControlLayout:v9];
    collider = v9->_collider;
    v9->_collider = v20;

    goto LABEL_7;
  }

LABEL_8:

  return v9;
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

- (void)handleTouchBeganAtPoint:(CGPoint)point
{
  if (!self->pressed)
  {
    self->pressed = 1;
    self->highlightIntensity = 1.0;
    WeakRetained = objc_loadWeakRetained(&self->_touchController);
    [WeakRetained _setButtonValue:self->_label forControl:1.0];
  }
}

- (void)handleTouchEndedAtPoint:(CGPoint)point
{
  if (self->pressed)
  {
    WeakRetained = objc_loadWeakRetained(&self->_touchController);
    [WeakRetained _setButtonValue:self->_label forControl:0.0];

    self->pressed = 0;
  }
}

- (void)collectQuadDataInto:(id)into
{
  v27 = *MEMORY[0x277D85DE8];
  intoCopy = into;
  if (self->_enabled)
  {
    v5 = self->_contents;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v5;
    images = [(TCControlContents *)v5 images];
    v7 = [images countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(images);
          }

          v11 = *(*(&v22 + 1) + 8 * v10);
          v12 = objc_opt_new();
          x = self->_position.x;
          [v11 offset];
          v15 = x + v14;
          y = self->_position.y;
          [v11 offset];
          [v12 setPosition:{v15, y + v17}];
          [v11 size];
          [v12 setSize:?];
          [v12 setTintColor:{objc_msgSend(v11, "tintColor")}];
          [(TCButton *)self highlightIntensity];
          [v12 setHighlightIntensity:?];
          texture = [v11 texture];
          [v12 setTexture:texture];

          highlightTexture = [v11 highlightTexture];
          [v12 setHighlightTexture:highlightTexture];

          [intoCopy addObject:v12];
          ++v10;
        }

        while (v8 != v10);
        v8 = [images countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
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

+ (id)descriptorForJsonDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v5 = [dictionaryCopy objectForKeyedSubscript:@"size"];
  [v4 setSize:CGSizeFromJSONDictionary(v5)];

  v6 = [dictionaryCopy objectForKeyedSubscript:@"offset"];
  [v4 setOffset:CGPointFromJSONDictionary(v6)];

  v7 = [TCControlLabel alloc];
  v8 = [dictionaryCopy objectForKey:@"label"];
  v9 = [(TCControlLabel *)v7 initWithJSONObject:v8];
  [v4 setLabel:v9];

  v10 = [dictionaryCopy objectForKey:@"anchor"];
  [v4 setAnchor:{objc_msgSend(v10, "unsignedIntValue")}];
  v11 = [dictionaryCopy objectForKey:@"zIndex"];
  [v4 setZIndex:{objc_msgSend(v11, "unsignedIntValue")}];
  v12 = [dictionaryCopy objectForKey:@"colliderShape"];

  [v4 setColliderShape:{objc_msgSend(v12, "unsignedIntValue")}];

  return v4;
}

- (GCSJSONObject)jsonObject
{
  v14[7] = *MEMORY[0x277D85DE8];
  v13[0] = @"size";
  v3 = JSONDictionaryFromCGSize(self->_size.width, self->_size.height);
  v14[0] = v3;
  v13[1] = @"offset";
  v4 = JSONDictionaryFromCGPoint(self->_offset.x, self->_offset.y);
  v14[1] = v4;
  v13[2] = @"enabled";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_enabled];
  v14[2] = v5;
  v13[3] = @"label";
  jsonObject = [(TCControlLabel *)self->_label jsonObject];
  v14[3] = jsonObject;
  v13[4] = @"anchor";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_anchor];
  v14[4] = v7;
  v13[5] = @"layer";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_zIndex];
  v14[5] = v8;
  v13[6] = @"colliderShape";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TCCollider colliderShape](self->_collider, "colliderShape")}];
  v14[6] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:7];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end