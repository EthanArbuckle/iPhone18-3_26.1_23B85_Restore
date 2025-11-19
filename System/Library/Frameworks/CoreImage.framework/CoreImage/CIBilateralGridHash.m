@interface CIBilateralGridHash
- (CIBilateralGridHash)initWithWidth:(int)a3 height:(int)a4 maxHashTableSize:(unint64_t)a5;
- (const)blur_indices:(int)a3 n_blur_indices:(int *)a4;
- (int)_addHashKeyAtX:(int)a3 Y:(int)a4 key:(unint64_t)a5 isKeyExist:(BOOL *)a6;
- (int)_computeBilateralSpaceYCC444:(__IOSurface *)a3 region:(CGRect)a4 cropRect:(CGRect)a5 sigma_s:(int)a6 sigma_r_luma:(int)a7 sigma_r_chroma:(int)a8;
- (int)_createWithSurface:(__IOSurface *)a3 region:(CGRect)a4 cropRect:(CGRect)a5 sigma_s:(int)a6 sigma_r_luma:(int)a7 sigma_r_chroma:(int)a8;
- (int)createWithSurface:(__IOSurface *)a3 region:(CGRect)a4 cropRect:(CGRect)a5 sigma_s:(int)a6 sigma_r_luma:(int)a7 sigma_r_chroma:(int)a8;
- (void)_computeBlurIndices;
- (void)_computeCoordIndices;
- (void)_computeInterpIndices;
- (void)blur:(const float *)a3 pout:(float *)a4;
- (void)blur_n:(float *)a3;
- (void)blur_ones:(float *)a3;
- (void)clear;
- (void)dealloc;
- (void)normalize:(const float *)a3 pout:(float *)a4;
- (void)normalize_blur:(const float *)a3 pout:(float *)a4;
- (void)slice:(const float *)a3 outPixelBuffer:(__CVBuffer *)a4;
- (void)slice_trilinear:(__IOSurface *)a3 pin:(const float *)a4 pout:(__CVBuffer *)a5;
- (void)splat:(__CVBuffer *)a3 pout:(float *)a4;
- (void)splat_ones:(float *)a3;
- (void)splat_w_mul_x:(__CVBuffer *)a3 inPixelBuffer:(__CVBuffer *)a4 pout:(float *)a5;
@end

@implementation CIBilateralGridHash

- (CIBilateralGridHash)initWithWidth:(int)a3 height:(int)a4 maxHashTableSize:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = CIBilateralGridHash;
  v8 = [(CIBilateralGridHash *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_n_dims = 0;
    v8->_width = a3;
    v8->_height = a4;
    v8->_sigma_s = 0;
    *&v8->_sigma_r_luma = 0;
    v8->_max_hash_table_size = a5;
    v8->_hash_table_size = 0;
    v10 = 4 * a4 * a3;
    v8->_hash_matrix_data = malloc_type_malloc(v10, 0x100004052888210uLL);
    v9->_hash_table = malloc_type_malloc(24 * a5, 0x1000040504FFAC1uLL);
    v9->_blur_indices = malloc_type_malloc(40 * a5, 0x100004052888210uLL);
    v9->_coord_indices = malloc_type_malloc(4 * a5 + 4, 0x100004052888210uLL);
    v9->_coord_table = malloc_type_malloc(v10, 0x100004052888210uLL);
    v9->_coord_indices_off = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
    v9->_interp_indices = malloc_type_malloc(4 * a5 + 4, 0x100004052888210uLL);
    v9->_interp_table = malloc_type_malloc(20 * a5, 0x100004052888210uLL);
    v9->_interp_pad = malloc_type_malloc(5 * a5, 0x100004077774924uLL);
    v9->_hash_map = BGHashMapCreate(a5);
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

- (int)_createWithSurface:(__IOSurface *)a3 region:(CGRect)a4 cropRect:(CGRect)a5 sigma_s:(int)a6 sigma_r_luma:(int)a7 sigma_r_chroma:(int)a8
{
  v8 = *&a8;
  v9 = *&a7;
  v10 = *&a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a4.size.height;
  v16 = a4.size.width;
  v17 = a4.origin.y;
  v18 = a4.origin.x;
  [(CIBilateralGridHash *)self clear];
  if ([(CIBilateralGridHash *)self _computeBilateralSpaceYCC444:a3 region:v10 cropRect:v9 sigma_s:v8 sigma_r_luma:v18 sigma_r_chroma:v17, v16, v15, x, y, width, height])
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

- (int)createWithSurface:(__IOSurface *)a3 region:(CGRect)a4 cropRect:(CGRect)a5 sigma_s:(int)a6 sigma_r_luma:(int)a7 sigma_r_chroma:(int)a8
{
  v8 = *&a7;
  v9 = *&a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a4.size.height;
  v15 = a4.size.width;
  v16 = a4.origin.y;
  v17 = a4.origin.x;
  v24 = *MEMORY[0x1E69E9840];
  result = [CIBilateralGridHash _createWithSurface:"_createWithSurface:region:cropRect:sigma_s:sigma_r_luma:sigma_r_chroma:" region:a3 cropRect:*&a6 sigma_s:*&a7 sigma_r_luma:*&a8 sigma_r_chroma:?];
  if (result)
  {
    v21 = ci_logger_performance();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 136446210;
      v23 = "[CIBilateralGridHash createWithSurface:region:cropRect:sigma_s:sigma_r_luma:sigma_r_chroma:]";
      _os_log_impl(&dword_19CC36000, v21, OS_LOG_TYPE_INFO, "%{public}s Using 3D bilateral grid hash instead of 5D.", &v22, 0xCu);
    }

    return [(CIBilateralGridHash *)self _createWithSurface:a3 region:v9 cropRect:v8 sigma_s:255 sigma_r_luma:v17 sigma_r_chroma:v16, v15, v14, x, y, width, height];
  }

  return result;
}

- (void)splat:(__CVBuffer *)a3 pout:(float *)a4
{
  v7 = [(CIBilateralGridHash *)self countVertices];
  v8 = [(CIBilateralGridHash *)self width];
  v9 = [(CIBilateralGridHash *)self height];
  CVPixelBufferLockBaseAddress(a3, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
  bzero(a4, 4 * v7);
  if (v9 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 4 * v8;
    do
    {
      if (v8 >= 1)
      {
        v15 = 0;
        v16 = self->_hash_matrix_data + v12;
        do
        {
          a4[*&v16[v15]] = *&BaseAddressOfPlane[v15] + a4[*&v16[v15]];
          v15 += 4;
        }

        while (v14 != v15);
      }

      BaseAddressOfPlane += BytesPerRowOfPlane;
      ++v13;
      v12 += v14;
    }

    while (v13 != v9);
  }

  CVPixelBufferUnlockBaseAddress(a3, 0);
}

- (void)splat_w_mul_x:(__CVBuffer *)a3 inPixelBuffer:(__CVBuffer *)a4 pout:(float *)a5
{
  v20 = [(CIBilateralGridHash *)self countVertices];
  v9 = [(CIBilateralGridHash *)self width];
  v10 = [(CIBilateralGridHash *)self height];
  CVPixelBufferLockBaseAddress(a3, 0);
  CVPixelBufferLockBaseAddress(a4, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  v12 = CVPixelBufferGetBytesPerRowOfPlane(a4, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
  v14 = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
  bzero(a5, 4 * v20);
  if (v10 >= 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 4 * v9;
    do
    {
      if (v9 >= 1)
      {
        v18 = 0;
        v19 = self->_hash_matrix_data + v15;
        do
        {
          a5[*&v19[v18]] = a5[*&v19[v18]] + (*&BaseAddressOfPlane[v18] * *&v14[v18]);
          v18 += 4;
        }

        while (v17 != v18);
      }

      BaseAddressOfPlane += BytesPerRowOfPlane;
      v14 += v12;
      ++v16;
      v15 += v17;
    }

    while (v16 != v10);
  }

  CVPixelBufferUnlockBaseAddress(a3, 0);

  CVPixelBufferUnlockBaseAddress(a4, 0);
}

- (void)slice:(const float *)a3 outPixelBuffer:(__CVBuffer *)a4
{
  v7 = [(CIBilateralGridHash *)self width];
  v8 = [(CIBilateralGridHash *)self height];
  CVPixelBufferLockBaseAddress(a4, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a4, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
  if (v8 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 4 * v7;
    do
    {
      if (v7 >= 1)
      {
        v14 = 0;
        v15 = self->_hash_matrix_data + v11;
        do
        {
          *&BaseAddressOfPlane[v14] = a3[*&v15[v14]];
          v14 += 4;
        }

        while (v13 != v14);
      }

      BaseAddressOfPlane += BytesPerRowOfPlane;
      ++v12;
      v11 += v13;
    }

    while (v12 != v8);
  }

  CVPixelBufferUnlockBaseAddress(a4, 0);
}

- (void)slice_trilinear:(__IOSurface *)a3 pin:(const float *)a4 pout:(__CVBuffer *)a5
{
  v9 = [(CIBilateralGridHash *)self width];
  v10 = [(CIBilateralGridHash *)self height];
  seed = 0;
  IOSurfaceLock(a3, 1u, &seed);
  CVPixelBufferLockBaseAddress(a5, 0);
  BytesPerRow = IOSurfaceGetBytesPerRow(a3);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a5, 0);
  BaseAddress = IOSurfaceGetBaseAddress(a3);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a5, 0);
  if (v10 >= 1)
  {
    v16 = 0;
    __asm { FMOV            V1.2S, #1.0 }

    do
    {
      if (v9 >= 1)
      {
        v22 = 0;
        v23 = vcvt_f32_s32(*&self->_sigma_s);
        v24 = (v16 / v23.f32[0]) - (v16 / v23.f32[0]);
        interp_indices = self->_interp_indices;
        v26 = &self->_hash_matrix_data[v16 * v9];
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
          v15 = a4[v28] * v34;
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
              v15 = v15 + (v45 * a4[v38]);
              v34 = v34 + v45;
              --v37;
            }

            while (v37);
          }

          BaseAddressOfPlane[v22++] = v15 / v34;
        }

        while (v22 != v9);
      }

      BaseAddress += BytesPerRow;
      BaseAddressOfPlane = (BaseAddressOfPlane + BytesPerRowOfPlane);
      ++v16;
    }

    while (v16 != v10);
  }

  IOSurfaceUnlock(a3, 1u, &seed);
  CVPixelBufferUnlockBaseAddress(a5, 0);
}

- (void)blur:(const float *)a3 pout:(float *)a4
{
  v7 = [(CIBilateralGridHash *)self countDims];
  v8 = [(CIBilateralGridHash *)self countVertices];
  if (v8 >= 1)
  {
    v9 = v8;
    v10 = a3;
    v11 = a4;
    do
    {
      v12 = *v10++;
      *v11++ = v12 * (2 * v7);
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
        v16 = a4[v9];
        v17 = &self->_blur_indices[var4];
        v18 = v15 - var4;
        do
        {
          v19 = *v17++;
          v16 = a3[v19] + v16;
          a4[v9] = v16;
          --v18;
        }

        while (v18);
      }

      ++v9;
    }

    while (v9 != v8);
  }
}

- (void)normalize:(const float *)a3 pout:(float *)a4
{
  v7 = [(CIBilateralGridHash *)self countVertices];
  if (v7 >= 1)
  {
    v8 = v7;
    p_var1 = &self->_hash_table->var1;
    do
    {
      v10 = *a3++;
      v11 = v10;
      v12 = *p_var1;
      p_var1 += 6;
      *a4++ = v11 / v12;
      --v8;
    }

    while (v8);
  }
}

- (void)normalize_blur:(const float *)a3 pout:(float *)a4
{
  v7 = [(CIBilateralGridHash *)self countVertices];
  if (v7 >= 1)
  {
    v8 = v7;
    p_var2 = &self->_hash_table->var2;
    do
    {
      v10 = *a3++;
      v11 = v10;
      v12 = *p_var2;
      p_var2 += 6;
      *a4++ = v11 / v12;
      --v8;
    }

    while (v8);
  }
}

- (void)splat_ones:(float *)a3
{
  v5 = [(CIBilateralGridHash *)self countVertices];
  if (v5 >= 1)
  {
    v6 = v5;
    p_var1 = &self->_hash_table->var1;
    do
    {
      v8 = *p_var1;
      p_var1 += 6;
      *a3++ = v8;
      --v6;
    }

    while (v6);
  }
}

- (void)blur_ones:(float *)a3
{
  v5 = [(CIBilateralGridHash *)self countVertices];
  if (v5 >= 1)
  {
    v6 = v5;
    p_var2 = &self->_hash_table->var2;
    do
    {
      v8 = *p_var2;
      p_var2 += 6;
      *a3++ = v8;
      --v6;
    }

    while (v6);
  }
}

- (void)blur_n:(float *)a3
{
  v5 = [(CIBilateralGridHash *)self countVertices];
  if (v5 >= 1)
  {
    v6 = v5;
    p_var3 = &self->_hash_table->var3;
    do
    {
      v8 = *p_var3;
      p_var3 += 6;
      *a3++ = v8;
      --v6;
    }

    while (v6);
  }
}

- (const)blur_indices:(int)a3 n_blur_indices:(int *)a4
{
  hash_table = self->_hash_table;
  if (a3 < 1)
  {
    var4 = 0;
  }

  else
  {
    var4 = hash_table[a3 - 1].var4;
  }

  *a4 = hash_table[a3].var4 - var4;
  return &self->_blur_indices[var4];
}

- (int)_computeBilateralSpaceYCC444:(__IOSurface *)a3 region:(CGRect)a4 cropRect:(CGRect)a5 sigma_s:(int)a6 sigma_r_luma:(int)a7 sigma_r_chroma:(int)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a4.size.height;
  v16 = a4.size.width;
  v17 = a4.origin.x;
  if (IOSurfaceGetPixelFormat(a3) != 1111970369)
  {
    [CIBilateralGridHash _computeBilateralSpaceYCC444:region:cropRect:sigma_s:sigma_r_luma:sigma_r_chroma:];
  }

  seed = 0;
  if (IOSurfaceLock(a3, 1u, &seed))
  {
    return 2;
  }

  BaseAddress = IOSurfaceGetBaseAddress(a3);
  buffer = a3;
  if (BaseAddress)
  {
    v22 = BaseAddress;
    v23 = IOSurfaceGetWidth(a3);
    v24 = IOSurfaceGetHeight(a3);
    BytesPerRow = IOSurfaceGetBytesPerRow(a3);
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

    v61 = a7;
    if (v24 < height)
    {
      [CIBilateralGridHash _computeBilateralSpaceYCC444:region:cropRect:sigma_s:sigma_r_luma:sigma_r_chroma:];
    }

    v27 = BytesPerRow;
    v57 = height;
    v28 = 0;
    if (a8)
    {
      v29 = vcnt_s8(a8);
      v29.i16[0] = vaddlv_u8(v29);
      if (v29.u32[0] <= 1uLL)
      {
        v28 = log2(a8);
      }
    }

    v30 = 0;
    v31 = a6;
    if (a6)
    {
      v32 = vcnt_s8(a6);
      v32.i16[0] = vaddlv_u8(v32);
      if (v32.u32[0] <= 1uLL)
      {
        v30 = log2(a6);
      }
    }

    v33 = 0;
    v34 = x - v17;
    v35 = y - v17;
    if (v61)
    {
      v36 = vcnt_s8(v61);
      v36.i16[0] = vaddlv_u8(v36);
      if (v36.u32[0] <= 1uLL)
      {
        v33 = log2(v61);
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
    self->_sigma_s = a6;
    self->_sigma_r_luma = v61;
    self->_sigma_r_chroma = a8;
    if (a8 == 255)
    {
      v42 = 3;
    }

    else
    {
      v42 = 5;
    }

    self->_n_dims = v42;
    v58 = v27;
    if (a8 != 255 || (v41 & 1) != 0)
    {
      if (v41)
      {
        v49 = 0;
        if (a8 == 255)
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
          v63[0] = v52 / v31;
          v63[1] = v49 / v31;
          v63[2] = v51[1] / v61;
          v63[3] = *v51 / a8;
          v63[4] = *(v51 - 1) / a8;
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
  v3 = [(CIBilateralGridHash *)self countDims];
  v4 = [(CIBilateralGridHash *)self countVertices];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v17 = v4;
    do
    {
      v19 = v5;
      v7 = &self->_hash_table[v5];
      v8 = 2 * v3 * v7->var1;
      v18 = v7;
      if (v3 < 1)
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

        while (v9 != v3);
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
  v3 = [(CIBilateralGridHash *)self width];
  v4 = [(CIBilateralGridHash *)self height];
  v5 = [(CIBilateralGridHash *)self countVertices];
  bzero(self->_coord_indices_off, 4 * v5);
  if (v5 <= 0)
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

    while (v5 != v6);
  }

  coord_indices[v5] = v7;
  if (v4 >= 1)
  {
    v11 = 0;
    for (i = 0; i != v4; ++i)
    {
      if (v3 >= 1)
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

        while (v3 != v13);
      }

      v11 += v3;
    }
  }
}

- (void)_computeInterpIndices
{
  v3 = [(CIBilateralGridHash *)self countVertices];
  if (v3 < 1)
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

    while (v4 != v3);
  }

  self->_interp_indices[v3] = v5;
}

- (int)_addHashKeyAtX:(int)a3 Y:(int)a4 key:(unint64_t)a5 isKeyExist:(BOOL *)a6
{
  v18 = 0;
  if ([(CIBilateralGridHash *)self _hashMapFindKey:a5 to:&v18])
  {
    v11 = v18;
    hash_table = self->_hash_table;
    self->_hash_matrix_data[a3 + self->_width * a4] = v18;
    ++hash_table[v11].var1;
    if (a6)
    {
      v13 = 1;
LABEL_6:
      result = 0;
      *a6 = v13;
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
    v16->var0.var0 = a5;
    *&v16->var1 = xmmword_19CF22D70;
    self->_hash_matrix_data[a3 + self->_width * a4] = hash_table_size;
    [(CIBilateralGridHash *)self _hashMapAddKey:a5 andValue:?];
    v13 = 0;
    if (a6)
    {
      goto LABEL_6;
    }

    return 0;
  }

  return 4;
}

@end