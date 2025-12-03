@interface CIBilateralGridHash
- (CIBilateralGridHash)initWithWidth:(int)width height:(int)height maxHashTableSize:(unint64_t)size;
- (const)blur_indices:(int)blur_indices n_blur_indices:(int *)n_blur_indices;
- (int)_addHashKeyAtX:(int)x Y:(int)y key:(unint64_t)key isKeyExist:(BOOL *)exist;
- (int)_computeBilateralSpaceYCC444:(__IOSurface *)c444 region:(CGRect)region cropRect:(CGRect)rect sigma_s:(int)sigma_s sigma_r_luma:(int)sigma_r_luma sigma_r_chroma:(int)sigma_r_chroma;
- (int)_createWithSurface:(__IOSurface *)surface region:(CGRect)region cropRect:(CGRect)rect sigma_s:(int)sigma_s sigma_r_luma:(int)sigma_r_luma sigma_r_chroma:(int)sigma_r_chroma;
- (int)createWithSurface:(__IOSurface *)surface region:(CGRect)region cropRect:(CGRect)rect sigma_s:(int)sigma_s sigma_r_luma:(int)sigma_r_luma sigma_r_chroma:(int)sigma_r_chroma;
- (void)_computeBlurIndices;
- (void)_computeCoordIndices;
- (void)_computeInterpIndices;
- (void)blur:(const float *)blur pout:(float *)pout;
- (void)blur_n:(float *)blur_n;
- (void)blur_ones:(float *)blur_ones;
- (void)clear;
- (void)dealloc;
- (void)normalize:(const float *)normalize pout:(float *)pout;
- (void)normalize_blur:(const float *)normalize_blur pout:(float *)pout;
- (void)slice:(const float *)slice outPixelBuffer:(__CVBuffer *)buffer;
- (void)slice_trilinear:(__IOSurface *)slice_trilinear pin:(const float *)pin pout:(__CVBuffer *)pout;
- (void)splat:(__CVBuffer *)splat pout:(float *)pout;
- (void)splat_ones:(float *)splat_ones;
- (void)splat_w_mul_x:(__CVBuffer *)splat_w_mul_x inPixelBuffer:(__CVBuffer *)buffer pout:(float *)pout;
@end

@implementation CIBilateralGridHash

- (CIBilateralGridHash)initWithWidth:(int)width height:(int)height maxHashTableSize:(unint64_t)size
{
  v12.receiver = self;
  v12.super_class = CIBilateralGridHash;
  v8 = [(CIBilateralGridHash *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_n_dims = 0;
    v8->_width = width;
    v8->_height = height;
    v8->_sigma_s = 0;
    *&v8->_sigma_r_luma = 0;
    v8->_max_hash_table_size = size;
    v8->_hash_table_size = 0;
    v10 = 4 * height * width;
    v8->_hash_matrix_data = malloc_type_malloc(v10, 0x100004052888210uLL);
    v9->_hash_table = malloc_type_malloc(24 * size, 0x1000040504FFAC1uLL);
    v9->_blur_indices = malloc_type_malloc(40 * size, 0x100004052888210uLL);
    v9->_coord_indices = malloc_type_malloc(4 * size + 4, 0x100004052888210uLL);
    v9->_coord_table = malloc_type_malloc(v10, 0x100004052888210uLL);
    v9->_coord_indices_off = malloc_type_malloc(4 * size, 0x100004052888210uLL);
    v9->_interp_indices = malloc_type_malloc(4 * size + 4, 0x100004052888210uLL);
    v9->_interp_table = malloc_type_malloc(20 * size, 0x100004052888210uLL);
    v9->_interp_pad = malloc_type_malloc(5 * size, 0x100004077774924uLL);
    v9->_hash_map = BGHashMapCreate(size);
    bzero(v9->_hash_matrix_data, v10);
  }

  return v9;
}

- (void)dealloc
{
  free(self->_hash_matrix_data);
  free(self->_hash_table);
  free(self->_blur_indices);
  free(self->_coord_indices);
  free(self->_coord_table);
  free(self->_coord_indices_off);
  free(self->_interp_indices);
  free(self->_interp_table);
  free(self->_interp_pad);
  BGHashMapRelease(self->_hash_map);
  v3.receiver = self;
  v3.super_class = CIBilateralGridHash;
  [(CIBilateralGridHash *)&v3 dealloc];
}

- (void)clear
{
  *&self->_sigma_r_luma = 0;
  self->_sigma_s = 0;
  self->_hash_table_size = 0;
  BGHashClear(self->_hash_map);
}

- (int)_createWithSurface:(__IOSurface *)surface region:(CGRect)region cropRect:(CGRect)rect sigma_s:(int)sigma_s sigma_r_luma:(int)sigma_r_luma sigma_r_chroma:(int)sigma_r_chroma
{
  v8 = *&sigma_r_chroma;
  v9 = *&sigma_r_luma;
  v10 = *&sigma_s;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = region.size.height;
  v16 = region.size.width;
  v17 = region.origin.y;
  v18 = region.origin.x;
  [(CIBilateralGridHash *)self clear];
  if ([(CIBilateralGridHash *)self _computeBilateralSpaceYCC444:surface region:v10 cropRect:v9 sigma_s:v8 sigma_r_luma:v18 sigma_r_chroma:v17, v16, v15, x, y, width, height])
  {
    v21 = self->_height * self->_width;
    self->_hash_table_size = 0;
    bzero(self->_hash_matrix_data, 4 * v21);
    return 1;
  }

  else
  {
    [(CIBilateralGridHash *)self _computeBlurIndices];
    [(CIBilateralGridHash *)self _computeCoordIndices];
    [(CIBilateralGridHash *)self _computeInterpIndices];
    return 0;
  }
}

- (int)createWithSurface:(__IOSurface *)surface region:(CGRect)region cropRect:(CGRect)rect sigma_s:(int)sigma_s sigma_r_luma:(int)sigma_r_luma sigma_r_chroma:(int)sigma_r_chroma
{
  v8 = *&sigma_r_luma;
  v9 = *&sigma_s;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v14 = region.size.height;
  v15 = region.size.width;
  v16 = region.origin.y;
  v17 = region.origin.x;
  v24 = *MEMORY[0x1E69E9840];
  result = [CIBilateralGridHash _createWithSurface:"_createWithSurface:region:cropRect:sigma_s:sigma_r_luma:sigma_r_chroma:" region:surface cropRect:*&sigma_s sigma_s:*&sigma_r_luma sigma_r_luma:*&sigma_r_chroma sigma_r_chroma:?];
  if (result)
  {
    v21 = ci_logger_performance();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 136446210;
      v23 = "[CIBilateralGridHash createWithSurface:region:cropRect:sigma_s:sigma_r_luma:sigma_r_chroma:]";
      _os_log_impl(&dword_19CC36000, v21, OS_LOG_TYPE_INFO, "%{public}s Using 3D bilateral grid hash instead of 5D.", &v22, 0xCu);
    }

    return [(CIBilateralGridHash *)self _createWithSurface:surface region:v9 cropRect:v8 sigma_s:255 sigma_r_luma:v17 sigma_r_chroma:v16, v15, v14, x, y, width, height];
  }

  return result;
}

- (void)splat:(__CVBuffer *)splat pout:(float *)pout
{
  countVertices = [(CIBilateralGridHash *)self countVertices];
  width = [(CIBilateralGridHash *)self width];
  height = [(CIBilateralGridHash *)self height];
  CVPixelBufferLockBaseAddress(splat, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(splat, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(splat, 0);
  bzero(pout, 4 * countVertices);
  if (height >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 4 * width;
    do
    {
      if (width >= 1)
      {
        v15 = 0;
        v16 = self->_hash_matrix_data + v12;
        do
        {
          pout[*&v16[v15]] = *&BaseAddressOfPlane[v15] + pout[*&v16[v15]];
          v15 += 4;
        }

        while (v14 != v15);
      }

      BaseAddressOfPlane += BytesPerRowOfPlane;
      ++v13;
      v12 += v14;
    }

    while (v13 != height);
  }

  CVPixelBufferUnlockBaseAddress(splat, 0);
}

- (void)splat_w_mul_x:(__CVBuffer *)splat_w_mul_x inPixelBuffer:(__CVBuffer *)buffer pout:(float *)pout
{
  countVertices = [(CIBilateralGridHash *)self countVertices];
  width = [(CIBilateralGridHash *)self width];
  height = [(CIBilateralGridHash *)self height];
  CVPixelBufferLockBaseAddress(splat_w_mul_x, 0);
  CVPixelBufferLockBaseAddress(buffer, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(splat_w_mul_x, 0);
  v12 = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(splat_w_mul_x, 0);
  v14 = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
  bzero(pout, 4 * countVertices);
  if (height >= 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 4 * width;
    do
    {
      if (width >= 1)
      {
        v18 = 0;
        v19 = self->_hash_matrix_data + v15;
        do
        {
          pout[*&v19[v18]] = pout[*&v19[v18]] + (*&BaseAddressOfPlane[v18] * *&v14[v18]);
          v18 += 4;
        }

        while (v17 != v18);
      }

      BaseAddressOfPlane += BytesPerRowOfPlane;
      v14 += v12;
      ++v16;
      v15 += v17;
    }

    while (v16 != height);
  }

  CVPixelBufferUnlockBaseAddress(splat_w_mul_x, 0);

  CVPixelBufferUnlockBaseAddress(buffer, 0);
}

- (void)slice:(const float *)slice outPixelBuffer:(__CVBuffer *)buffer
{
  width = [(CIBilateralGridHash *)self width];
  height = [(CIBilateralGridHash *)self height];
  CVPixelBufferLockBaseAddress(buffer, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
  if (height >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 4 * width;
    do
    {
      if (width >= 1)
      {
        v14 = 0;
        v15 = self->_hash_matrix_data + v11;
        do
        {
          *&BaseAddressOfPlane[v14] = slice[*&v15[v14]];
          v14 += 4;
        }

        while (v13 != v14);
      }

      BaseAddressOfPlane += BytesPerRowOfPlane;
      ++v12;
      v11 += v13;
    }

    while (v12 != height);
  }

  CVPixelBufferUnlockBaseAddress(buffer, 0);
}

- (void)slice_trilinear:(__IOSurface *)slice_trilinear pin:(const float *)pin pout:(__CVBuffer *)pout
{
  width = [(CIBilateralGridHash *)self width];
  height = [(CIBilateralGridHash *)self height];
  seed = 0;
  IOSurfaceLock(slice_trilinear, 1u, &seed);
  CVPixelBufferLockBaseAddress(pout, 0);
  BytesPerRow = IOSurfaceGetBytesPerRow(slice_trilinear);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pout, 0);
  BaseAddress = IOSurfaceGetBaseAddress(slice_trilinear);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pout, 0);
  if (height >= 1)
  {
    v16 = 0;
    __asm { FMOV            V1.2S, #1.0 }

    do
    {
      if (width >= 1)
      {
        v22 = 0;
        v23 = vcvt_f32_s32(*&self->_sigma_s);
        v24 = (v16 / v23.f32[0]) - (v16 / v23.f32[0]);
        interp_indices = self->_interp_indices;
        v26 = &self->_hash_matrix_data[v16 * width];
        do
        {
          v27.f32[0] = v22;
          LOBYTE(v15) = BaseAddress[4 * v22 + 2];
          v28 = v26[v22];
          v29 = interp_indices[v28];
          v30 = interp_indices[(v28 + 1)];
          v27.f32[1] = LODWORD(v15);
          v31 = vdiv_f32(v27, v23);
          v32 = vsub_f32(v31, vcvt_f32_s32(vcvt_s32_f32(v31)));
          v33 = vsub_f32(_D1, v32);
          v34 = vmuls_lane_f32((1.0 - v24) * v33.f32[0], v33, 1);
          v15 = pin[v28] * v34;
          if (v29 < v30)
          {
            v35 = &self->_interp_table[v29];
            v36 = &self->_interp_pad[v29];
            v37 = v30 - v29;
            do
            {
              v39 = *v35++;
              v38 = v39;
              LOBYTE(v39) = *v36++;
              v40 = v39;
              if (v39)
              {
                v41 = v32.f32[0];
              }

              else
              {
                v41 = v33.f32[0];
              }

              if ((v40 & 2) != 0)
              {
                v42 = (v16 / v23.f32[0]) - (v16 / v23.f32[0]);
              }

              else
              {
                v42 = 1.0 - v24;
              }

              v43 = v41 * v42;
              if ((v40 & 4) != 0)
              {
                v44 = v32.f32[1];
              }

              else
              {
                v44 = v33.f32[1];
              }

              v45 = v44 * v43;
              v15 = v15 + (v45 * pin[v38]);
              v34 = v34 + v45;
              --v37;
            }

            while (v37);
          }

          BaseAddressOfPlane[v22++] = v15 / v34;
        }

        while (v22 != width);
      }

      BaseAddress += BytesPerRow;
      BaseAddressOfPlane = (BaseAddressOfPlane + BytesPerRowOfPlane);
      ++v16;
    }

    while (v16 != height);
  }

  IOSurfaceUnlock(slice_trilinear, 1u, &seed);
  CVPixelBufferUnlockBaseAddress(pout, 0);
}

- (void)blur:(const float *)blur pout:(float *)pout
{
  countDims = [(CIBilateralGridHash *)self countDims];
  countVertices = [(CIBilateralGridHash *)self countVertices];
  if (countVertices >= 1)
  {
    v9 = countVertices;
    blurCopy = blur;
    poutCopy = pout;
    do
    {
      v12 = *blurCopy++;
      *poutCopy++ = v12 * (2 * countDims);
      --v9;
    }

    while (v9);
    hash_table = self->_hash_table;
    do
    {
      if (v9)
      {
        var4 = hash_table[v9 - 1].var4;
      }

      else
      {
        var4 = 0;
      }

      v15 = hash_table[v9].var4;
      if (var4 < v15)
      {
        v16 = pout[v9];
        v17 = &self->_blur_indices[var4];
        v18 = v15 - var4;
        do
        {
          v19 = *v17++;
          v16 = blur[v19] + v16;
          pout[v9] = v16;
          --v18;
        }

        while (v18);
      }

      ++v9;
    }

    while (v9 != countVertices);
  }
}

- (void)normalize:(const float *)normalize pout:(float *)pout
{
  countVertices = [(CIBilateralGridHash *)self countVertices];
  if (countVertices >= 1)
  {
    v8 = countVertices;
    p_var1 = &self->_hash_table->var1;
    do
    {
      v10 = *normalize++;
      v11 = v10;
      v12 = *p_var1;
      p_var1 += 6;
      *pout++ = v11 / v12;
      --v8;
    }

    while (v8);
  }
}

- (void)normalize_blur:(const float *)normalize_blur pout:(float *)pout
{
  countVertices = [(CIBilateralGridHash *)self countVertices];
  if (countVertices >= 1)
  {
    v8 = countVertices;
    p_var2 = &self->_hash_table->var2;
    do
    {
      v10 = *normalize_blur++;
      v11 = v10;
      v12 = *p_var2;
      p_var2 += 6;
      *pout++ = v11 / v12;
      --v8;
    }

    while (v8);
  }
}

- (void)splat_ones:(float *)splat_ones
{
  countVertices = [(CIBilateralGridHash *)self countVertices];
  if (countVertices >= 1)
  {
    v6 = countVertices;
    p_var1 = &self->_hash_table->var1;
    do
    {
      v8 = *p_var1;
      p_var1 += 6;
      *splat_ones++ = v8;
      --v6;
    }

    while (v6);
  }
}

- (void)blur_ones:(float *)blur_ones
{
  countVertices = [(CIBilateralGridHash *)self countVertices];
  if (countVertices >= 1)
  {
    v6 = countVertices;
    p_var2 = &self->_hash_table->var2;
    do
    {
      v8 = *p_var2;
      p_var2 += 6;
      *blur_ones++ = v8;
      --v6;
    }

    while (v6);
  }
}

- (void)blur_n:(float *)blur_n
{
  countVertices = [(CIBilateralGridHash *)self countVertices];
  if (countVertices >= 1)
  {
    v6 = countVertices;
    p_var3 = &self->_hash_table->var3;
    do
    {
      v8 = *p_var3;
      p_var3 += 6;
      *blur_n++ = v8;
      --v6;
    }

    while (v6);
  }
}

- (const)blur_indices:(int)blur_indices n_blur_indices:(int *)n_blur_indices
{
  hash_table = self->_hash_table;
  if (blur_indices < 1)
  {
    var4 = 0;
  }

  else
  {
    var4 = hash_table[blur_indices - 1].var4;
  }

  *n_blur_indices = hash_table[blur_indices].var4 - var4;
  return &self->_blur_indices[var4];
}

- (int)_computeBilateralSpaceYCC444:(__IOSurface *)c444 region:(CGRect)region cropRect:(CGRect)rect sigma_s:(int)sigma_s sigma_r_luma:(int)sigma_r_luma sigma_r_chroma:(int)sigma_r_chroma
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = region.size.height;
  v16 = region.size.width;
  v17 = region.origin.x;
  if (IOSurfaceGetPixelFormat(c444) != 1111970369)
  {
    [CIBilateralGridHash _computeBilateralSpaceYCC444:region:cropRect:sigma_s:sigma_r_luma:sigma_r_chroma:];
  }

  seed = 0;
  if (IOSurfaceLock(c444, 1u, &seed))
  {
    return 2;
  }

  BaseAddress = IOSurfaceGetBaseAddress(c444);
  buffer = c444;
  if (BaseAddress)
  {
    v22 = BaseAddress;
    v23 = IOSurfaceGetWidth(c444);
    v24 = IOSurfaceGetHeight(c444);
    BytesPerRow = IOSurfaceGetBytesPerRow(c444);
    if (v16 != v23)
    {
      [CIBilateralGridHash _computeBilateralSpaceYCC444:region:cropRect:sigma_s:sigma_r_luma:sigma_r_chroma:];
    }

    if (v15 != v24)
    {
      [CIBilateralGridHash _computeBilateralSpaceYCC444:region:cropRect:sigma_s:sigma_r_luma:sigma_r_chroma:];
    }

    v26 = width;
    if (!width || !height)
    {
      [CIBilateralGridHash _computeBilateralSpaceYCC444:region:cropRect:sigma_s:sigma_r_luma:sigma_r_chroma:];
    }

    if (v23 < v26)
    {
      [CIBilateralGridHash _computeBilateralSpaceYCC444:region:cropRect:sigma_s:sigma_r_luma:sigma_r_chroma:];
    }

    sigma_r_lumaCopy = sigma_r_luma;
    if (v24 < height)
    {
      [CIBilateralGridHash _computeBilateralSpaceYCC444:region:cropRect:sigma_s:sigma_r_luma:sigma_r_chroma:];
    }

    v27 = BytesPerRow;
    v57 = height;
    v28 = 0;
    if (sigma_r_chroma)
    {
      v29 = vcnt_s8(sigma_r_chroma);
      v29.i16[0] = vaddlv_u8(v29);
      if (v29.u32[0] <= 1uLL)
      {
        v28 = log2(sigma_r_chroma);
      }
    }

    v30 = 0;
    sigma_sCopy = sigma_s;
    if (sigma_s)
    {
      v32 = vcnt_s8(sigma_s);
      v32.i16[0] = vaddlv_u8(v32);
      if (v32.u32[0] <= 1uLL)
      {
        v30 = log2(sigma_s);
      }
    }

    v33 = 0;
    v34 = x - v17;
    v35 = y - v17;
    if (sigma_r_lumaCopy)
    {
      v36 = vcnt_s8(sigma_r_lumaCopy);
      v36.i16[0] = vaddlv_u8(v36);
      if (v36.u32[0] <= 1uLL)
      {
        v33 = log2(sigma_r_lumaCopy);
      }
    }

    v37 = v34;
    v38 = v35;
    if (v28)
    {
      v39 = v30 == 0;
    }

    else
    {
      v39 = 1;
    }

    v41 = v39 || v33 == 0;
    self->_sigma_s = sigma_s;
    self->_sigma_r_luma = sigma_r_lumaCopy;
    self->_sigma_r_chroma = sigma_r_chroma;
    if (sigma_r_chroma == 255)
    {
      v42 = 3;
    }

    else
    {
      v42 = 5;
    }

    self->_n_dims = v42;
    v58 = v27;
    if (sigma_r_chroma != 255 || (v41 & 1) != 0)
    {
      if (v41)
      {
        v49 = 0;
        if (sigma_r_chroma == 255)
        {
          v50 = hash3;
        }

        else
        {
          v50 = hash5;
        }

        v51 = &v22[4 * v37 + 1 + v27 * v38];
LABEL_46:
        v52 = 0;
        v59 = v51;
        while (1)
        {
          v63[0] = v52 / sigma_sCopy;
          v63[1] = v49 / sigma_sCopy;
          v63[2] = v51[1] / sigma_r_lumaCopy;
          v63[3] = *v51 / sigma_r_chroma;
          v63[4] = *(v51 - 1) / sigma_r_chroma;
          v48 = [(CIBilateralGridHash *)self _addHashKeyAtX:v52 Y:v49 key:v50(v63) isKeyExist:0];
          if (v48)
          {
            break;
          }

          v51 += 4;
          if (v26 == ++v52)
          {
            v20 = 0;
            ++v49;
            v51 = &v59[v27];
            if (v49 != v57)
            {
              goto LABEL_46;
            }

            goto LABEL_58;
          }
        }
      }

      else
      {
        v53 = 0;
        v54 = &v22[4 * v37 + 1 + v27 * v38];
LABEL_52:
        v55 = 0;
        v62 = v54;
        while (1)
        {
          v48 = [(CIBilateralGridHash *)self _addHashKeyAtX:v55 Y:v53 key:(v55 >> v30) | (((v53 >> v30) | (v54[1] >> v33 << 8) | (*v54 >> v28 << 16) | (*(v54 - 1) >> v28 << 24)) << 8) isKeyExist:0];
          if (v48)
          {
            break;
          }

          v54 += 4;
          if (v26 == ++v55)
          {
            v20 = 0;
            ++v53;
            v54 = &v62[v58];
            if (v53 != v57)
            {
              goto LABEL_52;
            }

            goto LABEL_58;
          }
        }
      }
    }

    else
    {
      v43 = 0;
      v44 = &v22[4 * v37 + 2 + v27 * v38];
LABEL_35:
      v45 = 0;
      v46 = v44;
      while (1)
      {
        v47 = *v46;
        v46 += 4;
        v48 = [(CIBilateralGridHash *)self _addHashKeyAtX:v45 Y:v43 key:(v45 >> v30) | ((v43 >> v30) << 8) | (v47 >> v33 << 16) isKeyExist:0];
        if (v48)
        {
          break;
        }

        if (v26 == ++v45)
        {
          v20 = 0;
          ++v43;
          v44 += v58;
          if (v43 != v57)
          {
            goto LABEL_35;
          }

          goto LABEL_58;
        }
      }
    }

    v20 = v48;
  }

  else
  {
    v20 = 3;
  }

LABEL_58:
  IOSurfaceUnlock(buffer, 1u, &seed);
  return v20;
}

- (void)_computeBlurIndices
{
  countDims = [(CIBilateralGridHash *)self countDims];
  countVertices = [(CIBilateralGridHash *)self countVertices];
  if (countVertices >= 1)
  {
    v5 = 0;
    v6 = 0;
    v17 = countVertices;
    do
    {
      v19 = v5;
      v7 = &self->_hash_table[v5];
      v8 = 2 * countDims * v7->var1;
      v18 = v7;
      if (countDims < 1)
      {
        v10 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        var0 = v7->var0.var0;
        do
        {
          v12 = 0;
          v13 = 1;
          do
          {
            v14 = v13;
            v15 = hash_shift(var0, v9, _computeBlurIndices_kOffsetTable[v12]);
            if (v15 != -1)
            {
              v20 = 0;
              if ([(CIBilateralGridHash *)self _hashMapFindKey:v15 to:&v20])
              {
                v16 = v20;
                self->_blur_indices[v6] = v20;
                v8 += self->_hash_table[v16].var1;
                ++v10;
                ++v6;
              }
            }

            v13 = 0;
            v12 = 1;
          }

          while ((v14 & 1) != 0);
          ++v9;
        }

        while (v9 != countDims);
      }

      v18->var2 = v8;
      v18->var3 = v10;
      v18->var4 = v6;
      v5 = v19 + 1;
    }

    while (v19 + 1 != v17);
  }
}

- (void)_computeCoordIndices
{
  width = [(CIBilateralGridHash *)self width];
  height = [(CIBilateralGridHash *)self height];
  countVertices = [(CIBilateralGridHash *)self countVertices];
  bzero(self->_coord_indices_off, 4 * countVertices);
  if (countVertices <= 0)
  {
    v7 = 0;
    coord_indices = self->_coord_indices;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    coord_indices = self->_coord_indices;
    p_var1 = &self->_hash_table->var1;
    do
    {
      coord_indices[v6] = v7;
      v10 = *p_var1;
      p_var1 += 6;
      v7 += v10;
      ++v6;
    }

    while (countVertices != v6);
  }

  coord_indices[countVertices] = v7;
  if (height >= 1)
  {
    v11 = 0;
    for (i = 0; i != height; ++i)
    {
      if (width >= 1)
      {
        v13 = 0;
        coord_table = self->_coord_table;
        coord_indices_off = self->_coord_indices_off;
        v16 = &self->_hash_matrix_data[v11];
        do
        {
          v17 = v16[v13];
          coord_table[coord_indices_off[v17] + coord_indices[v17]] = v13 | (i << 16);
          ++coord_indices_off[v17];
          ++v13;
        }

        while (width != v13);
      }

      v11 += width;
    }
  }
}

- (void)_computeInterpIndices
{
  countVertices = [(CIBilateralGridHash *)self countVertices];
  if (countVertices < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      self->_interp_indices[v4] = v5;
      var0 = self->_hash_table[v4].var0.var0;
      v7 = 1;
      do
      {
        v8 = v7;
        v9 = hash_pad(v7);
        v11 = 0;
        if ([(CIBilateralGridHash *)self _hashMapFindKey:v9 + var0 to:&v11])
        {
          interp_pad = self->_interp_pad;
          self->_interp_table[v5] = v11;
          interp_pad[v5++] = v7;
        }

        ++v7;
      }

      while (v8 < 7);
      ++v4;
    }

    while (v4 != countVertices);
  }

  self->_interp_indices[countVertices] = v5;
}

- (int)_addHashKeyAtX:(int)x Y:(int)y key:(unint64_t)key isKeyExist:(BOOL *)exist
{
  v18 = 0;
  if ([(CIBilateralGridHash *)self _hashMapFindKey:key to:&v18])
  {
    v11 = v18;
    hash_table = self->_hash_table;
    self->_hash_matrix_data[x + self->_width * y] = v18;
    ++hash_table[v11].var1;
    if (exist)
    {
      v13 = 1;
LABEL_6:
      result = 0;
      *exist = v13;
      return result;
    }

    return 0;
  }

  hash_table_size = self->_hash_table_size;
  if (self->_max_hash_table_size > hash_table_size)
  {
    v15 = self->_hash_table;
    self->_hash_table_size = hash_table_size + 1;
    v16 = &v15[hash_table_size];
    v16->var0.var0 = key;
    *&v16->var1 = xmmword_19CF22D70;
    self->_hash_matrix_data[x + self->_width * y] = hash_table_size;
    [(CIBilateralGridHash *)self _hashMapAddKey:key andValue:?];
    v13 = 0;
    if (exist)
    {
      goto LABEL_6;
    }

    return 0;
  }

  return 4;
}

@end