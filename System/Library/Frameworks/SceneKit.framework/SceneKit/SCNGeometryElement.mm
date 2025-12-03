@interface SCNGeometryElement
+ (SCNGeometryElement)geometryElementWithBuffer:(id)buffer primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index;
+ (SCNGeometryElement)geometryElementWithData:(NSData *)data primitiveType:(SCNGeometryPrimitiveType)primitiveType primitiveCount:(NSInteger)primitiveCount bytesPerIndex:(NSInteger)bytesPerIndex;
+ (SCNGeometryElement)geometryElementWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index;
+ (SCNGeometryElement)geometryElementWithMDLSubmesh:(MDLSubmesh *)mdlSubMesh;
+ (id)_optimizedGeometryElementWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count bytesPerIndex:(int64_t)index;
+ (id)geometryElementWithMeshElementRef:(id *)ref;
- (NSData)data;
- (NSRange)primitiveRange;
- (SCNGeometryElement)initWithBuffer:(id)buffer primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index;
- (SCNGeometryElement)initWithCoder:(id)coder;
- (SCNGeometryElement)initWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index;
- (SCNGeometryElement)initWithMeshElement:(const void *)element;
- (__C3DMeshElement)meshElement;
- (__C3DScene)sceneRef;
- (id)description;
- (id)scene;
- (unint64_t)indexCount;
- (void)_optimizeTriangleIndices;
- (void)_printData;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setMaximumPointScreenSpaceRadius:(CGFloat)maximumPointScreenSpaceRadius;
- (void)setMinimumPointScreenSpaceRadius:(CGFloat)minimumPointScreenSpaceRadius;
- (void)setPointSize:(CGFloat)pointSize;
- (void)setPrimitiveRange:(NSRange)primitiveRange;
- (void)setPrimitiveRanges:(id)ranges;
@end

@implementation SCNGeometryElement

+ (SCNGeometryElement)geometryElementWithMDLSubmesh:(MDLSubmesh *)mdlSubMesh
{
  faceIndexing = [(MDLSubmesh *)mdlSubMesh faceIndexing];
  geometryType = [(MDLSubmesh *)mdlSubMesh geometryType];
  if (!faceIndexing)
  {
    if (geometryType > MDLGeometryTypeTriangles)
    {
      switch(geometryType)
      {
        case MDLGeometryTypeTriangleStrips:
          faceCount = [(MDLSubmesh *)mdlSubMesh indexCount]- 2;
          v8 = 1;
          goto LABEL_23;
        case MDLGeometryTypeQuads:
          faceCount = [(MDLSubmesh *)mdlSubMesh indexCount]>> 2;
          break;
        case MDLGeometryTypeVariableTopology:
          faceCount = [(MDLSubmeshTopology *)[(MDLSubmesh *)mdlSubMesh topology] faceCount];
          break;
        default:
LABEL_17:
          v10 = scn_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [(SCNGeometryElement(SCNModelIO) *)v10 geometryElementWithMDLSubmesh:v11, v12];
          }

          goto LABEL_19;
      }

      v8 = 4;
    }

    else
    {
      if (geometryType == MDLGeometryTypePoints)
      {
LABEL_19:
        faceCount = [(MDLSubmesh *)mdlSubMesh indexCount];
        v8 = 3;
        goto LABEL_23;
      }

      if (geometryType != MDLGeometryTypeLines)
      {
        if (geometryType == MDLGeometryTypeTriangles)
        {
          v8 = 0;
          faceCount = [(MDLSubmesh *)mdlSubMesh indexCount]/ 3;
          goto LABEL_23;
        }

        goto LABEL_17;
      }

      faceCount = [(MDLSubmesh *)mdlSubMesh indexCount]>> 1;
      v8 = 2;
    }

LABEL_23:
    v13 = [(MDLSubmesh *)mdlSubMesh indexType]>> 3;
    v14 = [objc_msgSend(-[MDLSubmesh indexBuffer](mdlSubMesh "indexBuffer")];
    v15 = [-[MDLSubmesh indexBuffer](mdlSubMesh "indexBuffer")];
    if ([(MDLSubmesh *)mdlSubMesh geometryType]== MDLGeometryTypeQuads)
    {
      v16 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:v15 + v13 * faceCount];
      [v16 setLength:v13 * faceCount];
      if (faceCount)
      {
        for (i = 0; i != faceCount; ++i)
        {
          if (v13 > 3)
          {
            if (v13 == 4)
            {
              *([v16 mutableBytes] + 4 * i) = 4;
            }

            else if (v13 == 8)
            {
              *([v16 mutableBytes] + 8 * i) = 4;
            }
          }

          else if (v13 == 1)
          {
            *([v16 mutableBytes] + i) = 4;
          }

          else if (v13 == 2)
          {
            *([v16 mutableBytes] + 2 * i) = 4;
          }
        }
      }

      [v16 appendBytes:v14 length:v15];
      v18 = v16;
    }

    else
    {
      if ([(MDLSubmesh *)mdlSubMesh geometryType]!= MDLGeometryTypeVariableTopology)
      {
        v26 = [MEMORY[0x277CBEA90] dataWithBytes:v14 length:v15];
        return [self geometryElementWithData:v26 primitiveType:v8 primitiveCount:faceCount bytesPerIndex:v13];
      }

      v19 = [objc_msgSend(-[MDLSubmeshTopology faceTopology](-[MDLSubmesh topology](mdlSubMesh "topology")];
      v20 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:v15 + v13 * faceCount];
      [v20 setLength:v13 * faceCount];
      if (faceCount)
      {
        for (j = 0; j != faceCount; ++j)
        {
          if (v13 > 3)
          {
            if (v13 == 4)
            {
              v25 = *(v19 + j);
              *([v20 mutableBytes] + 4 * j) = v25;
            }

            else if (v13 == 8)
            {
              v23 = *(v19 + j);
              *([v20 mutableBytes] + 8 * j) = v23;
            }
          }

          else if (v13 == 1)
          {
            v24 = *(v19 + j);
            *([v20 mutableBytes] + j) = v24;
          }

          else if (v13 == 2)
          {
            v22 = *(v19 + j);
            *([v20 mutableBytes] + 2 * j) = v22;
          }
        }
      }

      [v20 appendBytes:v14 length:v15];
      v18 = v20;
    }

    v26 = v18;
    return [self geometryElementWithData:v26 primitiveType:v8 primitiveCount:faceCount bytesPerIndex:v13];
  }

  if (geometryType != MDLGeometryTypeVariableTopology)
  {
    return 0;
  }

  return _indexedGeometryElement(mdlSubMesh);
}

- (SCNGeometryElement)initWithMeshElement:(const void *)element
{
  v20.receiver = self;
  v20.super_class = SCNGeometryElement;
  v4 = [(SCNGeometryElement *)&v20 init];
  __asm { FMOV            V0.2S, #1.0 }

  *&v4->_pointSize = _D0;
  v4->_maximumPointScreenSpaceRadius = 1.0;
  if (element)
  {
    C3DEntitySetObjCWrapper(element, v4);
    v19 = 0;
    v4->_meshElement = CFRetain(element);
    v4->_elementData = C3DMeshElementGetIndexes(element, &v19);
    v4->_primitiveType = C3DMeshElementGetType(element);
    v4->_primitiveCount = C3DMeshElementGetPrimitiveCount(element);
    v4->_indicesChannelCount = C3DMeshElementGetIndicesChannelCount(element);
    v4->_interleavedIndicesChannels = C3DMeshElementGetUsesInterleavedIndicesChannels(element);
    v18 = 0;
    PrimitiveRanges = C3DMeshElementGetPrimitiveRanges(element, &v18);
    if (PrimitiveRanges)
    {
      v11 = PrimitiveRanges;
      v12 = objc_alloc(MEMORY[0x277CBEB18]);
      v13 = [v12 initWithCapacity:v18];
      if (v18)
      {
        v14 = 0;
        v15 = (v11 + 8);
        do
        {
          if (*(v15 - 1) == -1)
          {
            v16 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = *(v15 - 1);
          }

          -[NSArray addObject:](v13, "addObject:", [MEMORY[0x277CCAE60] valueWithRange:{v16, *v15}]);
          ++v14;
          v15 += 2;
        }

        while (v14 < v18);
      }

      v4->_primitiveRanges = v13;
    }

    v4->_bytesPerIndex = v19;
    v4->_pointSize = C3DMeshElementGetPointSize(element);
    v4->_minimumPointScreenSpaceRadius = C3DMeshElementGetMinimumPointScreenRadius(element);
    v4->_maximumPointScreenSpaceRadius = C3DMeshElementGetMaximumPointScreenRadius(element);
  }

  return v4;
}

- (void)dealloc
{
  meshElement = self->_meshElement;
  if (meshElement)
  {
    C3DEntitySetObjCWrapper(meshElement, 0);
    v4 = self->_meshElement;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __29__SCNGeometryElement_dealloc__block_invoke;
    v6[3] = &__block_descriptor_40_e8_v16__0d8l;
    v6[4] = v4;
    [SCNTransaction postCommandWithContext:0 object:0 applyBlock:v6];
  }

  v5.receiver = self;
  v5.super_class = SCNGeometryElement;
  [(SCNGeometryElement *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  primitiveType = self->_primitiveType;
  primitiveCount = self->_primitiveCount;
  if (primitiveType > 4)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_278300790[primitiveType];
  }

  indicesChannelCount = self->_indicesChannelCount;
  v10 = C3DBaseTypeFromDescription(self->_bytesPerIndex, 1, 0);
  return [v3 stringWithFormat:@"<%@: %p | %u x %@, %u channels, %@ indices>", v5, self, primitiveCount, v8, indicesChannelCount, C3DBaseTypeStringDescription(v10)];
}

+ (SCNGeometryElement)geometryElementWithBuffer:(id)buffer primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index
{
  v8 = [objc_alloc(objc_opt_class()) initWithBuffer:buffer primitiveType:type primitiveCount:count indicesChannelCount:channelCount interleavedIndicesChannels:channels bytesPerIndex:index];

  return v8;
}

- (SCNGeometryElement)initWithBuffer:(id)buffer primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index
{
  v17.receiver = self;
  v17.super_class = SCNGeometryElement;
  v14 = [(SCNGeometryElement *)&v17 init];
  if (v14)
  {
    if (type == 4)
    {
      v15 = scn_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SCNGeometryElement initWithBuffer:primitiveType:primitiveCount:indicesChannelCount:interleavedIndicesChannels:bytesPerIndex:];
      }
    }

    v14->_mtlBuffer = buffer;
    v14->_primitiveType = type;
    v14->_primitiveCount = count;
    v14->_indicesChannelCount = channelCount;
    v14->_interleavedIndicesChannels = channels;
    v14->_bytesPerIndex = index;
  }

  return v14;
}

- (SCNGeometryElement)initWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index
{
  v30.receiver = self;
  v30.super_class = SCNGeometryElement;
  v14 = [(SCNGeometryElement *)&v30 init];
  if (!v14)
  {
    return v14;
  }

  if (type != 4)
  {
LABEL_18:
    v14->_elementData = [data copy];
    v14->_primitiveType = type;
    v14->_primitiveCount = count;
    v14->_indicesChannelCount = channelCount;
    v14->_interleavedIndicesChannels = channels;
    v14->_bytesPerIndex = index;
    return v14;
  }

  if ([data length] < (index * count))
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(SCNGeometryElement *)v15 initWithData:v16 primitiveType:v17 primitiveCount:v18 indicesChannelCount:v19 interleavedIndicesChannels:v20 bytesPerIndex:v21, v22];
    }
  }

  if (count < 1)
  {
LABEL_17:
    data = [data subdataWithRange:{index * count, objc_msgSend(data, "length") - index * count}];
    type = 0;
    goto LABEL_18;
  }

  v23 = 0;
  type = 4;
  countCopy = count;
  while (1)
  {
    bytes = [data bytes];
    if (index != 4)
    {
      break;
    }

    v26 = *(bytes + v23);
LABEL_14:
    if (v26 <= 2)
    {
      v28 = scn_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [SCNGeometryElement initWithData:v26 primitiveType:v28 primitiveCount:? indicesChannelCount:? interleavedIndicesChannels:? bytesPerIndex:?];
      }

      goto LABEL_24;
    }

    if (v26 != 3)
    {
      goto LABEL_18;
    }

    v23 += index;
    if (!--countCopy)
    {
      goto LABEL_17;
    }
  }

  if (index == 2)
  {
    v26 = *(bytes + v23);
    goto LABEL_14;
  }

  if (index == 1)
  {
    v26 = *(bytes + v23);
    goto LABEL_14;
  }

  v29 = scn_default_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [SCNGeometryElement initWithData:index primitiveType:v29 primitiveCount:? indicesChannelCount:? interleavedIndicesChannels:? bytesPerIndex:?];
  }

LABEL_24:

  return 0;
}

+ (id)geometryElementWithMeshElementRef:(id *)ref
{
  result = C3DEntityGetObjCWrapper(ref);
  if (!result)
  {
    v6 = [[self alloc] initWithMeshElement:ref];

    return v6;
  }

  return result;
}

+ (SCNGeometryElement)geometryElementWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index
{
  v8 = [[self alloc] initWithData:data primitiveType:type primitiveCount:count indicesChannelCount:channelCount interleavedIndicesChannels:channels bytesPerIndex:index];

  return v8;
}

+ (SCNGeometryElement)geometryElementWithData:(NSData *)data primitiveType:(SCNGeometryPrimitiveType)primitiveType primitiveCount:(NSInteger)primitiveCount bytesPerIndex:(NSInteger)bytesPerIndex
{
  v6 = [[self alloc] initWithData:data primitiveType:primitiveType primitiveCount:primitiveCount indicesChannelCount:1 interleavedIndicesChannels:1 bytesPerIndex:bytesPerIndex];

  return v6;
}

- (NSData)data
{
  result = self->_elementData;
  if (!result)
  {
    result = self->_mtlBuffer;
    if (result)
    {
      v4 = MEMORY[0x277CBEA90];
      contents = [(NSData *)result contents];
      v6 = [(MTLBuffer *)self->_mtlBuffer length];

      return [v4 dataWithBytesNoCopy:contents length:v6 freeWhenDone:0];
    }
  }

  return result;
}

- (void)_printData
{
  meshElement = [(SCNGeometryElement *)self meshElement];

  C3DMeshElementPrintData(meshElement);
}

- (unint64_t)indexCount
{
  meshElement = [(SCNGeometryElement *)self meshElement];

  return C3DMeshElementGetIndexCount(meshElement);
}

- (__C3DScene)sceneRef
{
  __CFObject = [(SCNGeometryElement *)self __CFObject];

  return C3DGetScene(__CFObject);
}

- (id)scene
{
  result = [(SCNGeometryElement *)self sceneRef];
  if (result)
  {

    return C3DEntityGetObjCWrapper(result);
  }

  return result;
}

- (NSRange)primitiveRange
{
  if ([(NSArray *)self->_primitiveRanges count]== 1)
  {
    v3 = [(NSArray *)self->_primitiveRanges objectAtIndexedSubscript:0];

    rangeValue = [v3 rangeValue];
  }

  else
  {
    rangeValue = 0x7FFFFFFFFFFFFFFFLL;
    v5 = 0;
  }

  result.length = v5;
  result.location = rangeValue;
  return result;
}

- (void)setPrimitiveRange:(NSRange)primitiveRange
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = [MEMORY[0x277CCAE60] valueWithRange:{primitiveRange.location, primitiveRange.length}];
  -[SCNGeometryElement setPrimitiveRanges:](self, "setPrimitiveRanges:", [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1]);
}

- (void)setPrimitiveRanges:(id)ranges
{
  primitiveRanges = self->_primitiveRanges;
  if (primitiveRanges != ranges)
  {
    v10[10] = v3;
    v10[11] = v4;

    v8 = [ranges count];
    if (v8)
    {
      v8 = [ranges copy];
    }

    self->_primitiveRanges = v8;
    sceneRef = [(SCNGeometryElement *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__SCNGeometryElement_setPrimitiveRanges___block_invoke;
    v10[3] = &unk_2782FC950;
    v10[4] = self;
    v10[5] = ranges;
    [SCNTransaction postCommandWithContext:sceneRef object:0 applyBlock:v10];
  }
}

- (void)setPointSize:(CGFloat)pointSize
{
  if (self->_pointSize != pointSize)
  {
    v5 = pointSize;
    self->_pointSize = v5;
    sceneRef = [(SCNGeometryElement *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__SCNGeometryElement_setPointSize___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = pointSize;
    [SCNTransaction postCommandWithContext:sceneRef object:0 applyBlock:v7];
  }
}

- (void)setMinimumPointScreenSpaceRadius:(CGFloat)minimumPointScreenSpaceRadius
{
  if (self->_minimumPointScreenSpaceRadius != minimumPointScreenSpaceRadius)
  {
    v5 = minimumPointScreenSpaceRadius;
    self->_minimumPointScreenSpaceRadius = v5;
    sceneRef = [(SCNGeometryElement *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__SCNGeometryElement_setMinimumPointScreenSpaceRadius___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = minimumPointScreenSpaceRadius;
    [SCNTransaction postCommandWithContext:sceneRef object:0 applyBlock:v7];
  }
}

- (void)setMaximumPointScreenSpaceRadius:(CGFloat)maximumPointScreenSpaceRadius
{
  if (self->_maximumPointScreenSpaceRadius != maximumPointScreenSpaceRadius)
  {
    v5 = maximumPointScreenSpaceRadius;
    self->_maximumPointScreenSpaceRadius = v5;
    sceneRef = [(SCNGeometryElement *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__SCNGeometryElement_setMaximumPointScreenSpaceRadius___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = maximumPointScreenSpaceRadius;
    [SCNTransaction postCommandWithContext:sceneRef object:0 applyBlock:v7];
  }
}

- (__C3DMeshElement)meshElement
{
  result = self->_meshElement;
  if (!result)
  {
    v4 = C3DMeshElementCreate();
    self->_meshElement = v4;
    mtlBuffer = self->_mtlBuffer;
    primitiveType = self->_primitiveType;
    primitiveCount = self->_primitiveCount;
    interleavedIndicesChannels = self->_interleavedIndicesChannels;
    if (mtlBuffer)
    {
      C3DMeshElementInitIndexedWithMTLBuffer(v4, primitiveType, primitiveCount, self->_indicesChannelCount, interleavedIndicesChannels, mtlBuffer, self->_bytesPerIndex);
    }

    else
    {
      C3DMeshElementInitIndexed(v4, primitiveType, primitiveCount, self->_indicesChannelCount, interleavedIndicesChannels, self->_elementData, self->_bytesPerIndex);
    }

    __C3DMeshElementSetPrimitiveRanges(self->_meshElement, self->_primitiveRanges);
    result = self->_meshElement;
    if (result)
    {
      C3DEntitySetObjCWrapper(result, self);
      return self->_meshElement;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if (self->_elementData)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(objc_msgSend(coder "options")])
    {
      elementData = self->_elementData;
      if (!self->_primitiveType)
      {
        elementData = [(NSData *)elementData scn_indexedDataEncodingTrianglePairsWithBytesPerIndex:self->_bytesPerIndex];
      }

      v6 = [-[NSData scn_indexedDataEncodingHighWatermarkWithBytesPerIndex:](elementData scn_indexedDataEncodingHighWatermarkWithBytesPerIndex:{self->_bytesPerIndex), "scn_compressedDataUsingCompressionAlgorithm:", 774}];
      v7 = @"compressedElementData";
    }

    else
    {
      v6 = self->_elementData;
      v7 = @"elementData";
    }

    [coder encodeObject:v6 forKey:v7];
  }

  [coder encodeInteger:self->_primitiveType forKey:@"primitiveType"];
  [coder encodeInteger:self->_primitiveCount forKey:@"primitiveCount"];
  if ([(NSArray *)self->_primitiveRanges count]== 1)
  {
    v8 = [-[NSArray objectAtIndexedSubscript:](self->_primitiveRanges objectAtIndexedSubscript:{0), "rangeValue"}];
    v10 = v9;
    [coder encodeInteger:v8 forKey:@"primitiveRangeLocation"];
    [coder encodeInteger:v10 forKey:@"primitiveRangeLength"];
  }

  [coder encodeInteger:self->_indicesChannelCount forKey:@"indicesChannelCount"];
  [coder encodeBool:self->_interleavedIndicesChannels forKey:@"interleavedIndicesChannels"];
  [coder encodeInteger:self->_bytesPerIndex forKey:@"bytesPerIndex"];
  *&v11 = self->_pointSize;
  [coder encodeFloat:@"ptSize" forKey:v11];
  *&v12 = self->_minimumPointScreenSpaceRadius;
  [coder encodeFloat:@"minimumPointScreenSpaceRadius" forKey:v12];
  *&v13 = self->_maximumPointScreenSpaceRadius;

  [coder encodeFloat:@"maximumPointScreenSpaceRadius" forKey:v13];
}

- (SCNGeometryElement)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = SCNGeometryElement;
  v4 = [(SCNGeometryElement *)&v15 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v4->_primitiveType = [coder decodeIntegerForKey:@"primitiveType"];
    v4->_primitiveCount = [coder decodeIntegerForKey:@"primitiveCount"];
    if ([coder containsValueForKey:@"primitiveRangeLocation"] && objc_msgSend(coder, "containsValueForKey:", @"primitiveRangeLength"))
    {
      v6 = [coder decodeIntegerForKey:@"primitiveRangeLocation"];
      v7 = [coder decodeIntegerForKey:@"primitiveRangeLength"];
      v14 = [MEMORY[0x277CCAE60] valueWithRange:{v6, v7}];
      v4->_primitiveRanges = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:&v14 count:1];
    }

    if ([coder containsValueForKey:@"indicesChannelCount"] && objc_msgSend(coder, "containsValueForKey:", @"interleavedIndicesChannels"))
    {
      v4->_indicesChannelCount = [coder decodeIntegerForKey:@"indicesChannelCount"];
      v4->_interleavedIndicesChannels = [coder decodeBoolForKey:@"interleavedIndicesChannels"];
    }

    else
    {
      v4->_indicesChannelCount = 1;
      v4->_interleavedIndicesChannels = 1;
    }

    v4->_bytesPerIndex = [coder decodeIntegerForKey:@"bytesPerIndex"];
    if ([coder containsValueForKey:@"ptSize"])
    {
      [coder decodeFloatForKey:@"pointSize"];
      v4->_pointSize = v8;
      [coder decodeFloatForKey:@"minimumPointScreenSpaceRadius"];
      v4->_minimumPointScreenSpaceRadius = v9;
      [coder decodeFloatForKey:@"maximumPointScreenSpaceRadius"];
      v4->_maximumPointScreenSpaceRadius = v10;
    }

    v11 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"compressedElementData"];
    if (v11)
    {
      v12 = [objc_msgSend(v11 scn_uncompressedDataUsingCompressionAlgorithm:{774), "scn_indexedDataDecodingHighWatermarkWithBytesPerIndex:", v4->_bytesPerIndex}];
      if (!v4->_primitiveType)
      {
        v12 = [v12 scn_indexedDataDecodingTrianglePairsWithBytesPerIndex:v4->_bytesPerIndex];
      }
    }

    else
    {
      v12 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"elementData"];
    }

    v4->_elementData = v12;
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

+ (id)_optimizedGeometryElementWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count bytesPerIndex:(int64_t)index
{
  if (type)
  {
    v10 = objc_opt_class();
    dataCopy = data;
    typeCopy = type;
  }

  else
  {
    v13 = C3DDataCreateOptimizedIndices(data, count, index);
    v10 = objc_opt_class();
    dataCopy = v13;
    typeCopy = 0;
  }

  return [v10 geometryElementWithData:dataCopy primitiveType:typeCopy primitiveCount:count bytesPerIndex:index];
}

- (void)_optimizeTriangleIndices
{
  if (!self->_primitiveType)
  {
    v6 = v2;
    v7 = v3;
    C3DMeshElementOptimizeIndices(self->_meshElement);
    v5 = 0;
    self->_elementData = C3DMeshElementGetIndexes(self->_meshElement, &v5);
    self->_primitiveType = C3DMeshElementGetType(self->_meshElement);
    self->_primitiveCount = C3DMeshElementGetPrimitiveCount(self->_meshElement);
    self->_bytesPerIndex = v5;
  }
}

- (void)initWithData:(uint64_t)a1 primitiveType:(NSObject *)a2 primitiveCount:indicesChannelCount:interleavedIndicesChannels:bytesPerIndex:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: SCNGeometryElement initialization - Invalid polygon edge count (%ld)", &v2, 0xCu);
}

- (void)initWithData:(uint64_t)a1 primitiveType:(NSObject *)a2 primitiveCount:indicesChannelCount:interleavedIndicesChannels:bytesPerIndex:.cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: SCNGeometryElement initialization - Invalid index size (%ld bytes)", &v2, 0xCu);
}

@end