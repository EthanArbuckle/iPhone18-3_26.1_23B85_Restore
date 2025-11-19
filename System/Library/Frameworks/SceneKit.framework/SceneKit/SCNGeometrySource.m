@interface SCNGeometrySource
+ (SCNGeometrySource)geometrySourceWithBuffer:(id)buffer vertexFormat:(MTLVertexFormat)vertexFormat semantic:(SCNGeometrySourceSemantic)semantic vertexCount:(NSInteger)vertexCount dataOffset:(NSInteger)offset dataStride:(NSInteger)stride;
+ (SCNGeometrySource)geometrySourceWithColorComponents:(const float *)a3 count:(int64_t)a4 hasAlpha:(BOOL)a5 colorSpace:(CGColorSpace *)a6;
+ (SCNGeometrySource)geometrySourceWithColorData:(id)a3 colorSpace:(CGColorSpace *)a4 vectorCount:(int64_t)a5 floatComponents:(BOOL)a6 componentsPerVector:(int64_t)a7 bytesPerComponent:(int64_t)a8 dataOffset:(int64_t)a9 dataStride:(int64_t)a10;
+ (SCNGeometrySource)geometrySourceWithData:(NSData *)data semantic:(SCNGeometrySourceSemantic)semantic vectorCount:(NSInteger)vectorCount floatComponents:(BOOL)floatComponents componentsPerVector:(NSInteger)componentsPerVector bytesPerComponent:(NSInteger)bytesPerComponent dataOffset:(NSInteger)offset dataStride:(NSInteger)stride;
+ (SCNGeometrySource)geometrySourceWithMDLVertexAttribute:(id)a3 mesh:(id)a4;
+ (SCNGeometrySource)geometrySourceWithMeshSourceRef:(__C3DMeshSource *)a3;
+ (SCNGeometrySource)geometrySourceWithNormals:(const SCNVector3 *)normals count:(NSInteger)count;
+ (SCNGeometrySource)geometrySourceWithTextureCoordinates:(const CGPoint *)texcoord count:(NSInteger)count;
+ (SCNGeometrySource)geometrySourceWithVertices:(const SCNVector3 *)vertices count:(NSInteger)count;
+ (id)_geometrySourceWithData:(id)a3 semantic:(id)a4 vectorCount:(int64_t)a5 componentType:(signed __int16)a6 componentCount:(unint64_t)a7 dataOffset:(int64_t)a8 dataStride:(int64_t)a9;
+ (id)_geometrySourceWithSource:(id)a3 vertexFormat:(unint64_t)a4;
+ (id)dataByConvertingDoublesToFloats:(const double *)a3 count:(int64_t)a4;
+ (id)dataWithPointArray:(const CGPoint *)a3 count:(int64_t)a4 bytesPerComponent:(int64_t *)a5;
+ (id)dataWithVector3Array:(const SCNVector3 *)a3 count:(int64_t)a4 bytesPerComponent:(int64_t *)a5;
- (NSData)data;
- (SCNGeometrySource)initWithBuffer:(id)a3 vertexFormat:(unint64_t)a4 semantic:(id)a5 vertexCount:(int64_t)a6 dataOffset:(int64_t)a7 dataStride:(int64_t)a8;
- (SCNGeometrySource)initWithCoder:(id)a3;
- (SCNGeometrySource)initWithData:(id)a3 semantic:(id)a4 colorSpace:(CGColorSpace *)a5 vectorCount:(int64_t)a6 floatComponents:(BOOL)a7 componentsPerVector:(int64_t)a8 bytesPerComponent:(int64_t)a9 dataOffset:(int64_t)a10 dataStride:(int64_t)a11;
- (SCNGeometrySource)initWithData:(id)a3 semantic:(id)a4 vectorCount:(int64_t)a5 componentType:(signed __int16)a6 componentCount:(unint64_t)a7 dataOffset:(int64_t)a8 dataStride:(int64_t)a9;
- (SCNGeometrySource)initWithMeshSource:(__C3DMeshSource *)a3;
- (__C3DMeshSource)meshSource;
- (__C3DScene)sceneRef;
- (id)_uninterleaveData:(id)a3 count:(unint64_t)a4 srcOffset:(unint64_t)a5 srcStride:(unint64_t)a6 dstStride:(unint64_t)a7;
- (id)dataByConvertingColorData:(id)a3 colorSpace:(CGColorSpace *)a4 newColorSpace:(CGColorSpace *)a5 vectorCount:(int64_t)a6 componentsPerVector:(int64_t)a7 bytesPerComponent:(int64_t)a8 dataOffset:(int64_t)a9 dataStride:(int64_t)a10 newDataOffset:(int64_t *)a11 newDataStride:(int64_t *)a12;
- (id)description;
- (id)mkSemantic;
- (id)scene;
- (void)_clearC3DCache;
- (void)_printData;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setMkSemantic:(id)a3;
@end

@implementation SCNGeometrySource

+ (SCNGeometrySource)geometrySourceWithMDLVertexAttribute:(id)a3 mesh:(id)a4
{
  v6 = [a4 vertexDescriptor];
  v7 = ([a3 format] >> 16) & 0xF;
  if (v7 >= 5)
  {
    v8 = 0;
    v9 = 2;
    if (v7 >= 9)
    {
      v10 = v7 - 11;
      if (v10)
      {
        v8 = v10 < 0xFFFFFFFE;
        v9 = 4;
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  v11 = [a3 name];
  v12 = [v11 containsString:*MEMORY[0x277CD7AB0]];
  v13 = MEMORY[0x277CD7A80];
  if (v12)
  {
    v14 = &SCNGeometrySourceSemanticVertex;
  }

  else
  {
    if (([v11 containsString:*MEMORY[0x277CD7AA0]] & 1) == 0)
    {
      if ([v11 containsString:*MEMORY[0x277CD7AC0]])
      {
        v14 = &SCNGeometrySourceSemanticTexcoord;
        goto LABEL_14;
      }

      if ([v11 containsString:*MEMORY[0x277CD7AB8]])
      {
        v14 = &SCNGeometrySourceSemanticTangent;
        goto LABEL_14;
      }

      v15 = @"aoCoord";
      if ([v11 isEqualToString:@"aoCoord"] & 1) != 0 || (v15 = @"lightmapCoord", (objc_msgSend(v11, "isEqualToString:", @"lightmapCoord")))
      {
        v14 = &SCNGeometrySourceSemanticTexcoord;
        goto LABEL_15;
      }

      if ([v11 containsString:*v13] & 1) != 0 || (objc_msgSend(v11, "containsString:", *MEMORY[0x277CD7AA8]))
      {
        v14 = &SCNGeometrySourceSemanticColor;
        goto LABEL_14;
      }

      v49 = scn_default_log();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [SCNGeometrySource(SCNModelIO) geometrySourceWithMDLVertexAttribute:v11 mesh:v49];
      }
    }

    v14 = &SCNGeometrySourceSemanticNormal;
  }

LABEL_14:
  v15 = @"unknown";
LABEL_15:
  v16 = *v14;
  v17 = [objc_msgSend(objc_msgSend(v6 "layouts")];
  v18 = [a3 format];
  v19 = [a3 offset];
  if ([objc_msgSend(a3 "name")] && objc_msgSend(a3, "format") == 65540)
  {
    v20 = [objc_msgSend(objc_msgSend(objc_msgSend(a4 "vertexBuffers")];
    v21 = [objc_msgSend(objc_msgSend(a4 "vertexBuffers")];
    if ([a3 format] == 786436)
    {
      memset(&__p, 0, sizeof(__p));
      if (v21 >= 0x10)
      {
        v22 = 4 * (v21 >> 4);
        std::vector<unsigned char>::__append(&__p, v22);
        v23 = 0;
        v24 = (v20 + 8);
        do
        {
          LOBYTE(__p.__begin_[v23 / 4]) = (*(v24 - 2) * 255.0);
          BYTE1(__p.__begin_[v23 / 4]) = (*(v24 - 1) * 255.0);
          BYTE2(__p.__begin_[v23 / 4]) = (*v24 * 255.0);
          HIBYTE(__p.__begin_[v23 / 4]) = (v24[1] * 255.0);
          v23 += 4;
          v24 += 4;
        }

        while (v22 != v23);
      }
    }

    else
    {
      if ([a3 format] != 786435)
      {
        if ([a3 format] == 65539)
        {
          v34 = v21 / 3;
          memset(&__p, 0, sizeof(__p));
          std::vector<float>::resize(&__p, 4 * (v21 / 3));
          begin = __p.__begin_;
          if (v21 >= 3)
          {
            v37 = __p.__begin_ + 2;
            v38 = (v20 + 2);
            do
            {
              LOBYTE(v35) = *(v38 - 2);
              *&v39 = LODWORD(v35) / 255.0;
              *(v37 - 2) = v39;
              LOBYTE(v39) = *(v38 - 1);
              *&v40 = v39 / 255.0;
              *(v37 - 1) = v40;
              LOBYTE(v40) = *v38;
              v35 = v40 / 255.0;
              *v37 = v35;
              v37[1] = 1065353216;
              v37 += 4;
              v38 += 3;
              --v34;
            }

            while (v34);
          }
        }

        else
        {
          if ([a3 format] != 65540)
          {
            return 0;
          }

          memset(&__p, 0, sizeof(__p));
          std::vector<float>::resize(&__p, v21 & 0xFFFFFFFFFFFFFFFCLL);
          begin = __p.__begin_;
          if (v21 >= 4)
          {
            v42 = v21 >> 2;
            v43 = (v20 + 3);
            v44 = (__p.__begin_ + 2);
            do
            {
              LOBYTE(v41) = *(v43 - 3);
              *&v45 = LODWORD(v41) / 255.0;
              *(v44 - 2) = *&v45;
              LOBYTE(v45) = *(v43 - 2);
              *&v46 = v45 / 255.0;
              *(v44 - 1) = *&v46;
              LOBYTE(v46) = *(v43 - 1);
              *&v47 = v46 / 255.0;
              *v44 = *&v47;
              LOBYTE(v47) = *v43;
              v41 = v47 / 255.0;
              v44[1] = v41;
              v43 += 4;
              v44 += 4;
              --v42;
            }

            while (v42);
          }
        }

        v28 = [MEMORY[0x277CBEA90] dataWithBytes:begin length:__p.__end_ - begin];
        if (__p.__begin_)
        {
          __p.__end_ = __p.__begin_;
          operator delete(__p.__begin_);
        }

        v19 = 0;
        v8 = 1;
        v17 = 16;
        v25 = 4;
        v9 = 4;
        goto LABEL_23;
      }

      memset(&__p, 0, sizeof(__p));
      if (v21 >= 0xC)
      {
        v31 = 4 * (v21 / 0xC);
        std::vector<unsigned char>::__append(&__p, v31);
        v32 = 0;
        v33 = (v20 + 4);
        do
        {
          LOBYTE(__p.__begin_[v32 / 4]) = (*(v33 - 1) * 255.0);
          BYTE1(__p.__begin_[v32 / 4]) = (*v33 * 255.0);
          BYTE2(__p.__begin_[v32 / 4]) = (v33[1] * 255.0);
          HIBYTE(__p.__begin_[v32 / 4]) = -1;
          v32 += 4;
          v33 += 3;
        }

        while (v31 != v32);
      }
    }

    v28 = [MEMORY[0x277CBEA90] dataWithBytes:__p.__begin_ length:__p.__end_ - __p.__begin_];
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    v19 = 0;
    v8 = 0;
    v9 = 1;
    v25 = 4;
    v17 = 4;
  }

  else
  {
    v25 = v18 & 7;
    v26 = [objc_msgSend(objc_msgSend(objc_msgSend(a4 "vertexBuffers")];
    v27 = [objc_msgSend(objc_msgSend(a4 "vertexBuffers")];
    v28 = [MEMORY[0x277CBEA90] dataWithBytes:v26 length:v27];
  }

LABEL_23:
  if (!v28)
  {
    return 0;
  }

  v29 = [v28 length] / v17;
  if ((C3DWasLinkedBeforeMajorOSYear2018() & 1) == 0 && [(NSString *)v16 isEqualToString:@"kGeometrySourceSemanticTexcoord"])
  {
    flip_UVs([a3 format], objc_msgSend(v28, "bytes"), v19, v17, v29);
  }

  v30 = [SCNGeometrySource geometrySourceWithData:v28 semantic:v16 vectorCount:v29 floatComponents:v8 componentsPerVector:v25 bytesPerComponent:v9 dataOffset:v19 dataStride:v17];
  [(SCNGeometrySource *)v30 setMkSemantic:v15];
  return v30;
}

+ (SCNGeometrySource)geometrySourceWithMeshSourceRef:(__C3DMeshSource *)a3
{
  result = C3DEntityGetObjCWrapper(a3);
  if (!result)
  {
    v6 = [[a1 alloc] initWithMeshSource:a3];

    return v6;
  }

  return result;
}

- (SCNGeometrySource)initWithMeshSource:(__C3DMeshSource *)a3
{
  v12.receiver = self;
  v12.super_class = SCNGeometrySource;
  v4 = [(SCNGeometrySource *)&v12 init];
  if (a3)
  {
    v4->_meshSource = CFRetain(a3);
    v4->_data = C3DMeshSourceGetData(a3);
    v10 = 0u;
    v11 = 0u;
    C3DMeshSourceGetContent(a3, &v10);
    Semantic = C3DMeshSourceGetSemantic(a3);
    v6 = SCNGeometrySemanticForMeshSourceSemantic(Semantic);
    v7 = v11;
    v4->_semantic = &v6->isa;
    v4->_vectorCount = v7;
    v4->_componentType = BYTE7(v11);
    v4->_componentCount = BYTE8(v11);
    v4->_mkSemantic = C3DMeshSourceGetModelKitSemantic(a3);
    C3DEntitySetObjCWrapper(a3, v4);
    Accessor = C3DMeshSourceGetAccessor(a3);
    v4->_dataOffset = C3DSourceAccessorGetOffset(Accessor);
    v4->_dataStride = C3DSceneSourceGetLibrary(Accessor);
  }

  return v4;
}

- (void)dealloc
{
  meshSource = self->_meshSource;
  if (meshSource)
  {
    C3DEntitySetObjCWrapper(meshSource, 0);
    v4 = self->_meshSource;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__SCNGeometrySource_dealloc__block_invoke;
    v7[3] = &__block_descriptor_40_e8_v16__0d8l;
    v7[4] = v4;
    [SCNTransaction postCommandWithContext:0 object:0 applyBlock:v7];
  }

  colorSpace = self->_colorSpace;
  if (colorSpace)
  {
    CFRelease(colorSpace);
    self->_colorSpace = 0;
  }

  v6.receiver = self;
  v6.super_class = SCNGeometrySource;
  [(SCNGeometrySource *)&v6 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return [v3 stringWithFormat:@"<%@: %p | semantic=%@ vectors=%d %@x%d>", v5, self, -[SCNGeometrySource semantic](self, "semantic"), -[SCNGeometrySource vectorCount](self, "vectorCount"), C3DBaseTypeStringDescription(self->_componentType), -[SCNGeometrySource componentsPerVector](self, "componentsPerVector")];
}

+ (id)dataByConvertingDoublesToFloats:(const double *)a3 count:(int64_t)a4
{
  v4 = a4;
  v6 = 4 * a4;
  v7 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  v8 = v7;
  if (v4 >= 1)
  {
    v9 = v7;
    do
    {
      v10 = *a3++;
      v11 = v10;
      *v9++ = v11;
      --v4;
    }

    while (v4);
  }

  v12 = MEMORY[0x277CBEA90];

  return [v12 dataWithBytesNoCopy:v8 length:v6 freeWhenDone:1];
}

+ (id)dataWithVector3Array:(const SCNVector3 *)a3 count:(int64_t)a4 bytesPerComponent:(int64_t *)a5
{
  if (a5)
  {
    *a5 = 4;
  }

  return [MEMORY[0x277CBEA90] dataWithBytes:a3 length:12 * a4];
}

+ (id)dataWithPointArray:(const CGPoint *)a3 count:(int64_t)a4 bytesPerComponent:(int64_t *)a5
{
  v5 = a4;
  if (a5)
  {
    *a5 = 4;
  }

  v7 = 8 * a4;
  v8 = malloc_type_malloc(8 * a4, 0x100004052888210uLL);
  v9 = v8;
  if (v5 >= 1)
  {
    v10 = v8;
    do
    {
      v11 = *a3++;
      *v10++ = vcvt_f32_f64(v11);
      --v5;
    }

    while (v5);
  }

  v12 = MEMORY[0x277CBEA90];

  return [v12 dataWithBytesNoCopy:v9 length:v7 freeWhenDone:1];
}

- (SCNGeometrySource)initWithData:(id)a3 semantic:(id)a4 colorSpace:(CGColorSpace *)a5 vectorCount:(int64_t)a6 floatComponents:(BOOL)a7 componentsPerVector:(int64_t)a8 bytesPerComponent:(int64_t)a9 dataOffset:(int64_t)a10 dataStride:(int64_t)a11
{
  v12 = a7;
  v18 = a10;
  v19 = a11;
  if ((SCNGeometrySourceSemanticIsValid(a4) & 1) == 0)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometrySource initWithData:semantic:colorSpace:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:];
    }

    goto LABEL_11;
  }

  v25.receiver = self;
  v25.super_class = SCNGeometrySource;
  self = [(SCNGeometrySource *)&v25 init];
  if (self)
  {
    v20 = a9;
    if (a9 == 8)
    {
      if (v18 || v19 && 8 * a8 != v19)
      {
        v21 = scn_default_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [SCNGeometrySource initWithData:semantic:colorSpace:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:];
        }

LABEL_11:

        return 0;
      }

      a3 = [objc_opt_class() dataByConvertingDoublesToFloats:objc_msgSend(a3 count:{"bytes"), a8 * a6}];
      v19 = 4 * a8;
      a11 = 4 * a8;
      v20 = 4;
    }

    if (a5 && [a4 isEqualToString:@"kGeometrySourceSemanticColor"])
    {
      a3 = [(SCNGeometrySource *)self dataByConvertingColorData:a3 colorSpace:a5 newColorSpace:&self->_colorSpace vectorCount:a6 componentsPerVector:a8 bytesPerComponent:v20 dataOffset:v18 dataStride:v19 newDataOffset:&a10 newDataStride:&a11];
    }

    self->_data = a3;
    self->_semantic = [a4 copy];
    self->_vectorCount = a6;
    self->_componentType = C3DBaseTypeFromDescription(v20, 1, v12);
    self->_componentCount = a8;
    v23 = a11;
    if (!a11)
    {
      v23 = v20 * a8;
    }

    self->_dataOffset = a10;
    self->_dataStride = v23;
  }

  return self;
}

- (SCNGeometrySource)initWithData:(id)a3 semantic:(id)a4 vectorCount:(int64_t)a5 componentType:(signed __int16)a6 componentCount:(unint64_t)a7 dataOffset:(int64_t)a8 dataStride:(int64_t)a9
{
  v10 = a7;
  v11 = a6;
  if (SCNGeometrySourceSemanticIsValid(a4))
  {
    v20.receiver = self;
    v20.super_class = SCNGeometrySource;
    v16 = [(SCNGeometrySource *)&v20 init];
    if (v16)
    {
      v17 = a9;
      v16->_data = a3;
      v16->_semantic = [a4 copy];
      v16->_vectorCount = a5;
      v16->_componentType = v11;
      v16->_componentCount = v10;
      v16->_dataOffset = a8;
      if (!a9)
      {
        v17 = C3DSizeOfBaseType(v11) * v16->_componentCount;
      }

      v16->_dataStride = v17;
    }
  }

  else
  {
    v18 = scn_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometrySource initWithData:semantic:colorSpace:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:];
    }

    return 0;
  }

  return v16;
}

- (SCNGeometrySource)initWithBuffer:(id)a3 vertexFormat:(unint64_t)a4 semantic:(id)a5 vertexCount:(int64_t)a6 dataOffset:(int64_t)a7 dataStride:(int64_t)a8
{
  if (SCNGeometrySourceSemanticIsValid(a5))
  {
    v19.receiver = self;
    v19.super_class = SCNGeometrySource;
    v15 = [(SCNGeometrySource *)&v19 init];
    if (v15)
    {
      v15->_mtlBuffer = a3;
      v15->_semantic = [a5 copy];
      v15->_vectorCount = a6;
      v15->_mtlVertexFormat = a4;
      v16 = SCNMTLVertexFormatToC3DBaseType(a4);
      v15->_componentType = C3DBaseTypeGetComponentType(v16);
      v15->_componentCount = C3DBaseTypeGetComponentCount(v16);
      v15->_dataOffset = a7;
      if (!a8)
      {
        a8 = C3DSizeOfBaseType(v16);
      }

      v15->_dataStride = a8;
    }
  }

  else
  {
    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometrySource initWithData:semantic:colorSpace:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:];
    }

    return 0;
  }

  return v15;
}

+ (SCNGeometrySource)geometrySourceWithData:(NSData *)data semantic:(SCNGeometrySourceSemantic)semantic vectorCount:(NSInteger)vectorCount floatComponents:(BOOL)floatComponents componentsPerVector:(NSInteger)componentsPerVector bytesPerComponent:(NSInteger)bytesPerComponent dataOffset:(NSInteger)offset dataStride:(NSInteger)stride
{
  v10 = [[a1 alloc] initWithData:data semantic:semantic colorSpace:0 vectorCount:vectorCount floatComponents:floatComponents componentsPerVector:componentsPerVector bytesPerComponent:bytesPerComponent dataOffset:offset dataStride:stride];

  return v10;
}

+ (id)_geometrySourceWithData:(id)a3 semantic:(id)a4 vectorCount:(int64_t)a5 componentType:(signed __int16)a6 componentCount:(unint64_t)a7 dataOffset:(int64_t)a8 dataStride:(int64_t)a9
{
  v9 = [[a1 alloc] initWithData:a3 semantic:a4 vectorCount:a5 componentType:a6 componentCount:a7 dataOffset:a8 dataStride:a9];

  return v9;
}

+ (SCNGeometrySource)geometrySourceWithVertices:(const SCNVector3 *)vertices count:(NSInteger)count
{
  v8 = 0;
  v6 = [a1 dataWithVector3Array:vertices count:count bytesPerComponent:&v8];
  return [a1 geometrySourceWithData:v6 semantic:@"kGeometrySourceSemanticVertex" vectorCount:count floatComponents:1 componentsPerVector:3 bytesPerComponent:v8 dataOffset:0 dataStride:0];
}

+ (SCNGeometrySource)geometrySourceWithNormals:(const SCNVector3 *)normals count:(NSInteger)count
{
  v8 = 0;
  v6 = [a1 dataWithVector3Array:normals count:count bytesPerComponent:&v8];
  return [a1 geometrySourceWithData:v6 semantic:@"kGeometrySourceSemanticNormal" vectorCount:count floatComponents:1 componentsPerVector:3 bytesPerComponent:v8 dataOffset:0 dataStride:0];
}

+ (SCNGeometrySource)geometrySourceWithTextureCoordinates:(const CGPoint *)texcoord count:(NSInteger)count
{
  v8 = 0;
  v6 = [a1 dataWithPointArray:texcoord count:count bytesPerComponent:&v8];
  return [a1 geometrySourceWithData:v6 semantic:@"kGeometrySourceSemanticTexcoord" vectorCount:count floatComponents:1 componentsPerVector:2 bytesPerComponent:v8 dataOffset:0 dataStride:0];
}

- (id)dataByConvertingColorData:(id)a3 colorSpace:(CGColorSpace *)a4 newColorSpace:(CGColorSpace *)a5 vectorCount:(int64_t)a6 componentsPerVector:(int64_t)a7 bytesPerComponent:(int64_t)a8 dataOffset:(int64_t)a9 dataStride:(int64_t)a10 newDataOffset:(int64_t *)a11 newDataStride:(int64_t *)a12
{
  v17 = a12;
  v18 = a9;
  C3DGetColorTransformToGlobalColorSpace();
  ColorSpace = CGColorTransformGetColorSpace();
  v20 = *a5;
  if (*a5 != ColorSpace)
  {
    if (v20)
    {
      CFRelease(v20);
      *a5 = 0;
    }

    if (ColorSpace)
    {
      v21 = CFRetain(ColorSpace);
    }

    else
    {
      v21 = 0;
    }

    *a5 = v21;
  }

  if (CFEqual(a4, ColorSpace))
  {
    goto LABEL_19;
  }

  v32 = 3 * a8;
  v22 = a8 * a7;
  if (a10)
  {
    v23 = a10;
  }

  else
  {
    v23 = a8 * a7;
  }

  v33 = a3;
  v24 = [a3 bytes] + a9;
  v34 = v22 * a6;
  v25 = malloc_type_malloc(v22 * a6, 0x100004077774924uLL);
  if (!CGColorTransformConvertData())
  {
    free(v25);
    v17 = a12;
    v18 = a9;
    a3 = v33;
LABEL_19:
    *a11 = v18;
    *v17 = a10;
    return a3;
  }

  *a11 = 0;
  *a12 = v22;
  if (a7 == 4)
  {
    v26 = v25;
    if (a6 >= 1)
    {
      v27 = &v25[v32];
      v28 = (v24 + v32);
      do
      {
        memcpy(v27, v28, a8);
        v27 += v22;
        v28 += v23;
        --a6;
      }

      while (a6);
    }

    v29 = MEMORY[0x277CBEA90];
    v30 = v26;
  }

  else
  {
    v29 = MEMORY[0x277CBEA90];
    v30 = v25;
  }

  return [v29 dataWithBytesNoCopy:v30 length:v34 freeWhenDone:1];
}

+ (SCNGeometrySource)geometrySourceWithColorComponents:(const float *)a3 count:(int64_t)a4 hasAlpha:(BOOL)a5 colorSpace:(CGColorSpace *)a6
{
  v7 = a5;
  C3DGetColorTransformToGlobalColorSpace();
  ColorSpace = CGColorTransformGetColorSpace();
  if (!a6)
  {
    a6 = C3DColorSpaceSRGB();
  }

  if (v7)
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  if (CFEqual(a6, ColorSpace))
  {
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:4 * v12 * a4];
  }

  else
  {
    v24 = a1;
    v14 = malloc_type_malloc(4 * v12 * a4, 0x100004052888210uLL);
    LODWORD(v23) = 4 * v12;
    LODWORD(v22) = 4 * v12;
    if (CGColorTransformConvertData())
    {
      if (a4 >= 1 && v7)
      {
        v15 = v14 + 3;
        v16 = a3 + 3;
        v17 = a4;
        do
        {
          v18 = *v16;
          v16 += 4;
          *v15 = v18;
          v15 += 4;
          --v17;
        }

        while (v17);
      }

      v19 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v14 length:4 * v12 * a4 freeWhenDone:{1, v22, v14, 96, v23}];
    }

    else
    {
      free(v14);
      v19 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:{4 * v12 * a4, v22, v14, 96, v23}];
    }

    v13 = v19;
    a1 = v24;
  }

  v20 = [[a1 alloc] initWithData:v13 semantic:@"kGeometrySourceSemanticColor" colorSpace:ColorSpace vectorCount:a4 floatComponents:1 componentsPerVector:v12 bytesPerComponent:4 dataOffset:0 dataStride:4 * v12];

  return v20;
}

+ (SCNGeometrySource)geometrySourceWithColorData:(id)a3 colorSpace:(CGColorSpace *)a4 vectorCount:(int64_t)a5 floatComponents:(BOOL)a6 componentsPerVector:(int64_t)a7 bytesPerComponent:(int64_t)a8 dataOffset:(int64_t)a9 dataStride:(int64_t)a10
{
  v10 = [[a1 alloc] initWithData:a3 semantic:@"kGeometrySourceSemanticColor" colorSpace:a4 vectorCount:a5 floatComponents:a6 componentsPerVector:a7 bytesPerComponent:a8 dataOffset:a9 dataStride:a10];

  return v10;
}

+ (SCNGeometrySource)geometrySourceWithBuffer:(id)buffer vertexFormat:(MTLVertexFormat)vertexFormat semantic:(SCNGeometrySourceSemantic)semantic vertexCount:(NSInteger)vertexCount dataOffset:(NSInteger)offset dataStride:(NSInteger)stride
{
  if (vertexFormat)
  {
    v8 = [[a1 alloc] initWithBuffer:buffer vertexFormat:vertexFormat semantic:semantic vertexCount:vertexCount dataOffset:offset dataStride:stride];

    return v8;
  }

  else
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[SCNGeometrySource geometrySourceWithBuffer:vertexFormat:semantic:vertexCount:dataOffset:dataStride:];
    }

    return 0;
  }
}

+ (id)_geometrySourceWithSource:(id)a3 vertexFormat:(unint64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  if (!a4)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[SCNGeometrySource _geometrySourceWithSource:vertexFormat:];
    }

    return 0;
  }

  v6 = SCNMTLVertexFormatToC3DBaseType(a4);
  CopyWithBaseType = C3DMeshSourceCreateCopyWithBaseType([a3 meshSource], v6, 0);
  if (!CopyWithBaseType)
  {
    NSLog(&cfstr_Geometrysource_1.isa);
    return 0;
  }

  v8 = [[a1 alloc] initWithMeshSource:CopyWithBaseType];

  return v8;
}

- (id)mkSemantic
{
  mkSemantic = self->_mkSemantic;
  if (mkSemantic > 9)
  {
    v3 = MEMORY[0x277CD7A80];
  }

  else
  {
    v3 = qword_278300740[mkSemantic];
  }

  return *v3;
}

- (void)setMkSemantic:(id)a3
{
  if ([a3 isEqualToString:*MEMORY[0x277CD7A70]])
  {
    v5 = 0;
  }

  else if ([a3 isEqualToString:*MEMORY[0x277CD7AB0]])
  {
    v5 = 1;
  }

  else if ([a3 isEqualToString:*MEMORY[0x277CD7AC0]])
  {
    v5 = 2;
  }

  else if ([a3 isEqualToString:*MEMORY[0x277CD7AA0]])
  {
    v5 = 3;
  }

  else if ([a3 isEqualToString:@"aoCoord"])
  {
    v5 = 4;
  }

  else if ([a3 isEqualToString:*MEMORY[0x277CD7A80]])
  {
    v5 = 5;
  }

  else if ([a3 isEqualToString:*MEMORY[0x277CD7AA8]])
  {
    v5 = 6;
  }

  else if ([a3 isEqualToString:*MEMORY[0x277CD7AB8]])
  {
    v5 = 7;
  }

  else if ([a3 isEqualToString:*MEMORY[0x277CD7A78]])
  {
    v5 = 8;
  }

  else if ([a3 isEqualToString:@"lightmapCoord"])
  {
    v5 = 9;
  }

  else
  {
    v5 = 0;
  }

  self->_mkSemantic = v5;
  meshSource = self->_meshSource;
  if (meshSource)
  {

    C3DMeshSourceSetModelKitSemantic(meshSource, v5);
  }
}

- (NSData)data
{
  result = self->_data;
  if (!result)
  {
    result = self->_mtlBuffer;
    if (result)
    {
      v4 = MEMORY[0x277CBEA90];
      v5 = [(NSData *)result contents];
      v6 = [(MTLBuffer *)self->_mtlBuffer length];

      return [v4 dataWithBytesNoCopy:v5 length:v6 freeWhenDone:0];
    }
  }

  return result;
}

- (void)_printData
{
  v2 = [(SCNGeometrySource *)self meshSource];
  Count = C3DMeshSourceGetCount(v2);

  C3DMeshSourcePrintData(v2, Count);
}

- (void)_clearC3DCache
{
  if (self->_data)
  {
    meshSource = self->_meshSource;
    if (meshSource)
    {
      if (!C3DMeshSourceOwnsItsData(meshSource))
      {
        v4 = self->_meshSource;
        if (v4)
        {
          C3DEntitySetObjCWrapper(v4, 0);
          v5 = self->_meshSource;
          if (v5)
          {
            CFRelease(v5);
            self->_meshSource = 0;
          }
        }
      }
    }
  }
}

- (__C3DScene)sceneRef
{
  v2 = [(SCNGeometrySource *)self __CFObject];

  return C3DGetScene(v2);
}

- (id)scene
{
  result = [(SCNGeometrySource *)self sceneRef];
  if (result)
  {

    return C3DEntityGetObjCWrapper(result);
  }

  return result;
}

- (__C3DMeshSource)meshSource
{
  if (!self->_meshSource)
  {
    if (self->_componentType)
    {
      mtlBuffer = self->_mtlBuffer;
      v5 = SCNGeometrySourceSemanticToMeshSourceSemantic(self->_semantic);
      if (mtlBuffer)
      {
        v6 = C3DMeshSourceCreateWithMTLBuffer(v5, self->_mtlBuffer, self->_mtlVertexFormat, self->_vectorCount, self->_dataStride, self->_dataOffset);
      }

      else
      {
        v6 = C3DMeshSourceCreateWithData(v5, self->_data, self->_componentType, self->_componentCount, self->_vectorCount, self->_dataStride, self->_dataOffset);
      }

      self->_meshSource = v6;
      C3DMeshSourceSetModelKitSemantic(v6, self->_mkSemantic);
      meshSource = self->_meshSource;
      if (meshSource)
      {
        C3DEntitySetObjCWrapper(meshSource, self);
      }
    }

    else
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [SCNGeometrySource meshSource];
      }
    }
  }

  return self->_meshSource;
}

- (id)_uninterleaveData:(id)a3 count:(unint64_t)a4 srcOffset:(unint64_t)a5 srcStride:(unint64_t)a6 dstStride:(unint64_t)a7
{
  v10 = a4;
  v12 = a7 * a4;
  v13 = [MEMORY[0x277CBEB28] dataWithCapacity:a7 * a4];
  [v13 setLength:v12];
  v14 = [v13 mutableBytes];
  v15 = [a3 bytes];
  if (v10)
  {
    v16 = (v15 + a5);
    do
    {
      memcpy(v14, v16, a7);
      v16 += a6;
      v14 += a7;
      --v10;
    }

    while (v10);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  LOWORD(v5) = self->_componentType;
  dataOffset = self->_dataOffset;
  dataStride = self->_dataStride;
  v8 = [(SCNGeometrySource *)self data];
  if (v8)
  {
    v9 = v8;
    if (self->_encodeDataAsHalf && C3DSceneSourceGetSceneCount())
    {
      componentType = self->_componentType;
      if (componentType != C3DBaseTypeGetComponentType(componentType))
      {
        v11 = scn_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          [(SCNGeometrySource *)v11 encodeWithCoder:v12, v13, v14, v15, v16, v17, v18];
        }
      }

      if (self->_componentType == 15)
      {
        v19 = v9;
        C3DSizeOfBaseType(15);
      }

      else
      {
        if (self->_componentCount - 2 >= 3)
        {
          v25 = scn_default_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            [(SCNGeometrySource *)v25 encodeWithCoder:v26, v27, v28, v29, v30, v31, v32];
          }
        }

        CopyWithBaseType = C3DMeshSourceCreateCopyWithBaseType(self->_meshSource, *&asc_21C357C8A[2 * self->_componentCount - 4], 0);
        if (!CopyWithBaseType)
        {
          v34 = scn_default_log();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            [(SCNGeometrySource *)v34 encodeWithCoder:v35, v36, v37, v38, v39, v40, v41];
          }
        }

        Accessor = C3DMeshSourceGetAccessor(CopyWithBaseType);
        ComponentsValueType = C3DSourceAccessorGetComponentsValueType(Accessor);
        v5 = C3DBaseTypeGetComponentType(ComponentsValueType);
        dataStride = C3DSceneSourceGetLibrary(Accessor);
        dataOffset = C3DSourceAccessorGetOffset(Accessor);
        if (v5 != 15)
        {
          v44 = scn_default_log();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
          {
            [(SCNGeometrySource *)v44 encodeWithCoder:v45, v46, v47, v48, v49, v50, v51];
          }
        }

        C3DSizeOfBaseType(v5);
        v19 = C3DMeshSourceGetData(CopyWithBaseType);
        CFRelease(CopyWithBaseType);
      }

      v68 = vImageEncodeVectorOptionsCreate();
      vImageEncodeVectorOptionsSetQuantization();
      v67 = 0;
      [(NSData *)v19 bytes];
      [(NSData *)v19 length];
      v52 = vImageEncodeVectorHalf();

      if (!v52)
      {
        v53 = scn_default_log();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
        {
          [(SCNGeometrySource *)v53 encodeWithCoder:v54, v55, v56, v57, v58, v59, v60];
        }
      }

      vImageEncodeVectorOptionsFree();
      v24 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v67 length:v52];
      v22 = @"cdata";
      v23 = a3;
    }

    else
    {
      v20 = [(SCNGeometrySource *)self bytesPerComponent];
      v21 = [(SCNGeometrySource *)self componentsPerVector]* v20;
      if (v21 < self->_dataStride)
      {
        v9 = [SCNGeometrySource _uninterleaveData:"_uninterleaveData:count:srcOffset:srcStride:dstStride:" count:v9 srcOffset:self->_vectorCount srcStride:self->_dataOffset dstStride:?];
        dataOffset = 0;
        dataStride = v21;
      }

      v22 = @"data";
      v23 = a3;
      v24 = v9;
    }

    [v23 encodeObject:v24 forKey:v22];
  }

  semantic = self->_semantic;
  if (semantic)
  {
    [a3 encodeObject:semantic forKey:@"semantic"];
  }

  [a3 encodeInteger:self->_vectorCount forKey:@"vectorCount"];
  v67 = 0;
  v68 = 0;
  v66 = 0;
  if (C3DBaseTypeDescription(v5, &v68, &v67, &v66))
  {
    [a3 encodeBool:v66 forKey:@"floatComponents"];
    v62 = v68;
    v63 = @"bytesPerComponent";
  }

  else
  {
    v62 = v5;
    v63 = @"componentType";
  }

  [a3 encodeInteger:v62 forKey:v63];
  [a3 encodeInteger:self->_componentCount forKey:@"componentsPerVector"];
  [a3 encodeInteger:dataOffset forKey:@"dataOffset"];
  [a3 encodeInteger:dataStride forKey:@"dataStride"];
  [a3 encodeInt:self->_mkSemantic forKey:@"mkSemantic"];
  colorSpace = self->_colorSpace;
  if (colorSpace)
  {
    v65 = CGColorSpaceCopyPropertyList(colorSpace);
    [a3 encodeObject:v65 forKey:@"colorSpace"];
    CFRelease(v65);
  }
}

- (SCNGeometrySource)initWithCoder:(id)a3
{
  v49.receiver = self;
  v49.super_class = SCNGeometrySource;
  v4 = [(SCNGeometrySource *)&v49 init];
  if (!v4)
  {
    return v4;
  }

  v5 = +[SCNTransaction immediateMode];
  [SCNTransaction setImmediateMode:1];
  v6 = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"semantic"];
  if ((SCNGeometrySourceSemanticIsValid(v6) & 1) == 0)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometrySource initWithData:semantic:colorSpace:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:];
    }

    goto LABEL_44;
  }

  v4->_semantic = v6;
  v4->_vectorCount = [a3 decodeIntegerForKey:@"vectorCount"];
  v4->_dataOffset = [a3 decodeIntegerForKey:@"dataOffset"];
  v4->_dataStride = [a3 decodeIntegerForKey:@"dataStride"];
  v4->_componentCount = [a3 decodeIntegerForKey:@"componentsPerVector"];
  v7 = [a3 decodeIntegerForKey:@"componentType"];
  v4->_componentType = v7;
  if (v7)
  {
    if (v7 < 0 || (v7 & 0x7FFEu) >= 0x2EuLL)
    {
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SCNGeometrySource initWithCoder:];
      }

      goto LABEL_45;
    }
  }

  else
  {
    v4->_componentType = C3DBaseTypeFromDescription([a3 decodeIntegerForKey:@"bytesPerComponent"], 1, objc_msgSend(a3, "decodeBoolForKey:", @"floatComponents"));
  }

  v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"cdata"];
  v4->_encodeDataAsHalf = v10 != 0;
  if (v10)
  {
    v11 = v10;
    if (!C3DSceneSourceGetSceneCount())
    {
      v27 = scn_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [SCNGeometrySource initWithCoder:];
      }

      goto LABEL_30;
    }

    componentType = v4->_componentType;
    v13 = C3DBaseTypeGetComponentType(componentType);
    v14 = componentType != v13;
    if (componentType != v13)
    {
      v15 = scn_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SCNGeometrySource initWithCoder:];
      }
    }

    if (v4->_componentType != 15)
    {
      v16 = scn_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SCNGeometrySource initWithCoder:];
      }

      v14 = 1;
    }

    if (v4->_componentCount - 2 >= 3)
    {
      v38 = scn_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [SCNGeometrySource initWithCoder:];
      }

      goto LABEL_44;
    }

    if (v14)
    {
LABEL_44:
      [SCNTransaction setImmediateMode:v5];
LABEL_45:

      return 0;
    }

    C3DSizeOfBaseType(v4->_componentType);
    v46 = v4->_dataStride * v4->_vectorCount;
    v17 = malloc_type_malloc(v46, 0xF5E43E0EuLL);
    [v11 bytes];
    [v11 length];
    if (vImageDecodeVectorHalf() != v46)
    {
      v18 = scn_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [(SCNGeometrySource *)v18 initWithCoder:v19, v20, v21, v22, v23, v24, v25];
      }
    }

    v26 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v17 length:v46 freeWhenDone:1];
  }

  else
  {
    v26 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  }

  v4->_data = v26;
LABEL_30:
  v28 = [(SCNGeometrySource *)v4 bytesPerComponent];
  v29 = [(SCNGeometrySource *)v4 componentsPerVector];
  if ([(NSData *)v4->_data length]< v4->_dataOffset + v29 * v28 + (v4->_vectorCount - 1) * v4->_dataStride)
  {
    v30 = scn_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometrySource initWithCoder:];
    }

    goto LABEL_44;
  }

  v4->_mkSemantic = [a3 decodeIntForKey:@"mkSemantic"];
  v31 = [a3 decodePropertyListForKey:@"colorSpace"];
  if (v31)
  {
    v32 = CGColorSpaceCreateWithPropertyList(v31);
    if (v32)
    {
      v33 = v32;
      v4->_data = [(SCNGeometrySource *)v4 dataByConvertingColorData:v4->_data colorSpace:v32 newColorSpace:&v4->_colorSpace vectorCount:v4->_vectorCount componentsPerVector:v4->_componentCount bytesPerComponent:C3DBaseTypeGetBytesPerComponent(v4->_componentType) dataOffset:v4->_dataOffset dataStride:v4->_dataStride newDataOffset:&v4->_dataOffset newDataStride:&v4->_dataStride];
      CFRelease(v33);
    }
  }

  if (!C3DMetalIsSupported() || C3DPreferencesGetBool(0))
  {
    v34 = v4->_componentType;
    if (v34 <= 0x18 && ((1 << v34) & 0x1808000) != 0)
    {
      v35 = [(SCNGeometrySource *)v4 meshSource];
      Semantic = C3DMeshSourceGetSemantic(v35);
      if (v4->_componentType - 23 >= 2)
      {
        componentCount = v4->_componentCount;
      }

      else
      {
        componentCount = 4;
        v4->_componentCount = 4;
      }

      if (componentCount == 4 && Semantic <= 1)
      {
        componentCount = 3;
        v4->_componentCount = 3;
      }

      CompoundType = C3DBaseTypeGetCompoundType(1, componentCount);
      CopyWithBaseType = C3DMeshSourceCreateCopyWithBaseType(v35, CompoundType, 0);
      if (CopyWithBaseType)
      {
        v42 = CopyWithBaseType;
        meshSource = v4->_meshSource;
        if (meshSource)
        {
          CFRelease(meshSource);
        }

        v4->_meshSource = v42;

        v4->_data = C3DMeshSourceGetData(v42);
        v47 = 0u;
        v48 = 0u;
        C3DMeshSourceGetContent(v42, &v47);
        v4->_componentType = 1;
        v4->_componentCount = BYTE8(v48);
        C3DEntitySetObjCWrapper(v42, v4);
        Accessor = C3DMeshSourceGetAccessor(v42);
        v4->_dataOffset = C3DSourceAccessorGetOffset(Accessor);
        v4->_dataStride = C3DSceneSourceGetLibrary(Accessor);
      }

      else
      {
        v45 = scn_default_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [SCNGeometrySource initWithCoder:];
        }
      }
    }
  }

  [SCNTransaction setImmediateMode:v5];
  return v4;
}

@end