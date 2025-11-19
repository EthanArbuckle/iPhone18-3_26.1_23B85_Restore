@interface MPSQuadrilateralAccelerationStructure
- (MPSQuadrilateralAccelerationStructure)initWithDevice:(id)a3;
- (MPSQuadrilateralAccelerationStructure)initWithGroup:(id)a3;
- (id)vertexBuffer;
- (void)setPolygonType:(unint64_t)a3;
@end

@implementation MPSQuadrilateralAccelerationStructure

- (void)setPolygonType:(unint64_t)a3
{
  if (a3 != 1)
  {
    sub_239E2074C();
  }
}

- (MPSQuadrilateralAccelerationStructure)initWithDevice:(id)a3
{
  v7.receiver = self;
  v7.super_class = MPSQuadrilateralAccelerationStructure;
  v3 = [(MPSPolygonAccelerationStructure *)&v7 initWithDevice:a3];
  v4 = v3;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = MPSQuadrilateralAccelerationStructure;
    [(MPSPolygonAccelerationStructure *)&v6 setPolygonType:1];
  }

  return v4;
}

- (MPSQuadrilateralAccelerationStructure)initWithGroup:(id)a3
{
  v7.receiver = self;
  v7.super_class = MPSQuadrilateralAccelerationStructure;
  v3 = [(MPSPolygonAccelerationStructure *)&v7 initWithGroup:a3];
  v4 = v3;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = MPSQuadrilateralAccelerationStructure;
    [(MPSPolygonAccelerationStructure *)&v6 setPolygonType:1];
  }

  return v4;
}

- (id)vertexBuffer
{
  if (objc_msgSend_polygonBuffers(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_polygonBuffers(self, v6, v7, v8, v9);
    objc_msgSend_count(v10, v11, v12, v13, v14);
  }

  if (objc_msgSend_polygonBuffers(self, v6, v7, v8, v9))
  {
    v19 = objc_msgSend_polygonBuffers(self, v15, v16, v17, v18);
    if (objc_msgSend_count(v19, v20, v21, v22, v23) != 1)
    {
      sub_239E2079C();
    }
  }

  v24 = objc_msgSend_polygonBuffers(self, v15, v16, v17, v18);
  v28 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 0, v26, v27);

  return objc_msgSend_vertexBuffer(v28, v29, v30, v31, v32);
}

@end