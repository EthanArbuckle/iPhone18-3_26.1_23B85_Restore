@interface CPUFaceMask
- (CPUFaceMask)init;
- (int)clearOutputMask:(char *)mask WithBytesPerRow:(unint64_t)row OutputRegion:(CGRect)region;
- (int)drawEyeMaskUsingQuads:(MetalFaceMaskEyeQuads_t *)quads OutputMask:(char *)mask OutputBytesPerRow:(unint64_t)row OutputRegion:(CGRect)region;
- (int)trainSkinMaskUsingInputImage:(const char *)image InputBytesPerRow:(unint64_t)row InputRegion:(CGRect)region QuadRegion:(CGPoint)quadRegion[4];
- (uint64_t)findSkinMaskUsingInputImage:(float64_t)image InputBytesPerRow:(float64x2_t)row InputRegion:(float64_t)region OutputMask:(float64_t)mask OutputBytesPerRow:(float64_t)perRow OutputRegion:(float64_t)outputRegion FaceBounds:(float64_t)bounds SeedPoints:(uint64_t)self0 NumberOfSeedPoints:(uint64_t)self1 FillValue:(unint64_t)self2;
- (uint64_t)findToothMaskUsingInputImage:(float64x2_t)image InputBytesPerRow:(float64_t)row InputRegion:(float64_t)region OutputMask:(float64_t)mask OutputBytesPerRow:(float64_t)perRow OutputRegion:(float64_t)outputRegion TeethBounds:(uint64_t)bounds SeedPoints:(uint64_t)self0 NumberOfSeedPoints:(uint64_t)self1 FillValue:(unint64_t)self2;
@end

@implementation CPUFaceMask

- (CPUFaceMask)init
{
  v3.receiver = self;
  v3.super_class = CPUFaceMask;
  result = [(CPUFaceMask *)&v3 init];
  if (result)
  {
    *&result->_lumaDilateRadius = xmmword_54B20;
  }

  return result;
}

- (int)clearOutputMask:(char *)mask WithBytesPerRow:(unint64_t)row OutputRegion:(CGRect)region
{
  if (!mask)
  {
    sub_4AB58();
  }

  y = region.origin.y;
  *v6.f32 = vrndm_f32(vcvt_f32_f64(region.origin));
  height = region.size.height;
  v8 = vaddq_f64(region.origin, region.size);
  __asm { FMOV            V2.2D, #-1.0 }

  *&v6.u32[2] = vrndp_f32(vcvt_f32_f64(vaddq_f64(v8, _Q2)));
  v14 = vcvtq_s32_f32(v6);
  sub_2C4B4(mask, row, v14, v14);
  return 0;
}

- (int)trainSkinMaskUsingInputImage:(const char *)image InputBytesPerRow:(unint64_t)row InputRegion:(CGRect)region QuadRegion:(CGPoint)quadRegion[4]
{
  if (!image)
  {
    sub_4AB84();
  }

  v8 = &self->_tempColorCube.data[32760];
  v9 = vaddvq_s32(*&self->_lumaDilateRadius);
  if (v9)
  {
    p_colorCube = &self->_colorCube;
  }

  else
  {
    p_colorCube = &self->_tempColorCube;
  }

  v11 = vmovn_s64(vcvtq_s64_f64(*quadRegion));
  v12 = vmovn_s64(vcvtq_s64_f64(quadRegion[1]));
  v13 = vmovn_s64(vcvtq_s64_f64(quadRegion[2]));
  v14 = vmovn_s64(vcvtq_s64_f64(quadRegion[3]));
  *v15.i8 = vmin_s32(vmin_s32(v11, v12), vmin_s32(v13, v14));
  v15.u64[1] = vmax_s32(vmax_s32(v11, v12), vmax_s32(v13, v14));
  if (v9)
  {
    p_tempColorCube = &self->_tempColorCube;
  }

  else
  {
    p_tempColorCube = &self->_colorCube;
  }

  y = region.origin.y;
  height = region.size.height;
  *v19.f32 = vrndm_f32(vcvt_f32_f64(region.origin));
  v20 = vaddq_f64(region.origin, region.size);
  __asm { FMOV            V2.2D, #-1.0 }

  *&v19.u32[2] = vrndp_f32(vcvt_f32_f64(vaddq_f64(v20, _Q2)));
  v58 = vcvtq_s32_f32(v19);
  v59 = v15;
  v62 = 0uLL;
  v63 = 0;
  sub_2C578(&v62);
  sub_2C590(&v62, image, row, v59, v58, v11, v12, v13, v14);
  v60 = v62;
  v61 = v63;
  sub_2C85C(&v60, v8 + 1, v62, v26, v27);
  sub_2C8F4(image, row, p_tempColorCube, v59, v58, v8[1], v8[2], v11, v12, v13, v14);
  if (v8[3].i32[0] < 1)
  {
    v37 = p_colorCube;
  }

  else
  {
    v36 = 0;
    do
    {
      v37 = p_tempColorCube;
      sub_2CB74(p_tempColorCube, p_colorCube, v28, v29, v30, v31, v32.n128_f64[0], v33.n128_f64[0], v34);
      ++v36;
      p_tempColorCube = p_colorCube;
      p_colorCube = v37;
    }

    while (v36 < v8[3].i32[0]);
  }

  v38 = v8[3].i32[2];
  v39 = v8[3].i32[3];
  _VF = __OFSUB__(v38, v39);
  v41 = v38 - v39;
  v40 = (v41 < 0) ^ _VF | (v41 == 0);
  v42 = v41 + 1;
  *&v28 = v42;
  LODWORD(v29) = 1.0;
  if (v40)
  {
    v43 = 1.0;
  }

  else
  {
    v43 = v42;
  }

  if (v38 < 1)
  {
    v45 = v37;
  }

  else
  {
    v44 = 0;
    do
    {
      v45 = p_tempColorCube;
      v46 = v8[3].i32[3];
      v47 = -1.0;
      _VF = __OFSUB__(v44, v46);
      v48 = v44 - v46;
      if (v48 < 0 == _VF)
      {
        v47 = (v48 + 1) / v43;
      }

      NSLog(@"ChromaDilation %d: minDilateLuma=%f", v44, v47);
      v51 = v8[1];
      v52 = v8[2];
      if (v44)
      {
        sub_2CF84(p_tempColorCube, v37, v51.f32[0], v52.f32[0], v47, v49, v50);
      }

      else
      {
        sub_2CD1C(p_tempColorCube, v37, v51.f32[0], v52.f32[0], v47);
      }

      v44 = (v44 + 1);
      p_tempColorCube = v37;
      v37 = v45;
    }

    while (v44 < v8[3].i32[2]);
  }

  if (v8[3].i32[1] < 1)
  {
    v54 = v45;
  }

  else
  {
    v53 = 0;
    do
    {
      v54 = p_tempColorCube;
      sub_2D104(p_tempColorCube, v45, v28, v29, v30, v31, v32.n128_f64[0], v33);
      ++v53;
      p_tempColorCube = v45;
      v45 = v54;
    }

    while (v53 < v8[3].i32[1]);
  }

  if (v8[3].i32[3] >= 1)
  {
    v55 = 0;
    do
    {
      v56 = p_tempColorCube;
      if (v55)
      {
        sub_2D3D0(p_tempColorCube, v54, v28, v29, v30, v31, v32);
      }

      else
      {
        sub_2D234(p_tempColorCube, v54, v28, v29, v30, v31, v32.n128_f64[0], v33.n128_f64[0], v34.n128_f64[0], v35);
      }

      ++v55;
      p_tempColorCube = v54;
      v54 = v56;
    }

    while (v55 < v8[3].i32[3]);
  }

  return 0;
}

- (uint64_t)findSkinMaskUsingInputImage:(float64_t)image InputBytesPerRow:(float64x2_t)row InputRegion:(float64_t)region OutputMask:(float64_t)mask OutputBytesPerRow:(float64_t)perRow OutputRegion:(float64_t)outputRegion FaceBounds:(float64_t)bounds SeedPoints:(uint64_t)self0 NumberOfSeedPoints:(uint64_t)self1 FillValue:(unint64_t)self2
{
  if (!seedPoints)
  {
    sub_4AC08();
  }

  if (!a13)
  {
    sub_4ABDC();
  }

  v20 = a15;
  if (!a15)
  {
    sub_4ABB0();
  }

  v25 = self + 4096;
  a2.f64[1] = image;
  row.f64[1] = region;
  v26 = vcvt_s32_f32(vrndm_f32(vcvt_f32_f64(a2)));
  *v27.i8 = vmax_s32(vcvt_s32_f32(vrndm_f32(vcvt_f32_f64(a17))), v26);
  *v28.i8 = v26;
  __asm { FMOV            V3.2D, #-1.0 }

  v46 = _Q3;
  v28.u64[1] = vcvt_s32_f32(vrndp_f32(vcvt_f32_f64(vaddq_f64(vaddq_f64(a2, row), _Q3))));
  v27.u64[1] = vmin_s32(vcvt_s32_f32(vrndp_f32(vcvt_f32_f64(vaddq_f64(vaddq_f64(a17, a18), _Q3)))), v28.u64[1]);
  v52 = v28;
  v53 = v27;
  v34 = vsub_s32(*(&v27 + 8), *&v27).u32[1] + 1;
  v35 = malloc_type_calloc(1uLL, 0x11FFECuLL, 0x10000404F4CB0CBuLL);
  v36 = malloc_type_calloc(v34, 2uLL, 0x1000040BDFB0063uLL);
  sub_2D4D0(v35);
  sub_2D4D8(v35, v36, &self->i64[1], seedPoints, value, v53, v52, v25[1], v25[2]);
  sub_2DDBC(v35, v36);
  if (v34 >= 2)
  {
    v37 = 1;
    v38 = 2;
    v39 = 1;
    do
    {
      value = value & 0xFFFFFFFF00000000 | v38;
      sub_2DE88(v37 | (v39 << 32), value, v35, v36);
      v37 *= 2;
      v39 = (2 * v39);
      v38 *= 2;
    }

    while (v37 < v34);
  }

  sub_2DEFC(v35);
  sub_2DF44(v35);
  sub_2DE88(v34 << 32, v34, v35, v36);
  v40 = v53;
  if (a16)
  {
    v41 = (v20 + 8);
    do
    {
      v20 = v20 & 0xFFFFFFFF00000000 | a19;
      sub_2E034(*(v41 - 1) | (*v41 << 32), v20, v35, v36, v40);
      v40 = v53;
      v41 += 2;
      --a16;
    }

    while (a16);
  }

  v42.f64[0] = mask;
  v42.f64[1] = perRow;
  *v43.f32 = vrndm_f32(vcvt_f32_f64(v42));
  v44.f64[0] = outputRegion;
  v44.f64[1] = bounds;
  *&v43.u32[2] = vrndp_f32(vcvt_f32_f64(vaddq_f64(vaddq_f64(v42, v44), v46)));
  sub_2E0D0(v35, v36, a13, a14, v40, vcvtq_s32_f32(v43));
  free(v35);
  free(v36);
  return 0;
}

- (uint64_t)findToothMaskUsingInputImage:(float64x2_t)image InputBytesPerRow:(float64_t)row InputRegion:(float64_t)region OutputMask:(float64_t)mask OutputBytesPerRow:(float64_t)perRow OutputRegion:(float64_t)outputRegion TeethBounds:(uint64_t)bounds SeedPoints:(uint64_t)self0 NumberOfSeedPoints:(uint64_t)self1 FillValue:(unint64_t)self2
{
  if (!seedPoints)
  {
    sub_4AC8C();
  }

  if (!a13)
  {
    sub_4AC60();
  }

  v20 = a15;
  if (!a15)
  {
    sub_4AC34();
  }

  self.f64[1] = a2;
  image.f64[1] = row;
  v24 = vcvt_s32_f32(vrndm_f32(vcvt_f32_f64(self)));
  *v25.i8 = vmax_s32(vcvt_s32_f32(vrndm_f32(vcvt_f32_f64(a17))), v24);
  *v26.i8 = v24;
  __asm { FMOV            V3.2D, #-1.0 }

  v44 = _Q3;
  v26.u64[1] = vcvt_s32_f32(vrndp_f32(vcvt_f32_f64(vaddq_f64(vaddq_f64(self, image), _Q3))));
  v25.u64[1] = vmin_s32(vcvt_s32_f32(vrndp_f32(vcvt_f32_f64(vaddq_f64(vaddq_f64(a17, a18), _Q3)))), v26.u64[1]);
  v50 = v26;
  v51 = v25;
  v32 = vsub_s32(*(&v25 + 8), *&v25).u32[1] + 1;
  v33 = malloc_type_calloc(1uLL, 0x11FFECuLL, 0x10000404F4CB0CBuLL);
  v34 = malloc_type_calloc(v32, 2uLL, 0x1000040BDFB0063uLL);
  sub_2D4D0(v33);
  sub_2DAE0(v33, v34, seedPoints, value, v51, v50);
  sub_2DDBC(v33, v34);
  if (v32 >= 2)
  {
    v35 = 1;
    v36 = 2;
    v37 = 1;
    do
    {
      value = value & 0xFFFFFFFF00000000 | v36;
      sub_2DE88(v35 | (v37 << 32), value, v33, v34);
      v35 *= 2;
      v37 = (2 * v37);
      v36 *= 2;
    }

    while (v35 < v32);
  }

  sub_2DEFC(v33);
  sub_2DF44(v33);
  sub_2DE88(v32 << 32, v32, v33, v34);
  v38 = v51;
  if (a16)
  {
    v39 = (v20 + 8);
    do
    {
      v20 = v20 & 0xFFFFFFFF00000000 | a19;
      sub_2E034(*(v39 - 1) | (*v39 << 32), v20, v33, v34, v38);
      v38 = v51;
      v39 += 2;
      --a16;
    }

    while (a16);
  }

  v40.f64[0] = region;
  v40.f64[1] = mask;
  *v41.f32 = vrndm_f32(vcvt_f32_f64(v40));
  v42.f64[0] = perRow;
  v42.f64[1] = outputRegion;
  *&v41.u32[2] = vrndp_f32(vcvt_f32_f64(vaddq_f64(vaddq_f64(v40, v42), v44)));
  sub_2E0D0(v33, v34, a13, a14, v38, vcvtq_s32_f32(v41));
  free(v33);
  free(v34);
  return 0;
}

- (int)drawEyeMaskUsingQuads:(MetalFaceMaskEyeQuads_t *)quads OutputMask:(char *)mask OutputBytesPerRow:(unint64_t)row OutputRegion:(CGRect)region
{
  if (!quads)
  {
    sub_4AD10();
  }

  if (!mask)
  {
    sub_4ACE4();
  }

  var0 = quads->var0;
  if (var0 > 0x10)
  {
    sub_4ACB8();
  }

  if (var0)
  {
    v7 = xmmword_54B30;
    p_var1 = &quads[3].var1;
    do
    {
      v9 = p_var1[-3];
      v10 = p_var1[-2];
      v11 = p_var1[-1];
      *v12.i8 = vmin_s32(vmin_s32(vmin_s32(vmin_s32(*v7.i8, v9), v10), v11), *p_var1);
      v12.u64[1] = vmax_s32(vmax_s32(vmax_s32(vmax_s32(*&vextq_s8(v7, v7, 8uLL), v9), v10), v11), *p_var1);
      p_var1 += 4;
      v7 = v12;
      --var0;
    }

    while (var0);
  }

  else
  {
    v12 = xmmword_54B30;
  }

  y = region.origin.y;
  v14 = &quads->var1;
  *v15.i8 = vcvt_s32_f32(vrndm_f32(vcvt_f32_f64(region.origin)));
  v16 = vld1_dup_f32(v14);
  *v17.i8 = vmax_s32(vsub_s32(*v12.i8, v16), *v15.i8);
  height = region.size.height;
  v19 = vaddq_f64(region.origin, region.size);
  __asm { FMOV            V2.2D, #-1.0 }

  v15.u64[1] = vcvt_s32_f32(vrndp_f32(vcvt_f32_f64(vaddq_f64(v19, _Q2))));
  v17.u64[1] = vmax_s32(*v17.i8, vmin_s32(vadd_s32(v16, *&vextq_s8(v12, v12, 8uLL)), v15.u64[1]));
  sub_2E210(quads, mask, row, v17, v15);
  return 0;
}

@end