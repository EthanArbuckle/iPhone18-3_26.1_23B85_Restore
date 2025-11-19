@interface SphereGeometry
- (id).cxx_construct;
- (id)geometryDescriptor;
- (id)resources;
- (void)uploadToBuffers;
@end

@implementation SphereGeometry

- (void)uploadToBuffers
{
  v25 = [(Geometry *)self device];
  v3 = [v25 newBufferWithLength:self->_spheres.__end_ - self->_spheres.__begin_ options:0];
  sphereBuffer = self->_sphereBuffer;
  self->_sphereBuffer = v3;

  v5 = self->_spheres.__end_ - self->_spheres.__begin_;
  v6 = [v25 newBufferWithLength:8 * ((v5 >> 4) + (v5 >> 5)) options:0];
  boundingBoxBuffer = self->_boundingBoxBuffer;
  self->_boundingBoxBuffer = v6;

  __p = 0;
  v27 = 0;
  v28 = 0;
  begin = self->_spheres.__begin_;
  end = self->_spheres.__end_;
  if (begin != end)
  {
    v10 = 0;
    do
    {
      v11 = *(begin + 7);
      v12 = *(begin + 1);
      v13 = *begin - v11;
      v14 = v12 - v11;
      v15 = *(begin + 2);
      v16 = v15 - v11;
      v17 = *begin + v11;
      v18 = v11 + v12;
      v19 = v11 + v15;
      if (v10 >= v28)
      {
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v10 - __p) >> 3);
        v21 = v20 + 1;
        if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_100003598();
        }

        if (0x5555555555555556 * ((v28 - __p) >> 3) > v21)
        {
          v21 = 0x5555555555555556 * ((v28 - __p) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v28 - __p) >> 3) >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          sub_100003758(&__p, v22);
        }

        v23 = (8 * ((v10 - __p) >> 3));
        *v23 = v13;
        v23[1] = v14;
        v23[2] = v16;
        v23[3] = v17;
        v23[4] = v18;
        v23[5] = v19;
        v10 = (24 * v20 + 24);
        memcpy((24 * v20 - (v27 - __p)), __p, v27 - __p);
        v24 = __p;
        __p = (24 * v20 - (v27 - __p));
        v27 = v10;
        v28 = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v10 = v13;
        v10[1] = v14;
        v10[2] = v16;
        v10[3] = v17;
        v10[4] = v18;
        v10[5] = v19;
        v10 += 6;
      }

      v27 = v10;
      begin = (begin + 32);
    }

    while (begin != end);
  }

  memcpy([(MTLBuffer *)self->_sphereBuffer contents], self->_spheres.__begin_, [(MTLBuffer *)self->_sphereBuffer length]);
  memcpy([(MTLBuffer *)self->_boundingBoxBuffer contents], __p, [(MTLBuffer *)self->_boundingBoxBuffer length]);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

- (id)geometryDescriptor
{
  v3 = +[MTLAccelerationStructureBoundingBoxGeometryDescriptor descriptor];
  [v3 setBoundingBoxBuffer:self->_boundingBoxBuffer];
  [v3 setBoundingBoxCount:(self->_spheres.__end_ - self->_spheres.__begin_) >> 5];
  [v3 setPrimitiveDataBuffer:self->_sphereBuffer];
  [v3 setPrimitiveDataStride:32];
  [v3 setPrimitiveDataElementSize:32];

  return v3;
}

- (id)resources
{
  sphereBuffer = self->_sphereBuffer;
  v2 = [NSArray arrayWithObjects:&sphereBuffer count:1];

  return v2;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 5) = 0;
  return self;
}

@end