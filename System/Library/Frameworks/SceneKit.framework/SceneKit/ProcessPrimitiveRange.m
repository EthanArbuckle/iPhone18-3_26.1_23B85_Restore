@interface ProcessPrimitiveRange
@end

@implementation ProcessPrimitiveRange

void ____ProcessPrimitiveRange_Generic_block_invoke(float32x4_t *a1, unsigned int a2, uint64_t a3, int a4, _BYTE *a5, int32x4_t a6, float32x4_t a7, float a8)
{
  v12 = 0;
  v13 = (a4 - 2);
  v14 = a3 + 4;
  while (v13 != v12)
  {
    v15 = (a1[6].i8[12] ? a3 : v14);
    v16 = (a1[6].i8[12] ? v14 : a3);
    v17 = *v16;
    v18 = *v15;
    v19 = *(a3 + 4 * (v12 + 2));
    if (a1[6].i8[13] == 1)
    {
      v20 = a1[5].i64[1];
      v21 = a1[6].i32[2];
      v22 = v20 + (v21 * v17);
      v23.i64[0] = *v22;
      v23.i64[1] = *(v22 + 8);
      v24 = v20 + (v21 * v18);
      v25.i64[0] = *v24;
      v25.i64[1] = *(v24 + 8);
      v26 = v20 + (v21 * v19);
      v27.i64[0] = *v26;
      v27.i64[1] = *(v26 + 8);
    }

    else
    {
      *v28.i64 = C3DConvertFloatingTypeToFloat4(a1[6].u8[14], (a1[5].i64[1] + (a1[6].i32[2] * v17)), a6, a7.f32[0], a8);
      v56 = v28;
      *v31.i64 = C3DConvertFloatingTypeToFloat4(a1[6].u8[14], (a1[5].i64[1] + (a1[6].i32[2] * v18)), v28, v29, v30);
      v54 = v31;
      *v34.i64 = C3DConvertFloatingTypeToFloat4(a1[6].u8[14], (a1[5].i64[1] + (a1[6].i32[2] * v19)), v31, v32, v33);
      v25 = v54;
      v23 = v56;
      v27 = v34;
    }

    v35 = vsubq_f32(v25, v23);
    v36 = vsubq_f32(v27, v23);
    v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), vnegq_f32(v35)), v36, vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL));
    v38 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
    v39 = vmulq_f32(v37, v37);
    *&v40 = v39.f32[1] + (v39.f32[2] + v39.f32[0]);
    *v39.f32 = vrsqrte_f32(v40);
    v42 = vmulq_n_f32(v38, vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32))).f32[0]);
    v41 = vmulq_f32(v23, v42);
    v42.f32[3] = -(v41.f32[2] + vaddv_f32(*v41.f32));
    v43 = a1[3];
    v44 = vmulq_f32(v42, v43);
    v45 = vaddv_f32(vadd_f32(*v44.i8, *&vextq_s8(v44, v44, 8uLL)));
    if (a1[6].i8[15] == 1)
    {
      if (v45 >= 0.0)
      {
        return;
      }
    }

    else if (v45 == 0.0)
    {
      return;
    }

    v46 = a1[2];
    v47 = vmulq_f32(v42, v46);
    v48 = -vaddv_f32(vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL))) / v45;
    if (v48 < 0.0 || v48 > a1[4].f32[3])
    {
      break;
    }

    v53 = v48;
    v55 = vmlaq_n_f32(v46, v43, v48);
    v57 = v42;
    *v50.i64 = scn_triangle_barycentric_coordinates(v23, v25, v27, v55);
    v51.i64[0] = 0xBF000000BF000000;
    v51.i64[1] = 0xBF000000BF000000;
    v52 = vabsq_f32(vaddq_f32(v50, v51));
    a7.i64[0] = 0x3F0000003F000000;
    a7.i64[1] = 0x3F0000003F000000;
    a6 = vcgeq_f32(a7, v52);
    a6.i32[3] = a6.i32[2];
    a6.i32[0] = vminvq_u32(a6);
    v14 += 4;
    ++v12;
    if (a6.i32[0] < 0)
    {
      __AddLocalResult(a1[6].i64[0], a2, 0, v12, v12 + 1, v53, v55, v57);
      if ((*(a1[6].i64[0] + 8) & 0x80) != 0)
      {
        *a5 = 1;
        *(*(a1[5].i64[0] + 8) + 24) = 1;
      }

      return;
    }
  }
}

void ____ProcessPrimitiveRange_Mask_block_invoke(float32x4_t *a1, unsigned int a2, uint64_t a3, int a4, _BYTE *a5, int32x4_t a6, float32x4_t a7, float a8)
{
  v8 = (a4 - 2);
  if (a4 != 2)
  {
    v13 = a3 + 4;
    v14 = 2;
    do
    {
      v15 = (a1[6].i8[12] ? a3 : v13);
      v16 = (a1[6].i8[12] ? v13 : a3);
      v17 = *v16;
      v18 = *v15;
      v19 = *(a3 + 4 * v14);
      if (((*(*(a1[5].i64[1] + 320) + v18) & *(*(a1[5].i64[1] + 320) + v17)) & *(*(a1[5].i64[1] + 320) + v19)) != 0)
      {
        break;
      }

      if (a1[6].i8[13] == 1)
      {
        v20 = a1[6].i64[0];
        v21 = a1[6].i32[2];
        v22 = v20 + (v21 * v17);
        v23.i64[0] = *v22;
        v23.i64[1] = *(v22 + 8);
        v24 = v20 + (v21 * v18);
        v25.i64[0] = *v24;
        v25.i64[1] = *(v24 + 8);
        v26 = v20 + (v21 * v19);
        v27.i64[0] = *v26;
        v27.i64[1] = *(v26 + 8);
      }

      else
      {
        *v28.i64 = C3DConvertFloatingTypeToFloat4(a1[6].u8[14], (a1[6].i64[0] + (a1[6].i32[2] * v17)), a6, a7.f32[0], a8);
        v56 = v28;
        *v31.i64 = C3DConvertFloatingTypeToFloat4(a1[6].u8[14], (a1[6].i64[0] + (a1[6].i32[2] * v18)), v28, v29, v30);
        v54 = v31;
        *v34.i64 = C3DConvertFloatingTypeToFloat4(a1[6].u8[14], (a1[6].i64[0] + (a1[6].i32[2] * v19)), v31, v32, v33);
        v25 = v54;
        v23 = v56;
        v27 = v34;
      }

      v35 = vsubq_f32(v25, v23);
      v36 = vsubq_f32(v27, v23);
      v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), vnegq_f32(v35)), v36, vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL));
      v38 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
      v39 = vmulq_f32(v37, v37);
      *&v40 = v39.f32[1] + (v39.f32[2] + v39.f32[0]);
      *v39.f32 = vrsqrte_f32(v40);
      v42 = vmulq_n_f32(v38, vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32))).f32[0]);
      v41 = vmulq_f32(v23, v42);
      v42.f32[3] = -(v41.f32[2] + vaddv_f32(*v41.f32));
      v43 = a1[3];
      v44 = vmulq_f32(v42, v43);
      v45 = vaddv_f32(vadd_f32(*v44.i8, *&vextq_s8(v44, v44, 8uLL)));
      if (a1[6].i8[15] == 1)
      {
        if (v45 >= 0.0)
        {
          return;
        }
      }

      else if (v45 == 0.0)
      {
        return;
      }

      v46 = a1[2];
      v47 = vmulq_f32(v42, v46);
      v48 = -vaddv_f32(vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL))) / v45;
      if (v48 < 0.0 || v48 > a1[4].f32[3])
      {
        break;
      }

      v53 = v48;
      v55 = vmlaq_n_f32(v46, v43, v48);
      v57 = v42;
      *v50.i64 = scn_triangle_barycentric_coordinates(v23, v25, v27, v55);
      v51.i64[0] = 0xBF000000BF000000;
      v51.i64[1] = 0xBF000000BF000000;
      v52 = vabsq_f32(vaddq_f32(v50, v51));
      a7.i64[0] = 0x3F0000003F000000;
      a7.i64[1] = 0x3F0000003F000000;
      a6 = vcgeq_f32(a7, v52);
      a6.i32[3] = a6.i32[2];
      a6.i32[0] = vminvq_u32(a6);
      if (a6.i32[0] < 0)
      {
        __AddLocalResult(a1[5].i64[1], a2, 0, v14 - 1, v14, v53, v55, v57);
        if ((*(a1[5].i64[1] + 8) & 0x80) != 0)
        {
          *a5 = 1;
          *(*(a1[5].i64[0] + 8) + 24) = 1;
          return;
        }
      }

      ++v14;
      v13 += 4;
      --v8;
    }

    while (v8);
  }
}

@end