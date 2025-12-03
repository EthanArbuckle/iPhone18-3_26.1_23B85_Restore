@interface TCDirectionPad
+ (id)descriptorForJsonDictionary:(id)dictionary;
- (CGPoint)offset;
- (CGPoint)position;
- (CGSize)size;
- (GCSJSONObject)jsonObject;
- (TCDirectionPad)initWithDescriptor:(id)descriptor touchController:(id)controller;
- (TCTouchController)touchController;
- (void)_calculatePosition;
- (void)collectQuadDataInto:(id)into;
- (void)handleTouchBeganAtPoint:(CGPoint)point;
- (void)handleTouchEndedAtPoint:(CGPoint)point;
- (void)handleTouchMovedAtPoint:(CGPoint)point;
- (void)processTouch:(CGPoint)touch;
- (void)setThumbstickPos:(CGPoint)pos center:(CGPoint)center;
@end

@implementation TCDirectionPad

- (TCDirectionPad)initWithDescriptor:(id)descriptor touchController:(id)controller
{
  descriptorCopy = descriptor;
  controllerCopy = controller;
  v38.receiver = self;
  v38.super_class = TCDirectionPad;
  v8 = [(TCDirectionPad *)&v38 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_touchController, controllerCopy);
    v9->_enabled = 1;
    upContents = [descriptorCopy upContents];
    upContents = v9->_upContents;
    v9->_upContents = upContents;

    downContents = [descriptorCopy downContents];
    downContents = v9->_downContents;
    v9->_downContents = downContents;

    leftContents = [descriptorCopy leftContents];
    leftContents = v9->_leftContents;
    v9->_leftContents = leftContents;

    rightContents = [descriptorCopy rightContents];
    rightContents = v9->_rightContents;
    v9->_rightContents = rightContents;

    compositeLabel = [descriptorCopy compositeLabel];
    compositeLabel = v9->_compositeLabel;
    v9->_compositeLabel = compositeLabel;

    upLabel = [descriptorCopy upLabel];
    upLabel = v9->_upLabel;
    v9->_upLabel = upLabel;

    downLabel = [descriptorCopy downLabel];
    downLabel = v9->_downLabel;
    v9->_downLabel = downLabel;

    leftLabel = [descriptorCopy leftLabel];
    leftLabel = v9->_leftLabel;
    v9->_leftLabel = leftLabel;

    rightLabel = [descriptorCopy rightLabel];
    rightLabel = v9->_rightLabel;
    v9->_rightLabel = rightLabel;

    v9->_usingIndividualButtons = v9->_compositeLabel == 0;
    v9->_anchor = [descriptorCopy anchor];
    v9->_anchorCoordinateSystem = [descriptorCopy anchorCoordinateSystem];
    [descriptorCopy offset];
    v9->_offset.x = v28;
    v9->_offset.y = v29;
    v9->_zIndex = [descriptorCopy zIndex];
    [descriptorCopy size];
    v9->_size.width = v30;
    v9->_size.height = v31;
    [descriptorCopy highlightDuration];
    v9->_highlightDuration = v32;
    v9->_mutuallyExclusiveInput = [descriptorCopy inputIsMutuallyExclusive];
    v9->_radial = [descriptorCopy isRadial];
    v9->_digital = [descriptorCopy isDigital];
    width = v9->_size.width;
    v9->_thumbstickDiameter = width;
    v9->_thumbstickInnerDiameter = width * 0.25;
    v9->_thumbstickWorkZone = ((width * 0.25) * -0.5) + (width * 0.5);
    v9->_thumbstickDeadZone = 0.25;
    if ([descriptorCopy colliderShape])
    {
      if ([descriptorCopy colliderShape] != 1)
      {
LABEL_7:
        [(TCDirectionPad *)v9 _calculatePosition];
        goto LABEL_8;
      }

      v34 = off_278B6B2E0;
    }

    else
    {
      v34 = off_278B6B2B0;
    }

    v35 = [objc_alloc(*v34) initWithControlLayout:v9];
    collider = v9->_collider;
    v9->_collider = v35;

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

- (void)processTouch:(CGPoint)touch
{
  x = self->_position.x;
  y = self->_position.y;
  if (self->_radial)
  {
    touch.x = x + touch.x - self->_touchStartPos.x;
    touch.y = y + touch.y - self->_touchStartPos.y;
  }

  thumbstickWorkZone = self->_thumbstickWorkZone;
  v6 = touch.x - x;
  v7 = touch.y - y;
  v8 = v7 * v7 + v6 * v6;
  v9 = sqrtf(v8);
  if (v9 > thumbstickWorkZone)
  {
    v10 = (thumbstickWorkZone / v9);
    v11 = v6 * v10;
    v12 = v7 * v10;
    touch.x = x + v11;
    touch.y = y + v12;
  }

  [(TCDirectionPad *)self setThumbstickPos:touch.x center:touch.y];
}

- (void)setThumbstickPos:(CGPoint)pos center:(CGPoint)center
{
  v5 = pos.x - center.x;
  thumbstickWorkZone = self->_thumbstickWorkZone;
  v7 = v5 / thumbstickWorkZone;
  v8 = -(pos.y - center.y) / thumbstickWorkZone;
  self->_deltaX = v7;
  self->_deltaY = v8;
  if (!self->_mutuallyExclusiveInput)
  {
    goto LABEL_19;
  }

  if (![(TCDirectionPad *)self directionLocked])
  {
    deltaX = self->_deltaX;
    if (deltaX > 0.25)
    {
      v10 = 71;
LABEL_11:
      *(&self->super.isa + v10) = 1;
      goto LABEL_12;
    }

    if (deltaX < -0.25)
    {
      v10 = 70;
      goto LABEL_11;
    }

    deltaY = self->_deltaY;
    if (deltaY > 0.25)
    {
      v10 = 68;
      goto LABEL_11;
    }

    if (deltaY < -0.25)
    {
      v10 = 69;
      goto LABEL_11;
    }
  }

LABEL_12:
  if (self->_directionLockedLeft)
  {
    v7 = self->_deltaX;
    v8 = 0.0;
    if (v7 > 0.0)
    {
      v7 = 0.0;
    }

    goto LABEL_18;
  }

  if (self->_directionLockedRight)
  {
    v8 = 0.0;
    v7 = fmaxf(self->_deltaX, 0.0);
LABEL_18:
    self->_deltaX = v7;
    self->_deltaY = 0.0;
    goto LABEL_19;
  }

  if (self->_directionLockedUp)
  {
    self->_deltaX = 0.0;
    v7 = 0.0;
    v8 = fmaxf(self->_deltaY, 0.0);
LABEL_57:
    self->_deltaY = v8;
    goto LABEL_19;
  }

  if (self->_directionLockedDown)
  {
    self->_deltaX = 0.0;
    v8 = self->_deltaY;
    v7 = 0.0;
    if (v8 > 0.0)
    {
      v8 = 0.0;
    }

    goto LABEL_57;
  }

  v7 = self->_deltaX;
  v8 = self->_deltaY;
LABEL_19:
  v12 = sqrtf((v8 * v8) + (v7 * v7));
  if (v12 < self->_thumbstickDeadZone)
  {
    self->_deltaX = 0.0;
    self->_deltaY = 0.0;
    v8 = 0.0;
    v7 = 0.0;
    v12 = 0.0;
  }

  if (!self->_mutuallyExclusiveInput)
  {
    v13 = fabsf(v8);
    if (fabsf(v7) < 0.33 && v13 > 0.33)
    {
      self->_deltaX = 0.0;
      v7 = 0.0;
    }

    if (v13 < 0.33 && fabsf(v7) > 0.33)
    {
      self->_deltaY = 0.0;
      v8 = 0.0;
    }
  }

  self->_prevThumbstickMagnitude = v12;
  if (self->_digital)
  {
    if (v7 <= 0.01)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }

    if (v8 <= 0.01)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }

    self->_deltaX = v7;
    self->_deltaY = v14;
  }

  if (!self->_usingIndividualButtons)
  {
    WeakRetained = objc_loadWeakRetained(&self->_touchController);
    [WeakRetained _setDirectionPadPosition:self->_compositeLabel forControl:{self->_deltaX, self->_deltaY}];
    goto LABEL_48;
  }

  if (v7 < 0.0)
  {
    v15 = objc_loadWeakRetained(&self->_touchController);
    v16 = -self->_deltaX;
    v17 = 144;
LABEL_42:
    [v15 _setButtonValue:*(&self->super.isa + v17) forControl:v16];

    goto LABEL_43;
  }

  if (v7 > 0.0)
  {
    v15 = objc_loadWeakRetained(&self->_touchController);
    v16 = self->_deltaX;
    v17 = 152;
    goto LABEL_42;
  }

LABEL_43:
  v18 = self->_deltaY;
  if (v18 >= 0.0)
  {
    if (v18 <= 0.0)
    {
      return;
    }

    v19 = objc_loadWeakRetained(&self->_touchController);
    v20 = self->_deltaY;
    upLabel = self->_upLabel;
  }

  else
  {
    v19 = objc_loadWeakRetained(&self->_touchController);
    v20 = -self->_deltaY;
    upLabel = self->_downLabel;
  }

  WeakRetained = v19;
  [v19 _setButtonValue:upLabel forControl:v20];
LABEL_48:
}

- (void)handleTouchBeganAtPoint:(CGPoint)point
{
  if (!self->pressed)
  {
    self->pressed = 1;
    self->highlightIntensity = 1.0;
    self->_touchStartPos = point;
    self->_touchPrevPos = self->_touchStartPos;
    self->_prevThumbstickMagnitude = 0.0;
    [(TCDirectionPad *)self processTouch:?];
  }
}

- (void)handleTouchMovedAtPoint:(CGPoint)point
{
  if (self->pressed)
  {
    [(TCDirectionPad *)self processTouch:point.x, point.y];
  }
}

- (void)handleTouchEndedAtPoint:(CGPoint)point
{
  if (self->pressed)
  {
    self->pressed = 0;
    self->_deltaX = 0.0;
    self->_deltaY = 0.0;
    [(TCDirectionPad *)self resetDirectionLocked:point.x];
    usingIndividualButtons = self->_usingIndividualButtons;
    WeakRetained = objc_loadWeakRetained(&self->_touchController);
    v9 = WeakRetained;
    if (usingIndividualButtons)
    {
      [WeakRetained _setButtonValue:self->_leftLabel forControl:0.0];

      v7 = objc_loadWeakRetained(&self->_touchController);
      [v7 _setButtonValue:self->_rightLabel forControl:0.0];

      v8 = objc_loadWeakRetained(&self->_touchController);
      [v8 _setButtonValue:self->_downLabel forControl:0.0];

      v9 = objc_loadWeakRetained(&self->_touchController);
      [v9 _setButtonValue:self->_upLabel forControl:0.0];
    }

    else
    {
      [WeakRetained _setDirectionPadPosition:self->_compositeLabel forControl:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
    }
  }
}

- (void)collectQuadDataInto:(id)into
{
  v138 = *MEMORY[0x277D85DE8];
  intoCopy = into;
  if (self->_enabled)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    images = [(TCControlContents *)self->_upContents images];
    v6 = [images countByEnumeratingWithState:&v130 objects:v137 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v131;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v131 != v8)
          {
            objc_enumerationMutation(images);
          }

          v10 = *(*(&v130 + 1) + 8 * i);
          radial = self->_radial;
          [v10 size];
          v14 = v12;
          if (radial)
          {
            v14 = v12 * 0.5;
            [v10 size];
            v16 = v15 * 0.5;
          }

          else
          {
            v16 = v13;
          }

          v17 = v16 * 0.5 + 10.0;
          v18 = objc_opt_new();
          [v10 size];
          v19 = 0;
          v20 = fmaxf(self->_deltaY, 0.0);
          [v18 setSize:{v14 + (v21 - v14) * v20, v16 + (v22 - v16) * v20}];
          [v18 size];
          v24 = (v23 - v14) * 0.5;
          x = self->_position.x;
          [v10 offset];
          v27 = x + v26;
          v28 = self->_position.y - v17 - v24;
          [v10 offset];
          [v18 setPosition:{v27, v29 + v28}];
          [v18 setTintColor:{objc_msgSend(v10, "tintColor")}];
          if (self->_deltaY > 0.01)
          {
            [(TCDirectionPad *)self highlightIntensity];
            v19 = LODWORD(v30);
          }

          LODWORD(v30) = v19;
          [v18 setHighlightIntensity:v30];
          texture = [v10 texture];
          [v18 setTexture:texture];

          highlightTexture = [v10 highlightTexture];
          [v18 setHighlightTexture:highlightTexture];

          [intoCopy addObject:v18];
        }

        v7 = [images countByEnumeratingWithState:&v130 objects:v137 count:16];
      }

      while (v7);
    }

    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    images2 = [(TCControlContents *)self->_downContents images];
    v34 = [images2 countByEnumeratingWithState:&v126 objects:v136 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v127;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v127 != v36)
          {
            objc_enumerationMutation(images2);
          }

          v38 = *(*(&v126 + 1) + 8 * j);
          v39 = self->_radial;
          [v38 size];
          v42 = v40;
          if (v39)
          {
            v42 = v40 * 0.5;
            [v38 size];
            v44 = v43 * 0.5;
          }

          else
          {
            v44 = v41;
          }

          v45 = v44 * 0.5 + 10.0;
          v46 = objc_opt_new();
          [v38 size];
          deltaY = self->_deltaY;
          v50 = 0;
          if (deltaY >= 0.0)
          {
            v51 = 0.0;
          }

          else
          {
            v51 = -deltaY;
          }

          [v46 setSize:{v42 + (v47 - v42) * v51, v44 + (v48 - v44) * v51}];
          [v46 size];
          v53 = (v52 - v42) * 0.5;
          v54 = self->_position.x;
          [v38 offset];
          v56 = v54 + v55;
          v57 = self->_position.y + v45 + v53;
          [v38 offset];
          [v46 setPosition:{v56, v58 + v57}];
          [v46 setTintColor:{objc_msgSend(v38, "tintColor")}];
          if (self->_deltaY < -0.01)
          {
            [(TCDirectionPad *)self highlightIntensity];
            v50 = LODWORD(v59);
          }

          LODWORD(v59) = v50;
          [v46 setHighlightIntensity:v59];
          texture2 = [v38 texture];
          [v46 setTexture:texture2];

          highlightTexture2 = [v38 highlightTexture];
          [v46 setHighlightTexture:highlightTexture2];

          [intoCopy addObject:v46];
        }

        v35 = [images2 countByEnumeratingWithState:&v126 objects:v136 count:16];
      }

      while (v35);
    }

    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    images3 = [(TCControlContents *)self->_leftContents images];
    v63 = [images3 countByEnumeratingWithState:&v122 objects:v135 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v123;
      do
      {
        for (k = 0; k != v64; ++k)
        {
          if (*v123 != v65)
          {
            objc_enumerationMutation(images3);
          }

          v67 = *(*(&v122 + 1) + 8 * k);
          v68 = self->_radial;
          [v67 size];
          v71 = v69;
          if (v68)
          {
            v71 = v69 * 0.5;
            [v67 size];
            v73 = v72 * 0.5;
          }

          else
          {
            v73 = v70;
          }

          v75 = objc_opt_new();
          [v67 size];
          deltaX = self->_deltaX;
          v79 = 0;
          if (deltaX >= 0.0)
          {
            v80 = 0.0;
          }

          else
          {
            v80 = -deltaX;
          }

          [v75 setSize:{v71 + (v76 - v71) * v80, v73 + (v77 - v73) * v80}];
          [v75 size];
          *&v81 = (v81 - v71) * 0.5;
          v74 = v71 * 0.5 + 10.0;
          v82 = self->_position.x - v74 - *&v81;
          [v67 offset];
          v84 = v83 + v82;
          y = self->_position.y;
          [v67 offset];
          [v75 setPosition:{v84, y + v86}];
          [v75 setTintColor:{objc_msgSend(v67, "tintColor")}];
          if (self->_deltaX < -0.01)
          {
            [(TCDirectionPad *)self highlightIntensity];
            v79 = LODWORD(v87);
          }

          LODWORD(v87) = v79;
          [v75 setHighlightIntensity:v87];
          texture3 = [v67 texture];
          [v75 setTexture:texture3];

          highlightTexture3 = [v67 highlightTexture];
          [v75 setHighlightTexture:highlightTexture3];

          [intoCopy addObject:v75];
        }

        v64 = [images3 countByEnumeratingWithState:&v122 objects:v135 count:16];
      }

      while (v64);
    }

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    images4 = [(TCControlContents *)self->_rightContents images];
    v91 = [images4 countByEnumeratingWithState:&v118 objects:v134 count:16];
    if (v91)
    {
      v92 = v91;
      v93 = *v119;
      do
      {
        for (m = 0; m != v92; ++m)
        {
          if (*v119 != v93)
          {
            objc_enumerationMutation(images4);
          }

          v95 = *(*(&v118 + 1) + 8 * m);
          v96 = self->_radial;
          [v95 size];
          v99 = v97;
          if (v96)
          {
            v99 = v97 * 0.5;
            [v95 size];
            v101 = v100 * 0.5;
          }

          else
          {
            v101 = v98;
          }

          v102 = v99 * 0.5 + 10.0;
          v103 = objc_opt_new();
          [v95 size];
          v104 = 0;
          v105 = fmaxf(self->_deltaX, 0.0);
          [v103 setSize:{v99 + (v106 - v99) * v105, v101 + (v107 - v101) * v105}];
          [v103 size];
          *&v108 = (v108 - v99) * 0.5;
          v109 = self->_position.x + v102 + *&v108;
          [v95 offset];
          v111 = v110 + v109;
          v112 = self->_position.y;
          [v95 offset];
          [v103 setPosition:{v111, v112 + v113}];
          [v103 setTintColor:{objc_msgSend(v95, "tintColor")}];
          if (self->_deltaX > 0.01)
          {
            [(TCDirectionPad *)self highlightIntensity];
            v104 = LODWORD(v114);
          }

          LODWORD(v114) = v104;
          [v103 setHighlightIntensity:v114];
          texture4 = [v95 texture];
          [v103 setTexture:texture4];

          highlightTexture4 = [v95 highlightTexture];
          [v103 setHighlightTexture:highlightTexture4];

          [intoCopy addObject:v103];
        }

        v92 = [images4 countByEnumeratingWithState:&v118 objects:v134 count:16];
      }

      while (v92);
    }
  }

  v117 = *MEMORY[0x277D85DE8];
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
  v8 = [dictionaryCopy objectForKey:@"compositeLabel"];
  v9 = [(TCControlLabel *)v7 initWithJSONObject:v8];
  [v4 setCompositeLabel:v9];

  v10 = [dictionaryCopy objectForKey:@"anchor"];
  [v4 setAnchor:{objc_msgSend(v10, "unsignedIntValue")}];
  v11 = [dictionaryCopy objectForKey:@"layer"];
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
  v13[3] = @"compositeLabel";
  jsonObject = [(TCControlLabel *)self->_compositeLabel jsonObject];
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