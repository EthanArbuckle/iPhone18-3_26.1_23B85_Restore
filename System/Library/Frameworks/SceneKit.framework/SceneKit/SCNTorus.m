@interface SCNTorus
+ (SCNTorus)torusWithRingRadius:(CGFloat)ringRadius pipeRadius:(CGFloat)pipeRadius;
- (BOOL)getBoundingBoxMin:(SCNVector3 *)a3 max:(SCNVector3 *)a4;
- (BOOL)getBoundingSphereCenter:(SCNVector3 *)a3 radius:(double *)a4;
- (CGFloat)pipeRadius;
- (CGFloat)ringRadius;
- (NSInteger)pipeSegmentCount;
- (NSInteger)ringSegmentCount;
- (SCNTorus)init;
- (SCNTorus)initWithCoder:(id)a3;
- (SCNTorus)initWithParametricGeometryRef:(__C3DParametricGeometry *)a3;
- (double)radialSpan;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)a3;
- (id)presentationTorus;
- (int64_t)primitiveType;
- (void)_setupObjCModelFrom:(id)a3;
- (void)_syncObjCModel:(__C3DParametricGeometry *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setPipeRadius:(CGFloat)pipeRadius;
- (void)setPipeSegmentCount:(NSInteger)pipeSegmentCount;
- (void)setPrimitiveType:(int64_t)a3;
- (void)setRadialSpan:(double)a3;
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

- (SCNTorus)initWithParametricGeometryRef:(__C3DParametricGeometry *)a3
{
  v7.receiver = self;
  v7.super_class = SCNTorus;
  v3 = [(SCNGeometry *)&v7 initWithGeometryRef:a3];
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

- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)a3
{
  v4.receiver = self;
  v4.super_class = SCNTorus;
  return [(SCNGeometry *)&v4 initPresentationGeometryWithGeometryRef:a3];
}

- (id)presentationTorus
{
  v2 = [[SCNTorus alloc] initPresentationParametricGeometryWithParametricGeometryRef:[(SCNGeometry *)self geometryRef]];

  return v2;
}

- (void)_syncObjCModel:(__C3DParametricGeometry *)a3
{
  self->_torusringRadius = C3DParametricGeometryGetFloatValue(a3, 9);
  self->_toruspipeRadius = C3DParametricGeometryGetFloatValue(a3, 10);
  self->_torusradialSpan = C3DParametricGeometryGetFloatValue(a3, 21);
  self->_torusringSegmentCount = C3DParametricGeometryGetRingSegmentCount(a3);
  self->_toruspipeSegmentCount = C3DParametricGeometryGetPipeSegmentCount(a3);
  self->_torusprimitiveType = C3DParametricGeometryGetIntValue(a3, 20);
}

- (CGFloat)pipeRadius
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_toruspipeRadius;
  }

  v3 = [(SCNGeometry *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
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
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __26__SCNTorus_setPipeRadius___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = pipeRadius;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"pipeRadius" applyBlock:v7];
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

  v3 = [(SCNGeometry *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
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
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __32__SCNTorus_setPipeSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = pipeSegmentCount;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"pipeSegmentCount" applyBlock:v7];
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
      [SCNTorus setPrimitiveType:];
    }
  }

  else if (self->_torusprimitiveType != a3)
  {
    self->_torusprimitiveType = a3;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29__SCNTorus_setPrimitiveType___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = a3;
    [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v7];
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
      [SCNTorus setRadialSpan:];
    }
  }

  else if (self->_torusradialSpan != a3)
  {
    self->_torusradialSpan = a3;
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __26__SCNTorus_setRadialSpan___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = a3;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"radialSpan" applyBlock:v7];
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

  v3 = [(SCNGeometry *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
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
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __26__SCNTorus_setRingRadius___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = ringRadius;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"ringRadius" applyBlock:v7];
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

  v3 = [(SCNGeometry *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
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
    v6 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __32__SCNTorus_setRingSegmentCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = ringSegmentCount;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"ringSegmentCount" applyBlock:v7];
  }
}

void __32__SCNTorus_setRingSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetRingSegmentCount(v2, v3);
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
      return [(SCNGeometry *)&v20 getBoundingBoxMin:a3 max:a4];
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

    if ([(SCNGeometry *)self geometryRef]&& C3DTorusGetBoundingSphere([(SCNGeometry *)self geometryRef], &v16))
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

  [(SCNTorus *)self ringRadius];
  v12 = v11;
  [(SCNTorus *)self pipeRadius];
  if (!C3DTorusGetBoundingSphereForTorusParameters(&v16, v12, v13))
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

+ (SCNTorus)torusWithRingRadius:(CGFloat)ringRadius pipeRadius:(CGFloat)pipeRadius
{
  v6 = objc_alloc_init(a1);
  [v6 setRingRadius:ringRadius];
  [v6 setPipeRadius:pipeRadius];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SCNGeometry *)self geometryDescription];
  [(SCNTorus *)self ringRadius];
  v6 = v5;
  [(SCNTorus *)self pipeRadius];
  return [v3 stringWithFormat:@"<%@ | ringRadius=%.3f pipeRadius=%.3f>", v4, v6, v7];
}

- (void)_setupObjCModelFrom:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCNTorus;
  [(SCNGeometry *)&v5 _setupObjCModelFrom:?];
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  [a3 ringRadius];
  [(SCNTorus *)self setRingRadius:?];
  [a3 pipeRadius];
  [(SCNTorus *)self setPipeRadius:?];
  [a3 radialSpan];
  [(SCNTorus *)self setRadialSpan:?];
  -[SCNTorus setRingSegmentCount:](self, "setRingSegmentCount:", [a3 ringSegmentCount]);
  -[SCNTorus setPipeSegmentCount:](self, "setPipeSegmentCount:", [a3 pipeSegmentCount]);
  -[SCNTorus setPrimitiveType:](self, "setPrimitiveType:", [a3 primitiveType]);
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
  v5.super_class = SCNTorus;
  [(SCNGeometry *)&v5 encodeWithCoder:?];
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    [(SCNTorus *)self _syncObjCModel:[(SCNGeometry *)self geometryRef]];
  }

  [a3 encodeDouble:@"torusringRadius" forKey:self->_torusringRadius];
  [a3 encodeDouble:@"toruspipeRadius" forKey:self->_toruspipeRadius];
  [a3 encodeDouble:@"torusradialSpan" forKey:self->_torusradialSpan];
  [a3 encodeInteger:self->_torusringSegmentCount forKey:@"torusringSegmentCount"];
  [a3 encodeInteger:self->_toruspipeSegmentCount forKey:@"toruspipeSegmentCount"];
  [a3 encodeInteger:self->_torusprimitiveType forKey:@"torusprimitiveType"];
}

- (SCNTorus)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCNTorus;
  v4 = [(SCNGeometry *)&v7 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [a3 decodeDoubleForKey:@"torusringRadius"];
    [(SCNTorus *)v4 setRingRadius:?];
    [a3 decodeDoubleForKey:@"toruspipeRadius"];
    [(SCNTorus *)v4 setPipeRadius:?];
    [a3 decodeDoubleForKey:@"torusradialSpan"];
    [(SCNTorus *)v4 setRadialSpan:?];
    -[SCNTorus setRingSegmentCount:](v4, "setRingSegmentCount:", [a3 decodeIntegerForKey:@"torusringSegmentCount"]);
    -[SCNTorus setPipeSegmentCount:](v4, "setPipeSegmentCount:", [a3 decodeIntegerForKey:@"toruspipeSegmentCount"]);
    -[SCNTorus setPrimitiveType:](v4, "setPrimitiveType:", [a3 decodeIntegerForKey:@"torusprimitiveType"]);
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