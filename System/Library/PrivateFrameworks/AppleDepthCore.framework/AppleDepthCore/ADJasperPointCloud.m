@interface ADJasperPointCloud
+ (BOOL)prepareDataBuffer:(__CVBuffer *)a3 forLength:(int)a4 additionalDataSize:(unint64_t)a5;
+ (id)makeWithDataBuffer:(__CVBuffer *)a3;
+ (id)pointCloudByMergingPointClouds:(id)a3;
+ (id)pointCloudByMergingPointClouds:(id)a3 applyingTransforms:(id *)a4 projectingToCamera:(id)a5;
+ (id)pointCloudFromCSV:(id)a3;
+ (id)pointCloudFromFile:(id)a3;
+ (id)pointCloudFromJSPP:(id)a3;
+ (int64_t)getKeyForName:(id)a3;
+ (unint64_t)requiredStorageBytesForLength:(int)a3 additionalDataSize:(unint64_t)a4;
+ (void)setEmulatedDevice:(id)a3;
+ (void)setPerformanceOverrides:(id)a3;
- (ADJasperPointCloud)initWithDataBuffer:(__CVBuffer *)a3;
- (ADJasperPointCloud)initWithDictionaryRepresentation:(id)a3;
- (ADJasperPointCloud)initWithLength:(int)a3;
- (ADJasperPointCloud)initWithLength:(int)a3 storage:(__CVBuffer *)a4;
- (ADJasperPointCloud)initWithPointCloud:(id)a3;
- (ADJasperPointCloud)initWithPreparedStorage:(void *)a3 storageSize:(unint64_t)a4;
- (BOOL)pointCloudToCSV:(id)a3 atomically:(BOOL)a4;
- (BOOL)pointCloudToImageFile:(id)a3 uti:(id)a4 atomically:(BOOL)a5;
- (BOOL)pointCloudToJSPP:(id)a3 atomically:(BOOL)a4;
- (BOOL)reset;
- (BOOL)writeToFile:(id)a3 atomically:(BOOL)a4;
- (CGImage)cgImageRepresentation;
- (__CVBuffer)createVisualizationOnImage:(__CVBuffer *)a3;
- (id).cxx_construct;
- (id)additionalData;
- (id)debugQuickLookObject;
- (id)dictionaryRepresentation;
- (id)imageRepresentationForUTI:(id)a3;
- (id)initByMergingPointClouds:(id)a3;
- (id)mutableCopy;
- (id)pointCloudByApplyingFilter:(id)a3;
- (id)pointCloudByChangingPointOfViewByTransform:(void *)a3 to:;
- (id)pointCloudByChangingPointOfViewFrom:(id)a3 to:(id)a4;
- (int)length;
- (int)size;
- (int64_t)projectJasperPointsFilteredBy:(id)a3 croppedBy:(CGRect)a4 rotatedBy:(int64_t)a5 andScaledInto:(__CVBuffer *)a6;
- (int64_t)projectJasperPointsFilteredBy:(id)a3 croppedBy:(CGRect)a4 rotatedBy:(int64_t)a5 andScaledMergingWith:(__CVBuffer *)a6;
- (void)dealloc;
@end

@implementation ADJasperPointCloud

- (id).cxx_construct
{
  self->_pc.m_ownedStorage.__ptr_ = 0;
  self->_pc.m_header = 0;
  if (InitAttributes(void)::once[0] != -1)
  {
    dispatch_once(InitAttributes(void)::once, &__block_literal_global_1543);
  }

  return self;
}

- (id)debugQuickLookObject
{
  v2 = [(ADJasperPointCloud *)self cgImageRepresentation];

  return debugQuickLookObjectFromCGImage(v2);
}

- (BOOL)pointCloudToImageFile:(id)a3 uti:(id)a4 atomically:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(ADJasperPointCloud *)self imageRepresentationForUTI:a4];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 writeToFile:v8 atomically:v5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)imageRepresentationForUTI:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB28] data];
  image = [(ADJasperPointCloud *)self cgImageRepresentation];
  Mutable = CFDataCreateMutable(0, 0);
  v8 = CGImageDestinationCreateWithData(v5, v4, 1uLL, 0);
  CGImageDestinationAddImage(v8, image, 0);
  if (CGImageDestinationFinalize(v8))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  ScopedCFObject<CGImageDestination *>::~ScopedCFObject(&v8);
  ScopedCFObject<__CFData *>::~ScopedCFObject(&Mutable);
  ScopedCFObject<CGImage *>::~ScopedCFObject(&image);

  return v6;
}

- (CGImage)cgImageRepresentation
{
  v2 = [(ADJasperPointCloud *)self createVisualization];

  return PixelBufferUtils::pixelBufferToCGImage(v2, v3);
}

- (__CVBuffer)createVisualizationOnImage:(__CVBuffer *)a3
{
  if (a3)
  {
    PixelBufferUtils::createConvertedPixelBufferFormat(a3, 0x42475241, 0);
    goto LABEL_18;
  }

  v3 = 0;
  v4 = 0;
  m_header = self->_pc.m_header;
  v6 = vdupq_n_s64(0x3810000000000000uLL);
  v7 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  while (v4 < *(m_header + 1))
  {
    if (*(m_header + 4 * v4 + *(m_header + 3)) > 0.0)
    {
      v8 = *(m_header + 16 * v4 + *(m_header + 4));
      v7 = vbslq_s8(vcgtq_f64(v7, v8), v8, v7);
      v6 = vbslq_s8(vcgtq_f64(v8, v6), v8, v6);
      ++v3;
    }

    ++v4;
  }

  if (!v3)
  {
    return 0;
  }

  __asm { FMOV            V1.2D, #24.0 }

  v14 = vcvt_f32_f64(vaddq_f64(vsubq_f64(v6, v7), _Q1));
  v15 = v14.f32[1];
  if (v14.f32[1] >= v14.f32[0])
  {
    v15 = v14.f32[0];
  }

  if (v15 < 600.0)
  {
    v14 = vmul_n_f32(v14, 600.0 / v15);
  }

  v16 = v14.f32[0];
  v17 = v14.f32[1];
  pixelBufferOut = 0;
  v18 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v18, v16, v17, 0x42475241u, BufferAttributes, &pixelBufferOut))
  {
    v21 = 0;
  }

  else
  {
    v21 = pixelBufferOut;
  }

  if (v21)
  {
    __asm { FMOV            V0.2D, #12.0 }

    PixelBufferUtils::blacken(v21, v20);
LABEL_18:
    operator new[]();
  }

  return v21;
}

- (id)pointCloudByApplyingFilter:(id)a3
{
  v4 = a3;
  v5 = [[ADMutableJasperPointCloud alloc] initWithCapacity:[(ADJasperPointCloud *)self length]];
  if (v5)
  {
    v6 = [v4 echoMode];
    [v4 confidenceThreshold];
    v8 = v7;
    [v4 minDistance];
    v10 = v9;
    [v4 maxDistance];
    v12 = v11;
    [v4 shortRangeDepthThreshold];
    v14 = v13;
    [v4 shortRangeConfidenceThreshold];
    appledepth::JasperPointCloud::initByApplyingFilters(&v5->super._pc, &self->_pc, v6, [v4 bankIDMask], v8, v10, v12, v14, v15);
    v16 = v5;
  }

  return v5;
}

+ (void)setEmulatedDevice:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 UTF8String];
  }

  else
  {
    v5 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v5);
  appledepth::JasperPointCloud::setEmulatedDevice(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

+ (void)setPerformanceOverrides:(id)a3
{
  v3 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v3 UTF8String]);
  appledepth::JasperPointCloud::initPerformanceOverrides(__p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

+ (id)pointCloudByMergingPointClouds:(id)a3 applyingTransforms:(id *)a4 projectingToCamera:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [ADJasperPointCloud alloc];
  if (v9)
  {
    std::vector<appledepth::JasperPointCloud const*>::vector[abi:ne200100](&__p, [v7 count]);
    if (v24 != __p)
    {
      v10 = 0;
      do
      {
        v11 = [v7 objectAtIndexedSubscript:v10];
        *(__p + v10) = v11 + 8;

        ++v10;
      }

      while (v10 < (v24 - __p) >> 3);
    }

    v12 = [v7 count];
    if (appledepth::JasperPointCloud::initByMerging(&v9->_pc, v12, __p))
    {
      v13 = 0;
      v14 = 0;
      v15 = (a4 + 32);
      while (v14 < [v7 count])
      {
        v16 = [v7 objectAtIndexedSubscript:v14];
        v17 = [v16 length];

        v18 = v9->_pc.m_header + 16 * v13 + *(v9->_pc.m_header + 2);
        [ADCameraCalibration transform:v17 points:v18 with:v18 outPoints:*(v15 - 4), *(v15 - 2), *v15, v15[2]];
        v13 += v17;
        ++v14;
        v15 += 8;
      }

      v20 = [(ADJasperPointCloud *)v9 length];
      m_header = v9->_pc.m_header;
      [v8 project:v20 points:m_header + *(m_header + 2) outUndistortedPixels:m_header + *(m_header + 5) outR:m_header + *(m_header + 6)];
      [v8 distort:-[ADJasperPointCloud length](v9 undistortedPixels:"length") outDistorted:{v9->_pc.m_header + *(v9->_pc.m_header + 5), v9->_pc.m_header + *(v9->_pc.m_header + 4)}];
      v19 = v9;
    }

    else
    {
      v19 = 0;
    }

    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)pointCloudByMergingPointClouds:(id)a3
{
  v3 = a3;
  v4 = [[ADJasperPointCloud alloc] initByMergingPointClouds:v3];

  return v4;
}

+ (id)pointCloudFromFile:(id)a3
{
  v3 = a3;
  v4 = [v3 lowercaseString];
  v5 = [v4 hasSuffix:@".csv"];

  if (v5)
  {
    v6 = [ADJasperPointCloud pointCloudFromCSV:v3];
  }

  else
  {
    v7 = [v3 lowercaseString];
    v8 = [v7 hasSuffix:@".jspp"];

    if (!v8)
    {
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];
      if (v10)
      {
        v9 = [[ADJasperPointCloud alloc] initWithDictionaryRepresentation:v10];
      }

      else
      {
        v9 = 0;
      }

      if (!v9)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v6 = [ADJasperPointCloud pointCloudFromJSPP:v3];
  }

  v9 = v6;
  if (v6)
  {
LABEL_11:
    appledepth::JasperPointCloud::applyPerformanceOverrides(&v9->_pc);
    v11 = v9;
  }

LABEL_12:

  return v9;
}

+ (id)pointCloudFromJSPP:(id)a3
{
  v3 = [MEMORY[0x277CBEB28] dataWithContentsOfFile:a3];
  v4 = -[ADJasperPointCloud initWithPreparedStorage:storageSize:]([ADJasperPointCloud alloc], "initWithPreparedStorage:storageSize:", [v3 mutableBytes], objc_msgSend(v3, "length"));
  v5 = [[ADJasperPointCloud alloc] initWithPointCloud:v4];

  return v5;
}

+ (id)pointCloudFromCSV:(id)a3
{
  v83 = *MEMORY[0x277D85DE8];
  v75 = a3;
  v77 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:? encoding:? error:?];
  v4 = 0;
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v68 = [v4 description];
      *v80 = 138412290;
      *&v80[4] = v68;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "error opening jasper file: %@", v80, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    v76 = [v77 componentsSeparatedByString:@"\n"];
    if ([v76 count] > 1)
    {
      *&v6 = -1;
      *(&v6 + 1) = -1;
      *&v82[12] = v6;
      v81 = v6;
      *v82 = v6;
      *v80 = v6;
      v7 = [v76 objectAtIndexedSubscript:0];
      v8 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v70 = [v7 stringByTrimmingCharactersInSet:v8];

      v9 = [v70 componentsSeparatedByString:{@", "}];
      v10 = 0;
      v11 = MEMORY[0x277D86220];
      while (v10 < [v9 count])
      {
        v12 = [v9 objectAtIndexedSubscript:v10];
        v13 = [a1 getKeyForName:v12];

        if (v13 < 15)
        {
          *&v80[4 * v13] = v10;
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v14 = [v9 objectAtIndexedSubscript:v10];
          *buf = 138412290;
          v79 = v14;
          _os_log_error_impl(&dword_240463000, v11, OS_LOG_TYPE_ERROR, "unknown jasper point cloud key %@. ignoring", buf, 0xCu);
        }

        ++v10;
      }

      v15.i64[0] = *&v82[12];
      v16 = *&v82[20];
      v17 = *&v80[4];
      v71 = *&v82[12];
      v15.i64[1] = __PAIR64__(*&v80[4], *&v82[20]);
      if ((vmaxv_u16(vmovn_s32(vcltzq_s32(v15))) & 1) != 0 || (v73 = *v80, v74 = *&v80[8], (*v80 | *&v80[8]) < 0) || (v72 = v81, (v81 & 0x80000000) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to load point cloud: file is missing essential fields", buf, 2u);
        }

        v5 = 0;
      }

      else
      {
        v18 = -[ADMutableJasperPointCloud initWithCapacity:]([ADMutableJasperPointCloud alloc], "initWithCapacity:", [v76 count] - 1);
        v19 = 0;
        for (i = 0; ; ++i)
        {
          if (i >= [(ADMutableJasperPointCloud *)v18 capacity])
          {
            goto LABEL_52;
          }

          v21 = [v76 objectAtIndexedSubscript:i + 1];
          v22 = [v21 componentsSeparatedByString:{@", "}];

          if ([v22 count] == 1)
          {
            v23 = [v22 objectAtIndexedSubscript:0];
            v24 = [v23 isEqualToString:&stru_28524BA50];

            if (v24)
            {

LABEL_52:
              [(ADMutableJasperPointCloud *)v18 resize:i];
              v5 = v18;
              goto LABEL_53;
            }
          }

          v25 = [v22 count];
          if (v25 != [v9 count])
          {
            break;
          }

          v26 = [v22 objectAtIndexedSubscript:v74];
          [v26 floatValue];
          [(ADMutableJasperPointCloud *)v18 mutableEchoIds][i] = v27;

          v28 = [v22 objectAtIndexedSubscript:v73];
          [v28 floatValue];
          [(ADMutableJasperPointCloud *)v18 mutableBankIds][i] = v29;

          v30 = [v22 objectAtIndexedSubscript:v17];
          [v30 floatValue];
          [(ADMutableJasperPointCloud *)v18 mutableSpotIds][i] = v31;

          v32 = [v22 objectAtIndexedSubscript:v72];
          [v32 floatValue];
          *([(ADMutableJasperPointCloud *)v18 mutableConfidences]+ 4 * i) = v33;

          v34 = [v22 objectAtIndexedSubscript:v71];
          [v34 floatValue];
          *([(ADMutableJasperPointCloud *)v18 mutablePoints]+ v19) = v35;

          v36 = [v22 objectAtIndexedSubscript:HIDWORD(v71)];
          [v36 floatValue];
          *([(ADMutableJasperPointCloud *)v18 mutablePoints]+ v19 + 4) = v37;

          v38 = [v22 objectAtIndexedSubscript:v16];
          [v38 floatValue];
          *([(ADMutableJasperPointCloud *)v18 mutablePoints]+ v19 + 8) = v39;

          v40 = NAN;
          if ((HIDWORD(v81) & 0x80000000) != 0)
          {
            v42 = NAN;
          }

          else
          {
            v41 = *v82;
            v42 = NAN;
            if ((*v82 & 0x80000000) == 0)
            {
              v43 = [v22 objectAtIndexedSubscript:?];
              [v43 floatValue];
              v45 = v44;
              v46 = [v22 objectAtIndexedSubscript:v41];
              [v46 floatValue];
              v48 = v47;

              v40 = v45;
              v42 = v48;
            }
          }

          v49 = ([(ADMutableJasperPointCloud *)v18 mutableCameraPixels]+ v19);
          *v49 = v40;
          v49[1] = v42;
          v50 = NAN;
          if ((*&v82[4] & 0x80000000) != 0)
          {
            v52 = NAN;
          }

          else
          {
            v51 = *&v82[8];
            v52 = NAN;
            if ((*&v82[8] & 0x80000000) == 0)
            {
              v53 = [v22 objectAtIndexedSubscript:?];
              [v53 floatValue];
              v55 = v54;
              v56 = [v22 objectAtIndexedSubscript:v51];
              [v56 floatValue];
              v58 = v57;

              v50 = v55;
              v52 = v58;
            }
          }

          v59 = ([(ADMutableJasperPointCloud *)v18 mutableUndistortedCameraPixels]+ v19);
          *v59 = v50;
          v59[1] = v52;
          if ((*&v80[12] & 0x80000000) != 0)
          {
            [(ADMutableJasperPointCloud *)v18 mutableEuclideanDistances][4 * i] = NAN;
          }

          else
          {
            v60 = [v22 objectAtIndexedSubscript:?];
            [v60 floatValue];
            *([(ADMutableJasperPointCloud *)v18 mutableEuclideanDistances]+ 4 * i) = v61;
          }

          if ((DWORD1(v81) & 0x80000000) != 0)
          {
            [(ADMutableJasperPointCloud *)v18 mutableIntensities][4 * i] = NAN;
          }

          else
          {
            v62 = [v22 objectAtIndexedSubscript:?];
            [v62 floatValue];
            *([(ADMutableJasperPointCloud *)v18 mutableIntensities]+ 4 * i) = v63;
          }

          if ((DWORD2(v81) & 0x80000000) != 0)
          {
            [(ADMutableJasperPointCloud *)v18 mutableSignalToNoiseRatios][4 * i] = NAN;
          }

          else
          {
            v64 = [v22 objectAtIndexedSubscript:?];
            [v64 floatValue];
            *([(ADMutableJasperPointCloud *)v18 mutableSignalToNoiseRatios]+ 4 * i) = v65;
          }

          if ((*&v82[24] & 0x80000000) != 0)
          {
            [(ADMutableJasperPointCloud *)v18 mutableFlags][4 * i] = 0;
          }

          else
          {
            v66 = [v22 objectAtIndexedSubscript:?];
            [v66 floatValue];
            [(ADMutableJasperPointCloud *)v18 mutableFlags][4 * i] = v67;
          }

          v19 += 16;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to load point cloud: number of fields in header do not match data.", buf, 2u);
        }

        v5 = 0;
LABEL_53:
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v80 = 0;
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "error parsing jasper file: no enough points", v80, 2u);
      }

      v5 = 0;
    }
  }

  return v5;
}

+ (int64_t)getKeyForName:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[ADJasperPointCloud JasperCSVAttributeNamesCannonicalOrder];
  for (i = 0; i < [v4 count]; ++i)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 objectAtIndexedSubscript:{i, 0}];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [*(*(&v14 + 1) + 8 * v9) lowercaseString];
          v11 = [v3 lowercaseString];
          v12 = [v10 isEqualToString:v11];

          if (v12)
          {

            goto LABEL_13;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  i = 15;
LABEL_13:

  return i;
}

+ (id)makeWithDataBuffer:(__CVBuffer *)a3
{
  v3 = [[ADJasperPointCloud alloc] initWithDataBuffer:a3];

  return v3;
}

+ (BOOL)prepareDataBuffer:(__CVBuffer *)a3 forLength:(int)a4 additionalDataSize:(unint64_t)a5
{
  if (!a3)
  {
    return 0;
  }

  IOSurface = CVDataBufferGetIOSurface();
  if (!IOSurface)
  {
    return 0;
  }

  v8 = IOSurface;
  PixelFormat = IOSurfaceGetPixelFormat(IOSurface);
  if (PixelFormat != +[ADJasperPointCloud pixelFormat])
  {
    return 0;
  }

  IOSurfaceLock(v8, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(v8);
  DataSize = CVDataBufferGetDataSize();
  v12 = appledepth::JasperPointCloud::prepareStorage(BaseAddress, DataSize, a4, a5);
  IOSurfaceUnlock(v8, 0, 0);
  return v12;
}

+ (unint64_t)requiredStorageBytesForLength:(int)a3 additionalDataSize:(unint64_t)a4
{
  v7[11] = *MEMORY[0x277D85DE8];
  v6 = 0;
  calculateOffsetsForLength(a3, v7, &v6);
  return v6 + a4;
}

- (id)pointCloudByChangingPointOfViewByTransform:(void *)a3 to:
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  if (v5)
  {
    appledepth::JasperPointCloud::initByCloning((v5 + 8), (a1 + 8));
  }

  return 0;
}

- (id)pointCloudByChangingPointOfViewFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 getTransformationTo:v7];
  v8 = [(ADJasperPointCloud *)self pointCloudByChangingPointOfViewByTransform:v7 to:?];

  return v8;
}

- (int64_t)projectJasperPointsFilteredBy:(id)a3 croppedBy:(CGRect)a4 rotatedBy:(int64_t)a5 andScaledMergingWith:(__CVBuffer *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v13 = [v12 echoMode];
  [v12 confidenceThreshold];
  v15 = v14;
  [v12 minDistance];
  v17 = v16;
  [v12 maxDistance];
  v19 = v18;
  [v12 shortRangeDepthThreshold];
  v21 = v20;
  [v12 shortRangeConfidenceThreshold];
  v23 = appledepth::JasperPointCloud::projectJasperPoints(&self->_pc, a5, v13, [v12 bankIDMask], objc_msgSend(v12, "duplicateProjectedSpotsMode"), a6, 0, x, y, width, height, v15, v17, v19, v21, v22);

  return v23;
}

- (int64_t)projectJasperPointsFilteredBy:(id)a3 croppedBy:(CGRect)a4 rotatedBy:(int64_t)a5 andScaledInto:(__CVBuffer *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v13 = [v12 echoMode];
  [v12 confidenceThreshold];
  v15 = v14;
  [v12 minDistance];
  v17 = v16;
  [v12 maxDistance];
  v19 = v18;
  [v12 shortRangeDepthThreshold];
  v21 = v20;
  [v12 shortRangeConfidenceThreshold];
  v23 = appledepth::JasperPointCloud::projectJasperPoints(&self->_pc, a5, v13, [v12 bankIDMask], objc_msgSend(v12, "duplicateProjectedSpotsMode"), a6, 1, x, y, width, height, v15, v17, v19, v21, v22);

  return v23;
}

- (id)additionalData
{
  additionalData = self->_additionalData;
  if (!additionalData)
  {
    m_header = self->_pc.m_header;
    v5 = *(m_header + 13);
    if (v5)
    {
      v6 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:m_header + *(m_header + 14) length:v5 freeWhenDone:0];
      v7 = self->_additionalData;
      self->_additionalData = v6;

      additionalData = self->_additionalData;
    }

    else
    {
      additionalData = 0;
    }
  }

  return additionalData;
}

- (int)size
{
  m_header = self->_pc.m_header;
  if (m_header)
  {
    return *(m_header + 2);
  }

  else
  {
    return 0;
  }
}

- (int)length
{
  m_header = self->_pc.m_header;
  if (m_header)
  {
    return *(m_header + 2);
  }

  else
  {
    return 0;
  }
}

- (id)initByMergingPointClouds:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    std::vector<appledepth::JasperPointCloud const*>::vector[abi:ne200100](&__p, [v4 count]);
    if (v11 != __p)
    {
      v5 = 0;
      do
      {
        v6 = [v4 objectAtIndexedSubscript:v5];
        *(__p + v5) = v6 + 8;

        ++v5;
      }

      while (v5 < (v11 - __p) >> 3);
    }

    v7 = [v4 count];
    if (appledepth::JasperPointCloud::initByMerging(&self->_pc, v7, __p))
    {
      v8 = self;
    }

    else
    {
      v8 = 0;
    }

    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (ADJasperPointCloud)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ADJasperPointCloud;
  v5 = [(ADJasperPointCloud *)&v11 init];
  v6 = v5;
  v7 = v5;
  if (!v5 || (appledepth::JasperPointCloud::initWithDictionaryRepresentation(&v5->_pc, v4) & 1) != 0 && (m_header = v7->_pc.m_header) != 0 && *(m_header + 1))
  {
    appledepth::JasperPointCloud::applyPerformanceOverrides(&v6->_pc);
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  DictionaryRepresentation = appledepth::JasperPointCloud::createDictionaryRepresentation(&self->_pc);

  return DictionaryRepresentation;
}

- (ADJasperPointCloud)initWithPointCloud:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ADJasperPointCloud;
  v5 = [(ADJasperPointCloud *)&v8 init];
  if (v5)
  {
    appledepth::JasperPointCloud::initByCloning(&v5->_pc, (v4 + 8));
  }

  v6 = 0;

  return v6;
}

- (id)mutableCopy
{
  v3 = [ADMutableJasperPointCloud alloc];

  return [(ADJasperPointCloud *)v3 initWithPointCloud:self];
}

- (void)dealloc
{
  [(ADJasperPointCloud *)self reset];
  v3.receiver = self;
  v3.super_class = ADJasperPointCloud;
  [(ADJasperPointCloud *)&v3 dealloc];
}

- (BOOL)reset
{
  ptr = self->_pc.m_ownedStorage.__ptr_;
  self->_pc.m_ownedStorage.__ptr_ = 0;
  if (ptr)
  {
    MEMORY[0x245CC10C0](ptr, 0x1000C8077774924);
  }

  self->_pc.m_header = 0;
  if (self->_dataBuffer)
  {
    IOSurface = CVDataBufferGetIOSurface();
    IOSurfaceUnlock(IOSurface, 0, 0);
    CVBufferRelease(self->_dataBuffer);
    self->_dataBuffer = 0;
  }

  return 1;
}

- (BOOL)writeToFile:(id)a3 atomically:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 lowercaseString];
  v8 = [v7 hasSuffix:@".csv"];

  if (v8)
  {
    v9 = [(ADJasperPointCloud *)self pointCloudToCSV:v6 atomically:v4];
LABEL_10:
    v16 = v9;
    goto LABEL_11;
  }

  v10 = [v6 lowercaseString];
  v11 = [v10 hasSuffix:@".jspp"];

  if (v11)
  {
    v9 = [(ADJasperPointCloud *)self pointCloudToJSPP:v6 atomically:v4];
    goto LABEL_10;
  }

  v12 = [v6 lowercaseString];
  if ([v12 hasSuffix:@".jpeg"])
  {

LABEL_8:
    v15 = @"public.jpeg";
LABEL_9:
    v9 = [(ADJasperPointCloud *)self pointCloudToImageFile:v6 uti:v15 atomically:v4];
    goto LABEL_10;
  }

  v13 = [v6 lowercaseString];
  v14 = [v13 hasSuffix:@".jpg"];

  if (v14)
  {
    goto LABEL_8;
  }

  v18 = [v6 lowercaseString];
  v19 = [v18 hasSuffix:@".png"];

  if (v19)
  {
    v15 = @"public.png";
    goto LABEL_9;
  }

  v20 = [(ADJasperPointCloud *)self dictionaryRepresentation];
  v21 = v20;
  if (v20)
  {
    v16 = [v20 writeToFile:v6 atomically:v4];
  }

  else
  {
    v16 = 0;
  }

LABEL_11:
  return v16;
}

- (BOOL)pointCloudToJSPP:(id)a3 atomically:(BOOL)a4
{
  v4 = a4;
  v14[11] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CBEA90];
  m_header = self->_pc.m_header;
  m_capacity = self->_pc.m_capacity;
  v10 = *(m_header + 13);
  v13 = 0;
  calculateOffsetsForLength(m_capacity, v14, &v13);
  v11 = [v7 dataWithBytes:m_header length:v13 + v10];
  LOBYTE(v4) = [v11 writeToFile:v6 atomically:v4];

  return v4;
}

- (BOOL)pointCloudToCSV:(id)a3 atomically:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v24 = +[ADJasperPointCloud JasperCSVAttributeNamesCannonicalOrder];
  m_header = self->_pc.m_header;
  if (m_header)
  {
    v7 = *(m_header + 1) + 1;
  }

  else
  {
    v7 = 1;
  }

  v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
  v22 = v4;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v24, "count")}];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v24;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v26 + 1) + 8 * v12) objectAtIndexedSubscript:0];
        [v8 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  v14 = [v8 componentsJoinedByString:{@", "}];
  [v25 addObject:v14];

  v15 = 0;
  for (i = 0; ; ++i)
  {
    v17 = self->_pc.m_header;
    if (v17)
    {
      v17 = *(v17 + 1);
    }

    if (i >= v17)
    {
      break;
    }

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u, %u, %u, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %u", -[ADJasperPointCloud bankIds](self, "bankIds")[i], -[ADJasperPointCloud spotIds](self, "spotIds")[i], -[ADJasperPointCloud echoIds](self, "echoIds")[i], -[ADJasperPointCloud euclideanDistances](self, "euclideanDistances")[4 * i], -[ADJasperPointCloud confidences](self, "confidences")[4 * i], -[ADJasperPointCloud intensities](self, "intensities")[4 * i], -[ADJasperPointCloud signalToNoiseRatios](self, "signalToNoiseRatios")[4 * i], -[ADJasperPointCloud cameraPixels](self, "cameraPixels")[v15], (-[ADJasperPointCloud cameraPixels](self, "cameraPixels") + v15)[8], -[ADJasperPointCloud undistortedCameraPixels](self, "undistortedCameraPixels")[v15], (-[ADJasperPointCloud undistortedCameraPixels](self, "undistortedCameraPixels") + v15)[8], *(-[ADJasperPointCloud points](self, "points") + v15), *(-[ADJasperPointCloud points](self, "points") + v15 + 4), COERCE_FLOAT(*(-[ADJasperPointCloud points](self, "points") + v15 + 8)), -[ADJasperPointCloud flags](self, "flags")[4 * i]];
    [v25 addObject:v18];

    v15 += 16;
  }

  v19 = [v25 componentsJoinedByString:@"\r\n"];
  v20 = [v19 writeToFile:v23 atomically:v22 encoding:1 error:0];

  return v20;
}

- (ADJasperPointCloud)initWithLength:(int)a3 storage:(__CVBuffer *)a4
{
  v5 = self;
  if (a4)
  {
    if (![ADJasperPointCloud prepareDataBuffer:a4 forLength:*&a3])
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = [(ADJasperPointCloud *)v5 initWithDataBuffer:a4];
  }

  else
  {
    v6 = [(ADJasperPointCloud *)self initWithLength:*&a3];
  }

  v5 = v6;
  v7 = v5;
LABEL_7:

  return v7;
}

- (ADJasperPointCloud)initWithLength:(int)a3
{
  v7.receiver = self;
  v7.super_class = ADJasperPointCloud;
  v4 = [(ADJasperPointCloud *)&v7 init];
  if (v4)
  {
    appledepth::JasperPointCloud::initWithLength(&v4->_pc, a3);
  }

  v5 = 0;

  return v5;
}

- (ADJasperPointCloud)initWithDataBuffer:(__CVBuffer *)a3
{
  v3 = a3;
  if (a3)
  {
    IOSurface = CVDataBufferGetIOSurface();
    v6 = IOSurface;
    if (IOSurface && (PixelFormat = IOSurfaceGetPixelFormat(IOSurface), PixelFormat == +[ADJasperPointCloud pixelFormat]))
    {
      IOSurfaceLock(v6, 0, 0);
      BaseAddress = IOSurfaceGetBaseAddress(v6);
      v9 = [(ADJasperPointCloud *)self initWithPreparedStorage:BaseAddress storageSize:CVDataBufferGetDataSize()];
      IOSurfaceUnlock(v6, 0, 0);
      if (v9)
      {
        v9->_dataBuffer = CVBufferRetain(v3);
        appledepth::JasperPointCloud::applyPerformanceOverrides(&v9->_pc);
      }

      self = v9;
      v3 = self;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (ADJasperPointCloud)initWithPreparedStorage:(void *)a3 storageSize:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = ADJasperPointCloud;
  v5 = [(ADJasperPointCloud *)&v10 init:a3];
  v6 = v5;
  if (v5 && !appledepth::JasperPointCloud::initWithPreparedStorage(&v5->_pc, a3))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed initializing ADJasperPointCloud from memory: contains invalid header", v9, 2u);
    }

    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

@end