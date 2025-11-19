@interface MTLAccelerationStructureMotionCurveGeometryDescriptor
+ (MTLAccelerationStructureMotionCurveGeometryDescriptor)descriptor;
- (BOOL)isEqual:(id)a3;
- (MTLAccelerationStructureMotionCurveGeometryDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)setControlPointBuffers:(NSArray *)controlPointBuffers;
- (void)setRadiusBuffers:(NSArray *)radiusBuffers;
@end

@implementation MTLAccelerationStructureMotionCurveGeometryDescriptor

+ (MTLAccelerationStructureMotionCurveGeometryDescriptor)descriptor
{
  v2 = objc_alloc_init(MTLAccelerationStructureMotionCurveGeometryDescriptor);

  return v2;
}

- (MTLAccelerationStructureMotionCurveGeometryDescriptor)init
{
  v5.receiver = self;
  v5.super_class = MTLAccelerationStructureMotionCurveGeometryDescriptor;
  v2 = [(MTLAccelerationStructureGeometryDescriptor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_controlPointFormat = 30;
    v2->_radiusFormat = 28;
    v2->_indexType = 1;
    v2->_curveType = 0;
    v2->_curveBasis = 0;
    v2->_endCaps = 0;
    v2->_controlPointBuffers = objc_opt_new();
    v3->_radiusBuffers = objc_opt_new();
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLAccelerationStructureMotionCurveGeometryDescriptor;
  [(MTLAccelerationStructureGeometryDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MTLAccelerationStructureMotionCurveGeometryDescriptor;
  v4 = [(MTLAccelerationStructureGeometryDescriptor *)&v6 copyWithZone:a3];
  [v4 setControlPointBuffers:self->_controlPointBuffers];
  [v4 setControlPointCount:self->_controlPointCount];
  [v4 setControlPointStride:self->_controlPointStride];
  [v4 setControlPointFormat:self->_controlPointFormat];
  [v4 setRadiusBuffers:self->_radiusBuffers];
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v32 = v3;
    v33 = v4;
    Class = object_getClass(self);
    if (Class != object_getClass(a3))
    {
      goto LABEL_3;
    }

    v31.receiver = self;
    v31.super_class = MTLAccelerationStructureMotionCurveGeometryDescriptor;
    v8 = [(MTLAccelerationStructureGeometryDescriptor *)&v31 isEqual:a3];
    if (!v8)
    {
      return v8;
    }

    v9 = [(NSArray *)[(MTLAccelerationStructureMotionCurveGeometryDescriptor *)self controlPointBuffers] count];
    if (v9 != [objc_msgSend(a3 "controlPointBuffers")])
    {
      goto LABEL_3;
    }

    v10 = [(NSArray *)[(MTLAccelerationStructureMotionCurveGeometryDescriptor *)self radiusBuffers] count];
    if (v10 != [objc_msgSend(a3 "radiusBuffers")])
    {
      goto LABEL_3;
    }

    if ([(NSArray *)self->_controlPointBuffers count])
    {
      v11 = 0;
      do
      {
        v12 = [-[NSArray objectAtIndexedSubscript:](-[MTLAccelerationStructureMotionCurveGeometryDescriptor controlPointBuffers](self "controlPointBuffers")];
        if (v12 != [objc_msgSend(objc_msgSend(a3 "controlPointBuffers")])
        {
          goto LABEL_3;
        }

        v13 = [-[NSArray objectAtIndexedSubscript:](-[MTLAccelerationStructureMotionCurveGeometryDescriptor controlPointBuffers](self "controlPointBuffers")];
        if (v13 != [objc_msgSend(objc_msgSend(a3 "controlPointBuffers")])
        {
          goto LABEL_3;
        }
      }

      while (++v11 < [(NSArray *)self->_controlPointBuffers count]);
    }

    if ([(NSArray *)self->_radiusBuffers count])
    {
      v14 = 0;
      do
      {
        v15 = [-[NSArray objectAtIndexedSubscript:](-[MTLAccelerationStructureMotionCurveGeometryDescriptor radiusBuffers](self "radiusBuffers")];
        if (v15 != [objc_msgSend(objc_msgSend(a3 "radiusBuffers")])
        {
          goto LABEL_3;
        }

        v16 = [-[NSArray objectAtIndexedSubscript:](-[MTLAccelerationStructureMotionCurveGeometryDescriptor radiusBuffers](self "radiusBuffers")];
        if (v16 != [objc_msgSend(objc_msgSend(a3 "radiusBuffers")])
        {
          goto LABEL_3;
        }
      }

      while (++v14 < [(NSArray *)self->_radiusBuffers count]);
    }

    v17 = [(MTLAccelerationStructureMotionCurveGeometryDescriptor *)self controlPointCount];
    if (v17 != [a3 controlPointCount])
    {
      goto LABEL_3;
    }

    v18 = [(MTLAccelerationStructureMotionCurveGeometryDescriptor *)self controlPointStride];
    if (v18 != [a3 controlPointStride])
    {
      goto LABEL_3;
    }

    v19 = [(MTLAccelerationStructureMotionCurveGeometryDescriptor *)self controlPointFormat];
    if (v19 != [a3 controlPointFormat])
    {
      goto LABEL_3;
    }

    v20 = [(MTLAccelerationStructureMotionCurveGeometryDescriptor *)self radiusFormat];
    if (v20 != [a3 radiusFormat])
    {
      goto LABEL_3;
    }

    v21 = [(MTLAccelerationStructureMotionCurveGeometryDescriptor *)self radiusStride];
    if (v21 != [a3 radiusStride] || (v22 = -[MTLAccelerationStructureMotionCurveGeometryDescriptor indexBuffer](self, "indexBuffer"), v22 != objc_msgSend(a3, "indexBuffer")) || (v23 = -[MTLAccelerationStructureMotionCurveGeometryDescriptor indexBufferOffset](self, "indexBufferOffset"), v23 != objc_msgSend(a3, "indexBufferOffset")) || (v24 = -[MTLAccelerationStructureMotionCurveGeometryDescriptor indexType](self, "indexType"), v24 != objc_msgSend(a3, "indexType")) || (v25 = -[MTLAccelerationStructureMotionCurveGeometryDescriptor segmentCount](self, "segmentCount"), v25 != objc_msgSend(a3, "segmentCount")) || (v26 = -[MTLAccelerationStructureMotionCurveGeometryDescriptor segmentControlPointCount](self, "segmentControlPointCount"), v26 != objc_msgSend(a3, "segmentControlPointCount")) || (v27 = -[MTLAccelerationStructureMotionCurveGeometryDescriptor curveType](self, "curveType"), v27 != objc_msgSend(a3, "curveType")) || (v28 = -[MTLAccelerationStructureMotionCurveGeometryDescriptor curveBasis](self, "curveBasis"), v28 != objc_msgSend(a3, "curveBasis")))
    {
LABEL_3:
      LOBYTE(v8) = 0;
      return v8;
    }

    v29 = [(MTLAccelerationStructureMotionCurveGeometryDescriptor *)self endCaps];
    LOBYTE(v8) = v29 == [a3 endCaps];
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v16, 0x80uLL);
  v15.receiver = self;
  v15.super_class = MTLAccelerationStructureMotionCurveGeometryDescriptor;
  v16[0] = [(MTLAccelerationStructureGeometryDescriptor *)&v15 hash];
  v3 = MTLHashArray(self->_controlPointBuffers, 0, 1);
  controlPointCount = self->_controlPointCount;
  v16[1] = v3;
  v16[2] = controlPointCount;
  controlPointFormat = self->_controlPointFormat;
  v16[3] = self->_controlPointStride;
  v16[4] = controlPointFormat;
  v6 = MTLHashArray(self->_radiusBuffers, 0, 1);
  radiusFormat = self->_radiusFormat;
  radiusStride = self->_radiusStride;
  v16[5] = v6;
  v16[6] = radiusFormat;
  v16[7] = radiusStride;
  v9 = [(MTLBuffer *)self->_indexBuffer hash];
  indexBufferOffset = self->_indexBufferOffset;
  v16[8] = v9;
  v16[9] = indexBufferOffset;
  segmentCount = self->_segmentCount;
  v16[10] = self->_indexType;
  v16[11] = segmentCount;
  curveType = self->_curveType;
  v16[12] = self->_segmentControlPointCount;
  v16[13] = curveType;
  endCaps = self->_endCaps;
  v16[14] = self->_curveBasis;
  v16[15] = endCaps;
  return _MTLHashState(v16, 0x80uLL);
}

- (void)setControlPointBuffers:(NSArray *)controlPointBuffers
{
  v3 = self->_controlPointBuffers;
  if (v3 != controlPointBuffers)
  {

    self->_controlPointBuffers = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:controlPointBuffers copyItems:1];
  }
}

- (void)setRadiusBuffers:(NSArray *)radiusBuffers
{
  v3 = self->_radiusBuffers;
  if (v3 != radiusBuffers)
  {

    self->_radiusBuffers = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:radiusBuffers copyItems:1];
  }
}

@end