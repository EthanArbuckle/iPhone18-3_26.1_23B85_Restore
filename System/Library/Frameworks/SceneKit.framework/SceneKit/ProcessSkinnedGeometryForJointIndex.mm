@interface ProcessSkinnedGeometryForJointIndex
@end

@implementation ProcessSkinnedGeometryForJointIndex

void ____ProcessSkinnedGeometryForJointIndex_block_invoke(uint64_t a1, int a2, uint8x8_t a3, uint8x8_t a4, uint8x8_t a5, uint8x8_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, int a12, _BYTE *a13)
{
  v14 = a8;
  v17 = *(a1 + 272);
  v18 = v17 == 1;
  if (v17 == 1)
  {
    v19 = a11;
  }

  else
  {
    v19 = a10;
  }

  if (v18)
  {
    v20 = a10;
  }

  else
  {
    v20 = a11;
  }

  v21 = *(a1 + 112);
  v22 = *(a1 + 134);
  a3.i32[0] = *(v21 + (v19 * v22));
  v26 = vmovl_u8(a3);
  a4.i32[0] = *(v21 + (v20 * v22));
  a5.i32[0] = *(v21 + (v22 * a12));
  v23 = vmovl_u8(a5).u64[0];
  a6.i32[0] = *(a1 + 276);
  v24 = vmovl_u8(a6).u64[0];
  *v26.f32 = vorr_s8(vceq_s16(*v26.f32, v24), vceq_s16(*&vmovl_u8(a4), v24));
  v25 = vceq_s16(v23, v24);
  *v26.f32 = vorr_s8(*v26.f32, v25);
  *v26.f32 = vuzp1_s8(*v26.f32, *v26.f32);
  v26.i8[0] = vmaxv_u8(*v26.f32);
  if (v26.i8[0] < 0)
  {
    if (*(a1 + 280) == 1)
    {
      v28 = *(a1 + 144);
      v29 = *(a1 + 166);
      v30 = v28 + (v19 * v29);
      v31.i64[0] = *v30;
      v31.i64[1] = *(v30 + 8);
      v32 = v28 + (v20 * v29);
      v33.i64[0] = *v32;
      v33.i64[1] = *(v32 + 8);
      v34 = v28 + (v29 * a12);
      v35.i64[0] = *v34;
      v35.i64[1] = *(v34 + 8);
    }

    else
    {
      *v36.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 164), (*(a1 + 144) + v19 * *(a1 + 166)), v26, *v25.i32, *v23.i32);
      v59 = v36;
      *v39.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 164), (*(a1 + 144) + v20 * *(a1 + 166)), v36, v37, v38);
      v58 = v39;
      *v35.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 164), (*(a1 + 144) + *(a1 + 166) * a12), v39, v40, v41);
      v33 = v58;
      v31 = v59;
    }

    *(*(*(a1 + 80) + 8) + 32) = vminq_f32(*(*(*(a1 + 80) + 8) + 32), v31);
    *(*(*(a1 + 80) + 8) + 32) = vminq_f32(*(*(*(a1 + 80) + 8) + 32), v33);
    *(*(*(a1 + 80) + 8) + 32) = vminq_f32(*(*(*(a1 + 80) + 8) + 32), v35);
    *(*(*(a1 + 88) + 8) + 32) = vmaxq_f32(*(*(*(a1 + 88) + 8) + 32), v31);
    *(*(*(a1 + 88) + 8) + 32) = vmaxq_f32(*(*(*(a1 + 88) + 8) + 32), v33);
    *(*(*(a1 + 88) + 8) + 32) = vmaxq_f32(*(*(*(a1 + 88) + 8) + 32), v35);
    *(*(a1 + 176) + 16 * (3 * *(*(*(a1 + 96) + 8) + 24))) = v31;
    *(*(a1 + 176) + 16 * (3 * *(*(*(a1 + 96) + 8) + 24) + 1)) = v33;
    *(*(a1 + 176) + 16 * (3 * *(*(*(a1 + 96) + 8) + 24) + 2)) = v35;
    *(*(a1 + 184) + 4 * (*(*(*(a1 + 96) + 8) + 24))++) = a2;
  }

  v42 = *(*(a1 + 96) + 8);
  v43 = *(v42 + 24);
  if (v43 > 0x1F || v14 - 3 == a9 && *(a1 + 208) - 1 == a2)
  {
    *(v42 + 24) = 0;
    v44 = *(*(a1 + 80) + 8);
    v45 = v44[2];
    v46 = *(*(*(a1 + 88) + 8) + 32);
    v47.i64[0] = 0x80000000800000;
    v47.i64[1] = 0x80000000800000;
    v44[2] = vnegq_f32(v47);
    *(*(*(a1 + 88) + 8) + 32) = v47;
    v48 = *(a1 + 32);
    v49 = *(a1 + 64);
    v50 = vmulq_f32(v49, vsubq_f32(v45, v48));
    v51 = vmulq_f32(v49, vsubq_f32(v46, v48));
    v50.i32[3] = 0;
    v51.i32[3] = 0;
    v52 = vminnmq_f32(v50, v51);
    v53 = vmaxnmq_f32(v50, v51);
    v51.i64[0] = vextq_s8(v52, v52, 8uLL).u64[0];
    v54 = vextq_s8(v53, v53, 8uLL).u64[0];
    *v51.f32 = vbsl_s8(vcge_f32(vzip1_s32(v54, *v52.i8), vzip1_s32(*v53.i8, *v51.f32)), vzip1_s32(*v53.i8, *v52.i8), vzip1_s32(v54, *v51.f32));
    v55 = vzip2_s32(*v53.i8, *v52.i8);
    v52.i32[0] = v51.i32[0];
    v53.i32[0] = vdup_lane_s32(*v53.i8, 1).u32[0];
    v53.i32[1] = v51.i32[1];
    v56 = vbsl_s8(vcge_f32(*v53.i8, *v52.i8), *v51.f32, v55);
    if (*v56.i32 >= *&v56.i32[1] && *&v56.i32[1] < COERCE_FLOAT(HIDWORD(*(a1 + 64))) && __ProcessTriangleIndicesBatch(*(a1 + 176), *(a1 + 184), v43, v48, *(a1 + 48), v49, a8, *(a1 + 281), *(a1 + 264)))
    {
      *(*(*(a1 + 104) + 8) + 24) = 1;
      *a13 = 1;
    }
  }
}

@end