@interface UtilsForTests
+ (BOOL)areIdenticalPointCloud0:(id)cloud0 pointCloud1:(id)cloud1 accuracy:(float)accuracy;
+ (BaselineTestStats_s)compareBuffer:(__CVBuffer *)buffer offset:(CGSize)offset toRefBuffer:(__CVBuffer *)refBuffer ignoreRefZeros:(BOOL)zeros;
+ (BaselineTestStats_s)compareBuffer:(__CVBuffer *)buffer offset:(CGSize)offset toRefBuffer:(__CVBuffer *)refBuffer ignoreResultZeros:(BOOL)zeros ignoreRefZeros:(BOOL)refZeros outlierPercentile:(float)percentile;
+ (BaselineTestStats_s)compareBuffer:(__CVBuffer *)buffer toRefBuffer:(__CVBuffer *)refBuffer ignoreRefZeros:(BOOL)zeros;
+ (BaselineTestStats_s)compareBuffer:(__CVBuffer *)buffer toRefBuffer:(__CVBuffer *)refBuffer ignoreRefZeros:(BOOL)zeros outlierPercentile:(float)percentile;
+ (BaselineTestStats_s)compareBuffer:(__CVBuffer *)buffer toRefBuffer:(__CVBuffer *)refBuffer ignoreResultZeros:(BOOL)zeros ignoreRefZeros:(BOOL)refZeros;
+ (BaselineTestStats_s)compareResults:(__CVBuffer *)results toBaseLineInPath:(id)path ignoreRefZeros:(BOOL)zeros;
+ (BaselineTestStats_s)compareResults:(__CVBuffer *)results toBaseLineInPath:(id)path ignoreRefZeros:(BOOL)zeros outlierPercentile:(float)percentile;
+ (BaselineTestStats_s)compareVImageBuffer:(vImage_Buffer *)buffer pixelTypeResult:(unsigned int)result offset:(CGSize)offset toRefBuffer:(vImage_Buffer *)refBuffer pixelTypeRef:(unsigned int)ref ignoreResultZeros:(BOOL)zeros ignoreRefZeros:(BOOL)refZeros outlierPercentile:(float)self0;
+ (id)createJasperCameraCalibration;
+ (id)createSuperWideCameraCalibration;
+ (id)createSyntheticCameraCalibrationWithDistortion:(id)distortion;
+ (id)createSyntheticCameraCalibrationXThetaDistortion;
+ (id)createWideCameraCalibrationWithPolynomials;
+ (id)getJasperPointCloudFromPath:(id)path;
+ (id)getNewTempFilePathWithExtension:(id)extension;
+ (id)pointsArrayFromFilePath:(id)path;
+ (unint64_t)preferredEspressoEngine;
+ (vector<float,)pointsVectorFromFilePath:(id)path;
@end

@implementation UtilsForTests

+ (id)getNewTempFilePathWithExtension:(id)extension
{
  extensionCopy = extension;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = 0;
  do
  {
    v6 = NSTemporaryDirectory();
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v9 = [v6 stringByAppendingPathComponent:uUIDString];
    v10 = [v9 stringByAppendingPathExtension:extensionCopy];

    v5 = v10;
  }

  while (([defaultManager fileExistsAtPath:v10] & 1) != 0);

  return v10;
}

+ (id)createSyntheticCameraCalibrationXThetaDistortion
{
  v2 = [[ADXThetaDistortionModel alloc] initWithDistortionCenter:0 XThetaType:240.0, 320.0];
  v3 = [UtilsForTests createSyntheticCameraCalibrationWithDistortion:v2];

  return v3;
}

+ (id)createSyntheticCameraCalibrationWithDistortion:(id)distortion
{
  distortionCopy = distortion;
  v4 = [ADMutableCameraCalibration alloc];
  LODWORD(v5) = 1008981770;
  0x4084000000000000 = [(ADCameraCalibration *)v4 initWithIntrinsics:distortionCopy cameraToPlatformTransform:*&_PromotedConst pixelSize:unk_2404CA490 referenceDimensions:5.76460897e17 distortionModel:*&_PromotedConst_2171, unk_2404CA4C0, 0.0, unk_2404CA4E0, v5, 0x407E000000000000, 0x4084000000000000];

  return 0x4084000000000000;
}

+ (id)createWideCameraCalibrationWithPolynomials
{
  v7 = xmmword_2404C9760;
  v8 = unk_2404C9770;
  v9 = xmmword_2404C9780;
  v10 = unk_2404C9790;
  v2 = [[ADPolynomialsLensDistortionModel alloc] initWithDistortionCenter:&v7 andPolynomials:1272.26655, 957.504985];
  v3 = [ADMutableCameraCalibration alloc];
  LODWORD(v4) = 985834580;
  v5 = [(ADCameraCalibration *)v3 initWithIntrinsics:v2 cameraToPlatformTransform:*&_PromotedConst_2172 pixelSize:unk_2404CA500 referenceDimensions:4.63031801e21 distortionModel:*&_PromotedConst_2173, unk_2404CA530, 1.88571355e-19, unk_2404CA550, v4, 0x40A4000000000000, 0x409E000000000000, v7, v8, v9, v10];

  return v5;
}

+ (id)createSuperWideCameraCalibration
{
  v12 = *MEMORY[0x277D85DE8];
  memcpy(__dst, &unk_2404C8F60, sizeof(__dst));
  memcpy(v10, &unk_2404C9360, sizeof(v10));
  v2 = [ADMillimeterRadiusPairsLensDistortionModel alloc];
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:__dst length:1024];
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:v10 length:1024];
  v5 = [(ADMillimeterRadiusPairsLensDistortionModel *)v2 initWithDistortionCenter:v3 distortedRadii:v4 undistortedRadii:2084.05811, 1403.30347];

  v6 = [ADMutableCameraCalibration alloc];
  LODWORD(v7) = 980151802;
  0x40A5F00000000000 = [(ADCameraCalibration *)v6 initWithIntrinsics:v5 cameraToPlatformTransform:*&_PromotedConst_2174 pixelSize:unk_2404CA570 referenceDimensions:7.41717015e22 distortionModel:*&_PromotedConst_2175, unk_2404CA5A0, 4.84969978e-20, unk_2404CA5C0, v7, 0x40B0400000000000, 0x40A5F00000000000];

  return 0x40A5F00000000000;
}

+ (id)createJasperCameraCalibration
{
  v12 = *MEMORY[0x277D85DE8];
  memcpy(__dst, &unk_2404C8760, sizeof(__dst));
  memcpy(v10, &unk_2404C8B60, sizeof(v10));
  v2 = [ADMillimeterRadiusPairsLensDistortionModel alloc];
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:__dst length:1024];
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:v10 length:1024];
  v5 = [(ADMillimeterRadiusPairsLensDistortionModel *)v2 initWithDistortionCenter:v3 distortedRadii:v4 undistortedRadii:65.5749545, 89.8015503];

  v6 = [ADMutableCameraCalibration alloc];
  LODWORD(v7) = 1009067670;
  0x4066800000000000 = [(ADCameraCalibration *)v6 initWithIntrinsics:v5 cameraToPlatformTransform:*&_PromotedConst_2176 pixelSize:unk_2404CA5E0 referenceDimensions:2.20156376e13 distortionModel:*&_PromotedConst_2171, unk_2404CA4C0, 0.0, unk_2404CA4E0, v7, 0x4061800000000000, 0x4066800000000000];

  return 0x4066800000000000;
}

+ (id)pointsArrayFromFilePath:(id)path
{
  pathCopy = path;
  array = [MEMORY[0x277CBEB18] array];
  v5 = objc_opt_class();
  if (v5)
  {
    [v5 pointsVectorFromFilePath:pathCopy];
    v7 = __p;
    if (v14 != __p)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        LODWORD(v6) = v7[v8];
        v10 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
        [array addObject:v10];

        v8 = v9;
        v7 = __p;
        ++v9;
      }

      while (v8 < (v14 - __p) >> 2);
    }
  }

  else
  {
    __p = 0;
  }

  v11 = [array copy];
  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

+ (vector<float,)pointsVectorFromFilePath:(id)path
{
  v30[19] = *MEMORY[0x277D85DE8];
  v5 = a4;
  [v5 UTF8String];
  v30[6] = 0;
  v6 = MEMORY[0x277D82858] + 64;
  v30[0] = MEMORY[0x277D82858] + 64;
  v7 = MEMORY[0x277D82808];
  v8 = *(MEMORY[0x277D82808] + 16);
  v28[0] = *(MEMORY[0x277D82808] + 8);
  *(v28 + *(v28[0] - 24)) = v8;
  v28[1] = 0;
  v9 = (v28 + *(v28[0] - 24));
  std::ios_base::init(v9, v29);
  v10 = MEMORY[0x277D82858] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v28[0] = v10;
  v30[0] = v6;
  MEMORY[0x245CC0F50](v29);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((v28 + *(v28[0] - 24)), *&v29[*(v28[0] - 24) + 16] | 4);
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v11 = (v28[0] - 24);
  if (!*&v29[*(v28[0] - 24) + 16])
  {
    v24 = v5;
    v12 = 0;
    __sep[23] = 2;
    strcpy(__sep, ", ");
    v13 = MEMORY[0x277D82680];
    while (1)
    {
      memset(&v25, 0, sizeof(v25));
      std::ios_base::getloc((v28 + *v11));
      v14 = std::locale::use_facet(&v27, v13);
      v15 = (v14->__vftable[2].~facet_0)(v14, 10);
      std::locale::~locale(&v27);
      MEMORY[0x245CC0F70](&v27, v28, 1);
      if (LOBYTE(v27.__locale_) != 1)
      {
        goto LABEL_22;
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        *v25.__r_.__value_.__l.__data_ = 0;
        v25.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v25.__r_.__value_.__s.__data_[0] = 0;
        *(&v25.__r_.__value_.__s + 23) = 0;
      }

      v16 = 0;
      while (1)
      {
        v17 = *&v29[*(v28[0] - 24) + 24];
        v18 = v17[3];
        if (v18 != v17[4])
        {
          v17[3] = v18 + 1;
          LOBYTE(v17) = *v18;
          goto LABEL_13;
        }

        LODWORD(v17) = (*(*v17 + 80))(v17);
        if (v17 == -1)
        {
          break;
        }

LABEL_13:
        if (v15 == v17)
        {
          v19 = 0;
          goto LABEL_21;
        }

        std::string::push_back(&v25, v17);
        ++v16;
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0 && v25.__r_.__value_.__l.__size_ == 0x7FFFFFFFFFFFFFF7)
        {
          v19 = 4;
          goto LABEL_21;
        }
      }

      if (v16)
      {
        v19 = 2;
      }

      else
      {
        v19 = 6;
      }

LABEL_21:
      std::ios_base::clear((v28 + *(v28[0] - 24)), *&v29[*(v28[0] - 24) + 16] | v19);
LABEL_22:
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!v25.__r_.__value_.__l.__size_)
        {
          goto LABEL_30;
        }

        v20 = v25.__r_.__value_.__r.__words[0];
LABEL_27:
        while (1)
        {
          v21 = strtok(v20, __sep);
          if (!v21)
          {
            break;
          }

          v22 = atof(v21);
          *&v27.__locale_ = v22;
          std::vector<float>::push_back[abi:ne200100](retstr, &v27);
          v20 = 0;
        }

        ++v12;
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_30:
          operator delete(v25.__r_.__value_.__l.__data_);
        }
      }

      else if (*(&v25.__r_.__value_.__s + 23))
      {
        v20 = &v25;
        goto LABEL_27;
      }

      v11 = (v28[0] - 24);
      if ((v29[*(v28[0] - 24) + 16] & 2) != 0 || v12 == -1)
      {
        if (!std::filebuf::close())
        {
          std::ios_base::clear((v28 + *(v28[0] - 24)), *&v29[*(v28[0] - 24) + 16] | 4);
        }

        v5 = v24;
        v7 = MEMORY[0x277D82808];
        break;
      }
    }
  }

  v28[0] = *v7;
  *(v28 + *(v28[0] - 24)) = v7[3];
  MEMORY[0x245CC0F60](v29);
  std::istream::~istream();
  MEMORY[0x245CC1080](v30);

  return result;
}

+ (id)getJasperPointCloudFromPath:(id)path
{
  pathCopy = path;
  if ([pathCopy hasSuffix:@".txt"])
  {
    v37 = pathCopy;
    v4 = [UtilsForTests pointsArrayFromFilePath:pathCopy];
    if ([v4 count])
    {
      v5 = [v4 count];
      v43 = v5 / 3;
      v36 = [[ADMutableJasperPointCloud alloc] initWithCapacity:2 * (v5 / 3)];
      [(ADMutableJasperPointCloud *)v36 resize:2 * (v5 / 3)];
      mutableCameraPixels = [(ADMutableJasperPointCloud *)v36 mutableCameraPixels];
      mutableEchoIds = [(ADMutableJasperPointCloud *)v36 mutableEchoIds];
      mutableBankIds = [(ADMutableJasperPointCloud *)v36 mutableBankIds];
      mutableSpotIds = [(ADMutableJasperPointCloud *)v36 mutableSpotIds];
      mutableConfidences = [(ADMutableJasperPointCloud *)v36 mutableConfidences];
      mutablePoints = [(ADMutableJasperPointCloud *)v36 mutablePoints];
      mutableUndistortedCameraPixels = [(ADMutableJasperPointCloud *)v36 mutableUndistortedCameraPixels];
      mutableEuclideanDistances = [(ADMutableJasperPointCloud *)v36 mutableEuclideanDistances];
      mutableIntensities = [(ADMutableJasperPointCloud *)v36 mutableIntensities];
      mutableSignalToNoiseRatios = [(ADMutableJasperPointCloud *)v36 mutableSignalToNoiseRatios];
      mutableFlags = [(ADMutableJasperPointCloud *)v36 mutableFlags];
      if (v5 >= 3)
      {
        v12 = mutableFlags;
        v13 = 0;
        v14 = 0;
        v15 = mutableEchoIds + 1;
        v16 = (mutableSpotIds + 1);
        v17 = mutableBankIds + 1;
        v18 = (mutableUndistortedCameraPixels + 16);
        __asm { FMOV            V9.2S, #1.0 }

        v24 = mutablePoints + 16;
        do
        {
          v25 = [v4 objectAtIndexedSubscript:v13];
          [v25 floatValue];
          v45 = v26;

          v27 = [v4 objectAtIndexedSubscript:v13 + 1];
          [v27 floatValue];
          v44 = v28;

          v29 = [v4 objectAtIndexedSubscript:v13 + 2];
          [v29 floatValue];
          v31 = v30;

          v32 = vcvtq_f64_f32(__PAIR64__(v44, v45));
          v33 = (mutableCameraPixels + 32 * v14);
          *v33 = v32;
          v33[1] = v32;
          *(v15 - 1) = 256;
          *(mutableConfidences + 8 * v14) = _D9;
          *(v24 - 8) = v31;
          *(v24 - 16) = 0;
          *(v24 + 8) = v31;
          *v24 = 0;
          v24 += 32;
          *(v18 - 2) = 0;
          *(v18 - 1) = 0;
          *v18 = 0;
          v18[1] = 0;
          v18 += 4;
          *(mutableEuclideanDistances + 8 * v14) = _D9;
          *(mutableIntensities + 8 * v14) = _D9;
          *(mutableSignalToNoiseRatios + 8 * v14) = _D9;
          *(v12 + 8 * v14) = 0;
          *(v17 - 1) = 0;
          *(v16 - 1) = v14;
          *v16 = v14;
          v16 += 2;
          ++v14;
          v13 += 3;
          v15 += 2;
          v17 += 2;
        }

        while (v43 != v14);
      }
    }

    else
    {
      v36 = 0;
    }

    v34 = v36;
    pathCopy = v37;
  }

  else
  {
    v34 = [ADJasperPointCloud pointCloudFromFile:pathCopy];
  }

  return v34;
}

+ (BOOL)areIdenticalPointCloud0:(id)cloud0 pointCloud1:(id)cloud1 accuracy:(float)accuracy
{
  cloud0Copy = cloud0;
  cloud1Copy = cloud1;
  v9 = [cloud0Copy length];
  if (v9 == [cloud1Copy length])
  {
    for (i = 0; ; ++i)
    {
      if (i >= [cloud0Copy length])
      {
        v21 = 1;
        goto LABEL_18;
      }

      v11 = ([cloud0Copy cameraPixels] + 16 * i);
      v12 = *v11;
      v13 = *(v11 + 1);
      cameraPixels = [cloud1Copy cameraPixels];
      if (vabdd_f64(v12, *(cameraPixels + 16 * i)) > accuracy)
      {
        break;
      }

      v23 = *([cloud0Copy points] + 16 * i);
      v15 = *([cloud1Copy points] + 16 * i);
      v16 = vsubq_f32(v23, v15);
      v19 = fabsf(v16.f32[0]) <= accuracy;
      v17 = vabds_f32(v23.f32[1], v15.f32[1]);
      v18 = fabsf(v16.f32[2]);
      v19 = v19 && v17 <= accuracy;
      if (!v19 || v18 > accuracy)
      {
        NSLog(&cfstr_PointCloudsXyz.isa, i, v23.f32[0], v23.f32[1], v23.f32[2], v15.f32[0], v15.f32[1], v15.f32[2]);
        goto LABEL_17;
      }
    }

    NSLog(&cfstr_PointCloudsCam.isa, i, *&v12, v13, *(cameraPixels + 16 * i), *(cameraPixels + 16 * i + 8));
  }

  else
  {
    NSLog(&cfstr_PointCloudsLen.isa, [cloud0Copy length], objc_msgSend(cloud1Copy, "length"));
  }

LABEL_17:
  v21 = 0;
LABEL_18:

  return v21;
}

+ (BaselineTestStats_s)compareResults:(__CVBuffer *)results toBaseLineInPath:(id)path ignoreRefZeros:(BOOL)zeros outlierPercentile:(float)percentile
{
  v9 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:path];
  CVPixelBufferLockBaseAddress(results, 1uLL);
  Width = CVPixelBufferGetWidth(results);
  Height = CVPixelBufferGetHeight(results);
  PixelFormatType = CVPixelBufferGetPixelFormatType(results);
  v13 = 0.0;
  if (PixelFormatType <= 1717856626)
  {
    if (PixelFormatType == 843264104)
    {
      BaseAddress = CVPixelBufferGetBaseAddress(results);
      BytesPerRow = CVPixelBufferGetBytesPerRow(results);
      v19 = compareRawBuffers<half,half>(percentile, BaseAddress, BytesPerRow, [v9 bytes], 4 * Width, 2 * Width, Height, 0, zeros);
      goto LABEL_12;
    }

    if (PixelFormatType != 1278226536)
    {
      v14 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      if (PixelFormatType != 1717855600)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (PixelFormatType == 1717856627)
  {
LABEL_10:
    v23 = CVPixelBufferGetBaseAddress(results);
    v24 = CVPixelBufferGetBytesPerRow(results);
    v19 = compareRawBuffers<float,float>(v23, v24, [v9 bytes], 4 * Width, Width, Height, 0, zeros, percentile);
    goto LABEL_12;
  }

  if (PixelFormatType == 1751410032 || (v14 = 0.0, v15 = 0.0, v16 = 0.0, PixelFormatType == 1751411059))
  {
LABEL_9:
    v17 = CVPixelBufferGetBaseAddress(results);
    v18 = CVPixelBufferGetBytesPerRow(results);
    v19 = compareRawBuffers<half,half>(percentile, v17, v18, [v9 bytes], 2 * Width, Width, Height, 0, zeros);
LABEL_12:
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v16 = v22;
  }

LABEL_13:
  CVPixelBufferUnlockBaseAddress(results, 1uLL);

  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  result.var3 = v30;
  result.var2 = v29;
  result.var1 = v28;
  result.var0 = v27;
  return result;
}

+ (BaselineTestStats_s)compareResults:(__CVBuffer *)results toBaseLineInPath:(id)path ignoreRefZeros:(BOOL)zeros
{
  LODWORD(v5) = 1064514355;
  [UtilsForTests compareResults:results toBaseLineInPath:path ignoreRefZeros:zeros outlierPercentile:v5];
  result.var3 = v9;
  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

+ (BaselineTestStats_s)compareBuffer:(__CVBuffer *)buffer offset:(CGSize)offset toRefBuffer:(__CVBuffer *)refBuffer ignoreResultZeros:(BOOL)zeros ignoreRefZeros:(BOOL)refZeros outlierPercentile:(float)percentile
{
  if (!buffer || !refBuffer)
  {
    NSLog(&cfstr_InvalidParamsN.isa, a2, offset.width, offset.height);
    v21 = 0.0;
    v22 = 1.0e17;
    goto LABEL_12;
  }

  refZerosCopy = refZeros;
  zerosCopy = zeros;
  height = offset.height;
  width = offset.width;
  v16 = CVPixelBufferGetWidth(buffer);
  v46 = CVPixelBufferGetHeight(buffer);
  v17 = CVPixelBufferGetWidth(refBuffer);
  v18 = CVPixelBufferGetHeight(refBuffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v20 = CVPixelBufferGetPixelFormatType(refBuffer);
  v21 = 0.0;
  v22 = 1.0e17;
  if (v16 != v17)
  {
LABEL_12:
    v23 = 1.0e17;
    v24 = 1.0e17;
    goto LABEL_15;
  }

  v23 = 1.0e17;
  v24 = 1.0e17;
  if (v46 == v18)
  {
    v25 = v20;
    CVPixelBufferLockBaseAddress(buffer, 1uLL);
    CVPixelBufferLockBaseAddress(refBuffer, 1uLL);
    v26 = PixelBufferUtils::planeCountForPixelFormat(PixelFormatType);
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = v26;
      v30 = MEMORY[0x277CBF3A0];
      v24 = 0.0;
      v23 = 0.0;
      v22 = 0.0;
      do
      {
        PixelBufferUtils::asVImageBuffer(buffer, v28, *v30, &v50);
        PixelBufferUtils::asVImageBuffer(refBuffer, v28, *v30, &v49);
        v48 = v50;
        v47 = v49;
        *&v31 = percentile;
        [self compareVImageBuffer:&v48 pixelTypeResult:PixelFormatType offset:&v47 toRefBuffer:v25 pixelTypeRef:zerosCopy ignoreResultZeros:refZerosCopy ignoreRefZeros:width outlierPercentile:{height, v31}];
        v22 = v22 + (v35 / v29);
        if (v23 < v32)
        {
          v23 = v32;
        }

        v24 = v24 + (v33 / v29);
        v21 = v21 + (v34 / v29);
        v28 = (v28 + 1);
      }

      while (v27 != v28);
    }

    else
    {
      v36 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(buffer, *MEMORY[0x277CBF3A0], &v50);
      PixelBufferUtils::asVImageBuffer(refBuffer, *v36, &v49);
      v48 = v50;
      v47 = v49;
      *&v37 = percentile;
      [self compareVImageBuffer:&v48 pixelTypeResult:PixelFormatType offset:&v47 toRefBuffer:v25 pixelTypeRef:zerosCopy ignoreResultZeros:refZerosCopy ignoreRefZeros:width outlierPercentile:{height, v37}];
      v22 = v38;
      v23 = v39;
      v24 = v40;
      v21 = v41;
    }

    CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    CVPixelBufferUnlockBaseAddress(refBuffer, 1uLL);
  }

LABEL_15:
  v42 = v22;
  v43 = v23;
  v44 = v24;
  v45 = v21;
  result.var3 = v45;
  result.var2 = v44;
  result.var1 = v43;
  result.var0 = v42;
  return result;
}

+ (BaselineTestStats_s)compareVImageBuffer:(vImage_Buffer *)buffer pixelTypeResult:(unsigned int)result offset:(CGSize)offset toRefBuffer:(vImage_Buffer *)refBuffer pixelTypeRef:(unsigned int)ref ignoreResultZeros:(BOOL)zeros ignoreRefZeros:(BOOL)refZeros outlierPercentile:(float)self0
{
  v13 = *&ref;
  height = offset.height;
  width = offset.width;
  v19 = PixelBufferUtils::componentsPerPixelForPixelFormat(*&result, 0);
  if (v19 != PixelBufferUtils::componentsPerPixelForPixelFormat(v13, 0))
  {
    NSLog(&cfstr_InvalidParamsC.isa);
    __assert_rtn("+[UtilsForTests compareVImageBuffer:pixelTypeResult:offset:toRefBuffer:pixelTypeRef:ignoreResultZeros:ignoreRefZeros:outlierPercentile:]", "UtilsForTests.mm", 210, "0");
  }

  v20 = (buffer->width - fabs(width));
  if (width < 0.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = width;
  }

  if (width < 0.0)
  {
    v22 = -width;
  }

  else
  {
    v22 = 0;
  }

  v98 = (buffer->height - fabs(height));
  if (height < 0.0)
  {
    v23 = 0;
  }

  else
  {
    v23 = height;
  }

  if (height < 0.0)
  {
    v24 = -height;
  }

  else
  {
    v24 = 0;
  }

  rowBytes = buffer->rowBytes;
  buffer->data = buffer->data + rowBytes * v24;
  data = refBuffer->data;
  v96 = rowBytes;
  v97 = refBuffer->rowBytes;
  v95 = v23;
  v27 = refBuffer->data + v97 * v23;
  refBuffer->data = v27;
  if (result <= 1717855599)
  {
    if (result == 1278226534)
    {
      goto LABEL_21;
    }

    v28 = 1380410945;
  }

  else
  {
    if (result == 1717855600 || result == 1919365990)
    {
      goto LABEL_21;
    }

    v28 = 1717856627;
  }

  if (result != v28)
  {
    goto LABEL_31;
  }

LABEL_21:
  if (v13 > 1717855599)
  {
    if (v13 == 1717855600 || v13 == 1919365990)
    {
      goto LABEL_28;
    }

    v29 = 1717856627;
LABEL_27:
    if (v13 == v29)
    {
      goto LABEL_28;
    }

LABEL_31:
    v93 = v22;
    v94 = v21;
    v40 = isF16Type(result);
    if (v40 && isF16Type(v13))
    {
      v30 = compareRawBuffers<half,half>(percentile, buffer->data + 2 * v93, v96, &v27[2 * v94], v97, v19 * v20, v98, zeros, refZeros);
      goto LABEL_29;
    }

    if (result <= 1717855599)
    {
      if (result != 1278226534)
      {
        v41 = 1380410945;
LABEL_40:
        if (result != v41)
        {
          goto LABEL_60;
        }
      }
    }

    else if (result != 1717855600 && result != 1919365990)
    {
      v41 = 1717856627;
      goto LABEL_40;
    }

    if (v13 == 825306677 || v13 == 1647392359 || v13 == 825437747)
    {
      if (percentile > 0.0 && percentile <= 1.0)
      {
        v42 = buffer->data;
        v100 = 0;
        v101 = 0;
        v102 = 0;
        if (v98)
        {
          LODWORD(v43) = 0;
          v44 = &v42[4 * v93];
          v45 = &data[2 * v94];
          while (!v20)
          {
LABEL_58:
            v43 = (v43 + 1);
            if (v43 >= v98)
            {
              v51 = v100;
              v50 = v101;
              goto LABEL_86;
            }
          }

          v46 = 0;
          v47 = &v45[v97 * (v95 + v43)];
          while (1)
          {
            v48 = *&v44[4 * v46 + v96 * v43];
            if (v48 == 0.0 && zeros)
            {
              goto LABEL_57;
            }

            if (*&v47[2 * v46])
            {
              break;
            }

            if (!refZeros)
            {
              v49 = v48 / 0.0001;
              goto LABEL_56;
            }

LABEL_57:
            if (v20 <= ++v46)
            {
              goto LABEL_58;
            }
          }

          v49 = (*&v47[2 * v46] - v48) / *&v47[2 * v46];
LABEL_56:
          v99 = fabsf(v49);
          std::vector<float>::push_back[abi:ne200100](&v100, &v99);
          goto LABEL_57;
        }

        v51 = 0;
        v50 = 0;
LABEL_86:
        v67 = (((v50 - v51) >> 2) * percentile);
        if (v67 > 0)
        {
          std::__sort<std::__less<float,float> &,float *>();
          v68 = (v67 - 1);
          if (v67 == 1)
          {
LABEL_88:
            v69 = 0;
            v70 = 0.0;
LABEL_118:
            v34 = (v70 / v68) * 100.0;
            v35 = v51[v69] * 100.0;
            v36 = v70 * 100.0;
            v85 = v67;
            goto LABEL_147;
          }

          v70 = 0.0;
          v82 = v51;
          v83 = (v67 - 1);
          do
          {
            v84 = *v82++;
            v70 = v70 + v84;
            --v83;
          }

          while (v83);
LABEL_117:
          v69 = v68;
          goto LABEL_118;
        }

        goto LABEL_146;
      }

LABEL_109:
      NSLog(&cfstr_CannotCompareW.isa, percentile);
      v33 = 0.0;
      v35 = 1.0e17;
      v36 = 0.0;
      v34 = 1.0e17;
      goto LABEL_30;
    }

LABEL_60:
    if (v40 && (v13 == 825306677 || v13 == 1647392359 || v13 == 825437747))
    {
      if (percentile <= 0.0 || percentile > 1.0)
      {
        goto LABEL_109;
      }

      v100 = 0;
      v101 = 0;
      v102 = 0;
      if (!v98)
      {
        v51 = 0;
        v65 = 0;
LABEL_135:
        v67 = (((v65 - v51) >> 2) * percentile);
        if (v67 > 0)
        {
          std::__sort<std::__less<float,float> &,float *>();
          v68 = (v67 - 1);
          if (v67 == 1)
          {
            goto LABEL_88;
          }

          v70 = 0.0;
          v87 = v51;
          v88 = (v67 - 1);
          do
          {
            v89 = *v87++;
            v70 = v70 + v89;
            --v88;
          }

          while (v88);
          goto LABEL_117;
        }

LABEL_146:
        v36 = 0.0;
        v34 = 1.0e17;
        v35 = 1.0e17;
        v85 = 0.0;
        v33 = 0.0;
        if (!v51)
        {
          goto LABEL_30;
        }

LABEL_147:
        operator delete(v51);
        v33 = v85;
        goto LABEL_30;
      }

      LODWORD(v52) = 0;
      v53 = v19 * v20;
      v54 = &data[2 * v94];
      while (!v53)
      {
LABEL_79:
        v52 = (v52 + 1);
        if (v52 >= v98)
        {
          v51 = v100;
          v65 = v101;
          goto LABEL_135;
        }
      }

      v55 = 0;
      while (1)
      {
        v56 = &v54[v97 * (v95 + v52)];
        __asm { FCMP            H0, #0 }

        if (_ZF && zeros)
        {
          goto LABEL_78;
        }

        if (*&v56[2 * v55])
        {
          break;
        }

        if (!refZeros)
        {
          __asm { FCVT            D0, H0 }

          v63 = _D0 / 0.0001;
          goto LABEL_77;
        }

LABEL_78:
        if (v53 <= ++v55)
        {
          goto LABEL_79;
        }
      }

      __asm { FCVT            S0, H0 }

      v63 = (*&v56[2 * v55] - _S0) / *&v56[2 * v55];
LABEL_77:
      v99 = fabsf(v63);
      std::vector<float>::push_back[abi:ne200100](&v100, &v99);
      goto LABEL_78;
    }

    if (result <= 1717855599)
    {
      if (result != 1278226534)
      {
        v66 = 1380410945;
LABEL_91:
        if (result != v66)
        {
          goto LABEL_110;
        }
      }
    }

    else if (result != 1717855600 && result != 1919365990)
    {
      v66 = 1717856627;
      goto LABEL_91;
    }

    if (isF16Type(v13))
    {
      if (percentile <= 0.0 || percentile > 1.0)
      {
        goto LABEL_109;
      }

      v71 = buffer->data;
      v100 = 0;
      v101 = 0;
      v102 = 0;
      if (!v98)
      {
        v51 = 0;
        v80 = 0;
LABEL_141:
        v67 = (((v80 - v51) >> 2) * percentile);
        if (v67 > 0)
        {
          std::__sort<std::__less<float,float> &,float *>();
          v68 = (v67 - 1);
          if (v67 == 1)
          {
            goto LABEL_88;
          }

          v70 = 0.0;
          v90 = v51;
          v91 = (v67 - 1);
          do
          {
            v92 = *v90++;
            v70 = v70 + v92;
            --v91;
          }

          while (v91);
          goto LABEL_117;
        }

        goto LABEL_146;
      }

      LODWORD(v72) = 0;
      v73 = v19 * v20;
      v74 = &v71[4 * v93];
      while (!v73)
      {
LABEL_107:
        v72 = (v72 + 1);
        if (v72 >= v98)
        {
          v51 = v100;
          v80 = v101;
          goto LABEL_141;
        }
      }

      v75 = 0;
      while (1)
      {
        v76 = *&v74[4 * v75 + v96 * v72];
        if (v76 == 0.0 && zeros)
        {
          goto LABEL_106;
        }

        __asm { FCMP            H1, #0 }

        if (!_ZF)
        {
          break;
        }

        if (!refZeros)
        {
          v79 = v76 / 0.0001;
          goto LABEL_105;
        }

LABEL_106:
        if (v73 <= ++v75)
        {
          goto LABEL_107;
        }
      }

      __asm { FCVT            S1, H1 }

      v79 = (_S1 - v76) / _S1;
LABEL_105:
      v99 = fabsf(v79);
      std::vector<float>::push_back[abi:ne200100](&v100, &v99);
      goto LABEL_106;
    }

LABEL_110:
    if (v40)
    {
      if (v13 <= 1717855599)
      {
        if (v13 == 1278226534)
        {
LABEL_122:
          v30 = compareRawBuffers<half,float>(percentile, buffer->data + 2 * v93, v96, &v27[4 * v94], v97, v19 * v20, v98, zeros, refZeros);
          goto LABEL_29;
        }

        v81 = 1380410945;
      }

      else
      {
        if (v13 == 1717855600 || v13 == 1919365990)
        {
          goto LABEL_122;
        }

        v81 = 1717856627;
      }

      if (v13 == v81)
      {
        goto LABEL_122;
      }
    }

    if (result > 1111970368)
    {
      if (result != 1111970369)
      {
        if (result == 1647392359)
        {
          goto LABEL_150;
        }

        if (result != 1278226488)
        {
          goto LABEL_155;
        }
      }
    }

    else if (result != 32)
    {
      if (result != 825306677)
      {
        v86 = 825437747;
        goto LABEL_149;
      }

LABEL_150:
      if (v13 == 825306677 || v13 == 1647392359 || v13 == 825437747)
      {
        v30 = compareRawBuffers<unsigned short,unsigned short>(buffer->data + 2 * v93, v96, &v27[2 * v94], v97, v19 * v20, v98, zeros, refZeros, percentile);
        goto LABEL_29;
      }

LABEL_155:
      NSLog(&cfstr_ThisComparison.isa);
      __assert_rtn("+[UtilsForTests compareVImageBuffer:pixelTypeResult:offset:toRefBuffer:pixelTypeRef:ignoreResultZeros:ignoreRefZeros:outlierPercentile:]", "UtilsForTests.mm", 286, "0");
    }

    if (v13 == 32 || v13 == 1278226488 || v13 == 1111970369)
    {
      v30 = compareRawBuffers<unsigned char,unsigned char>(buffer->data + v93, v96, &v27[v94], v97, v19 * v20, v98, zeros, refZeros, percentile);
      goto LABEL_29;
    }

    v86 = 825306677;
LABEL_149:
    if (result != v86)
    {
      goto LABEL_155;
    }

    goto LABEL_150;
  }

  if (v13 != 1278226534)
  {
    v29 = 1380410945;
    goto LABEL_27;
  }

LABEL_28:
  v30 = compareRawBuffers<float,float>(buffer->data + 4 * v22, rowBytes, &v27[4 * v21], v97, v19 * v20, v98, zeros, refZeros, percentile);
LABEL_29:
  v34 = v30;
  v35 = v31;
  v36 = v32;
LABEL_30:
  v37 = v34;
  v38 = v35;
  v39 = v36;
  result.var3 = v33;
  result.var2 = v39;
  result.var1 = v38;
  result.var0 = v37;
  return result;
}

+ (BaselineTestStats_s)compareBuffer:(__CVBuffer *)buffer toRefBuffer:(__CVBuffer *)refBuffer ignoreRefZeros:(BOOL)zeros outlierPercentile:(float)percentile
{
  *&v6 = percentile;
  [UtilsForTests compareBuffer:buffer offset:refBuffer toRefBuffer:0 ignoreResultZeros:zeros ignoreRefZeros:*MEMORY[0x277CBF3A8] outlierPercentile:*(MEMORY[0x277CBF3A8] + 8), v6];
  result.var3 = v10;
  result.var2 = v9;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

+ (BaselineTestStats_s)compareBuffer:(__CVBuffer *)buffer offset:(CGSize)offset toRefBuffer:(__CVBuffer *)refBuffer ignoreRefZeros:(BOOL)zeros
{
  LODWORD(v6) = 1064514355;
  [UtilsForTests compareBuffer:buffer offset:refBuffer toRefBuffer:0 ignoreResultZeros:zeros ignoreRefZeros:offset.width outlierPercentile:offset.height, v6];
  result.var3 = v10;
  result.var2 = v9;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

+ (BaselineTestStats_s)compareBuffer:(__CVBuffer *)buffer toRefBuffer:(__CVBuffer *)refBuffer ignoreResultZeros:(BOOL)zeros ignoreRefZeros:(BOOL)refZeros
{
  LODWORD(v6) = 1064514355;
  [UtilsForTests compareBuffer:buffer offset:refBuffer toRefBuffer:zeros ignoreResultZeros:refZeros ignoreRefZeros:*MEMORY[0x277CBF3A8] outlierPercentile:*(MEMORY[0x277CBF3A8] + 8), v6];
  result.var3 = v10;
  result.var2 = v9;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

+ (BaselineTestStats_s)compareBuffer:(__CVBuffer *)buffer toRefBuffer:(__CVBuffer *)refBuffer ignoreRefZeros:(BOOL)zeros
{
  [self compareBuffer:buffer offset:refBuffer toRefBuffer:zeros ignoreRefZeros:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  result.var3 = v8;
  result.var2 = v7;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

+ (unint64_t)preferredEspressoEngine
{
  if ([MEMORY[0x277CEE958] hasANE])
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

@end