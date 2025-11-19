@interface SCNCapsule
+ (SCNCapsule)capsuleWithCapRadius:(CGFloat)capRadius height:(CGFloat)height;
- (BOOL)getBoundingBoxMin:(SCNVector3 *)a3 max:(SCNVector3 *)a4;
- (BOOL)getBoundingSphereCenter:(SCNVector3 *)a3 radius:(double *)a4;
- (CGFloat)capRadius;
- (CGFloat)height;
- (NSInteger)capSegmentCount;
- (NSInteger)heightSegmentCount;
- (NSInteger)radialSegmentCount;
- (SCNCapsule)init;
- (SCNCapsule)initWithCoder:(id)a3;
- (SCNCapsule)initWithParametricGeometryRef:(__C3DParametricGeometry *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)a3;
- (id)presentationCapsule;
- (int64_t)primitiveType;
- (void)_setupObjCModelFrom:(id)a3;
- (void)_syncObjCModel:(__C3DParametricGeometry *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCapRadius:(CGFloat)capRadius;
- (void)setCapSegmentCount:(NSInteger)capSegmentCount;
- (void)setHeight:(CGFloat)height;
- (void)setHeightSegmentCount:(NSInteger)heightSegmentCount;
- (void)setPrimitiveType:(int64_t)a3;
- (void)setRadialSegmentCount:(NSInteger)radialSegmentCount;
@end

@implementation SCNCapsule

- (SCNCapsule)init
{
  v3 = C3DParametricGeometryCreate(0, kC3DCapsuleCallBacks);
  v8.receiver = self;
  v8.super_class = SCNCapsule;
  v4 = [(SCNGeometry *)&v8 initWithGeometryRef:v3];
  v5 = v4;
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = SCNCapsule;
    [(SCNGeometry *)&v7 _syncObjCModel];
    [(SCNCapsule *)v5 _syncObjCModel:[(SCNGeometry *)v5 geometryRef]];
  }

  CFRelease(v3);
  return v5;
}

- (SCNCapsule)initWithParametricGeometryRef:(__C3DParametricGeometry *)a3
{
  v7.receiver = self;
  v7.super_class = SCNCapsule;
  v3 = [(SCNGeometry *)&v7 initWithGeometryRef:a3];
  v4 = v3;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = SCNCapsule;
    [(SCNGeometry *)&v6 _syncObjCModel];
    [(SCNCapsule *)v4 _syncObjCModel:[(SCNGeometry *)v4 geometryRef]];
  }

  return v4;
}

- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)a3
{
  v4.receiver = self;
  v4.super_class = SCNCapsule;
  return [(SCNGeometry *)&v4 initPresentationGeometryWithGeometryRef:a3];
}

- (id)presentationCapsule
{
  v2 = [[SCNCapsule alloc] initPresentationParametricGeometryWithParametricGeometryRef:[(SCNGeometry *)self geometryRef]];

  return v2;
}

- (void)_syncObjCModel:(__C3DParametricGeometry *)a3
{
  self->_capsulecapRadius = C3DParametricGeometryGetFloatValue(a3, 4);
  self->_capsuleheight = C3DParametricGeometryGetFloatValue(a3, 1);
  self->_capsuleheightSegmentCount = C3DParametricGeometryGetIntValue(a3, 12);
  self->_capsuleradialSegmentCount = C3DParametricGeometryGetIntValue(a3, 15);
  self->_capsulecapSegmentCount = C3DParametricGeometryGetIntValue(a3, 16);
  self->_capsuleprimitiveType = C3DParametricGeometryGetIntValue(a3, 20);
}

- (CGFloat)capRadius
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_capsulecapRadius;
  }

  v3 = [(SCNGeometry *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  Radius = C3DParametricGeometryGetRadius([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return Radius;
}

- (void)setCapRadius:(CGFloat)capRadius
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNCapsule setCapRadius:];
    }
  }

  else if (self->_capsulecapRadius != capRadius)
  {
    self->_capsulecapRadius = capRadius;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __27__SCNCapsule_setCapRadius___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = capRadius;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"capRadius" applyBlock:v7];
  }
}

void __27__SCNCapsule_setCapRadius___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetCapRadius(v2, v3);
}

- (NSInteger)capSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_capsulecapSegmentCount;
  }

  v3 = [(SCNGeometry *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  CapSegmentCount = C3DParametricGeometryGetCapSegmentCount([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return CapSegmentCount;
}

- (void)setCapSegmentCount:(NSInteger)capSegmentCount
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNCapsule setCapSegmentCount:];
    }
  }

  else if (self->_capsulecapSegmentCount != capSegmentCount)
  {
    self->_capsulecapSegmentCount = capSegmentCount;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__SCNCapsule_setCapSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = capSegmentCount;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"capSegmentCount" applyBlock:v7];
  }
}

void __33__SCNCapsule_setCapSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetCapSegmentCount(v2, v3);
}

- (CGFloat)height
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_capsuleheight;
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
      [SCNCapsule setHeight:];
    }
  }

  else if (self->_capsuleheight != height)
  {
    self->_capsuleheight = height;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __24__SCNCapsule_setHeight___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = height;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"height" applyBlock:v7];
  }
}

void __24__SCNCapsule_setHeight___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetHeight(v2, v3);
}

- (NSInteger)heightSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_capsuleheightSegmentCount;
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
      [SCNCapsule setHeightSegmentCount:];
    }
  }

  else if (self->_capsuleheightSegmentCount != heightSegmentCount)
  {
    self->_capsuleheightSegmentCount = heightSegmentCount;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SCNCapsule_setHeightSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = heightSegmentCount;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"heightSegmentCount" applyBlock:v7];
  }
}

void __36__SCNCapsule_setHeightSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetHeightSegmentCount(v2, v3);
}

- (int64_t)primitiveType
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_capsuleprimitiveType;
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
      [SCNCapsule setPrimitiveType:];
    }
  }

  else if (self->_capsuleprimitiveType != a3)
  {
    self->_capsuleprimitiveType = a3;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__SCNCapsule_setPrimitiveType___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = a3;
    [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v7];
  }
}

void __31__SCNCapsule_setPrimitiveType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetPrimitiveType(v2, v3);
}

- (NSInteger)radialSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_capsuleradialSegmentCount;
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
      [SCNCapsule setRadialSegmentCount:];
    }
  }

  else if (self->_capsuleradialSegmentCount != radialSegmentCount)
  {
    self->_capsuleradialSegmentCount = radialSegmentCount;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SCNCapsule_setRadialSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = radialSegmentCount;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"radialSegmentCount" applyBlock:v7];
  }
}

void __36__SCNCapsule_setRadialSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetRadialSegmentCount(v2, v3);
}

- (BOOL)getBoundingBoxMin:(SCNVector3 *)a3 max:(SCNVector3 *)a4
{
  v24 = 0.0;
  v23 = 0;
  v22 = 0.0;
  v21 = 0;
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
      C3DCapsuleGetBoundingBox([(SCNGeometry *)self geometryRef], &v23, &v21);
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
      v20.super_class = SCNCapsule;
      return [(SCNGeometry *)&v20 getBoundingBoxMin:a3 max:a4];
    }

    [(SCNCapsule *)self capRadius];
    v12 = v11;
    [(SCNCapsule *)self height];
    v14 = v13;
    v15.f64[0] = v12;
    C3DCylinderGetBoundingBoxForCylinderParameters(&v23, &v21, v15, v14);
    v10 = v16;
  }

LABEL_12:
  if (a3)
  {
    v17 = v24;
    *&a3->x = v23;
    a3->z = v17;
  }

  if (a4)
  {
    v18 = v22;
    *&a4->x = v21;
    a4->z = v18;
  }

  return v10;
}

- (BOOL)getBoundingSphereCenter:(SCNVector3 *)a3 radius:(double *)a4
{
  v16 = 0uLL;
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v7 = [(SCNGeometry *)self sceneRef];
    v8 = v7;
    if (v7)
    {
      C3DSceneLock(v7);
    }

    if ([(SCNGeometry *)self geometryRef]&& C3DCapsuleGetBoundingSphere([(SCNGeometry *)self geometryRef], &v16))
    {
      if (a3)
      {
        v9 = *(&v16 + 2);
        *&a3->x = v16;
        a3->z = v9;
      }

      if (a4)
      {
        *a4 = *(&v16 + 3);
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

  [(SCNCapsule *)self capRadius];
  v12 = v11;
  [(SCNCapsule *)self height];
  if (!C3DCapsuleGetBoundingSphereForCapsuleParameters(&v16, v12, v13))
  {
    return 0;
  }

  if (a3)
  {
    v14 = *(&v16 + 2);
    *&a3->x = v16;
    a3->z = v14;
  }

  if (a4)
  {
    *a4 = *(&v16 + 3);
  }

  return 1;
}

+ (SCNCapsule)capsuleWithCapRadius:(CGFloat)capRadius height:(CGFloat)height
{
  v6 = objc_alloc_init(a1);
  [v6 setCapRadius:capRadius];
  [v6 setHeight:height];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SCNGeometry *)self geometryDescription];
  [(SCNCapsule *)self capRadius];
  v6 = v5;
  [(SCNCapsule *)self height];
  return [v3 stringWithFormat:@"<%@ | capRadius=%.3f height=%.3f>", v4, v6, v7];
}

- (void)_setupObjCModelFrom:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCNCapsule;
  [(SCNGeometry *)&v5 _setupObjCModelFrom:?];
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  [a3 capRadius];
  [(SCNCapsule *)self setCapRadius:?];
  [a3 height];
  [(SCNCapsule *)self setHeight:?];
  -[SCNCapsule setHeightSegmentCount:](self, "setHeightSegmentCount:", [a3 heightSegmentCount]);
  -[SCNCapsule setRadialSegmentCount:](self, "setRadialSegmentCount:", [a3 radialSegmentCount]);
  -[SCNCapsule setCapSegmentCount:](self, "setCapSegmentCount:", [a3 capSegmentCount]);
  -[SCNCapsule setPrimitiveType:](self, "setPrimitiveType:", [a3 primitiveType]);
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
  v5.super_class = SCNCapsule;
  [(SCNGeometry *)&v5 encodeWithCoder:?];
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    [(SCNCapsule *)self _syncObjCModel:[(SCNGeometry *)self geometryRef]];
  }

  [a3 encodeDouble:@"capsulecapRadius" forKey:self->_capsulecapRadius];
  [a3 encodeDouble:@"capsuleheight" forKey:self->_capsuleheight];
  [a3 encodeInteger:self->_capsuleheightSegmentCount forKey:@"capsuleheightSegmentCount"];
  [a3 encodeInteger:self->_capsuleradialSegmentCount forKey:@"capsuleradialSegmentCount"];
  [a3 encodeInteger:self->_capsulecapSegmentCount forKey:@"capsulecapSegmentCount"];
  [a3 encodeInteger:self->_capsuleprimitiveType forKey:@"capsuleprimitiveType"];
}

- (SCNCapsule)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCNCapsule;
  v4 = [(SCNGeometry *)&v7 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [a3 decodeDoubleForKey:@"capsulecapRadius"];
    [(SCNCapsule *)v4 setCapRadius:?];
    [a3 decodeDoubleForKey:@"capsuleheight"];
    [(SCNCapsule *)v4 setHeight:?];
    -[SCNCapsule setHeightSegmentCount:](v4, "setHeightSegmentCount:", [a3 decodeIntegerForKey:@"capsuleheightSegmentCount"]);
    -[SCNCapsule setRadialSegmentCount:](v4, "setRadialSegmentCount:", [a3 decodeIntegerForKey:@"capsuleradialSegmentCount"]);
    -[SCNCapsule setCapSegmentCount:](v4, "setCapSegmentCount:", [a3 decodeIntegerForKey:@"capsulecapSegmentCount"]);
    -[SCNCapsule setPrimitiveType:](v4, "setPrimitiveType:", [a3 decodeIntegerForKey:@"capsuleprimitiveType"]);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (void)setCapRadius:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setCapSegmentCount:.cold.1()
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

@end