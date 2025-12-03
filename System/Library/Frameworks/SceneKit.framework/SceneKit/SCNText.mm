@interface SCNText
+ (SCNText)textWithString:(id)string extrusionDepth:(CGFloat)extrusionDepth;
- ($2F63D0465F04E4DFD1C06D3083502DB8)params;
- (BOOL)_wantsSeparateGeometryElements;
- (BOOL)getBoundingBoxMin:(SCNVector3 *)min max:(SCNVector3 *)max;
- (BOOL)getBoundingSphereCenter:(SCNVector3 *)center radius:(double *)radius;
- (BOOL)isWrapped;
- (CGFloat)chamferRadius;
- (CGFloat)extrusionDepth;
- (CGFloat)flatness;
- (CGRect)containerFrame;
- (NSString)alignmentMode;
- (NSString)truncationMode;
- (SCNText)init;
- (SCNText)initWithCoder:(id)coder;
- (SCNText)initWithTextGeometryRef:(__C3DTextGeometry *)ref;
- (UIBezierPath)chamferProfile;
- (UIFont)font;
- (double)discretizedStraightLineMaxLength;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initPresentationTextGeometryWithTextGeometryRef:(__C3DTextGeometry *)ref;
- (id)patchFont:(id)font;
- (id)presentationGeometry;
- (id)string;
- (int64_t)primitiveType;
- (void)_customDecodingOfSCNText:(id)text;
- (void)_customEncodingOfSCNText:(id)text;
- (void)_syncObjCModel:(__C3DTextGeometry *)model;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAlignmentMode:(NSString *)alignmentMode;
- (void)setChamferProfile:(UIBezierPath *)chamferProfile;
- (void)setChamferRadius:(CGFloat)chamferRadius;
- (void)setContainerFrame:(CGRect)containerFrame;
- (void)setDiscretizedStraightLineMaxLength:(double)length;
- (void)setExtrusionDepth:(CGFloat)extrusionDepth;
- (void)setFlatness:(CGFloat)flatness;
- (void)setFont:(UIFont *)font;
- (void)setPrimitiveType:(int64_t)type;
- (void)setString:(id)string;
- (void)setTruncationMode:(NSString *)truncationMode;
- (void)setWrapped:(BOOL)wrapped;
- (void)set_wantsSeparateGeometryElements:(BOOL)elements;
@end

@implementation SCNText

- (void)_syncObjCModel:(__C3DTextGeometry *)model
{
  v15.receiver = self;
  v15.super_class = SCNText;
  [(SCNGeometry *)&v15 _syncObjCModel];
  self->_primitiveType = C3DShapeGeometryGetPrimitiveType(model);
  Flatness = C3DShapeGeometryGetFlatness(model);
  self->_flatness = Flatness;
  ChamferRadius = C3DShapeGeometryGetChamferRadius(model);
  self->_chamferRadius = ChamferRadius;
  ExtrusionDepth = C3DShapeGeometryGetExtrusionDepth(model);
  self->_extrusionDepth = ExtrusionDepth;
  self->_chamferProfile = C3DShapeGeometryGetObjCChamferProfile(model);
  DiscretizedStraightLineMaxLength = C3DShapeGeometryGetDiscretizedStraightLineMaxLength(model);
  self->_discretizedStraightLineMaxLength = DiscretizedStraightLineMaxLength;
  self->_alignmentMode = C3DTextGeometryGetAlignmentMode(model);
  self->_truncationMode = C3DTextGeometryGetTruncationMode(model);
  self->_string = C3DTextGeometryGetString(model);
  self->_font = [(SCNText *)self patchFont:C3DTextGeometryGetFont(model)];
  self->_useCustomContainerFrame = C3DTextGeometryGetUseCustomContainerFrame(model);
  self->_customContainerFrame.origin.x = C3DTextGeometryGetCustomContainerFrame(model);
  self->_customContainerFrame.origin.y = v9;
  self->_customContainerFrame.size.width = v10;
  self->_customContainerFrame.size.height = v11;
  self->_wrapped = C3DTextGeometryGetWrapped(model);
  self->__wantsSeparateGeometryElements = C3DTextGeometryGetUseSeparateGeometryElements(model);
  v12 = self->_font;
  v13 = self->_string;
  v14 = self->_chamferProfile;
}

- (SCNText)init
{
  v3 = C3DTextGeometryCreate();
  v7.receiver = self;
  v7.super_class = SCNText;
  v4 = [(SCNGeometry *)&v7 initWithGeometryRef:v3];
  v5 = v4;
  if (v4)
  {
    [(SCNText *)v4 _syncObjCModel:[(SCNGeometry *)v4 geometryRef]];
  }

  CFRelease(v3);
  return v5;
}

- (SCNText)initWithTextGeometryRef:(__C3DTextGeometry *)ref
{
  v6.receiver = self;
  v6.super_class = SCNText;
  v3 = [(SCNGeometry *)&v6 initWithGeometryRef:ref];
  v4 = v3;
  if (v3)
  {
    [(SCNText *)v3 _syncObjCModel:[(SCNGeometry *)v3 geometryRef]];
  }

  return v4;
}

- (id)initPresentationTextGeometryWithTextGeometryRef:(__C3DTextGeometry *)ref
{
  v4.receiver = self;
  v4.super_class = SCNText;
  return [(SCNGeometry *)&v4 initPresentationGeometryWithGeometryRef:ref];
}

- (id)presentationGeometry
{
  v2 = [[SCNText alloc] initPresentationTextGeometryWithTextGeometryRef:[(SCNGeometry *)self geometryRef]];

  return v2;
}

+ (SCNText)textWithString:(id)string extrusionDepth:(CGFloat)extrusionDepth
{
  v6 = objc_alloc_init(self);
  [(SCNText *)v6 setExtrusionDepth:extrusionDepth];
  [(SCNText *)v6 setString:string];
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  geometryDescription = [(SCNGeometry *)self geometryDescription];
  string = [(SCNText *)self string];
  [(SCNText *)self extrusionDepth];
  return [v3 stringWithFormat:@"<%@ | string=%@ extrusionDepth=%.3f> ", geometryDescription, string, v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  Copy = C3DTextGeometryCreateCopy([(SCNGeometry *)self geometryRef]);
  v5 = [objc_alloc(objc_opt_class()) initWithTextGeometryRef:Copy];
  CFRelease(Copy);
  [v5 _setupObjCModelFrom:self];
  return v5;
}

- (BOOL)_wantsSeparateGeometryElements
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    sceneRef = [(SCNGeometry *)self sceneRef];
    v4 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    UseSeparateGeometryElements = C3DTextGeometryGetUseSeparateGeometryElements([(SCNGeometry *)self geometryRef]);
    if (v4)
    {
      C3DSceneUnlock(v4);
    }
  }

  else
  {
    UseSeparateGeometryElements = self->__wantsSeparateGeometryElements;
  }

  return UseSeparateGeometryElements & 1;
}

- (void)set_wantsSeparateGeometryElements:(BOOL)elements
{
  elementsCopy = elements;
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNText set_wantsSeparateGeometryElements:];
    }
  }

  else if (self->__wantsSeparateGeometryElements != elementsCopy)
  {
    self->__wantsSeparateGeometryElements = elementsCopy;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__SCNText_set_wantsSeparateGeometryElements___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = elementsCopy;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

void __45__SCNText_set_wantsSeparateGeometryElements___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DTextGeometrySetUseSeparateGeometryElements(v2, v3);
}

- (CGFloat)chamferRadius
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_chamferRadius;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  ChamferRadius = C3DShapeGeometryGetChamferRadius([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return ChamferRadius;
}

- (void)setChamferRadius:(CGFloat)chamferRadius
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNText setChamferRadius:];
    }
  }

  else
  {
    v6 = fmax(chamferRadius, 0.0);
    if (v6 != self->_chamferRadius)
    {
      v7 = v6;
      self->_chamferRadius = v7;
      sceneRef = [(SCNGeometry *)self sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __28__SCNText_setChamferRadius___block_invoke;
      v9[3] = &unk_2782FB7D0;
      v9[4] = self;
      *&v9[5] = v6;
      [SCNTransaction postCommandWithContext:sceneRef object:self key:@"chamferRadius" applyBlock:v9];
    }
  }
}

void __28__SCNText_setChamferRadius___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);
  v4 = v3;

  C3DShapeGeometrySetChamferRadius(v2, v4);
}

- (double)discretizedStraightLineMaxLength
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_discretizedStraightLineMaxLength;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  DiscretizedStraightLineMaxLength = C3DShapeGeometryGetDiscretizedStraightLineMaxLength([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return DiscretizedStraightLineMaxLength;
}

- (void)setDiscretizedStraightLineMaxLength:(double)length
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNText setDiscretizedStraightLineMaxLength:];
    }
  }

  else
  {
    v6 = fmax(length, 0.0);
    if (v6 != self->_discretizedStraightLineMaxLength)
    {
      v7 = v6;
      self->_discretizedStraightLineMaxLength = v7;
      sceneRef = [(SCNGeometry *)self sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __47__SCNText_setDiscretizedStraightLineMaxLength___block_invoke;
      v9[3] = &unk_2782FB7D0;
      v9[4] = self;
      *&v9[5] = v6;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v9];
    }
  }
}

void __47__SCNText_setDiscretizedStraightLineMaxLength___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);
  v4 = v3;

  C3DShapeGeometrySetDiscretizedStraightLineMaxLength(v2, v4);
}

- (CGFloat)extrusionDepth
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_extrusionDepth;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  ExtrusionDepth = C3DShapeGeometryGetExtrusionDepth([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return ExtrusionDepth;
}

- (void)setExtrusionDepth:(CGFloat)extrusionDepth
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNText setExtrusionDepth:];
    }
  }

  else
  {
    v6 = fmax(extrusionDepth, 0.0);
    if (v6 != self->_extrusionDepth)
    {
      v7 = v6;
      self->_extrusionDepth = v7;
      sceneRef = [(SCNGeometry *)self sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __29__SCNText_setExtrusionDepth___block_invoke;
      v9[3] = &unk_2782FB7D0;
      v9[4] = self;
      *&v9[5] = v6;
      [SCNTransaction postCommandWithContext:sceneRef object:self key:@"extrusionDepth" applyBlock:v9];
    }
  }
}

void __29__SCNText_setExtrusionDepth___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);
  v4 = v3;

  C3DShapeGeometrySetExtrusionDepth(v2, v4);
}

- (CGFloat)flatness
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_flatness;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  Flatness = C3DShapeGeometryGetFlatness([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return Flatness;
}

- (void)setFlatness:(CGFloat)flatness
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNText setFlatness:];
    }
  }

  else if (self->_flatness != flatness)
  {
    v6 = flatness;
    self->_flatness = v6;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __23__SCNText_setFlatness___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    *&v8[5] = flatness;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
  }
}

float __23__SCNText_setFlatness___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);
  v4 = v3;

  return C3DShapeGeometrySetFlatness(v2, v4);
}

- (int64_t)primitiveType
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_primitiveType;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  PrimitiveType = C3DShapeGeometryGetPrimitiveType([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return PrimitiveType;
}

- (void)setPrimitiveType:(int64_t)type
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNText setPrimitiveType:];
    }
  }

  else if (self->_primitiveType != type)
  {
    self->_primitiveType = type;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__SCNText_setPrimitiveType___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = type;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

void __28__SCNText_setPrimitiveType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DShapeGeometrySetPrimitiveType(v2, v3);
}

- (id)string
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    sceneRef = [(SCNGeometry *)self sceneRef];
    v4 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    String = C3DTextGeometryGetString([(SCNGeometry *)self geometryRef]);
    if (v4)
    {
      C3DSceneUnlock(v4);
    }
  }

  else
  {
    String = self->_string;
  }

  v6 = [String copy];

  return v6;
}

- (void)setString:(id)string
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNText setString:];
    }
  }

  else
  {
    v6 = self->_string;
    if (v6 != string)
    {

      self->_string = [string copy];
      sceneRef = [(SCNGeometry *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __21__SCNText_setString___block_invoke;
      v8[3] = &unk_2782FB820;
      v8[4] = self;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
    }
  }
}

void __21__SCNText_setString___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(*(a1 + 32) + 200);

  C3DTextGeometrySetString(v2, v3);
}

- (BOOL)isWrapped
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    sceneRef = [(SCNGeometry *)self sceneRef];
    v4 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    Wrapped = C3DTextGeometryGetWrapped([(SCNGeometry *)self geometryRef]);
    if (v4)
    {
      C3DSceneUnlock(v4);
    }
  }

  else
  {
    Wrapped = self->_wrapped;
  }

  return Wrapped & 1;
}

- (void)setWrapped:(BOOL)wrapped
{
  v3 = wrapped;
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNText setWrapped:];
    }
  }

  else if (self->_wrapped != v3)
  {
    self->_wrapped = v3;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __22__SCNText_setWrapped___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = v3;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

void __22__SCNText_setWrapped___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DTextGeometrySetWrapped(v2, v3);
}

- (id)patchFont:(id)font
{
  fontCopy = font;
  if (!font)
  {
    return fontCopy;
  }

  if ([objc_msgSend(font "fontName")])
  {
    v4 = MEMORY[0x277D74300];
    [fontCopy pointSize];
    fontCopy = [v4 fontWithName:@"HelveticaNeue" size:?];
    if (!fontCopy)
    {
      return fontCopy;
    }
  }

  if (![objc_msgSend(fontCopy "fontName")])
  {
    return fontCopy;
  }

  v5 = MEMORY[0x277D74300];
  [fontCopy pointSize];

  return [v5 fontWithName:@"HelveticaNeue" size:?];
}

- (UIFont)font
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    sceneRef = [(SCNGeometry *)self sceneRef];
    v4 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    Font = C3DTextGeometryGetFont([(SCNGeometry *)self geometryRef]);
    if (v4)
    {
      C3DSceneUnlock(v4);
    }

    if (Font)
    {
      return Font;
    }
  }

  else
  {
    Font = self->_font;
    if (Font)
    {
      return Font;
    }
  }

  return C3DTextGeometryGetDefaultFont();
}

- (void)setFont:(UIFont *)font
{
  if (self->_font != font)
  {
    v4 = [(SCNText *)self patchFont:?];

    self->_font = v4;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __19__SCNText_setFont___block_invoke;
    v6[3] = &unk_2782FC950;
    v6[4] = self;
    v6[5] = v4;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
  }
}

void __19__SCNText_setFont___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DTextGeometrySetFont(v2, v3);
}

- (CGRect)containerFrame
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    if (self->_useCustomContainerFrame)
    {
      p_customContainerFrame = &self->_customContainerFrame;
LABEL_11:
      x = p_customContainerFrame->origin.x;
      y = p_customContainerFrame->origin.y;
      width = p_customContainerFrame->size.width;
      height = p_customContainerFrame->size.height;
      goto LABEL_12;
    }

LABEL_10:
    p_customContainerFrame = MEMORY[0x277CBF3A0];
    goto LABEL_11;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  UseCustomContainerFrame = C3DTextGeometryGetUseCustomContainerFrame([(SCNGeometry *)self geometryRef]);
  x = C3DTextGeometryGetCustomContainerFrame([(SCNGeometry *)self geometryRef]);
  y = v7;
  width = v9;
  height = v11;
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  if ((UseCustomContainerFrame & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)setContainerFrame:(CGRect)containerFrame
{
  height = containerFrame.size.height;
  width = containerFrame.size.width;
  y = containerFrame.origin.y;
  x = containerFrame.origin.x;
  if (!self->_useCustomContainerFrame || !CGRectEqualToRect(self->_customContainerFrame, containerFrame))
  {
    if ([(SCNGeometry *)self isPresentationInstance])
    {
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SCNText setContainerFrame:];
      }
    }

    else
    {
      self->_useCustomContainerFrame = 1;
      self->_customContainerFrame.origin.x = x;
      self->_customContainerFrame.origin.y = y;
      self->_customContainerFrame.size.width = width;
      self->_customContainerFrame.size.height = height;
      sceneRef = [(SCNGeometry *)self sceneRef];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __29__SCNText_setContainerFrame___block_invoke;
      v10[3] = &unk_2782FB820;
      v10[4] = self;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v10];
    }
  }
}

void __29__SCNText_setContainerFrame___block_invoke(uint64_t a1)
{
  C3DTextGeometrySetUseCustomContainerFrame([*(a1 + 32) geometryRef], 1);
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(*(a1 + 32) + 232);
  v4 = *(*(a1 + 32) + 240);
  v5 = *(*(a1 + 32) + 248);
  v6 = *(*(a1 + 32) + 256);

  C3DTextGeometrySetCustomContainerFrame(v2, v3, v4, v5, v6);
}

- (NSString)truncationMode
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    sceneRef = [(SCNGeometry *)self sceneRef];
    v4 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    TruncationMode = C3DTextGeometryGetTruncationMode([(SCNGeometry *)self geometryRef]);
    if (v4)
    {
      C3DSceneUnlock(v4);
    }
  }

  else
  {
    TruncationMode = self->_truncationMode;
  }

  return CATextTruncationModeFromC3DTextTruncationMode(TruncationMode);
}

- (void)setTruncationMode:(NSString *)truncationMode
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(NSString *)truncationMode isEqualToString:*MEMORY[0x277CDA978]])
  {
LABEL_2:
    v5 = 0;
    goto LABEL_9;
  }

  if ([(NSString *)truncationMode isEqualToString:*MEMORY[0x277CDA980]])
  {
    v5 = 1;
  }

  else if ([(NSString *)truncationMode isEqualToString:*MEMORY[0x277CDA968]])
  {
    v5 = 2;
  }

  else
  {
    if (![(NSString *)truncationMode isEqualToString:*MEMORY[0x277CDA970]])
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = truncationMode;
        _os_log_impl(&dword_21BEF7000, v7, OS_LOG_TYPE_DEFAULT, "Warning: Unknown truncation mode %@", buf, 0xCu);
      }

      goto LABEL_2;
    }

    v5 = 3;
  }

LABEL_9:
  if (self->_truncationMode != v5)
  {
    self->_truncationMode = v5;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __29__SCNText_setTruncationMode___block_invoke;
    v8[3] = &unk_2782FF898;
    v8[4] = self;
    v9 = v5;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
  }
}

void __29__SCNText_setTruncationMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DTextGeometrySetTruncationMode(v2, v3);
}

- (NSString)alignmentMode
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    sceneRef = [(SCNGeometry *)self sceneRef];
    v4 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    AlignmentMode = C3DTextGeometryGetAlignmentMode([(SCNGeometry *)self geometryRef]);
    if (v4)
    {
      C3DSceneUnlock(v4);
    }
  }

  else
  {
    AlignmentMode = self->_alignmentMode;
  }

  return CATextAlignmentModeFromC3DTextAlignmentMode(AlignmentMode);
}

- (void)setAlignmentMode:(NSString *)alignmentMode
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(NSString *)alignmentMode isEqualToString:*MEMORY[0x277CDA038]])
  {
LABEL_2:
    v5 = 0;
    goto LABEL_11;
  }

  if ([(NSString *)alignmentMode isEqualToString:*MEMORY[0x277CDA030]])
  {
    v5 = 1;
  }

  else if ([(NSString *)alignmentMode isEqualToString:*MEMORY[0x277CDA040]])
  {
    v5 = 2;
  }

  else if ([(NSString *)alignmentMode isEqualToString:*MEMORY[0x277CDA020]])
  {
    v5 = 3;
  }

  else
  {
    if (![(NSString *)alignmentMode isEqualToString:*MEMORY[0x277CDA028]])
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = alignmentMode;
        _os_log_impl(&dword_21BEF7000, v7, OS_LOG_TYPE_DEFAULT, "Warning: Unknown alignment mode %@", buf, 0xCu);
      }

      goto LABEL_2;
    }

    v5 = 4;
  }

LABEL_11:
  if (self->_alignmentMode != v5)
  {
    self->_alignmentMode = v5;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__SCNText_setAlignmentMode___block_invoke;
    v8[3] = &unk_2782FF898;
    v8[4] = self;
    v9 = v5;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
  }
}

void __28__SCNText_setAlignmentMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DTextGeometrySetAlignmentMode(v2, v3);
}

- (UIBezierPath)chamferProfile
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    sceneRef = [(SCNGeometry *)self sceneRef];
    v4 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    ObjCChamferProfile = C3DShapeGeometryGetObjCChamferProfile([(SCNGeometry *)self geometryRef]);
    if (v4)
    {
      C3DSceneUnlock(v4);
    }
  }

  else
  {
    ObjCChamferProfile = self->_chamferProfile;
  }

  v6 = [ObjCChamferProfile copy];

  return v6;
}

- (void)setChamferProfile:(UIBezierPath *)chamferProfile
{
  self->_chamferProfile = [(UIBezierPath *)chamferProfile copy];
  sceneRef = [(SCNGeometry *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__SCNText_setChamferProfile___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = chamferProfile;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

void __29__SCNText_setChamferProfile___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DShapeGeometrySetObjCChamferProfile(v2, v3);
}

- ($2F63D0465F04E4DFD1C06D3083502DB8)params
{
  *&retstr->var7.origin.y = 0u;
  *&retstr->var7.size.height = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var5 = 0u;
  *&retstr->var0.var4 = 0u;
  *&retstr->var0.var6 = 0u;
  *&retstr->var0.var0 = 0u;
  *&retstr->var0.var2 = 0u;
  result = [(SCNGeometry *)self isPresentationInstance];
  if (result)
  {
    geometryRef = [(SCNGeometry *)self geometryRef];

    C3DTextGeometryGetC3DKitParameters(geometryRef, retstr);
  }

  else
  {
    chamferRadius = self->_chamferRadius;
    retstr->var0.var1 = self->_extrusionDepth;
    retstr->var0.var2 = chamferRadius;
    retstr->var0.var4 = self->_discretizedStraightLineMaxLength;
    origin = self->_customContainerFrame.origin;
    retstr->var7.size = self->_customContainerFrame.size;
    retstr->var0.var0 = self->_primitiveType;
    chamferProfile = self->_chamferProfile;
    retstr->var0.var5 = 0;
    retstr->var0.var6 = chamferProfile;
    string = self->_string;
    font = self->_font;
    retstr->var0.var3 = 0;
    alignmentMode = self->_alignmentMode;
    retstr->var1 = string;
    retstr->var2 = font;
    LODWORD(string) = self->_truncationMode;
    retstr->var3 = alignmentMode;
    retstr->var4 = string;
    retstr->var5 = self->_wrapped;
    retstr->var6 = self->_useCustomContainerFrame;
    retstr->var7.origin = origin;
    retstr->var8 = self->_flatness;
  }

  return result;
}

- (BOOL)getBoundingBoxMin:(SCNVector3 *)min max:(SCNVector3 *)max
{
  sceneRef = [(SCNGeometry *)self sceneRef];
  v8 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  DWORD2(v16) = 0;
  *&v16 = 0;
  DWORD2(v15) = 0;
  *&v15 = 0;
  geometryRef = [(SCNGeometry *)self geometryRef];
  if (self)
  {
    [(SCNText *)self params];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  BoundingBox = C3DTextGeometryGetBoundingBox(geometryRef, &v16, &v15, v14);
  if (BoundingBox)
  {
    if (min)
    {
      v11 = *(&v16 + 2);
      *&min->x = v16;
      min->z = v11;
    }

    if (max)
    {
      v12 = *(&v15 + 2);
      *&max->x = v15;
      max->z = v12;
    }
  }

  if (v8)
  {
    C3DSceneUnlock(v8);
  }

  return BoundingBox;
}

- (BOOL)getBoundingSphereCenter:(SCNVector3 *)center radius:(double *)radius
{
  sceneRef = [(SCNGeometry *)self sceneRef];
  v8 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  v14 = 0uLL;
  geometryRef = [(SCNGeometry *)self geometryRef];
  if (self)
  {
    [(SCNText *)self params];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  BoundingSphere = C3DTextGeometryGetBoundingSphere(geometryRef, &v14, v13);
  if (BoundingSphere)
  {
    if (center)
    {
      v11 = *(&v14 + 2);
      *&center->x = v14;
      center->z = v11;
    }

    if (radius)
    {
      *radius = *(&v14 + 3);
    }
  }

  if (v8)
  {
    C3DSceneUnlock(v8);
  }

  return BoundingSphere;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNText;
  [(SCNGeometry *)&v3 dealloc];
}

- (void)_customDecodingOfSCNText:(id)text
{
  v7[2] = *MEMORY[0x277D85DE8];
  [(SCNText *)self setChamferProfile:SCNDecodeBezierPathForKey(text, @"chamferProfile")];
  v5 = MEMORY[0x277CBEB98];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  -[SCNText setString:](self, "setString:", SCNDecodeUnsafeObjectForKey(text, @"string", [v5 setWithArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v7, 2)}]));
  v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [(SCNText *)self setFont:[(SCNText *)self patchFont:SCNDecodeUnsafeObjectForKey(text, @"font", v6)]];
  -[SCNText setAlignmentMode:](self, "setAlignmentMode:", CATextAlignmentModeFromC3DTextAlignmentMode([text decodeIntegerForKey:@"alignmentMode"]));
  -[SCNText setTruncationMode:](self, "setTruncationMode:", CATextTruncationModeFromC3DTextTruncationMode([text decodeIntegerForKey:@"truncationMode"]));
}

- (void)_customEncodingOfSCNText:(id)text
{
  SCNEncodeBezierPathForKey(text, self->_chamferProfile, @"chamferProfile");
  SCNEncodeUnsafeObjectForKey(text, self->_string, @"string");
  SCNEncodeUnsafeObjectForKey(text, self->_font, @"font");
  [text encodeInteger:self->_alignmentMode forKey:@"alignmentMode"];
  truncationMode = self->_truncationMode;

  [text encodeInteger:truncationMode forKey:@"truncationMode"];
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = SCNText;
  [(SCNGeometry *)&v9 encodeWithCoder:?];
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    [(SCNText *)self _syncObjCModel:[(SCNGeometry *)self geometryRef]];
  }

  [(SCNText *)self _customEncodingOfSCNText:coder];
  *&v5 = self->_flatness;
  [coder encodeFloat:@"flatness" forKey:v5];
  *&v6 = self->_chamferRadius;
  [coder encodeFloat:@"chamferRadius" forKey:v6];
  *&v7 = self->_extrusionDepth;
  [coder encodeFloat:@"extrusionDepth" forKey:v7];
  *&v8 = self->_discretizedStraightLineMaxLength;
  [coder encodeFloat:@"discretizedStraightLineMaxLength" forKey:v8];
  [coder encodeInteger:self->_primitiveType forKey:@"primitiveType"];
  [coder encodeBool:self->_wrapped forKey:@"wrapped"];
  [coder encodeBool:self->_useCustomContainerFrame forKey:@"useCustomContainerFrame"];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGRect:", self->_customContainerFrame.origin.x, self->_customContainerFrame.origin.y, self->_customContainerFrame.size.width, self->_customContainerFrame.size.height), @"customContainerFrame"}];
  [coder encodeBool:self->__wantsSeparateGeometryElements forKey:@"_wantsSeparateGeometryElements"];
}

- (SCNText)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = SCNText;
  v4 = [(SCNGeometry *)&v15 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [(SCNText *)v4 _customDecodingOfSCNText:coder];
    [coder decodeFloatForKey:@"flatness"];
    [(SCNText *)v4 setFlatness:v6];
    [coder decodeFloatForKey:@"chamferRadius"];
    [(SCNText *)v4 setChamferRadius:v7];
    [coder decodeFloatForKey:@"extrusionDepth"];
    [(SCNText *)v4 setExtrusionDepth:v8];
    [coder decodeFloatForKey:@"discretizedStraightLineMaxLength"];
    [(SCNText *)v4 setDiscretizedStraightLineMaxLength:v9];
    -[SCNText setPrimitiveType:](v4, "setPrimitiveType:", [coder decodeIntegerForKey:@"primitiveType"]);
    -[SCNText setWrapped:](v4, "setWrapped:", [coder decodeBoolForKey:@"wrapped"]);
    v4->_useCustomContainerFrame = [coder decodeBoolForKey:@"useCustomContainerFrame"];
    [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"customContainerFrame", "CGRectValue"}];
    v4->_customContainerFrame.origin.x = v10;
    v4->_customContainerFrame.origin.y = v11;
    v4->_customContainerFrame.size.width = v12;
    v4->_customContainerFrame.size.height = v13;
    -[SCNText set_wantsSeparateGeometryElements:](v4, "set_wantsSeparateGeometryElements:", [coder decodeBoolForKey:@"_wantsSeparateGeometryElements"]);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (void)set_wantsSeparateGeometryElements:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setChamferRadius:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setDiscretizedStraightLineMaxLength:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setExtrusionDepth:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setFlatness:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setPrimitiveType:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setString:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setWrapped:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setContainerFrame:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

@end