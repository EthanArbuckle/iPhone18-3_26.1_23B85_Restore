@interface ARSCNPlaneGeometry
+ (ARSCNPlaneGeometry)planeGeometryWithDevice:(id)device;
- (void)updateFromPlaneGeometry:(ARPlaneGeometry *)planeGeometry;
@end

@implementation ARSCNPlaneGeometry

+ (ARSCNPlaneGeometry)planeGeometryWithDevice:(id)device
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = device;
  v5 = [v4 newBufferWithLength:96000 options:0];
  v6 = [v4 newBufferWithLength:48000 options:0];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [MEMORY[0x277CDBA78] geometrySourceWithBuffer:v5 vertexFormat:30 semantic:*MEMORY[0x277CDBB38] vertexCount:6000 dataOffset:0 dataStride:16];
    v9 = [MEMORY[0x277CDBA78] geometrySourceWithBuffer:v7 vertexFormat:29 semantic:*MEMORY[0x277CDBB30] vertexCount:6000 dataOffset:0 dataStride:8];
    v10 = [MEMORY[0x277CDBA70] geometryElementWithData:0 primitiveType:0 primitiveCount:2000 bytesPerIndex:2];
    [v10 setPrimitiveRange:{0, 0}];
    v19[0] = v8;
    v19[1] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v18 = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    v13 = [(SCNGeometry *)ARSCNPlaneGeometry geometryWithSources:v11 elements:v12];

    if (v13)
    {
      objc_storeStrong(v13 + 21, v5);
      objc_storeStrong(v13 + 22, v7);
    }
  }

  else
  {
    if (_ARLogGeneral(void)::onceToken != -1)
    {
      +[ARSCNPlaneGeometry planeGeometryWithDevice:];
    }

    v8 = _ARLogGeneral(void)::logObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543874;
      v21 = v15;
      v22 = 2048;
      selfCopy = self;
      v24 = 2114;
      v25 = v4;
      _os_log_impl(&dword_23D3AE000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error creating new Metal buffer with device %{public}@", buf, 0x20u);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)updateFromPlaneGeometry:(ARPlaneGeometry *)planeGeometry
{
  v3 = planeGeometry;
  __p = 0;
  v49 = 0;
  v50 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, 3 * [(ARPlaneGeometry *)v3 triangleCount]);
  v45 = 0;
  v46 = 0;
  v47 = 0;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&v45, 3 * [(ARPlaneGeometry *)v3 triangleCount]);
  for (i = 0; i < 3 * [(ARPlaneGeometry *)v3 triangleCount]; ++i)
  {
    vertices = [(ARPlaneGeometry *)v3 vertices];
    v6 = [(ARPlaneGeometry *)v3 triangleIndices][2 * i];
    v7 = v49;
    if (v49 >= v50)
    {
      v9 = (v49 - __p) >> 4;
      if ((v9 + 1) >> 60)
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
      }

      v10 = (v50 - __p) >> 3;
      if (v10 <= v9 + 1)
      {
        v10 = v9 + 1;
      }

      if (v50 - __p >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        _ZNSt3__19allocatorIDv3_fE17allocate_at_leastB8ne200100Em(&__p, v11);
      }

      v12 = (16 * v9);
      *v12 = *(vertices + 16 * v6);
      v8 = 16 * v9 + 16;
      v13 = v12 - (v49 - __p);
      memcpy(v13, __p, v49 - __p);
      v14 = __p;
      __p = v13;
      v49 = v8;
      v50 = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v49 = *(vertices + 16 * v6);
      v8 = (v7 + 16);
    }

    v49 = v8;
    textureCoordinates = [(ARPlaneGeometry *)v3 textureCoordinates];
    v16 = [(ARPlaneGeometry *)v3 triangleIndices][2 * i];
    v17 = v46;
    if (v46 >= v47)
    {
      v19 = (v46 - v45) >> 3;
      if ((v19 + 1) >> 61)
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
      }

      v20 = (v47 - v45) >> 2;
      if (v20 <= v19 + 1)
      {
        v20 = v19 + 1;
      }

      if (v47 - v45 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(&v45, v21);
      }

      v22 = (8 * v19);
      *v22 = *(textureCoordinates + 8 * v16);
      v18 = 8 * v19 + 8;
      v23 = v22 - (v46 - v45);
      memcpy(v23, v45, v46 - v45);
      v24 = v45;
      v45 = v23;
      v46 = v18;
      v47 = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v46 = *(textureCoordinates + 8 * v16);
      v18 = (v17 + 8);
    }

    v46 = v18;
  }

  contents = [(MTLBuffer *)self->_vertexBuffer contents];
  memcpy(contents, __p, v49 - __p);
  contents2 = [(MTLBuffer *)self->_textureCoordinateBuffer contents];
  memcpy(contents2, v45, v46 - v45);
  triangleCount = [(ARPlaneGeometry *)v3 triangleCount];
  geometryElements = [(SCNGeometry *)self geometryElements];
  firstObject = [geometryElements firstObject];
  [firstObject setPrimitiveRange:{0, triangleCount}];

  [(ARPlaneGeometry *)v3 center];
  v38 = v30;
  [(ARPlaneGeometry *)v3 extent];
  v31.i64[0] = 0xBF000000BF000000;
  v31.i64[1] = 0xBF000000BF000000;
  v33 = vaddq_f32(v38, vmulq_f32(v32, v31));
  v43 = v33.i64[0];
  v44 = v33.i32[2];
  [(ARPlaneGeometry *)v3 center];
  v39 = v34;
  [(ARPlaneGeometry *)v3 extent];
  v35.i64[0] = 0x3F0000003F000000;
  v35.i64[1] = 0x3F0000003F000000;
  v37 = vaddq_f32(v39, vmulq_f32(v36, v35));
  v41 = v37.i64[0];
  v42 = v37.i32[2];
  [(SCNGeometry *)self setBoundingBoxMin:&v43 max:&v41];
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }
}

@end