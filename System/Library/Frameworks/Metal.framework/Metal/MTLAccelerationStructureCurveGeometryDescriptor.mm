@interface MTLAccelerationStructureCurveGeometryDescriptor
+ (MTLAccelerationStructureCurveGeometryDescriptor)descriptor;
- (BOOL)isEqual:(id)equal;
- (MTLAccelerationStructureCurveGeometryDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLAccelerationStructureCurveGeometryDescriptor

+ (MTLAccelerationStructureCurveGeometryDescriptor)descriptor
{
  v2 = objc_alloc_init(MTLAccelerationStructureCurveGeometryDescriptor);

  return v2;
}

- (MTLAccelerationStructureCurveGeometryDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLAccelerationStructureCurveGeometryDescriptor;
  result = [(MTLAccelerationStructureGeometryDescriptor *)&v3 init];
  if (result)
  {
    result->_controlPointFormat = 30;
    result->_radiusFormat = 28;
    result->_indexType = 1;
    result->_curveType = 0;
    result->_curveBasis = 0;
    result->_endCaps = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLAccelerationStructureCurveGeometryDescriptor;
  [(MTLAccelerationStructureGeometryDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MTLAccelerationStructureCurveGeometryDescriptor;
  v4 = [(MTLAccelerationStructureGeometryDescriptor *)&v6 copyWithZone:zone];
  [v4 setControlPointBuffer:self->_controlPointBuffer];
  [v4 setControlPointBufferOffset:self->_controlPointBufferOffset];
  [v4 setControlPointCount:self->_controlPointCount];
  [v4 setControlPointStride:self->_controlPointStride];
  [v4 setControlPointFormat:self->_controlPointFormat];
  [v4 setRadiusBuffer:self->_radiusBuffer];
  [v4 setRadiusBufferOffset:self->_radiusBufferOffset];
  [v4 setRadiusFormat:self->_radiusFormat];
  [v4 setRadiusStride:self->_radiusStride];
  [v4 setIndexBuffer:self->_indexBuffer];
  [v4 setIndexBufferOffset:self->_indexBufferOffset];
  [v4 setIndexType:self->_indexType];
  [v4 setSegmentCount:self->_segmentCount];
  [v4 setSegmentControlPointCount:self->_segmentControlPointCount];
  [v4 setCurveType:self->_curveType];
  [v4 setCurveBasis:self->_curveBasis];
  [v4 setEndCaps:self->_endCaps];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v28 = v3;
    v29 = v4;
    Class = object_getClass(self);
    if (Class != object_getClass(equal))
    {
      goto LABEL_3;
    }

    v27.receiver = self;
    v27.super_class = MTLAccelerationStructureCurveGeometryDescriptor;
    v8 = [(MTLAccelerationStructureGeometryDescriptor *)&v27 isEqual:equal];
    if (!v8)
    {
      return v8;
    }

    controlPointBuffer = [(MTLAccelerationStructureCurveGeometryDescriptor *)self controlPointBuffer];
    if (controlPointBuffer != [equal controlPointBuffer])
    {
      goto LABEL_3;
    }

    controlPointBufferOffset = [(MTLAccelerationStructureCurveGeometryDescriptor *)self controlPointBufferOffset];
    if (controlPointBufferOffset != [equal controlPointBufferOffset])
    {
      goto LABEL_3;
    }

    controlPointCount = [(MTLAccelerationStructureCurveGeometryDescriptor *)self controlPointCount];
    if (controlPointCount != [equal controlPointCount])
    {
      goto LABEL_3;
    }

    controlPointStride = [(MTLAccelerationStructureCurveGeometryDescriptor *)self controlPointStride];
    if (controlPointStride != [equal controlPointStride])
    {
      goto LABEL_3;
    }

    controlPointFormat = [(MTLAccelerationStructureCurveGeometryDescriptor *)self controlPointFormat];
    if (controlPointFormat != [equal controlPointFormat])
    {
      goto LABEL_3;
    }

    radiusBuffer = [(MTLAccelerationStructureCurveGeometryDescriptor *)self radiusBuffer];
    if (radiusBuffer != [equal radiusBuffer])
    {
      goto LABEL_3;
    }

    radiusBufferOffset = [(MTLAccelerationStructureCurveGeometryDescriptor *)self radiusBufferOffset];
    if (radiusBufferOffset != [equal radiusBufferOffset])
    {
      goto LABEL_3;
    }

    radiusFormat = [(MTLAccelerationStructureCurveGeometryDescriptor *)self radiusFormat];
    if (radiusFormat != [equal radiusFormat])
    {
      goto LABEL_3;
    }

    radiusStride = [(MTLAccelerationStructureCurveGeometryDescriptor *)self radiusStride];
    if (radiusStride != [equal radiusStride])
    {
      goto LABEL_3;
    }

    indexBuffer = [(MTLAccelerationStructureCurveGeometryDescriptor *)self indexBuffer];
    if (indexBuffer == [equal indexBuffer] && (v19 = -[MTLAccelerationStructureCurveGeometryDescriptor indexBufferOffset](self, "indexBufferOffset"), v19 == objc_msgSend(equal, "indexBufferOffset")) && (v20 = -[MTLAccelerationStructureCurveGeometryDescriptor indexType](self, "indexType"), v20 == objc_msgSend(equal, "indexType")) && (v21 = -[MTLAccelerationStructureCurveGeometryDescriptor segmentCount](self, "segmentCount"), v21 == objc_msgSend(equal, "segmentCount")) && (v22 = -[MTLAccelerationStructureCurveGeometryDescriptor segmentControlPointCount](self, "segmentControlPointCount"), v22 == objc_msgSend(equal, "segmentControlPointCount")) && (v23 = -[MTLAccelerationStructureCurveGeometryDescriptor curveType](self, "curveType"), v23 == objc_msgSend(equal, "curveType")) && (v24 = -[MTLAccelerationStructureCurveGeometryDescriptor curveBasis](self, "curveBasis"), v24 == objc_msgSend(equal, "curveBasis")))
    {
      endCaps = [(MTLAccelerationStructureCurveGeometryDescriptor *)self endCaps];
      LOBYTE(v8) = endCaps == [equal endCaps];
    }

    else
    {
LABEL_3:
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v18, 0x90uLL);
  v17.receiver = self;
  v17.super_class = MTLAccelerationStructureCurveGeometryDescriptor;
  v18[0] = [(MTLAccelerationStructureGeometryDescriptor *)&v17 hash];
  v3 = [(MTLBuffer *)self->_controlPointBuffer hash];
  controlPointBufferOffset = self->_controlPointBufferOffset;
  controlPointCount = self->_controlPointCount;
  controlPointStride = self->_controlPointStride;
  v18[1] = v3;
  v18[2] = controlPointBufferOffset;
  controlPointFormat = self->_controlPointFormat;
  v18[3] = controlPointCount;
  v18[4] = controlPointStride;
  v18[5] = controlPointFormat;
  v8 = [(MTLBuffer *)self->_radiusBuffer hash];
  radiusBufferOffset = self->_radiusBufferOffset;
  v18[6] = v8;
  v18[7] = radiusBufferOffset;
  radiusStride = self->_radiusStride;
  v18[8] = self->_radiusFormat;
  v18[9] = radiusStride;
  v11 = [(MTLBuffer *)self->_indexBuffer hash];
  indexBufferOffset = self->_indexBufferOffset;
  v18[10] = v11;
  v18[11] = indexBufferOffset;
  segmentCount = self->_segmentCount;
  v18[12] = self->_indexType;
  v18[13] = segmentCount;
  curveType = self->_curveType;
  v18[14] = self->_segmentControlPointCount;
  v18[15] = curveType;
  endCaps = self->_endCaps;
  v18[16] = self->_curveBasis;
  v18[17] = endCaps;
  return _MTLHashState(v18, 0x90uLL);
}

@end