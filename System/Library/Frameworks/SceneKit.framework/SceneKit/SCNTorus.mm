@interface SCNTorus
+ (SCNTorus)torusWithRingRadius:(CGFloat)ringRadius pipeRadius:(CGFloat)pipeRadius;
- (BOOL)getBoundingBoxMin:(SCNVector3 *)min max:(SCNVector3 *)max;
- (BOOL)getBoundingSphereCenter:(SCNVector3 *)center radius:(double *)radius;
- (CGFloat)pipeRadius;
- (CGFloat)ringRadius;
- (NSInteger)pipeSegmentCount;
- (NSInteger)ringSegmentCount;
- (SCNTorus)init;
- (SCNTorus)initWithCoder:(id)coder;
- (SCNTorus)initWithParametricGeometryRef:(__C3DParametricGeometry *)ref;
- (double)radialSpan;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)ref;
- (id)presentationTorus;
- (int64_t)primitiveType;
- (void)_setupObjCModelFrom:(id)from;
- (void)_syncObjCModel:(__C3DParametricGeometry *)model;
- (void)encodeWithCoder:(id)coder;
- (void)setPipeRadius:(CGFloat)pipeRadius;
- (void)setPipeSegmentCount:(NSInteger)pipeSegmentCount;
- (void)setPrimitiveType:(int64_t)type;
- (void)setRadialSpan:(double)span;
- (void)setRingRadius:(CGFloat)ringRadius;
- (void)setRingSegmentCount:(NSInteger)ringSegmentCount;
@end

@implementation SCNTorus

- (SCNTorus)init
{
  v3 = C3DParametricGeometryCreate(0, kC3DTorusCallBacks);
  v8.receiver = self;
  v8.super_class = SCNTorus;
  v4 = [(SCNGeometry *)&v8 initWithGeometryRef:v3];
  v5 = v4;
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = SCNTorus;
    [(SCNGeometry *)&v7 _syncObjCModel];
    [(SCNTorus *)v5 _syncObjCModel:[(SCNGeometry *)v5 geometryRef]];
  }

  CFRelease(v3);
  return v5;
}

- (SCNTorus)initWithParametricGeometryRef:(__C3DParametricGeometry *)ref
{
  v7.receiver = self;
  v7.super_class = SCNTorus;
  v3 = [(SCNGeometry *)&v7 initWithGeometryRef:ref];
  v4 = v3;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = SCNTorus;
    [(SCNGeometry *)&v6 _syncObjCModel];
    [(SCNTorus *)v4 _syncObjCModel:[(SCNGeometry *)v4 geometryRef]];
  }

  return v4;
}

- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)ref
{
  v4.receiver = self;
  v4.super_class = SCNTorus;
  return [(SCNGeometry *)&v4 initPresentationGeometryWithGeometryRef:ref];
}

- (id)presentationTorus
{
  v2 = [[SCNTorus alloc] initPresentationParametricGeometryWithParametricGeometryRef:[(SCNGeometry *)self geometryRef]];

  return v2;
}

- (void)_syncObjCModel:(__C3DParametricGeometry *)model
{
  self->_torusringRadius = C3DParametricGeometryGetFloatValue(model, 9);
  self->_toruspipeRadius = C3DParametricGeometryGetFloatValue(model, 10);
  self->_torusradialSpan = C3DParametricGeometryGetFloatValue(model, 21);
  self->_torusringSegmentCount = C3DParametricGeometryGetRingSegmentCount(model);
  self->_toruspipeSegmentCount = C3DParametricGeometryGetPipeSegmentCount(model);
  self->_torusprimitiveType = C3DParametricGeometryGetIntValue(model, 20);
}

- (CGFloat)pipeRadius
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_toruspipeRadius;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  PipeRadius = C3DParametricGeometryGetPipeRadius([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return PipeRadius;
}

- (void)setPipeRadius:(CGFloat)pipeRadius
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNTorus setPipeRadius:];
    }
  }

  else if (self->_toruspipeRadius != pipeRadius)
  {
    self->_toruspipeRadius = pipeRadius;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __26__SCNTorus_setPipeRadius___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = pipeRadius;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"pipeRadius" applyBlock:v7];
  }
}

void __26__SCNTorus_setPipeRadius___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetPipeRadius(v2, v3);
}

- (NSInteger)pipeSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_toruspipeSegmentCount;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  PipeSegmentCount = C3DParametricGeometryGetPipeSegmentCount([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return PipeSegmentCount;
}

- (void)setPipeSegmentCount:(NSInteger)pipeSegmentCount
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNTorus setPipeSegmentCount:];
    }
  }

  else if (self->_toruspipeSegmentCount != pipeSegmentCount)
  {
    self->_toruspipeSegmentCount = pipeSegmentCount;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __32__SCNTorus_setPipeSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = pipeSegmentCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"pipeSegmentCount" applyBlock:v7];
  }
}

void __32__SCNTorus_setPipeSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetPipeSegmentCount(v2, v3);
}

- (int64_t)primitiveType
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_torusprimitiveType;
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
      [SCNTorus setPrimitiveType:];
    }
  }

  else if (self->_torusprimitiveType != type)
  {
    self->_torusprimitiveType = type;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29__SCNTorus_setPrimitiveType___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = type;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

void __29__SCNTorus_setPrimitiveType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetPrimitiveType(v2, v3);
}

- (double)radialSpan
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_torusradialSpan;
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
      [SCNTorus setRadialSpan:];
    }
  }

  else if (self->_torusradialSpan != span)
  {
    self->_torusradialSpan = span;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __26__SCNTorus_setRadialSpan___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = span;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"radialSpan" applyBlock:v7];
  }
}

void __26__SCNTorus_setRadialSpan___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetRadialSpan(v2, v3);
}

- (CGFloat)ringRadius
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_torusringRadius;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  RingRadius = C3DParametricGeometryGetRingRadius([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return RingRadius;
}

- (void)setRingRadius:(CGFloat)ringRadius
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNTorus setRingRadius:];
    }
  }

  else if (self->_torusringRadius != ringRadius)
  {
    self->_torusringRadius = ringRadius;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __26__SCNTorus_setRingRadius___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = ringRadius;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"ringRadius" applyBlock:v7];
  }
}

void __26__SCNTorus_setRingRadius___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetRingRadius(v2, v3);
}

- (NSInteger)ringSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_torusringSegmentCount;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  RingSegmentCount = C3DParametricGeometryGetRingSegmentCount([(SCNGeometry *)self geometryRef]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return RingSegmentCount;
}

- (void)setRingSegmentCount:(NSInteger)ringSegmentCount
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNTorus setRingSegmentCount:];
    }
  }

  else if (self->_torusringSegmentCount != ringSegmentCount)
  {
    self->_torusringSegmentCount = ringSegmentCount;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __32__SCNTorus_setRingSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = ringSegmentCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"ringSegmentCount" applyBlock:v7];
  }
}

void __32__SCNTorus_setRingSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetRingSegmentCount(v2, v3);
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
      C3DTorusGetBoundingBox([(SCNGeometry *)self geometryRef], &v23, &v21);
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
      v20.super_class = SCNTorus;
      return [(SCNGeometry *)&v20 getBoundingBoxMin:min max:max];
    }

    [(SCNTorus *)self ringRadius];
    v12 = v11;
    [(SCNTorus *)self pipeRadius];
    v14 = v13;
    v15.i64[0] = v12;
    C3DTorusGetBoundingBoxForTorusParameters(&v23, &v21, v15, v14);
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

    if ([(SCNGeometry *)self geometryRef]&& C3DTorusGetBoundingSphere([(SCNGeometry *)self geometryRef], &v16))
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

  [(SCNTorus *)self ringRadius];
  v12 = v11;
  [(SCNTorus *)self pipeRadius];
  if (!C3DTorusGetBoundingSphereForTorusParameters(&v16, v12, v13))
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

+ (SCNTorus)torusWithRingRadius:(CGFloat)ringRadius pipeRadius:(CGFloat)pipeRadius
{
  v6 = objc_alloc_init(self);
  [v6 setRingRadius:ringRadius];
  [v6 setPipeRadius:pipeRadius];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  geometryDescription = [(SCNGeometry *)self geometryDescription];
  [(SCNTorus *)self ringRadius];
  v6 = v5;
  [(SCNTorus *)self pipeRadius];
  return [v3 stringWithFormat:@"<%@ | ringRadius=%.3f pipeRadius=%.3f>", geometryDescription, v6, v7];
}

- (void)_setupObjCModelFrom:(id)from
{
  v5.receiver = self;
  v5.super_class = SCNTorus;
  [(SCNGeometry *)&v5 _setupObjCModelFrom:?];
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  [from ringRadius];
  [(SCNTorus *)self setRingRadius:?];
  [from pipeRadius];
  [(SCNTorus *)self setPipeRadius:?];
  [from radialSpan];
  [(SCNTorus *)self setRadialSpan:?];
  -[SCNTorus setRingSegmentCount:](self, "setRingSegmentCount:", [from ringSegmentCount]);
  -[SCNTorus setPipeSegmentCount:](self, "setPipeSegmentCount:", [from pipeSegmentCount]);
  -[SCNTorus setPrimitiveType:](self, "setPrimitiveType:", [from primitiveType]);
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
  v5.super_class = SCNTorus;
  [(SCNGeometry *)&v5 encodeWithCoder:?];
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    [(SCNTorus *)self _syncObjCModel:[(SCNGeometry *)self geometryRef]];
  }

  [coder encodeDouble:@"torusringRadius" forKey:self->_torusringRadius];
  [coder encodeDouble:@"toruspipeRadius" forKey:self->_toruspipeRadius];
  [coder encodeDouble:@"torusradialSpan" forKey:self->_torusradialSpan];
  [coder encodeInteger:self->_torusringSegmentCount forKey:@"torusringSegmentCount"];
  [coder encodeInteger:self->_toruspipeSegmentCount forKey:@"toruspipeSegmentCount"];
  [coder encodeInteger:self->_torusprimitiveType forKey:@"torusprimitiveType"];
}

- (SCNTorus)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SCNTorus;
  v4 = [(SCNGeometry *)&v7 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [coder decodeDoubleForKey:@"torusringRadius"];
    [(SCNTorus *)v4 setRingRadius:?];
    [coder decodeDoubleForKey:@"toruspipeRadius"];
    [(SCNTorus *)v4 setPipeRadius:?];
    [coder decodeDoubleForKey:@"torusradialSpan"];
    [(SCNTorus *)v4 setRadialSpan:?];
    -[SCNTorus setRingSegmentCount:](v4, "setRingSegmentCount:", [coder decodeIntegerForKey:@"torusringSegmentCount"]);
    -[SCNTorus setPipeSegmentCount:](v4, "setPipeSegmentCount:", [coder decodeIntegerForKey:@"toruspipeSegmentCount"]);
    -[SCNTorus setPrimitiveType:](v4, "setPrimitiveType:", [coder decodeIntegerForKey:@"torusprimitiveType"]);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (void)setPipeRadius:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setPipeSegmentCount:.cold.1()
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

- (void)setRingRadius:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setRingSegmentCount:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

@end