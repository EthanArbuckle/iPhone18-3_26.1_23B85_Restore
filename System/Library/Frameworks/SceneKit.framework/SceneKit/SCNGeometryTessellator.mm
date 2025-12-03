@interface SCNGeometryTessellator
- ($FD31CB4CBA95066EF4C93929357FF4F2)_tessellatorValueForGeometry:(SEL)geometry;
- (SCNGeometryTessellator)init;
- (SCNGeometryTessellator)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addClient:(id)client;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)removeClient:(id)client;
- (void)setAdaptive:(BOOL)adaptive;
- (void)setEdgeTessellationFactor:(CGFloat)edgeTessellationFactor;
- (void)setInsideTessellationFactor:(CGFloat)insideTessellationFactor;
- (void)setMaximumEdgeLength:(CGFloat)maximumEdgeLength;
- (void)setScreenSpace:(BOOL)screenSpace;
- (void)setSmoothingMode:(SCNTessellationSmoothingMode)smoothingMode;
- (void)setTessellationFactorScale:(CGFloat)tessellationFactorScale;
- (void)setTessellationPartitionMode:(MTLTessellationPartitionMode)tessellationPartitionMode;
- (void)tessellatorValueDidChange;
- (void)tessellatorValueDidChangeForClient:(id)client;
@end

@implementation SCNGeometryTessellator

- (SCNGeometryTessellator)init
{
  v9.receiver = self;
  v9.super_class = SCNGeometryTessellator;
  v2 = [(SCNGeometryTessellator *)&v9 init];
  if (v2)
  {
    *(v2 + 1) = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    __asm { FMOV            V0.4S, #1.0 }

    *(v2 + 20) = _Q0;
    *(v2 + 40) = xmmword_21C27F640;
  }

  return v2;
}

- (SCNGeometryTessellator)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = SCNGeometryTessellator;
  v4 = [(SCNGeometryTessellator *)&v10 init];
  if (v4)
  {
    v4->_clients = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    [coder decodeFloatForKey:@"tessellationFactorScale"];
    v4->_tessellationFactorScale = v5;
    [coder decodeFloatForKey:@"maximumEdgeLength"];
    v4->_maximumEdgeLength = v6;
    [coder decodeFloatForKey:@"edgeTessellationFactor"];
    v4->_edgeTessellationFactor = v7;
    [coder decodeFloatForKey:@"insideTessellationFactor"];
    v4->_insideTessellationFactor = v8;
    v4->_adaptive = [coder decodeBoolForKey:@"adaptive"];
    v4->_screenSpace = [coder decodeBoolForKey:@"screenSpace"];
    v4->_partitionMode = [coder decodeIntegerForKey:@"tessellationPartitionMode"];
    v4->_smoothingMode = [coder decodeIntegerForKey:@"smoothingMode"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  *&v3 = self->_tessellationFactorScale;
  [coder encodeFloat:@"tessellationFactorScale" forKey:v3];
  *&v6 = self->_maximumEdgeLength;
  [coder encodeFloat:@"maximumEdgeLength" forKey:v6];
  *&v7 = self->_edgeTessellationFactor;
  [coder encodeFloat:@"edgeTessellationFactor" forKey:v7];
  *&v8 = self->_insideTessellationFactor;
  [coder encodeFloat:@"insideTessellationFactor" forKey:v8];
  [coder encodeBool:self->_adaptive forKey:@"adaptive"];
  [coder encodeBool:self->_screenSpace forKey:@"screenSpace"];
  [coder encodeInteger:self->_partitionMode forKey:@"tessellationPartitionMode"];
  smoothingMode = self->_smoothingMode;

  [coder encodeInteger:smoothingMode forKey:@"smoothingMode"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNGeometryTessellator;
  [(SCNGeometryTessellator *)&v3 dealloc];
}

- (id)description
{
  if (self->_adaptive)
  {
    screenSpace = self->_screenSpace;
    v4 = MEMORY[0x277CCACA8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    maximumEdgeLength = self->_maximumEdgeLength;
    if (screenSpace)
    {
      return [v4 stringWithFormat:@"<%@: %p, screen space (maximum edge length: %.3f px)>", maximumEdgeLength, v6, self, self->_maximumEdgeLength, v11];
    }

    else
    {
      return [v4 stringWithFormat:@"<%@: %p, local space (maximum edge length: %.3f)>", maximumEdgeLength, v6, self, self->_maximumEdgeLength, v11];
    }
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = objc_opt_class();
    return [v9 stringWithFormat:@"<%@: %p, uniform (inside: %.3f, edge: %.3f)>", self->_insideTessellationFactor, NSStringFromClass(v10), self, self->_insideTessellationFactor, self->_edgeTessellationFactor];
  }
}

- (void)addClient:(id)client
{
  [(NSMutableSet *)self->_clients addObject:?];

  [(SCNGeometryTessellator *)self tessellatorValueDidChangeForClient:client];
}

- (void)removeClient:(id)client
{
  geometryRef = [client geometryRef];
  sceneRef = [client sceneRef];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SCNGeometryTessellator_removeClient___block_invoke;
  v7[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7[4] = geometryRef;
  [SCNTransaction postCommandWithContext:sceneRef object:client applyBlock:v7];
  [(NSMutableSet *)self->_clients removeObject:client];
}

void __39__SCNGeometryTessellator_removeClient___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  memset(v2, 0, sizeof(v2));
  C3DGeometrySetTessellator(v1, v2);
}

- (void)tessellatorValueDidChange
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  clients = self->_clients;
  v4 = [(NSMutableSet *)clients countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(clients);
        }

        [(SCNGeometryTessellator *)self tessellatorValueDidChangeForClient:*(*(&v8 + 1) + 8 * i)];
      }

      v5 = [(NSMutableSet *)clients countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- ($FD31CB4CBA95066EF4C93929357FF4F2)_tessellatorValueForGeometry:(SEL)geometry
{
  tessellator = [a4 tessellator];
  *&retstr->var2 = 0;
  retstr->var4 = 0;
  *&retstr->var0 = 0;
  if ([a4 subdivisionLevel])
  {
    v7 = 4;
  }

  else if ([tessellator isAdaptive])
  {
    if ([tessellator isScreenSpace])
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    v7 = 1;
  }

  retstr->var0 = v7;
  [tessellator tessellationFactorScale];
  if (v8 < 0.00100000005)
  {
    v8 = 0.00100000005;
  }

  v9 = v8;
  retstr->var1 = v9;
  retstr->var2 = [tessellator tessellationPartitionMode];
  retstr->var3 = [tessellator smoothingMode];
  if (v7 <= 2u)
  {
    if (v7 == 1)
    {
      [tessellator edgeTessellationFactor];
      *&v10 = v10;
      retstr->var4.var0.var0 = *&v10;
      result = [tessellator insideTessellationFactor];
      *&v12 = v12;
      retstr->var4.var0.var1 = *&v12;
      return result;
    }

    goto LABEL_14;
  }

  if (v7 == 3)
  {
LABEL_14:
    result = [tessellator maximumEdgeLength];
    *&v13 = v13;
    retstr->var4.var0.var0 = *&v13;
    return result;
  }

  [tessellator tessellationFactorScale];
  retstr->var4.var3.var0 = v14;
  result = [tessellator isScreenSpace];
  if (result)
  {
    v15 = 3;
  }

  else
  {
    v15 = 1;
  }

  BYTE1(retstr->var4.var0.var0) = v15;
  return result;
}

- (void)tessellatorValueDidChangeForClient:(id)client
{
  v8 = 0uLL;
  v9 = 0;
  if (self)
  {
    [(SCNGeometryTessellator *)self _tessellatorValueForGeometry:client];
  }

  sceneRef = [client sceneRef];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__SCNGeometryTessellator_tessellatorValueDidChangeForClient___block_invoke;
  v5[3] = &unk_2783002D8;
  v5[4] = client;
  v6 = v8;
  v7 = v9;
  [SCNTransaction postCommandWithContext:sceneRef object:client applyBlock:v5];
}

void __61__SCNGeometryTessellator_tessellatorValueDidChangeForClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  C3DGeometrySetTessellator(v2, &v3);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SCNGeometryTessellator *)self tessellationFactorScale];
  *&v5 = v5;
  v4[8] = LODWORD(v5);
  [(SCNGeometryTessellator *)self maximumEdgeLength];
  *&v6 = v6;
  v4[5] = LODWORD(v6);
  [(SCNGeometryTessellator *)self edgeTessellationFactor];
  *&v7 = v7;
  v4[6] = LODWORD(v7);
  [(SCNGeometryTessellator *)self insideTessellationFactor];
  *&v8 = v8;
  v4[7] = LODWORD(v8);
  *(v4 + 16) = [(SCNGeometryTessellator *)self isAdaptive];
  *(v4 + 17) = [(SCNGeometryTessellator *)self isScreenSpace];
  *(v4 + 5) = [(SCNGeometryTessellator *)self smoothingMode];
  return v4;
}

- (void)setSmoothingMode:(SCNTessellationSmoothingMode)smoothingMode
{
  if (self->_smoothingMode != smoothingMode)
  {
    self->_smoothingMode = smoothingMode;
    [(SCNGeometryTessellator *)self tessellatorValueDidChange];
  }
}

- (void)setAdaptive:(BOOL)adaptive
{
  if (self->_adaptive != adaptive)
  {
    self->_adaptive = adaptive;
    [(SCNGeometryTessellator *)self tessellatorValueDidChange];
  }
}

- (void)setScreenSpace:(BOOL)screenSpace
{
  if (self->_screenSpace != screenSpace)
  {
    self->_screenSpace = screenSpace;
    [(SCNGeometryTessellator *)self tessellatorValueDidChange];
  }
}

- (void)setTessellationFactorScale:(CGFloat)tessellationFactorScale
{
  if (self->_tessellationFactorScale != tessellationFactorScale)
  {
    v3 = tessellationFactorScale;
    self->_tessellationFactorScale = v3;
    [(SCNGeometryTessellator *)self tessellatorValueDidChange];
  }
}

- (void)setEdgeTessellationFactor:(CGFloat)edgeTessellationFactor
{
  if (self->_edgeTessellationFactor != edgeTessellationFactor)
  {
    v3 = edgeTessellationFactor;
    self->_edgeTessellationFactor = v3;
    [(SCNGeometryTessellator *)self tessellatorValueDidChange];
  }
}

- (void)setInsideTessellationFactor:(CGFloat)insideTessellationFactor
{
  if (self->_insideTessellationFactor != insideTessellationFactor)
  {
    v3 = insideTessellationFactor;
    self->_insideTessellationFactor = v3;
    [(SCNGeometryTessellator *)self tessellatorValueDidChange];
  }
}

- (void)setMaximumEdgeLength:(CGFloat)maximumEdgeLength
{
  if (self->_maximumEdgeLength != maximumEdgeLength)
  {
    v3 = maximumEdgeLength;
    self->_maximumEdgeLength = v3;
    [(SCNGeometryTessellator *)self tessellatorValueDidChange];
  }
}

- (void)setTessellationPartitionMode:(MTLTessellationPartitionMode)tessellationPartitionMode
{
  if (self->_partitionMode != tessellationPartitionMode)
  {
    self->_partitionMode = tessellationPartitionMode;
    [(SCNGeometryTessellator *)self tessellatorValueDidChange];
  }
}

@end