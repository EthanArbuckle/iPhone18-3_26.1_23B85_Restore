@interface MTLBVHDescriptor
- (BOOL)requiresResourceBuffer;
- (MTLBVHDescriptor)init;
- (PipelineKey)cachedPipelineKey;
- (unint64_t)maxSubKeyframeTemporalSplits;
- (void)setBranchingFactor:(unint64_t)factor;
- (void)setMaxDepth:(unint64_t)depth;
- (void)setUseTemporalSplits:(BOOL)splits;
- (void)updatePipelineKey;
@end

@implementation MTLBVHDescriptor

- (BOOL)requiresResourceBuffer
{
  v3 = [objc_loadWeak(&self->_geometryDescriptors) count];
  result = 1;
  if (v3 <= 1 && self->_primitiveKeyframeCount <= 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    v5 = [objc_loadWeak(&self->_geometryDescriptors) objectAtIndexedSubscript:0];
    if (([v5 primitiveType] || !objc_msgSend(v5, "transformationMatrixBuffer")) && (!objc_msgSend(v5, "primitiveDataBuffer") || !objc_msgSend(v5, "primitiveDataElementSize")) && objc_msgSend(v5, "primitiveType") != 2)
    {
      return 0;
    }
  }

  return result;
}

- (MTLBVHDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLBVHDescriptor;
  result = [(MTLBVHDescriptor *)&v3 init];
  if (result)
  {
    *&result->_maxDepth = vdupq_n_s64(0x20uLL);
    result->_minPrimitivesPerInnerNode = 0;
    result->_maxPrimitivesPerInnerNode = 0;
    result->_maxPrimitivesPerLeaf = 32;
    result->_splitHeuristic = 3;
    *&result->_traversalCost = xmmword_185DC62B0;
    *&result->_temporalSplitBias = xmmword_185DC62C0;
    *&result->_branchingFactor = xmmword_185DC62A0;
    LOWORD(result->_primitiveCost) = 0;
    *&result->_useFastBuild = 0x1000000;
    result->_fragmentCount = 0;
    result->_primitiveDataSize = 0;
    result->_primitiveKeyframeCount = 1;
    result->_maxSubKeyframeTemporalSplits = 1;
  }

  return result;
}

- (PipelineKey)cachedPipelineKey
{
  v3 = *&self[1].fragmentCost;
  *&retstr->var0 = *&self[1].vertexStride;
  *&retstr->boundingBoxStride = v3;
  *&retstr->temporalSplitBias = *(&self[2].var0 + 1);
  return self;
}

- (void)updatePipelineKey
{
  v3 = [objc_loadWeak(&self->_geometryDescriptors) count];
  if (v3)
  {
    v4 = [objc_loadWeak(&self->_geometryDescriptors) objectAtIndexedSubscript:0];
    primitiveType = [v4 primitiveType];
    if (primitiveType == 1)
    {
      v48 = 0;
      LODWORD(v49) = [v4 boundingBoxStride];
    }

    else
    {
      if (!primitiveType)
      {
        vertexStride = [v4 vertexStride];
        vertexFormat = [v4 vertexFormat];
        if (!vertexStride)
        {
          LODWORD(vertexStride) = MTLAttributeFormatSize(vertexFormat, v8, v9, v10, v11, v12, v13, v14);
        }

        v15 = ([v4 vertexFormat] & 0x3F) << 39;
        if ([v4 indexBuffer])
        {
          indexType = [v4 indexType];
          v17 = 0x1000000;
          if (!indexType)
          {
            v17 = 0x800000;
          }
        }

        else
        {
          v17 = 0;
        }

        v50 = vertexStride;
        v48 = v17 | v15 | (([v4 polygonType] & 3) << 8);
        goto LABEL_16;
      }

      v48 = 0;
      v49 = 0.0;
    }

    v50 = 0;
    v18 = 0;
    v47 = 0;
    goto LABEL_17;
  }

  v48 = 0;
  v50 = 0;
LABEL_16:
  v49 = 0.0;
  v47 = (self->_splitHeuristic == 3) << 26;
  v18 = 1;
LABEL_17:
  v19 = *(&self->_deterministic + 1) && self->_primitiveKeyframeCount > 1;
  v20 = 100;
  if (self->_deterministic)
  {
    v20 = 104;
  }

  if (LOBYTE(self->_primitiveCost) == 1 && self->_branchingFactor >= 3)
  {
    v46 = (BYTE1(self->_primitiveCost) ^ 1u) << 61;
  }

  else
  {
    v46 = 0;
  }

  minPrimitivesPerLeaf = self->_minPrimitivesPerLeaf;
  maxPrimitivesPerLeaf = self->_maxPrimitivesPerLeaf;
  maxPrimitivesPerInnerNode = self->_maxPrimitivesPerInnerNode;
  v24 = *(&self->_minOverlap + 1);
  v25 = *(&self->super.isa + v20);
  traversalCost = self->_traversalCost;
  splitCapacity = self->_splitCapacity;
  v44 = BYTE1(self->_primitiveCost);
  v45 = *(&self->_deterministic + 2);
  requiresResourceBuffer = [(MTLBVHDescriptor *)self requiresResourceBuffer];
  if (*(&self->_deterministic + 1))
  {
    v29 = 8 * (self->_maxSubKeyframeTemporalSplits & 0xF);
  }

  else
  {
    v29 = 0;
  }

  v30 = v18 ^ 1;
  minOverlap = 1.0;
  if (!v3)
  {
    v30 = 1;
  }

  if ((v30 & 1) == 0 && self->_splitHeuristic == 3)
  {
    minOverlap = self->_minOverlap;
  }

  deterministic = self->_deterministic;
  primitiveKeyframeCount = self->_primitiveKeyframeCount;
  v34 = (minOverlap * self->_fragmentCount);
  if (v19)
  {
    v34 *= (primitiveKeyframeCount - 1) * (1 << LODWORD(self->_maxSubKeyframeTemporalSplits));
    v35 = 0x800000000000000;
  }

  else
  {
    v35 = 0;
  }

  branchingFactor = self->_branchingFactor;
  if (refitUpdatesOpacityAndFunctionTableOffset(void)::pred != -1)
  {
    v43 = v29;
    [MTLBVHDescriptor updatePipelineKey];
    v29 = v43;
  }

  v37 = 0x8000000;
  if (!requiresResourceBuffer)
  {
    v37 = 0;
  }

  v38 = ((v47 | v48 | ((minPrimitivesPerLeaf & 0xF) << 10) | (maxPrimitivesPerLeaf << 14)) & 0x3801FF80E7FFFFFFLL | (maxPrimitivesPerInnerNode << 49) & 0x39FFFF80E7FFFFFFLL | (v45 << 60) & 0x39FFFF80E7FFFFFFLL | v46 & 0x39FFFF80E7FFFFFFLL | v35 | (v44 << 62) | v37 | ((primitiveKeyframeCount > 1) << 28) | ((branchingFactor & 0xF) << 32)) + (deterministic << 36);
  v39 = refitUpdatesOpacityAndFunctionTableOffset(void)::useNewRefitBehavior;
  v40 = v38 + ((v34 > 0x2000) << 37);
  v41 = 0x600004000000000;
  if (branchingFactor == 2)
  {
    v41 = 0x600000000000000;
  }

  *&self->_pipelineKey.var0 = v41 | v40;
  if (v39)
  {
    v42 = 0;
  }

  else
  {
    v42 = 512;
  }

  *(&self->_pipelineKey.var0 + 4) = v42 | v29;
  *(&self->_pipelineKey.var0 + 10) = 0;
  HIWORD(self->_pipelineKey.vertexStride) = 0;
  self->_pipelineKey.boundingBoxStride = v50;
  self->_pipelineKey.minOverlap = v49;
  self->_pipelineKey.traversalCost = v24;
  self->_pipelineKey.fragmentCost = v25;
  self->_pipelineKey.temporalSplitBias = traversalCost;
  *&self->_pipelineKeyValid = splitCapacity;
  self->_useFastBuild = 1;
}

- (unint64_t)maxSubKeyframeTemporalSplits
{
  if (*(&self->_deterministic + 1) && self->_primitiveKeyframeCount >= 2)
  {
    return self->_maxSubKeyframeTemporalSplits;
  }

  else
  {
    return 0;
  }
}

- (void)setBranchingFactor:(unint64_t)factor
{
  if (self->_branchingFactor != factor)
  {
    self->_branchingFactor = factor;
    [(MTLBVHDescriptor *)self updateMaxDepth];
  }
}

- (void)setUseTemporalSplits:(BOOL)splits
{
  if (*(&self->_deterministic + 1) != splits)
  {
    *(&self->_deterministic + 1) = splits;
    [(MTLBVHDescriptor *)self updateMaxDepth];
  }
}

- (void)setMaxDepth:(unint64_t)depth
{
  if (self->_maxDepth != depth)
  {
    self->_maxDepth = depth;
    [(MTLBVHDescriptor *)self updateMaxDepth];
  }
}

@end