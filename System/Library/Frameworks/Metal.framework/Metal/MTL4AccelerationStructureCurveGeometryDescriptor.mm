@interface MTL4AccelerationStructureCurveGeometryDescriptor
- (BOOL)isEqual:(id)equal;
- (MTL4AccelerationStructureCurveGeometryDescriptor)init;
- (MTL4BufferRange)controlPointBuffer;
- (MTL4BufferRange)indexBuffer;
- (MTL4BufferRange)radiusBuffer;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4AccelerationStructureCurveGeometryDescriptor

- (MTL4AccelerationStructureCurveGeometryDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4AccelerationStructureCurveGeometryDescriptor;
  result = [(MTL4AccelerationStructureGeometryDescriptor *)&v3 init];
  if (result)
  {
    result->_controlPointFormat = 30;
    result->_radiusFormat = 28;
    result->_indexType = 1;
    result->_curveType = 0;
    result->_curveBasis = 0;
    result->_curveEndCaps = 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTL4AccelerationStructureCurveGeometryDescriptor;
  [(MTL4AccelerationStructureGeometryDescriptor *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MTL4AccelerationStructureCurveGeometryDescriptor;
  v4 = [(MTL4AccelerationStructureGeometryDescriptor *)&v6 copyWithZone:zone];
  [v4 setControlPointBuffer:{self->_controlPointBuffer.bufferAddress, self->_controlPointBuffer.length}];
  [v4 setControlPointCount:self->_controlPointCount];
  [v4 setControlPointStride:self->_controlPointStride];
  [v4 setControlPointFormat:self->_controlPointFormat];
  [v4 setRadiusBuffer:{self->_radiusBuffer.bufferAddress, self->_radiusBuffer.length}];
  [v4 setRadiusFormat:self->_radiusFormat];
  [v4 setRadiusStride:self->_radiusStride];
  [v4 setIndexBuffer:{self->_indexBuffer.bufferAddress, self->_indexBuffer.length}];
  [v4 setIndexType:self->_indexType];
  [v4 setSegmentCount:self->_segmentCount];
  [v4 setSegmentControlPointCount:self->_segmentControlPointCount];
  [v4 setCurveType:self->_curveType];
  [v4 setCurveBasis:self->_curveBasis];
  [v4 setCurveEndCaps:self->_curveEndCaps];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v8) = 1;
    return v8;
  }

  v37 = v3;
  v38 = v4;
  Class = object_getClass(self);
  if (Class != object_getClass(equal))
  {
    goto LABEL_3;
  }

  v36.receiver = self;
  v36.super_class = MTL4AccelerationStructureCurveGeometryDescriptor;
  v8 = [(MTL4AccelerationStructureGeometryDescriptor *)&v36 isEqual:equal];
  if (v8)
  {
    controlPointBuffer = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self controlPointBuffer];
    v11 = v10;
    controlPointBuffer2 = [equal controlPointBuffer];
    LOBYTE(v8) = 0;
    if (controlPointBuffer == controlPointBuffer2 && v11 == v12)
    {
      controlPointCount = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self controlPointCount];
      if (controlPointCount != [equal controlPointCount])
      {
        goto LABEL_3;
      }

      controlPointStride = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self controlPointStride];
      if (controlPointStride != [equal controlPointStride])
      {
        goto LABEL_3;
      }

      controlPointFormat = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self controlPointFormat];
      if (controlPointFormat != [equal controlPointFormat])
      {
        goto LABEL_3;
      }

      radiusBuffer = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self radiusBuffer];
      v19 = v18;
      radiusBuffer2 = [equal radiusBuffer];
      LOBYTE(v8) = 0;
      if (radiusBuffer != radiusBuffer2 || v19 != v20)
      {
        return v8;
      }

      radiusFormat = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self radiusFormat];
      if (radiusFormat != [equal radiusFormat] || (v23 = -[MTL4AccelerationStructureCurveGeometryDescriptor radiusStride](self, "radiusStride"), v23 != objc_msgSend(equal, "radiusStride")))
      {
LABEL_3:
        LOBYTE(v8) = 0;
        return v8;
      }

      indexBuffer = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self indexBuffer];
      v26 = v25;
      indexBuffer2 = [equal indexBuffer];
      LOBYTE(v8) = 0;
      if (indexBuffer == indexBuffer2 && v26 == v27)
      {
        indexType = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self indexType];
        if (indexType == [equal indexType])
        {
          segmentCount = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self segmentCount];
          if (segmentCount == [equal segmentCount])
          {
            segmentControlPointCount = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self segmentControlPointCount];
            if (segmentControlPointCount == [equal segmentControlPointCount])
            {
              curveType = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self curveType];
              if (curveType == [equal curveType])
              {
                curveBasis = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self curveBasis];
                if (curveBasis == [equal curveBasis])
                {
                  curveEndCaps = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self curveEndCaps];
                  LOBYTE(v8) = curveEndCaps == [equal curveEndCaps];
                  return v8;
                }
              }
            }
          }
        }

        goto LABEL_3;
      }
    }
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(&v18, 0x90uLL);
  v17.receiver = self;
  v17.super_class = MTL4AccelerationStructureCurveGeometryDescriptor;
  v18 = [(MTL4AccelerationStructureGeometryDescriptor *)&v17 hash];
  controlPointCount = self->_controlPointCount;
  controlPointStride = self->_controlPointStride;
  controlPointFormat = self->_controlPointFormat;
  controlPointBuffer = self->_controlPointBuffer;
  radiusBuffer = self->_radiusBuffer;
  v20 = controlPointCount;
  v21 = controlPointStride;
  v23 = radiusBuffer;
  radiusFormat = self->_radiusFormat;
  radiusStride = self->_radiusStride;
  indexBuffer = self->_indexBuffer;
  indexType = self->_indexType;
  v22 = controlPointFormat;
  segmentCount = self->_segmentCount;
  v24 = radiusFormat;
  v25 = radiusStride;
  segmentControlPointCount = self->_segmentControlPointCount;
  v27 = indexType;
  v28 = segmentCount;
  curveType = self->_curveType;
  v29 = segmentControlPointCount;
  v30 = curveType;
  curveBasis = self->_curveBasis;
  curveEndCaps = self->_curveEndCaps;
  v26 = indexBuffer;
  v31 = curveBasis;
  v32 = curveEndCaps;
  return _MTLHashState(&v18, 0x90uLL);
}

- (MTL4BufferRange)controlPointBuffer
{
  p_controlPointBuffer = &self->_controlPointBuffer;
  bufferAddress = self->_controlPointBuffer.bufferAddress;
  length = p_controlPointBuffer->length;
  result.length = length;
  result.bufferAddress = bufferAddress;
  return result;
}

- (MTL4BufferRange)radiusBuffer
{
  p_radiusBuffer = &self->_radiusBuffer;
  bufferAddress = self->_radiusBuffer.bufferAddress;
  length = p_radiusBuffer->length;
  result.length = length;
  result.bufferAddress = bufferAddress;
  return result;
}

- (MTL4BufferRange)indexBuffer
{
  p_indexBuffer = &self->_indexBuffer;
  bufferAddress = self->_indexBuffer.bufferAddress;
  length = p_indexBuffer->length;
  result.length = length;
  result.bufferAddress = bufferAddress;
  return result;
}

- (id).cxx_construct
{
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 21) = 0;
  *(self + 22) = 0;
  *(self + 23) = 0;
  *(self + 24) = 0;
  return self;
}

@end