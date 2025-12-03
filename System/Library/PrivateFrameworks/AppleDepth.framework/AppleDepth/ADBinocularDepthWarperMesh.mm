@interface ADBinocularDepthWarperMesh
+ (BOOL)updateWarper:(maps_uv *)warper source:(id)source target:(id)target;
+ (double)skew:(__n128)skew;
+ (void)rectifyCameraPairForLeftCalib:(id)calib rightCalib:(id)rightCalib leftRectifiedCameraToPlatformTransform:(id *)transform rightRectifiedCameraToPlatformTransform:(id *)platformTransform prioritization:(int64_t)prioritization;
- (ADBinocularDepthWarperMesh)init;
- (BOOL)updateWithSource:(id)source target:(id)target;
- (int64_t)undistortColorImage:(__CVBuffer *)image undistortedImage:(__CVBuffer *)undistortedImage;
- (void)dealloc;
- (void)deallocMemory;
@end

@implementation ADBinocularDepthWarperMesh

- (void)dealloc
{
  [(ADBinocularDepthWarperMesh *)self deallocMemory];
  v3.receiver = self;
  v3.super_class = ADBinocularDepthWarperMesh;
  [(ADBinocularDepthWarperMesh *)&v3 dealloc];
}

- (void)deallocMemory
{
  map_u = self->_undistortMaps.map_u;
  if (map_u)
  {
    MEMORY[0x245CBFC90](map_u, 0x1000C8052888210);
    self->_undistortMaps.map_u = 0;
  }

  map_v = self->_undistortMaps.map_v;
  if (map_v)
  {
    MEMORY[0x245CBFC90](map_v, 0x1000C8052888210);
    self->_undistortMaps.map_v = 0;
  }

  if (self->_undistortMaps.mapping)
  {
    vImageMapping_Release();
  }

  v5 = self->_undistortHalvedMaps.map_u;
  if (v5)
  {
    MEMORY[0x245CBFC90](v5, 0x1000C8052888210);
    self->_undistortHalvedMaps.map_u = 0;
  }

  v6 = self->_undistortHalvedMaps.map_v;
  if (v6)
  {
    MEMORY[0x245CBFC90](v6, 0x1000C8052888210);
    self->_undistortHalvedMaps.map_v = 0;
  }

  if (self->_undistortHalvedMaps.mapping)
  {

    vImageMapping_Release();
  }
}

- (ADBinocularDepthWarperMesh)init
{
  v3.receiver = self;
  v3.super_class = ADBinocularDepthWarperMesh;
  result = [(ADBinocularDepthWarperMesh *)&v3 init];
  if (result)
  {
    *&result->_undistortHalvedMaps.map_v = 0u;
    *&result->_undistortMaps.mapping = 0u;
    *&result->_undistortMaps.map_u = 0u;
  }

  return result;
}

- (int64_t)undistortColorImage:(__CVBuffer *)image undistortedImage:(__CVBuffer *)undistortedImage
{
  v81 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(image);
  v8 = CVPixelBufferGetPixelFormatType(undistortedImage);
  if (v8 == 875704422)
  {
    CVPixelBufferLockBaseAddress(undistortedImage, 0);
    CVPixelBufferLockBaseAddress(image, 0);
    PlaneCount = CVPixelBufferGetPlaneCount(image);
    v10 = PlaneCount;
    v11 = MEMORY[0x277CBF3A0];
    if (PlaneCount <= 1)
    {
      memset(dest, 0, 32);
      PixelBufferUtils::asVImageBuffer(undistortedImage, 1, *MEMORY[0x277CBF3A0], dest);
      *color = -32640;
      vImageBufferFill_CbCr8(dest, color, 0);
      goto LABEL_7;
    }

    if (PlaneCount == 2)
    {
LABEL_7:
      v14 = 0;
      p_undistortHalvedMaps = &self->_undistortHalvedMaps;
      p_undistortMaps = &self->_undistortMaps;
      if (v10 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v10;
      }

      v76 = v17;
      while (1)
      {
        v19 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, v14);
        v20 = PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, v14);
        if (v19 != v20)
        {
          v74 = v20;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return -22951;
          }

          LODWORD(v77.data) = 134218496;
          *(&v77.data + 4) = v14;
          WORD2(v77.height) = 2048;
          *(&v77.height + 6) = v19;
          HIWORD(v77.width) = 2048;
          v77.rowBytes = v74;
          v70 = MEMORY[0x277D86220];
          v71 = "plane %zu has unsupported component size (%zu/%zu)";
          v72 = &v77;
          v73 = 32;
          goto LABEL_70;
        }

        PixelBufferUtils::asVImageBuffer(image, v14, *v11, &v77);
        v21 = &dest[v14];
        v22 = *&v77.width;
        *&v21->data = *&v77.data;
        *&v21->width = v22;
        x = v11->origin.x;
        *&v22 = v11->origin.y;
        width = v11->size.width;
        height = v11->size.height;
        PixelBufferUtils::asVImageBuffer(undistortedImage, v14, *(&v22 - 8), &v77);
        v30 = &color[32 * v14];
        v31 = *&v77.width;
        *v30 = *&v77.data;
        *(v30 + 1) = v31;
        v32 = *(v30 + 2);
        v33 = p_undistortMaps;
        if (v32 != v79)
        {
          v33 = p_undistortHalvedMaps;
          if (v32 != v79 >> 1)
          {
            break;
          }
        }

        if (v19 <= 4 && ((1 << v19) & 0x1A) != 0)
        {
          if (!v33->mapping)
          {
            v34 = *(v30 + 1);
            v77.data = v33->map_u;
            v77.height = v34;
            v77.width = v32;
            v77.rowBytes = 4 * v32;
            v33->mapping = vImageMapping_CreateFromImageMap_Image8U();
            v11 = MEMORY[0x277CBF3A0];
          }

          v18 = vImageRemap_Image8U();
          if (v18)
          {
            v75 = v18;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LODWORD(v77.data) = 134217984;
              *(&v77.data + 4) = v75;
              _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Image undistortion failed with error code : %ld", &v77, 0xCu);
            }

            return -22966;
          }
        }

        else
        {
          v35 = *(v30 + 1);
          if (v35 && v32)
          {
            v36 = 0;
            v37 = 0;
            v38 = *(v30 + 2);
            do
            {
              if (v38)
              {
                if (v19)
                {
                  v39 = 0;
                  v40 = 0;
                  do
                  {
                    v41 = v40 + v38 * v37;
                    v42 = v33->map_u[v41];
                    if (v42 < 0.0 || v42 >= (v21->width - 1) || (v26.i32[0] = LODWORD(v33->map_v[v41]), v26.f32[0] < 0.0) || v26.f32[0] >= (v21->height - 1))
                    {
                      *(*v30 + *(v30 + 3) * v37 + v40) = 0;
                    }

                    else
                    {
                      v43 = vcvtms_u32_f32(v42);
                      v44 = vcvtps_u32_f32(v42);
                      v45 = vcvtms_u32_f32(v26.f32[0]);
                      v46 = vcvtps_u32_f32(v26.f32[0]);
                      if (v43 == v44)
                      {
                        v47 = v44 + 1;
                      }

                      else
                      {
                        v47 = v44;
                      }

                      if (v45 == v46)
                      {
                        v48 = v46 + 1;
                      }

                      else
                      {
                        v48 = v46;
                      }

                      v49 = v19 * v43;
                      v50 = v47 * v19;
                      v51.f32[0] = v47 - v42;
                      v51.f32[1] = v42 - v43;
                      v52 = v45;
                      v53 = v48 - v26.f32[0];
                      v26.f32[0] = v26.f32[0] - v45;
                      v26 = vdup_lane_s32(v26, 0);
                      v54 = v39;
                      v55 = v19;
                      do
                      {
                        rowBytes = v21->rowBytes;
                        v57 = v21->data + rowBytes * v45;
                        LOBYTE(v52) = v57[v49];
                        v58 = v21->data + rowBytes * v48;
                        v27.i8[0] = v58[v49];
                        LOBYTE(v28) = v57[v50];
                        v59.f32[0] = LODWORD(v52);
                        v27.f32[0] = v27.u32[0];
                        LOBYTE(v29) = v58[v50];
                        v59.f32[1] = LODWORD(v28);
                        v28 = v29;
                        v27.f32[1] = v29;
                        v52 = vaddv_f32(vmul_f32(v51, vmla_f32(vmul_n_f32(v59, v53), v26, v27)));
                        *(*v30 + v37 * *(v30 + 3) + v54++) = v52;
                        ++v50;
                        ++v49;
                        --v55;
                      }

                      while (v55);
                      v32 = *(v30 + 2);
                    }

                    ++v40;
                    v39 += v19;
                    v38 = v32;
                  }

                  while (v40 < v32);
                  v35 = *(v30 + 1);
                }

                else
                {
                  map_u = v33->map_u;
                  map_v = v33->map_v;
                  v62 = v38 * v37;
                  v63 = v33->map_u[v62];
                  if (v63 < 0.0 || v63 >= (v21->width - 1) || (v69 = map_v[v62], v69 < 0.0) || v69 >= (v21->height - 1))
                  {
                    *(*v30 + *(v30 + 3) * v37) = 0;
                  }

                  if (v32 >= 2)
                  {
                    v64 = map_v + v32 * v36;
                    v65 = map_u + v32 * v36;
                    for (i = 1; i != v32; ++i)
                    {
                      v67 = *&v65[4 * i];
                      if (v67 >= 0.0 && v67 < (v21->width - 1))
                      {
                        v68 = *(v64 + 4 * i);
                        if (v68 >= 0.0 && v68 < (v21->height - 1))
                        {
                          continue;
                        }
                      }

                      *(*v30 + v37 * *(v30 + 3) + i) = 0;
                    }
                  }
                }

                v38 = v32;
              }

              ++v37;
              v36 += 4;
            }

            while (v37 < v35);
          }
        }

        if (++v14 == v76)
        {
          CVPixelBufferUnlockBaseAddress(undistortedImage, 0);
          CVPixelBufferUnlockBaseAddress(image, 0);
          return 0;
        }
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        return -22951;
      }

      LOWORD(v77.data) = 0;
      v70 = MEMORY[0x277D86220];
      v71 = "unexpected plane size";
      v72 = &v77;
      v73 = 2;
      goto LABEL_70;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LODWORD(dest[0].data) = 134217984;
      *(&dest[0].data + 4) = v10;
      v70 = MEMORY[0x277D86220];
      v71 = "unexpected number of planes %lu";
      v72 = dest;
      v73 = 12;
LABEL_70:
      _os_log_error_impl(&dword_2402F6000, v70, OS_LOG_TYPE_ERROR, v71, v72, v73);
    }
  }

  else
  {
    v12 = v8;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LODWORD(dest[0].data) = 67109120;
      HIDWORD(dest[0].data) = v12;
      v70 = MEMORY[0x277D86220];
      v71 = "unexpected pixel format type for image output (%u)";
      v72 = dest;
      v73 = 8;
      goto LABEL_70;
    }
  }

  return -22951;
}

- (BOOL)updateWithSource:(id)source target:(id)target
{
  sourceCopy = source;
  targetCopy = target;
  v8 = objc_alloc(MEMORY[0x277CED0D8]);
  [sourceCopy intrinsicMatrix];
  v62 = v10;
  v64 = v9;
  v60 = v11;
  [sourceCopy cameraToPlatformTransform];
  v56 = v13;
  v58 = v12;
  v52 = v15;
  v54 = v14;
  [sourceCopy pixelSize];
  v17 = v16;
  [sourceCopy referenceDimensions];
  v19 = v18;
  v21 = v20;
  distortionModel = [sourceCopy distortionModel];
  v23 = [distortionModel copyWithZone:0];
  LODWORD(v24) = v17;
  v25 = [v8 initWithIntrinsics:v23 cameraToPlatformTransform:v64 pixelSize:v62 referenceDimensions:v60 distortionModel:{v58, v56, v54, v52, v24, v19, v21}];

  v26 = objc_alloc(MEMORY[0x277CED0D8]);
  [targetCopy intrinsicMatrix];
  v63 = v28;
  v65 = v27;
  v61 = v29;
  [targetCopy cameraToPlatformTransform];
  v57 = v31;
  v59 = v30;
  v53 = v33;
  v55 = v32;
  [targetCopy pixelSize];
  v35 = v34;
  [targetCopy referenceDimensions];
  v37 = v36;
  v39 = v38;
  distortionModel2 = [targetCopy distortionModel];
  v41 = [distortionModel2 copyWithZone:0];
  LODWORD(v42) = v35;
  v43 = [v26 initWithIntrinsics:v41 cameraToPlatformTransform:v65 pixelSize:v63 referenceDimensions:v61 distortionModel:{v59, v57, v55, v53, v42, v37, v39}];

  [sourceCopy referenceDimensions];
  v45 = v44;
  [sourceCopy referenceDimensions];
  if (![v25 scale:{v45 * 0.5, v46 * 0.5}] || (objc_msgSend(targetCopy, "referenceDimensions"), v48 = v47, objc_msgSend(targetCopy, "referenceDimensions"), (objc_msgSend(v43, "scale:", v48 * 0.5, v49 * 0.5) & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed preparing half scaled camera calibration", buf, 2u);
    }

    goto LABEL_9;
  }

  [(ADBinocularDepthWarperMesh *)self deallocMemory];
  if (![ADBinocularDepthWarperMesh updateWarper:&self->_undistortMaps source:sourceCopy target:targetCopy]|| ![ADBinocularDepthWarperMesh updateWarper:&self->_undistortHalvedMaps source:v25 target:v43])
  {
    [(ADBinocularDepthWarperMesh *)self deallocMemory];
LABEL_9:
    v50 = 0;
    goto LABEL_10;
  }

  v50 = 1;
LABEL_10:

  return v50;
}

+ (BOOL)updateWarper:(maps_uv *)warper source:(id)source target:(id)target
{
  source;
  targetCopy = target;
  [targetCopy referenceDimensions];
  [targetCopy referenceDimensions];
  operator new[]();
}

+ (void)rectifyCameraPairForLeftCalib:(id)calib rightCalib:(id)rightCalib leftRectifiedCameraToPlatformTransform:(id *)transform rightRectifiedCameraToPlatformTransform:(id *)platformTransform prioritization:(int64_t)prioritization
{
  calibCopy = calib;
  rightCalibCopy = rightCalib;
  [calibCopy cameraToPlatformTransform];
  v79 = v12;
  [rightCalibCopy cameraToPlatformTransform];
  v78 = v13;
  if (prioritization == 2)
  {
    [calibCopy cameraToPlatformTransform];
    v14 = v78;
    v15 = v79;
    v16 = vsubq_f32(v78, v79);
    v17 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
    v19 = vmlaq_f32(vmulq_f32(v17, vnegq_f32(v18)), v16, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
    v20 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
    v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), vnegq_f32(v16)), v20, v17);
    v22 = vmulq_f32(v16, v16);
    v23 = vaddv_f32(*v22.f32);
    *v22.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v22.f32[2] + v23));
    *v22.f32 = vmul_f32(*v22.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v22.f32[2] + v23), vmul_f32(*v22.f32, *v22.f32)));
    v24 = vmulq_f32(v19, v19);
    *&v25 = v24.f32[1] + (v24.f32[2] + v24.f32[0]);
    v26 = vmulq_n_f32(v16, vmul_f32(*v22.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v22.f32[2] + v23), vmul_f32(*v22.f32, *v22.f32))).f32[0]);
    *v24.f32 = vrsqrte_f32(v25);
    *v24.f32 = vmul_f32(*v24.f32, vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32)));
    v27 = vmulq_n_f32(v20, vmul_f32(*v24.f32, vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32))).f32[0]);
    v28 = vmulq_f32(v21, v21);
    *&v29 = v28.f32[1] + (v28.f32[2] + v28.f32[0]);
    *v28.f32 = vrsqrte_f32(v29);
    *v28.f32 = vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32)));
    v30 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32))).f32[0]);
  }

  else
  {
    [rightCalibCopy cameraToPlatformTransform];
    v33 = v32;
    v35 = v34;
    v36 = vsubq_f32(v78, v79);
    v37 = vmulq_f32(v36, v36);
    *&v38 = v37.f32[2] + vaddv_f32(*v37.f32);
    *v37.f32 = vrsqrte_f32(v38);
    *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32)));
    v39 = vmulq_n_f32(v36, vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32))).f32[0]);
    v40 = vmulq_f32(v33, v39);
    v41 = v40.f32[2] + vaddv_f32(*v40.f32);
    v42 = MEMORY[0x277D860B0];
    if (v41 >= 0.0)
    {
      v55 = v33;
      v55.i32[3] = 0;
      v35.i32[3] = 0;
      v73 = v55;
      v75 = v35;
      v31.i32[3] = 0;
      v77 = v31;
    }

    else
    {
      v70 = v39;
      v72 = v33;
      v74 = v35;
      v76 = v31;
      [ADBinocularDepthWarperMesh skew:*v31.i64];
      v46 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, v43.f32[0]), v44, *v43.f32, 1), v45, v43, 2);
      v47 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, v44.f32[0]), v44, *v44.f32, 1), v45, v44, 2);
      v48 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, v45.f32[0]), v44, *v45.f32, 1), v45, v45, 2);
      v49 = vaddq_f32(*v42, vaddq_f32(v46, v46));
      v50 = vaddq_f32(v42[1], vaddq_f32(v47, v47));
      v51 = vaddq_f32(v42[2], vaddq_f32(v48, v48));
      v33 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, v72.f32[0]), v50, *v72.f32, 1), v51, v72, 2);
      v52 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, v74.f32[0]), v50, *v74.f32, 1), v51, v74, 2);
      v53 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, v76.f32[0]), v50, *v76.f32, 1), v51, v76, 2);
      v39 = v70;
      v54 = vmulq_f32(v70, v33);
      v41 = v54.f32[2] + vaddv_f32(*v54.f32);
      v73 = v33;
      v75 = v52;
      v77 = v53;
    }

    v56 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), vnegq_f32(v33)), v39, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
    v57 = vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL);
    v58 = vmulq_f32(v56, v56);
    v58.f32[0] = sqrtf(v58.f32[1] + (v58.f32[2] + v58.f32[0]));
    [ADBinocularDepthWarperMesh skew:*vdivq_f32(v57, vdupq_lane_s32(*v58.f32, 0)).i64, *&v58];
    v60 = vmulq_n_f32(v59, v71);
    v62 = vmulq_n_f32(v61, v71);
    v64 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, v59.f32[0]), v63, *v59.f32, 1), v61, v59, 2);
    v65 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, v63.f32[0]), v63, *v63.f32, 1), v61, v63, 2);
    v66 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, v61.f32[0]), v63, *v61.f32, 1), v61, v61, 2);
    v67 = vaddq_f32(*v42, vaddq_f32(v60, vmulq_n_f32(v64, 1.0 - v41)));
    v68 = vaddq_f32(v42[1], vaddq_f32(vmulq_n_f32(v63, v71), vmulq_n_f32(v65, 1.0 - v41)));
    v69 = vaddq_f32(v42[2], vaddq_f32(v62, vmulq_n_f32(v66, 1.0 - v41)));
    v26 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v73.f32[0]), v68, *v73.f32, 1), v69, v73, 2);
    v27 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v75.f32[0]), v68, *v75.f32, 1), v69, v75, 2);
    v14 = v78;
    v30 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v77.f32[0]), v68, *v77.f32, 1), v69, v77, 2);
    v15 = v79;
  }

  *(transform + 2) = v26.i32[2];
  *transform = v26.i64[0];
  *(transform + 6) = v27.i32[2];
  *(transform + 2) = v27.i64[0];
  *(transform + 10) = v30.i32[2];
  *(transform + 14) = v15.i32[2];
  *(transform + 4) = v30.i64[0];
  *(transform + 6) = v15.i64[0];
  *platformTransform = v26.i64[0];
  *(platformTransform + 2) = v26.i32[2];
  *(platformTransform + 2) = v27.i64[0];
  *(platformTransform + 6) = v27.i32[2];
  *(platformTransform + 4) = v30.i64[0];
  *(platformTransform + 10) = v30.i32[2];
  *(platformTransform + 6) = v14.i64[0];
  *(platformTransform + 14) = v14.i32[2];
}

+ (double)skew:(__n128)skew
{
  LODWORD(v1) = 0;
  HIDWORD(v1) = skew.n128_u32[2];
  return v1;
}

@end