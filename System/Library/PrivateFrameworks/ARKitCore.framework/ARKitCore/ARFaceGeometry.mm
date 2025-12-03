@interface ARFaceGeometry
- (ARFaceGeometry)initWithBlendShapes:(NSDictionary *)blendShapes;
- (ARFaceGeometry)initWithCoder:(id)coder;
- (ARFaceGeometry)initWithCustomVertices:(ARFaceGeometry *)self verticesCount:(SEL)count;
- (ARFaceGeometry)initWithFaceTrackingDataProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (NSUInteger)textureCoordinateCount;
- (NSUInteger)triangleCount;
- (NSUInteger)vertexCount;
- (__n128)positionForLabeledFacePosition:(void *)position;
- (const)textureCoordinates;
- (const)triangleIndices;
- (const)vertices;
- (double)normalForLabeledFacePosition:(void *)position;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initPrivate;
- (signed)closestVertexIndexToLabeledFacePosition:(id)position;
- (uint64_t)normals;
- (unint64_t)normalCount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARFaceGeometry

- (id)initPrivate
{
  if (+[ARFaceTrackingTechnique isSupported])
  {
    v8.receiver = self;
    v8.super_class = ARFaceGeometry;
    v3 = [(ARFaceGeometry *)&v8 init];
    if (v3)
    {
      v4 = dispatch_semaphore_create(1);
      normalsSemaphore = v3->_normalsSemaphore;
      v3->_normalsSemaphore = v4;
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ARFaceGeometry)initWithBlendShapes:(NSDictionary *)blendShapes
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = blendShapes;
  initPrivate = [(ARFaceGeometry *)self initPrivate];
  if (initPrivate)
  {
    v6 = +[ARFaceAnchor blendShapeMapping];
    allKeys = [v6 allKeys];
    std::vector<float>::vector[abi:ne200100](&__p, [allKeys count]);

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = v4;
    v9 = [(NSDictionary *)v8 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v9)
    {
      v10 = *v38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v37 + 1) + 8 * i);
          v13 = [v6 objectForKeyedSubscript:v12];
          if (v13)
          {
            v14 = [(NSDictionary *)v8 objectForKeyedSubscript:v12];
            [v14 floatValue];
            v16 = v15;
            intValue = [v13 intValue];
            *(__p + intValue) = v16;
          }
        }

        v9 = [(NSDictionary *)v8 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v9);
    }

    v18 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:__p length:v42 - __p freeWhenDone:0];
    v43 = *MEMORY[0x1E698BFB8];
    v44 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    CVAFaceTrackingCopySemantics();
    v36 = 0;
    v20 = [0 objectForKeyedSubscript:*MEMORY[0x1E698C070]];
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x1E698C088]];

    v22 = [v21 length];
    v23 = v21;
    bytes = [v21 bytes];
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v34, (v22 / 0xC));
    v26 = *initPrivate->_anon_8;
    if (v26)
    {
      *&initPrivate->_anon_8[8] = v26;
      operator delete(v26);
      *initPrivate->_anon_8 = 0;
      *&initPrivate->_anon_8[8] = 0;
      *&initPrivate->_anon_8[16] = 0;
    }

    v27 = v34;
    *initPrivate->_anon_8 = v34;
    v28 = v35;
    *&initPrivate->_anon_8[8] = v35;
    if (v28 != v27)
    {
      v29 = 0;
      v30 = (bytes + 8);
      v31 = vdupq_n_s32(0x447A0000u);
      do
      {
        v25.i64[0] = *(v30 - 1);
        v25.i32[2] = *v30;
        *(v27 + 16 * v29) = v25;
        v32 = *initPrivate->_anon_8;
        v25 = vdivq_f32(*(v32 + 16 * v29), v31);
        *(v32 + 16 * v29++) = v25;
        v27 = *initPrivate->_anon_8;
        v30 += 3;
      }

      while (v29 < (*&initPrivate->_anon_8[8] - v27) >> 4);
    }

    if (__p)
    {
      v42 = __p;
      operator delete(__p);
    }
  }

  return initPrivate;
}

- (ARFaceGeometry)initWithFaceTrackingDataProtocol:(id)protocol
{
  v20 = *MEMORY[0x1E69E9840];
  protocolCopy = protocol;
  initPrivate = [(ARFaceGeometry *)self initPrivate];
  vertexCount = [protocolCopy vertexCount];
  v8 = +[ARNeutralFaceGeometry sharedNeutralGeometry];
  vertexCount2 = [v8 vertexCount];

  if (vertexCount == vertexCount2)
  {
    if (initPrivate)
    {
      objc_storeStrong(initPrivate + 7, protocol);
      vertices = [protocolCopy vertices];
      vertices2 = [protocolCopy vertices];
      vertexCount3 = [protocolCopy vertexCount];
      memset(v19, 0, sizeof(v19));
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(v19, vertices, vertices2 + 16 * vertexCount3, (vertices2 + 16 * vertexCount3 - vertices) >> 4);
      v13 = *(initPrivate + 1);
      if (v13)
      {
        *(initPrivate + 2) = v13;
        operator delete(v13);
        *(initPrivate + 1) = 0;
        *(initPrivate + 2) = 0;
        *(initPrivate + 3) = 0;
      }

      *(initPrivate + 8) = *v19;
      *(initPrivate + 3) = *&v19[16];
    }

    v14 = initPrivate;
  }

  else
  {
    v15 = _ARLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *v19 = 138543618;
      *&v19[4] = v17;
      *&v19[12] = 2048;
      *&v19[14] = initPrivate;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Error: Number of vertices must be consistent with neutral geometry", v19, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

- (ARFaceGeometry)initWithCustomVertices:(ARFaceGeometry *)self verticesCount:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v17 = *MEMORY[0x1E69E9840];
  initPrivate = [(ARFaceGeometry *)self initPrivate];
  v7 = +[ARNeutralFaceGeometry sharedNeutralGeometry];
  vertexCount = [v7 vertexCount];

  if (vertexCount == v4)
  {
    if (initPrivate)
    {
      v9 = initPrivate[7];
      initPrivate[7] = 0;

      memset(v16, 0, sizeof(v16));
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(v16, v5, v5 + 16 * v4, v4);
      v10 = initPrivate[1];
      if (v10)
      {
        initPrivate[2] = v10;
        operator delete(v10);
        initPrivate[1] = 0;
        initPrivate[2] = 0;
        initPrivate[3] = 0;
      }

      *(initPrivate + 1) = *v16;
      initPrivate[3] = *&v16[16];
    }

    v11 = initPrivate;
  }

  else
  {
    v12 = _ARLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *v16 = 138543618;
      *&v16[4] = v14;
      *&v16[12] = 2048;
      *&v16[14] = initPrivate;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Error: Number of vertices must be consistent with neutral geometry", v16, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initPrivate"}];
  v5 = v4;
  if (v4)
  {
    if (v4 != self)
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l((v4 + 8), *self->_anon_8, *&self->_anon_8[8], (*&self->_anon_8[8] - *self->_anon_8) >> 4);
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l((v5 + 32), *self->_anon_20, *&self->_anon_20[8], (*&self->_anon_20[8] - *self->_anon_20) >> 4);
    }

    objc_storeStrong((v5 + 56), self->_trackingData);
  }

  return v5;
}

- (const)vertices
{
  vertices = *self->_anon_8;
  if (*&self->_anon_8[8] == vertices)
  {
    v3 = +[ARNeutralFaceGeometry sharedNeutralGeometry];
    vertices = [v3 vertices];
  }

  return vertices;
}

- (NSUInteger)vertexCount
{
  v2 = +[ARNeutralFaceGeometry sharedNeutralGeometry];
  vertexCount = [v2 vertexCount];

  return vertexCount;
}

- (unint64_t)normalCount
{
  trackingData = self->_trackingData;
  if (trackingData)
  {
    return [(ARFaceTrackingDataProtocol *)trackingData normalCount];
  }

  else
  {
    return [(ARFaceGeometry *)self vertexCount];
  }
}

- (uint64_t)normals
{
  dispatch_semaphore_wait(*(self + 64), 0xFFFFFFFFFFFFFFFFLL);
  if (*(self + 56))
  {
    dispatch_semaphore_signal(*(self + 64));
    v2 = *(self + 56);

    return [v2 normals];
  }

  else
  {
    v4 = *(self + 40) - *(self + 32);
    if ([self vertexCount] != v4 >> 4)
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm((self + 32), [self vertexCount]);
      v5 = *(self + 32);
      v6 = *(self + 40) - v5;
      if (v6 >= 1)
      {
        bzero(v5, v6);
      }

      if ([self triangleCount])
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = *([self triangleIndices] + v7);
          v10 = *([self triangleIndices] + v7 + 2);
          v11 = *([self triangleIndices] + v7 + 4);
          v20 = *([self vertices] + 16 * v9);
          v19 = *([self vertices] + 16 * v10);
          vertices = [self vertices];
          v13 = vsubq_f32(v19, v20);
          v14 = vsubq_f32(*(vertices + 16 * v11), v20);
          v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vnegq_f32(v13)), v14, vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL));
          v16 = vmulq_f32(v15, v15);
          *&v17 = v16.f32[1] + (v16.f32[2] + v16.f32[0]);
          *v16.f32 = vrsqrte_f32(v17);
          *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
          v18 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]);
          *(*(self + 32) + 16 * v9) = vaddq_f32(*(*(self + 32) + 16 * v9), v18);
          *(*(self + 32) + 16 * v10) = vaddq_f32(v18, *(*(self + 32) + 16 * v10));
          ++v8;
          *(*(self + 32) + 16 * v11) = vaddq_f32(v18, *(*(self + 32) + 16 * v11));
          v7 += 6;
        }

        while ([self triangleCount] > v8);
      }
    }

    dispatch_semaphore_signal(*(self + 64));
    return *(self + 32);
  }
}

- (const)textureCoordinates
{
  v2 = +[ARNeutralFaceGeometry sharedNeutralGeometry];
  textureCoordinates = [v2 textureCoordinates];

  return textureCoordinates;
}

- (NSUInteger)textureCoordinateCount
{
  v2 = +[ARNeutralFaceGeometry sharedNeutralGeometry];
  textureCoordinateCount = [v2 textureCoordinateCount];

  return textureCoordinateCount;
}

- (const)triangleIndices
{
  v2 = +[ARNeutralFaceGeometry sharedNeutralGeometry];
  triangleIndices = [v2 triangleIndices];

  return triangleIndices;
}

- (NSUInteger)triangleCount
{
  v2 = +[ARNeutralFaceGeometry sharedNeutralGeometry];
  triangleCount = [v2 triangleCount];

  return triangleCount;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:*self->_anon_8 length:*&self->_anon_8[8] - *self->_anon_8];
  [coderCopy encodeObject:v4 forKey:@"customVertices"];
  v5 = [MEMORY[0x1E695DEF0] dataWithBytes:*self->_anon_20 length:*&self->_anon_20[8] - *self->_anon_20];
  [coderCopy encodeObject:v5 forKey:@"normalsData"];
  [coderCopy encodeObject:self->_trackingData forKey:@"trackingData"];
}

- (ARFaceGeometry)initWithCoder:(id)coder
{
  coderCopy = coder;
  initPrivate = [(ARFaceGeometry *)self initPrivate];
  if (initPrivate)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customVertices"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 length];
      bytes = [v7 bytes];
      v19 = 0uLL;
      v20 = 0;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v19, bytes, bytes + 16 * (v8 >> 4), (v8 >> 4));
      v10 = *(initPrivate + 1);
      if (v10)
      {
        *(initPrivate + 2) = v10;
        operator delete(v10);
        *(initPrivate + 1) = 0;
        *(initPrivate + 2) = 0;
        *(initPrivate + 3) = 0;
      }

      *(initPrivate + 8) = v19;
      *(initPrivate + 3) = v20;
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"normalsData"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 length];
      bytes2 = [v12 bytes];
      v19 = 0uLL;
      v20 = 0;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v19, bytes2, bytes2 + 16 * (v13 >> 4), (v13 >> 4));
      v15 = *(initPrivate + 4);
      if (v15)
      {
        *(initPrivate + 5) = v15;
        operator delete(v15);
        *(initPrivate + 4) = 0;
        *(initPrivate + 5) = 0;
        *(initPrivate + 6) = 0;
      }

      *(initPrivate + 2) = v19;
      *(initPrivate + 6) = v20;
    }

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackingData"];
    v17 = *(initPrivate + 7);
    *(initPrivate + 7) = v16;
  }

  return initPrivate;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = v5;
    v7 = *(v5 + 1);
    v8 = *self->_anon_8;
    v9 = *&self->_anon_8[8];
    if (*(v5 + 2) - v7 != v9 - v8)
    {
      goto LABEL_9;
    }

    if (v9 == v8)
    {
      goto LABEL_11;
    }

    v10 = vceqq_f32(*v7, *v8);
    v10.i32[3] = v10.i32[2];
    if ((vminvq_u32(v10) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    v11 = v9 - v8;
    v12 = 1;
    do
    {
      v13 = v12;
      if (v11 == v12)
      {
        break;
      }

      v14 = vceqq_f32(v7[v12], v8[v12]);
      v14.i32[3] = v14.i32[2];
      ++v12;
    }

    while ((vminvq_u32(v14) & 0x80000000) != 0);
    if (v13 >= v11)
    {
LABEL_11:
      v15 = [*(v5 + 7) isEqual:self->_trackingData];
    }

    else
    {
LABEL_9:
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (__n128)positionForLabeledFacePosition:(void *)position
{
  positionCopy = position;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0.0;
  if (ARFaceLandmarkDataFromLabeledFacePosition(positionCopy, &v19 + 1, &v19, &v18, &v17 + 1, &v17, &v16))
  {
    vertices = [self vertices];
    *v6.f32 = ARVector3ScalarMultiplication(*(vertices + 16 * SHIWORD(v19)), *(&v17 + 1));
    v14 = v6;
    vertices2 = [self vertices];
    *v8.f32 = ARVector3ScalarMultiplication(*(vertices2 + 16 * v19), *&v17);
    v13 = v8;
    vertices3 = [self vertices];
    *v10.f32 = ARVector3ScalarMultiplication(*(vertices3 + 16 * v18), v16);
    v11 = vaddq_f32(vaddq_f32(v14, v13), v10);
  }

  else
  {
    v11 = xmmword_1C25C8EC0;
  }

  v15 = v11;

  return v15;
}

- (double)normalForLabeledFacePosition:(void *)position
{
  v20 = 0;
  v19 = 0;
  if (ARFaceLandmarkDataFromLabeledFacePosition(position, &v20 + 1, &v20, &v19, &v18, &v17, &v16))
  {
    vertices = [self vertices];
    v15 = *(vertices + 16 * SHIWORD(v20));
    vertices2 = [self vertices];
    v14 = *(vertices2 + 16 * v20);
    vertices3 = [self vertices];
    v7 = vsubq_f32(v14, v15);
    v8 = vsubq_f32(*(vertices3 + 16 * v19), v15);
    v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), vnegq_f32(v7)), v8, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
    v10 = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
    v11 = vmulq_f32(v9, v9);
    *&v12 = v11.f32[1] + (v11.f32[2] + v11.f32[0]);
    *v11.f32 = vrsqrte_f32(v12);
    *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
    *&result = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0]).u64[0];
  }

  else
  {
    *&result = 2143289344;
  }

  return result;
}

- (signed)closestVertexIndexToLabeledFacePosition:(id)position
{
  v10 = 0;
  v9 = 0;
  v8 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (!ARFaceLandmarkDataFromLabeledFacePosition(position, &v10 + 1, &v10, &v9, &v8, &v7, &v6))
  {
    return -1;
  }

  if (v8 > v7 && v8 > v6)
  {
    return HIWORD(v10);
  }

  if (v7 <= v6)
  {
    return v9;
  }

  return v10;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end