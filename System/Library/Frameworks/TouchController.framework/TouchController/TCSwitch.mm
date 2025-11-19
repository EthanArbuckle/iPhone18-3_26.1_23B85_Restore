@interface TCSwitch
+ (id)descriptorForJsonDictionary:(id)a3;
- (CGPoint)offset;
- (CGPoint)position;
- (CGSize)size;
- (TCSwitch)initWithDescriptor:(id)a3 touchController:(id)a4;
- (TCTouchController)touchController;
- (id)jsonObject;
- (void)_calculatePosition;
- (void)collectQuadDataInto:(id)a3;
- (void)handleTouchBeganAtPoint:(CGPoint)a3;
- (void)handleTouchEndedAtPoint:(CGPoint)a3;
@end

@implementation TCSwitch

- (TCSwitch)initWithDescriptor:(id)a3 touchController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = TCSwitch;
  v8 = [(TCSwitch *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_touchController, v7);
    v9->_enabled = 1;
    v10 = [v6 contents];
    contents = v9->_contents;
    v9->_contents = v10;

    v12 = [v6 switchedOnContents];
    switchedOnContents = v9->_switchedOnContents;
    v9->_switchedOnContents = v12;

    v9->_anchor = [v6 anchor];
    v9->_anchorCoordinateSystem = [v6 anchorCoordinateSystem];
    [v6 offset];
    v9->_offset.x = v14;
    v9->_offset.y = v15;
    v9->_zIndex = [v6 zIndex];
    [v6 size];
    v9->_size.width = v16;
    v9->_size.height = v17;
    [v6 highlightDuration];
    v9->_highlightDuration = v18;
    v19 = [v6 label];
    label = v9->_label;
    v9->_label = v19;

    if ([v6 colliderShape])
    {
      if ([v6 colliderShape] != 1)
      {
LABEL_7:
        [(TCSwitch *)v9 _calculatePosition];
        goto LABEL_8;
      }

      v21 = off_278B6B2E0;
    }

    else
    {
      v21 = off_278B6B2B0;
    }

    v22 = [objc_alloc(*v21) initWithControlLayout:v9];
    collider = v9->_collider;
    v9->_collider = v22;

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

- (void)handleTouchBeganAtPoint:(CGPoint)a3
{
  if (!self->pressed)
  {
    self->pressed = 1;
    self->highlightIntensity = 1.0;
    switchedOn = self->_switchedOn;
    WeakRetained = objc_loadWeakRetained(&self->_touchController);
    v6 = WeakRetained;
    v7 = 1.0;
    if (switchedOn)
    {
      v7 = 0.0;
    }

    [WeakRetained _setButtonValue:self->_label forControl:v7];

    self->_switchedOn = !switchedOn;
  }
}

- (void)handleTouchEndedAtPoint:(CGPoint)a3
{
  if (self->pressed)
  {
    self->pressed = 0;
  }
}

- (void)collectQuadDataInto:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_enabled)
  {
    if (!self->_switchedOn || (contents = self->_switchedOnContents) == 0)
    {
      contents = self->_contents;
    }

    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = contents;
    v6 = [(TCControlContents *)v21 images];
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v6);
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
          [(TCSwitch *)self highlightIntensity];
          [v12 setHighlightIntensity:?];
          v18 = [v11 texture];
          [v12 setTexture:v18];

          v19 = [v11 highlightTexture];
          [v12 setHighlightTexture:v19];

          [v4 addObject:v12];
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
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

+ (id)descriptorForJsonDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:@"size"];
  [v4 setSize:CGSizeFromJSONDictionary(v5)];

  v6 = [v3 objectForKeyedSubscript:@"offset"];
  [v4 setOffset:CGPointFromJSONDictionary(v6)];

  v7 = [TCControlLabel alloc];
  v8 = [v3 objectForKey:@"label"];
  v9 = [(TCControlLabel *)v7 initWithJSONObject:v8];
  [v4 setLabel:v9];

  v10 = [v3 objectForKey:@"anchor"];
  [v4 setAnchor:{objc_msgSend(v10, "unsignedIntValue")}];
  v11 = [v3 objectForKey:@"zIndex"];
  [v4 setZIndex:{objc_msgSend(v11, "unsignedIntValue")}];
  v12 = [v3 objectForKey:@"colliderShape"];

  [v4 setColliderShape:{objc_msgSend(v12, "unsignedIntValue")}];

  return v4;
}

- (id)jsonObject
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
  v6 = [(TCControlLabel *)self->_label jsonObject];
  v14[3] = v6;
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