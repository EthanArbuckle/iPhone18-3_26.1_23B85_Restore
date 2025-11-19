@interface ADUtils
+ (BOOL)updatePixelBufferAllocationWithNewSize:(CGSize)a3 pixelFormat:(unsigned int)a4 pixelBuffer:(__CVBuffer *)a5;
+ (__CVBuffer)pixelBufferFromData:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 pixelFormat:(const char *)a6;
+ (double)addAnglesToRotation:(double)a3 angles:(double)a4;
+ (double)calcRotationAngle:(float *)a3;
+ (float32x2_t)calcRotationMatrix:(float32x4_t)a1;
+ (id)getStandardNameForBufferOfType:(id)a3 moduleName:(id)a4;
+ (id)prioritizationAsString:(int64_t)a3;
+ (id)undistortedCalibrationWithSameFOV:(id)a3;
+ (int64_t)ADReturnFromOSStatus:(int)a3;
+ (int64_t)convertToLevelsConfidence:(__CVBuffer *)a3 confidenceOutput:(__CVBuffer *)a4 confidenceLevelRanges:(id)a5;
+ (int64_t)copyModifyNormalsPixelBuffer:(__CVBuffer *)a3 output:(__CVBuffer *)a4 normalsRotation:(int64_t)a5;
+ (int64_t)filterInvalidsFromFloatImage:(__CVBuffer *)a3 minValue:(float)a4 maxValue:(float)a5 clampToMinMax:(BOOL)a6;
+ (int64_t)fuseCurrentDepth:(__CVBuffer *)a3 previousDepth:(__CVBuffer *)a4 intoOutputDepth:(__CVBuffer *)a5 currentConfidence:(__CVBuffer *)a6 previousConfidence:(__CVBuffer *)a7 intoOutputConfidence:(__CVBuffer *)a8 alpha:(float)a9 confidenceUnits:(unint64_t)a10;
+ (int64_t)fuseCurrentDepthAndConfidenceMaps:(__CVBuffer *)a3 previousDepth:(__CVBuffer *)a4 currentConfidence:(__CVBuffer *)a5 previousConfidence:(__CVBuffer *)a6 outputDepth:(__CVBuffer *)a7 outputConfidence:(__CVBuffer *)a8 defaultAlpha:(float)a9 depthMaxDiff:(float)a10;
+ (int64_t)fuseCurrentMap:(__CVBuffer *)a3 previousMap:(__CVBuffer *)a4 intoOutputMap:(__CVBuffer *)a5 usingAlpha:(__CVBuffer *)a6 defaultAlpha:(float)a7 diffThreshold:(float)a8;
+ (int64_t)postProcessConfidence:(__CVBuffer *)a3 confidenceOutput:(__CVBuffer *)a4 rawConfidenceUnits:(unint64_t)a5 outConfidenceUnits:(unint64_t)a6 confidenceLevelRanges:(id)a7;
+ (int64_t)postProcessDepth:(__CVBuffer *)a3 depthOutput:(__CVBuffer *)a4 inputRoi:(CGRect)a5;
+ (int64_t)postProcessNormals:(__CVBuffer *)a3 normalsOutput:(__CVBuffer *)a4 normalsRotation:(int64_t)a5;
+ (int64_t)postProcessWithDepth:(__CVBuffer *)a3 confidence:(__CVBuffer *)a4 normals:(__CVBuffer *)a5 depthOutput:(__CVBuffer *)a6 confidenceOutput:(__CVBuffer *)a7 normalsOutput:(__CVBuffer *)a8 normalsRotation:(int64_t)a9 rawConfidenceUnits:(unint64_t)a10 outConfidenceUnits:(unint64_t)a11 confidenceLevelRanges:(id)a12;
+ (int64_t)scaleConvertRotateImage:(__CVBuffer *)a3 rotateBy:(unsigned __int8)a4 cropBy:(CGRect)a5 scaleInto:(__CVBuffer *)a6 intermediateScalingBuffer:(__CVBuffer *)a7 intermediateRotatingBuffer:(__CVBuffer *)a8 useVT:(BOOL)a9;
+ (int64_t)warpAndFuseWithCurrDepth:(__CVBuffer *)a3 prevDepth:(__CVBuffer *)a4 currNormals:(__CVBuffer *)a5 prevNormals:(__CVBuffer *)a6 opticalFlow:(__CVBuffer *)a7 alphaMap:(__CVBuffer *)a8 defaultAlpha:(float)a9 depthOutput:(__CVBuffer *)pixelBuffer normalsOutput:(__CVBuffer *)a11;
+ (int64_t)warpMap:(__CVBuffer *)a3 toOutput:(__CVBuffer *)a4 usingOpticalFlow:(__CVBuffer *)a5;
+ (int64_t)warpPreviousDepth:(__CVBuffer *)a3 intoCurrentDepth:(__CVBuffer *)a4 previousConfidence:(__CVBuffer *)a5 intoCurrentConfidence:(__CVBuffer *)a6 usingOpticalFlow:(__CVBuffer *)a7;
+ (void)convertRGBAFloat:(__CVBuffer *)a3 toPlanar:(__CVBuffer *)a4;
+ (void)updatePixelBufferIOSurfaceLabel:(id)a3 pixelBuffer:(__CVBuffer *)a4;
@end

@implementation ADUtils

+ (__CVBuffer)pixelBufferFromData:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 pixelFormat:(const char *)a6
{
  v9 = a3;
  if (!strcmp(a6, "24RG"))
  {
    v10 = 24;
  }

  else if (!strcmp(a6, "ARGB"))
  {
    v10 = 32;
  }

  else
  {
    v10 = bswap32(*a6);
  }

  pixelBufferOut = 0;
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], a4, a5, v10, BufferAttributes, &pixelBufferOut))
  {
    v13 = 0;
  }

  else
  {
    v13 = pixelBufferOut;
  }

  if (PixelBufferUtils::pixelBufferFromData(v9, v13, v12))
  {
    CVPixelBufferRelease(v13);
    v13 = 0;
  }

  return v13;
}

+ (id)prioritizationAsString:(int64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3 >= 5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v7 = a3;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown prioritization numbered: %lu", buf, 0xCu);
    }

    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a3];
  }

  else
  {
    v4 = off_278CA1558[a3];
  }

  return v4;
}

+ (id)undistortedCalibrationWithSameFOV:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 distortionModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_2;
  }

  v7 = [v3 distortionModel];
  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  if ((v8 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v31 = [v3 distortionModel];
      *buf = 138543362;
      v37 = v31;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot calculate undistorted fov for distortion %{public}@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v9 = [v3 distortionModel];
  v10 = [v9 XThetaType];

  if (v10 == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot calculate undistorted fov for fsintheta image", buf, 2u);
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  if (v10)
  {
LABEL_2:
    v6 = v3;
    goto LABEL_12;
  }

  v6 = [v3 mutableCopy];
  v11 = objc_opt_new();
  [v6 setDistortionModel:v11];

  [v6 intrinsicMatrix];
  v33 = v13;
  v34 = v12;
  v35 = v14;
  [v6 referenceDimensions];
  v16 = v15;
  [v6 referenceDimensions];
  v18 = v17;
  [v6 referenceDimensions];
  v20 = v19;
  [v6 referenceDimensions];
  v22 = v21;
  v23 = *&v34 / v18;
  v24 = 0.5 / tan(0.5 / v23);
  v25 = v24;
  v26 = *&v34 / v16;
  v27 = 0.5 / tan(0.5 / v26);
  *&v28 = v20 * v27;
  v29 = COERCE_DOUBLE(__PAIR64__(HIDWORD(v34), v28));
  *&v30 = v22 * v25;
  [v6 setIntrinsicMatrix:{v29, COERCE_DOUBLE(__PAIR64__(v30, v33)), v35}];
LABEL_12:

  return v6;
}

+ (void)convertRGBAFloat:(__CVBuffer *)a3 toPlanar:(__CVBuffer *)a4
{
  srcChannels[4] = *MEMORY[0x277D85DE8];
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  CVPixelBufferLockBaseAddress(a4, 0);
  memset(&v65, 0, sizeof(v65));
  v6 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &v65);
  memset(&v64, 0, sizeof(v64));
  PixelBufferUtils::asVImageBuffer(a4, *v6, &v64);
  v63.height = 0;
  v63.width = 0;
  PixelBufferUtils::asVImageBuffer(a4, *v6, &v63);
  v62.height = 0;
  v62.width = 0;
  PixelBufferUtils::asVImageBuffer(a4, *v6, &v62);
  v61.height = 0;
  v61.width = 0;
  v54 = a4;
  PixelBufferUtils::asVImageBuffer(a4, *v6, &v61);
  v7 = (v64.height * v64.rowBytes) >> 2;
  data = v64.data;
  v8 = v64.rowBytes >> 2;
  v56 = v64.data + v7 + v7 + v7;
  v57 = v64.data + v7 + v7;
  v61.data = v56;
  v61.rowBytes = v64.rowBytes >> 2;
  v62.data = v57;
  v62.rowBytes = v64.rowBytes >> 2;
  v63.data = v64.data + v7;
  v58 = v64.data + v7;
  v63.rowBytes = v64.rowBytes >> 2;
  v64.rowBytes >>= 2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  pixelBuffer = a3;
  if (PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, 0) == 8)
  {
    height = v65.height;
    if (v65.height)
    {
      v11 = 0;
      v12 = 0;
      v13 = *&v65.width;
      v14 = 2 * v65.width;
      if (LODWORD(v65.width))
      {
        v15 = (v65.width - 1) >> 32 == 0;
      }

      else
      {
        v15 = 0;
      }

      v16 = !v15;
      v55 = (v65.width < 0x10) | v16;
      do
      {
        BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
        if (v13)
        {
          v18 = &BaseAddress[*(&v13 + 1) * v11];
          v19 = &data[v8 * v11];
          v20 = &v58[v8 * v11];
          v21 = &v57[v8 * v11];
          v22 = &v56[v8 * v11];
          if (v55)
          {
            v23 = 0;
            v24 = 0;
          }

          else
          {
            v24 = 0;
            v23 = 0;
            v27 = &v19[v14];
            v28 = &v20[v14];
            v29 = &v21[v14];
            v30 = &v22[v14];
            v31 = &v18[8 * v13];
            v33 = v19 < &v21[v14] && v21 < v27;
            v35 = v19 < v30 && v22 < v27;
            v37 = v19 < v31 && v18 < v27;
            v39 = v20 < v29 && v21 < v28;
            v41 = v20 < v30 && v22 < v28;
            v43 = v20 < v31 && v18 < v28;
            v45 = v21 < v30 && v22 < v29;
            v47 = v21 < v31 && v18 < v29;
            v49 = v22 < v31 && v18 < v30;
            if ((v20 >= v27 || v19 >= v28) && !v33 && !v35 && !v37 && !v39 && !v41 && !v43 && !v45 && !v47 && !v49)
            {
              v51 = 0;
              v52 = &data[v8 * v12];
              do
              {
                v53 = &v18[2 * (v51 & 0xFFFFFFE0)];
                v68 = vld4q_s16(v53);
                *(v52 + v7) = v68.val[1];
                *(v52 + 2 * v7) = v68.val[2];
                *v52 = v68.val[0];
                *(v52 + 3 * v7) = v68.val[3];
                v51 += 32;
                ++v52;
              }

              while (32 * ((v13 >> 3) & 0x3FFFFFFF) != v51);
              v23 = v13 & 0x1FFFFFFF8;
              v24 = v13 & 0xFFFFFFF8;
              if (v13 == (v13 & 0x1FFFFFFF8))
              {
                goto LABEL_10;
              }
            }
          }

          v25 = v24 + 1;
          v26 = 4 * v24;
          do
          {
            *&v19[2 * v23] = *&v18[2 * v26];
            *&v20[2 * v23] = *&v18[2 * v26 + 2];
            *&v21[2 * v23] = *&v18[2 * v26 + 4];
            *&v22[2 * v23] = *&v18[2 * v26 + 6];
            v23 = v25++;
            v26 += 4;
          }

          while (v13 > v23);
        }

LABEL_10:
        v11 = ++v12;
      }

      while (height > v12);
    }
  }

  else
  {
    srcChannels[0] = CVPixelBufferGetBaseAddress(a3);
    srcChannels[1] = srcChannels[0] + 4;
    srcChannels[2] = srcChannels[0] + 8;
    srcChannels[3] = srcChannels[0] + 12;
    destPlanarBuffers[0] = &v64;
    destPlanarBuffers[1] = &v63;
    destPlanarBuffers[2] = &v62;
    destPlanarBuffers[3] = &v61;
    vImageConvert_ChunkyToPlanarF(srcChannels, destPlanarBuffers, 4u, 0x10uLL, v65.width, v65.height, v65.rowBytes, 0);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferUnlockBaseAddress(v54, 0);
}

+ (int64_t)ADReturnFromOSStatus:(int)a3
{
  if (a3)
  {
    return -22950;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)fuseCurrentDepth:(__CVBuffer *)a3 previousDepth:(__CVBuffer *)a4 intoOutputDepth:(__CVBuffer *)a5 currentConfidence:(__CVBuffer *)a6 previousConfidence:(__CVBuffer *)a7 intoOutputConfidence:(__CVBuffer *)a8 alpha:(float)a9 confidenceUnits:(unint64_t)a10
{
  if (!a3)
  {
    return -22953;
  }

  if (!a5)
  {
    return -22953;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType == 1717856627 || PixelFormatType == 1751411059)
  {
    return -22953;
  }

  if (a6 && a7 && a8)
  {
    LODWORD(v20) = 0.5;
    *&v19 = a9;

    return [a1 fuseCurrentDepthAndConfidenceMaps:a3 previousDepth:a4 currentConfidence:a6 previousConfidence:a7 outputDepth:a5 outputConfidence:a8 defaultAlpha:v19 depthMaxDiff:v20];
  }

  else
  {
    LODWORD(v20) = 0.5;
    *&v19 = a9;

    return [a1 fuseCurrentMap:a3 previousMap:a4 intoOutputMap:a5 usingAlpha:0 defaultAlpha:v19 diffThreshold:v20];
  }
}

+ (int64_t)fuseCurrentDepthAndConfidenceMaps:(__CVBuffer *)a3 previousDepth:(__CVBuffer *)a4 currentConfidence:(__CVBuffer *)a5 previousConfidence:(__CVBuffer *)a6 outputDepth:(__CVBuffer *)a7 outputConfidence:(__CVBuffer *)a8 defaultAlpha:(float)a9 depthMaxDiff:(float)a10
{
  v163 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v18 = CVPixelBufferGetPixelFormatType(a5);
  if (PixelFormatType <= 1717856626)
  {
    if (PixelFormatType == 1278226536)
    {
      goto LABEL_16;
    }

    if (PixelFormatType != 1717855600)
    {
LABEL_60:
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        return -22956;
      }

      PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
      if (v160 >= 0)
      {
        v140 = __p;
      }

      else
      {
        v140 = __p[0];
      }

      *buf = 136446210;
      v162 = v140;
      v21 = MEMORY[0x277D86220];
      v22 = "unsupported depth map format (%{public}s)";
LABEL_77:
      _os_log_error_impl(&dword_2402F6000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
      if (v160 < 0)
      {
        operator delete(__p[0]);
      }

      return -22956;
    }

LABEL_8:
    if (v18 > 1717855599)
    {
      if (v18 != 1717855600)
      {
        if (v18 != 1751410032)
        {
LABEL_11:
          v19 = v18;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            PixelBufferUtils::pixelFormatAsString(v19, __p);
            if (v160 >= 0)
            {
              v20 = __p;
            }

            else
            {
              v20 = __p[0];
            }

            *buf = 136446210;
            v162 = v20;
            v21 = MEMORY[0x277D86220];
            v22 = "unsupported conf map format (%{public}s)";
            goto LABEL_77;
          }

          return -22956;
        }

LABEL_50:
        CVPixelBufferLockBaseAddress(a3, 1uLL);
        CVPixelBufferLockBaseAddress(a4, 1uLL);
        CVPixelBufferLockBaseAddress(a7, 0);
        CVPixelBufferLockBaseAddress(a5, 1uLL);
        CVPixelBufferLockBaseAddress(a6, 1uLL);
        CVPixelBufferLockBaseAddress(a8, 0);
        Width = CVPixelBufferGetWidth(a3);
        Height = CVPixelBufferGetHeight(a3);
        BaseAddress = CVPixelBufferGetBaseAddress(a3);
        v143 = CVPixelBufferGetBaseAddress(a4);
        v89 = CVPixelBufferGetBaseAddress(a7);
        pixelBuffer = a8;
        v90 = CVPixelBufferGetBaseAddress(a5);
        v91 = CVPixelBufferGetBaseAddress(a6);
        v92 = CVPixelBufferGetBaseAddress(a8);
        v153 = a3;
        BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
        v154 = a4;
        v94 = CVPixelBufferGetBytesPerRow(a4);
        v155 = a7;
        v95 = CVPixelBufferGetBytesPerRow(a7);
        v156 = a5;
        v96 = CVPixelBufferGetBytesPerRow(a5);
        v157 = a6;
        v97 = CVPixelBufferGetBytesPerRow(a6);
        v98 = CVPixelBufferGetBytesPerRow(pixelBuffer);
        if (Height && Width)
        {
          for (i = 0; i != Height; ++i)
          {
            v100 = &BaseAddress[i * BytesPerRow];
            v101 = &v143[i * v94];
            v102 = &v89[i * v95];
            v103 = &v90[i * v96];
            v104 = &v91[i * v97];
            v105 = Width;
            v106 = &v92[i * v98];
            do
            {
              v107 = *v100;
              _H2 = *v103;
              if (*v101 > 0.0)
              {
                __asm { FCVT            S2, H2 }

                _H4 = *v104;
                __asm { FCVT            S5, H4 }

                v112 = _S2 * _S5;
                if (v112 <= a9)
                {
                  v112 = a9;
                }

                v113 = 1.0 - v112;
                v107 = (v107 * v112) + *v101 * v113;
                __asm { FCVT            D3, H4 }

                _D2 = (v112 * _S2) + _D3 * v113;
                __asm { FCVT            H2, D2 }
              }

              *v102++ = v107;
              *v106 = _H2;
              v106 += 2;
              ++v100;
              ++v101;
              v103 += 2;
              v104 += 2;
              --v105;
            }

            while (v105);
          }
        }

        goto LABEL_72;
      }
    }

    else if (v18 != 1278226534)
    {
      if (v18 != 1278226536)
      {
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    CVPixelBufferLockBaseAddress(a3, 1uLL);
    CVPixelBufferLockBaseAddress(a4, 1uLL);
    CVPixelBufferLockBaseAddress(a7, 0);
    CVPixelBufferLockBaseAddress(a5, 1uLL);
    CVPixelBufferLockBaseAddress(a6, 1uLL);
    CVPixelBufferLockBaseAddress(a8, 0);
    v152 = CVPixelBufferGetWidth(a3);
    v117 = CVPixelBufferGetHeight(a3);
    v148 = CVPixelBufferGetBaseAddress(a3);
    v144 = CVPixelBufferGetBaseAddress(a4);
    v118 = CVPixelBufferGetBaseAddress(a7);
    pixelBuffer = a8;
    v119 = CVPixelBufferGetBaseAddress(a5);
    v120 = CVPixelBufferGetBaseAddress(a6);
    v121 = CVPixelBufferGetBaseAddress(a8);
    v153 = a3;
    v122 = CVPixelBufferGetBytesPerRow(a3);
    v154 = a4;
    v123 = CVPixelBufferGetBytesPerRow(a4);
    v155 = a7;
    v124 = CVPixelBufferGetBytesPerRow(a7);
    v156 = a5;
    v125 = CVPixelBufferGetBytesPerRow(a5);
    v157 = a6;
    v126 = CVPixelBufferGetBytesPerRow(a6);
    v127 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    if (v117 && v152)
    {
      for (j = 0; j != v117; ++j)
      {
        v129 = &v148[j * v122];
        v130 = &v144[j * v123];
        v131 = &v118[j * v124];
        v132 = &v119[j * v125];
        v133 = &v120[j * v126];
        v134 = v152;
        v135 = &v121[j * v127];
        do
        {
          v136 = *v129;
          v137 = *v132;
          if (*v130 > 0.0)
          {
            v138 = v137 * *v133;
            if (v138 <= a9)
            {
              v138 = a9;
            }

            v139 = 1.0 - v138;
            v136 = (v136 * v138) + *v130 * v139;
            v137 = (v137 * v138) + *v133 * v139;
          }

          *v131++ = v136;
          *v135++ = v137;
          ++v129;
          ++v130;
          ++v132;
          ++v133;
          --v134;
        }

        while (v134);
      }
    }

    goto LABEL_72;
  }

  if (PixelFormatType == 1717856627)
  {
    goto LABEL_8;
  }

  if (PixelFormatType != 1751411059 && PixelFormatType != 1751410032)
  {
    goto LABEL_60;
  }

LABEL_16:
  if (v18 > 1717855599)
  {
    if (v18 != 1717855600)
    {
      if (v18 != 1751410032)
      {
LABEL_19:
        v23 = v18;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          PixelBufferUtils::pixelFormatAsString(v23, __p);
          if (v160 >= 0)
          {
            v24 = __p;
          }

          else
          {
            v24 = __p[0];
          }

          *buf = 136446210;
          v162 = v24;
          v21 = MEMORY[0x277D86220];
          v22 = "unsupported conf map format (%{public}s)";
          goto LABEL_77;
        }

        return -22956;
      }

      goto LABEL_26;
    }

LABEL_37:
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    CVPixelBufferLockBaseAddress(a4, 1uLL);
    CVPixelBufferLockBaseAddress(a7, 0);
    CVPixelBufferLockBaseAddress(a5, 1uLL);
    CVPixelBufferLockBaseAddress(a6, 1uLL);
    CVPixelBufferLockBaseAddress(a8, 0);
    v150 = CVPixelBufferGetWidth(a3);
    v61 = CVPixelBufferGetHeight(a3);
    v146 = CVPixelBufferGetBaseAddress(a3);
    v142 = CVPixelBufferGetBaseAddress(a4);
    v62 = CVPixelBufferGetBaseAddress(a7);
    pixelBuffer = a8;
    v63 = CVPixelBufferGetBaseAddress(a5);
    v64 = CVPixelBufferGetBaseAddress(a6);
    v65 = CVPixelBufferGetBaseAddress(a8);
    v153 = a3;
    v66 = CVPixelBufferGetBytesPerRow(a3);
    v154 = a4;
    v67 = CVPixelBufferGetBytesPerRow(a4);
    v155 = a7;
    v68 = CVPixelBufferGetBytesPerRow(a7);
    v156 = a5;
    v69 = CVPixelBufferGetBytesPerRow(a5);
    v157 = a6;
    v70 = CVPixelBufferGetBytesPerRow(a6);
    v71 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    if (v61 && v150)
    {
      for (k = 0; k != v61; ++k)
      {
        v73 = &v146[k * v66];
        v74 = &v142[k * v67];
        v75 = &v62[k * v68];
        v76 = &v63[k * v69];
        v77 = &v64[k * v70];
        v78 = v150;
        v79 = &v65[k * v71];
        do
        {
          _H2 = *v73;
          v81 = *v76;
          __asm { FCMP            H3, #0 }

          if (!_ZF & _CF)
          {
            v83 = v81 * *v77;
            if (v83 <= a9)
            {
              v83 = a9;
            }

            __asm
            {
              FCVT            S2, H2
              FCVT            D3, H3
            }

            v86 = 1.0 - v83;
            _D2 = (v83 * _S2) + _D3 * v86;
            __asm { FCVT            H2, D2 }

            v81 = (v81 * v83) + *v77 * v86;
          }

          *v75 = _H2;
          v75 += 2;
          *v79++ = v81;
          v73 += 2;
          v74 += 2;
          ++v76;
          ++v77;
          --v78;
        }

        while (v78);
      }
    }

    goto LABEL_72;
  }

  if (v18 == 1278226534)
  {
    goto LABEL_37;
  }

  if (v18 != 1278226536)
  {
    goto LABEL_19;
  }

LABEL_26:
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  CVPixelBufferLockBaseAddress(a4, 1uLL);
  CVPixelBufferLockBaseAddress(a7, 0);
  CVPixelBufferLockBaseAddress(a5, 1uLL);
  CVPixelBufferLockBaseAddress(a6, 1uLL);
  CVPixelBufferLockBaseAddress(a8, 0);
  v149 = CVPixelBufferGetWidth(a3);
  v25 = CVPixelBufferGetHeight(a3);
  v145 = CVPixelBufferGetBaseAddress(a3);
  v141 = CVPixelBufferGetBaseAddress(a4);
  v26 = CVPixelBufferGetBaseAddress(a7);
  pixelBuffer = a8;
  v27 = CVPixelBufferGetBaseAddress(a5);
  v28 = CVPixelBufferGetBaseAddress(a6);
  v29 = CVPixelBufferGetBaseAddress(a8);
  v153 = a3;
  v30 = CVPixelBufferGetBytesPerRow(a3);
  v154 = a4;
  v31 = CVPixelBufferGetBytesPerRow(a4);
  v155 = a7;
  v32 = CVPixelBufferGetBytesPerRow(a7);
  v156 = a5;
  v33 = CVPixelBufferGetBytesPerRow(a5);
  v157 = a6;
  v34 = CVPixelBufferGetBytesPerRow(a6);
  v35 = CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (v25 && v149)
  {
    for (m = 0; m != v25; ++m)
    {
      v37 = &v145[m * v30];
      v38 = &v141[m * v31];
      v39 = &v26[m * v32];
      v40 = &v27[m * v33];
      v41 = &v28[m * v34];
      v42 = v149;
      v43 = &v29[m * v35];
      do
      {
        _H1 = *v37;
        _H2 = *v40;
        __asm { FCMP            H3, #0 }

        if (!_ZF & _CF)
        {
          __asm { FCVT            S2, H2 }

          _H4 = *v41;
          __asm { FCVT            S5, H4 }

          v54 = _S2 * _S5;
          if (v54 <= a9)
          {
            v54 = a9;
          }

          __asm
          {
            FCVT            S1, H1
            FCVT            D3, H3
          }

          v57 = 1.0 - v54;
          _D1 = (v54 * _S1) + _D3 * v57;
          __asm
          {
            FCVT            H1, D1
            FCVT            D3, H4
          }

          _D2 = (v54 * _S2) + _D3 * v57;
          __asm { FCVT            H2, D2 }
        }

        *v39 = _H1;
        v39 += 2;
        *v43 = _H2;
        v43 += 2;
        v37 += 2;
        v38 += 2;
        v40 += 2;
        v41 += 2;
        --v42;
      }

      while (v42);
    }
  }

LABEL_72:
  CVPixelBufferUnlockBaseAddress(v153, 1uLL);
  CVPixelBufferUnlockBaseAddress(v154, 1uLL);
  CVPixelBufferUnlockBaseAddress(v155, 0);
  CVPixelBufferUnlockBaseAddress(v156, 1uLL);
  CVPixelBufferUnlockBaseAddress(v157, 1uLL);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  return 0;
}

+ (int64_t)fuseCurrentMap:(__CVBuffer *)a3 previousMap:(__CVBuffer *)a4 intoOutputMap:(__CVBuffer *)a5 usingAlpha:(__CVBuffer *)a6 defaultAlpha:(float)a7 diffThreshold:(float)a8
{
  v406 = *MEMORY[0x277D85DE8];
  result = -22953;
  if (!a3 || !a4 || !a5)
  {
    return result;
  }

  v400 = *&a8;
  v401 = *&a7;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType > 1717856626)
  {
    if (PixelFormatType != 1717856627)
    {
      if (PixelFormatType != 1751411059 && PixelFormatType != 1751410032)
      {
        goto LABEL_91;
      }

      goto LABEL_13;
    }

LABEL_11:
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    CVPixelBufferLockBaseAddress(a4, 1uLL);
    CVPixelBufferLockBaseAddress(a5, 0);
    memset(&__p, 0, sizeof(__p));
    rowBytes = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &__p);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(a4, *rowBytes, &buf);
    memset(&v403, 0, sizeof(v403));
    PixelBufferUtils::asVImageBuffer(a5, *rowBytes, &v403);
    if (a6)
    {
      CVPixelBufferLockBaseAddress(a6, 1uLL);
      PixelBufferUtils::asVImageBuffer(a6, *rowBytes, &v402);
      data = v402.data;
      rowBytes = v402.rowBytes;
    }

    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    if (Height && Width)
    {
      v106 = v403.rowBytes;
      v107 = __p.data;
      v108 = __p.rowBytes;
      v109 = buf.data;
      v110 = buf.rowBytes;
      v111 = v403.data;
      if (a6)
      {
        if (Width > 7)
        {
          v268 = v403.data + 4 * Width + v403.rowBytes * (Height - 1);
          v270 = v403.data < buf.data + 4 * Width + buf.rowBytes * (Height - 1) && buf.data < v268;
          v272 = v403.data < &data[4 * Width + rowBytes * (Height - 1)] && data < v268;
          v273 = __p.data >= v268 || v403.data >= __p.data + 4 * Width + __p.rowBytes * (Height - 1);
          if (!v273 || ((v403.rowBytes | __p.rowBytes) & 0x8000000000000000) != 0 || v270 || ((v403.rowBytes | buf.rowBytes) & 0x8000000000000000) != 0 || v272 || ((v403.rowBytes | rowBytes) & 0x8000000000000000) != 0)
          {
            for (i = 0; i != Height; ++i)
            {
              v362 = (v107->f32 + v108 * i);
              v363 = (v109->f32 + v110 * i);
              v364 = (v111->i32 + v106 * i);
              v365 = Width;
              v366 = &data[i * rowBytes];
              do
              {
                v367 = *v362++;
                v368 = v367;
                v369 = *v363++;
                v370 = v369;
                v371 = *v366++;
                v372 = v371;
                if (v371 >= 0.0)
                {
                  v373 = v372;
                }

                else
                {
                  v373 = 0.0;
                }

                if (v372 <= 1.0)
                {
                  v374 = v373;
                }

                else
                {
                  v374 = 1.0;
                }

                if (vabds_f32(v368, v370) >= *v400.i32)
                {
                  v374 = *v401.i32;
                }

                v375 = (v370 * (1.0 - v374)) + (v368 * v374);
                if (v370 > 0.0)
                {
                  v368 = v375;
                }

                *v364++ = v368;
                --v365;
              }

              while (v365);
            }
          }

          else
          {
            v274 = 0;
            v275 = vdupq_lane_s32(v400, 0);
            v276 = vdupq_lane_s32(v401, 0);
            __asm { FMOV            V2.4S, #1.0 }

            do
            {
              v278 = data;
              v279 = v111;
              v280 = v109;
              v281 = v107;
              v282 = Width & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                v283 = *v281++;
                v284 = v283;
                v285 = *v280++;
                v286 = v285;
                v287 = *v278++;
                v288 = vbslq_s8(vcgtq_f32(v275, vabdq_f32(v284, v286)), vbslq_s8(vcgtq_f32(v287, _Q2), _Q2, vbicq_s8(v287, vcltzq_f32(v287))), v276);
                *v279++ = vbslq_s8(vclezq_f32(v286), v284, vmlaq_f32(vmulq_f32(v286, vsubq_f32(_Q2, v288)), v288, v284));
                v282 -= 4;
              }

              while (v282);
              if (Width != (Width & 0xFFFFFFFFFFFFFFFCLL))
              {
                v289 = Width & 0xFFFFFFFFFFFFFFFCLL;
                do
                {
                  v290 = v107->f32[v289];
                  v291 = v109->f32[v289];
                  v292 = *&data[4 * v289];
                  if (v292 >= 0.0)
                  {
                    v293 = *&data[4 * v289];
                  }

                  else
                  {
                    v293 = 0.0;
                  }

                  if (v292 <= 1.0)
                  {
                    v294 = v293;
                  }

                  else
                  {
                    v294 = 1.0;
                  }

                  if (vabds_f32(v290, v291) >= *v400.i32)
                  {
                    v294 = *v401.i32;
                  }

                  v295 = (v291 * (1.0 - v294)) + (v290 * v294);
                  if (v291 > 0.0)
                  {
                    v290 = v295;
                  }

                  *&v111->i32[v289++] = v290;
                }

                while (Width != v289);
              }

              ++v274;
              v107 = (v107 + v108);
              v109 = (v109 + v110);
              v111 = (v111 + v106);
              data += rowBytes;
            }

            while (v274 != Height);
          }
        }

        else
        {
          v112 = (data + 12);
          v113 = (v403.data + 12);
          v114 = (buf.data + 12);
          v115 = (__p.data + 12);
          do
          {
            v116 = *(v115 - 3);
            v117 = *(v114 - 3);
            v118 = *(v112 - 3);
            if (v118 >= 0.0)
            {
              v119 = *(v112 - 3);
            }

            else
            {
              v119 = 0.0;
            }

            if (v118 <= 1.0)
            {
              v120 = v119;
            }

            else
            {
              v120 = 1.0;
            }

            if (vabds_f32(v116, v117) >= *v400.i32)
            {
              v120 = *v401.i32;
            }

            v121 = (v117 * (1.0 - v120)) + (v116 * v120);
            if (v117 > 0.0)
            {
              v116 = v121;
            }

            *(v113 - 3) = v116;
            if (Width != 1)
            {
              v122 = *(v115 - 2);
              v123 = *(v114 - 2);
              v124 = *(v112 - 2);
              if (v124 >= 0.0)
              {
                v125 = *(v112 - 2);
              }

              else
              {
                v125 = 0.0;
              }

              if (v124 <= 1.0)
              {
                v126 = v125;
              }

              else
              {
                v126 = 1.0;
              }

              if (vabds_f32(v122, v123) >= *v400.i32)
              {
                v126 = *v401.i32;
              }

              v127 = (v123 * (1.0 - v126)) + (v122 * v126);
              if (v123 > 0.0)
              {
                v122 = v127;
              }

              *(v113 - 2) = v122;
              if (Width != 2)
              {
                v128 = *(v115 - 1);
                v129 = *(v114 - 1);
                v130 = *(v112 - 1);
                if (v130 >= 0.0)
                {
                  v131 = *(v112 - 1);
                }

                else
                {
                  v131 = 0.0;
                }

                if (v130 <= 1.0)
                {
                  v132 = v131;
                }

                else
                {
                  v132 = 1.0;
                }

                if (vabds_f32(v128, v129) >= *v400.i32)
                {
                  v132 = *v401.i32;
                }

                v133 = (v129 * (1.0 - v132)) + (v128 * v132);
                if (v129 > 0.0)
                {
                  v128 = v133;
                }

                *(v113 - 1) = v128;
                if (Width != 3)
                {
                  v134 = *v115;
                  v135 = *v114;
                  if (*v112 >= 0.0)
                  {
                    v136 = *v112;
                  }

                  else
                  {
                    v136 = 0.0;
                  }

                  if (*v112 <= 1.0)
                  {
                    v137 = v136;
                  }

                  else
                  {
                    v137 = 1.0;
                  }

                  if (vabds_f32(v134, v135) >= *v400.i32)
                  {
                    v137 = *v401.i32;
                  }

                  v138 = (v135 * (1.0 - v137)) + (v134 * v137);
                  if (v135 > 0.0)
                  {
                    v134 = v138;
                  }

                  *v113 = v134;
                  if (Width != 4)
                  {
                    v139 = v115[1];
                    v140 = v114[1];
                    v141 = v112[1];
                    if (v141 >= 0.0)
                    {
                      v142 = v112[1];
                    }

                    else
                    {
                      v142 = 0.0;
                    }

                    if (v141 <= 1.0)
                    {
                      v143 = v142;
                    }

                    else
                    {
                      v143 = 1.0;
                    }

                    if (vabds_f32(v139, v140) >= *v400.i32)
                    {
                      v143 = *v401.i32;
                    }

                    v144 = (v140 * (1.0 - v143)) + (v139 * v143);
                    if (v140 > 0.0)
                    {
                      v139 = v144;
                    }

                    v113[1] = v139;
                    if (Width != 5)
                    {
                      v145 = v115[2];
                      v146 = v114[2];
                      v147 = v112[2];
                      if (v147 >= 0.0)
                      {
                        v148 = v112[2];
                      }

                      else
                      {
                        v148 = 0.0;
                      }

                      if (v147 <= 1.0)
                      {
                        v149 = v148;
                      }

                      else
                      {
                        v149 = 1.0;
                      }

                      if (vabds_f32(v145, v146) >= *v400.i32)
                      {
                        v149 = *v401.i32;
                      }

                      v150 = (v146 * (1.0 - v149)) + (v145 * v149);
                      if (v146 > 0.0)
                      {
                        v145 = v150;
                      }

                      v113[2] = v145;
                      if (Width != 6)
                      {
                        v151 = v115[3];
                        v152 = v114[3];
                        v153 = v112[3];
                        if (v153 >= 0.0)
                        {
                          v154 = v112[3];
                        }

                        else
                        {
                          v154 = 0.0;
                        }

                        if (v153 <= 1.0)
                        {
                          v155 = v154;
                        }

                        else
                        {
                          v155 = 1.0;
                        }

                        if (vabds_f32(v151, v152) >= *v400.i32)
                        {
                          v155 = *v401.i32;
                        }

                        v156 = (v152 * (1.0 - v155)) + (v151 * v155);
                        if (v152 > 0.0)
                        {
                          v151 = v156;
                        }

                        v113[3] = v151;
                      }
                    }
                  }
                }
              }
            }

            v112 = (v112 + rowBytes);
            v113 = (v113 + v106);
            v114 = (v114 + v110);
            v115 = (v115 + v108);
            --Height;
          }

          while (Height);
        }
      }

      else
      {
        v251 = 1.0 - *v401.i32;
        if (Width > 7)
        {
          v338 = v403.data + 4 * Width + v403.rowBytes * (Height - 1);
          v340 = v403.data < buf.data + 4 * Width + buf.rowBytes * (Height - 1) && buf.data < v338;
          v341 = __p.data >= v338 || v403.data >= __p.data + 4 * Width + __p.rowBytes * (Height - 1);
          if (!v341 || ((v403.rowBytes | __p.rowBytes) & 0x8000000000000000) != 0 || v340 || ((v403.rowBytes | buf.rowBytes) & 0x8000000000000000) != 0)
          {
            for (j = 0; j != Height; ++j)
            {
              v391 = (v107->f32 + v108 * j);
              v392 = (v109->f32 + v110 * j);
              v393 = Width;
              v394 = (v111->i32 + v106 * j);
              do
              {
                v395 = *v391++;
                v396 = v395;
                v397 = *v392++;
                v398 = (v397 * v251) + (v396 * *v401.i32);
                if (v397 > 0.0)
                {
                  v396 = v398;
                }

                *v394++ = v396;
                --v393;
              }

              while (v393);
            }
          }

          else
          {
            v342 = 0;
            v343 = 4 * (Width & 0xFFFFFFFFFFFFFFF8);
            v344 = vdupq_lane_s32(v401, 0);
            v345 = (__p.data + 16);
            v346 = (v403.data + 16);
            v347 = (buf.data + 16);
            do
            {
              v348 = (v109->f32 + v110 * v342 + v343);
              v349 = v347;
              v350 = v346;
              v351 = v345;
              v352 = Width & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v353 = vbslq_s8(vclezq_f32(*v349), *v351, vmlaq_f32(vmulq_n_f32(*v349, v251), v344, *v351));
                v350[-1] = vbslq_s8(vclezq_f32(v349[-1]), v351[-1], vmlaq_f32(vmulq_n_f32(v349[-1], v251), v344, v351[-1]));
                *v350 = v353;
                v351 += 2;
                v350 += 2;
                v349 += 2;
                v352 -= 8;
              }

              while (v352);
              if (Width != (Width & 0xFFFFFFFFFFFFFFF8))
              {
                v354 = (v107->f32 + v108 * v342 + v343);
                v355 = (v111->i32 + v106 * v342 + v343);
                v356 = Width - (Width & 0xFFFFFFFFFFFFFFF8);
                do
                {
                  v357 = *v354++;
                  v358 = v357;
                  v359 = *v348++;
                  v360 = (v359 * v251) + (v358 * *v401.i32);
                  if (v359 > 0.0)
                  {
                    v358 = v360;
                  }

                  *v355++ = v358;
                  --v356;
                }

                while (v356);
              }

              ++v342;
              v345 = (v345 + v108);
              v346 = (v346 + v106);
              v347 = (v347 + v110);
            }

            while (v342 != Height);
          }
        }

        else
        {
          v252 = (v403.data + 12);
          v253 = (buf.data + 12);
          v254 = (__p.data + 12);
          do
          {
            v255 = *(v254 - 3);
            v256 = *(v253 - 3);
            if (v256 > 0.0)
            {
              v255 = (v256 * v251) + (v255 * *v401.i32);
            }

            *(v252 - 3) = v255;
            if (Width != 1)
            {
              v257 = *(v254 - 2);
              v258 = *(v253 - 2);
              if (v258 > 0.0)
              {
                v257 = (v258 * v251) + (v257 * *v401.i32);
              }

              *(v252 - 2) = v257;
              if (Width != 2)
              {
                v259 = *(v254 - 1);
                v260 = *(v253 - 1);
                if (v260 > 0.0)
                {
                  v259 = (v260 * v251) + (v259 * *v401.i32);
                }

                *(v252 - 1) = v259;
                if (Width != 3)
                {
                  v261 = *v254;
                  if (*v253 > 0.0)
                  {
                    v261 = (*v253 * v251) + (*v254 * *v401.i32);
                  }

                  *v252 = v261;
                  if (Width != 4)
                  {
                    v262 = v254[1];
                    v263 = v253[1];
                    if (v263 > 0.0)
                    {
                      v262 = (v263 * v251) + (v262 * *v401.i32);
                    }

                    v252[1] = v262;
                    if (Width != 5)
                    {
                      v264 = v254[2];
                      v265 = v253[2];
                      if (v265 > 0.0)
                      {
                        v264 = (v265 * v251) + (v264 * *v401.i32);
                      }

                      v252[2] = v264;
                      if (Width != 6)
                      {
                        v266 = v254[3];
                        v267 = v253[3];
                        if (v267 > 0.0)
                        {
                          v266 = (v267 * v251) + (v266 * *v401.i32);
                        }

                        v252[3] = v266;
                      }
                    }
                  }
                }
              }
            }

            v252 = (v252 + v106);
            v253 = (v253 + v110);
            v254 = (v254 + v108);
            --Height;
          }

          while (Height);
        }
      }
    }

    goto LABEL_393;
  }

  if (PixelFormatType != 1278226536)
  {
    if (PixelFormatType != 1717855600)
    {
LABEL_91:
      v103 = PixelFormatType;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        PixelBufferUtils::pixelFormatAsString(v103, &__p);
        if ((__p.width & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.data;
        }

        LODWORD(buf.data) = 136446210;
        *(&buf.data + 4) = p_p;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unsupported map format (%{public}s)", &buf, 0xCu);
        if (SHIBYTE(__p.width) < 0)
        {
          operator delete(__p.data);
        }
      }

      return -22956;
    }

    goto LABEL_11;
  }

LABEL_13:
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  CVPixelBufferLockBaseAddress(a4, 1uLL);
  CVPixelBufferLockBaseAddress(a5, 0);
  memset(&__p, 0, sizeof(__p));
  v16 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &__p);
  memset(&buf, 0, sizeof(buf));
  PixelBufferUtils::asVImageBuffer(a4, *v16, &buf);
  memset(&v403, 0, sizeof(v403));
  PixelBufferUtils::asVImageBuffer(a5, *v16, &v403);
  if (a6)
  {
    CVPixelBufferLockBaseAddress(a6, 1uLL);
    PixelBufferUtils::asVImageBuffer(a6, *v16, &v402);
    data = v402.data;
    v16 = v402.rowBytes;
  }

  v17 = CVPixelBufferGetWidth(a3);
  v18 = CVPixelBufferGetHeight(a3);
  if (v18 && v17)
  {
    v19 = v403.rowBytes;
    v20 = __p.data;
    v21 = __p.rowBytes;
    v22 = buf.data;
    v23 = buf.rowBytes;
    v24 = v403.data;
    if (a6)
    {
      if (v17 > 7)
      {
        v210 = v403.data + 2 * v17 + v403.rowBytes * (v18 - 1);
        _CF = v403.data >= buf.data + 2 * v17 + buf.rowBytes * (v18 - 1) || buf.data >= v210;
        v212 = !_CF;
        v214 = v403.data < &data[2 * v17 + v16 * (v18 - 1)] && data < v210;
        v215 = __p.data >= v210 || v403.data >= __p.data + 2 * v17 + __p.rowBytes * (v18 - 1);
        if (!v215 || ((v403.rowBytes | __p.rowBytes) & 0x8000000000000000) != 0 || (v212 & 1) != 0 || ((v403.rowBytes | buf.rowBytes) & 0x8000000000000000) != 0 || v214 || ((v403.rowBytes | v16) & 0x8000000000000000) != 0)
        {
          for (k = 0; k != v18; ++k)
          {
            v320 = (v20->i16 + v21 * k);
            v321 = &v22->i8[v23 * k];
            v322 = (v24->i16 + v19 * k);
            v323 = v17;
            v324 = &data[k * v16];
            do
            {
              v325 = *v320++;
              _H3 = v325;
              v327 = *v321;
              v321 += 2;
              _H4 = v327;
              v329 = *v324++;
              _H5 = v329;
              __asm
              {
                FCVT            S6, H3
                FCVT            S7, H4
                FCVT            S16, H5
              }

              if (_S16 < 0.0)
              {
                _S16 = 0.0;
              }

              if (_H5 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                v334 = _S16;
              }

              else
              {
                v334 = 1.0;
              }

              if (vabds_f32(_S6, _S7) >= *v400.i32)
              {
                v334 = *v401.i32;
              }

              _S5 = ((1.0 - v334) * _S7) + (_S6 * v334);
              __asm
              {
                FCVT            H5, S5
                FCMP            H4, #0
              }

              if (!_ZF && _CF)
              {
                _H3 = _H5;
              }

              *v322++ = _H3;
              --v323;
            }

            while (v323);
          }
        }

        else
        {
          v216 = 0;
          v217 = vdupq_lane_s32(v400, 0);
          v218 = vdupq_lane_s32(v401, 0);
          v219.i64[0] = 0x3C003C003C003C00;
          v219.i64[1] = 0x3C003C003C003C00;
          __asm { FMOV            V3.4S, #1.0 }

          do
          {
            v221 = data;
            v222 = v24;
            v223 = v22;
            v224 = v20;
            v225 = v17 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v226 = *v224++;
              v227 = v226;
              v228 = vcvt_hight_f32_f16(v226);
              v229 = vcvtq_f32_f16(*v226.i8);
              v230 = *v223++;
              v231 = v230;
              v232 = vcvt_hight_f32_f16(v230);
              v233 = *v221++;
              v234 = vcvtq_f32_f16(*v231.i8);
              v235 = vcvtq_f32_f16(*v233.i8);
              v236 = vcvt_hight_f32_f16(v233);
              v237 = vcgtq_f16(v233, v219);
              v238 = vbslq_s8(vcgtq_f32(v217, vabdq_f32(v229, v234)), vbslq_s8(vmovl_s16(*v237.i8), _Q3, vbicq_s8(v235, vcltzq_f32(v235))), v218);
              v239 = vbslq_s8(vcgtq_f32(v217, vabdq_f32(v228, v232)), vbslq_s8(vmovl_high_s16(v237), _Q3, vbicq_s8(v236, vcltzq_f32(v236))), v218);
              *v222++ = vbslq_s8(vclezq_f16(v231), v227, vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmulq_f32(vsubq_f32(_Q3, v238), v234), v238, v229)), vmlaq_f32(vmulq_f32(vsubq_f32(_Q3, v239), v232), v239, v228)));
              v225 -= 8;
            }

            while (v225);
            if (v17 != (v17 & 0xFFFFFFFFFFFFFFF8))
            {
              v240 = v17 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                _H7 = *&v20->i16[v240];
                __asm { FCVT            S16, H7 }

                _H17 = v22->i16[v240];
                __asm { FCVT            S18, H17 }

                _H19 = *&data[2 * v240];
                __asm { FCVT            S20, H19 }

                if (_S20 < 0.0)
                {
                  _S20 = 0.0;
                }

                if (_H19 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                {
                  v247 = _S20;
                }

                else
                {
                  v247 = 1.0;
                }

                if (vabds_f32(_S16, _S18) >= *v400.i32)
                {
                  v247 = *v401.i32;
                }

                _S16 = ((1.0 - v247) * _S18) + (_S16 * v247);
                __asm
                {
                  FCVT            H16, S16
                  FCMP            H17, #0
                }

                if (!_ZF && _CF)
                {
                  _H7 = _H16;
                }

                *&v24->i16[v240++] = _H7;
              }

              while (v17 != v240);
            }

            ++v216;
            v20 = (v20 + v21);
            v22 = (v22 + v23);
            v24 = (v24 + v19);
            data += v16;
          }

          while (v216 != v18);
        }
      }

      else
      {
        v25 = (data + 6);
        v26 = (v403.data + 6);
        v27 = (buf.data + 6);
        v28 = (__p.data + 6);
        LOWORD(v29) = COERCE_UNSIGNED_INT(1.0);
        do
        {
          _H3 = *(v28 - 3);
          __asm { FCVT            S4, H3 }

          _H5 = *(v27 - 3);
          __asm { FCVT            S6, H5 }

          _H7 = *(v25 - 3);
          __asm { FCVT            S16, H7 }

          if (_S16 < 0.0)
          {
            _S16 = 0.0;
          }

          if (_H7 <= v29)
          {
            v39 = _S16;
          }

          else
          {
            v39 = 1.0;
          }

          if (vabds_f32(_S4, _S6) >= *v400.i32)
          {
            v39 = *v401.i32;
          }

          _S4 = ((1.0 - v39) * _S6) + (_S4 * v39);
          __asm
          {
            FCVT            H4, S4
            FCMP            H5, #0
          }

          if (!_ZF && _CF)
          {
            _H3 = _H4;
          }

          *(v26 - 3) = _H3;
          if (v17 != 1)
          {
            _H3 = *(v28 - 2);
            __asm { FCVT            S4, H3 }

            _H5 = *(v27 - 2);
            __asm { FCVT            S6, H5 }

            _H7 = *(v25 - 2);
            __asm { FCVT            S16, H7 }

            if (_S16 < 0.0)
            {
              _S16 = 0.0;
            }

            if (_H7 <= v29)
            {
              v49 = _S16;
            }

            else
            {
              v49 = 1.0;
            }

            if (vabds_f32(_S4, _S6) >= *v400.i32)
            {
              v49 = *v401.i32;
            }

            _S4 = ((1.0 - v49) * _S6) + (_S4 * v49);
            __asm
            {
              FCVT            H4, S4
              FCMP            H5, #0
            }

            if (!_ZF && _CF)
            {
              _H3 = _H4;
            }

            *(v26 - 2) = _H3;
            if (v17 != 2)
            {
              _H3 = *(v28 - 1);
              __asm { FCVT            S4, H3 }

              _H5 = *(v27 - 1);
              __asm { FCVT            S6, H5 }

              _H7 = *(v25 - 1);
              __asm { FCVT            S16, H7 }

              if (_S16 < 0.0)
              {
                _S16 = 0.0;
              }

              if (_H7 <= v29)
              {
                v59 = _S16;
              }

              else
              {
                v59 = 1.0;
              }

              if (vabds_f32(_S4, _S6) >= *v400.i32)
              {
                v59 = *v401.i32;
              }

              _S4 = ((1.0 - v59) * _S6) + (_S4 * v59);
              __asm
              {
                FCVT            H4, S4
                FCMP            H5, #0
              }

              if (!_ZF && _CF)
              {
                _H3 = _H4;
              }

              *(v26 - 1) = _H3;
              if (v17 != 3)
              {
                _H3 = *v28;
                __asm { FCVT            S4, H3 }

                _H5 = *v27;
                __asm { FCVT            S6, H5 }

                _H7 = *v25;
                __asm { FCVT            S16, H7 }

                if (_S16 < 0.0)
                {
                  _S16 = 0.0;
                }

                if (_H7 <= v29)
                {
                  v69 = _S16;
                }

                else
                {
                  v69 = 1.0;
                }

                if (vabds_f32(_S4, _S6) >= *v400.i32)
                {
                  v69 = *v401.i32;
                }

                _S4 = ((1.0 - v69) * _S6) + (_S4 * v69);
                __asm
                {
                  FCVT            H4, S4
                  FCMP            H5, #0
                }

                if (!_ZF && _CF)
                {
                  _H3 = _H4;
                }

                *v26 = _H3;
                if (v17 != 4)
                {
                  _H3 = v28[1];
                  __asm { FCVT            S4, H3 }

                  _H5 = v27[1];
                  __asm { FCVT            S6, H5 }

                  _H7 = v25[1];
                  __asm { FCVT            S16, H7 }

                  if (_S16 < 0.0)
                  {
                    _S16 = 0.0;
                  }

                  if (_H7 <= v29)
                  {
                    v79 = _S16;
                  }

                  else
                  {
                    v79 = 1.0;
                  }

                  if (vabds_f32(_S4, _S6) >= *v400.i32)
                  {
                    v79 = *v401.i32;
                  }

                  _S4 = ((1.0 - v79) * _S6) + (_S4 * v79);
                  __asm
                  {
                    FCVT            H4, S4
                    FCMP            H5, #0
                  }

                  if (!_ZF && _CF)
                  {
                    _H3 = _H4;
                  }

                  v26[1] = _H3;
                  if (v17 != 5)
                  {
                    _H3 = v28[2];
                    __asm { FCVT            S4, H3 }

                    _H5 = v27[2];
                    __asm { FCVT            S6, H5 }

                    _H7 = v25[2];
                    __asm { FCVT            S16, H7 }

                    if (_S16 < 0.0)
                    {
                      _S16 = 0.0;
                    }

                    if (_H7 <= v29)
                    {
                      v89 = _S16;
                    }

                    else
                    {
                      v89 = 1.0;
                    }

                    if (vabds_f32(_S4, _S6) >= *v400.i32)
                    {
                      v89 = *v401.i32;
                    }

                    _S4 = ((1.0 - v89) * _S6) + (_S4 * v89);
                    __asm
                    {
                      FCVT            H4, S4
                      FCMP            H5, #0
                    }

                    if (!_ZF && _CF)
                    {
                      _H3 = _H4;
                    }

                    v26[2] = _H3;
                    if (v17 != 6)
                    {
                      _H3 = v28[3];
                      __asm { FCVT            S4, H3 }

                      _H5 = v27[3];
                      __asm { FCVT            S6, H5 }

                      _H7 = v25[3];
                      __asm { FCVT            S16, H7 }

                      if (_S16 < 0.0)
                      {
                        _S16 = 0.0;
                      }

                      if (_H7 <= v29)
                      {
                        v99 = _S16;
                      }

                      else
                      {
                        v99 = 1.0;
                      }

                      if (vabds_f32(_S4, _S6) >= *v400.i32)
                      {
                        v99 = *v401.i32;
                      }

                      _S4 = ((1.0 - v99) * _S6) + (_S4 * v99);
                      __asm
                      {
                        FCVT            H4, S4
                        FCMP            H5, #0
                      }

                      if (!_ZF && _CF)
                      {
                        _H3 = _H4;
                      }

                      v26[3] = _H3;
                    }
                  }
                }
              }
            }
          }

          v25 = (v25 + v16);
          v26 = (v26 + v19);
          v27 = (v27 + v23);
          v28 = (v28 + v21);
          --v18;
        }

        while (v18);
      }
    }

    else
    {
      v157 = 1.0 - *v401.i32;
      if (v17 > 7)
      {
        v296 = v403.data + 2 * v17 + v403.rowBytes * (v18 - 1);
        v298 = v403.data < buf.data + 2 * v17 + buf.rowBytes * (v18 - 1) && buf.data < v296;
        v299 = __p.data >= v296 || v403.data >= __p.data + 2 * v17 + __p.rowBytes * (v18 - 1);
        if (!v299 || ((v403.rowBytes | __p.rowBytes) & 0x8000000000000000) != 0 || v298 || ((v403.rowBytes | buf.rowBytes) & 0x8000000000000000) != 0)
        {
          for (m = 0; m != v18; ++m)
          {
            v377 = (v20->i16 + v21 * m);
            v378 = &v22->i8[v23 * m];
            v379 = v17;
            v380 = (v24->i16 + v19 * m);
            do
            {
              v381 = *v377++;
              _H1 = v381;
              __asm { FCVT            S2, H1 }

              v384 = *v378;
              v378 += 2;
              _H3 = v384;
              __asm { FCVT            S4, H3 }

              _S2 = (v157 * _S4) + (_S2 * *v401.i32);
              __asm
              {
                FCVT            H2, S2
                FCMP            H3, #0
              }

              if (!_ZF && _CF)
              {
                _H1 = _H2;
              }

              *v380++ = _H1;
              --v379;
            }

            while (v379);
          }
        }

        else
        {
          v300 = 0;
          v301 = vdupq_lane_s32(v401, 0);
          do
          {
            v302 = v24;
            v303 = v22;
            v304 = v20;
            v305 = v17 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v306 = *v304++;
              v307 = v306;
              v308 = vcvtq_f32_f16(*v306.i8);
              v309 = vcvt_hight_f32_f16(v306);
              v310 = *v303++;
              *v302++ = vbslq_s8(vclezq_f16(v310), v307, vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_f16(*v310.i8), v157), v301, v308)), vmlaq_f32(vmulq_n_f32(vcvt_hight_f32_f16(v310), v157), v301, v309)));
              v305 -= 8;
            }

            while (v305);
            if (v17 != (v17 & 0xFFFFFFFFFFFFFFF8))
            {
              v311 = v17 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                _H2 = *&v20->i16[v311];
                __asm { FCVT            S3, H2 }

                _H4 = v22->i16[v311];
                __asm { FCVT            S5, H4 }

                _S3 = (v157 * _S5) + (_S3 * *v401.i32);
                __asm
                {
                  FCVT            H3, S3
                  FCMP            H4, #0
                }

                if (!_ZF && _CF)
                {
                  _H2 = _H3;
                }

                *&v24->i16[v311++] = _H2;
              }

              while (v17 != v311);
            }

            ++v300;
            v20 = (v20 + v21);
            v22 = (v22 + v23);
            v24 = (v24 + v19);
          }

          while (v300 != v18);
        }
      }

      else
      {
        v158 = (v403.data + 6);
        v159 = (buf.data + 6);
        v160 = (__p.data + 6);
        do
        {
          _H1 = *(v160 - 3);
          __asm { FCVT            S2, H1 }

          _H3 = *(v159 - 3);
          __asm { FCVT            S4, H3 }

          _S2 = (v157 * _S4) + (_S2 * *v401.i32);
          __asm
          {
            FCVT            H2, S2
            FCMP            H3, #0
          }

          if (!_ZF && _CF)
          {
            _H1 = _H2;
          }

          *(v158 - 3) = _H1;
          if (v17 != 1)
          {
            _H1 = *(v160 - 2);
            __asm { FCVT            S2, H1 }

            _H3 = *(v159 - 2);
            __asm { FCVT            S4, H3 }

            _S2 = (v157 * _S4) + (_S2 * *v401.i32);
            __asm
            {
              FCVT            H2, S2
              FCMP            H3, #0
            }

            if (!_ZF && _CF)
            {
              _H1 = _H2;
            }

            *(v158 - 2) = _H1;
            if (v17 != 2)
            {
              _H1 = *(v160 - 1);
              __asm { FCVT            S2, H1 }

              _H3 = *(v159 - 1);
              __asm { FCVT            S4, H3 }

              _S2 = (v157 * _S4) + (_S2 * *v401.i32);
              __asm
              {
                FCVT            H2, S2
                FCMP            H3, #0
              }

              if (!_ZF && _CF)
              {
                _H1 = _H2;
              }

              *(v158 - 1) = _H1;
              if (v17 != 3)
              {
                _H1 = *v160;
                __asm { FCVT            S2, H1 }

                _H3 = *v159;
                __asm { FCVT            S4, H3 }

                _S2 = (v157 * _S4) + (_S2 * *v401.i32);
                __asm
                {
                  FCVT            H2, S2
                  FCMP            H3, #0
                }

                if (!_ZF && _CF)
                {
                  _H1 = _H2;
                }

                *v158 = _H1;
                if (v17 != 4)
                {
                  _H1 = v160[1];
                  __asm { FCVT            S2, H1 }

                  _H3 = v159[1];
                  __asm { FCVT            S4, H3 }

                  _S2 = (v157 * _S4) + (_S2 * *v401.i32);
                  __asm
                  {
                    FCVT            H2, S2
                    FCMP            H3, #0
                  }

                  if (!_ZF && _CF)
                  {
                    _H1 = _H2;
                  }

                  v158[1] = _H1;
                  if (v17 != 5)
                  {
                    _H1 = v160[2];
                    __asm { FCVT            S2, H1 }

                    _H3 = v159[2];
                    __asm { FCVT            S4, H3 }

                    _S2 = (v157 * _S4) + (_S2 * *v401.i32);
                    __asm
                    {
                      FCVT            H2, S2
                      FCMP            H3, #0
                    }

                    if (!_ZF && _CF)
                    {
                      _H1 = _H2;
                    }

                    v158[2] = _H1;
                    if (v17 != 6)
                    {
                      _H1 = v160[3];
                      __asm { FCVT            S2, H1 }

                      _H3 = v159[3];
                      __asm { FCVT            S4, H3 }

                      _S2 = (v157 * _S4) + (_S2 * *v401.i32);
                      __asm
                      {
                        FCVT            H2, S2
                        FCMP            H3, #0
                      }

                      if (!_ZF && _CF)
                      {
                        _H1 = _H2;
                      }

                      v158[3] = _H1;
                    }
                  }
                }
              }
            }
          }

          v158 = (v158 + v19);
          v159 = (v159 + v23);
          v160 = (v160 + v21);
          --v18;
        }

        while (v18);
      }
    }
  }

LABEL_393:
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  CVPixelBufferUnlockBaseAddress(a4, 1uLL);
  CVPixelBufferUnlockBaseAddress(a5, 0);
  if (a6)
  {
    CVPixelBufferUnlockBaseAddress(a6, 1uLL);
  }

  return 0;
}

+ (int64_t)warpPreviousDepth:(__CVBuffer *)a3 intoCurrentDepth:(__CVBuffer *)a4 previousConfidence:(__CVBuffer *)a5 intoCurrentConfidence:(__CVBuffer *)a6 usingOpticalFlow:(__CVBuffer *)a7
{
  result = -22953;
  if (a3)
  {
    if (a4)
    {
      result = [a1 warpMap:? toOutput:? usingOpticalFlow:?];
      if (!result && a5 && a6)
      {

        return [a1 warpMap:a5 toOutput:a6 usingOpticalFlow:a7];
      }
    }
  }

  return result;
}

+ (int64_t)warpMap:(__CVBuffer *)a3 toOutput:(__CVBuffer *)a4 usingOpticalFlow:(__CVBuffer *)a5
{
  v68 = *MEMORY[0x277D85DE8];
  result = -22953;
  if (!a3 || !a4 || !a5)
  {
    return result;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType > 1717856626)
  {
    if (PixelFormatType == 1717856627)
    {
      goto LABEL_33;
    }

    if (PixelFormatType != 1751411059 && PixelFormatType != 1751410032)
    {
      goto LABEL_56;
    }

    goto LABEL_12;
  }

  switch(PixelFormatType)
  {
    case 0x4C303066:
LABEL_33:
      CVPixelBufferLockBaseAddress(a3, 1uLL);
      CVPixelBufferLockBaseAddress(a5, 1uLL);
      CVPixelBufferLockBaseAddress(a4, 0);
      memset(&__p, 0, sizeof(__p));
      v38 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &__p);
      memset(&buf, 0, sizeof(buf));
      PixelBufferUtils::asVImageBuffer(a5, *v38, &buf);
      memset(&v65, 0, sizeof(v65));
      PixelBufferUtils::asVImageBuffer(a4, *v38, &v65);
      Width = CVPixelBufferGetWidth(a3);
      Height = CVPixelBufferGetHeight(a3);
      if (Height && Width)
      {
        v41 = 0;
        rowBytes = __p.rowBytes;
        data = buf.data;
        v44 = buf.rowBytes;
        v45 = v65.data;
        v46 = v65.rowBytes;
        v47 = __p.data;
        do
        {
          v48 = 0;
          v49 = &data[v44 * v41];
          v50 = v47;
          do
          {
            *&v45[4 * v48] = 0;
            _H5 = *v49;
            __asm { FCVT            S5, H5 }

            _H6 = *(v49 + 1);
            __asm { FCVT            S6, H6 }

            _NF = (fabsf(_S5) + fabsf(_S6)) < 600.0;
            v55 = roundf(_S5);
            v56 = v55 + v48;
            v58 = _NF && v56 < (Width - 1) && v56 > 1.0;
            v59 = roundf(_S6);
            v60 = v59 + v41;
            if (v58 && v60 < (Height - 1) && v60 > 1.0)
            {
              *&v45[4 * v48] = *&v50[4 * v55 + rowBytes * (v41 + v59)];
            }

            ++v48;
            v49 += 4;
            v50 += 4;
          }

          while (Width != v48);
          ++v41;
          v45 += v46;
        }

        while (v41 != Height);
      }

LABEL_54:
      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
      CVPixelBufferUnlockBaseAddress(a5, 1uLL);
      CVPixelBufferUnlockBaseAddress(a4, 0);
      return 0;
    case 0x4C303068:
LABEL_12:
      CVPixelBufferLockBaseAddress(a3, 1uLL);
      CVPixelBufferLockBaseAddress(a5, 1uLL);
      CVPixelBufferLockBaseAddress(a4, 0);
      memset(&__p, 0, sizeof(__p));
      v10 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &__p);
      memset(&buf, 0, sizeof(buf));
      PixelBufferUtils::asVImageBuffer(a5, *v10, &buf);
      memset(&v65, 0, sizeof(v65));
      PixelBufferUtils::asVImageBuffer(a4, *v10, &v65);
      v11 = CVPixelBufferGetWidth(a3);
      v12 = CVPixelBufferGetHeight(a3);
      if (v12 && v11)
      {
        v13 = 0;
        v15 = __p.rowBytes;
        v14 = buf.data;
        v16 = buf.rowBytes;
        v17 = v65.data;
        v18 = v65.rowBytes;
        v19 = __p.data;
        do
        {
          v20 = 0;
          v21 = &v14[v16 * v13];
          v22 = v19;
          do
          {
            *&v17[2 * v20] = 0;
            _H6 = *v21;
            __asm { FCVT            S6, H6 }

            _H7 = *(v21 + 1);
            __asm { FCVT            S7, H7 }

            _NF = (fabsf(_S6) + fabsf(_S7)) < 600.0;
            v30 = roundf(_S6);
            v31 = v30 + v20;
            _NF = _NF && v31 < (v11 - 1);
            v33 = _NF && v31 > 1.0;
            v34 = roundf(_S7);
            v35 = v34 + v13;
            if (v33 && v35 < (v12 - 1) && v35 > 1.0)
            {
              *&v17[2 * v20] = *&v22[2 * v30 + v15 * (v13 + v34)];
            }

            ++v20;
            v21 += 4;
            v22 += 2;
          }

          while (v11 != v20);
          ++v13;
          v17 += v18;
        }

        while (v13 != v12);
      }

      goto LABEL_54;
    case 0x66646570:
      goto LABEL_33;
  }

LABEL_56:
  v63 = PixelFormatType;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    PixelBufferUtils::pixelFormatAsString(v63, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.data;
    }

    LODWORD(buf.data) = 136446210;
    *(&buf.data + 4) = p_p;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unsupported depth map format (%{public}s)", &buf, 0xCu);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }
  }

  return -22956;
}

+ (double)addAnglesToRotation:(double)a3 angles:(double)a4
{
  [a1 calcRotationMatrix:a5];
  *&result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, a2.f32[0]), v6, *a2.f32, 1), v7, a2, 2).u64[0];
  return result;
}

+ (double)calcRotationAngle:(float *)a3
{
  v4 = a3[6];
  v5 = a3[10];
  v6.f32[0] = atan2f(v4, v5);
  v12 = v6;
  v10 = *a3;
  v11 = atan2f(-COERCE_FLOAT(*(a3 + 1)), sqrtf((v5 * v5) + (v4 * v4)));
  v7 = atan2f(*(&v10 + 1), *&v10);
  v8 = v12;
  v8.f32[1] = v11;
  v8.f32[2] = v7;
  *&result = vmulq_f32(v8, vdupq_n_s32(0x447A0000u)).u64[0];
  return result;
}

+ (float32x2_t)calcRotationMatrix:(float32x4_t)a1
{
  v1 = vmulq_f32(a1, vdupq_n_s32(0x3A83126Fu));
  v2 = v1.f32[1];
  v3 = v1.f32[2];
  __sincosf_stret(v1.f32[0]);
  cosval = __sincosf_stret(v2).__cosval;
  v4 = __sincosf_stret(v3);
  return vmul_n_f32(__PAIR64__(LODWORD(v4.__sinval), LODWORD(v4.__cosval)), cosval);
}

+ (int64_t)filterInvalidsFromFloatImage:(__CVBuffer *)a3 minValue:(float)a4 maxValue:(float)a5 clampToMinMax:(BOOL)a6
{
  v228 = *&a4;
  v229 = *&a5;
  v233 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType > 1717856626)
  {
    if (PixelFormatType != 1751411059 && PixelFormatType != 1751410032)
    {
      v9 = 26995;
      goto LABEL_7;
    }

    if (!a3)
    {
LABEL_39:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Pixel buffer cannot be null", &buf, 2u);
      }

      return -22964;
    }

    CVPixelBufferLockBaseAddress(a3, 0);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &buf);
    height = buf.height;
    if (!buf.height || (width = buf.width) == 0)
    {
LABEL_77:
      CVPixelBufferUnlockBaseAddress(a3, 0);
      return 0;
    }

    data = buf.data;
    rowBytes = buf.rowBytes;
    v23 = buf.width & 0xFFFFFFFFFFFFFFF8;
    v24 = vdupq_lane_s32(v228, 0);
    v25 = vdupq_lane_s32(v229, 0);
    if (!a6)
    {
      if (buf.width > 7)
      {
        if (buf.width == v23)
        {
          v84 = 0;
          v85.i64[0] = 0x7F0000007FLL;
          v85.i64[1] = 0x7F0000007FLL;
          v86 = vnegq_f32(v85);
          v87.i64[0] = 0x3400000034000000;
          v87.i64[1] = 0x3400000034000000;
          do
          {
            v88 = data;
            v89 = width;
            do
            {
              v90 = vcvt_hight_f32_f16(*v88);
              v91 = vcvtq_f32_f16(*v88->i8);
              v92 = vabsq_f32(v91);
              v93 = vabsq_f32(v90);
              *v88 = vandq_s8(vbicq_s8(*v88, vuzp1q_s16(vorrq_s8(vcgtq_f32(v24, v91), vcgtq_f32(v91, v25)), vorrq_s8(vcgtq_f32(v24, v90), vcgtq_f32(v90, v25)))), vcltzq_s16(vshlq_n_s16(vandq_s8(vceqq_f16(*v88, *v88), vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqq_f32(v92, v86), vceqq_f32(v93, v86))), vuzp1q_s16(vcgeq_f32(v87, v92), vcgeq_f32(v87, v93)))), 0xFuLL)));
              ++v88;
              v89 -= 8;
            }

            while (v89);
            ++v84;
            data = (data + rowBytes);
          }

          while (v84 != height);
        }

        else
        {
          v209 = 0;
          v210.i64[0] = 0x7F0000007FLL;
          v210.i64[1] = 0x7F0000007FLL;
          v211 = vnegq_f32(v210);
          v212.i64[0] = 0x3400000034000000;
          v212.i64[1] = 0x3400000034000000;
          do
          {
            v213 = data;
            v214 = width & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v215 = vcvt_hight_f32_f16(*v213);
              v216 = vcvtq_f32_f16(*v213->i8);
              v217 = vabsq_f32(v216);
              v218 = vabsq_f32(v215);
              *v213 = vandq_s8(vbicq_s8(*v213, vuzp1q_s16(vorrq_s8(vcgtq_f32(v24, v216), vcgtq_f32(v216, v25)), vorrq_s8(vcgtq_f32(v24, v215), vcgtq_f32(v215, v25)))), vcltzq_s16(vshlq_n_s16(vandq_s8(vceqq_f16(*v213, *v213), vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqq_f32(v217, v211), vceqq_f32(v218, v211))), vuzp1q_s16(vcgeq_f32(v212, v217), vcgeq_f32(v212, v218)))), 0xFuLL)));
              ++v213;
              v214 -= 8;
            }

            while (v214);
            v219 = width & 0xFFFFFFFFFFFFFFF8;
            do
            {
              _H7 = data->i16[v219];
              LOWORD(v221) = 0;
              __asm { FCVT            S16, H7 }

              v223 = fabsf(_S16);
              if (v223 != INFINITY && v223 > 0.00000011921)
              {
                if (_S16 > *v229.i32 || _S16 < *v228.i32)
                {
                  v221 = COERCE_SHORT_FLOAT(0);
                }

                else
                {
                  v221 = *&data->i16[v219];
                }
              }

              *&data->i16[v219++] = v221;
            }

            while (width != v219);
            ++v209;
            data = (data + rowBytes);
          }

          while (v209 != height);
        }
      }

      else
      {
        v52 = (buf.data + 6);
        do
        {
          _H2 = *(v52 - 3);
          __asm { FCVT            S3, H2 }

          v171 = fabsf(_S3);
          v172 = v171 != INFINITY && v171 > 0.00000011921;
          LOWORD(v173) = 0;
          if (v172)
          {
            if (_S3 > *v229.i32 || _S3 < *v228.i32)
            {
              v173 = COERCE_SHORT_FLOAT(0);
            }

            else
            {
              v173 = *(v52 - 3);
            }
          }

          *(v52 - 3) = v173;
          if (width != 1)
          {
            _H3 = *(v52 - 2);
            LOWORD(v176) = 0;
            __asm { FCVT            S4, H3 }

            v178 = fabsf(_S4);
            if (v178 != INFINITY && v178 > 0.00000011921)
            {
              if (_S4 > *v229.i32 || _S4 < *v228.i32)
              {
                v176 = COERCE_SHORT_FLOAT(0);
              }

              else
              {
                v176 = *(v52 - 2);
              }
            }

            *(v52 - 2) = v176;
            if (width != 2)
            {
              _H3 = *(v52 - 1);
              LOWORD(v182) = 0;
              __asm { FCVT            S4, H3 }

              v184 = fabsf(_S4);
              if (v184 != INFINITY && v184 > 0.00000011921)
              {
                if (_S4 > *v229.i32 || _S4 < *v228.i32)
                {
                  v182 = COERCE_SHORT_FLOAT(0);
                }

                else
                {
                  v182 = *(v52 - 1);
                }
              }

              *(v52 - 1) = v182;
              if (width != 3)
              {
                _H3 = *v52;
                LOWORD(v188) = 0;
                __asm { FCVT            S4, H3 }

                v190 = fabsf(_S4);
                if (v190 != INFINITY && v190 > 0.00000011921)
                {
                  if (_S4 > *v229.i32 || _S4 < *v228.i32)
                  {
                    v188 = COERCE_SHORT_FLOAT(0);
                  }

                  else
                  {
                    v188 = *v52;
                  }
                }

                *v52 = v188;
                if (width != 4)
                {
                  _H3 = *(v52 + 1);
                  LOWORD(v194) = 0;
                  __asm { FCVT            S4, H3 }

                  v196 = fabsf(_S4);
                  if (v196 != INFINITY && v196 > 0.00000011921)
                  {
                    if (_S4 > *v229.i32 || _S4 < *v228.i32)
                    {
                      v194 = COERCE_SHORT_FLOAT(0);
                    }

                    else
                    {
                      v194 = v52[1];
                    }
                  }

                  v52[1] = v194;
                  if (width != 5)
                  {
                    _H3 = *(v52 + 2);
                    LOWORD(v200) = 0;
                    __asm { FCVT            S4, H3 }

                    v202 = fabsf(_S4);
                    if (v202 != INFINITY && v202 > 0.00000011921)
                    {
                      if (_S4 > *v229.i32 || _S4 < *v228.i32)
                      {
                        v200 = COERCE_SHORT_FLOAT(0);
                      }

                      else
                      {
                        v200 = v52[2];
                      }
                    }

                    v52[2] = v200;
                    if (width != 6)
                    {
                      _H3 = *(v52 + 3);
                      LOWORD(v205) = 0;
                      __asm { FCVT            S4, H3 }

                      v207 = fabsf(_S4);
                      if (v207 != INFINITY && v207 > 0.00000011921)
                      {
                        if (_S4 > *v229.i32 || _S4 < *v228.i32)
                        {
                          v205 = COERCE_SHORT_FLOAT(0);
                        }

                        else
                        {
                          v205 = v52[3];
                        }
                      }

                      v52[3] = v205;
                    }
                  }
                }
              }
            }
          }

          v52 = (v52 + rowBytes);
          --height;
        }

        while (height);
      }

      goto LABEL_77;
    }

    v26 = 0;
    v27.i64[0] = 0x7F0000007FLL;
    v27.i64[1] = 0x7F0000007FLL;
    v28 = vnegq_f32(v27);
    v29.i64[0] = 0x3400000034000000;
    v29.i64[1] = 0x3400000034000000;
    v30 = buf.data;
    while (1)
    {
      v31 = (data->i16 + rowBytes * v26);
      if (width < 8)
      {
        break;
      }

      v33 = v30;
      v34 = width & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v35 = vcvt_hight_f32_f16(*v33);
        v36 = vcvtq_f32_f16(*v33->i8);
        v37 = vceqq_f16(*v33, *v33);
        v38 = vabsq_f32(v36);
        v39 = vabsq_f32(v35);
        *v33++ = vandq_s8(vandq_s8(vcvt_hight_f16_f32(vcvt_f16_f32(vbslq_s8(vcgtq_f32(v24, v36), v24, vbslq_s8(vcgtq_f32(v36, v25), v25, v36))), vbslq_s8(vcgtq_f32(v24, v35), v24, vbslq_s8(vcgtq_f32(v35, v25), v25, v35))), v37), vcgezq_s16(vshlq_n_s16(vandq_s8(v37, vorrq_s8(vuzp1q_s16(vceqq_f32(v38, v28), vceqq_f32(v39, v28)), vuzp1q_s16(vcgeq_f32(v29, v38), vcgeq_f32(v29, v39)))), 0xFuLL)));
        v34 -= 8;
      }

      while (v34);
      if (width != v23)
      {
        v31 += v23;
        v32 = width & 0xFFFFFFFFFFFFFFF8;
LABEL_26:
        v40 = width - v32;
        do
        {
          _H6 = *v31;
          _H5 = 0;
          __asm { FCVT            S6, H6 }

          v47 = fabsf(_S6);
          if (v47 != INFINITY && v47 > 0.00000011921)
          {
            if (_S6 <= *v229.i32)
            {
              _S5 = _S6;
            }

            else
            {
              _S5 = *v229.i32;
            }

            if (_S6 < *v228.i32)
            {
              _S5 = *v228.i32;
            }

            __asm { FCVT            H5, S5 }
          }

          *v31++ = _H5;
          --v40;
        }

        while (v40);
      }

      ++v26;
      v30 = (v30 + rowBytes);
      if (v26 == height)
      {
        goto LABEL_77;
      }
    }

    v32 = 0;
    goto LABEL_26;
  }

  if (PixelFormatType == 1278226534)
  {
    goto LABEL_8;
  }

  v9 = 25968;
LABEL_7:
  if (PixelFormatType == (v9 | 0x66640000))
  {
LABEL_8:
    if (a3)
    {
      CVPixelBufferLockBaseAddress(a3, 0);
      memset(&buf, 0, sizeof(buf));
      PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &buf);
      v10 = buf.height;
      if (buf.height)
      {
        v11 = buf.width;
        if (buf.width)
        {
          v12 = buf.data;
          v13 = buf.rowBytes;
          v14 = buf.width & 0xFFFFFFFFFFFFFFF8;
          v15 = 4 * (buf.width & 0xFFFFFFFFFFFFFFF8);
          v16 = vdupq_lane_s32(v228, 0);
          v17 = vdupq_lane_s32(v229, 0);
          if (a6)
          {
            if (buf.width >= 8)
            {
              v53 = 0;
              v54 = (buf.data + 16);
              v55.i64[0] = 0x7F0000007FLL;
              v55.i64[1] = 0x7F0000007FLL;
              v56 = vnegq_f32(v55);
              v57.i64[0] = 0x3400000034000000;
              v57.i64[1] = 0x3400000034000000;
              do
              {
                v58 = v54;
                v59 = v11 & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  v60 = v58[-1];
                  v61 = vceqq_f32(v60, v60);
                  v62 = vceqq_f32(*v58, *v58);
                  v63 = vabsq_f32(v60);
                  v64 = vabsq_f32(*v58);
                  v65 = vandq_s8(vandq_s8(vbslq_s8(vcgtq_f32(v16, *v58), v16, vbslq_s8(vcgtq_f32(*v58, v17), v17, *v58)), v62), vcgezq_s32(vshlq_n_s32(vandq_s8(v62, vorrq_s8(vceqq_f32(v64, v56), vcgeq_f32(v57, v64))), 0x1FuLL)));
                  v58[-1] = vandq_s8(vandq_s8(vbslq_s8(vcgtq_f32(v16, v60), v16, vbslq_s8(vcgtq_f32(v60, v17), v17, v60)), v61), vcgezq_s32(vshlq_n_s32(vandq_s8(v61, vorrq_s8(vceqq_f32(v63, v56), vcgeq_f32(v57, v63))), 0x1FuLL)));
                  *v58 = v65;
                  v58 += 2;
                  v59 -= 8;
                }

                while (v59);
                if (v11 != v14)
                {
                  v66 = &v12[v13 * v53 + v15];
                  v67 = v11 - v14;
                  do
                  {
                    v68 = *v66;
                    v69 = 0.0;
                    v70 = fabsf(*v66);
                    if (v70 != INFINITY && v70 > 0.00000011921)
                    {
                      v69 = v68 <= *v229.i32 ? *v66 : *v229.i32;
                      if (v68 < *v228.i32)
                      {
                        v69 = *v228.i32;
                      }
                    }

                    *v66++ = v69;
                    --v67;
                  }

                  while (v67);
                }

                ++v53;
                v54 = (v54 + v13);
              }

              while (v53 != v10);
            }

            else
            {
              v18 = (buf.data + 12);
              do
              {
                v94 = *(v18 - 3);
                v95 = 0.0;
                v96 = fabsf(v94);
                if (v96 != INFINITY && v96 > 0.00000011921)
                {
                  v95 = v94 <= *v229.i32 ? *(v18 - 3) : *v229.i32;
                  if (v94 < *v228.i32)
                  {
                    v95 = *v228.i32;
                  }
                }

                *(v18 - 3) = v95;
                if (v11 != 1)
                {
                  v98 = *(v18 - 2);
                  v99 = 0.0;
                  v100 = fabsf(v98);
                  if (v100 != INFINITY && v100 > 0.00000011921)
                  {
                    v99 = v98 <= *v229.i32 ? *(v18 - 2) : *v229.i32;
                    if (v98 < *v228.i32)
                    {
                      v99 = *v228.i32;
                    }
                  }

                  *(v18 - 2) = v99;
                  if (v11 != 2)
                  {
                    v102 = *(v18 - 1);
                    v103 = 0.0;
                    v104 = fabsf(v102);
                    if (v104 != INFINITY && v104 > 0.00000011921)
                    {
                      v103 = v102 <= *v229.i32 ? *(v18 - 1) : *v229.i32;
                      if (v102 < *v228.i32)
                      {
                        v103 = *v228.i32;
                      }
                    }

                    *(v18 - 1) = v103;
                    if (v11 != 3)
                    {
                      v106 = *v18;
                      v107 = 0.0;
                      v108 = fabsf(*v18);
                      if (v108 != INFINITY && v108 > 0.00000011921)
                      {
                        v107 = v106 <= *v229.i32 ? *v18 : *v229.i32;
                        if (v106 < *v228.i32)
                        {
                          v107 = *v228.i32;
                        }
                      }

                      *v18 = v107;
                      if (v11 != 4)
                      {
                        v110 = v18[1];
                        v111 = 0.0;
                        v112 = fabsf(v110);
                        if (v112 != INFINITY && v112 > 0.00000011921)
                        {
                          v111 = v110 <= *v229.i32 ? v18[1] : *v229.i32;
                          if (v110 < *v228.i32)
                          {
                            v111 = *v228.i32;
                          }
                        }

                        v18[1] = v111;
                        if (v11 != 5)
                        {
                          v113 = v18[2];
                          v114 = 0.0;
                          v115 = fabsf(v113);
                          if (v115 != INFINITY && v115 > 0.00000011921)
                          {
                            v114 = v113 <= *v229.i32 ? v18[2] : *v229.i32;
                            if (v113 < *v228.i32)
                            {
                              v114 = *v228.i32;
                            }
                          }

                          v18[2] = v114;
                          if (v11 != 6)
                          {
                            v116 = v18[3];
                            v117 = 0.0;
                            v118 = fabsf(v116);
                            if (v118 != INFINITY && v118 > 0.00000011921)
                            {
                              if (v116 <= *v229.i32)
                              {
                                v117 = v18[3];
                              }

                              else
                              {
                                v117 = *v229.i32;
                              }

                              if (v116 < *v228.i32)
                              {
                                v117 = *v228.i32;
                              }
                            }

                            v18[3] = v117;
                          }
                        }
                      }
                    }
                  }
                }

                v18 = (v18 + v13);
                --v10;
              }

              while (v10);
            }
          }

          else if (buf.width > 7)
          {
            v72 = buf.width - v14;
            if (buf.width == v14)
            {
              v73 = 0;
              v74 = (buf.data + 16);
              v75.i64[0] = 0x7F0000007FLL;
              v75.i64[1] = 0x7F0000007FLL;
              v76 = vnegq_f32(v75);
              v77.i64[0] = 0x3400000034000000;
              v77.i64[1] = 0x3400000034000000;
              do
              {
                v78 = v74;
                v79 = v11;
                do
                {
                  v80 = v78[-1];
                  v81 = vabsq_f32(v80);
                  v82 = vabsq_f32(*v78);
                  v83 = vandq_s8(vbicq_s8(*v78, vorrq_s8(vcgtq_f32(v16, *v78), vcgtq_f32(*v78, v17))), vcltzq_s32(vshlq_n_s32(vandq_s8(vceqq_f32(*v78, *v78), vbicq_s8(vmvnq_s8(vceqq_f32(v82, v76)), vcgeq_f32(v77, v82))), 0x1FuLL)));
                  v78[-1] = vandq_s8(vbicq_s8(v80, vorrq_s8(vcgtq_f32(v16, v80), vcgtq_f32(v80, v17))), vcltzq_s32(vshlq_n_s32(vandq_s8(vceqq_f32(v80, v80), vbicq_s8(vmvnq_s8(vceqq_f32(v81, v76)), vcgeq_f32(v77, v81))), 0x1FuLL)));
                  *v78 = v83;
                  v78 += 2;
                  v79 -= 8;
                }

                while (v79);
                ++v73;
                v74 = (v74 + v13);
              }

              while (v73 != v10);
            }

            else
            {
              v151 = 0;
              v152 = (buf.data + 16);
              v153.i64[0] = 0x7F0000007FLL;
              v153.i64[1] = 0x7F0000007FLL;
              v154 = vnegq_f32(v153);
              v155.i64[0] = 0x3400000034000000;
              v155.i64[1] = 0x3400000034000000;
              do
              {
                v156 = v152;
                v157 = v14;
                do
                {
                  v158 = v156[-1];
                  v159 = vabsq_f32(v158);
                  v160 = vabsq_f32(*v156);
                  v161 = vandq_s8(vbicq_s8(*v156, vorrq_s8(vcgtq_f32(v16, *v156), vcgtq_f32(*v156, v17))), vcltzq_s32(vshlq_n_s32(vandq_s8(vceqq_f32(*v156, *v156), vbicq_s8(vmvnq_s8(vceqq_f32(v160, v154)), vcgeq_f32(v155, v160))), 0x1FuLL)));
                  v156[-1] = vandq_s8(vbicq_s8(v158, vorrq_s8(vcgtq_f32(v16, v158), vcgtq_f32(v158, v17))), vcltzq_s32(vshlq_n_s32(vandq_s8(vceqq_f32(v158, v158), vbicq_s8(vmvnq_s8(vceqq_f32(v159, v154)), vcgeq_f32(v155, v159))), 0x1FuLL)));
                  *v156 = v161;
                  v156 += 2;
                  v157 -= 8;
                }

                while (v157);
                v162 = &v12[v13 * v151 + v15];
                v163 = v72;
                do
                {
                  v164 = *v162;
                  v165 = 0.0;
                  v166 = fabsf(*v162);
                  if (v166 != INFINITY && v166 > 0.00000011921)
                  {
                    if (v164 > *v229.i32 || v164 < *v228.i32)
                    {
                      v165 = 0.0;
                    }

                    else
                    {
                      v165 = *v162;
                    }
                  }

                  *v162++ = v165;
                  --v163;
                }

                while (v163);
                ++v151;
                v152 = (v152 + v13);
              }

              while (v151 != v10);
            }
          }

          else
          {
            v51 = (buf.data + 12);
            do
            {
              v119 = *(v51 - 3);
              v120 = fabsf(v119);
              v121 = v120 != INFINITY && v120 > 0.00000011921;
              v122 = 0.0;
              if (v121)
              {
                if (v119 > *v229.i32 || v119 < *v228.i32)
                {
                  v122 = 0.0;
                }

                else
                {
                  v122 = *(v51 - 3);
                }
              }

              *(v51 - 3) = v122;
              if (v11 != 1)
              {
                v124 = *(v51 - 2);
                v125 = 0.0;
                v126 = fabsf(v124);
                if (v126 != INFINITY && v126 > 0.00000011921)
                {
                  if (v124 > *v229.i32 || v124 < *v228.i32)
                  {
                    v125 = 0.0;
                  }

                  else
                  {
                    v125 = *(v51 - 2);
                  }
                }

                *(v51 - 2) = v125;
                if (v11 != 2)
                {
                  v129 = *(v51 - 1);
                  v130 = 0.0;
                  v131 = fabsf(v129);
                  if (v131 != INFINITY && v131 > 0.00000011921)
                  {
                    if (v129 > *v229.i32 || v129 < *v228.i32)
                    {
                      v130 = 0.0;
                    }

                    else
                    {
                      v130 = *(v51 - 1);
                    }
                  }

                  *(v51 - 1) = v130;
                  if (v11 != 3)
                  {
                    v134 = *v51;
                    v135 = 0.0;
                    v136 = fabsf(*v51);
                    if (v136 != INFINITY && v136 > 0.00000011921)
                    {
                      if (v134 > *v229.i32 || v134 < *v228.i32)
                      {
                        v135 = 0.0;
                      }

                      else
                      {
                        v135 = *v51;
                      }
                    }

                    *v51 = v135;
                    if (v11 != 4)
                    {
                      v139 = v51[1];
                      v140 = 0.0;
                      v141 = fabsf(v139);
                      if (v141 != INFINITY && v141 > 0.00000011921)
                      {
                        if (v139 > *v229.i32 || v139 < *v228.i32)
                        {
                          v140 = 0.0;
                        }

                        else
                        {
                          v140 = v51[1];
                        }
                      }

                      v51[1] = v140;
                      if (v11 != 5)
                      {
                        v143 = v51[2];
                        v144 = 0.0;
                        v145 = fabsf(v143);
                        if (v145 != INFINITY && v145 > 0.00000011921)
                        {
                          if (v143 > *v229.i32 || v143 < *v228.i32)
                          {
                            v144 = 0.0;
                          }

                          else
                          {
                            v144 = v51[2];
                          }
                        }

                        v51[2] = v144;
                        if (v11 != 6)
                        {
                          v147 = v51[3];
                          v148 = 0.0;
                          v149 = fabsf(v147);
                          if (v149 != INFINITY && v149 > 0.00000011921)
                          {
                            if (v147 > *v229.i32 || v147 < *v228.i32)
                            {
                              v148 = 0.0;
                            }

                            else
                            {
                              v148 = v51[3];
                            }
                          }

                          v51[3] = v148;
                        }
                      }
                    }
                  }
                }
              }

              v51 = (v51 + v13);
              --v10;
            }

            while (v10);
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_39;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v226 = CVPixelBufferGetPixelFormatType(a3);
    PixelBufferUtils::pixelFormatAsString(v226, &buf);
    v227 = (buf.width & 0x8000000000000000) == 0 ? &buf : buf.data;
    *v231 = 136446210;
    v232 = v227;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unsupported pixel format (%{public}s)", v231, 0xCu);
    if (SHIBYTE(buf.width) < 0)
    {
      operator delete(buf.data);
    }
  }

  return -22956;
}

+ (int64_t)warpAndFuseWithCurrDepth:(__CVBuffer *)a3 prevDepth:(__CVBuffer *)a4 currNormals:(__CVBuffer *)a5 prevNormals:(__CVBuffer *)a6 opticalFlow:(__CVBuffer *)a7 alphaMap:(__CVBuffer *)a8 defaultAlpha:(float)a9 depthOutput:(__CVBuffer *)pixelBuffer normalsOutput:(__CVBuffer *)a11
{
  v143 = *MEMORY[0x277D85DE8];
  result = -22953;
  if (a7 && a4 && a3 && pixelBuffer)
  {
    v19 = a6;
    if (a5)
    {
      _ZF = a11 == 0;
    }

    else
    {
      _ZF = 1;
    }

    v22 = !_ZF && a6 != 0;
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    if (PixelFormatType <= 1717856626)
    {
      if (PixelFormatType == 1278226536)
      {
        goto LABEL_29;
      }

      if (PixelFormatType != 1717855600)
      {
        goto LABEL_79;
      }
    }

    else if (PixelFormatType != 1717856627)
    {
      if (PixelFormatType != 1751411059 && PixelFormatType != 1751410032)
      {
LABEL_79:
        v82 = PixelFormatType;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          PixelBufferUtils::pixelFormatAsString(v82, &__p);
          if ((__p.width & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.data;
          }

          LODWORD(buf.data) = 136446210;
          *(&buf.data + 4) = p_p;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unsupported depth map format (%{public}s)", &buf, 0xCu);
          if (SHIBYTE(__p.width) < 0)
          {
            operator delete(__p.data);
          }
        }

        return -22956;
      }

LABEL_29:
      if (v22)
      {
        v27 = CVPixelBufferGetPixelFormatType(a5);
        if (v27 != 1717855600 && v27 != 1717856627)
        {
          v28 = v27;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            PixelBufferUtils::pixelFormatAsString(v28, &__p);
            v129 = (__p.width & 0x8000000000000000) == 0 ? &__p : __p.data;
            LODWORD(buf.data) = 136446210;
            *(&buf.data + 4) = v129;
            _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "for normals only float 32 format are supported (provided: %{public}s)", &buf, 0xCu);
            if (SHIBYTE(__p.width) < 0)
            {
              operator delete(__p.data);
            }
          }

          return -22956;
        }
      }

      v132 = v19;
      CVPixelBufferLockBaseAddress(a7, 1uLL);
      CVPixelBufferLockBaseAddress(a3, 1uLL);
      CVPixelBufferLockBaseAddress(a4, 1uLL);
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      memset(&__p, 0, sizeof(__p));
      v29 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a7, *MEMORY[0x277CBF3A0], &__p);
      memset(&buf, 0, sizeof(buf));
      PixelBufferUtils::asVImageBuffer(a3, *v29, &buf);
      memset(&v140, 0, sizeof(v140));
      PixelBufferUtils::asVImageBuffer(a4, *v29, &v140);
      memset(&v139, 0, sizeof(v139));
      PixelBufferUtils::asVImageBuffer(pixelBuffer, *v29, &v139);
      if (v22)
      {
        CVPixelBufferLockBaseAddress(a5, 1uLL);
        CVPixelBufferLockBaseAddress(v19, 1uLL);
        CVPixelBufferLockBaseAddress(a11, 0);
        PixelBufferUtils::asVImageBuffer(a5, *v29, &v138);
        data = v138.data;
        rowBytes = v138.rowBytes;
        PixelBufferUtils::asVImageBuffer(v19, *v29, &v138);
        v12 = v138.data;
        v19 = v138.rowBytes;
        PixelBufferUtils::asVImageBuffer(a11, *v29, &v138);
        v13 = v138.data;
        v15 = v138.rowBytes;
        if (!a8)
        {
          goto LABEL_39;
        }
      }

      else if (!a8)
      {
        goto LABEL_39;
      }

      CVPixelBufferLockBaseAddress(a8, 1uLL);
      PixelBufferUtils::asVImageBuffer(a8, *v29, &v138);
      v14 = v138.data;
      v29 = v138.rowBytes;
LABEL_39:
      Width = CVPixelBufferGetWidth(a3);
      Height = CVPixelBufferGetHeight(a3);
      if (Height && Width)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = buf.rowBytes;
        v36 = __p.rowBytes;
        v37 = v139.rowBytes;
        v38 = v140.rowBytes;
        v39 = a9;
        do
        {
          v40 = 0;
          v41 = (__p.data + v36 * v34);
          v42 = &v14[v34 * v29];
          if (!a8)
          {
            v42 = 0;
          }

          v43 = data + v34 * rowBytes;
          v44 = &v13[v34 * v15];
          if (!v22)
          {
            v43 = 0;
            v44 = 0;
          }

          v45 = buf.data + v33;
          v46 = v139.data + v32;
          do
          {
            _H19 = *&v45[2 * v40];
            *&v46[2 * v40] = _H19;
            v62 = 0uLL;
            if (v22)
            {
              v62 = *(v43 + 16 * v40);
              *&v44[16 * v40] = v62;
            }

            _H20 = *v41;
            __asm { FCVT            S20, H20 }

            _H21 = v41[1];
            __asm { FCVT            S21, H21 }

            _NF = (fabsf(_S20) + fabsf(_S21)) < 600.0;
            v53 = roundf(_S20);
            v54 = v53 + v40;
            _NF = _NF && v54 < (Width - 1);
            v56 = _NF && v54 > 1.0;
            v57 = roundf(_S21);
            v58 = v57 + v34;
            if (v56 && v58 < (Height - 1) && v58 > 1.0)
            {
              __asm { FCVT            S19, H19 }

              v64 = v57;
              v65 = v53;
              _H20 = *(v140.data + 2 * v53 + 2 * v40 + v38 * (v34 + v64));
              if (a8)
              {
                __asm { FCVT            S16, H20 }

                _H21 = *&v42[2 * v40];
                __asm { FCVT            D22, H21 }

                if (_D22 < 0.0)
                {
                  _D22 = 0.0;
                }

                v70 = _D22;
                if (_H21 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                {
                  v71 = v70;
                }

                else
                {
                  v71 = 1.0;
                }

                if (vabds_f32(_S16, _S19) >= 0.5)
                {
                  v39 = a9;
                }

                else
                {
                  v39 = v71;
                }
              }

              v72 = (v39 * _S19);
              __asm { FCVT            D20, H20 }

              v74 = 1.0 - v39;
              _D20 = v72 + _D20 * v74;
              __asm { FCVT            H20, D20 }

              *&v46[2 * v40] = LOWORD(_D20);
              if (v22)
              {
                v76 = &v12[16 * v65 + v19 * (v34 + v64)];
                v77 = vmlaq_n_f64(vcvtq_f64_f32(vmul_n_f32(*v62.f32, v39)), vcvtq_f64_f32(*&v76[16 * v40]), v74);
                *v77.f32 = vcvt_f32_f64(v77);
                v78 = vmuls_lane_f32(v39, v62, 2) + COERCE_FLOAT(*&v76[16 * v40 + 8]) * v74;
                v77.f32[2] = v78;
                v79 = vmulq_f32(v77, v77);
                *&v80 = v79.f32[2] + vaddv_f32(*v79.f32);
                *v79.f32 = vrsqrte_f32(v80);
                *v79.f32 = vmul_f32(*v79.f32, vrsqrts_f32(v80, vmul_f32(*v79.f32, *v79.f32)));
                v81 = vmulq_n_f32(v77, vmul_f32(*v79.f32, vrsqrts_f32(v80, vmul_f32(*v79.f32, *v79.f32))).f32[0]);
                v81.i32[3] = 1.0;
                *&v44[16 * v40] = v81;
              }
            }

            ++v40;
            v41 += 2;
          }

          while (Width != v40);
          ++v34;
          v33 += v35;
          v32 += v37;
        }

        while (v34 != Height);
      }

      CVPixelBufferUnlockBaseAddress(a7, 1uLL);
      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
      CVPixelBufferUnlockBaseAddress(a4, 1uLL);
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      if (v22)
      {
        CVPixelBufferUnlockBaseAddress(a11, 0);
        CVPixelBufferUnlockBaseAddress(a5, 1uLL);
        CVPixelBufferUnlockBaseAddress(v132, 1uLL);
      }

      if (!a8)
      {
        return 0;
      }

      goto LABEL_122;
    }

    if (v22)
    {
      v24 = CVPixelBufferGetPixelFormatType(a5);
      if (v24 != 1717855600 && v24 != 1717856627)
      {
        v25 = v24;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          PixelBufferUtils::pixelFormatAsString(v25, &__p);
          v130 = (__p.width & 0x8000000000000000) == 0 ? &__p : __p.data;
          LODWORD(buf.data) = 136446210;
          *(&buf.data + 4) = v130;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "for normals only float 32 format are supported (provided: %{public}s)", &buf, 0xCu);
          if (SHIBYTE(__p.width) < 0)
          {
            operator delete(__p.data);
          }
        }

        return -22956;
      }
    }

    v131 = v19;
    CVPixelBufferLockBaseAddress(a7, 1uLL);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    CVPixelBufferLockBaseAddress(a4, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    memset(&__p, 0, sizeof(__p));
    v26 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(a7, *MEMORY[0x277CBF3A0], &__p);
    memset(&buf, 0, sizeof(buf));
    PixelBufferUtils::asVImageBuffer(a3, *v26, &buf);
    memset(&v140, 0, sizeof(v140));
    PixelBufferUtils::asVImageBuffer(a4, *v26, &v140);
    memset(&v139, 0, sizeof(v139));
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *v26, &v139);
    if (v22)
    {
      CVPixelBufferLockBaseAddress(a5, 1uLL);
      CVPixelBufferLockBaseAddress(v19, 1uLL);
      CVPixelBufferLockBaseAddress(a11, 0);
      PixelBufferUtils::asVImageBuffer(a5, *v26, &v138);
      rowBytes = v138.data;
      data = v138.rowBytes;
      PixelBufferUtils::asVImageBuffer(v19, *v26, &v138);
      v12 = v138.data;
      v19 = v138.rowBytes;
      PixelBufferUtils::asVImageBuffer(a11, *v26, &v138);
      v13 = v138.data;
      v15 = v138.rowBytes;
      if (!a8)
      {
        goto LABEL_83;
      }
    }

    else if (!a8)
    {
      goto LABEL_83;
    }

    CVPixelBufferLockBaseAddress(a8, 1uLL);
    PixelBufferUtils::asVImageBuffer(a8, *v26, &v138);
    v14 = v138.data;
    v26 = v138.rowBytes;
LABEL_83:
    v83 = CVPixelBufferGetWidth(a3);
    v84 = CVPixelBufferGetHeight(a3);
    if (v84 && v83)
    {
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = buf.rowBytes;
      v89 = __p.rowBytes;
      v90 = v139.rowBytes;
      v91 = v140.rowBytes;
      v92 = a9;
      do
      {
        v93 = 0;
        v94 = (__p.data + v89 * v87);
        v95 = &v14[v87 * v26];
        if (!a8)
        {
          v95 = 0;
        }

        v96 = rowBytes + v87 * data;
        v97 = &v13[v87 * v15];
        if (!v22)
        {
          v96 = 0;
          v97 = 0;
        }

        v98 = buf.data + v86;
        v99 = v139.data + v85;
        do
        {
          v112 = *&v98[4 * v93];
          *&v99[4 * v93] = v112;
          v113 = 0uLL;
          if (v22)
          {
            v113 = *(v96 + 16 * v93);
            *&v97[16 * v93] = v113;
          }

          _H19 = *v94;
          __asm { FCVT            S19, H19 }

          _H20 = v94[1];
          __asm { FCVT            S20, H20 }

          _NF = (fabsf(_S19) + fabsf(_S20)) < 600.0;
          v104 = roundf(_S19);
          v105 = v104 + v93;
          v107 = _NF && v105 < (v83 - 1) && v105 > 1.0;
          v108 = roundf(_S20);
          v109 = v108 + v87;
          if (v107 && v109 < (v84 - 1) && v109 > 1.0)
          {
            v114 = v108;
            v115 = v104;
            v116 = *(v140.data + 4 * v104 + 4 * v93 + v91 * (v87 + v114));
            if (a8)
            {
              v117 = *&v95[4 * v93];
              v118 = v117 >= 0.0 ? *&v95[4 * v93] : 0.0;
              v92 = v117 <= 1.0 ? v118 : 1.0;
              if (vabds_f32(v116, v112) >= 0.5)
              {
                v92 = a9;
              }
            }

            v119 = (v112 * v92);
            v120 = 1.0 - v92;
            v121 = v119 + v116 * v120;
            *&v99[4 * v93] = v121;
            if (v22)
            {
              v122 = &v12[16 * v115 + v19 * (v87 + v114)];
              v123 = vmlaq_n_f64(vcvtq_f64_f32(vmul_n_f32(*v113.f32, v92)), vcvtq_f64_f32(*&v122[16 * v93]), v120);
              *v123.f32 = vcvt_f32_f64(v123);
              v124 = vmuls_lane_f32(v92, v113, 2) + COERCE_FLOAT(*&v122[16 * v93 + 8]) * v120;
              v123.f32[2] = v124;
              v125 = vmulq_f32(v123, v123);
              *&v126 = v125.f32[2] + vaddv_f32(*v125.f32);
              *v125.f32 = vrsqrte_f32(v126);
              *v125.f32 = vmul_f32(*v125.f32, vrsqrts_f32(v126, vmul_f32(*v125.f32, *v125.f32)));
              v127 = vmulq_n_f32(v123, vmul_f32(*v125.f32, vrsqrts_f32(v126, vmul_f32(*v125.f32, *v125.f32))).f32[0]);
              v127.i32[3] = 1.0;
              *&v97[16 * v93] = v127;
            }
          }

          ++v93;
          v94 += 2;
        }

        while (v83 != v93);
        ++v87;
        v86 += v88;
        v85 += v90;
      }

      while (v87 != v84);
    }

    CVPixelBufferUnlockBaseAddress(a7, 1uLL);
    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    CVPixelBufferUnlockBaseAddress(a4, 1uLL);
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    if (v22)
    {
      CVPixelBufferUnlockBaseAddress(a11, 0);
      CVPixelBufferUnlockBaseAddress(a5, 1uLL);
      CVPixelBufferUnlockBaseAddress(v131, 1uLL);
    }

    if (!a8)
    {
      return 0;
    }

LABEL_122:
    CVPixelBufferUnlockBaseAddress(a8, 1uLL);
    return 0;
  }

  return result;
}

+ (int64_t)postProcessWithDepth:(__CVBuffer *)a3 confidence:(__CVBuffer *)a4 normals:(__CVBuffer *)a5 depthOutput:(__CVBuffer *)a6 confidenceOutput:(__CVBuffer *)a7 normalsOutput:(__CVBuffer *)a8 normalsRotation:(int64_t)a9 rawConfidenceUnits:(unint64_t)a10 outConfidenceUnits:(unint64_t)a11 confidenceLevelRanges:(id)a12
{
  v18 = a12;
  v19 = [ADUtils postProcessDepth:a3 depthOutput:a6];
  if (!v19 && (!a4 || !a7 || (v19 = [ADUtils postProcessConfidence:a4 confidenceOutput:a7 rawConfidenceUnits:a10 outConfidenceUnits:a11 confidenceLevelRanges:v18]) == 0) && (!a5 || !a8 || (v19 = [ADUtils postProcessNormals:a5 normalsOutput:a8 normalsRotation:a9]) == 0))
  {
    v19 = 0;
  }

  return v19;
}

+ (int64_t)postProcessNormals:(__CVBuffer *)a3 normalsOutput:(__CVBuffer *)a4 normalsRotation:(int64_t)a5
{
  v16 = *MEMORY[0x277D85DE8];
  result = -22953;
  if (a3 && a4)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    v10 = PixelFormatType;
    if ((PixelFormatType == 1717856627 || PixelFormatType == 1717855600) && PixelFormatType == CVPixelBufferGetPixelFormatType(a4))
    {

      return [ADUtils copyModifyNormalsPixelBuffer:a3 output:a4 normalsRotation:a5];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        PixelBufferUtils::pixelFormatAsString(v10, __p);
        v11 = v13 >= 0 ? __p : __p[0];
        *buf = 136446210;
        v15 = v11;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "only 32bit float supported for normals (provided: %{public}s)", buf, 0xCu);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }

      return -22956;
    }
  }

  return result;
}

+ (int64_t)postProcessConfidence:(__CVBuffer *)a3 confidenceOutput:(__CVBuffer *)a4 rawConfidenceUnits:(unint64_t)a5 outConfidenceUnits:(unint64_t)a6 confidenceLevelRanges:(id)a7
{
  v229 = *MEMORY[0x277D85DE8];
  v11 = a7;
  v12 = -22950;
  if (!a3 || !a4)
  {
    goto LABEL_409;
  }

  if (a6 > 1)
  {
    if (a6 != 2)
    {
      if (a6 != 3)
      {
        goto LABEL_409;
      }

      if (a5 != 3)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Conversion to kADConfidenceUnitsLogarithmicVariance from other units is not supported", buf, 2u);
        }

        v12 = -22951;
        goto LABEL_409;
      }

      goto LABEL_29;
    }

    if (a5 != 3)
    {
      if (a5 == 2)
      {
        goto LABEL_29;
      }

      if (a5)
      {
        goto LABEL_409;
      }

      v21 = *MEMORY[0x277CBF3A0];
      v22 = *(MEMORY[0x277CBF3A0] + 8);
      v17 = *(MEMORY[0x277CBF3A0] + 16);
      v16 = *(MEMORY[0x277CBF3A0] + 24);
      PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
      v23 = CVPixelBufferGetPixelFormatType(a4);
      v20 = v23;
      if (PixelFormatType > 1717856626)
      {
        if (PixelFormatType != 1717856627)
        {
          if (PixelFormatType != 1751411059 && PixelFormatType != 1751410032)
          {
            goto LABEL_396;
          }

          goto LABEL_68;
        }
      }

      else if (PixelFormatType != 1278226534)
      {
        if (PixelFormatType != 1278226536)
        {
          if (PixelFormatType != 1717855600)
          {
            goto LABEL_396;
          }

          goto LABEL_88;
        }

LABEL_68:
        if (v23 <= 1717856626)
        {
          if (v23 == 1278226536)
          {
LABEL_398:
            Width = CVPixelBufferGetWidth(a3);
            Height = CVPixelBufferGetHeight(a3);
            v28 = CVPixelBufferGetWidth(a4);
            v29 = CVPixelBufferGetHeight(a4);
            BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
            v187 = CVPixelBufferGetBytesPerRow(a4);
            v245.origin.x = v21;
            v245.origin.y = v22;
            v245.size.width = v17;
            v245.size.height = v16;
            if (CGRectIsEmpty(v245))
            {
              v21 = *MEMORY[0x277CBF348];
              v22 = *(MEMORY[0x277CBF348] + 8);
              v17 = Width;
              v16 = Height;
            }

            if (v17 > v28 || v16 > v29)
            {
              goto LABEL_407;
            }

            if (v21 + v17 <= Width && v22 + v16 <= Height)
            {
              if (a3 != a4)
              {
                CVPixelBufferLockBaseAddress(a3, 1uLL);
              }

              CVPixelBufferLockBaseAddress(a4, 0);
              BaseAddress = CVPixelBufferGetBaseAddress(a3);
              v206 = CVPixelBufferGetBaseAddress(a4);
              if (v17 > 0.0 && v16 > 0.0)
              {
                v207 = 0;
                do
                {
                  v208 = 0;
                  do
                  {
                    *&v206[2 * v208 + v187 * v207] = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) - *&BaseAddress[2 * v21 + 2 * v208 + BytesPerRow * (v22 + v207)];
                    ++v208;
                  }

                  while (v17 > v208);
                  ++v207;
                }

                while (v16 > v207);
              }

              goto LABEL_438;
            }

            goto LABEL_404;
          }

          if (v23 != 1717855600)
          {
            goto LABEL_396;
          }
        }

        else if (v23 != 1717856627)
        {
          if (v23 != 1751411059 && v23 != 1751410032)
          {
            goto LABEL_396;
          }

          goto LABEL_398;
        }

        Width = CVPixelBufferGetWidth(a3);
        Height = CVPixelBufferGetHeight(a3);
        v28 = CVPixelBufferGetWidth(a4);
        v29 = CVPixelBufferGetHeight(a4);
        v178 = CVPixelBufferGetBytesPerRow(a3);
        v179 = CVPixelBufferGetBytesPerRow(a4);
        v244.origin.x = v21;
        v244.origin.y = v22;
        v244.size.width = v17;
        v244.size.height = v16;
        if (CGRectIsEmpty(v244))
        {
          v21 = *MEMORY[0x277CBF348];
          v22 = *(MEMORY[0x277CBF348] + 8);
          v17 = Width;
          v16 = Height;
        }

        if (v17 > v28 || v16 > v29)
        {
          goto LABEL_407;
        }

        if (v21 + v17 <= Width && v22 + v16 <= Height)
        {
          if (a3 != a4)
          {
            CVPixelBufferLockBaseAddress(a3, 1uLL);
          }

          CVPixelBufferLockBaseAddress(a4, 0);
          v180 = CVPixelBufferGetBaseAddress(a3);
          v181 = CVPixelBufferGetBaseAddress(a4);
          if (v17 > 0.0 && v16 > 0.0)
          {
            v182 = 0;
            do
            {
              v183 = 0;
              do
              {
                _H1 = *&v180[2 * v21 + 2 * v183 + v178 * (v22 + v182)];
                __asm { FCVT            S1, H1 }

                *&v181[4 * v183++ + v179 * v182] = 1.0 - _S1;
              }

              while (v17 > v183);
              ++v182;
            }

            while (v16 > v182);
          }

          goto LABEL_438;
        }

LABEL_404:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 134219264;
          *&buf[4] = v21;
          v220 = 2048;
          v221 = v22;
          goto LABEL_406;
        }

LABEL_408:
        v12 = -22957;
        goto LABEL_409;
      }

LABEL_88:
      if (v23 <= 1717856626)
      {
        if (v23 != 1278226534)
        {
          if (v23 != 1278226536)
          {
            if (v23 != 1717855600)
            {
              goto LABEL_396;
            }

            goto LABEL_242;
          }

          goto LABEL_166;
        }

LABEL_242:
        Width = CVPixelBufferGetWidth(a3);
        Height = CVPixelBufferGetHeight(a3);
        v28 = CVPixelBufferGetWidth(a4);
        v29 = CVPixelBufferGetHeight(a4);
        v114 = CVPixelBufferGetBytesPerRow(a3);
        v115 = CVPixelBufferGetBytesPerRow(a4);
        v237.origin.x = v21;
        v237.origin.y = v22;
        v237.size.width = v17;
        v237.size.height = v16;
        if (CGRectIsEmpty(v237))
        {
          v21 = *MEMORY[0x277CBF348];
          v22 = *(MEMORY[0x277CBF348] + 8);
          v17 = Width;
          v16 = Height;
        }

        if (v17 > v28 || v16 > v29)
        {
          goto LABEL_407;
        }

        if (v21 + v17 <= Width && v22 + v16 <= Height)
        {
          if (a3 != a4)
          {
            CVPixelBufferLockBaseAddress(a3, 1uLL);
          }

          CVPixelBufferLockBaseAddress(a4, 0);
          v116 = CVPixelBufferGetBaseAddress(a3);
          v117 = CVPixelBufferGetBaseAddress(a4);
          if (v17 > 0.0 && v16 > 0.0)
          {
            v118 = 0;
            do
            {
              v119 = 0;
              do
              {
                *&v117[4 * v119 + v115 * v118] = 1.0 - *&v116[4 * v21 + 4 * v119 + v114 * (v22 + v118)];
                ++v119;
              }

              while (v17 > v119);
              ++v118;
            }

            while (v16 > v118);
          }

          goto LABEL_438;
        }

        goto LABEL_404;
      }

      if (v23 == 1717856627)
      {
        goto LABEL_242;
      }

      if (v23 == 1751411059 || v23 == 1751410032)
      {
LABEL_166:
        Width = CVPixelBufferGetWidth(a3);
        Height = CVPixelBufferGetHeight(a3);
        v28 = CVPixelBufferGetWidth(a4);
        v29 = CVPixelBufferGetHeight(a4);
        v72 = CVPixelBufferGetBytesPerRow(a3);
        v73 = CVPixelBufferGetBytesPerRow(a4);
        v233.origin.x = v21;
        v233.origin.y = v22;
        v233.size.width = v17;
        v233.size.height = v16;
        if (CGRectIsEmpty(v233))
        {
          v21 = *MEMORY[0x277CBF348];
          v22 = *(MEMORY[0x277CBF348] + 8);
          v17 = Width;
          v16 = Height;
        }

        if (v17 > v28 || v16 > v29)
        {
          goto LABEL_407;
        }

        if (v21 + v17 <= Width && v22 + v16 <= Height)
        {
          if (a3 != a4)
          {
            CVPixelBufferLockBaseAddress(a3, 1uLL);
          }

          CVPixelBufferLockBaseAddress(a4, 0);
          v74 = CVPixelBufferGetBaseAddress(a3);
          v75 = CVPixelBufferGetBaseAddress(a4);
          if (v17 > 0.0 && v16 > 0.0)
          {
            v76 = 0;
            do
            {
              v77 = 0;
              do
              {
                _S1 = 1.0 - *&v74[4 * v21 + 4 * v77 + v72 * (v22 + v76)];
                __asm { FCVT            H1, S1 }

                *&v75[2 * v77++ + v73 * v76] = LOWORD(_S1);
              }

              while (v17 > v77);
              ++v76;
            }

            while (v16 > v76);
          }

          goto LABEL_438;
        }

        goto LABEL_404;
      }

LABEL_396:
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_397;
      }

      goto LABEL_441;
    }

    v15 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    v25 = CVPixelBufferGetPixelFormatType(a4);
    v20 = v25;
    if (PixelFormatType > 1717856626)
    {
      if (PixelFormatType != 1717856627)
      {
        if (PixelFormatType != 1751411059 && PixelFormatType != 1751410032)
        {
          goto LABEL_323;
        }

        goto LABEL_52;
      }
    }

    else if (PixelFormatType != 1278226534)
    {
      if (PixelFormatType != 1278226536)
      {
        if (PixelFormatType != 1717855600)
        {
          goto LABEL_323;
        }

        goto LABEL_78;
      }

LABEL_52:
      if (v25 <= 1717856626)
      {
        if (v25 == 1278226536)
        {
          goto LABEL_325;
        }

        if (v25 != 1717855600)
        {
          goto LABEL_323;
        }
      }

      else if (v25 != 1717856627)
      {
        if (v25 != 1751411059 && v25 != 1751410032)
        {
          goto LABEL_323;
        }

LABEL_325:
        Width = CVPixelBufferGetWidth(a3);
        Height = CVPixelBufferGetHeight(a3);
        v28 = CVPixelBufferGetWidth(a4);
        v29 = CVPixelBufferGetHeight(a4);
        CVPixelBufferGetBytesPerRow(a3);
        v153 = CVPixelBufferGetBytesPerRow(a4);
        v241.origin.x = v15;
        v241.origin.y = v14;
        v241.size.width = v17;
        v241.size.height = v16;
        if (CGRectIsEmpty(v241))
        {
          v15 = *MEMORY[0x277CBF348];
          v14 = *(MEMORY[0x277CBF348] + 8);
          v17 = Width;
          v16 = Height;
        }

        if (v17 <= v28 && v16 <= v29)
        {
          if (v15 + v17 <= Width && v14 + v16 <= Height)
          {
            if (a3 != a4)
            {
              CVPixelBufferLockBaseAddress(a3, 1uLL);
            }

            CVPixelBufferLockBaseAddress(a4, 0);
            CVPixelBufferGetBaseAddress(a3);
            v154 = CVPixelBufferGetBaseAddress(a4);
            if (v17 > 0.0 && v16 > 0.0)
            {
              v155 = 0;
              do
              {
                v156 = 0;
                do
                {
                  _H2 = COERCE_UNSIGNED_INT(1.0);
                  __asm { FCMP            H3, #0 }

                  if (_NF ^ _VF | _ZF)
                  {
                    __asm { FCVT            S3, H3 }

                    _H2 = 0;
                    if (_S3 > -3.4028e38)
                    {
                      v160 = ((_S3 * 0.0019531) + 1.0) * ((_S3 * 0.0019531) + 1.0);
                      v161 = ((v160 * v160) * (v160 * v160)) * ((v160 * v160) * (v160 * v160));
                      v162 = ((v161 * v161) * (v161 * v161)) * ((v161 * v161) * (v161 * v161));
                      _S2 = v162 * v162;
                      __asm { FCVT            H2, S2 }
                    }
                  }

                  *&v154[2 * v156++ + v153 * v155] = _H2;
                }

                while (v17 > v156);
                ++v155;
              }

              while (v16 > v155);
            }

            goto LABEL_438;
          }

          goto LABEL_377;
        }

        goto LABEL_407;
      }

      Width = CVPixelBufferGetWidth(a3);
      Height = CVPixelBufferGetHeight(a3);
      v28 = CVPixelBufferGetWidth(a4);
      v29 = CVPixelBufferGetHeight(a4);
      CVPixelBufferGetBytesPerRow(a3);
      v143 = CVPixelBufferGetBytesPerRow(a4);
      v240.origin.x = v15;
      v240.origin.y = v14;
      v240.size.width = v17;
      v240.size.height = v16;
      if (CGRectIsEmpty(v240))
      {
        v15 = *MEMORY[0x277CBF348];
        v14 = *(MEMORY[0x277CBF348] + 8);
        v17 = Width;
        v16 = Height;
      }

      if (v17 <= v28 && v16 <= v29)
      {
        if (v15 + v17 <= Width && v14 + v16 <= Height)
        {
          if (a3 != a4)
          {
            CVPixelBufferLockBaseAddress(a3, 1uLL);
          }

          CVPixelBufferLockBaseAddress(a4, 0);
          CVPixelBufferGetBaseAddress(a3);
          v144 = CVPixelBufferGetBaseAddress(a4);
          if (v17 > 0.0 && v16 > 0.0)
          {
            v145 = 0;
            do
            {
              v146 = 0;
              do
              {
                v147 = 1.0;
                __asm { FCMP            H3, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  __asm { FCVT            S3, H3 }

                  v147 = 0.0;
                  if (_S3 > -3.4028e38)
                  {
                    v150 = ((_S3 * 0.0019531) + 1.0) * ((_S3 * 0.0019531) + 1.0);
                    v151 = ((v150 * v150) * (v150 * v150)) * ((v150 * v150) * (v150 * v150));
                    v152 = ((v151 * v151) * (v151 * v151)) * ((v151 * v151) * (v151 * v151));
                    v147 = v152 * v152;
                  }
                }

                *&v144[4 * v146++ + v143 * v145] = v147;
              }

              while (v17 > v146);
              ++v145;
            }

            while (v16 > v145);
          }

          goto LABEL_438;
        }

        goto LABEL_377;
      }

      goto LABEL_407;
    }

LABEL_78:
    if (v25 <= 1717856626)
    {
      if (v25 == 1278226534)
      {
        goto LABEL_202;
      }

      if (v25 != 1278226536)
      {
        if (v25 != 1717855600)
        {
          goto LABEL_323;
        }

LABEL_202:
        Width = CVPixelBufferGetWidth(a3);
        Height = CVPixelBufferGetHeight(a3);
        v28 = CVPixelBufferGetWidth(a4);
        v29 = CVPixelBufferGetHeight(a4);
        v89 = CVPixelBufferGetBytesPerRow(a3);
        v90 = CVPixelBufferGetBytesPerRow(a4);
        v235.origin.x = v15;
        v235.origin.y = v14;
        v235.size.width = v17;
        v235.size.height = v16;
        if (CGRectIsEmpty(v235))
        {
          v15 = *MEMORY[0x277CBF348];
          v14 = *(MEMORY[0x277CBF348] + 8);
          v17 = Width;
          v16 = Height;
        }

        if (v17 <= v28 && v16 <= v29)
        {
          if (v15 + v17 <= Width && v14 + v16 <= Height)
          {
            if (a3 != a4)
            {
              CVPixelBufferLockBaseAddress(a3, 1uLL);
            }

            CVPixelBufferLockBaseAddress(a4, 0);
            v91 = CVPixelBufferGetBaseAddress(a3);
            v92 = CVPixelBufferGetBaseAddress(a4);
            if (v17 > 0.0 && v16 > 0.0)
            {
              v93 = 0;
              do
              {
                v94 = 0;
                do
                {
                  v95 = *&v91[4 * v15 + 4 * v94 + v89 * (v14 + v93)];
                  v96 = 1.0;
                  if (v95 <= 0.0)
                  {
                    v96 = 0.0;
                    if (v95 > -3.4028e38)
                    {
                      v97 = ((v95 * 0.0019531) + 1.0) * ((v95 * 0.0019531) + 1.0);
                      v98 = ((v97 * v97) * (v97 * v97)) * ((v97 * v97) * (v97 * v97));
                      v99 = ((v98 * v98) * (v98 * v98)) * ((v98 * v98) * (v98 * v98));
                      v96 = v99 * v99;
                    }
                  }

                  *&v92[4 * v94++ + v90 * v93] = v96;
                }

                while (v17 > v94);
                ++v93;
              }

              while (v16 > v93);
            }

            goto LABEL_438;
          }

          goto LABEL_377;
        }

        goto LABEL_407;
      }

      goto LABEL_120;
    }

    if (v25 == 1717856627)
    {
      goto LABEL_202;
    }

    if (v25 == 1751411059 || v25 == 1751410032)
    {
LABEL_120:
      Width = CVPixelBufferGetWidth(a3);
      Height = CVPixelBufferGetHeight(a3);
      v28 = CVPixelBufferGetWidth(a4);
      v29 = CVPixelBufferGetHeight(a4);
      v45 = CVPixelBufferGetBytesPerRow(a3);
      v46 = CVPixelBufferGetBytesPerRow(a4);
      v231.origin.x = v15;
      v231.origin.y = v14;
      v231.size.width = v17;
      v231.size.height = v16;
      if (CGRectIsEmpty(v231))
      {
        v15 = *MEMORY[0x277CBF348];
        v14 = *(MEMORY[0x277CBF348] + 8);
        v17 = Width;
        v16 = Height;
      }

      if (v17 <= v28 && v16 <= v29)
      {
        if (v15 + v17 <= Width && v14 + v16 <= Height)
        {
          if (a3 != a4)
          {
            CVPixelBufferLockBaseAddress(a3, 1uLL);
          }

          CVPixelBufferLockBaseAddress(a4, 0);
          v47 = CVPixelBufferGetBaseAddress(a3);
          v48 = CVPixelBufferGetBaseAddress(a4);
          if (v17 > 0.0 && v16 > 0.0)
          {
            v49 = 0;
            do
            {
              v50 = 0;
              do
              {
                v51 = *&v47[4 * v15 + 4 * v50 + v45 * (v14 + v49)];
                _H2 = COERCE_UNSIGNED_INT(1.0);
                if (v51 <= 0.0)
                {
                  _H2 = 0;
                  if (v51 > -3.4028e38)
                  {
                    v53 = ((v51 * 0.0019531) + 1.0) * ((v51 * 0.0019531) + 1.0);
                    v54 = ((v53 * v53) * (v53 * v53)) * ((v53 * v53) * (v53 * v53));
                    v55 = ((v54 * v54) * (v54 * v54)) * ((v54 * v54) * (v54 * v54));
                    _S2 = v55 * v55;
                    __asm { FCVT            H2, S2 }
                  }
                }

                *&v48[2 * v50++ + v46 * v49] = _H2;
              }

              while (v17 > v50);
              ++v49;
            }

            while (v16 > v49);
          }

          goto LABEL_438;
        }

        goto LABEL_377;
      }

      goto LABEL_407;
    }

LABEL_323:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_397;
    }

    goto LABEL_441;
  }

  if (!a6)
  {
    if (a5)
    {
      if (a5 != 2)
      {
        if (a5 != 3)
        {
          goto LABEL_409;
        }

        v15 = *MEMORY[0x277CBF3A0];
        v14 = *(MEMORY[0x277CBF3A0] + 8);
        v17 = *(MEMORY[0x277CBF3A0] + 16);
        v16 = *(MEMORY[0x277CBF3A0] + 24);
        PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
        v19 = CVPixelBufferGetPixelFormatType(a4);
        v20 = v19;
        if (PixelFormatType > 1717856626)
        {
          if (PixelFormatType != 1717856627)
          {
            if (PixelFormatType != 1751411059 && PixelFormatType != 1751410032)
            {
              goto LABEL_369;
            }

            goto LABEL_60;
          }
        }

        else if (PixelFormatType != 1278226534)
        {
          if (PixelFormatType != 1278226536)
          {
            if (PixelFormatType != 1717855600)
            {
              goto LABEL_369;
            }

            goto LABEL_83;
          }

LABEL_60:
          if (v19 <= 1717856626)
          {
            if (v19 == 1278226536)
            {
              goto LABEL_371;
            }

            if (v19 != 1717855600)
            {
              goto LABEL_369;
            }
          }

          else if (v19 != 1717856627)
          {
            if (v19 != 1751411059 && v19 != 1751410032)
            {
              goto LABEL_369;
            }

LABEL_371:
            Width = CVPixelBufferGetWidth(a3);
            Height = CVPixelBufferGetHeight(a3);
            v28 = CVPixelBufferGetWidth(a4);
            v29 = CVPixelBufferGetHeight(a4);
            CVPixelBufferGetBytesPerRow(a3);
            v177 = CVPixelBufferGetBytesPerRow(a4);
            v243.origin.x = v15;
            v243.origin.y = v14;
            v243.size.width = v17;
            v243.size.height = v16;
            if (CGRectIsEmpty(v243))
            {
              v15 = *MEMORY[0x277CBF348];
              v14 = *(MEMORY[0x277CBF348] + 8);
              v17 = Width;
              v16 = Height;
            }

            if (v17 <= v28 && v16 <= v29)
            {
              if (v15 + v17 <= Width && v14 + v16 <= Height)
              {
                if (a3 != a4)
                {
                  CVPixelBufferLockBaseAddress(a3, 1uLL);
                }

                CVPixelBufferLockBaseAddress(a4, 0);
                CVPixelBufferGetBaseAddress(a3);
                v192 = CVPixelBufferGetBaseAddress(a4);
                if (v17 > 0.0 && v16 > 0.0)
                {
                  v193 = 0;
                  do
                  {
                    v194 = 0;
                    do
                    {
                      v199 = 1.0;
                      __asm { FCMP            H4, #0 }

                      if (_NF ^ _VF | _ZF)
                      {
                        __asm { FCVT            S4, H4 }

                        v199 = 0.0;
                        if (_S4 > -3.4028e38)
                        {
                          v202 = ((_S4 * 0.0019531) + 1.0) * ((_S4 * 0.0019531) + 1.0);
                          v203 = ((v202 * v202) * (v202 * v202)) * ((v202 * v202) * (v202 * v202));
                          v204 = ((v203 * v203) * (v203 * v203)) * ((v203 * v203) * (v203 * v203));
                          v199 = v204 * v204;
                        }
                      }

                      v195 = 1.0 - v199;
                      if (v195 <= 1.0)
                      {
                        v196 = v195;
                      }

                      else
                      {
                        v196 = 1.0;
                      }

                      if (v195 >= 0.0)
                      {
                        _S3 = v196;
                      }

                      else
                      {
                        _S3 = 0.0;
                      }

                      __asm { FCVT            H3, S3 }

                      *&v192[2 * v194++ + v177 * v193] = _H3;
                    }

                    while (v17 > v194);
                    ++v193;
                  }

                  while (v16 > v193);
                }

                goto LABEL_438;
              }

              goto LABEL_377;
            }

            goto LABEL_407;
          }

          Width = CVPixelBufferGetWidth(a3);
          Height = CVPixelBufferGetHeight(a3);
          v28 = CVPixelBufferGetWidth(a4);
          v29 = CVPixelBufferGetHeight(a4);
          CVPixelBufferGetBytesPerRow(a3);
          v164 = CVPixelBufferGetBytesPerRow(a4);
          v242.origin.x = v15;
          v242.origin.y = v14;
          v242.size.width = v17;
          v242.size.height = v16;
          if (CGRectIsEmpty(v242))
          {
            v15 = *MEMORY[0x277CBF348];
            v14 = *(MEMORY[0x277CBF348] + 8);
            v17 = Width;
            v16 = Height;
          }

          if (v17 <= v28 && v16 <= v29)
          {
            if (v15 + v17 <= Width && v14 + v16 <= Height)
            {
              if (a3 != a4)
              {
                CVPixelBufferLockBaseAddress(a3, 1uLL);
              }

              CVPixelBufferLockBaseAddress(a4, 0);
              CVPixelBufferGetBaseAddress(a3);
              v165 = CVPixelBufferGetBaseAddress(a4);
              if (v17 > 0.0 && v16 > 0.0)
              {
                v166 = 0;
                do
                {
                  v167 = 0;
                  do
                  {
                    v171 = 1.0;
                    __asm { FCMP            H4, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      __asm { FCVT            S4, H4 }

                      v171 = 0.0;
                      if (_S4 > -3.4028e38)
                      {
                        v174 = ((_S4 * 0.0019531) + 1.0) * ((_S4 * 0.0019531) + 1.0);
                        v175 = ((v174 * v174) * (v174 * v174)) * ((v174 * v174) * (v174 * v174));
                        v176 = ((v175 * v175) * (v175 * v175)) * ((v175 * v175) * (v175 * v175));
                        v171 = v176 * v176;
                      }
                    }

                    v168 = 1.0 - v171;
                    if (v168 <= 1.0)
                    {
                      v169 = v168;
                    }

                    else
                    {
                      v169 = 1.0;
                    }

                    if (v168 >= 0.0)
                    {
                      v170 = v169;
                    }

                    else
                    {
                      v170 = 0.0;
                    }

                    *&v165[4 * v167++ + v164 * v166] = v170;
                  }

                  while (v17 > v167);
                  ++v166;
                }

                while (v16 > v166);
              }

              goto LABEL_438;
            }

            goto LABEL_377;
          }

          goto LABEL_407;
        }

LABEL_83:
        if (v19 <= 1717856626)
        {
          if (v19 == 1278226534)
          {
            goto LABEL_219;
          }

          if (v19 != 1278226536)
          {
            if (v19 != 1717855600)
            {
              goto LABEL_369;
            }

LABEL_219:
            Width = CVPixelBufferGetWidth(a3);
            Height = CVPixelBufferGetHeight(a3);
            v28 = CVPixelBufferGetWidth(a4);
            v29 = CVPixelBufferGetHeight(a4);
            v100 = CVPixelBufferGetBytesPerRow(a3);
            v101 = CVPixelBufferGetBytesPerRow(a4);
            v236.origin.x = v15;
            v236.origin.y = v14;
            v236.size.width = v17;
            v236.size.height = v16;
            if (CGRectIsEmpty(v236))
            {
              v15 = *MEMORY[0x277CBF348];
              v14 = *(MEMORY[0x277CBF348] + 8);
              v17 = Width;
              v16 = Height;
            }

            if (v17 <= v28 && v16 <= v29)
            {
              if (v15 + v17 <= Width && v14 + v16 <= Height)
              {
                if (a3 != a4)
                {
                  CVPixelBufferLockBaseAddress(a3, 1uLL);
                }

                CVPixelBufferLockBaseAddress(a4, 0);
                v102 = CVPixelBufferGetBaseAddress(a3);
                v103 = CVPixelBufferGetBaseAddress(a4);
                if (v17 > 0.0 && v16 > 0.0)
                {
                  v104 = 0;
                  do
                  {
                    v105 = 0;
                    do
                    {
                      v109 = *&v102[4 * v15 + 4 * v105 + v100 * (v14 + v104)];
                      v110 = 1.0;
                      if (v109 <= 0.0)
                      {
                        v110 = 0.0;
                        if (v109 > -3.4028e38)
                        {
                          v111 = ((v109 * 0.0019531) + 1.0) * ((v109 * 0.0019531) + 1.0);
                          v112 = ((v111 * v111) * (v111 * v111)) * ((v111 * v111) * (v111 * v111));
                          v113 = ((v112 * v112) * (v112 * v112)) * ((v112 * v112) * (v112 * v112));
                          v110 = v113 * v113;
                        }
                      }

                      v106 = 1.0 - v110;
                      if (v106 <= 1.0)
                      {
                        v107 = v106;
                      }

                      else
                      {
                        v107 = 1.0;
                      }

                      if (v106 >= 0.0)
                      {
                        v108 = v107;
                      }

                      else
                      {
                        v108 = 0.0;
                      }

                      *&v103[4 * v105++ + v101 * v104] = v108;
                    }

                    while (v17 > v105);
                    ++v104;
                  }

                  while (v16 > v104);
                }

LABEL_438:
                if (a3 != a4)
                {
                  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
                }

                CVPixelBufferUnlockBaseAddress(a4, 0);
                v12 = 0;
                goto LABEL_409;
              }

              goto LABEL_377;
            }

            goto LABEL_407;
          }

          goto LABEL_140;
        }

        if (v19 == 1717856627)
        {
          goto LABEL_219;
        }

        if (v19 == 1751411059 || v19 == 1751410032)
        {
LABEL_140:
          Width = CVPixelBufferGetWidth(a3);
          Height = CVPixelBufferGetHeight(a3);
          v28 = CVPixelBufferGetWidth(a4);
          v29 = CVPixelBufferGetHeight(a4);
          v57 = CVPixelBufferGetBytesPerRow(a3);
          v58 = CVPixelBufferGetBytesPerRow(a4);
          v232.origin.x = v15;
          v232.origin.y = v14;
          v232.size.width = v17;
          v232.size.height = v16;
          if (CGRectIsEmpty(v232))
          {
            v15 = *MEMORY[0x277CBF348];
            v14 = *(MEMORY[0x277CBF348] + 8);
            v17 = Width;
            v16 = Height;
          }

          if (v17 <= v28 && v16 <= v29)
          {
            if (v15 + v17 <= Width && v14 + v16 <= Height)
            {
              if (a3 != a4)
              {
                CVPixelBufferLockBaseAddress(a3, 1uLL);
              }

              CVPixelBufferLockBaseAddress(a4, 0);
              v59 = CVPixelBufferGetBaseAddress(a3);
              v60 = CVPixelBufferGetBaseAddress(a4);
              if (v17 > 0.0 && v16 > 0.0)
              {
                v61 = 0;
                do
                {
                  v62 = 0;
                  do
                  {
                    v67 = *&v59[4 * v15 + 4 * v62 + v57 * (v14 + v61)];
                    v68 = 1.0;
                    if (v67 <= 0.0)
                    {
                      v68 = 0.0;
                      if (v67 > -3.4028e38)
                      {
                        v69 = ((v67 * 0.0019531) + 1.0) * ((v67 * 0.0019531) + 1.0);
                        v70 = ((v69 * v69) * (v69 * v69)) * ((v69 * v69) * (v69 * v69));
                        v71 = ((v70 * v70) * (v70 * v70)) * ((v70 * v70) * (v70 * v70));
                        v68 = v71 * v71;
                      }
                    }

                    v63 = 1.0 - v68;
                    if (v63 <= 1.0)
                    {
                      v64 = v63;
                    }

                    else
                    {
                      v64 = 1.0;
                    }

                    if (v63 >= 0.0)
                    {
                      _S3 = v64;
                    }

                    else
                    {
                      _S3 = 0.0;
                    }

                    __asm { FCVT            H3, S3 }

                    *&v60[2 * v62++ + v58 * v61] = _H3;
                  }

                  while (v17 > v62);
                  ++v61;
                }

                while (v16 > v61);
              }

              goto LABEL_438;
            }

LABEL_377:
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 134219264;
              *&buf[4] = v15;
              v220 = 2048;
              v221 = v14;
LABEL_406:
              v222 = 2048;
              *v223 = v17;
              *&v223[8] = 2048;
              v224 = v16;
              v225 = 1024;
              v226 = Width;
              v227 = 1024;
              v228 = Height;
              v188 = MEMORY[0x277D86220];
              v189 = "Dimensions mismatch. Cannot fit ROI (%f,%f,%f,%f) inside input (%d,%d)";
              v190 = 54;
LABEL_411:
              _os_log_error_impl(&dword_2402F6000, v188, OS_LOG_TYPE_ERROR, v189, buf, v190);
              v12 = -22957;
              goto LABEL_409;
            }

            goto LABEL_408;
          }

LABEL_407:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 134218752;
            *&buf[4] = v17;
            v220 = 2048;
            v221 = v16;
            v222 = 1024;
            *v223 = v28;
            *&v223[4] = 1024;
            *&v223[6] = v29;
            v188 = MEMORY[0x277D86220];
            v189 = "Dimensions mismatch. Cannot fit ROI (%f,%f) inside output (%d,%d)";
            v190 = 34;
            goto LABEL_411;
          }

          goto LABEL_408;
        }

LABEL_369:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_441;
        }

LABEL_397:
        v12 = -22956;
        goto LABEL_409;
      }

      v15 = *MEMORY[0x277CBF3A0];
      v14 = *(MEMORY[0x277CBF3A0] + 8);
      v17 = *(MEMORY[0x277CBF3A0] + 16);
      v16 = *(MEMORY[0x277CBF3A0] + 24);
      PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
      v24 = CVPixelBufferGetPixelFormatType(a4);
      v20 = v24;
      if (PixelFormatType > 1717856626)
      {
        if (PixelFormatType != 1717856627)
        {
          if (PixelFormatType != 1751411059 && PixelFormatType != 1751410032)
          {
            goto LABEL_280;
          }

          goto LABEL_44;
        }
      }

      else if (PixelFormatType != 1278226534)
      {
        if (PixelFormatType != 1278226536)
        {
          if (PixelFormatType != 1717855600)
          {
            goto LABEL_280;
          }

          goto LABEL_73;
        }

LABEL_44:
        if (v24 <= 1717856626)
        {
          if (v24 == 1278226536)
          {
            goto LABEL_282;
          }

          if (v24 != 1717855600)
          {
            goto LABEL_280;
          }
        }

        else if (v24 != 1717856627)
        {
          if (v24 != 1751411059 && v24 != 1751410032)
          {
            goto LABEL_280;
          }

LABEL_282:
          Width = CVPixelBufferGetWidth(a3);
          Height = CVPixelBufferGetHeight(a3);
          v28 = CVPixelBufferGetWidth(a4);
          v29 = CVPixelBufferGetHeight(a4);
          v131 = CVPixelBufferGetBytesPerRow(a3);
          v132 = CVPixelBufferGetBytesPerRow(a4);
          v239.origin.x = v15;
          v239.origin.y = v14;
          v239.size.width = v17;
          v239.size.height = v16;
          if (CGRectIsEmpty(v239))
          {
            v15 = *MEMORY[0x277CBF348];
            v14 = *(MEMORY[0x277CBF348] + 8);
            v17 = Width;
            v16 = Height;
          }

          if (v17 <= v28 && v16 <= v29)
          {
            if (v15 + v17 <= Width && v14 + v16 <= Height)
            {
              if (a3 != a4)
              {
                CVPixelBufferLockBaseAddress(a3, 1uLL);
              }

              CVPixelBufferLockBaseAddress(a4, 0);
              v133 = CVPixelBufferGetBaseAddress(a3);
              v134 = CVPixelBufferGetBaseAddress(a4);
              if (v17 > 0.0 && v16 > 0.0)
              {
                v135 = 0;
                do
                {
                  v136 = 0;
                  do
                  {
                    _H2 = *&v133[2 * v15 + 2 * v136 + v131 * (v14 + v135)];
                    __asm { FCVT            S2, H2 }

                    v139 = 1.0 - _S2;
                    if (v139 <= 1.0)
                    {
                      v140 = v139;
                    }

                    else
                    {
                      v140 = 1.0;
                    }

                    if (v139 >= 0.0)
                    {
                      _S2 = v140;
                    }

                    else
                    {
                      _S2 = 0.0;
                    }

                    __asm { FCVT            H2, S2 }

                    *&v134[2 * v136++ + v132 * v135] = _H2;
                  }

                  while (v17 > v136);
                  ++v135;
                }

                while (v16 > v135);
              }

              goto LABEL_438;
            }

            goto LABEL_377;
          }

          goto LABEL_407;
        }

        Width = CVPixelBufferGetWidth(a3);
        Height = CVPixelBufferGetHeight(a3);
        v28 = CVPixelBufferGetWidth(a4);
        v29 = CVPixelBufferGetHeight(a4);
        v120 = CVPixelBufferGetBytesPerRow(a3);
        v121 = CVPixelBufferGetBytesPerRow(a4);
        v238.origin.x = v15;
        v238.origin.y = v14;
        v238.size.width = v17;
        v238.size.height = v16;
        if (CGRectIsEmpty(v238))
        {
          v15 = *MEMORY[0x277CBF348];
          v14 = *(MEMORY[0x277CBF348] + 8);
          v17 = Width;
          v16 = Height;
        }

        if (v17 <= v28 && v16 <= v29)
        {
          if (v15 + v17 <= Width && v14 + v16 <= Height)
          {
            if (a3 != a4)
            {
              CVPixelBufferLockBaseAddress(a3, 1uLL);
            }

            CVPixelBufferLockBaseAddress(a4, 0);
            v122 = CVPixelBufferGetBaseAddress(a3);
            v123 = CVPixelBufferGetBaseAddress(a4);
            if (v17 > 0.0 && v16 > 0.0)
            {
              v124 = 0;
              do
              {
                v125 = 0;
                do
                {
                  _H2 = *&v122[2 * v15 + 2 * v125 + v120 * (v14 + v124)];
                  __asm { FCVT            S2, H2 }

                  v128 = 1.0 - _S2;
                  if (v128 <= 1.0)
                  {
                    v129 = v128;
                  }

                  else
                  {
                    v129 = 1.0;
                  }

                  if (v128 >= 0.0)
                  {
                    v130 = v129;
                  }

                  else
                  {
                    v130 = 0.0;
                  }

                  *&v123[4 * v125++ + v121 * v124] = v130;
                }

                while (v17 > v125);
                ++v124;
              }

              while (v16 > v124);
            }

            goto LABEL_438;
          }

          goto LABEL_377;
        }

        goto LABEL_407;
      }

LABEL_73:
      if (v24 <= 1717856626)
      {
        if (v24 == 1278226534)
        {
          goto LABEL_181;
        }

        if (v24 != 1278226536)
        {
          if (v24 != 1717855600)
          {
            goto LABEL_280;
          }

LABEL_181:
          Width = CVPixelBufferGetWidth(a3);
          Height = CVPixelBufferGetHeight(a3);
          v28 = CVPixelBufferGetWidth(a4);
          v29 = CVPixelBufferGetHeight(a4);
          v79 = CVPixelBufferGetBytesPerRow(a3);
          v80 = CVPixelBufferGetBytesPerRow(a4);
          v234.origin.x = v15;
          v234.origin.y = v14;
          v234.size.width = v17;
          v234.size.height = v16;
          if (CGRectIsEmpty(v234))
          {
            v15 = *MEMORY[0x277CBF348];
            v14 = *(MEMORY[0x277CBF348] + 8);
            v17 = Width;
            v16 = Height;
          }

          if (v17 <= v28 && v16 <= v29)
          {
            if (v15 + v17 <= Width && v14 + v16 <= Height)
            {
              if (a3 != a4)
              {
                CVPixelBufferLockBaseAddress(a3, 1uLL);
              }

              CVPixelBufferLockBaseAddress(a4, 0);
              v81 = CVPixelBufferGetBaseAddress(a3);
              v82 = CVPixelBufferGetBaseAddress(a4);
              if (v17 > 0.0 && v16 > 0.0)
              {
                v83 = 0;
                do
                {
                  v84 = 0;
                  do
                  {
                    v85 = v81 + 4 * v15 + v79 * (v14 + v83);
                    v86 = 1.0 - *(v85 + 4 * v84);
                    if (v86 <= 1.0)
                    {
                      v87 = 1.0 - *(v85 + 4 * v84);
                    }

                    else
                    {
                      v87 = 1.0;
                    }

                    if (v86 >= 0.0)
                    {
                      v88 = v87;
                    }

                    else
                    {
                      v88 = 0.0;
                    }

                    *&v82[4 * v84++ + v80 * v83] = v88;
                  }

                  while (v17 > v84);
                  ++v83;
                }

                while (v16 > v83);
              }

              goto LABEL_438;
            }

            goto LABEL_377;
          }

          goto LABEL_407;
        }

        goto LABEL_96;
      }

      if (v24 == 1717856627)
      {
        goto LABEL_181;
      }

      if (v24 == 1751411059 || v24 == 1751410032)
      {
LABEL_96:
        Width = CVPixelBufferGetWidth(a3);
        Height = CVPixelBufferGetHeight(a3);
        v28 = CVPixelBufferGetWidth(a4);
        v29 = CVPixelBufferGetHeight(a4);
        v30 = CVPixelBufferGetBytesPerRow(a3);
        v31 = CVPixelBufferGetBytesPerRow(a4);
        v230.origin.x = v15;
        v230.origin.y = v14;
        v230.size.width = v17;
        v230.size.height = v16;
        if (CGRectIsEmpty(v230))
        {
          v15 = *MEMORY[0x277CBF348];
          v14 = *(MEMORY[0x277CBF348] + 8);
          v17 = Width;
          v16 = Height;
        }

        if (v17 <= v28 && v16 <= v29)
        {
          if (v15 + v17 <= Width && v14 + v16 <= Height)
          {
            if (a3 != a4)
            {
              CVPixelBufferLockBaseAddress(a3, 1uLL);
            }

            CVPixelBufferLockBaseAddress(a4, 0);
            v32 = CVPixelBufferGetBaseAddress(a3);
            v33 = CVPixelBufferGetBaseAddress(a4);
            if (v17 > 0.0 && v16 > 0.0)
            {
              v34 = 0;
              do
              {
                v35 = 0;
                do
                {
                  v36 = v32 + 4 * v15 + v30 * (v14 + v34);
                  v37 = 1.0 - *(v36 + 4 * v35);
                  if (v37 <= 1.0)
                  {
                    v38 = 1.0 - *(v36 + 4 * v35);
                  }

                  else
                  {
                    v38 = 1.0;
                  }

                  if (v37 >= 0.0)
                  {
                    _S2 = v38;
                  }

                  else
                  {
                    _S2 = 0.0;
                  }

                  __asm { FCVT            H2, S2 }

                  *&v33[2 * v35++ + v31 * v34] = _H2;
                }

                while (v17 > v35);
                ++v34;
              }

              while (v16 > v34);
            }

            goto LABEL_438;
          }

          goto LABEL_377;
        }

        goto LABEL_407;
      }

LABEL_280:
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_397;
      }

LABEL_441:
      PixelBufferUtils::pixelFormatAsString(PixelFormatType, buf);
      v209 = SHIBYTE(v222);
      v210 = *buf;
      PixelBufferUtils::pixelFormatAsString(v20, __p);
      v211 = buf;
      if (v209 < 0)
      {
        v211 = v210;
      }

      if (v214 >= 0)
      {
        v212 = __p;
      }

      else
      {
        v212 = __p[0];
      }

      *v215 = 136446466;
      v216 = v211;
      v217 = 2082;
      v218 = v212;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unsupported map format (%{public}s, %{public}s)", v215, 0x16u);
      if (v214 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v222) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_397;
    }

LABEL_29:
    v13 = copyModifyPixelBuffer<&(postProcessingNone(float))>(a3, a4, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
    goto LABEL_30;
  }

  if (a6 == 1)
  {
    v13 = [ADUtils convertToLevelsConfidence:a3 confidenceOutput:a4 confidenceLevelRanges:v11];
LABEL_30:
    v12 = v13;
  }

LABEL_409:

  return v12;
}

+ (int64_t)postProcessDepth:(__CVBuffer *)a3 depthOutput:(__CVBuffer *)a4 inputRoi:(CGRect)a5
{
  v87 = *MEMORY[0x277D85DE8];
  result = -22950;
  if (!a3 || !a4)
  {
    return result;
  }

  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v13 = CVPixelBufferGetPixelFormatType(a4);
  if (PixelFormatType == v13)
  {
    v93.origin.x = x;
    v93.origin.y = y;
    v93.size.width = width;
    v93.size.height = height;
    if (copyPixelBufferVImage(a4, *MEMORY[0x277CBF348], a3, v93))
    {
      return -22950;
    }

    else
    {
      return 0;
    }
  }

  _ZF = PixelFormatType == 1717856627 || PixelFormatType == 1751411059;
  v15 = _ZF;
  v17 = v13 != 1717856627 && v13 != 1751411059;
  if (v15 != v17)
  {

    return copyModifyPixelBuffer<&(postProcessingNone(float))>(a3, a4, x, y, width, height);
  }

  v18 = CVPixelBufferGetPixelFormatType(a3);
  v19 = CVPixelBufferGetPixelFormatType(a4);
  v20 = v19;
  if (v18 > 1717856626)
  {
    if (v18 == 1717856627)
    {
      goto LABEL_36;
    }

    if (v18 != 1751411059 && v18 != 1751410032)
    {
      goto LABEL_100;
    }

LABEL_31:
    if (v19 <= 1717856626)
    {
      if (v19 == 1278226536)
      {
        goto LABEL_102;
      }

      if (v19 != 1717855600)
      {
LABEL_100:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          PixelBufferUtils::pixelFormatAsString(v18, buf);
          v67 = SHIBYTE(v80);
          v68 = *buf;
          PixelBufferUtils::pixelFormatAsString(v20, __p);
          v69 = buf;
          if (v67 < 0)
          {
            v69 = v68;
          }

          if (v72 >= 0)
          {
            v70 = __p;
          }

          else
          {
            v70 = __p[0];
          }

          *v73 = 136446466;
          v74 = v69;
          v75 = 2082;
          v76 = v70;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unsupported map format (%{public}s, %{public}s)", v73, 0x16u);
          if (v72 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v80) < 0)
          {
            operator delete(*buf);
          }
        }

        return -22956;
      }
    }

    else if (v19 != 1717856627)
    {
      if (v19 != 1751411059 && v19 != 1751410032)
      {
        goto LABEL_100;
      }

LABEL_102:
      v21 = CVPixelBufferGetWidth(a3);
      v22 = CVPixelBufferGetHeight(a3);
      v23 = CVPixelBufferGetWidth(a4);
      v24 = CVPixelBufferGetHeight(a4);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
      v57 = CVPixelBufferGetBytesPerRow(a4);
      v92.origin.x = x;
      v92.origin.y = y;
      v92.size.width = width;
      v92.size.height = height;
      if (CGRectIsEmpty(v92))
      {
        x = *MEMORY[0x277CBF348];
        y = *(MEMORY[0x277CBF348] + 8);
        width = v21;
        height = v22;
      }

      if (width <= v23 && height <= v24)
      {
        if (x + width <= v21 && y + height <= v22)
        {
          if (a3 != a4)
          {
            CVPixelBufferLockBaseAddress(a3, 1uLL);
          }

          CVPixelBufferLockBaseAddress(a4, 0);
          BaseAddress = CVPixelBufferGetBaseAddress(a3);
          v62 = CVPixelBufferGetBaseAddress(a4);
          if (width > 0.0 && height > 0.0)
          {
            v63 = 0;
            do
            {
              v64 = 0;
              do
              {
                __asm { FCMP            H2, #0 }

                if (_ZF)
                {
                  v66 = COERCE_SHORT_FLOAT(0);
                }

                else
                {
                  v66 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *&BaseAddress[2 * x + 2 * v64 + BytesPerRow * (y + v63)];
                }

                *&v62[2 * v64++ + v57 * v63] = v66;
              }

              while (width > v64);
              ++v63;
            }

            while (height > v63);
          }

          goto LABEL_124;
        }

        goto LABEL_108;
      }

LABEL_110:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 134218752;
        *&buf[4] = width;
        v78 = 2048;
        v79 = height;
        v80 = 1024;
        *v81 = v23;
        *&v81[4] = 1024;
        *&v81[6] = v24;
        v58 = MEMORY[0x277D86220];
        v59 = "Dimensions mismatch. Cannot fit ROI (%f,%f) inside output (%d,%d)";
        v60 = 34;
        goto LABEL_128;
      }

      return -22957;
    }

    v21 = CVPixelBufferGetWidth(a3);
    v22 = CVPixelBufferGetHeight(a3);
    v23 = CVPixelBufferGetWidth(a4);
    v24 = CVPixelBufferGetHeight(a4);
    v45 = CVPixelBufferGetBytesPerRow(a3);
    v46 = CVPixelBufferGetBytesPerRow(a4);
    v91.origin.x = x;
    v91.origin.y = y;
    v91.size.width = width;
    v91.size.height = height;
    if (CGRectIsEmpty(v91))
    {
      x = *MEMORY[0x277CBF348];
      y = *(MEMORY[0x277CBF348] + 8);
      width = v21;
      height = v22;
    }

    if (width <= v23 && height <= v24)
    {
      if (x + width <= v21 && y + height <= v22)
      {
        if (a3 != a4)
        {
          CVPixelBufferLockBaseAddress(a3, 1uLL);
        }

        CVPixelBufferLockBaseAddress(a4, 0);
        v47 = CVPixelBufferGetBaseAddress(a3);
        v48 = CVPixelBufferGetBaseAddress(a4);
        if (width > 0.0 && height > 0.0)
        {
          v49 = 0;
          do
          {
            v50 = 0;
            do
            {
              _H2 = *&v47[2 * x + 2 * v50 + v45 * (y + v49)];
              __asm { FCVT            S3, H2 }

              v53 = 1.0 / _S3;
              __asm { FCMP            H2, #0 }

              if (_ZF)
              {
                v55 = 0.0;
              }

              else
              {
                v55 = v53;
              }

              *&v48[4 * v50++ + v46 * v49] = v55;
            }

            while (width > v50);
            ++v49;
          }

          while (height > v49);
        }

        goto LABEL_124;
      }

      goto LABEL_108;
    }

    goto LABEL_110;
  }

  if (v18 == 1278226534)
  {
    goto LABEL_36;
  }

  if (v18 == 1278226536)
  {
    goto LABEL_31;
  }

  if (v18 != 1717855600)
  {
    goto LABEL_100;
  }

LABEL_36:
  if (v19 > 1717856626)
  {
    if (v19 == 1717856627)
    {
      goto LABEL_62;
    }

    if (v19 != 1751411059 && v19 != 1751410032)
    {
      goto LABEL_100;
    }

LABEL_44:
    v21 = CVPixelBufferGetWidth(a3);
    v22 = CVPixelBufferGetHeight(a3);
    v23 = CVPixelBufferGetWidth(a4);
    v24 = CVPixelBufferGetHeight(a4);
    v25 = CVPixelBufferGetBytesPerRow(a3);
    v26 = CVPixelBufferGetBytesPerRow(a4);
    v89.origin.x = x;
    v89.origin.y = y;
    v89.size.width = width;
    v89.size.height = height;
    if (CGRectIsEmpty(v89))
    {
      x = *MEMORY[0x277CBF348];
      y = *(MEMORY[0x277CBF348] + 8);
      width = v21;
      height = v22;
    }

    if (width <= v23 && height <= v24)
    {
      if (x + width <= v21 && y + height <= v22)
      {
        if (a3 != a4)
        {
          CVPixelBufferLockBaseAddress(a3, 1uLL);
        }

        CVPixelBufferLockBaseAddress(a4, 0);
        v27 = CVPixelBufferGetBaseAddress(a3);
        v28 = CVPixelBufferGetBaseAddress(a4);
        if (width > 0.0 && height > 0.0)
        {
          v29 = 0;
          do
          {
            v30 = 0;
            do
            {
              v31 = *&v27[4 * x + 4 * v30 + v25 * (y + v29)];
              if (v31 == 0.0)
              {
                _S2 = 0.0;
              }

              else
              {
                _S2 = 1.0 / v31;
              }

              __asm { FCVT            H2, S2 }

              *&v28[2 * v30++ + v26 * v29] = _H2;
            }

            while (width > v30);
            ++v29;
          }

          while (height > v29);
        }

        goto LABEL_124;
      }

LABEL_108:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 134219264;
        *&buf[4] = x;
        v78 = 2048;
        v79 = y;
        v80 = 2048;
        *v81 = width;
        *&v81[8] = 2048;
        v82 = height;
        v83 = 1024;
        v84 = v21;
        v85 = 1024;
        v86 = v22;
        v58 = MEMORY[0x277D86220];
        v59 = "Dimensions mismatch. Cannot fit ROI (%f,%f,%f,%f) inside input (%d,%d)";
        v60 = 54;
LABEL_128:
        _os_log_error_impl(&dword_2402F6000, v58, OS_LOG_TYPE_ERROR, v59, buf, v60);
        return -22957;
      }

      return -22957;
    }

    goto LABEL_110;
  }

  if (v19 == 1278226534)
  {
    goto LABEL_62;
  }

  if (v19 == 1278226536)
  {
    goto LABEL_44;
  }

  if (v19 != 1717855600)
  {
    goto LABEL_100;
  }

LABEL_62:
  v21 = CVPixelBufferGetWidth(a3);
  v22 = CVPixelBufferGetHeight(a3);
  v23 = CVPixelBufferGetWidth(a4);
  v24 = CVPixelBufferGetHeight(a4);
  v37 = CVPixelBufferGetBytesPerRow(a3);
  v38 = CVPixelBufferGetBytesPerRow(a4);
  v90.origin.x = x;
  v90.origin.y = y;
  v90.size.width = width;
  v90.size.height = height;
  if (CGRectIsEmpty(v90))
  {
    x = *MEMORY[0x277CBF348];
    y = *(MEMORY[0x277CBF348] + 8);
    width = v21;
    height = v22;
  }

  if (width > v23 || height > v24)
  {
    goto LABEL_110;
  }

  if (x + width > v21 || y + height > v22)
  {
    goto LABEL_108;
  }

  if (a3 != a4)
  {
    CVPixelBufferLockBaseAddress(a3, 1uLL);
  }

  CVPixelBufferLockBaseAddress(a4, 0);
  v39 = CVPixelBufferGetBaseAddress(a3);
  v40 = CVPixelBufferGetBaseAddress(a4);
  if (width > 0.0 && height > 0.0)
  {
    v41 = 0;
    do
    {
      v42 = 0;
      do
      {
        v43 = *&v39[4 * x + 4 * v42 + v37 * (y + v41)];
        if (v43 == 0.0)
        {
          v44 = 0.0;
        }

        else
        {
          v44 = 1.0 / v43;
        }

        *&v40[4 * v42++ + v38 * v41] = v44;
      }

      while (width > v42);
      ++v41;
    }

    while (height > v41);
  }

LABEL_124:
  if (a3 != a4)
  {
    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  }

  CVPixelBufferUnlockBaseAddress(a4, 0);
  return 0;
}

+ (int64_t)copyModifyNormalsPixelBuffer:(__CVBuffer *)a3 output:(__CVBuffer *)a4 normalsRotation:(int64_t)a5
{
  v22 = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(a4);
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  CVPixelBufferLockBaseAddress(a4, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  v11 = CVPixelBufferGetBaseAddress(a4);
  DataSize = CVPixelBufferGetDataSize(a3);
  v14 = Height * Width;
  if (!(Height * Width))
  {
LABEL_12:
    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    CVPixelBufferUnlockBaseAddress(a4, 0);
    return 0;
  }

  if (a5 <= 3)
  {
    v15 = DataSize / 0xC;
    do
    {
      if (a5)
      {
        if (a5 == 3)
        {
          v13.f32[0] = -BaseAddress[v15];
          v16 = *BaseAddress;
        }

        else if (a5 == 1)
        {
          v13.f32[0] = BaseAddress[v15];
          v16 = -*BaseAddress;
        }

        else
        {
          v13.f32[0] = -*BaseAddress;
          v16 = -BaseAddress[v15];
        }
      }

      else
      {
        v13.f32[0] = *BaseAddress;
        v16 = BaseAddress[v15];
      }

      v13.f32[1] = v16;
      v13.f32[2] = BaseAddress[2 * (DataSize / 0xC)];
      v17 = vmulq_f32(v13, v13);
      *&v18 = v17.f32[2] + vaddv_f32(*v17.f32);
      *v17.f32 = vrsqrte_f32(v18);
      *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32)));
      v13 = vmulq_n_f32(v13, vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32))).f32[0]);
      v13.i32[3] = 1.0;
      *v11++ = v13;
      ++BaseAddress;
      --v14;
    }

    while (v14);
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v20 = 134217984;
    v21 = a5;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Rotating normals is not implemented for %ld.", &v20, 0xCu);
  }

  return -22952;
}

+ (int64_t)convertToLevelsConfidence:(__CVBuffer *)a3 confidenceOutput:(__CVBuffer *)a4 confidenceLevelRanges:(id)a5
{
  v532 = *MEMORY[0x277D85DE8];
  v7 = a5;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v9 = CVPixelBufferGetPixelFormatType(a4);
  if (v7)
  {
    v10 = v9;
    [v7 highLevel];
    v523 = v11;
    [v7 lowLevel];
    v522 = v12;
    v13 = [v7 confidenceUnits];
    if (PixelFormatType > 1717856626)
    {
      if (PixelFormatType != 1717856627)
      {
        if (PixelFormatType != 1751410032 && PixelFormatType != 1751411059)
        {
          goto LABEL_100;
        }

LABEL_13:
        if (v10 > 1717856626)
        {
          if (v10 == 1717856627)
          {
LABEL_64:
            if (a3 != a4)
            {
              CVPixelBufferLockBaseAddress(a3, 1uLL);
            }

            CVPixelBufferLockBaseAddress(a4, 0);
            Width = CVPixelBufferGetWidth(a3);
            Height = CVPixelBufferGetHeight(a3);
            BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
            v59 = CVPixelBufferGetBytesPerRow(a4);
            BaseAddress = CVPixelBufferGetBaseAddress(a3);
            v61 = CVPixelBufferGetBaseAddress(a4);
            if (!Height || !Width)
            {
              goto LABEL_638;
            }

            _D0 = v522;
            _D1 = v523;
            __asm
            {
              FCVT            H0, S0
              FCVT            H1, S1
            }

            v64 = Width & 0x1FFFFFFF0;
            v65 = vdupq_lane_s16(_D0, 0);
            v66 = vdupq_lane_s16(_D1, 0);
            v67 = Width & 0x1FFFFFFFCLL;
            if (v13)
            {
              if (Width <= 3)
              {
                v68 = 0;
                do
                {
                  v69 = 0;
                  do
                  {
                    v70 = BaseAddress[v69];
                    if (v70 <= *_D1.i16)
                    {
                      v71 = 2.0;
                    }

                    else
                    {
                      v71 = 1.0;
                    }

                    if (v70 <= *_D0.i16)
                    {
                      v72 = v71;
                    }

                    else
                    {
                      v72 = 0.0;
                    }

                    v61[v69++] = v72;
                  }

                  while (v69 < Width);
                  ++v68;
                  v61 = (v61 + v59);
                  BaseAddress = (BaseAddress + BytesPerRow);
                }

                while (Height > v68);
                goto LABEL_638;
              }

              if (!Width || (v259 = (Width - 1) >> 32) != 0)
              {
                v426 = 0;
                do
                {
                  v427 = 0;
                  do
                  {
                    v428 = BaseAddress[v427];
                    if (v428 <= *_D1.i16)
                    {
                      v429 = 2.0;
                    }

                    else
                    {
                      v429 = 1.0;
                    }

                    if (v428 <= *_D0.i16)
                    {
                      v430 = v429;
                    }

                    else
                    {
                      v430 = 0.0;
                    }

                    v61[v427++] = v430;
                  }

                  while (Width > v427);
                  ++v426;
                  v61 = (v61 + v59);
                  BaseAddress = (BaseAddress + BytesPerRow);
                }

                while (Height > v426);
                goto LABEL_638;
              }

              v260 = (BaseAddress + 8);
              v261 = (v61 + 8);
              v262.i64[0] = 0x4000000040000000;
              v262.i64[1] = 0x4000000040000000;
              __asm { FMOV            V5.4S, #1.0 }

              while (1)
              {
                if (Width >= 0x10)
                {
                  v265 = v261;
                  v266 = v260;
                  v267 = Width & 0x1FFFFFFF0;
                  do
                  {
                    v268 = v266[-1];
                    v269 = vcgtq_f16(v268, v65);
                    v270 = vcgtq_f16(*v266, v65);
                    v271 = vcgtq_f16(v268, v66);
                    v272 = vcgtq_f16(*v266, v66);
                    v265[-2] = vbicq_s8(vbslq_s8(vmovl_s16(*v271.i8), _Q5, v262), vmovl_s16(*v269.i8));
                    v265[-1] = vbicq_s8(vbslq_s8(vmovl_high_s16(v271), _Q5, v262), vmovl_high_s16(v269));
                    *v265 = vbicq_s8(vbslq_s8(vmovl_s16(*v272.i8), _Q5, v262), vmovl_s16(*v270.i8));
                    v265[1] = vbicq_s8(vbslq_s8(vmovl_high_s16(v272), _Q5, v262), vmovl_high_s16(v270));
                    v265 += 4;
                    v266 += 2;
                    v267 -= 16;
                  }

                  while (v267);
                  if (Width == v64)
                  {
                    goto LABEL_309;
                  }

                  v264 = Width & 0x1FFFFFFF0;
                  v273 = Width & 0x1FFFFFFF0;
                  if ((Width & 0xC) == 0)
                  {
                    goto LABEL_319;
                  }
                }

                else
                {
                  v264 = 0;
                }

                v274 = v264 - (Width & 0x1FFFFFFFCLL);
                v275 = &BaseAddress[v264];
                v276 = &v61[v264];
                do
                {
                  v277 = *v275++;
                  *v276++ = vbicq_s8(vbslq_s8(vmovl_s16(vcgt_f16(v277, *v66.i8)), _Q5, v262), vmovl_s16(vcgt_f16(v277, *v65.i8)));
                  v274 += 4;
                }

                while (v274);
                v273 = Width & 0x1FFFFFFFCLL;
                if (Width != v67)
                {
                  do
                  {
LABEL_319:
                    v278 = BaseAddress[v273];
                    if (v278 <= *_D1.i16)
                    {
                      v279 = 2.0;
                    }

                    else
                    {
                      v279 = 1.0;
                    }

                    if (v278 <= *_D0.i16)
                    {
                      v280 = v279;
                    }

                    else
                    {
                      v280 = 0.0;
                    }

                    v61[v273++] = v280;
                  }

                  while (Width > v273);
                }

LABEL_309:
                ++v259;
                v260 = (v260 + BytesPerRow);
                v261 = (v261 + v59);
                BaseAddress = (BaseAddress + BytesPerRow);
                v61 = (v61 + v59);
                if (Height <= v259)
                {
                  goto LABEL_638;
                }
              }
            }

            if (Width <= 3)
            {
              v209 = 0;
              do
              {
                v210 = 0;
                do
                {
                  v211 = BaseAddress[v210];
                  if (v211 >= *_D1.i16)
                  {
                    v212 = 2.0;
                  }

                  else
                  {
                    v212 = 1.0;
                  }

                  if (v211 >= *_D0.i16)
                  {
                    v213 = v212;
                  }

                  else
                  {
                    v213 = 0.0;
                  }

                  v61[v210++] = v213;
                }

                while (v210 < Width);
                ++v209;
                v61 = (v61 + v59);
                BaseAddress = (BaseAddress + BytesPerRow);
              }

              while (Height > v209);
              goto LABEL_638;
            }

            if (!Width || (v330 = (Width - 1) >> 32) != 0)
            {
              v500 = 0;
              do
              {
                v501 = 0;
                do
                {
                  v502 = BaseAddress[v501];
                  if (v502 >= *_D1.i16)
                  {
                    v503 = 2.0;
                  }

                  else
                  {
                    v503 = 1.0;
                  }

                  if (v502 >= *_D0.i16)
                  {
                    v504 = v503;
                  }

                  else
                  {
                    v504 = 0.0;
                  }

                  v61[v501++] = v504;
                }

                while (Width > v501);
                ++v500;
                v61 = (v61 + v59);
                BaseAddress = (BaseAddress + BytesPerRow);
              }

              while (Height > v500);
              goto LABEL_638;
            }

            v331 = (BaseAddress + 8);
            v332 = (v61 + 8);
            v333.i64[0] = 0x4000000040000000;
            v333.i64[1] = 0x4000000040000000;
            __asm { FMOV            V5.4S, #1.0 }

            while (1)
            {
              if (Width >= 0x10)
              {
                v336 = v332;
                v337 = v331;
                v338 = Width & 0x1FFFFFFF0;
                do
                {
                  v339 = v337[-1];
                  v340 = vcgtq_f16(v65, v339);
                  v341 = vcgtq_f16(v65, *v337);
                  v342 = vcgtq_f16(v66, v339);
                  v343 = vcgtq_f16(v66, *v337);
                  v336[-2] = vbicq_s8(vbslq_s8(vmovl_s16(*v342.i8), _Q5, v333), vmovl_s16(*v340.i8));
                  v336[-1] = vbicq_s8(vbslq_s8(vmovl_high_s16(v342), _Q5, v333), vmovl_high_s16(v340));
                  *v336 = vbicq_s8(vbslq_s8(vmovl_s16(*v343.i8), _Q5, v333), vmovl_s16(*v341.i8));
                  v336[1] = vbicq_s8(vbslq_s8(vmovl_high_s16(v343), _Q5, v333), vmovl_high_s16(v341));
                  v336 += 4;
                  v337 += 2;
                  v338 -= 16;
                }

                while (v338);
                if (Width == v64)
                {
                  goto LABEL_414;
                }

                v335 = Width & 0x1FFFFFFF0;
                v344 = Width & 0x1FFFFFFF0;
                if ((Width & 0xC) == 0)
                {
                  goto LABEL_424;
                }
              }

              else
              {
                v335 = 0;
              }

              v345 = v335 - (Width & 0x1FFFFFFFCLL);
              v346 = &BaseAddress[v335];
              v347 = &v61[v335];
              do
              {
                v348 = *v346++;
                *v347++ = vbicq_s8(vbslq_s8(vmovl_s16(vcgt_f16(*v66.i8, v348)), _Q5, v333), vmovl_s16(vcgt_f16(*v65.i8, v348)));
                v345 += 4;
              }

              while (v345);
              v344 = Width & 0x1FFFFFFFCLL;
              if (Width != v67)
              {
                do
                {
LABEL_424:
                  v349 = BaseAddress[v344];
                  if (v349 >= *_D1.i16)
                  {
                    v350 = 2.0;
                  }

                  else
                  {
                    v350 = 1.0;
                  }

                  if (v349 >= *_D0.i16)
                  {
                    v351 = v350;
                  }

                  else
                  {
                    v351 = 0.0;
                  }

                  v61[v344++] = v351;
                }

                while (Width > v344);
              }

LABEL_414:
              ++v330;
              v331 = (v331 + BytesPerRow);
              v332 = (v332 + v59);
              BaseAddress = (BaseAddress + BytesPerRow);
              v61 = (v61 + v59);
              if (Height <= v330)
              {
                goto LABEL_638;
              }
            }
          }

          if (v10 != 1751411059 && v10 != 1751410032)
          {
            goto LABEL_100;
          }

          goto LABEL_26;
        }

        if (v10 != 1278226488)
        {
          if (v10 != 1278226536)
          {
            if (v10 != 1717855600)
            {
              goto LABEL_100;
            }

            goto LABEL_64;
          }

LABEL_26:
          if (a3 != a4)
          {
            CVPixelBufferLockBaseAddress(a3, 1uLL);
          }

          CVPixelBufferLockBaseAddress(a4, 0);
          v15 = CVPixelBufferGetWidth(a3);
          v16 = CVPixelBufferGetHeight(a3);
          v17 = CVPixelBufferGetBytesPerRow(a3);
          v18 = CVPixelBufferGetBytesPerRow(a4);
          v19 = CVPixelBufferGetBaseAddress(a3);
          v20 = CVPixelBufferGetBaseAddress(a4);
          if (!v16 || !v15)
          {
            goto LABEL_638;
          }

          _D0 = v522;
          _D1 = v523;
          __asm
          {
            FCVT            H0, S0
            FCVT            H1, S1
          }

          v26 = &v20[v15];
          v27 = &v19[v15];
          v28 = v15 & 0x1FFFFFFF0;
          v29 = vdupq_lane_s16(_D0, 0);
          v30 = vdupq_lane_s16(_D1, 0);
          v31 = 2 * (v15 & 0x1FFFFFFF0);
          v32 = v15 & 0x1FFFFFFFCLL;
          v33 = 2 * (v15 & 0x1FFFFFFFCLL);
          if (v13)
          {
            if (v15 <= 3)
            {
              v34 = 0;
              do
              {
                v35 = 0;
                do
                {
                  v36 = v19[v35];
                  if (v36 <= *_D1.i16)
                  {
                    LOWORD(v37) = COERCE_UNSIGNED_INT(2.0);
                  }

                  else
                  {
                    LOWORD(v37) = COERCE_UNSIGNED_INT(1.0);
                  }

                  if (v36 <= *_D0.i16)
                  {
                    v38 = v37;
                  }

                  else
                  {
                    v38 = COERCE_SHORT_FLOAT(0);
                  }

                  v20[v35++] = v38;
                }

                while (v35 < v15);
                ++v34;
                v20 = (v20 + v18);
                v19 = (v19 + v17);
              }

              while (v16 > v34);
              goto LABEL_638;
            }

            if (!v15 || (v183 = (v15 - 1) >> 32) != 0)
            {
              v317 = 0;
              do
              {
                v318 = 0;
                do
                {
                  v319 = v19[v318];
                  if (v319 <= *_D1.i16)
                  {
                    LOWORD(v320) = COERCE_UNSIGNED_INT(2.0);
                  }

                  else
                  {
                    LOWORD(v320) = COERCE_UNSIGNED_INT(1.0);
                  }

                  if (v319 <= *_D0.i16)
                  {
                    v321 = v320;
                  }

                  else
                  {
                    v321 = COERCE_SHORT_FLOAT(0);
                  }

                  v20[v318++] = v321;
                }

                while (v15 > v318);
                ++v317;
                v20 = (v20 + v18);
                v19 = (v19 + v17);
              }

              while (v16 > v317);
              goto LABEL_638;
            }

            v184 = (v19 + 8);
            v185 = (v20 + 8);
            v186.i64[0] = 0x4000400040004000;
            v186.i64[1] = 0x4000400040004000;
            v187.i64[0] = 0x3C003C003C003C00;
            v187.i64[1] = 0x3C003C003C003C00;
            v188 = v20;
            v189 = v19;
            while (1)
            {
              v190 = (v20 + v18 * v183);
              v191 = (v19 + v17 * v183);
              if (v190 < (v27 + v17 * v183) && v191 < (v26 + v18 * v183))
              {
                v194 = 0;
                goto LABEL_233;
              }

              if (v15 >= 0x10)
              {
                v195 = v185;
                v196 = v184;
                v197 = v15 & 0x1FFFFFFF0;
                do
                {
                  v198 = vbicq_s8(vbslq_s8(vcgtq_f16(*v196, v30), v187, v186), vcgtq_f16(*v196, v29));
                  v195[-1] = vbicq_s8(vbslq_s8(vcgtq_f16(v196[-1], v30), v187, v186), vcgtq_f16(v196[-1], v29));
                  *v195 = v198;
                  v196 += 2;
                  v195 += 2;
                  v197 -= 16;
                }

                while (v197);
                if (v15 == v28)
                {
                  goto LABEL_216;
                }

                v193 = v15 & 0x1FFFFFFF0;
                if ((v15 & 0xC) == 0)
                {
                  v191 = (v191 + v31);
                  v190 = (v190 + v31);
                  v194 = v15 & 0xFFFFFFF0;
LABEL_233:
                  v204 = v194 + 1;
                  do
                  {
                    v205 = *v191++;
                    v206 = v205;
                    if (v205 <= *_D1.i16)
                    {
                      LOWORD(v207) = COERCE_UNSIGNED_INT(2.0);
                    }

                    else
                    {
                      LOWORD(v207) = COERCE_UNSIGNED_INT(1.0);
                    }

                    if (v206 <= *_D0.i16)
                    {
                      v208 = v207;
                    }

                    else
                    {
                      v208 = COERCE_SHORT_FLOAT(0);
                    }

                    *v190++ = v208;
                    v182 = v15 > v204++;
                  }

                  while (v182);
                  goto LABEL_216;
                }
              }

              else
              {
                v193 = 0;
              }

              v190 = (v190 + v33);
              v199 = v193 - (v15 & 0x1FFFFFFFCLL);
              v200 = v193;
              v201 = &v189[v193];
              v202 = &v188[v200];
              do
              {
                v203 = *v201++;
                *v202++ = vbic_s8(vbsl_s8(vcgt_f16(v203, *v30.i8), 0x3C003C003C003C00, 0x4000400040004000), vcgt_f16(v203, *v29.i8));
                v199 += 4;
              }

              while (v199);
              if (v15 != v32)
              {
                v191 = (v191 + v33);
                v194 = v15 & 0xFFFFFFFC;
                goto LABEL_233;
              }

LABEL_216:
              ++v183;
              v184 = (v184 + v17);
              v185 = (v185 + v18);
              v189 = (v189 + v17);
              v188 = (v188 + v18);
              if (v16 <= v183)
              {
                goto LABEL_638;
              }
            }
          }

          if (v15 <= 3)
          {
            v136 = 0;
            do
            {
              v137 = 0;
              do
              {
                v138 = v19[v137];
                if (v138 >= *_D1.i16)
                {
                  LOWORD(v139) = COERCE_UNSIGNED_INT(2.0);
                }

                else
                {
                  LOWORD(v139) = COERCE_UNSIGNED_INT(1.0);
                }

                if (v138 >= *_D0.i16)
                {
                  v140 = v139;
                }

                else
                {
                  v140 = COERCE_SHORT_FLOAT(0);
                }

                v20[v137++] = v140;
              }

              while (v137 < v15);
              ++v136;
              v20 = (v20 + v18);
              v19 = (v19 + v17);
            }

            while (v16 > v136);
            goto LABEL_638;
          }

          if (!v15 || (v281 = (v15 - 1) >> 32) != 0)
          {
            v431 = 0;
            do
            {
              v432 = 0;
              do
              {
                v433 = v19[v432];
                if (v433 >= *_D1.i16)
                {
                  LOWORD(v434) = COERCE_UNSIGNED_INT(2.0);
                }

                else
                {
                  LOWORD(v434) = COERCE_UNSIGNED_INT(1.0);
                }

                if (v433 >= *_D0.i16)
                {
                  v435 = v434;
                }

                else
                {
                  v435 = COERCE_SHORT_FLOAT(0);
                }

                v20[v432++] = v435;
              }

              while (v15 > v432);
              ++v431;
              v20 = (v20 + v18);
              v19 = (v19 + v17);
            }

            while (v16 > v431);
            goto LABEL_638;
          }

          v282 = (v19 + 8);
          v283 = (v20 + 8);
          v284.i64[0] = 0x4000400040004000;
          v284.i64[1] = 0x4000400040004000;
          v285.i64[0] = 0x3C003C003C003C00;
          v285.i64[1] = 0x3C003C003C003C00;
          v286 = v20;
          v287 = v19;
          while (1)
          {
            v288 = (v20 + v18 * v281);
            v289 = (v19 + v17 * v281);
            if (v288 < (v27 + v17 * v281) && v289 < (v26 + v18 * v281))
            {
              v292 = 0;
              goto LABEL_347;
            }

            if (v15 >= 0x10)
            {
              v293 = v283;
              v294 = v282;
              v295 = v15 & 0x1FFFFFFF0;
              do
              {
                v296 = vbicq_s8(vbslq_s8(vcgtq_f16(v30, *v294), v285, v284), vcgtq_f16(v29, *v294));
                v293[-1] = vbicq_s8(vbslq_s8(vcgtq_f16(v30, v294[-1]), v285, v284), vcgtq_f16(v29, v294[-1]));
                *v293 = v296;
                v294 += 2;
                v293 += 2;
                v295 -= 16;
              }

              while (v295);
              if (v15 == v28)
              {
                goto LABEL_330;
              }

              v291 = v15 & 0x1FFFFFFF0;
              if ((v15 & 0xC) == 0)
              {
                v289 = (v289 + v31);
                v288 = (v288 + v31);
                v292 = v15 & 0xFFFFFFF0;
LABEL_347:
                v302 = v292 + 1;
                do
                {
                  v303 = *v289++;
                  v304 = v303;
                  if (v303 >= *_D1.i16)
                  {
                    LOWORD(v305) = COERCE_UNSIGNED_INT(2.0);
                  }

                  else
                  {
                    LOWORD(v305) = COERCE_UNSIGNED_INT(1.0);
                  }

                  if (v304 >= *_D0.i16)
                  {
                    v306 = v305;
                  }

                  else
                  {
                    v306 = COERCE_SHORT_FLOAT(0);
                  }

                  *v288++ = v306;
                  v182 = v15 > v302++;
                }

                while (v182);
                goto LABEL_330;
              }
            }

            else
            {
              v291 = 0;
            }

            v288 = (v288 + v33);
            v297 = v291 - (v15 & 0x1FFFFFFFCLL);
            v298 = v291;
            v299 = &v287[v291];
            v300 = &v286[v298];
            do
            {
              v301 = *v299++;
              *v300++ = vbic_s8(vbsl_s8(vcgt_f16(*v30.i8, v301), 0x3C003C003C003C00, 0x4000400040004000), vcgt_f16(*v29.i8, v301));
              v297 += 4;
            }

            while (v297);
            if (v15 != v32)
            {
              v289 = (v289 + v33);
              v292 = v15 & 0xFFFFFFFC;
              goto LABEL_347;
            }

LABEL_330:
            ++v281;
            v282 = (v282 + v17);
            v283 = (v283 + v18);
            v287 = (v287 + v17);
            v286 = (v286 + v18);
            if (v16 <= v281)
            {
              goto LABEL_638;
            }
          }
        }

        if (a3 != a4)
        {
          CVPixelBufferLockBaseAddress(a3, 1uLL);
        }

        CVPixelBufferLockBaseAddress(a4, 0);
        v88 = CVPixelBufferGetWidth(a3);
        v89 = CVPixelBufferGetHeight(a3);
        v90 = CVPixelBufferGetBytesPerRow(a3);
        v91 = CVPixelBufferGetBytesPerRow(a4);
        v92 = CVPixelBufferGetBaseAddress(a3);
        v93 = CVPixelBufferGetBaseAddress(a4);
        if (!v89 || !v88)
        {
          goto LABEL_638;
        }

        _D0 = v522;
        _D1 = v523;
        __asm
        {
          FCVT            H0, S0
          FCVT            H1, S1
        }

        v96 = &v93->i8[v88];
        v97 = &v92[v88];
        v98 = v88 & 0x1FFFFFFE0;
        v99 = vdupq_lane_s16(_D0, 0);
        v100 = vdupq_lane_s16(_D1, 0);
        v101 = 2 * (v88 & 0x1FFFFFFE0);
        v102 = v88 & 0x1FFFFFFFCLL;
        v103 = 2 * (v88 & 0x1FFFFFFFCLL);
        if (v13)
        {
          if (v88 <= 3)
          {
            v104 = 0;
            do
            {
              v105 = 0;
              do
              {
                v106 = v92[v105];
                if (v106 > *_D1.i16)
                {
                  v107 = 1;
                }

                else
                {
                  v107 = 2;
                }

                if (v106 > *_D0.i16)
                {
                  v107 = 0;
                }

                v93->i8[v105++] = v107;
              }

              while (v105 < v88);
              ++v104;
              v93 = (v93 + v91);
              v92 = (v92 + v90);
            }

            while (v89 > v104);
            goto LABEL_638;
          }

          if (!v88 || (v396 = (v88 - 1) >> 32) != 0)
          {
            v509 = 0;
            do
            {
              v510 = 0;
              do
              {
                v511 = v92[v510];
                if (v511 > *_D1.i16)
                {
                  v512 = 1;
                }

                else
                {
                  v512 = 2;
                }

                if (v511 > *_D0.i16)
                {
                  v512 = 0;
                }

                v93->i8[v510++] = v512;
              }

              while (v88 > v510);
              ++v509;
              v93 = (v93 + v91);
              v92 = (v92 + v90);
            }

            while (v89 > v509);
            goto LABEL_638;
          }

          v397 = (v92 + 16);
          v398 = v93 + 1;
          v399.i64[0] = 0x202020202020202;
          v399.i64[1] = 0x202020202020202;
          v400 = v93;
          v401 = v92;
          while (1)
          {
            v402 = &v93->i8[v91 * v396];
            v403 = (v92 + v90 * v396);
            if (v402 < v97 + v90 * v396 && v403 < &v96[v91 * v396])
            {
              v406 = 0;
              goto LABEL_502;
            }

            if (v88 >= 0x20)
            {
              v407 = v398;
              v408 = v397;
              v409 = v88 & 0x1FFFFFFE0;
              do
              {
                v410 = v408[-2];
                v411 = v408[-1];
                v412 = *v408;
                v413 = v408[1];
                v408 += 4;
                v414 = vuzp1q_s8(vcgtq_f16(v410, v99), vcgtq_f16(v411, v99));
                v415 = vuzp1q_s8(vcgtq_f16(v410, v100), vcgtq_f16(v411, v100));
                v416 = vuzp1q_s8(vcgtq_f16(v412, v100), vcgtq_f16(v413, v100));
                v407[-1] = vbicq_s8(vsubq_s8(vbicq_s8(v399, v415), v415), v414);
                *v407 = vbicq_s8(vsubq_s8(vbicq_s8(v399, v416), v416), vuzp1q_s8(vcgtq_f16(v412, v99), vcgtq_f16(v413, v99)));
                v407 += 2;
                v409 -= 32;
              }

              while (v409);
              if (v88 == v98)
              {
                goto LABEL_485;
              }

              v405 = v88 & 0x1FFFFFFE0;
              if ((v88 & 0x1C) == 0)
              {
                v403 = (v403 + v101);
                v402 += v98;
                v406 = v88 & 0xFFFFFFE0;
LABEL_502:
                v422 = v406 + 1;
                do
                {
                  v423 = *v403++;
                  v424 = v423;
                  if (v423 > *_D1.i16)
                  {
                    v425 = 1;
                  }

                  else
                  {
                    v425 = 2;
                  }

                  if (v424 > *_D0.i16)
                  {
                    v425 = 0;
                  }

                  *v402++ = v425;
                  v182 = v88 > v422++;
                }

                while (v182);
                goto LABEL_485;
              }
            }

            else
            {
              v405 = 0;
            }

            v402 += v102;
            v417 = v405 - (v88 & 0x1FFFFFFFCLL);
            v418 = (v400->i32 + v405);
            v419 = &v401[v405];
            do
            {
              v420 = *v419++;
              v421 = vcgt_f16(v420, *v100.i8);
              *v418++ = vuzp1_s8(vbic_s8(vsub_s16(vbic_s8(0x2000200020002, v421), v421), vcgt_f16(v420, *v99.i8)), _D0).u32[0];
              v417 += 4;
            }

            while (v417);
            if (v88 != v102)
            {
              v403 = (v403 + v103);
              v406 = v88 & 0xFFFFFFFC;
              goto LABEL_502;
            }

LABEL_485:
            ++v396;
            v397 = (v397 + v90);
            v398 = (v398 + v91);
            v401 = (v401 + v90);
            v400 = (v400 + v91);
            if (v89 <= v396)
            {
              goto LABEL_638;
            }
          }
        }

        if (v88 <= 3)
        {
          v326 = 0;
          do
          {
            v327 = 0;
            do
            {
              v328 = v92[v327];
              if (v328 < *_D1.i16)
              {
                v329 = 1;
              }

              else
              {
                v329 = 2;
              }

              if (v328 < *_D0.i16)
              {
                v329 = 0;
              }

              v93->i8[v327++] = v329;
            }

            while (v327 < v88);
            ++v326;
            v93 = (v93 + v91);
            v92 = (v92 + v90);
          }

          while (v89 > v326);
          goto LABEL_638;
        }

        if (!v88 || (v470 = (v88 - 1) >> 32) != 0)
        {
          v517 = 0;
          do
          {
            v518 = 0;
            do
            {
              v519 = v92[v518];
              if (v519 < *_D1.i16)
              {
                v520 = 1;
              }

              else
              {
                v520 = 2;
              }

              if (v519 < *_D0.i16)
              {
                v520 = 0;
              }

              v93->i8[v518++] = v520;
            }

            while (v88 > v518);
            ++v517;
            v93 = (v93 + v91);
            v92 = (v92 + v90);
          }

          while (v89 > v517);
          goto LABEL_638;
        }

        v471 = (v92 + 16);
        v472 = v93 + 1;
        v473.i64[0] = 0x202020202020202;
        v473.i64[1] = 0x202020202020202;
        v474 = v93;
        v475 = v92;
        while (1)
        {
          v476 = &v93->i8[v91 * v470];
          v477 = (v92 + v90 * v470);
          if (v476 < v97 + v90 * v470 && v477 < &v96[v91 * v470])
          {
            v480 = 0;
            goto LABEL_580;
          }

          if (v88 >= 0x20)
          {
            v481 = v472;
            v482 = v471;
            v483 = v88 & 0x1FFFFFFE0;
            do
            {
              v484 = v482[-2];
              v485 = v482[-1];
              v486 = *v482;
              v487 = v482[1];
              v482 += 4;
              v488 = vuzp1q_s8(vcgtq_f16(v99, v484), vcgtq_f16(v99, v485));
              v489 = vuzp1q_s8(vcgtq_f16(v100, v484), vcgtq_f16(v100, v485));
              v490 = vuzp1q_s8(vcgtq_f16(v100, v486), vcgtq_f16(v100, v487));
              v481[-1] = vbicq_s8(vsubq_s8(vbicq_s8(v473, v489), v489), v488);
              *v481 = vbicq_s8(vsubq_s8(vbicq_s8(v473, v490), v490), vuzp1q_s8(vcgtq_f16(v99, v486), vcgtq_f16(v99, v487)));
              v481 += 2;
              v483 -= 32;
            }

            while (v483);
            if (v88 == v98)
            {
              goto LABEL_563;
            }

            v479 = v88 & 0x1FFFFFFE0;
            if ((v88 & 0x1C) == 0)
            {
              v477 = (v477 + v101);
              v476 += v98;
              v480 = v88 & 0xFFFFFFE0;
LABEL_580:
              v496 = v480 + 1;
              do
              {
                v497 = *v477++;
                v498 = v497;
                if (v497 < *_D1.i16)
                {
                  v499 = 1;
                }

                else
                {
                  v499 = 2;
                }

                if (v498 < *_D0.i16)
                {
                  v499 = 0;
                }

                *v476++ = v499;
                v182 = v88 > v496++;
              }

              while (v182);
              goto LABEL_563;
            }
          }

          else
          {
            v479 = 0;
          }

          v476 += v102;
          v491 = v479 - (v88 & 0x1FFFFFFFCLL);
          v492 = (v474->i32 + v479);
          v493 = &v475[v479];
          do
          {
            v494 = *v493++;
            v495 = vcgt_f16(*v100.i8, v494);
            *v492++ = vuzp1_s8(vbic_s8(vsub_s16(vbic_s8(0x2000200020002, v495), v495), vcgt_f16(*v99.i8, v494)), _D0).u32[0];
            v491 += 4;
          }

          while (v491);
          if (v88 != v102)
          {
            v477 = (v477 + v103);
            v480 = v88 & 0xFFFFFFFC;
            goto LABEL_580;
          }

LABEL_563:
          ++v470;
          v471 = (v471 + v90);
          v472 = (v472 + v91);
          v475 = (v475 + v90);
          v474 = (v474 + v91);
          if (v89 <= v470)
          {
            goto LABEL_638;
          }
        }
      }
    }

    else if (PixelFormatType != 1278226534)
    {
      if (PixelFormatType != 1278226536)
      {
        if (PixelFormatType != 1717855600)
        {
LABEL_100:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            PixelBufferUtils::pixelFormatAsString(PixelFormatType, buf);
            v214 = v527;
            v215 = *buf;
            PixelBufferUtils::pixelFormatAsString(v10, __p);
            v216 = buf;
            if (v214 < 0)
            {
              v216 = v215;
            }

            if (v525 >= 0)
            {
              v217 = __p;
            }

            else
            {
              v217 = __p[0];
            }

            *v528 = 136446466;
            v529 = v216;
            v530 = 2082;
            v531 = v217;
            _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unsupported confidence map format (%{public}s, %{public}s)", v528, 0x16u);
            if (v525 < 0)
            {
              operator delete(__p[0]);
            }

            if (v527 < 0)
            {
              operator delete(*buf);
            }
          }

          v14 = -22956;
          goto LABEL_641;
        }

        goto LABEL_18;
      }

      goto LABEL_13;
    }

LABEL_18:
    if (v10 > 1717855599)
    {
      if (v10 <= 1751410031)
      {
        if (v10 != 1717855600 && v10 != 1717856627)
        {
          goto LABEL_100;
        }

        goto LABEL_47;
      }

      if (v10 != 1751411059 && v10 != 1751410032)
      {
        goto LABEL_100;
      }

LABEL_83:
      if (a3 != a4)
      {
        CVPixelBufferLockBaseAddress(a3, 1uLL);
      }

      CVPixelBufferLockBaseAddress(a4, 0);
      v73 = CVPixelBufferGetWidth(a3);
      v74 = CVPixelBufferGetHeight(a3);
      v75 = CVPixelBufferGetBytesPerRow(a3);
      v76 = CVPixelBufferGetBytesPerRow(a4);
      v77 = CVPixelBufferGetBaseAddress(a3);
      v78 = CVPixelBufferGetBaseAddress(a4);
      if (!v74 || !v73)
      {
        goto LABEL_638;
      }

      v79 = v73 & 0x1FFFFFFF0;
      v80 = vdupq_lane_s32(v522, 0);
      v81 = vdupq_lane_s32(v523, 0);
      v82 = v73 & 0x1FFFFFFFCLL;
      if (v13)
      {
        if (v73 <= 3)
        {
          v83 = 0;
          do
          {
            v84 = 0;
            do
            {
              v85 = v77[v84];
              if (v85 <= *v523.i32)
              {
                LOWORD(v86) = COERCE_UNSIGNED_INT(2.0);
              }

              else
              {
                LOWORD(v86) = COERCE_UNSIGNED_INT(1.0);
              }

              if (v85 <= *v522.i32)
              {
                v87 = v86;
              }

              else
              {
                v87 = COERCE_SHORT_FLOAT(0);
              }

              v78[v84++] = v87;
            }

            while (v84 < v73);
            ++v83;
            v78 = (v78 + v76);
            v77 = (v77 + v75);
          }

          while (v74 > v83);
          goto LABEL_638;
        }

        if (!v73 || (v141 = (v73 - 1) >> 32) != 0)
        {
          v307 = 0;
          do
          {
            v308 = 0;
            do
            {
              v309 = v77[v308];
              if (v309 <= *v523.i32)
              {
                LOWORD(v310) = COERCE_UNSIGNED_INT(2.0);
              }

              else
              {
                LOWORD(v310) = COERCE_UNSIGNED_INT(1.0);
              }

              if (v309 <= *v522.i32)
              {
                v311 = v310;
              }

              else
              {
                v311 = COERCE_SHORT_FLOAT(0);
              }

              v78[v308++] = v311;
            }

            while (v73 > v308);
            ++v307;
            v78 = (v78 + v76);
            v77 = (v77 + v75);
          }

          while (v74 > v307);
          goto LABEL_638;
        }

        v142 = (v77 + 8);
        v143 = (v78 + 8);
        v144.i64[0] = 0x4000400040004000;
        v144.i64[1] = 0x4000400040004000;
        v145.i64[0] = 0x3C003C003C003C00;
        v145.i64[1] = 0x3C003C003C003C00;
        while (1)
        {
          if (v73 >= 0x10)
          {
            v147 = v143;
            v148 = v142;
            v149 = v73 & 0x1FFFFFFF0;
            do
            {
              v150 = v148[-2];
              v151 = v148[-1];
              v152 = *v148;
              v153 = v148[1];
              v148 += 4;
              v147[-1] = vbicq_s8(vbslq_s8(vuzp1q_s16(vcgtq_f32(v150, v81), vcgtq_f32(v151, v81)), v145, v144), vuzp1q_s16(vcgtq_f32(v150, v80), vcgtq_f32(v151, v80)));
              *v147 = vbicq_s8(vbslq_s8(vuzp1q_s16(vcgtq_f32(v152, v81), vcgtq_f32(v153, v81)), v145, v144), vuzp1q_s16(vcgtq_f32(v152, v80), vcgtq_f32(v153, v80)));
              v147 += 2;
              v149 -= 16;
            }

            while (v149);
            v155 = *v522.i32;
            v154 = *v523.i32;
            if (v73 == v79)
            {
              goto LABEL_173;
            }

            v146 = v73 & 0x1FFFFFFF0;
            v156 = v73 & 0x1FFFFFFF0;
            if ((v73 & 0xC) == 0)
            {
              goto LABEL_183;
            }
          }

          else
          {
            v146 = 0;
          }

          v157 = v146 - (v73 & 0x1FFFFFFFCLL);
          v158 = &v77[v146];
          v159 = &v78[v146];
          do
          {
            v160 = *v158++;
            *v159++ = vbic_s8(vbsl_s8(vmovn_s32(vcgtq_f32(v160, v81)), 0x3C003C003C003C00, 0x4000400040004000), vmovn_s32(vcgtq_f32(v160, v80)));
            v157 += 4;
          }

          while (v157);
          v156 = v73 & 0x1FFFFFFFCLL;
          v155 = *v522.i32;
          v154 = *v523.i32;
          if (v73 != v82)
          {
            do
            {
LABEL_183:
              v161 = v77[v156];
              if (v161 <= v154)
              {
                LOWORD(v162) = COERCE_UNSIGNED_INT(2.0);
              }

              else
              {
                LOWORD(v162) = COERCE_UNSIGNED_INT(1.0);
              }

              if (v161 <= v155)
              {
                v163 = v162;
              }

              else
              {
                v163 = COERCE_SHORT_FLOAT(0);
              }

              v78[v156++] = v163;
            }

            while (v73 > v156);
          }

LABEL_173:
          ++v141;
          v142 = (v142 + v75);
          v143 = (v143 + v76);
          v77 = (v77 + v75);
          v78 = (v78 + v76);
          if (v74 <= v141)
          {
            goto LABEL_638;
          }
        }
      }

      if (v73 <= 3)
      {
        v126 = 0;
        do
        {
          v127 = 0;
          do
          {
            v128 = v77[v127];
            if (v128 >= *v523.i32)
            {
              LOWORD(v129) = COERCE_UNSIGNED_INT(2.0);
            }

            else
            {
              LOWORD(v129) = COERCE_UNSIGNED_INT(1.0);
            }

            if (v128 >= *v522.i32)
            {
              v130 = v129;
            }

            else
            {
              v130 = COERCE_SHORT_FLOAT(0);
            }

            v78[v127++] = v130;
          }

          while (v127 < v73);
          ++v126;
          v78 = (v78 + v76);
          v77 = (v77 + v75);
        }

        while (v74 > v126);
        goto LABEL_638;
      }

      if (!v73 || (v218 = (v73 - 1) >> 32) != 0)
      {
        v386 = 0;
        do
        {
          v387 = 0;
          do
          {
            v388 = v77[v387];
            if (v388 >= *v523.i32)
            {
              LOWORD(v389) = COERCE_UNSIGNED_INT(2.0);
            }

            else
            {
              LOWORD(v389) = COERCE_UNSIGNED_INT(1.0);
            }

            if (v388 >= *v522.i32)
            {
              v390 = v389;
            }

            else
            {
              v390 = COERCE_SHORT_FLOAT(0);
            }

            v78[v387++] = v390;
          }

          while (v73 > v387);
          ++v386;
          v78 = (v78 + v76);
          v77 = (v77 + v75);
        }

        while (v74 > v386);
        goto LABEL_638;
      }

      v219 = (v77 + 8);
      v220 = (v78 + 8);
      v221.i64[0] = 0x4000400040004000;
      v221.i64[1] = 0x4000400040004000;
      v222.i64[0] = 0x3C003C003C003C00;
      v222.i64[1] = 0x3C003C003C003C00;
      while (1)
      {
        if (v73 >= 0x10)
        {
          v224 = v220;
          v225 = v219;
          v226 = v73 & 0x1FFFFFFF0;
          do
          {
            v227 = v225[-2];
            v228 = v225[-1];
            v229 = *v225;
            v230 = v225[1];
            v225 += 4;
            v224[-1] = vbicq_s8(vbslq_s8(vuzp1q_s16(vcgtq_f32(v81, v227), vcgtq_f32(v81, v228)), v222, v221), vuzp1q_s16(vcgtq_f32(v80, v227), vcgtq_f32(v80, v228)));
            *v224 = vbicq_s8(vbslq_s8(vuzp1q_s16(vcgtq_f32(v81, v229), vcgtq_f32(v81, v230)), v222, v221), vuzp1q_s16(vcgtq_f32(v80, v229), vcgtq_f32(v80, v230)));
            v224 += 2;
            v226 -= 16;
          }

          while (v226);
          v232 = *v522.i32;
          v231 = *v523.i32;
          if (v73 == v79)
          {
            goto LABEL_266;
          }

          v223 = v73 & 0x1FFFFFFF0;
          v233 = v73 & 0x1FFFFFFF0;
          if ((v73 & 0xC) == 0)
          {
            goto LABEL_276;
          }
        }

        else
        {
          v223 = 0;
        }

        v234 = v223 - (v73 & 0x1FFFFFFFCLL);
        v235 = &v77[v223];
        v236 = &v78[v223];
        do
        {
          v237 = *v235++;
          *v236++ = vbic_s8(vbsl_s8(vmovn_s32(vcgtq_f32(v81, v237)), 0x3C003C003C003C00, 0x4000400040004000), vmovn_s32(vcgtq_f32(v80, v237)));
          v234 += 4;
        }

        while (v234);
        v233 = v73 & 0x1FFFFFFFCLL;
        v232 = *v522.i32;
        v231 = *v523.i32;
        if (v73 != v82)
        {
          do
          {
LABEL_276:
            v238 = v77[v233];
            if (v238 >= v231)
            {
              LOWORD(v239) = COERCE_UNSIGNED_INT(2.0);
            }

            else
            {
              LOWORD(v239) = COERCE_UNSIGNED_INT(1.0);
            }

            if (v238 >= v232)
            {
              v240 = v239;
            }

            else
            {
              v240 = COERCE_SHORT_FLOAT(0);
            }

            v78[v233++] = v240;
          }

          while (v73 > v233);
        }

LABEL_266:
        ++v218;
        v219 = (v219 + v75);
        v220 = (v220 + v76);
        v77 = (v77 + v75);
        v78 = (v78 + v76);
        if (v74 <= v218)
        {
          goto LABEL_638;
        }
      }
    }

    if (v10 != 1278226488)
    {
      if (v10 == 1278226534)
      {
LABEL_47:
        if (a3 != a4)
        {
          CVPixelBufferLockBaseAddress(a3, 1uLL);
        }

        CVPixelBufferLockBaseAddress(a4, 0);
        v39 = CVPixelBufferGetWidth(a3);
        v40 = CVPixelBufferGetHeight(a3);
        v41 = CVPixelBufferGetBytesPerRow(a3);
        v42 = CVPixelBufferGetBytesPerRow(a4);
        v43 = CVPixelBufferGetBaseAddress(a3);
        v44 = CVPixelBufferGetBaseAddress(a4);
        if (!v40 || !v39)
        {
          goto LABEL_638;
        }

        v45 = &v44[v39];
        v46 = &v43[v39];
        v47 = v39 & 0x1FFFFFFF8;
        v48 = 4 * (v39 & 0x1FFFFFFF8);
        v49 = vdupq_lane_s32(v522, 0);
        v50 = vdupq_lane_s32(v523, 0);
        if (v13)
        {
          if (v39 <= 7)
          {
            v51 = 0;
            do
            {
              v52 = 0;
              do
              {
                v53 = v43[v52];
                if (v53 <= *v523.i32)
                {
                  v54 = 2.0;
                }

                else
                {
                  v54 = 1.0;
                }

                if (v53 <= *v522.i32)
                {
                  v55 = v54;
                }

                else
                {
                  v55 = 0.0;
                }

                v44[v52++] = v55;
              }

              while (v52 < v39);
              ++v51;
              v44 = (v44 + v42);
              v43 = (v43 + v41);
            }

            while (v40 > v51);
LABEL_638:
            if (a3 != a4)
            {
              CVPixelBufferUnlockBaseAddress(a3, 1uLL);
            }

            CVPixelBufferUnlockBaseAddress(a4, 0);
            v14 = 0;
            goto LABEL_641;
          }

          if (!v39 || (v164 = (v39 - 1) >> 32) != 0)
          {
            v312 = 0;
            do
            {
              v313 = 0;
              do
              {
                v314 = v43[v313];
                if (v314 <= *v523.i32)
                {
                  v315 = 2.0;
                }

                else
                {
                  v315 = 1.0;
                }

                if (v314 <= *v522.i32)
                {
                  v316 = v315;
                }

                else
                {
                  v316 = 0.0;
                }

                v44[v313++] = v316;
              }

              while (v39 > v313);
              ++v312;
              v44 = (v44 + v42);
              v43 = (v43 + v41);
            }

            while (v40 > v312);
            goto LABEL_638;
          }

          v165 = (v43 + 4);
          v166 = (v44 + 4);
          v167.i64[0] = 0x4000000040000000;
          v167.i64[1] = 0x4000000040000000;
          __asm { FMOV            V3.4S, #1.0 }

          while (1)
          {
            v169 = (v44 + v42 * v164);
            v170 = (v43 + v41 * v164);
            if (v169 < (v46 + v41 * v164) && v170 < (v45 + v42 * v164))
            {
              break;
            }

            v169 = (v169 + v48);
            v172 = v166;
            v173 = v165;
            v174 = v39 & 0x1FFFFFFF8;
            do
            {
              v175 = vbicq_s8(vbslq_s8(vcgtq_f32(*v173, v50), _Q3, v167), vcgtq_f32(*v173, v49));
              v172[-1] = vbicq_s8(vbslq_s8(vcgtq_f32(v173[-1], v50), _Q3, v167), vcgtq_f32(v173[-1], v49));
              *v172 = v175;
              v173 += 2;
              v172 += 2;
              v174 -= 8;
            }

            while (v174);
            if (v39 != v47)
            {
              v170 = (v170 + v48);
              v176 = v39 & 0xFFFFFFF8;
LABEL_204:
              v177 = v176 + 1;
              do
              {
                v178 = *v170++;
                v179 = v178;
                if (v178 <= *v523.i32)
                {
                  v180 = 2.0;
                }

                else
                {
                  v180 = 1.0;
                }

                if (v179 <= *v522.i32)
                {
                  v181 = v180;
                }

                else
                {
                  v181 = 0.0;
                }

                *v169++ = v181;
                v182 = v39 > v177++;
              }

              while (v182);
            }

            ++v164;
            v165 = (v165 + v41);
            v166 = (v166 + v42);
            if (v40 <= v164)
            {
              goto LABEL_638;
            }
          }

          v176 = 0;
          goto LABEL_204;
        }

        if (v39 <= 7)
        {
          v131 = 0;
          do
          {
            v132 = 0;
            do
            {
              v133 = v43[v132];
              if (v133 >= *v523.i32)
              {
                v134 = 2.0;
              }

              else
              {
                v134 = 1.0;
              }

              if (v133 >= *v522.i32)
              {
                v135 = v134;
              }

              else
              {
                v135 = 0.0;
              }

              v44[v132++] = v135;
            }

            while (v132 < v39);
            ++v131;
            v44 = (v44 + v42);
            v43 = (v43 + v41);
          }

          while (v40 > v131);
          goto LABEL_638;
        }

        if (!v39 || (v241 = (v39 - 1) >> 32) != 0)
        {
          v391 = 0;
          do
          {
            v392 = 0;
            do
            {
              v393 = v43[v392];
              if (v393 >= *v523.i32)
              {
                v394 = 2.0;
              }

              else
              {
                v394 = 1.0;
              }

              if (v393 >= *v522.i32)
              {
                v395 = v394;
              }

              else
              {
                v395 = 0.0;
              }

              v44[v392++] = v395;
            }

            while (v39 > v392);
            ++v391;
            v44 = (v44 + v42);
            v43 = (v43 + v41);
          }

          while (v40 > v391);
          goto LABEL_638;
        }

        v242 = (v43 + 4);
        v243 = (v44 + 4);
        v244.i64[0] = 0x4000000040000000;
        v244.i64[1] = 0x4000000040000000;
        __asm { FMOV            V3.4S, #1.0 }

        while (1)
        {
          v246 = (v44 + v42 * v241);
          v247 = (v43 + v41 * v241);
          if (v246 < (v46 + v41 * v241) && v247 < (v45 + v42 * v241))
          {
            break;
          }

          v246 = (v246 + v48);
          v249 = v243;
          v250 = v242;
          v251 = v39 & 0x1FFFFFFF8;
          do
          {
            v252 = vbicq_s8(vbslq_s8(vcgtq_f32(v50, *v250), _Q3, v244), vcgtq_f32(v49, *v250));
            v249[-1] = vbicq_s8(vbslq_s8(vcgtq_f32(v50, v250[-1]), _Q3, v244), vcgtq_f32(v49, v250[-1]));
            *v249 = v252;
            v250 += 2;
            v249 += 2;
            v251 -= 8;
          }

          while (v251);
          if (v39 != v47)
          {
            v247 = (v247 + v48);
            v253 = v39 & 0xFFFFFFF8;
LABEL_297:
            v254 = v253 + 1;
            do
            {
              v255 = *v247++;
              v256 = v255;
              if (v255 >= *v523.i32)
              {
                v257 = 2.0;
              }

              else
              {
                v257 = 1.0;
              }

              if (v256 >= *v522.i32)
              {
                v258 = v257;
              }

              else
              {
                v258 = 0.0;
              }

              *v246++ = v258;
              v182 = v39 > v254++;
            }

            while (v182);
          }

          ++v241;
          v242 = (v242 + v41);
          v243 = (v243 + v42);
          if (v40 <= v241)
          {
            goto LABEL_638;
          }
        }

        v253 = 0;
        goto LABEL_297;
      }

      if (v10 != 1278226536)
      {
        goto LABEL_100;
      }

      goto LABEL_83;
    }

    if (a3 != a4)
    {
      CVPixelBufferLockBaseAddress(a3, 1uLL);
    }

    CVPixelBufferLockBaseAddress(a4, 0);
    v108 = CVPixelBufferGetWidth(a3);
    v109 = CVPixelBufferGetHeight(a3);
    v110 = CVPixelBufferGetBytesPerRow(a3);
    v111 = CVPixelBufferGetBytesPerRow(a4);
    v112 = CVPixelBufferGetBaseAddress(a3);
    v113 = CVPixelBufferGetBaseAddress(a4);
    if (!v109 || !v108)
    {
      goto LABEL_638;
    }

    v114 = &v113->i8[v108];
    v115 = &v112[v108];
    v116 = v108 & 0x1FFFFFFE0;
    v117 = vdupq_lane_s32(v522, 0);
    v118 = vdupq_lane_s32(v523, 0);
    v119 = 4 * (v108 & 0x1FFFFFFE0);
    v120 = v108 & 0x1FFFFFFFCLL;
    v121 = 4 * (v108 & 0x1FFFFFFFCLL);
    if (v13)
    {
      if (v108 <= 3)
      {
        v122 = 0;
        do
        {
          v123 = 0;
          do
          {
            v124 = v112[v123];
            if (v124 > *v523.i32)
            {
              v125 = 1;
            }

            else
            {
              v125 = 2;
            }

            if (v124 > *v522.i32)
            {
              v125 = 0;
            }

            v113->i8[v123++] = v125;
          }

          while (v123 < v108);
          ++v122;
          v113 = (v113 + v111);
          v112 = (v112 + v110);
        }

        while (v109 > v122);
        goto LABEL_638;
      }

      if (!v108 || (v352 = (v108 - 1) >> 32) != 0)
      {
        v505 = 0;
        do
        {
          v506 = 0;
          do
          {
            v507 = v112[v506];
            if (v507 > *v523.i32)
            {
              v508 = 1;
            }

            else
            {
              v508 = 2;
            }

            if (v507 > *v522.i32)
            {
              v508 = 0;
            }

            v113->i8[v506++] = v508;
          }

          while (v108 > v506);
          ++v505;
          v113 = (v113 + v111);
          v112 = (v112 + v110);
        }

        while (v109 > v505);
        goto LABEL_638;
      }

      v353 = (v112 + 16);
      v354 = v113 + 1;
      v355.i64[0] = 0x202020202020202;
      v355.i64[1] = 0x202020202020202;
      v356 = v113;
      v357 = v112;
      while (1)
      {
        v358 = &v113->i8[v111 * v352];
        v359 = (v112 + v110 * v352);
        if (v358 < v115 + v110 * v352 && v359 < &v114[v111 * v352])
        {
          v362 = 0;
          goto LABEL_452;
        }

        if (v108 >= 0x20)
        {
          v363 = v354;
          v364 = v353;
          v365 = v108 & 0x1FFFFFFE0;
          do
          {
            v367 = v364[-2];
            v366 = v364[-1];
            v368 = v364[-4];
            v369 = v364[-3];
            v371 = v364[2];
            v370 = v364[3];
            v372 = *v364;
            v373 = v364[1];
            v364 += 8;
            v374 = vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v368, v117), vcgtq_f32(v369, v117)), vuzp1q_s16(vcgtq_f32(v367, v117), vcgtq_f32(v366, v117)));
            v375 = vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v368, v118), vcgtq_f32(v369, v118)), vuzp1q_s16(vcgtq_f32(v367, v118), vcgtq_f32(v366, v118)));
            v376 = vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v372, v118), vcgtq_f32(v373, v118)), vuzp1q_s16(vcgtq_f32(v371, v118), vcgtq_f32(v370, v118)));
            v363[-1] = vbicq_s8(vsubq_s8(vbicq_s8(v355, v375), v375), v374);
            *v363 = vbicq_s8(vsubq_s8(vbicq_s8(v355, v376), v376), vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v372, v117), vcgtq_f32(v373, v117)), vuzp1q_s16(vcgtq_f32(v371, v117), vcgtq_f32(v370, v117))));
            v363 += 2;
            v365 -= 32;
          }

          while (v365);
          if (v108 == v116)
          {
            goto LABEL_435;
          }

          v361 = v108 & 0x1FFFFFFE0;
          if ((v108 & 0x1C) == 0)
          {
            v359 = (v359 + v119);
            v358 += v116;
            v362 = v108 & 0xFFFFFFE0;
LABEL_452:
            v382 = v362 + 1;
            do
            {
              v383 = *v359++;
              v384 = v383;
              if (v383 > *v523.i32)
              {
                v385 = 1;
              }

              else
              {
                v385 = 2;
              }

              if (v384 > *v522.i32)
              {
                v385 = 0;
              }

              *v358++ = v385;
              v182 = v108 > v382++;
            }

            while (v182);
            goto LABEL_435;
          }
        }

        else
        {
          v361 = 0;
        }

        v358 += v120;
        v377 = v361 - (v108 & 0x1FFFFFFFCLL);
        v378 = (v356->i32 + v361);
        v379 = &v357[v361];
        do
        {
          v380 = *v379++;
          v381 = vmovn_s32(vcgtq_f32(v380, v118));
          *v378++ = vuzp1_s8(vbic_s8(vsub_s16(vbic_s8(0x2000200020002, v381), v381), vmovn_s32(vcgtq_f32(v380, v117))), *v117.f32).u32[0];
          v377 += 4;
        }

        while (v377);
        if (v108 != v120)
        {
          v359 = (v359 + v121);
          v362 = v108 & 0xFFFFFFFC;
          goto LABEL_452;
        }

LABEL_435:
        ++v352;
        v353 = (v353 + v110);
        v354 = (v354 + v111);
        v357 = (v357 + v110);
        v356 = (v356 + v111);
        if (v109 <= v352)
        {
          goto LABEL_638;
        }
      }
    }

    if (v108 <= 3)
    {
      v322 = 0;
      do
      {
        v323 = 0;
        do
        {
          v324 = v112[v323];
          if (v324 < *v523.i32)
          {
            v325 = 1;
          }

          else
          {
            v325 = 2;
          }

          if (v324 < *v522.i32)
          {
            v325 = 0;
          }

          v113->i8[v323++] = v325;
        }

        while (v323 < v108);
        ++v322;
        v113 = (v113 + v111);
        v112 = (v112 + v110);
      }

      while (v109 > v322);
      goto LABEL_638;
    }

    if (!v108 || (v436 = (v108 - 1) >> 32) != 0)
    {
      v513 = 0;
      do
      {
        v514 = 0;
        do
        {
          v515 = v112[v514];
          if (v515 < *v523.i32)
          {
            v516 = 1;
          }

          else
          {
            v516 = 2;
          }

          if (v515 < *v522.i32)
          {
            v516 = 0;
          }

          v113->i8[v514++] = v516;
        }

        while (v108 > v514);
        ++v513;
        v113 = (v113 + v111);
        v112 = (v112 + v110);
      }

      while (v109 > v513);
      goto LABEL_638;
    }

    v437 = (v112 + 16);
    v438 = v113 + 1;
    v439.i64[0] = 0x202020202020202;
    v439.i64[1] = 0x202020202020202;
    v440 = v113;
    v441 = v112;
    while (1)
    {
      v442 = &v113->i8[v111 * v436];
      v443 = (v112 + v110 * v436);
      if (v442 < v115 + v110 * v436 && v443 < &v114[v111 * v436])
      {
        v446 = 0;
        goto LABEL_552;
      }

      if (v108 >= 0x20)
      {
        v447 = v438;
        v448 = v437;
        v449 = v108 & 0x1FFFFFFE0;
        do
        {
          v451 = v448[-2];
          v450 = v448[-1];
          v452 = v448[-4];
          v453 = v448[-3];
          v455 = v448[2];
          v454 = v448[3];
          v456 = *v448;
          v457 = v448[1];
          v448 += 8;
          v458 = vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v117, v452), vcgtq_f32(v117, v453)), vuzp1q_s16(vcgtq_f32(v117, v451), vcgtq_f32(v117, v450)));
          v459 = vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v118, v452), vcgtq_f32(v118, v453)), vuzp1q_s16(vcgtq_f32(v118, v451), vcgtq_f32(v118, v450)));
          v460 = vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v118, v456), vcgtq_f32(v118, v457)), vuzp1q_s16(vcgtq_f32(v118, v455), vcgtq_f32(v118, v454)));
          v447[-1] = vbicq_s8(vsubq_s8(vbicq_s8(v439, v459), v459), v458);
          *v447 = vbicq_s8(vsubq_s8(vbicq_s8(v439, v460), v460), vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v117, v456), vcgtq_f32(v117, v457)), vuzp1q_s16(vcgtq_f32(v117, v455), vcgtq_f32(v117, v454))));
          v447 += 2;
          v449 -= 32;
        }

        while (v449);
        if (v108 == v116)
        {
          goto LABEL_535;
        }

        v445 = v108 & 0x1FFFFFFE0;
        if ((v108 & 0x1C) == 0)
        {
          v443 = (v443 + v119);
          v442 += v116;
          v446 = v108 & 0xFFFFFFE0;
LABEL_552:
          v466 = v446 + 1;
          do
          {
            v467 = *v443++;
            v468 = v467;
            if (v467 < *v523.i32)
            {
              v469 = 1;
            }

            else
            {
              v469 = 2;
            }

            if (v468 < *v522.i32)
            {
              v469 = 0;
            }

            *v442++ = v469;
            v182 = v108 > v466++;
          }

          while (v182);
          goto LABEL_535;
        }
      }

      else
      {
        v445 = 0;
      }

      v442 += v120;
      v461 = v445 - (v108 & 0x1FFFFFFFCLL);
      v462 = (v440->i32 + v445);
      v463 = &v441[v445];
      do
      {
        v464 = *v463++;
        v465 = vmovn_s32(vcgtq_f32(v118, v464));
        *v462++ = vuzp1_s8(vbic_s8(vsub_s16(vbic_s8(0x2000200020002, v465), v465), vmovn_s32(vcgtq_f32(v117, v464))), *v117.f32).u32[0];
        v461 += 4;
      }

      while (v461);
      if (v108 != v120)
      {
        v443 = (v443 + v121);
        v446 = v108 & 0xFFFFFFFC;
        goto LABEL_552;
      }

LABEL_535:
      ++v436;
      v437 = (v437 + v110);
      v438 = (v438 + v111);
      v441 = (v441 + v110);
      v440 = (v440 + v111);
      if (v109 <= v436)
      {
        goto LABEL_638;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot create confidence levels: thresholds are not defined.", buf, 2u);
  }

  v14 = -22953;
LABEL_641:

  return v14;
}

+ (int64_t)scaleConvertRotateImage:(__CVBuffer *)a3 rotateBy:(unsigned __int8)a4 cropBy:(CGRect)a5 scaleInto:(__CVBuffer *)a6 intermediateScalingBuffer:(__CVBuffer *)a7 intermediateRotatingBuffer:(__CVBuffer *)a8 useVT:(BOOL)a9
{
  if (PixelBufferUtils::scaleConvertRotatePixelBuffer(a3, a4, a6, a5, a7, a8, a9))
  {
    return -22966;
  }

  else
  {
    return 0;
  }
}

+ (id)getStandardNameForBufferOfType:(id)a3 moduleName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = 0x277CCA000uLL;
  {
    v7 = 0x277CCA000uLL;
    if (v10)
    {
      +[ADUtils getStandardNameForBufferOfType:moduleName:]::progname = [MEMORY[0x277CCACA8] stringWithUTF8String:getprogname()];
      v7 = 0x277CCA000;
    }
  }

  v8 = [*(v7 + 3240) stringWithFormat:@"%@/AppleDepth  %@/%@ ; 1/1", +[ADUtils getStandardNameForBufferOfType:moduleName:]::progname, v5, v6];;

  return v8;
}

+ (void)updatePixelBufferIOSurfaceLabel:(id)a3 pixelBuffer:(__CVBuffer *)a4
{
  value = a3;
  IOSurface = CVPixelBufferGetIOSurface(a4);
  IOSurfaceSetValue(IOSurface, *MEMORY[0x277CD2A50], value);
}

+ (BOOL)updatePixelBufferAllocationWithNewSize:(CGSize)a3 pixelFormat:(unsigned int)a4 pixelBuffer:(__CVBuffer *)a5
{
  height = a3.height;
  width = a3.width;
  if (*a5)
  {
    if (a3.width == CVPixelBufferGetWidth(*a5) && height == CVPixelBufferGetHeight(*a5) && CVPixelBufferGetPixelFormatType(*a5) == a4)
    {
      return 0;
    }

    if (*a5)
    {
      CVPixelBufferRelease(*a5);
    }
  }

  pixelBufferOut = 0;
  v10 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  v12 = CVPixelBufferCreate(v10, width, height, a4, BufferAttributes, &pixelBufferOut);
  v13 = pixelBufferOut;
  if (v12)
  {
    v13 = 0;
  }

  *a5 = v13;
  return 1;
}

@end