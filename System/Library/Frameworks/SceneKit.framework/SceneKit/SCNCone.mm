@interface SCNCone
+ (SCNCone)coneWithTopRadius:(CGFloat)topRadius bottomRadius:(CGFloat)bottomRadius height:(CGFloat)height;
- (BOOL)getBoundingBoxMin:(SCNVector3 *)a3 max:(SCNVector3 *)a4;
- (BOOL)getBoundingSphereCenter:(SCNVector3 *)a3 radius:(double *)a4;
- (CGFloat)bottomRadius;
- (CGFloat)height;
- (CGFloat)topRadius;
- (NSInteger)heightSegmentCount;
- (NSInteger)radialSegmentCount;
- (SCNCone)init;
- (SCNCone)initWithCoder:(id)a3;
- (SCNCone)initWithParametricGeometryRef:(__C3DParametricGeometry *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)a3;
- (id)presentationCone;
- (int64_t)primitiveType;
- (void)_setupObjCModelFrom:(id)a3;
- (void)_syncObjCModel:(__C3DParametricGeometry *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setBottomRadius:(CGFloat)bottomRadius;
- (void)setHeight:(CGFloat)height;
- (void)setHeightSegmentCount:(NSInteger)heightSegmentCount;
- (void)setPrimitiveType:(int64_t)a3;
- (void)setRadialSegmentCount:(NSInteger)radialSegmentCount;
- (void)setTopRadius:(CGFloat)topRadius;
@end

@implementation SCNCone

- (SCNCone)init
{
  v3 = C3DParametricGeometryCreate(0, kC3DConeCallBacks);
  v8.receiver = self;
  v8.super_class = SCNCone;
  v4 = [(SCNGeometry *)&v8 initWithGeometryRef:v3];
  v5 = v4;
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = SCNCone;
    [(SCNGeometry *)&v7 _syncObjCModel];
    [(SCNCone *)v5 _syncObjCModel:[(SCNGeometry *)v5 geometryRef]];
  }

  CFRelease(v3);
  return v5;
}

- (SCNCone)initWithParametricGeometryRef:(__C3DParametricGeometry *)a3
{
  v7.receiver = self;
  v7.super_class = SCNCone;
  v3 = [(SCNGeometry *)&v7 initWithGeometryRef:a3];
  v4 = v3;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = SCNCone;
    [(SCNGeometry *)&v6 _syncObjCModel];
    [(SCNCone *)v4 _syncObjCModel:[(SCNGeometry *)v4 geometryRef]];
  }

  return v4;
}

- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)a3
{
  v4.receiver = self;
  v4.super_class = SCNCone;
  return [(SCNGeometry *)&v4 initPresentationGeometryWithGeometryRef:a3];
}

- (id)presentationCone
{
  v2 = [[SCNCone alloc] initPresentationParametricGeometryWithParametricGeometryRef:[(SCNGeometry *)self geometryRef]];

  return v2;
}

- (void)_syncObjCModel:(__C3DParametricGeometry *)a3
{
  self->_conetopRadius = C3DParametricGeometryGetFloatValue(a3, 5);
  self->_conebottomRadius = C3DParametricGeometryGetFloatValue(a3, 6);
  self->_coneheight = C3DParametricGeometryGetFloatValue(a3, 1);
  self->_coneheightSegmentCount = C3DParametricGeometryGetIntValue(a3, 12);
  self->_coneradialSegmentCount = C3DParametricGeometryGetIntValue(a3, 15);
  self->_coneprimitiveType = C3DParametricGeometryGetIntValue(a3, 20);
}

- (CGFloat)bottomRadius
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_conebottomRadius;
  }

  v3 = [(SCNGeometry *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  BottomRadius = C3DParametricGeometryGetBottomRadius([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return BottomRadius;
}

- (void)setBottomRadius:(CGFloat)bottomRadius
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNCone setBottomRadius:];
    }
  }

  else if (self->_conebottomRadius != bottomRadius)
  {
    self->_conebottomRadius = bottomRadius;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __27__SCNCone_setBottomRadius___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = bottomRadius;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"bottomRadius" applyBlock:v7];
  }
}

void __27__SCNCone_setBottomRadius___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetBottomRadius(v2, v3);
}

- (CGFloat)height
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_coneheight;
  }

  v3 = [(SCNGeometry *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
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
      [SCNCone setHeight:];
    }
  }

  else if (self->_coneheight != height)
  {
    self->_coneheight = height;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __21__SCNCone_setHeight___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = height;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"height" applyBlock:v7];
  }
}

void __21__SCNCone_setHeight___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetHeight(v2, v3);
}

- (NSInteger)heightSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_coneheightSegmentCount;
  }

  v3 = [(SCNGeometry *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
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
      [SCNCone setHeightSegmentCount:];
    }
  }

  else if (self->_coneheightSegmentCount != heightSegmentCount)
  {
    self->_coneheightSegmentCount = heightSegmentCount;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__SCNCone_setHeightSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = heightSegmentCount;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"heightSegmentCount" applyBlock:v7];
  }
}

void __33__SCNCone_setHeightSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetHeightSegmentCount(v2, v3);
}

- (int64_t)primitiveType
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_coneprimitiveType;
  }

  v3 = [(SCNGeometry *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  PrimitiveType = C3DParametricGeometryGetPrimitiveType([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return PrimitiveType;
}

- (void)setPrimitiveType:(int64_t)a3
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNCone setPrimitiveType:];
    }
  }

  else if (self->_coneprimitiveType != a3)
  {
    self->_coneprimitiveType = a3;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__SCNCone_setPrimitiveType___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = a3;
    [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v7];
  }
}

void __28__SCNCone_setPrimitiveType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetPrimitiveType(v2, v3);
}

- (NSInteger)radialSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_coneradialSegmentCount;
  }

  v3 = [(SCNGeometry *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  RadialSegmentCount = C3DParametricGeometryGetRadialSegmentCount([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return RadialSegmentCount;
}

- (void)setRadialSegmentCount:(NSInteger)radialSegmentCount
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNCone setRadialSegmentCount:];
    }
  }

  else if (self->_coneradialSegmentCount != radialSegmentCount)
  {
    self->_coneradialSegmentCount = radialSegmentCount;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__SCNCone_setRadialSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = radialSegmentCount;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"radialSegmentCount" applyBlock:v7];
  }
}

void __33__SCNCone_setRadialSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetRadialSegmentCount(v2, v3);
}

- (CGFloat)topRadius
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_conetopRadius;
  }

  v3 = [(SCNGeometry *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  TopRadius = C3DParametricGeometryGetTopRadius([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return TopRadius;
}

- (void)setTopRadius:(CGFloat)topRadius
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNCone setTopRadius:];
    }
  }

  else if (self->_conetopRadius != topRadius)
  {
    self->_conetopRadius = topRadius;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __24__SCNCone_setTopRadius___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = topRadius;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"topRadius" applyBlock:v7];
  }
}

void __24__SCNCone_setTopRadius___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetTopRadius(v2, v3);
}

- (BOOL)getBoundingBoxMin:(SCNVector3 *)a3 max:(SCNVector3 *)a4
{
  v25 = 0.0;
  v24 = 0;
  v23 = 0.0;
  v22 = 0;
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v7 = [(SCNGeometry *)self sceneRef];
    v8 = v7;
    if (v7)
    {
      C3DSceneLock(v7);
    }

    if ([(SCNGeometry *)self geometryRef])
    {
      BoundingBox = C3DConeGetBoundingBox([(SCNGeometry *)self geometryRef], &v24, &v22);
      if (!v8)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    BoundingBox = 0;
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
      v21.receiver = self;
      v21.super_class = SCNCone;
      return [(SCNGeometry *)&v21 getBoundingBoxMin:a3 max:a4];
    }

    [(SCNCone *)self topRadius];
    v11 = v10;
    [(SCNCone *)self bottomRadius];
    v13 = v12;
    [(SCNCone *)self height];
    v15 = v14;
    v16.f64[0] = v11;
    C3DConeGetBoundingBoxForConeParameters(&v24, &v22, v16, v13, v15);
    BoundingBox = v17;
  }

LABEL_12:
  if (a3)
  {
    v18 = v25;
    *&a3->x = v24;
    a3->z = v18;
  }

  if (a4)
  {
    v19 = v23;
    *&a4->x = v22;
    a4->z = v19;
  }

  return BoundingBox;
}

- (BOOL)getBoundingSphereCenter:(SCNVector3 *)a3 radius:(double *)a4
{
  v18 = 0uLL;
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v7 = [(SCNGeometry *)self sceneRef];
    v8 = v7;
    if (v7)
    {
      C3DSceneLock(v7);
    }

    if ([(SCNGeometry *)self geometryRef]&& C3DConeGetBoundingSphere([(SCNGeometry *)self geometryRef], &v18))
    {
      if (a3)
      {
        v9 = *(&v18 + 2);
        *&a3->x = v18;
        a3->z = v9;
      }

      if (a4)
      {
        *a4 = *(&v18 + 3);
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

  [(SCNCone *)self topRadius];
  v12 = v11;
  [(SCNCone *)self bottomRadius];
  v14 = v13;
  [(SCNCone *)self height];
  if (!C3DConeGetBoundingSphereForConeParameters(&v18, v12, v14, v15))
  {
    return 0;
  }

  if (a3)
  {
    v16 = *(&v18 + 2);
    *&a3->x = v18;
    a3->z = v16;
  }

  if (a4)
  {
    *a4 = *(&v18 + 3);
  }

  return 1;
}

+ (SCNCone)coneWithTopRadius:(CGFloat)topRadius bottomRadius:(CGFloat)bottomRadius height:(CGFloat)height
{
  v8 = objc_alloc_init(a1);
  [v8 setTopRadius:topRadius];
  [v8 setBottomRadius:bottomRadius];
  [v8 setHeight:height];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SCNGeometry *)self geometryDescription];
  [(SCNCone *)self topRadius];
  v6 = v5;
  [(SCNCone *)self bottomRadius];
  v8 = v7;
  [(SCNCone *)self height];
  return [v3 stringWithFormat:@"<%@ | topRadius=%.3f bottomRadius=%.3f height=%.3f>", v4, v6, v8, v9];
}

- (void)_setupObjCModelFrom:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCNCone;
  [(SCNGeometry *)&v5 _setupObjCModelFrom:?];
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  [a3 topRadius];
  [(SCNCone *)self setTopRadius:?];
  [a3 bottomRadius];
  [(SCNCone *)self setBottomRadius:?];
  [a3 height];
  [(SCNCone *)self setHeight:?];
  -[SCNCone setHeightSegmentCount:](self, "setHeightSegmentCount:", [a3 heightSegmentCount]);
  -[SCNCone setRadialSegmentCount:](self, "setRadialSegmentCount:", [a3 radialSegmentCount]);
  -[SCNCone setPrimitiveType:](self, "setPrimitiveType:", [a3 primitiveType]);
  +[SCNTransaction commitImmediate];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 _setupObjCModelFrom:self];
  [(SCNGeometry *)self _copyAttributesTo:v4];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCNCone;
  [(SCNGeometry *)&v5 encodeWithCoder:?];
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    [(SCNCone *)self _syncObjCModel:[(SCNGeometry *)self geometryRef]];
  }

  [a3 encodeDouble:@"conetopRadius" forKey:self->_conetopRadius];
  [a3 encodeDouble:@"conebottomRadius" forKey:self->_conebottomRadius];
  [a3 encodeDouble:@"coneheight" forKey:self->_coneheight];
  [a3 encodeInteger:self->_coneheightSegmentCount forKey:@"coneheightSegmentCount"];
  [a3 encodeInteger:self->_coneradialSegmentCount forKey:@"coneradialSegmentCount"];
  [a3 encodeInteger:self->_coneprimitiveType forKey:@"coneprimitiveType"];
}

- (SCNCone)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCNCone;
  v4 = [(SCNGeometry *)&v7 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [a3 decodeDoubleForKey:@"conetopRadius"];
    [(SCNCone *)v4 setTopRadius:?];
    [a3 decodeDoubleForKey:@"conebottomRadius"];
    [(SCNCone *)v4 setBottomRadius:?];
    [a3 decodeDoubleForKey:@"coneheight"];
    [(SCNCone *)v4 setHeight:?];
    -[SCNCone setHeightSegmentCount:](v4, "setHeightSegmentCount:", [a3 decodeIntegerForKey:@"coneheightSegmentCount"]);
    -[SCNCone setRadialSegmentCount:](v4, "setRadialSegmentCount:", [a3 decodeIntegerForKey:@"coneradialSegmentCount"]);
    -[SCNCone setPrimitiveType:](v4, "setPrimitiveType:", [a3 decodeIntegerForKey:@"coneprimitiveType"]);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (void)setBottomRadius:.cold.1()
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

- (void)setRadialSegmentCount:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setTopRadius:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

@end