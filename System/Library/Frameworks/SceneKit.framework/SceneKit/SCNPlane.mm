@interface SCNPlane
+ (SCNPlane)planeWithWidth:(CGFloat)width height:(CGFloat)height;
- (BOOL)getBoundingBoxMin:(SCNVector3 *)min max:(SCNVector3 *)max;
- (BOOL)getBoundingSphereCenter:(SCNVector3 *)center radius:(double *)radius;
- (CGFloat)cornerRadius;
- (CGFloat)height;
- (CGFloat)width;
- (NSInteger)cornerSegmentCount;
- (NSInteger)heightSegmentCount;
- (NSInteger)widthSegmentCount;
- (SCNPlane)init;
- (SCNPlane)initWithCoder:(id)coder;
- (SCNPlane)initWithParametricGeometryRef:(__C3DParametricGeometry *)ref;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)ref;
- (id)presentationPlane;
- (int64_t)primitiveType;
- (void)_setupObjCModelFrom:(id)from;
- (void)_syncObjCModel:(__C3DParametricGeometry *)model;
- (void)encodeWithCoder:(id)coder;
- (void)setCornerRadius:(CGFloat)cornerRadius;
- (void)setCornerSegmentCount:(NSInteger)cornerSegmentCount;
- (void)setHeight:(CGFloat)height;
- (void)setHeightSegmentCount:(NSInteger)heightSegmentCount;
- (void)setPrimitiveType:(int64_t)type;
- (void)setWidth:(CGFloat)width;
- (void)setWidthSegmentCount:(NSInteger)widthSegmentCount;
@end

@implementation SCNPlane

- (SCNPlane)init
{
  v3 = C3DParametricGeometryCreate(0, kC3DPlaneCallBacks);
  v8.receiver = self;
  v8.super_class = SCNPlane;
  v4 = [(SCNGeometry *)&v8 initWithGeometryRef:v3];
  v5 = v4;
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = SCNPlane;
    [(SCNGeometry *)&v7 _syncObjCModel];
    [(SCNPlane *)v5 _syncObjCModel:[(SCNGeometry *)v5 geometryRef]];
  }

  CFRelease(v3);
  return v5;
}

- (SCNPlane)initWithParametricGeometryRef:(__C3DParametricGeometry *)ref
{
  v7.receiver = self;
  v7.super_class = SCNPlane;
  v3 = [(SCNGeometry *)&v7 initWithGeometryRef:ref];
  v4 = v3;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = SCNPlane;
    [(SCNGeometry *)&v6 _syncObjCModel];
    [(SCNPlane *)v4 _syncObjCModel:[(SCNGeometry *)v4 geometryRef]];
  }

  return v4;
}

- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)ref
{
  v4.receiver = self;
  v4.super_class = SCNPlane;
  return [(SCNGeometry *)&v4 initPresentationGeometryWithGeometryRef:ref];
}

- (id)presentationPlane
{
  v2 = [[SCNPlane alloc] initPresentationParametricGeometryWithParametricGeometryRef:[(SCNGeometry *)self geometryRef]];

  return v2;
}

- (void)_syncObjCModel:(__C3DParametricGeometry *)model
{
  self->_width = C3DParametricGeometryGetFloatValue(model, 0);
  self->_height = C3DParametricGeometryGetFloatValue(model, 1);
  self->_cornerRadius = C3DParametricGeometryGetFloatValue(model, 3);
  self->_widthSegmentCount = C3DParametricGeometryGetIntValue(model, 11);
  self->_heightSegmentCount = C3DParametricGeometryGetIntValue(model, 12);
  self->_cornerSegmentCount = C3DParametricGeometryGetIntValue(model, 14);
  self->_primitiveType = C3DParametricGeometryGetIntValue(model, 20);
}

- (CGFloat)cornerRadius
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_cornerRadius;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  ChamferRadius = C3DParametricGeometryGetChamferRadius([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return ChamferRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNPlane setCornerRadius:];
    }
  }

  else if (self->_cornerRadius != cornerRadius)
  {
    self->_cornerRadius = cornerRadius;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__SCNPlane_setCornerRadius___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = cornerRadius;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"cornerRadius" applyBlock:v7];
  }
}

void __28__SCNPlane_setCornerRadius___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetChamferRadius(v2, v3);
}

- (NSInteger)cornerSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_cornerSegmentCount;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  ChamferSegmentCount = C3DParametricGeometryGetChamferSegmentCount([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return ChamferSegmentCount;
}

- (void)setCornerSegmentCount:(NSInteger)cornerSegmentCount
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNPlane setCornerSegmentCount:];
    }
  }

  else if (self->_cornerSegmentCount != cornerSegmentCount)
  {
    self->_cornerSegmentCount = cornerSegmentCount;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__SCNPlane_setCornerSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = cornerSegmentCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"cornerSegmentCount" applyBlock:v7];
  }
}

void __34__SCNPlane_setCornerSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetChamferSegmentCount(v2, v3);
}

- (CGFloat)height
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_height;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  Height = C3DParametricGeometryGetHeight([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return Height;
}

- (void)setHeight:(CGFloat)height
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNPlane setHeight:];
    }
  }

  else if (self->_height != height)
  {
    self->_height = height;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __22__SCNPlane_setHeight___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = height;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"height" applyBlock:v7];
  }
}

void __22__SCNPlane_setHeight___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetHeight(v2, v3);
}

- (NSInteger)heightSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_heightSegmentCount;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  HeightSegmentCount = C3DParametricGeometryGetHeightSegmentCount([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return HeightSegmentCount;
}

- (void)setHeightSegmentCount:(NSInteger)heightSegmentCount
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNPlane setHeightSegmentCount:];
    }
  }

  else if (self->_heightSegmentCount != heightSegmentCount)
  {
    self->_heightSegmentCount = heightSegmentCount;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__SCNPlane_setHeightSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = heightSegmentCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"heightSegmentCount" applyBlock:v7];
  }
}

void __34__SCNPlane_setHeightSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetHeightSegmentCount(v2, v3);
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

  PrimitiveType = C3DParametricGeometryGetPrimitiveType([(SCNGeometry *)self geometryRef]);
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
      [SCNPlane setPrimitiveType:];
    }
  }

  else if (self->_primitiveType != type)
  {
    self->_primitiveType = type;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29__SCNPlane_setPrimitiveType___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = type;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

void __29__SCNPlane_setPrimitiveType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetPrimitiveType(v2, v3);
}

- (CGFloat)width
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_width;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  Width = C3DParametricGeometryGetWidth([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return Width;
}

- (void)setWidth:(CGFloat)width
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNPlane setWidth:];
    }
  }

  else if (self->_width != width)
  {
    self->_width = width;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __21__SCNPlane_setWidth___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = width;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"width" applyBlock:v7];
  }
}

void __21__SCNPlane_setWidth___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetWidth(v2, v3);
}

- (NSInteger)widthSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_widthSegmentCount;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  WidthSegmentCount = C3DParametricGeometryGetWidthSegmentCount([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return WidthSegmentCount;
}

- (void)setWidthSegmentCount:(NSInteger)widthSegmentCount
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNPlane setWidthSegmentCount:];
    }
  }

  else if (self->_widthSegmentCount != widthSegmentCount)
  {
    self->_widthSegmentCount = widthSegmentCount;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__SCNPlane_setWidthSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = widthSegmentCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"widthSegmentCount" applyBlock:v7];
  }
}

void __33__SCNPlane_setWidthSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetWidthSegmentCount(v2, v3);
}

- (BOOL)getBoundingBoxMin:(SCNVector3 *)min max:(SCNVector3 *)max
{
  v24 = 0.0;
  v23 = 0;
  v22 = 0.0;
  v21 = 0;
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    sceneRef = [(SCNGeometry *)self sceneRef];
    v8 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    if ([(SCNGeometry *)self geometryRef])
    {
      C3DPlaneGetBoundingBox([(SCNGeometry *)self geometryRef], &v23, &v21);
      v10 = v9;
      if (!v8)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v10 = 0;
    if (v8)
    {
LABEL_11:
      C3DSceneUnlock(v8);
    }
  }

  else
  {
    if ([(SCNGeometry *)self _hasFixedBoundingBoxExtrema])
    {
      v20.receiver = self;
      v20.super_class = SCNPlane;
      return [(SCNGeometry *)&v20 getBoundingBoxMin:min max:max];
    }

    [(SCNPlane *)self width];
    v12 = v11;
    [(SCNPlane *)self height];
    v14 = v13;
    v15.f64[0] = v12;
    C3DPlaneGetBoundingBoxForPlaneParameters(&v23, &v21, v15, v14);
    v10 = v16;
  }

LABEL_12:
  if (min)
  {
    v17 = v24;
    *&min->x = v23;
    min->z = v17;
  }

  if (max)
  {
    v18 = v22;
    *&max->x = v21;
    max->z = v18;
  }

  return v10;
}

- (BOOL)getBoundingSphereCenter:(SCNVector3 *)center radius:(double *)radius
{
  v16 = 0uLL;
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    sceneRef = [(SCNGeometry *)self sceneRef];
    v8 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    if ([(SCNGeometry *)self geometryRef]&& C3DPlaneGetBoundingSphere([(SCNGeometry *)self geometryRef], &v16))
    {
      if (center)
      {
        v9 = *(&v16 + 2);
        *&center->x = v16;
        center->z = v9;
      }

      if (radius)
      {
        *radius = *(&v16 + 3);
      }

      v10 = 1;
      if (!v8)
      {
        return v10;
      }
    }

    else
    {
      v10 = 0;
      if (!v8)
      {
        return v10;
      }
    }

    C3DSceneUnlock(v8);
    return v10;
  }

  [(SCNPlane *)self width];
  v12 = v11;
  [(SCNPlane *)self height];
  if (!C3DPlaneGetBoundingSphereForPlaneParameters(&v16, v12, v13))
  {
    return 0;
  }

  if (center)
  {
    v14 = *(&v16 + 2);
    *&center->x = v16;
    center->z = v14;
  }

  if (radius)
  {
    *radius = *(&v16 + 3);
  }

  return 1;
}

+ (SCNPlane)planeWithWidth:(CGFloat)width height:(CGFloat)height
{
  v6 = objc_alloc_init(self);
  [v6 setWidth:width];
  [v6 setHeight:height];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  geometryDescription = [(SCNGeometry *)self geometryDescription];
  [(SCNPlane *)self width];
  v6 = v5;
  [(SCNPlane *)self height];
  return [v3 stringWithFormat:@"<%@ | width=%.3f height=%.3f>", geometryDescription, v6, v7];
}

- (void)_setupObjCModelFrom:(id)from
{
  v5.receiver = self;
  v5.super_class = SCNPlane;
  [(SCNGeometry *)&v5 _setupObjCModelFrom:?];
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  [from width];
  [(SCNPlane *)self setWidth:?];
  [from height];
  [(SCNPlane *)self setHeight:?];
  [from cornerRadius];
  [(SCNPlane *)self setCornerRadius:?];
  -[SCNPlane setWidthSegmentCount:](self, "setWidthSegmentCount:", [from widthSegmentCount]);
  -[SCNPlane setHeightSegmentCount:](self, "setHeightSegmentCount:", [from heightSegmentCount]);
  -[SCNPlane setCornerSegmentCount:](self, "setCornerSegmentCount:", [from cornerSegmentCount]);
  -[SCNPlane setPrimitiveType:](self, "setPrimitiveType:", [from primitiveType]);
  +[SCNTransaction commitImmediate];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 _setupObjCModelFrom:self];
  [(SCNGeometry *)self _copyAttributesTo:v4];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SCNPlane;
  [(SCNGeometry *)&v5 encodeWithCoder:?];
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    [(SCNPlane *)self _syncObjCModel:[(SCNGeometry *)self geometryRef]];
  }

  [coder encodeDouble:@"width" forKey:self->_width];
  [coder encodeDouble:@"height" forKey:self->_height];
  [coder encodeDouble:@"cornerRadius" forKey:self->_cornerRadius];
  [coder encodeInteger:self->_widthSegmentCount forKey:@"widthSegmentCount"];
  [coder encodeInteger:self->_heightSegmentCount forKey:@"heightSegmentCount"];
  [coder encodeInteger:self->_cornerSegmentCount forKey:@"cornerSegmentCount"];
  [coder encodeInteger:self->_primitiveType forKey:@"primitiveType"];
}

- (SCNPlane)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SCNPlane;
  v4 = [(SCNGeometry *)&v7 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [coder decodeDoubleForKey:@"width"];
    [(SCNPlane *)v4 setWidth:?];
    [coder decodeDoubleForKey:@"height"];
    [(SCNPlane *)v4 setHeight:?];
    [coder decodeDoubleForKey:@"cornerRadius"];
    [(SCNPlane *)v4 setCornerRadius:?];
    -[SCNPlane setWidthSegmentCount:](v4, "setWidthSegmentCount:", [coder decodeIntegerForKey:@"widthSegmentCount"]);
    -[SCNPlane setHeightSegmentCount:](v4, "setHeightSegmentCount:", [coder decodeIntegerForKey:@"heightSegmentCount"]);
    -[SCNPlane setCornerSegmentCount:](v4, "setCornerSegmentCount:", [coder decodeIntegerForKey:@"cornerSegmentCount"]);
    -[SCNPlane setPrimitiveType:](v4, "setPrimitiveType:", [coder decodeIntegerForKey:@"primitiveType"]);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (void)setCornerRadius:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setCornerSegmentCount:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setHeight:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setHeightSegmentCount:.cold.1()
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

- (void)setWidth:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setWidthSegmentCount:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

@end