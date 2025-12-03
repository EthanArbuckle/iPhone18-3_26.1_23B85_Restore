@interface MPSPolygonBuffer
+ (MPSPolygonBuffer)polygonBuffer;
- (MPSPolygonBuffer)copyWithZone:(NSZone *)zone;
- (MPSPolygonBuffer)init;
- (MPSPolygonBuffer)initWithCoder:(NSCoder *)aDecoder;
- (id)description;
- (void)dealloc;
- (void)validateWithVerticesPerPolygon:(unint64_t)polygon vertexStride:(unint64_t)stride indexStride:(unint64_t)indexStride;
@end

@implementation MPSPolygonBuffer

- (MPSPolygonBuffer)init
{
  v3.receiver = self;
  v3.super_class = MPSPolygonBuffer;
  return [(MPSPolygonBuffer *)&v3 init];
}

- (MPSPolygonBuffer)initWithCoder:(NSCoder *)aDecoder
{
  v9.receiver = self;
  v9.super_class = MPSPolygonBuffer;
  v7 = [(MPSPolygonBuffer *)&v9 init];
  if (v7)
  {
    v7->_polygonCount = objc_msgSend_decodeInt64ForKey_(aDecoder, v4, @"MPSPolygonBufferKeyPolygonCount", v5, v6);
  }

  return v7;
}

+ (MPSPolygonBuffer)polygonBuffer
{
  v2 = objc_alloc_init(MPSPolygonBuffer);

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSPolygonBuffer;
  [(MPSPolygonBuffer *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MPSPolygonBuffer;
  v4 = [(MPSPolygonBuffer *)&v9 description];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tvertex buffer: %p\n\tvertex buffer offset: %llu\n\tindex buffer: %p\n\tindex buffer offset: %llu\n\tmask buffer: %p\n\tmask buffer offset: %llu\n\tpolygon count: %llu", v6, v7, v4, self->_vertexBuffer, self->_vertexBufferOffset, self->_indexBuffer, self->_indexBufferOffset, self->_maskBuffer, self->_maskBufferOffset, self->_polygonCount);
}

- (MPSPolygonBuffer)copyWithZone:(NSZone *)zone
{
  v5 = objc_opt_class();
  result = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);
  result->_polygonCount = self->_polygonCount;
  return result;
}

- (void)validateWithVerticesPerPolygon:(unint64_t)polygon vertexStride:(unint64_t)stride indexStride:(unint64_t)indexStride
{
  if (!self->_vertexBuffer)
  {
    sub_239E245A0();
  }

  objc_msgSend_length(self->_vertexBuffer, a2, polygon, stride, indexStride);
  vertexBufferOffset = self->_vertexBufferOffset;
  if (vertexBufferOffset >= objc_msgSend_length(self->_vertexBuffer, v10, v11, v12, v13))
  {
    sub_239E245F0();
  }

  if ((self->_vertexBufferOffset & 3) != 0)
  {
    sub_239E24648(&self->_vertexBufferOffset);
  }

  p_indexBuffer = &self->_indexBuffer;
  indexBuffer = self->_indexBuffer;
  if (indexBuffer)
  {
    objc_msgSend_length(indexBuffer, v14, v15, v16, v17);
    v24 = objc_msgSend_length(self->_indexBuffer, v20, v21, v22, v23);
    p_indexBufferOffset = &self->_indexBufferOffset;
    p_polygonCount = &self->_polygonCount;
    if (v24 < self->_indexBufferOffset + indexStride * polygon * self->_polygonCount)
    {
      sub_239E246A4();
    }

    objc_msgSend_length(*p_indexBuffer, p_polygonCount, v25, v26, v27);
    v30 = *p_indexBufferOffset;
    if (v30 >= objc_msgSend_length(*p_indexBuffer, v31, v32, v33, v34))
    {
      sub_239E24700();
    }

    if (*p_indexBufferOffset % indexStride)
    {
      sub_239E24758();
    }
  }

  else
  {
    objc_msgSend_length(self->_vertexBuffer, v14, v15, v16, v17);
    v43 = objc_msgSend_length(self->_vertexBuffer, v39, v40, v41, v42);
    v35 = &self->_polygonCount;
    if (v43 < self->_vertexBufferOffset + stride * polygon * self->_polygonCount)
    {
      sub_239E247A8();
    }
  }

  p_maskBuffer = &self->_maskBuffer;
  maskBuffer = self->_maskBuffer;
  if (maskBuffer)
  {
    objc_msgSend_length(maskBuffer, v35, v36, v37, v38);
    v50 = objc_msgSend_length(self->_maskBuffer, v46, v47, v48, v49);
    maskBufferOffset = self->_maskBufferOffset;
    p_maskBufferOffset = &self->_maskBufferOffset;
    v56 = (p_maskBufferOffset + 1);
    if (v50 < maskBufferOffset + 4 * p_maskBufferOffset[1])
    {
      sub_239E24804();
    }

    objc_msgSend_length(*p_maskBuffer, v56, v51, v52, v53);
    v57 = *p_maskBufferOffset;
    if (v57 >= objc_msgSend_length(*p_maskBuffer, v58, v59, v60, v61))
    {
      sub_239E24864();
    }

    if ((*p_maskBufferOffset & 3) != 0)
    {
      sub_239E248BC(p_maskBufferOffset);
    }
  }
}

@end