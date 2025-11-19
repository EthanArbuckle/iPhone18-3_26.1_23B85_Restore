@interface MTL4AccelerationStructureCurveGeometryDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4AccelerationStructureCurveGeometryDescriptor)init;
- (MTL4BufferRange)controlPointBuffer;
- (MTL4BufferRange)indexBuffer;
- (MTL4BufferRange)radiusBuffer;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MTL4AccelerationStructureCurveGeometryDescriptor;
  v4 = [(MTL4AccelerationStructureGeometryDescriptor *)&v6 copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
    return v8;
  }

  v37 = v3;
  v38 = v4;
  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    goto LABEL_3;
  }

  v36.receiver = self;
  v36.super_class = MTL4AccelerationStructureCurveGeometryDescriptor;
  v8 = [(MTL4AccelerationStructureGeometryDescriptor *)&v36 isEqual:a3];
  if (v8)
  {
    v9 = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self controlPointBuffer];
    v11 = v10;
    v13 = [a3 controlPointBuffer];
    LOBYTE(v8) = 0;
    if (v9 == v13 && v11 == v12)
    {
      v14 = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self controlPointCount];
      if (v14 != [a3 controlPointCount])
      {
        goto LABEL_3;
      }

      v15 = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self controlPointStride];
      if (v15 != [a3 controlPointStride])
      {
        goto LABEL_3;
      }

      v16 = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self controlPointFormat];
      if (v16 != [a3 controlPointFormat])
      {
        goto LABEL_3;
      }

      v17 = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self radiusBuffer];
      v19 = v18;
      v21 = [a3 radiusBuffer];
      LOBYTE(v8) = 0;
      if (v17 != v21 || v19 != v20)
      {
        return v8;
      }

      v22 = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self radiusFormat];
      if (v22 != [a3 radiusFormat] || (v23 = -[MTL4AccelerationStructureCurveGeometryDescriptor radiusStride](self, "radiusStride"), v23 != objc_msgSend(a3, "radiusStride")))
      {
LABEL_3:
        LOBYTE(v8) = 0;
        return v8;
      }

      v24 = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self indexBuffer];
      v26 = v25;
      v28 = [a3 indexBuffer];
      LOBYTE(v8) = 0;
      if (v24 == v28 && v26 == v27)
      {
        v29 = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self indexType];
        if (v29 == [a3 indexType])
        {
          v30 = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self segmentCount];
          if (v30 == [a3 segmentCount])
          {
            v31 = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self segmentControlPointCount];
            if (v31 == [a3 segmentControlPointCount])
            {
              v32 = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self curveType];
              if (v32 == [a3 curveType])
              {
                v33 = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self curveBasis];
                if (v33 == [a3 curveBasis])
                {
                  v34 = [(MTL4AccelerationStructureCurveGeometryDescriptor *)self curveEndCaps];
                  LOBYTE(v8) = v34 == [a3 curveEndCaps];
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