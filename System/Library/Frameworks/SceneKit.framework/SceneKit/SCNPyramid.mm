@interface SCNPyramid
+ (SCNPyramid)pyramidWithWidth:(CGFloat)width height:(CGFloat)height length:(CGFloat)length;
- (BOOL)getBoundingBoxMin:(SCNVector3 *)min max:(SCNVector3 *)max;
- (BOOL)getBoundingSphereCenter:(SCNVector3 *)center radius:(double *)radius;
- (CGFloat)height;
- (CGFloat)length;
- (CGFloat)width;
- (NSInteger)heightSegmentCount;
- (NSInteger)lengthSegmentCount;
- (NSInteger)widthSegmentCount;
- (SCNPyramid)init;
- (SCNPyramid)initWithCoder:(id)coder;
- (SCNPyramid)initWithParametricGeometryRef:(__C3DParametricGeometry *)ref;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)ref;
- (id)presentationPyramid;
- (int64_t)primitiveType;
- (void)_setupObjCModelFrom:(id)from;
- (void)_syncObjCModel:(__C3DParametricGeometry *)model;
- (void)encodeWithCoder:(id)coder;
- (void)setHeight:(CGFloat)height;
- (void)setHeightSegmentCount:(NSInteger)heightSegmentCount;
- (void)setLength:(CGFloat)length;
- (void)setLengthSegmentCount:(NSInteger)lengthSegmentCount;
- (void)setPrimitiveType:(int64_t)type;
- (void)setWidth:(CGFloat)width;
- (void)setWidthSegmentCount:(NSInteger)widthSegmentCount;
@end

@implementation SCNPyramid

- (SCNPyramid)init
{
  v3 = C3DParametricGeometryCreate(0, kC3DPyramidCallBacks);
  v8.receiver = self;
  v8.super_class = SCNPyramid;
  v4 = [(SCNGeometry *)&v8 initWithGeometryRef:v3];
  v5 = v4;
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = SCNPyramid;
    [(SCNGeometry *)&v7 _syncObjCModel];
    [(SCNPyramid *)v5 _syncObjCModel:[(SCNGeometry *)v5 geometryRef]];
  }

  CFRelease(v3);
  return v5;
}

- (SCNPyramid)initWithParametricGeometryRef:(__C3DParametricGeometry *)ref
{
  v7.receiver = self;
  v7.super_class = SCNPyramid;
  v3 = [(SCNGeometry *)&v7 initWithGeometryRef:ref];
  v4 = v3;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = SCNPyramid;
    [(SCNGeometry *)&v6 _syncObjCModel];
    [(SCNPyramid *)v4 _syncObjCModel:[(SCNGeometry *)v4 geometryRef]];
  }

  return v4;
}

- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)ref
{
  v4.receiver = self;
  v4.super_class = SCNPyramid;
  return [(SCNGeometry *)&v4 initPresentationGeometryWithGeometryRef:ref];
}

- (id)presentationPyramid
{
  v2 = [[SCNPyramid alloc] initPresentationParametricGeometryWithParametricGeometryRef:[(SCNGeometry *)self geometryRef]];

  return v2;
}

- (void)_syncObjCModel:(__C3DParametricGeometry *)model
{
  self->_pyramidwidth = C3DParametricGeometryGetFloatValue(model, 0);
  self->_pyramidheight = C3DParametricGeometryGetFloatValue(model, 1);
  self->_pyramidlength = C3DParametricGeometryGetFloatValue(model, 2);
  self->_pyramidwidthSegmentCount = C3DParametricGeometryGetIntValue(model, 11);
  self->_pyramidheightSegmentCount = C3DParametricGeometryGetIntValue(model, 12);
  self->_pyramidlengthSegmentCount = C3DParametricGeometryGetIntValue(model, 13);
  self->_pyramidprimitiveType = C3DParametricGeometryGetIntValue(model, 20);
}

- (CGFloat)height
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_pyramidheight;
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
      [SCNPyramid setHeight:];
    }
  }

  else if (self->_pyramidheight != height)
  {
    self->_pyramidheight = height;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __24__SCNPyramid_setHeight___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = height;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"height" applyBlock:v7];
  }
}

void __24__SCNPyramid_setHeight___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetHeight(v2, v3);
}

- (NSInteger)heightSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_pyramidheightSegmentCount;
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
      [SCNPyramid setHeightSegmentCount:];
    }
  }

  else if (self->_pyramidheightSegmentCount != heightSegmentCount)
  {
    self->_pyramidheightSegmentCount = heightSegmentCount;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SCNPyramid_setHeightSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = heightSegmentCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"heightSegmentCount" applyBlock:v7];
  }
}

void __36__SCNPyramid_setHeightSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetHeightSegmentCount(v2, v3);
}

- (CGFloat)length
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_pyramidlength;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  Length = C3DParametricGeometryGetLength([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return Length;
}

- (void)setLength:(CGFloat)length
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNPyramid setLength:];
    }
  }

  else if (self->_pyramidlength != length)
  {
    self->_pyramidlength = length;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __24__SCNPyramid_setLength___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = length;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"length" applyBlock:v7];
  }
}

void __24__SCNPyramid_setLength___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetLength(v2, v3);
}

- (NSInteger)lengthSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_pyramidlengthSegmentCount;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  LengthSegmentCount = C3DParametricGeometryGetLengthSegmentCount([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return LengthSegmentCount;
}

- (void)setLengthSegmentCount:(NSInteger)lengthSegmentCount
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNPyramid setLengthSegmentCount:];
    }
  }

  else if (self->_pyramidlengthSegmentCount != lengthSegmentCount)
  {
    self->_pyramidlengthSegmentCount = lengthSegmentCount;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SCNPyramid_setLengthSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = lengthSegmentCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"lengthSegmentCount" applyBlock:v7];
  }
}

void __36__SCNPyramid_setLengthSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetLengthSegmentCount(v2, v3);
}

- (int64_t)primitiveType
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_pyramidprimitiveType;
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
      [SCNPyramid setPrimitiveType:];
    }
  }

  else if (self->_pyramidprimitiveType != type)
  {
    self->_pyramidprimitiveType = type;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__SCNPyramid_setPrimitiveType___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = type;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

void __31__SCNPyramid_setPrimitiveType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetPrimitiveType(v2, v3);
}

- (CGFloat)width
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_pyramidwidth;
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
      [SCNPyramid setWidth:];
    }
  }

  else if (self->_pyramidwidth != width)
  {
    self->_pyramidwidth = width;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __23__SCNPyramid_setWidth___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = width;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"width" applyBlock:v7];
  }
}

void __23__SCNPyramid_setWidth___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetWidth(v2, v3);
}

- (NSInteger)widthSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_pyramidwidthSegmentCount;
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
      [SCNPyramid setWidthSegmentCount:];
    }
  }

  else if (self->_pyramidwidthSegmentCount != widthSegmentCount)
  {
    self->_pyramidwidthSegmentCount = widthSegmentCount;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__SCNPyramid_setWidthSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = widthSegmentCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"widthSegmentCount" applyBlock:v7];
  }
}

void __35__SCNPyramid_setWidthSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetWidthSegmentCount(v2, v3);
}

- (BOOL)getBoundingBoxMin:(SCNVector3 *)min max:(SCNVector3 *)max
{
  v26 = 0.0;
  v25 = 0;
  v24 = 0.0;
  v23 = 0;
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
      C3DPyramidGetBoundingBox([(SCNGeometry *)self geometryRef], &v25, &v23);
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
      v22.receiver = self;
      v22.super_class = SCNPyramid;
      return [(SCNGeometry *)&v22 getBoundingBoxMin:min max:max];
    }

    [(SCNPyramid *)self width];
    v12 = v11;
    [(SCNPyramid *)self height];
    v14 = v13;
    [(SCNPyramid *)self length];
    v16 = v15;
    v17.i64[0] = v12;
    C3DPyramidGetBoundingBoxForPyramidParameters(&v25, &v23, v17, v14, v16);
    v10 = v18;
  }

LABEL_12:
  if (min)
  {
    v19 = v26;
    *&min->x = v25;
    min->z = v19;
  }

  if (max)
  {
    v20 = v24;
    *&max->x = v23;
    max->z = v20;
  }

  return v10;
}

- (BOOL)getBoundingSphereCenter:(SCNVector3 *)center radius:(double *)radius
{
  v19 = 0uLL;
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    sceneRef = [(SCNGeometry *)self sceneRef];
    v8 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    if ([(SCNGeometry *)self geometryRef]&& C3DPyramidGetBoundingSphere([(SCNGeometry *)self geometryRef], &v19))
    {
      if (center)
      {
        v9 = *&v19.i32[2];
        *&center->x = v19.i64[0];
        center->z = v9;
      }

      if (radius)
      {
        *radius = *&v19.i32[3];
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

  [(SCNPyramid *)self width];
  v12 = v11;
  [(SCNPyramid *)self height];
  v14 = v13;
  [(SCNPyramid *)self length];
  v15.f64[0] = v14;
  if (!C3DPyramidGetBoundingSphereForPyramidParameters(&v19, v12, v15, v16))
  {
    return 0;
  }

  if (center)
  {
    v17 = *&v19.i32[2];
    *&center->x = v19.i64[0];
    center->z = v17;
  }

  if (radius)
  {
    *radius = *&v19.i32[3];
  }

  return 1;
}

+ (SCNPyramid)pyramidWithWidth:(CGFloat)width height:(CGFloat)height length:(CGFloat)length
{
  v8 = objc_alloc_init(self);
  [v8 setWidth:width];
  [v8 setHeight:height];
  [v8 setLength:length];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  geometryDescription = [(SCNGeometry *)self geometryDescription];
  [(SCNPyramid *)self width];
  v6 = v5;
  [(SCNPyramid *)self height];
  v8 = v7;
  [(SCNPyramid *)self length];
  return [v3 stringWithFormat:@"<%@ | width=%.3f height=%.3f length=%.3f>", geometryDescription, v6, v8, v9];
}

- (void)_setupObjCModelFrom:(id)from
{
  v5.receiver = self;
  v5.super_class = SCNPyramid;
  [(SCNGeometry *)&v5 _setupObjCModelFrom:?];
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  [from width];
  [(SCNPyramid *)self setWidth:?];
  [from height];
  [(SCNPyramid *)self setHeight:?];
  [from length];
  [(SCNPyramid *)self setLength:?];
  -[SCNPyramid setWidthSegmentCount:](self, "setWidthSegmentCount:", [from widthSegmentCount]);
  -[SCNPyramid setHeightSegmentCount:](self, "setHeightSegmentCount:", [from heightSegmentCount]);
  -[SCNPyramid setLengthSegmentCount:](self, "setLengthSegmentCount:", [from lengthSegmentCount]);
  -[SCNPyramid setPrimitiveType:](self, "setPrimitiveType:", [from primitiveType]);
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
  v5.super_class = SCNPyramid;
  [(SCNGeometry *)&v5 encodeWithCoder:?];
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    [(SCNPyramid *)self _syncObjCModel:[(SCNGeometry *)self geometryRef]];
  }

  [coder encodeDouble:@"pyramidwidth" forKey:self->_pyramidwidth];
  [coder encodeDouble:@"pyramidheight" forKey:self->_pyramidheight];
  [coder encodeDouble:@"pyramidlength" forKey:self->_pyramidlength];
  [coder encodeInteger:self->_pyramidwidthSegmentCount forKey:@"pyramidwidthSegmentCount"];
  [coder encodeInteger:self->_pyramidheightSegmentCount forKey:@"pyramidheightSegmentCount"];
  [coder encodeInteger:self->_pyramidlengthSegmentCount forKey:@"pyramidlengthSegmentCount"];
  [coder encodeInteger:self->_pyramidprimitiveType forKey:@"pyramidprimitiveType"];
}

- (SCNPyramid)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SCNPyramid;
  v4 = [(SCNGeometry *)&v7 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [coder decodeDoubleForKey:@"pyramidwidth"];
    [(SCNPyramid *)v4 setWidth:?];
    [coder decodeDoubleForKey:@"pyramidheight"];
    [(SCNPyramid *)v4 setHeight:?];
    [coder decodeDoubleForKey:@"pyramidlength"];
    [(SCNPyramid *)v4 setLength:?];
    -[SCNPyramid setWidthSegmentCount:](v4, "setWidthSegmentCount:", [coder decodeIntegerForKey:@"pyramidwidthSegmentCount"]);
    -[SCNPyramid setHeightSegmentCount:](v4, "setHeightSegmentCount:", [coder decodeIntegerForKey:@"pyramidheightSegmentCount"]);
    -[SCNPyramid setLengthSegmentCount:](v4, "setLengthSegmentCount:", [coder decodeIntegerForKey:@"pyramidlengthSegmentCount"]);
    -[SCNPyramid setPrimitiveType:](v4, "setPrimitiveType:", [coder decodeIntegerForKey:@"pyramidprimitiveType"]);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
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

- (void)setLength:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setLengthSegmentCount:.cold.1()
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