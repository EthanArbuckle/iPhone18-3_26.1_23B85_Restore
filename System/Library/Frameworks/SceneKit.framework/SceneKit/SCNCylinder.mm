@interface SCNCylinder
+ (SCNCylinder)cylinderWithRadius:(CGFloat)radius height:(CGFloat)height;
- (BOOL)getBoundingBoxMin:(SCNVector3 *)min max:(SCNVector3 *)max;
- (BOOL)getBoundingSphereCenter:(SCNVector3 *)center radius:(double *)radius;
- (CGFloat)height;
- (CGFloat)radius;
- (NSInteger)heightSegmentCount;
- (NSInteger)radialSegmentCount;
- (SCNCylinder)init;
- (SCNCylinder)initWithCoder:(id)coder;
- (SCNCylinder)initWithParametricGeometryRef:(__C3DParametricGeometry *)ref;
- (double)radialSpan;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)ref;
- (id)presentationCylinder;
- (int64_t)primitiveType;
- (void)_setupObjCModelFrom:(id)from;
- (void)_syncObjCModel:(__C3DParametricGeometry *)model;
- (void)encodeWithCoder:(id)coder;
- (void)setHeight:(CGFloat)height;
- (void)setHeightSegmentCount:(NSInteger)heightSegmentCount;
- (void)setPrimitiveType:(int64_t)type;
- (void)setRadialSegmentCount:(NSInteger)radialSegmentCount;
- (void)setRadialSpan:(double)span;
- (void)setRadius:(CGFloat)radius;
@end

@implementation SCNCylinder

- (SCNCylinder)init
{
  v3 = C3DParametricGeometryCreate(0, kC3DCylinderCallBacks);
  v8.receiver = self;
  v8.super_class = SCNCylinder;
  v4 = [(SCNGeometry *)&v8 initWithGeometryRef:v3];
  v5 = v4;
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = SCNCylinder;
    [(SCNGeometry *)&v7 _syncObjCModel];
    [(SCNCylinder *)v5 _syncObjCModel:[(SCNGeometry *)v5 geometryRef]];
  }

  CFRelease(v3);
  return v5;
}

- (SCNCylinder)initWithParametricGeometryRef:(__C3DParametricGeometry *)ref
{
  v7.receiver = self;
  v7.super_class = SCNCylinder;
  v3 = [(SCNGeometry *)&v7 initWithGeometryRef:ref];
  v4 = v3;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = SCNCylinder;
    [(SCNGeometry *)&v6 _syncObjCModel];
    [(SCNCylinder *)v4 _syncObjCModel:[(SCNGeometry *)v4 geometryRef]];
  }

  return v4;
}

- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)ref
{
  v4.receiver = self;
  v4.super_class = SCNCylinder;
  return [(SCNGeometry *)&v4 initPresentationGeometryWithGeometryRef:ref];
}

- (id)presentationCylinder
{
  v2 = [[SCNCylinder alloc] initPresentationParametricGeometryWithParametricGeometryRef:[(SCNGeometry *)self geometryRef]];

  return v2;
}

- (void)_syncObjCModel:(__C3DParametricGeometry *)model
{
  self->_cylinderradius = C3DParametricGeometryGetFloatValue(model, 4);
  self->_cylinderradialSpan = C3DParametricGeometryGetFloatValue(model, 21);
  self->_cylinderheight = C3DParametricGeometryGetFloatValue(model, 1);
  self->_cylinderheightSegmentCount = C3DParametricGeometryGetIntValue(model, 12);
  self->_cylinderradialSegmentCount = C3DParametricGeometryGetIntValue(model, 15);
  self->_cylinderprimitiveType = C3DParametricGeometryGetIntValue(model, 20);
}

- (CGFloat)height
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_cylinderheight;
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
      [SCNCylinder setHeight:];
    }
  }

  else if (self->_cylinderheight != height)
  {
    self->_cylinderheight = height;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __25__SCNCylinder_setHeight___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = height;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"height" applyBlock:v7];
  }
}

void __25__SCNCylinder_setHeight___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetHeight(v2, v3);
}

- (NSInteger)heightSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_cylinderheightSegmentCount;
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
      [SCNCylinder setHeightSegmentCount:];
    }
  }

  else if (self->_cylinderheightSegmentCount != heightSegmentCount)
  {
    self->_cylinderheightSegmentCount = heightSegmentCount;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SCNCylinder_setHeightSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = heightSegmentCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"heightSegmentCount" applyBlock:v7];
  }
}

void __37__SCNCylinder_setHeightSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetHeightSegmentCount(v2, v3);
}

- (int64_t)primitiveType
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_cylinderprimitiveType;
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
      [SCNCylinder setPrimitiveType:];
    }
  }

  else if (self->_cylinderprimitiveType != type)
  {
    self->_cylinderprimitiveType = type;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __32__SCNCylinder_setPrimitiveType___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = type;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

void __32__SCNCylinder_setPrimitiveType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetPrimitiveType(v2, v3);
}

- (NSInteger)radialSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_cylinderradialSegmentCount;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
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
      [SCNCylinder setRadialSegmentCount:];
    }
  }

  else if (self->_cylinderradialSegmentCount != radialSegmentCount)
  {
    self->_cylinderradialSegmentCount = radialSegmentCount;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SCNCylinder_setRadialSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = radialSegmentCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"radialSegmentCount" applyBlock:v7];
  }
}

void __37__SCNCylinder_setRadialSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetRadialSegmentCount(v2, v3);
}

- (double)radialSpan
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_cylinderradialSpan;
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
      [SCNCylinder setRadialSpan:];
    }
  }

  else if (self->_cylinderradialSpan != span)
  {
    self->_cylinderradialSpan = span;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29__SCNCylinder_setRadialSpan___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = span;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"radialSpan" applyBlock:v7];
  }
}

void __29__SCNCylinder_setRadialSpan___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetRadialSpan(v2, v3);
}

- (CGFloat)radius
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_cylinderradius;
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
      [SCNCylinder setRadius:];
    }
  }

  else if (self->_cylinderradius != radius)
  {
    self->_cylinderradius = radius;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __25__SCNCylinder_setRadius___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = radius;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"radius" applyBlock:v7];
  }
}

void __25__SCNCylinder_setRadius___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetCapRadius(v2, v3);
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
      C3DCylinderGetBoundingBox([(SCNGeometry *)self geometryRef], &v23, &v21);
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
      v20.super_class = SCNCylinder;
      return [(SCNGeometry *)&v20 getBoundingBoxMin:min max:max];
    }

    [(SCNCylinder *)self radius];
    v12 = v11;
    [(SCNCylinder *)self height];
    v14 = v13;
    v15.f64[0] = v12;
    C3DCylinderGetBoundingBoxForCylinderParameters(&v23, &v21, v15, v14);
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

    if ([(SCNGeometry *)self geometryRef]&& C3DCylinderGetBoundingSphere([(SCNGeometry *)self geometryRef], &v16))
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

  [(SCNCylinder *)self radius];
  v12 = v11;
  [(SCNCylinder *)self height];
  if (!C3DCylinderGetBoundingSphereForCylinderParameters(&v16, v12, v13))
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

+ (SCNCylinder)cylinderWithRadius:(CGFloat)radius height:(CGFloat)height
{
  v6 = objc_alloc_init(self);
  [v6 setRadius:radius];
  [v6 setHeight:height];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  geometryDescription = [(SCNGeometry *)self geometryDescription];
  [(SCNCylinder *)self radius];
  v6 = v5;
  [(SCNCylinder *)self height];
  return [v3 stringWithFormat:@"<%@ | radius=%.3f height=%.3f>", geometryDescription, v6, v7];
}

- (void)_setupObjCModelFrom:(id)from
{
  v5.receiver = self;
  v5.super_class = SCNCylinder;
  [(SCNGeometry *)&v5 _setupObjCModelFrom:?];
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  [from radius];
  [(SCNCylinder *)self setRadius:?];
  [from height];
  [(SCNCylinder *)self setHeight:?];
  [from radialSpan];
  [(SCNCylinder *)self setRadialSpan:?];
  -[SCNCylinder setHeightSegmentCount:](self, "setHeightSegmentCount:", [from heightSegmentCount]);
  -[SCNCylinder setRadialSegmentCount:](self, "setRadialSegmentCount:", [from radialSegmentCount]);
  -[SCNCylinder setPrimitiveType:](self, "setPrimitiveType:", [from primitiveType]);
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
  v5.super_class = SCNCylinder;
  [(SCNGeometry *)&v5 encodeWithCoder:?];
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    [(SCNCylinder *)self _syncObjCModel:[(SCNGeometry *)self geometryRef]];
  }

  [coder encodeDouble:@"cylinderradius" forKey:self->_cylinderradius];
  [coder encodeDouble:@"cylinderheight" forKey:self->_cylinderheight];
  [coder encodeDouble:@"cylinderradialSpan" forKey:self->_cylinderradialSpan];
  [coder encodeInteger:self->_cylinderheightSegmentCount forKey:@"cylinderheightSegmentCount"];
  [coder encodeInteger:self->_cylinderradialSegmentCount forKey:@"cylinderradialSegmentCount"];
  [coder encodeInteger:self->_cylinderprimitiveType forKey:@"cylinderprimitiveType"];
}

- (SCNCylinder)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SCNCylinder;
  v4 = [(SCNGeometry *)&v7 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [coder decodeDoubleForKey:@"cylinderradius"];
    [(SCNCylinder *)v4 setRadius:?];
    [coder decodeDoubleForKey:@"cylinderheight"];
    [(SCNCylinder *)v4 setHeight:?];
    [coder decodeDoubleForKey:@"cylinderradialSpan"];
    [(SCNCylinder *)v4 setRadialSpan:?];
    -[SCNCylinder setHeightSegmentCount:](v4, "setHeightSegmentCount:", [coder decodeIntegerForKey:@"cylinderheightSegmentCount"]);
    -[SCNCylinder setRadialSegmentCount:](v4, "setRadialSegmentCount:", [coder decodeIntegerForKey:@"cylinderradialSegmentCount"]);
    -[SCNCylinder setPrimitiveType:](v4, "setPrimitiveType:", [coder decodeIntegerForKey:@"cylinderprimitiveType"]);
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

@end