@interface SCNSphere
+ (SCNSphere)sphereWithRadius:(CGFloat)radius;
- (BOOL)getBoundingBoxMin:(SCNVector3 *)min max:(SCNVector3 *)max;
- (BOOL)getBoundingSphereCenter:(SCNVector3 *)center radius:(double *)radius;
- (BOOL)isGeodesic;
- (BOOL)isHemispheric;
- (CGFloat)radius;
- (NSInteger)segmentCount;
- (SCNSphere)init;
- (SCNSphere)initWithCoder:(id)coder;
- (SCNSphere)initWithParametricGeometryRef:(__C3DParametricGeometry *)ref;
- (double)radialSpan;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)ref;
- (id)presentationSphere;
- (int64_t)primitiveType;
- (void)_setupObjCModelFrom:(id)from;
- (void)_syncObjCModel:(__C3DParametricGeometry *)model;
- (void)encodeWithCoder:(id)coder;
- (void)setGeodesic:(BOOL)geodesic;
- (void)setHemispheric:(BOOL)hemispheric;
- (void)setPrimitiveType:(int64_t)type;
- (void)setRadialSpan:(double)span;
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

- (SCNSphere)initWithParametricGeometryRef:(__C3DParametricGeometry *)ref
{
  v7.receiver = self;
  v7.super_class = SCNSphere;
  v3 = [(SCNGeometry *)&v7 initWithGeometryRef:ref];
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

- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)ref
{
  v4.receiver = self;
  v4.super_class = SCNSphere;
  return [(SCNGeometry *)&v4 initPresentationGeometryWithGeometryRef:ref];
}

- (id)presentationSphere
{
  v2 = [[SCNSphere alloc] initPresentationParametricGeometryWithParametricGeometryRef:[(SCNGeometry *)self geometryRef]];

  return v2;
}

- (void)_syncObjCModel:(__C3DParametricGeometry *)model
{
  self->_sphereradius = C3DParametricGeometryGetFloatValue(model, 4);
  self->_sphereradialSpan = C3DParametricGeometryGetFloatValue(model, 21);
  self->_spheresegmentCount = C3DParametricGeometryGetIntValue(model, 23);
  self->_sphereprimitiveType = C3DParametricGeometryGetIntValue(model, 20);
  IntValue = C3DParametricGeometryGetIntValue(model, 22);
  self->_spheregeodesic = IntValue == 1;
  self->_spherehemispheric = IntValue == 2;
}

- (BOOL)isGeodesic
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    sceneRef = [(SCNGeometry *)self sceneRef];
    v4 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __25__SCNSphere_setGeodesic___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = v3;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
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
    sceneRef = [(SCNGeometry *)self sceneRef];
    v4 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
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

- (void)setHemispheric:(BOOL)hemispheric
{
  hemisphericCopy = hemispheric;
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNSphere setHemispheric:];
    }
  }

  else if (self->_spherehemispheric != hemisphericCopy)
  {
    self->_spherehemispheric = hemisphericCopy;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__SCNSphere_setHemispheric___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = hemisphericCopy;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
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
      [SCNSphere setPrimitiveType:];
    }
  }

  else if (type <= 4 && self->_sphereprimitiveType != type)
  {
    self->_sphereprimitiveType = type;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __30__SCNSphere_setPrimitiveType___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = type;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
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

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  RadialSpan = C3DParametricGeometryGetRadialSpan([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return RadialSpan;
}

- (void)setRadialSpan:(double)span
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNSphere setRadialSpan:];
    }
  }

  else if (self->_sphereradialSpan != span)
  {
    self->_sphereradialSpan = span;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __27__SCNSphere_setRadialSpan___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = span;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"radialSpan" applyBlock:v7];
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

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __23__SCNSphere_setRadius___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = radius;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"radius" applyBlock:v7];
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

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29__SCNSphere_setSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = segmentCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"segmentCount" applyBlock:v7];
  }
}

void __29__SCNSphere_setSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetSegmentCount(v2, v3);
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
      geometryRef = [(SCNGeometry *)self geometryRef];
      C3DSphereGetBoundingBox(geometryRef, &v23, &v21, v10, v11);
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
      return [(SCNGeometry *)&v20 getBoundingBoxMin:min max:max];
    }

    [(SCNSphere *)self radius];
    C3DSphereGetBoundingBoxForSphereParameters(&v23, &v21, v14, v15);
    v13 = v16;
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

  return v13;
}

- (BOOL)getBoundingSphereCenter:(SCNVector3 *)center radius:(double *)radius
{
  v14 = 0uLL;
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    sceneRef = [(SCNGeometry *)self sceneRef];
    v8 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    if ([(SCNGeometry *)self geometryRef]&& C3DSphereGetBoundingSphere([(SCNGeometry *)self geometryRef], &v14))
    {
      if (center)
      {
        v9 = *(&v14 + 2);
        *&center->x = v14;
        center->z = v9;
      }

      if (radius)
      {
        *radius = *(&v14 + 3);
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

  if (center)
  {
    v12 = *(&v14 + 2);
    *&center->x = v14;
    center->z = v12;
  }

  if (radius)
  {
    *radius = *(&v14 + 3);
  }

  return 1;
}

+ (SCNSphere)sphereWithRadius:(CGFloat)radius
{
  v4 = objc_alloc_init(self);
  [v4 setRadius:radius];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  geometryDescription = [(SCNGeometry *)self geometryDescription];
  [(SCNSphere *)self radius];
  return [v3 stringWithFormat:@"<%@ | radius=%.3f>", geometryDescription, v5];
}

- (void)_setupObjCModelFrom:(id)from
{
  v5.receiver = self;
  v5.super_class = SCNSphere;
  [(SCNGeometry *)&v5 _setupObjCModelFrom:?];
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  [from radius];
  [(SCNSphere *)self setRadius:?];
  [from radialSpan];
  [(SCNSphere *)self setRadialSpan:?];
  -[SCNSphere setSegmentCount:](self, "setSegmentCount:", [from segmentCount]);
  -[SCNSphere setGeodesic:](self, "setGeodesic:", [from isGeodesic]);
  -[SCNSphere setHemispheric:](self, "setHemispheric:", [from isHemispheric]);
  -[SCNSphere setPrimitiveType:](self, "setPrimitiveType:", [from primitiveType]);
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
  v5.super_class = SCNSphere;
  [(SCNGeometry *)&v5 encodeWithCoder:?];
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    [(SCNSphere *)self _syncObjCModel:[(SCNGeometry *)self geometryRef]];
  }

  [coder encodeDouble:@"sphereradius" forKey:self->_sphereradius];
  [coder encodeDouble:@"sphereradialSpan" forKey:self->_sphereradialSpan];
  [coder encodeInteger:self->_spheresegmentCount forKey:@"spheresegmentCount"];
  [coder encodeInteger:self->_sphereprimitiveType forKey:@"sphereprimitiveType"];
  [coder encodeBool:self->_spheregeodesic forKey:@"spheregeodesic"];
  [coder encodeBool:self->_spherehemispheric forKey:@"spherehemispheric"];
}

- (SCNSphere)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SCNSphere;
  v4 = [(SCNGeometry *)&v7 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [coder decodeDoubleForKey:@"sphereradius"];
    [(SCNSphere *)v4 setRadius:?];
    [coder decodeDoubleForKey:@"sphereradialSpan"];
    [(SCNSphere *)v4 setRadialSpan:?];
    -[SCNSphere setSegmentCount:](v4, "setSegmentCount:", [coder decodeIntegerForKey:@"spheresegmentCount"]);
    -[SCNSphere setPrimitiveType:](v4, "setPrimitiveType:", [coder decodeIntegerForKey:@"sphereprimitiveType"]);
    -[SCNSphere setGeodesic:](v4, "setGeodesic:", [coder decodeBoolForKey:@"spheregeodesic"]);
    -[SCNSphere setHemispheric:](v4, "setHemispheric:", [coder decodeBoolForKey:@"spherehemispheric"]);
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