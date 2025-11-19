@interface SCNSphere
+ (SCNSphere)sphereWithRadius:(CGFloat)radius;
- (BOOL)getBoundingBoxMin:(SCNVector3 *)a3 max:(SCNVector3 *)a4;
- (BOOL)getBoundingSphereCenter:(SCNVector3 *)a3 radius:(double *)a4;
- (BOOL)isGeodesic;
- (BOOL)isHemispheric;
- (CGFloat)radius;
- (NSInteger)segmentCount;
- (SCNSphere)init;
- (SCNSphere)initWithCoder:(id)a3;
- (SCNSphere)initWithParametricGeometryRef:(__C3DParametricGeometry *)a3;
- (double)radialSpan;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)a3;
- (id)presentationSphere;
- (int64_t)primitiveType;
- (void)_setupObjCModelFrom:(id)a3;
- (void)_syncObjCModel:(__C3DParametricGeometry *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setGeodesic:(BOOL)geodesic;
- (void)setHemispheric:(BOOL)a3;
- (void)setPrimitiveType:(int64_t)a3;
- (void)setRadialSpan:(double)a3;
- (void)setRadius:(CGFloat)radius;
- (void)setSegmentCount:(NSInteger)segmentCount;
@end

@implementation SCNSphere

- (SCNSphere)init
{
  v3 = C3DParametricGeometryCreate(0, kC3DSphereCallBacks);
  v8.receiver = self;
  v8.super_class = SCNSphere;
  v4 = [(SCNGeometry *)&v8 initWithGeometryRef:v3];
  v5 = v4;
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = SCNSphere;
    [(SCNGeometry *)&v7 _syncObjCModel];
    [(SCNSphere *)v5 _syncObjCModel:[(SCNGeometry *)v5 geometryRef]];
  }

  CFRelease(v3);
  return v5;
}

- (SCNSphere)initWithParametricGeometryRef:(__C3DParametricGeometry *)a3
{
  v7.receiver = self;
  v7.super_class = SCNSphere;
  v3 = [(SCNGeometry *)&v7 initWithGeometryRef:a3];
  v4 = v3;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = SCNSphere;
    [(SCNGeometry *)&v6 _syncObjCModel];
    [(SCNSphere *)v4 _syncObjCModel:[(SCNGeometry *)v4 geometryRef]];
  }

  return v4;
}

- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)a3
{
  v4.receiver = self;
  v4.super_class = SCNSphere;
  return [(SCNGeometry *)&v4 initPresentationGeometryWithGeometryRef:a3];
}

- (id)presentationSphere
{
  v2 = [[SCNSphere alloc] initPresentationParametricGeometryWithParametricGeometryRef:[(SCNGeometry *)self geometryRef]];

  return v2;
}

- (void)_syncObjCModel:(__C3DParametricGeometry *)a3
{
  self->_sphereradius = C3DParametricGeometryGetFloatValue(a3, 4);
  self->_sphereradialSpan = C3DParametricGeometryGetFloatValue(a3, 21);
  self->_spheresegmentCount = C3DParametricGeometryGetIntValue(a3, 23);
  self->_sphereprimitiveType = C3DParametricGeometryGetIntValue(a3, 20);
  IntValue = C3DParametricGeometryGetIntValue(a3, 22);
  self->_spheregeodesic = IntValue == 1;
  self->_spherehemispheric = IntValue == 2;
}

- (BOOL)isGeodesic
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v3 = [(SCNGeometry *)self sceneRef];
    v4 = v3;
    if (v3)
    {
      C3DSceneLock(v3);
    }

    IsGeodesic = C3DParametricGeometryIsGeodesic([(SCNGeometry *)self geometryRef]);
    if (v4)
    {
      C3DSceneUnlock(v4);
    }
  }

  else
  {
    return self->_spheregeodesic;
  }

  return IsGeodesic;
}

- (void)setGeodesic:(BOOL)geodesic
{
  v3 = geodesic;
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNSphere setGeodesic:];
    }
  }

  else if (self->_spheregeodesic != v3)
  {
    self->_spheregeodesic = v3;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __25__SCNSphere_setGeodesic___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = v3;
    [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v7];
  }
}

void __25__SCNSphere_setGeodesic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetGeodesic(v2, v3);
}

- (BOOL)isHemispheric
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v3 = [(SCNGeometry *)self sceneRef];
    v4 = v3;
    if (v3)
    {
      C3DSceneLock(v3);
    }

    IsHemispheric = C3DParametricGeometryIsHemispheric([(SCNGeometry *)self geometryRef]);
    if (v4)
    {
      C3DSceneUnlock(v4);
    }
  }

  else
  {
    return self->_spherehemispheric;
  }

  return IsHemispheric;
}

- (void)setHemispheric:(BOOL)a3
{
  v3 = a3;
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNSphere setHemispheric:];
    }
  }

  else if (self->_spherehemispheric != v3)
  {
    self->_spherehemispheric = v3;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__SCNSphere_setHemispheric___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = v3;
    [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v7];
  }
}

void __28__SCNSphere_setHemispheric___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) geometryRef];

  C3DParametricGeometrySetHemispheric(v1);
}

- (int64_t)primitiveType
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_sphereprimitiveType;
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
      [SCNSphere setPrimitiveType:];
    }
  }

  else if (a3 <= 4 && self->_sphereprimitiveType != a3)
  {
    self->_sphereprimitiveType = a3;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __30__SCNSphere_setPrimitiveType___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = a3;
    [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v7];
  }
}

void __30__SCNSphere_setPrimitiveType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetPrimitiveType(v2, v3);
}

- (double)radialSpan
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_sphereradialSpan;
  }

  v3 = [(SCNGeometry *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  RadialSpan = C3DParametricGeometryGetRadialSpan([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return RadialSpan;
}

- (void)setRadialSpan:(double)a3
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNSphere setRadialSpan:];
    }
  }

  else if (self->_sphereradialSpan != a3)
  {
    self->_sphereradialSpan = a3;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __27__SCNSphere_setRadialSpan___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = a3;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"radialSpan" applyBlock:v7];
  }
}

void __27__SCNSphere_setRadialSpan___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetRadialSpan(v2, v3);
}

- (CGFloat)radius
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_sphereradius;
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

- (void)setRadius:(CGFloat)radius
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNSphere setRadius:];
    }
  }

  else if (self->_sphereradius != radius)
  {
    self->_sphereradius = radius;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __23__SCNSphere_setRadius___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = radius;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"radius" applyBlock:v7];
  }
}

void __23__SCNSphere_setRadius___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetCapRadius(v2, v3);
}

- (NSInteger)segmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_spheresegmentCount;
  }

  v3 = [(SCNGeometry *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  SegmentCount = C3DParametricGeometryGetSegmentCount([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return SegmentCount;
}

- (void)setSegmentCount:(NSInteger)segmentCount
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNSphere setSegmentCount:];
    }
  }

  else if (self->_spheresegmentCount != segmentCount)
  {
    self->_spheresegmentCount = segmentCount;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29__SCNSphere_setSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = segmentCount;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"segmentCount" applyBlock:v7];
  }
}

void __29__SCNSphere_setSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetSegmentCount(v2, v3);
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
      v9 = [(SCNGeometry *)self geometryRef];
      C3DSphereGetBoundingBox(v9, &v23, &v21, v10, v11);
      v13 = v12;
      if (!v8)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v13 = 0;
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
      v20.super_class = SCNSphere;
      return [(SCNGeometry *)&v20 getBoundingBoxMin:a3 max:a4];
    }

    [(SCNSphere *)self radius];
    C3DSphereGetBoundingBoxForSphereParameters(&v23, &v21, v14, v15);
    v13 = v16;
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

  return v13;
}

- (BOOL)getBoundingSphereCenter:(SCNVector3 *)a3 radius:(double *)a4
{
  v14 = 0uLL;
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v7 = [(SCNGeometry *)self sceneRef];
    v8 = v7;
    if (v7)
    {
      C3DSceneLock(v7);
    }

    if ([(SCNGeometry *)self geometryRef]&& C3DSphereGetBoundingSphere([(SCNGeometry *)self geometryRef], &v14))
    {
      if (a3)
      {
        v9 = *(&v14 + 2);
        *&a3->x = v14;
        a3->z = v9;
      }

      if (a4)
      {
        *a4 = *(&v14 + 3);
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

  [(SCNSphere *)self radius];
  if (!C3DSphereGetBoundingSphereForSphereParameters(&v14, v11))
  {
    return 0;
  }

  if (a3)
  {
    v12 = *(&v14 + 2);
    *&a3->x = v14;
    a3->z = v12;
  }

  if (a4)
  {
    *a4 = *(&v14 + 3);
  }

  return 1;
}

+ (SCNSphere)sphereWithRadius:(CGFloat)radius
{
  v4 = objc_alloc_init(a1);
  [v4 setRadius:radius];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SCNGeometry *)self geometryDescription];
  [(SCNSphere *)self radius];
  return [v3 stringWithFormat:@"<%@ | radius=%.3f>", v4, v5];
}

- (void)_setupObjCModelFrom:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCNSphere;
  [(SCNGeometry *)&v5 _setupObjCModelFrom:?];
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  [a3 radius];
  [(SCNSphere *)self setRadius:?];
  [a3 radialSpan];
  [(SCNSphere *)self setRadialSpan:?];
  -[SCNSphere setSegmentCount:](self, "setSegmentCount:", [a3 segmentCount]);
  -[SCNSphere setGeodesic:](self, "setGeodesic:", [a3 isGeodesic]);
  -[SCNSphere setHemispheric:](self, "setHemispheric:", [a3 isHemispheric]);
  -[SCNSphere setPrimitiveType:](self, "setPrimitiveType:", [a3 primitiveType]);
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
  v5.super_class = SCNSphere;
  [(SCNGeometry *)&v5 encodeWithCoder:?];
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    [(SCNSphere *)self _syncObjCModel:[(SCNGeometry *)self geometryRef]];
  }

  [a3 encodeDouble:@"sphereradius" forKey:self->_sphereradius];
  [a3 encodeDouble:@"sphereradialSpan" forKey:self->_sphereradialSpan];
  [a3 encodeInteger:self->_spheresegmentCount forKey:@"spheresegmentCount"];
  [a3 encodeInteger:self->_sphereprimitiveType forKey:@"sphereprimitiveType"];
  [a3 encodeBool:self->_spheregeodesic forKey:@"spheregeodesic"];
  [a3 encodeBool:self->_spherehemispheric forKey:@"spherehemispheric"];
}

- (SCNSphere)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCNSphere;
  v4 = [(SCNGeometry *)&v7 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [a3 decodeDoubleForKey:@"sphereradius"];
    [(SCNSphere *)v4 setRadius:?];
    [a3 decodeDoubleForKey:@"sphereradialSpan"];
    [(SCNSphere *)v4 setRadialSpan:?];
    -[SCNSphere setSegmentCount:](v4, "setSegmentCount:", [a3 decodeIntegerForKey:@"spheresegmentCount"]);
    -[SCNSphere setPrimitiveType:](v4, "setPrimitiveType:", [a3 decodeIntegerForKey:@"sphereprimitiveType"]);
    -[SCNSphere setGeodesic:](v4, "setGeodesic:", [a3 decodeBoolForKey:@"spheregeodesic"]);
    -[SCNSphere setHemispheric:](v4, "setHemispheric:", [a3 decodeBoolForKey:@"spherehemispheric"]);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (void)setGeodesic:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setHemispheric:.cold.1()
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

- (void)setRadialSpan:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setRadius:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setSegmentCount:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

@end