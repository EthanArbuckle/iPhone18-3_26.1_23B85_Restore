@interface SCNFloor
+ (SCNFloor)floor;
- (CGFloat)length;
- (CGFloat)reflectionFalloffEnd;
- (CGFloat)reflectionFalloffStart;
- (CGFloat)reflectionResolutionScaleFactor;
- (CGFloat)reflectivity;
- (CGFloat)width;
- (NSUInteger)reflectionCategoryBitMask;
- (SCNFloor)init;
- (SCNFloor)initWithCoder:(id)a3;
- (SCNFloor)initWithFloorGeometryRef:(__C3DFloor *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)reflectionSampleCount;
- (void)_syncObjCModel;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setLength:(CGFloat)length;
- (void)setReflectionCategoryBitMask:(NSUInteger)reflectionCategoryBitMask;
- (void)setReflectionFalloffEnd:(CGFloat)reflectionFalloffEnd;
- (void)setReflectionFalloffStart:(CGFloat)reflectionFalloffStart;
- (void)setReflectionResolutionScaleFactor:(CGFloat)reflectionResolutionScaleFactor;
- (void)setReflectionSampleCount:(unint64_t)a3;
- (void)setReflectivity:(CGFloat)reflectivity;
- (void)setWidth:(CGFloat)width;
@end

@implementation SCNFloor

- (void)_syncObjCModel
{
  self->_reflectivity = C3DFloorGetReflectivity([(SCNGeometry *)self geometryRef]);
  self->_reflectionFalloffStart = C3DFloorGetReflectionFalloffStart([(SCNGeometry *)self geometryRef]);
  self->_reflectionFalloffEnd = C3DFloorGetReflectionFalloffEnd([(SCNGeometry *)self geometryRef]);
  self->_reflectionResolutionScaleFactor = C3DFloorGetReflectionResolutionScaleFactor([(SCNGeometry *)self geometryRef]);
  self->_reflectionCategoryBitMask = C3DFloorGetReflectionCategoryBitMask([(SCNGeometry *)self geometryRef]);
  v3.receiver = self;
  v3.super_class = SCNFloor;
  [(SCNGeometry *)&v3 _syncObjCModel];
}

- (SCNFloor)init
{
  v3 = C3DFloorCreate();
  v6.receiver = self;
  v6.super_class = SCNFloor;
  v4 = [(SCNGeometry *)&v6 initWithGeometryRef:v3];
  CFRelease(v3);
  return v4;
}

- (SCNFloor)initWithFloorGeometryRef:(__C3DFloor *)a3
{
  v6.receiver = self;
  v6.super_class = SCNFloor;
  v3 = [(SCNGeometry *)&v6 initWithGeometryRef:a3];
  v4 = v3;
  if (v3)
  {
    [(SCNFloor *)v3 _syncObjCModel];
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SCNFloor;
  [(SCNGeometry *)&v2 dealloc];
}

+ (SCNFloor)floor
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)setReflectionResolutionScaleFactor:(CGFloat)reflectionResolutionScaleFactor
{
  if (*(self + 168))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNFloor setReflectionResolutionScaleFactor:];
    }
  }

  else if (self->_reflectionResolutionScaleFactor != reflectionResolutionScaleFactor)
  {
    v4 = reflectionResolutionScaleFactor;
    self->_reflectionResolutionScaleFactor = v4;
    if (reflectionResolutionScaleFactor == 0.0)
    {
      v5 = 0.5;
    }

    else
    {
      v5 = reflectionResolutionScaleFactor;
    }

    *(self + 168) = *(self + 168) & 0xFD | (2 * (reflectionResolutionScaleFactor != 0.0));
    v6 = [(SCNGeometry *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__SCNFloor_setReflectionResolutionScaleFactor___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    *&v8[5] = v5;
    [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v8];
  }
}

void __47__SCNFloor_setReflectionResolutionScaleFactor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DFloorSetReflectionResolutionScaleFactor(v2, v3);
}

- (void)setReflectionCategoryBitMask:(NSUInteger)reflectionCategoryBitMask
{
  if (*(self + 168))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNFloor setReflectionCategoryBitMask:];
    }
  }

  else if (self->_reflectionCategoryBitMask != reflectionCategoryBitMask)
  {
    self->_reflectionCategoryBitMask = reflectionCategoryBitMask;
    v5 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__SCNFloor_setReflectionCategoryBitMask___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = reflectionCategoryBitMask;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

uint64_t __41__SCNFloor_setReflectionCategoryBitMask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  return C3DFloorSetReflectionCategoryBitMask(v2, v3);
}

- (NSUInteger)reflectionCategoryBitMask
{
  if ((*(self + 168) & 1) == 0)
  {
    return self->_reflectionCategoryBitMask;
  }

  v4 = [(SCNGeometry *)self sceneRef];
  v5 = v4;
  if (v4)
  {
    C3DSceneLock(v4);
  }

  ReflectionCategoryBitMask = C3DFloorGetReflectionCategoryBitMask([(SCNGeometry *)self geometryRef]);
  if (v5)
  {
    C3DSceneUnlock(v5);
  }

  return ReflectionCategoryBitMask;
}

- (void)setWidth:(CGFloat)width
{
  if (*(self + 168))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNFloor setWidth:];
    }
  }

  else if (self->_width != width)
  {
    self->_width = width;
    v5 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __21__SCNFloor_setWidth___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = width;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"width" applyBlock:v7];
  }
}

uint64_t __21__SCNFloor_setWidth___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  return C3DFloorSetWidth(v2, v3);
}

- (CGFloat)width
{
  if ((*(self + 168) & 1) == 0)
  {
    return self->_width;
  }

  v4 = [(SCNGeometry *)self sceneRef];
  v5 = v4;
  if (v4)
  {
    C3DSceneLock(v4);
  }

  Width = C3DFloorGetWidth([(SCNGeometry *)self geometryRef]);
  if (v5)
  {
    C3DSceneUnlock(v5);
  }

  return Width;
}

- (void)setLength:(CGFloat)length
{
  if (*(self + 168))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNFloor setLength:];
    }
  }

  else if (self->_length != length)
  {
    self->_length = length;
    v5 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __22__SCNFloor_setLength___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = length;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"length" applyBlock:v7];
  }
}

uint64_t __22__SCNFloor_setLength___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  return C3DFloorSetLength(v2, v3);
}

- (CGFloat)length
{
  if ((*(self + 168) & 1) == 0)
  {
    return self->_length;
  }

  v4 = [(SCNGeometry *)self sceneRef];
  v5 = v4;
  if (v4)
  {
    C3DSceneLock(v4);
  }

  Length = C3DFloorGetLength([(SCNGeometry *)self geometryRef]);
  if (v5)
  {
    C3DSceneUnlock(v5);
  }

  return Length;
}

- (CGFloat)reflectionFalloffEnd
{
  if (*(self + 168))
  {
    v4 = [(SCNGeometry *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    ReflectionFalloffEnd = C3DFloorGetReflectionFalloffEnd([(SCNGeometry *)self geometryRef]);
    if (v5)
    {
      C3DSceneUnlock(v5);
    }
  }

  else
  {
    return self->_reflectionFalloffEnd;
  }

  return ReflectionFalloffEnd;
}

- (void)setReflectionFalloffEnd:(CGFloat)reflectionFalloffEnd
{
  if (*(self + 168))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNFloor setReflectionFalloffEnd:];
    }
  }

  else if (self->_reflectionFalloffEnd != reflectionFalloffEnd)
  {
    v5 = reflectionFalloffEnd;
    self->_reflectionFalloffEnd = v5;
    v6 = [(SCNGeometry *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__SCNFloor_setReflectionFalloffEnd___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    *&v8[5] = reflectionFalloffEnd;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"reflectionFalloffEnd" applyBlock:v8];
  }
}

void __36__SCNFloor_setReflectionFalloffEnd___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DFloorSetReflectionFalloffEnd(v2, v3);
}

- (CGFloat)reflectionFalloffStart
{
  if (*(self + 168))
  {
    v4 = [(SCNGeometry *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    ReflectionFalloffStart = C3DFloorGetReflectionFalloffStart([(SCNGeometry *)self geometryRef]);
    if (v5)
    {
      C3DSceneUnlock(v5);
    }
  }

  else
  {
    return self->_reflectionFalloffStart;
  }

  return ReflectionFalloffStart;
}

- (void)setReflectionFalloffStart:(CGFloat)reflectionFalloffStart
{
  if (*(self + 168))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNFloor setReflectionFalloffStart:];
    }
  }

  else if (self->_reflectionFalloffStart != reflectionFalloffStart)
  {
    v5 = reflectionFalloffStart;
    self->_reflectionFalloffStart = v5;
    v6 = [(SCNGeometry *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__SCNFloor_setReflectionFalloffStart___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    *&v8[5] = reflectionFalloffStart;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"reflectionFalloffStart" applyBlock:v8];
  }
}

void __38__SCNFloor_setReflectionFalloffStart___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DFloorSetReflectionFalloffStart(v2, v3);
}

- (CGFloat)reflectionResolutionScaleFactor
{
  if (*(self + 168))
  {
    v4 = [(SCNGeometry *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    ReflectionResolutionScaleFactor = C3DFloorGetReflectionResolutionScaleFactor([(SCNGeometry *)self geometryRef]);
    if (v5)
    {
      C3DSceneUnlock(v5);
    }
  }

  else
  {
    return self->_reflectionResolutionScaleFactor;
  }

  return ReflectionResolutionScaleFactor;
}

- (unint64_t)reflectionSampleCount
{
  if ((*(self + 168) & 1) == 0)
  {
    return self->_reflectionSampleCount;
  }

  v4 = [(SCNGeometry *)self sceneRef];
  v5 = v4;
  if (v4)
  {
    C3DSceneLock(v4);
  }

  ReflectionSampleCount = C3DFloorGetReflectionSampleCount([(SCNGeometry *)self geometryRef]);
  if (v5)
  {
    C3DSceneUnlock(v5);
  }

  return ReflectionSampleCount;
}

- (void)setReflectionSampleCount:(unint64_t)a3
{
  if (*(self + 168))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNFloor setReflectionSampleCount:];
    }
  }

  else if (self->_reflectionSampleCount != a3)
  {
    self->_reflectionSampleCount = a3;
    v5 = [(SCNGeometry *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SCNFloor_setReflectionSampleCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = a3;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

void __37__SCNFloor_setReflectionSampleCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DFloorSetReflectionSampleCount(v2, v3);
}

- (CGFloat)reflectivity
{
  if (*(self + 168))
  {
    v4 = [(SCNGeometry *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    Reflectivity = C3DFloorGetReflectivity([(SCNGeometry *)self geometryRef]);
    if (v5)
    {
      C3DSceneUnlock(v5);
    }
  }

  else
  {
    return self->_reflectivity;
  }

  return Reflectivity;
}

- (void)setReflectivity:(CGFloat)reflectivity
{
  if (*(self + 168))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNFloor setReflectivity:];
    }
  }

  else if (self->_reflectivity != reflectivity)
  {
    v5 = reflectivity;
    self->_reflectivity = v5;
    v6 = [(SCNGeometry *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__SCNFloor_setReflectivity___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    *&v8[5] = reflectivity;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"reflectivity" applyBlock:v8];
  }
}

void __28__SCNFloor_setReflectivity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DFloorSetReflectivity(v2, v3);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  [v4 _setupObjCModelFrom:self];
  [(SCNFloor *)self reflectivity];
  [v4 setReflectivity:?];
  [(SCNFloor *)self reflectionFalloffEnd];
  [v4 setReflectionFalloffEnd:?];
  [(SCNFloor *)self reflectionFalloffStart];
  [v4 setReflectionFalloffStart:?];
  [(SCNFloor *)self reflectionResolutionScaleFactor];
  [v4 setReflectionResolutionScaleFactor:?];
  [v4 setReflectionSampleCount:{-[SCNFloor reflectionSampleCount](self, "reflectionSampleCount")}];
  [v4 setReflectionCategoryBitMask:{-[SCNFloor reflectionCategoryBitMask](self, "reflectionCategoryBitMask")}];
  [(SCNFloor *)self width];
  [v4 setWidth:?];
  [(SCNFloor *)self length];
  [v4 setLength:?];
  [v4 _copyAnimationsFrom:self];
  +[SCNTransaction commitImmediate];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = SCNFloor;
  [(SCNGeometry *)&v11 encodeWithCoder:?];
  *&v5 = self->_reflectivity;
  [a3 encodeFloat:@"reflectivity" forKey:v5];
  *&v6 = self->_reflectionFalloffStart;
  [a3 encodeFloat:@"reflectionFalloffStart" forKey:v6];
  *&v7 = self->_reflectionFalloffEnd;
  [a3 encodeFloat:@"reflectionFalloffEnd" forKey:v7];
  width = self->_width;
  *&width = width;
  [a3 encodeFloat:@"width" forKey:width];
  length = self->_length;
  *&length = length;
  [a3 encodeFloat:@"length" forKey:length];
  [a3 encodeInteger:self->_reflectionCategoryBitMask forKey:@"reflectionCategoryBitMask"];
  if ((*(self + 168) & 2) != 0)
  {
    *&v10 = self->_reflectionResolutionScaleFactor;
    [a3 encodeFloat:@"reflectionResolutionScaleFactor" forKey:v10];
  }
}

- (SCNFloor)initWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = SCNFloor;
  v4 = [(SCNGeometry *)&v13 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [(SCNFloor *)v4 _customDecodingOfSCNFloor:a3];
    [a3 decodeFloatForKey:@"reflectivity"];
    [(SCNFloor *)v4 setReflectivity:v6];
    [a3 decodeFloatForKey:@"reflectionFalloffStart"];
    [(SCNFloor *)v4 setReflectionFalloffStart:v7];
    [a3 decodeFloatForKey:@"reflectionFalloffEnd"];
    [(SCNFloor *)v4 setReflectionFalloffEnd:v8];
    [a3 decodeFloatForKey:@"width"];
    [(SCNFloor *)v4 setWidth:v9];
    [a3 decodeFloatForKey:@"length"];
    [(SCNFloor *)v4 setLength:v10];
    if ([a3 containsValueForKey:@"reflectionCategoryBitMask"])
    {
      -[SCNFloor setReflectionCategoryBitMask:](v4, "setReflectionCategoryBitMask:", [a3 decodeIntegerForKey:@"reflectionCategoryBitMask"]);
    }

    if ([a3 containsValueForKey:@"reflectionResolutionScaleFactor"])
    {
      [a3 decodeFloatForKey:@"reflectionResolutionScaleFactor"];
      if (v11 != 0.0)
      {
        [(SCNFloor *)v4 setReflectionResolutionScaleFactor:v11];
        *(v4 + 168) |= 2u;
      }
    }

    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (void)setReflectionResolutionScaleFactor:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setReflectionCategoryBitMask:.cold.1()
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

- (void)setLength:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setReflectionFalloffEnd:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setReflectionFalloffStart:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setReflectionSampleCount:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setReflectivity:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

@end