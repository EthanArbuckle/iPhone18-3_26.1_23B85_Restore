uint64_t PDAF::PixelEngine::anonymous namespace::GetAFEDelayV(PDAF::PixelEngine::_anonymous_namespace_ *this, int a2)
{
  v2 = this;
  result = 0;
  if (v2 <= 3)
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        return result;
      }

      if (!a2)
      {
        return 3;
      }

      if (a2 != 1)
      {
      }
    }

    else
    {
      if (!v2)
      {
        return result;
      }

      if (v2 != 1)
      {
        goto LABEL_31;
      }

      if (!a2)
      {
        return 2;
      }

      if (a2 != 1)
      {
      }
    }

    return 1;
  }

  if (v2 <= 5)
  {
    if (v2 == 4)
    {
      goto LABEL_21;
    }

    if (a2)
    {
      if (a2 != 1)
      {
      }

      return 0;
    }

    return 1;
  }

  if (v2 == 6)
  {
    if (!a2)
    {
      return 2;
    }

    if (a2 != 1)
    {
    }

    return 1;
  }

  if (v2 == 7)
  {
LABEL_21:
    if (!a2)
    {
      return 4;
    }

    if (a2 != 1)
    {
    }

    return 2;
  }

  if (v2 != 8)
  {
LABEL_31:
  }

  return result;
}

uint64_t PDAF::PixelEngine::anonymous namespace::FlowAccumulateRow1x1Scalar<1>(uint64_t result, uint64_t a2, int a3, int *a4, int *a5, uint64_t a6, _DWORD *a7)
{
  v7 = *a4;
  v8 = *(result + 4);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 12);
    v11 = a6 - 404;
    v12 = a4[2];
    v13 = v8 + 1;
    v14 = *(a4 + 3);
    v15 = *(a2 + 4);
    do
    {
      v16 = *a5;
      if (v7)
      {
        v16 = v7;
      }

      else
      {
        v12 = a5[2];
      }

      if (!v7)
      {
        v14 = *(a5 + 3);
      }

      if (v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = v10;
      }

      if (v9)
      {
        v18 = 0;
      }

      else
      {
        v18 = 404;
      }

      v11 += v18;
      v19 = *v14;
      v20 = v19 >> 3;
      v21 = v14[3];
      if (v12)
      {
        v22 = -v20;
      }

      else
      {
        v22 = v19 >> 3;
      }

      v23 = v22 + v21;
      ++*(v11 + 384);
      *(v11 + 388) += v23;
      *(v11 + 396) += v23 * v23;
      if ((v19 & 4) == 0)
      {
        v24 = v14[1];
        v25 = v24 & 7;
        if ((v19 & 1) != 0 || (((v24 & 7u) < 6) & (v19 >> 1)) != 0)
        {
          v41 = (v11 + 12 * v12);
          v42.i32[0] = 1;
          v42.i32[1] = v23;
          v41[42] = vadd_s32(v41[42], v42);
          v41[43].i32[0] += v21;
        }

        else
        {
          v26 = v25 > 5;
          v27 = v14[2];
          v28 = (v27 & 0xF) + 1;
          v29 = v27 >> 4;
          v30 = v14[1];
          v31 = v30 >> 3;
          if (v30 >> 3 < 0)
          {
            v31 = -v31;
          }

          if (v20 >= 0)
          {
            LOWORD(v32) = v20;
          }

          else
          {
            v32 = -v20;
          }

          v33 = v25 - v26;
          v34 = (16 * (v31 & 0xFFFu)) >> v26 >> 1;
          v35 = ((v28 >> 1) * v29 * v34) >> 15 << v15;
          if (v35 <= -32768)
          {
            v35 = -32768;
          }

          if (v35 >= 0x7FFF)
          {
            v35 = 0x7FFF;
          }

          v36 = ((v35 * v34) >> 15);
          v37 = ((v35 * 8 * (v32 & 0xFFF)) >> 15);
          if ((v20 ^ (v30 >> 3)) >= 0)
          {
            v38 = v33 + 7;
          }

          else
          {
            v38 = v33;
          }

          v39 = (v11 + 24 * v38);
          v40 = v39[1];
          *v39 += v28;
          v39[1] = v40 + v36;
          v39[2] += v37;
        }
      }

      v14 += 4;
      v7 = v16 - 1;
      v9 = v17 - 1;
      result = (*a7 + 1);
      *a7 = result;
      v12 ^= a3;
      --v13;
    }

    while (v13 > 1);
  }

  if (v7)
  {
  }

  return result;
}

uint64_t PDAF::PixelEngine::anonymous namespace::FlowAccumulateRow2x1Scalar<5,true>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v6 = 2 * *a3;
  v7 = 2 * *(result + 4);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 2 * *(result + 12);
    v10 = a5 - 404;
    if (*a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = a4;
    }

    v12 = *(v11 + 8);
    v13 = *(a3 + 24);
    v14 = v7 + 2;
    v15 = *(a2 + 4);
    result = 24;
    do
    {
      v16 = 2 * *a4;
      if (v6)
      {
        v16 = v6;
      }

      else
      {
        v13 = *(a4 + 24);
      }

      if (v8)
      {
        v17 = v8;
      }

      else
      {
        v17 = v9;
      }

      if (v8)
      {
        v18 = 0;
      }

      else
      {
        v18 = 404;
      }

      v10 += v18;
      v19 = v13[3];
      v20 = v13[7];
      v21 = v20 - (v13[4] >> 3);
      v22 = *v13;
      ++*(v10 + 384);
      *(v10 + 388) += v21;
      *(v10 + 396) += v21 * v21;
      if ((v22 & 4) == 0)
      {
        v23 = v13[1];
        v24 = v23 & 7;
        if ((v22 & 1) != 0 || (((v23 & 7u) < 6) & (v22 >> 1)) != 0)
        {
          v41 = (v10 + 336 + 12 * v12);
          v42.i32[0] = 1;
          v42.i32[1] = v21;
          *v41 = vadd_s32(*v41, v42);
          v41[1].i32[0] += v19;
          v43 = (v10 + 336 + 12 * (v12 + 1));
          *v43 = vadd_s32(*v43, v42);
          v43[1].i32[0] += v20;
        }

        else
        {
          v25 = v24 > 5;
          v26 = v22;
          v27 = v13[2];
          v28 = (v27 & 0xF) + 1;
          v29 = v27 >> 4;
          v30 = v22 >> 3;
          v31 = v13[1] >> 3;
          if (v31 >= 0)
          {
            LOWORD(v32) = v13[1] >> 3;
          }

          else
          {
            v32 = -v31;
          }

          if (v30 < 0)
          {
            v30 = -v30;
          }

          v33 = v24 - v25;
          v34 = (16 * (v32 & 0xFFFu)) >> v25 >> 1;
          v35 = ((v28 >> 1) * v29 * v34) >> 15 << v15;
          if (v35 <= -32768)
          {
            v35 = -32768;
          }

          if (v35 >= 0x7FFF)
          {
            v35 = 0x7FFF;
          }

          v36 = ((v35 * v34) >> 15);
          v37 = ((v35 * 8 * (v30 & 0xFFF)) >> 15);
          if ((v31 ^ (v26 >> 3)) >= 0)
          {
            v38 = v33 + 7;
          }

          else
          {
            v38 = v33;
          }

          v39 = (v10 + 24 * v38);
          v40 = v39[1];
          *v39 += v28;
          v39[1] = v40 + v36;
          v39[2] += v37;
        }
      }

      v13 += 8;
      v6 = v16 - 2;
      v8 = v17 - 2;
      ++*a6;
      v14 -= 2;
    }

    while (v14 > 2);
  }

  if (v6)
  {
  }

  return result;
}

uint64_t PDAF::PixelEngine::anonymous namespace::FlowAccumulateRow2x1Scalar<6,false>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v6 = 2 * *a3;
  v7 = 2 * *(result + 4);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 2 * *(result + 12);
    v10 = a5 - 404;
    if (*a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = a4;
    }

    v12 = *(v11 + 8);
    v13 = (*(a3 + 24) + 8);
    v14 = v7 + 2;
    v15 = *(a2 + 4);
    result = 24;
    do
    {
      v16 = 2 * *a4;
      if (v6)
      {
        v16 = v6;
      }

      else
      {
        v13 = (*(a4 + 24) + 8);
      }

      if (v8)
      {
        v17 = v8;
      }

      else
      {
        v17 = v9;
      }

      if (v8)
      {
        v18 = 0;
      }

      else
      {
        v18 = 404;
      }

      v10 += v18;
      v19 = *(v13 - 1);
      v20 = v13[3];
      v21 = v19 + (*(v13 - 4) >> 3);
      v22 = *v13;
      ++*(v10 + 384);
      *(v10 + 388) += v21;
      *(v10 + 396) += v21 * v21;
      if ((v22 & 4) == 0)
      {
        v23 = v13[1];
        v24 = v23 & 7;
        if ((v22 & 1) != 0 || (((v23 & 7u) < 6) & (v22 >> 1)) != 0)
        {
          v41 = (v10 + 336 + 12 * v12);
          v42.i32[0] = 1;
          v42.i32[1] = v21;
          *v41 = vadd_s32(*v41, v42);
          v41[1].i32[0] += v19;
          v43 = (v10 + 336 + 12 * (v12 + 1));
          *v43 = vadd_s32(*v43, v42);
          v43[1].i32[0] += v20;
        }

        else
        {
          v25 = v24 > 5;
          v26 = v22;
          v27 = v13[2];
          v28 = (v27 & 0xF) + 1;
          v29 = v27 >> 4;
          v30 = v22 >> 3;
          v31 = v13[1] >> 3;
          if (v31 >= 0)
          {
            LOWORD(v32) = v13[1] >> 3;
          }

          else
          {
            v32 = -v31;
          }

          if (v30 < 0)
          {
            v30 = -v30;
          }

          v33 = v24 - v25;
          v34 = (16 * (v32 & 0xFFFu)) >> v25 >> 1;
          v35 = ((v28 >> 1) * v29 * v34) >> 15 << v15;
          if (v35 <= -32768)
          {
            v35 = -32768;
          }

          if (v35 >= 0x7FFF)
          {
            v35 = 0x7FFF;
          }

          v36 = ((v35 * v34) >> 15);
          v37 = ((v35 * 8 * (v30 & 0xFFF)) >> 15);
          if ((v31 ^ (v26 >> 3)) >= 0)
          {
            v38 = v33 + 7;
          }

          else
          {
            v38 = v33;
          }

          v39 = (v10 + 24 * v38);
          v40 = v39[1];
          *v39 += v28;
          v39[1] = v40 + v36;
          v39[2] += v37;
        }
      }

      v13 += 8;
      v6 = v16 - 2;
      v8 = v17 - 2;
      ++*a6;
      v14 -= 2;
    }

    while (v14 > 2);
  }

  if (v6)
  {
  }

  return result;
}

uint64_t PDAF::PixelEngine::anonymous namespace::FlowAccumulateRow1x1Neon64<1>(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, int32x4_t a8, int32x4_t a9)
{
  v69 = *MEMORY[0x277D85DE8];
  v9 = *a4;
  if (*a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  v11 = *(v10 + 8);
  v12 = *(result + 4);
  if (a3)
  {
    a8.i32[0] = 0;
    a9.i32[0] = v11 & 1;
    v13 = vdupq_lane_s32(*&vceqq_s32(a9, a8), 0);
    v14.i64[0] = 0xFFFF0000FFFFLL;
    v14.i64[1] = 0xFFFF0000FFFFLL;
    v15.i64[0] = 0xFFFF0000FFFF0000;
    v15.i64[1] = 0xFFFF0000FFFF0000;
    v16 = vbslq_s8(v13, v15, v14);
  }

  else
  {
    v16 = vdupq_n_s16(-(v11 & 1));
  }

  if (v12 < 1)
  {
    goto LABEL_36;
  }

  v17 = 0;
  v18 = *(a4 + 24);
  v19 = vdupq_n_s16(*(a2 + 4));
  v20 = a6 - 404;
  v21 = *(result + 12);
  v22.i64[0] = 0x2000200020002;
  v22.i64[1] = 0x2000200020002;
  v23.i64[0] = 0x4000400040004;
  v23.i64[1] = 0x4000400040004;
  v24.i64[0] = 0x7000700070007;
  v24.i64[1] = 0x7000700070007;
  v25.i64[0] = 0xF000F000F000FLL;
  v25.i64[1] = 0xF000F000F000FLL;
  v26.i64[0] = 0x5000500050005;
  v26.i64[1] = 0x5000500050005;
  v27.i64[0] = 0x1000100010001;
  v27.i64[1] = 0x1000100010001;
  result = 24;
LABEL_9:
  v28 = *(a5 + 24);
  v29 = *a5;
  if (!v9)
  {
    v9 = *a5;
    v18 = *(a5 + 24);
  }

  if (v9 > 7)
  {
    v30 = 8;
LABEL_14:
    v9 -= v30;
    v70 = vld4q_s16(v18);
    v18 += 32;
    goto LABEL_25;
  }

  v30 = v12;
  if (v9 == v12)
  {
    goto LABEL_14;
  }

  if (v9 < 1)
  {
  }

  v31 = 0;
  v32 = 2 * v9;
  do
  {
    v64[0].i16[v31 / 2] = *v18;
    v68.i16[v31 / 2] = v18[1];
    v67.i16[v31 / 2] = v18[2];
    v66.i16[v31 / 2] = v18[3];
    v18 += 4;
    v31 += 2;
  }

  while (v32 != v31);
  if (v12 >= 8)
  {
    v33 = 8;
  }

  else
  {
    v33 = v12;
  }

  if (v9 < v33)
  {
    v34 = &v66.i16[v32 / 2];
    v35 = &v67.i16[v32 / 2];
    v36 = &v68.i16[v32 / 2];
    v37 = &v64[0].i16[v32 / 2];
    v38 = v9;
    do
    {
      *v37++ = *v28;
      *v36++ = v28[1];
      *v35++ = v28[2];
      *v34++ = v28[3];
      v28 += 4;
      ++v38;
    }

    while (v33 > v38);
  }

  v70.val[0] = v64[0];
  v70.val[2] = v67;
  v70.val[1] = v68;
  v70.val[3] = v66;
  v9 += v29 - v33;
  v18 = v28;
LABEL_25:
  v39 = 0;
  v40 = vceqzq_s16(vandq_s8(v70.val[0], v23));
  v41 = vandq_s8(v70.val[1], v24);
  v42 = vshrq_n_s16(v70.val[0], 3uLL);
  v43 = vaddq_s16(v70.val[3], vbslq_s8(v16, vnegq_s16(v42), v42));
  v44 = vshrq_n_s16(v70.val[1], 3uLL);
  v45 = vcgtq_u16(v41, v26);
  v46 = vandq_s8(vaddq_s16(vandq_s8(v70.val[2], v25), vbicq_s8(v27, v70.val[0])), vorrq_s8(v45, vceqzq_s16(vandq_s8(v70.val[0], v22))));
  v47 = vaddq_s16(vaddq_s16(v41, v45), vandq_s8(veorq_s8(vcltzq_s16(v70.val[0]), vcgezq_s16(v44)), v24));
  v48 = vshrq_n_u16(vshlq_u16(vqshlq_n_u16(vabsq_s16(v44), 4uLL), v45), 1uLL);
  v49 = vqshlq_s16(vqdmulhq_s16(v48, vmulq_s16(vshrq_n_u16(v46, 1uLL), vshrq_n_u16(v70.val[2], 4uLL))), v19);
  v50 = vqdmulhq_s16(v49, v48);
  v51 = vqdmulhq_s16(v49, vshrq_n_u16(vqshlq_n_u16(vabsq_s16(v42), 4uLL), 1uLL));
  v52 = vceqzq_s16(v46);
  v64[0] = v47;
  v64[1] = vornq_s8(vandq_s8(v46, v40), v40);
  v65[0] = vbslq_s8(v52, v43, v50);
  v65[1] = vbslq_s8(v52, v70.val[3], v51);
  v68 = v43;
  v53 = v65;
  while (1)
  {
    if (v17)
    {
      v54 = 0;
    }

    else
    {
      v17 = v21;
      v54 = 404;
    }

    v20 += v54;
    v55 = *(v53 - 16);
    v56 = *(v53 - 8);
    v57 = *v53;
    v58 = v53[8];
    ++*(v20 + 384);
    v59 = v68.u16[v39];
    *(v20 + 388) += v59;
    *(v20 + 396) += v59 * v59;
    if (v56)
    {
      if (v56 != 0xFFFF)
      {
        v60 = (v20 + 24 * v55);
        v61 = v60[1];
        *v60 += v56;
        v60[1] = v61 + v57;
        v60[2] += v58;
      }
    }

    else
    {
      v62 = (v20 + 12 * v11);
      v63.i32[0] = 1;
      v63.i32[1] = v57;
      v62[42] = vadd_s32(v62[42], v63);
      v62[43].i32[0] += v58;
    }

    ++*a7;
    if (v12 - 1 == v39)
    {
      break;
    }

    ++v53;
    v11 ^= a3;
    --v17;
    if (++v39 == 8)
    {
      v12 -= 8;
      if (v12 + 1 > 1)
      {
        goto LABEL_9;
      }

      break;
    }
  }

LABEL_36:
  if (v9)
  {
  }

  return result;
}

uint64_t PDAF::PixelEngine::anonymous namespace::FlowAccumulateRow2x1Neon64<5,1ul>(uint64_t result, uint64_t a2, int *a3, int *a4, uint64_t a5, _DWORD *a6)
{
  v76 = *MEMORY[0x277D85DE8];
  v6 = 2 * *(result + 4);
  if (v6 < 1)
  {
    return result;
  }

  v7 = 0;
  v8 = vdupq_n_s16(*(a2 + 4));
  v9 = 2 * *(result + 12);
  if (*a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = a4;
  }

  v11 = v10[2];
  v12 = 2 * *a3;
  v13 = a5 - 404;
  v14 = *(a3 + 3);
  v15 = v6 - 2;
  v16.i64[0] = 0x2000200020002;
  v16.i64[1] = 0x2000200020002;
  v17.i64[0] = 0x4000400040004;
  v17.i64[1] = 0x4000400040004;
  v18.i64[0] = 0x7000700070007;
  v18.i64[1] = 0x7000700070007;
  v19.i64[0] = 0xF000F000F000FLL;
  v19.i64[1] = 0xF000F000F000FLL;
  v20.i64[0] = 0x5000500050005;
  v20.i64[1] = 0x5000500050005;
  result = 0xFFFFLL;
  v21.i64[0] = 0x1000100010001;
  v21.i64[1] = 0x1000100010001;
LABEL_6:
  v22 = *(a4 + 3);
  v23 = *a4;
  v24 = 2 * *a4;
  if (v12)
  {
    v24 = v12;
  }

  else
  {
    v14 = *(a4 + 3);
  }

  if (v24 >= 16)
  {
    v25 = 16;
LABEL_12:
    v26 = v14;
    v77 = vld4q_s16(v26);
    v26 += 32;
    v78 = vld4q_s16(v26);
    v27 = vuzp1q_s16(v77.val[0], v78.val[0]);
    v28 = vuzp1q_s16(v77.val[1], v78.val[1]);
    v29 = vuzp1q_s16(v77.val[2], v78.val[2]);
    v30 = vuzp1q_s16(v77.val[3], v78.val[3]);
    v31 = vuzp2q_s16(v77.val[3], v78.val[3]);
    v32 = vsubq_s16(v31, vshrq_n_s16(vuzp2q_s16(v77.val[0], v78.val[0]), 3uLL));
    v14 += 64;
    v12 = v24 - v25;
    goto LABEL_27;
  }

  v25 = v6;
  if (v24 == v6)
  {
    goto LABEL_12;
  }

  if (v24 <= 0)
  {
  }

  v33 = v24 >> 1;
  if (v24 != 1)
  {
    if (v33 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    v35 = &v72;
    v36 = &v71;
    v37 = &v73;
    v38 = &v74;
    v39 = &v75;
    v40 = v70;
    do
    {
      *v40++ = *v14;
      v39->i16[0] = v14[1];
      v39 = (v39 + 2);
      v38->i16[0] = v14[2];
      v38 = (v38 + 2);
      v37->i16[0] = v14[3];
      v37 = (v37 + 2);
      v41 = v14[7];
      v36->i16[0] = v41;
      v36 = (v36 + 2);
      v35->i16[0] = v41 + (v14[4] >> 3);
      v35 = (v35 + 2);
      v14 += 8;
      --v34;
    }

    while (v34);
  }

  LODWORD(v42) = v6 >> 1;
  if (v6 <= 15)
  {
    v42 = v42;
  }

  else
  {
    v42 = 8;
  }

  if (v33 < v42)
  {
    v43 = 0;
    do
    {
      *(v70 + v33 + v43) = *v22;
      v75.i16[v33 + v43] = v22[1];
      v74.i16[v33 + v43] = v22[2];
      v73.i16[v33 + v43] = v22[3];
      v44 = v22[7];
      v71.i16[v33 + v43] = v44;
      v72.i16[v33 + v43] = v44 + (v22[4] >> 3);
      v22 += 8;
      ++v43;
    }

    while (v42 - v33 != v43);
  }

  v27 = v70[0];
  v28 = v75;
  v30 = v73;
  v29 = v74;
  v31 = v71;
  v32 = v72;
  v12 = 2 * (v23 - v42 + v33);
  v14 = v22;
LABEL_27:
  v45 = 0;
  v46 = vceqzq_s16(vandq_s8(v27, v17));
  v47 = vandq_s8(v28, v18);
  v48 = vshrq_n_s16(v28, 3uLL);
  v49 = vqshlq_n_u16(vabsq_s16(vshrq_n_s16(v27, 3uLL)), 4uLL);
  v50 = vcgtq_u16(v47, v20);
  v51 = vshlq_u16(vqshlq_n_u16(vabsq_s16(v48), 4uLL), v50);
  v52 = vandq_s8(vaddq_s16(vandq_s8(v29, v19), vbicq_s8(v21, v27)), vorrq_s8(v50, vceqzq_s16(vandq_s8(v27, v16))));
  v53 = vaddq_s16(vaddq_s16(v47, v50), vandq_s8(veorq_s8(vcltzq_s16(v27), vcgezq_s16(v48)), v18));
  v54 = vmulq_s16(vshrq_n_u16(v52, 1uLL), vshrq_n_u16(v29, 4uLL));
  v55 = vshrq_n_u16(v51, 1uLL);
  v56 = vqshlq_s16(vqdmulhq_s16(v55, v54), v8);
  v57 = vceqzq_s16(v52);
  v75 = v32;
  v70[0] = vornq_s8(vandq_s8(v52, v46), v46);
  v70[1] = vbslq_s8(v57, v32, vqdmulhq_s16(v56, v55));
  v70[2] = vbslq_s8(v57, v30, vqdmulhq_s16(v56, vshrq_n_u16(v49, 1uLL)));
  v70[3] = vbslq_s8(v57, v31, v53);
  while (1)
  {
    if (v7)
    {
      v58 = 0;
    }

    else
    {
      v7 = v9;
      v58 = 404;
    }

    v13 += v58;
    v59 = *(v70 + v45);
    ++*(v13 + 384);
    v60 = v75.u16[v45 / 2];
    *(v13 + 388) += v60;
    *(v13 + 396) += v60 * v60;
    if (v59)
    {
      if (v59 != 0xFFFF)
      {
        v61 = *(&v70[2] + v45);
        v62 = (v13 + 24 * *(&v70[3] + v45));
        v63 = v62[1] + *(&v70[1] + v45);
        *v62 += v59;
        v62[1] = v63;
        v62[2] += v61;
      }
    }

    else
    {
      v64 = *(&v70[2] + v45);
      v65 = *(&v70[3] + v45);
      v66 = (v13 + 336 + 12 * v11);
      v67.i32[0] = 1;
      v67.i32[1] = *(&v70[1] + v45);
      *v66 = vadd_s32(*v66, v67);
      v66[1].i32[0] += v64;
      v68 = (v13 + 336 + 12 * (v11 + 1));
      *v68 = vadd_s32(*v68, v67);
      v68[1].i32[0] += v65;
    }

    ++*a6;
    if (v15 == v45)
    {
      return result;
    }

    v45 += 2;
    v7 -= 2;
    if (v45 == 16)
    {
      v15 -= 16;
      v69 = v6 <= 16;
      v6 -= 16;
      if (v69)
      {
        return result;
      }

      goto LABEL_6;
    }
  }
}

uint64_t PDAF::PixelEngine::anonymous namespace::FlowAccumulateRow2x1Neon64<6,0ul>(uint64_t result, uint64_t a2, int *a3, int *a4, uint64_t a5, _DWORD *a6)
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = 2 * *(result + 4);
  if (v6 < 1)
  {
    return result;
  }

  v7 = 0;
  v8 = vdupq_n_s16(*(a2 + 4));
  v9 = 2 * *(result + 12);
  if (*a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = a4;
  }

  v11 = v10[2];
  v12 = 2 * *a3;
  v13 = a5 - 404;
  v14 = *(a3 + 3);
  v15 = v6 - 2;
  v16.i64[0] = 0x2000200020002;
  v16.i64[1] = 0x2000200020002;
  v17.i64[0] = 0x4000400040004;
  v17.i64[1] = 0x4000400040004;
  v18.i64[0] = 0x7000700070007;
  v18.i64[1] = 0x7000700070007;
  v19.i64[0] = 0xF000F000F000FLL;
  v19.i64[1] = 0xF000F000F000FLL;
  v20.i64[0] = 0x5000500050005;
  v20.i64[1] = 0x5000500050005;
  result = 0xFFFFLL;
  v21.i64[0] = 0x1000100010001;
  v21.i64[1] = 0x1000100010001;
LABEL_6:
  v22 = *(a4 + 3);
  v23 = *a4;
  if (v12)
  {
    v24 = v12;
  }

  else
  {
    v24 = 2 * *a4;
  }

  if (v12)
  {
    v25 = v14;
  }

  else
  {
    v25 = *(a4 + 3);
  }

  if (v24 >= 16)
  {
    v26 = 16;
LABEL_15:
    v27 = v25;
    v79 = vld4q_s16(v27);
    v27 += 32;
    v80 = vld4q_s16(v27);
    v28 = vuzp2q_s16(v79.val[0], v80.val[0]);
    v29 = vuzp2q_s16(v79.val[1], v80.val[1]);
    v30 = vuzp2q_s16(v79.val[2], v80.val[2]);
    v31 = vuzp1q_s16(v79.val[3], v80.val[3]);
    v32 = vuzp2q_s16(v79.val[3], v80.val[3]);
    v33 = vsraq_n_s16(v31, vuzp1q_s16(v79.val[0], v80.val[0]), 3uLL);
    v14 = v25 + 64;
    v12 = v24 - v26;
    goto LABEL_30;
  }

  v26 = v6;
  if (v24 == v6)
  {
    goto LABEL_15;
  }

  if (v24 <= 0)
  {
  }

  v34 = v24 >> 1;
  if (v24 != 1)
  {
    if (v34 <= 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = v34;
    }

    v36 = v25 + 4;
    v37 = &v74;
    v38 = &v73;
    v39 = &v75;
    v40 = &v76;
    v41 = &v77;
    v42 = v72;
    do
    {
      *v42++ = *v36;
      v41->i16[0] = v36[1];
      v41 = (v41 + 2);
      v40->i16[0] = v36[2];
      v40 = (v40 + 2);
      v39->i16[0] = v36[3];
      v39 = (v39 + 2);
      v43 = *(v36 - 1);
      v38->i16[0] = v43;
      v38 = (v38 + 2);
      v37->i16[0] = v43 - (*(v36 - 4) >> 3);
      v37 = (v37 + 2);
      v36 += 8;
      --v35;
    }

    while (v35);
  }

  LODWORD(v44) = v6 >> 1;
  if (v6 <= 15)
  {
    v44 = v44;
  }

  else
  {
    v44 = 8;
  }

  if (v34 < v44)
  {
    v45 = 0;
    do
    {
      *(v72 + v34 + v45) = v22[4];
      v77.i16[v34 + v45] = v22[5];
      v76.i16[v34 + v45] = v22[6];
      v75.i16[v34 + v45] = v22[7];
      v46 = v22[3];
      v73.i16[v34 + v45] = v46;
      v74.i16[v34 + v45] = v46 - (*v22 >> 3);
      v22 += 8;
      ++v45;
    }

    while (v44 - v34 != v45);
  }

  v28 = v72[0];
  v29 = v77;
  v32 = v75;
  v30 = v76;
  v31 = v73;
  v33 = v74;
  v12 = 2 * (v23 - v44 + v34);
  v14 = v22;
LABEL_30:
  v47 = 0;
  v48 = vceqzq_s16(vandq_s8(v28, v17));
  v49 = vandq_s8(v29, v18);
  v50 = vshrq_n_s16(v29, 3uLL);
  v51 = vqshlq_n_u16(vabsq_s16(vshrq_n_s16(v28, 3uLL)), 4uLL);
  v52 = vcgtq_u16(v49, v20);
  v53 = vshlq_u16(vqshlq_n_u16(vabsq_s16(v50), 4uLL), v52);
  v54 = vandq_s8(vaddq_s16(vandq_s8(v30, v19), vbicq_s8(v21, v28)), vorrq_s8(v52, vceqzq_s16(vandq_s8(v28, v16))));
  v55 = vaddq_s16(vaddq_s16(v49, v52), vandq_s8(veorq_s8(vcltzq_s16(v28), vcgezq_s16(v50)), v18));
  v56 = vmulq_s16(vshrq_n_u16(v54, 1uLL), vshrq_n_u16(v30, 4uLL));
  v57 = vshrq_n_u16(v53, 1uLL);
  v58 = vqshlq_s16(vqdmulhq_s16(v57, v56), v8);
  v59 = vceqzq_s16(v54);
  v77 = v33;
  v72[0] = vornq_s8(vandq_s8(v54, v48), v48);
  v72[1] = vbslq_s8(v59, v33, vqdmulhq_s16(v58, v57));
  v72[2] = vbslq_s8(v59, v31, vqdmulhq_s16(v58, vshrq_n_u16(v51, 1uLL)));
  v72[3] = vbslq_s8(v59, v32, v55);
  while (1)
  {
    if (v7)
    {
      v60 = 0;
    }

    else
    {
      v7 = v9;
      v60 = 404;
    }

    v13 += v60;
    v61 = *(v72 + v47);
    ++*(v13 + 384);
    v62 = v77.u16[v47 / 2];
    *(v13 + 388) += v62;
    *(v13 + 396) += v62 * v62;
    if (v61)
    {
      if (v61 != 0xFFFF)
      {
        v63 = *(&v72[2] + v47);
        v64 = (v13 + 24 * *(&v72[3] + v47));
        v65 = v64[1] + *(&v72[1] + v47);
        *v64 += v61;
        v64[1] = v65;
        v64[2] += v63;
      }
    }

    else
    {
      v66 = *(&v72[2] + v47);
      v67 = *(&v72[3] + v47);
      v68 = (v13 + 336 + 12 * v11);
      v69.i32[0] = 1;
      v69.i32[1] = *(&v72[1] + v47);
      *v68 = vadd_s32(*v68, v69);
      v68[1].i32[0] += v66;
      v70 = (v13 + 336 + 12 * (v11 + 1));
      *v70 = vadd_s32(*v70, v69);
      v70[1].i32[0] += v67;
    }

    ++*a6;
    if (v15 == v47)
    {
      return result;
    }

    v47 += 2;
    v7 -= 2;
    if (v47 == 16)
    {
      v15 -= 16;
      v71 = v6 <= 16;
      v6 -= 16;
      if (v71)
      {
        return result;
      }

      goto LABEL_6;
    }
  }
}

uint64_t PDAF::PixelEngine::anonymous namespace::CorrProfileSumRows1x1H(unsigned int *a1, unint64_t a2, char a3, uint64_t a4, _WORD *a5, _WORD *a6, _WORD *a7)
{
  v14 = a1[4];
  v15 = a1[160];
  bzero(a7, a1[121823]);
  if (!a2)
  {
  }

  v16 = 0;
  v17 = *(a4 + 16);
  v18 = 24;
  if (!v17)
  {
    v18 = 104;
  }

  v19 = *(a4 + v18);
  v20 = *a4;
  v21 = *(a4 + 40);
  v22 = *(a4 + 24);
  v23 = (v15 >> 4);
  v24 = 1 << *a4;
  do
  {
    v25 = v17;
    v26 = v14;
    v27 = v21;
    v28 = a7;
    v29 = a6;
    v30 = a5;
    LOBYTE(v31) = v22;
    if (v14)
    {
      do
      {
        if (!v25)
        {
          v27 = *(a4 + 120);
          v25 = *(a4 + 96);
          v31 = *(a4 + 104);
        }

        v32 = *v27 >> 3;
        v33 = v27[3];
        if (v31)
        {
          v32 = -v32;
        }

        v34 = (v32 + v33);
        *v30 += v27[3] >> 2;
        *v29 += v34 >> 2;
        if (v23 < v33 || v23 < v34)
        {
          ++*v28;
        }

        ++v28;
        v27 += 4;
        ++v30;
        ++v29;
        --v25;
        LOBYTE(v31) = v31 ^ a3;
        --v26;
      }

      while (v26);
    }

    if (v20 > 8)
    {
    }

    if ((v24 & 0xFA) != 0)
    {
      v36 = *(a4 + 32);
      if (v36)
      {
        *(a4 + 32) = v36 - 1;
        v21 += *(a4 + 8);
      }

      else
      {
        v21 += 2 * *(a4 + 8);
      }

      *(a4 + 40) = v21;
      v37 = *(a4 + 20) + 2;
    }

    else
    {
      if ((v24 & 0x101) != 0)
      {
        v21 += *(a4 + 8);
        *(a4 + 40) = v21;
        v22 ^= 1u;
        ++*(a4 + 20);
        *(a4 + 24) = v22;
        goto LABEL_25;
      }

      v21 += *(a4 + 8);
      *(a4 + 40) = v21;
      v37 = *(a4 + 20) + 1;
    }

    *(a4 + 20) = v37;
LABEL_25:
    v38 = *(a4 + 80);
    if (v38 > 8)
    {
    }

    v39 = 1 << v38;
    if ((v39 & 0xFA) != 0)
    {
      v40 = *(a4 + 112);
      if (v40)
      {
        *(a4 + 112) = v40 - 1;
        v41 = *(a4 + 120) + 2 * *(a4 + 88);
      }

      else
      {
        v41 = *(a4 + 120) + 4 * *(a4 + 88);
      }

      *(a4 + 120) = v41;
      v44 = *(a4 + 100) + 2;
    }

    else
    {
      if ((v39 & 0x101) != 0)
      {
        *(a4 + 120) += 2 * *(a4 + 88);
        v42 = *(a4 + 100);
        LODWORD(v43) = vadd_s32(v42, 0x100000001).u32[0];
        HIDWORD(v43) = veor_s8(*&v42, 0x100000001).i32[1];
        *(a4 + 100) = v43;
        goto LABEL_34;
      }

      *(a4 + 120) += 2 * *(a4 + 88);
      v44 = *(a4 + 100) + 1;
    }

    *(a4 + 100) = v44;
LABEL_34:
    if (v25)
    {
    }

    ++v16;
  }

  while (v16 != a2);
}

void PDAF::PixelEngine::anonymous namespace::CorrProfileProcess(int a1, unsigned int *a2, uint64_t a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int16 *a7, uint64_t a8)
{
  v15 = a2[8];
  switch(v15)
  {
    case 4u:
      break;
    case 2u:
      break;
    case 1u:
      memcpy(a6, a4, 2 * a2[7]);
      memcpy(a7, a5, 2 * a2[7]);
      break;
    default:
  }

  v18 = *(a3 + 4);
  if (a1)
  {
    if ((v18 & 0x80000000) == 0)
    {
    }

    if (*(a3 + 8) <= 0)
    {
    }

    if (a2[13])
    {
      v19 = 0;
      v20 = 0;
      v21 = a2[10];
      do
      {
        if (a2[12] + v20 >= a2[11])
        {
          v20 = a2[11];
        }

        else
        {
          v20 += a2[12];
        }

        v22 = (v20 - v21) & 0xFFFFFFF8;
        *(a8 + 340) = v22;
        v23 = &a6[v21];
        v24 = &a7[v21];
        a8 += 360;
        ++v19;
        v21 = v20;
      }

      while (v19 < a2[13]);
    }
  }

  else
  {
    if ((v18 & 0x80000000) == 0)
    {
    }

    v25 = *(a3 + 8);
    if (v25 <= 0)
    {
    }

    v26 = a2[13];
    if (v26)
    {
      v27 = 0;
      v28 = 0;
      v30 = a2[11];
      v29 = a2[12];
      v31 = v25 + 1;
      v32 = a2[10];
      do
      {
        v33 = v32;
        v34 = &a6[v32];
        v35 = &a7[v32];
        v32 = v27 + v29;
        if (v27 + v29 >= v30)
        {
          v32 = v30;
        }

        v36 = (v32 - v33) & 0xFFFFFFF8;
        *(a8 + 340) = v36;
        v37 = v18;
        v38 = a8;
        do
        {
          if (v36)
          {
            v39 = 0;
            v40 = 0uLL;
            v41 = v36;
            v42 = v34;
            v43 = &v35[v37];
            do
            {
              v44 = *v42;
              if (v44 != 0xFFFF)
              {
                v45 = *v43;
                if (v45 != 0xFFFF)
                {
                  v39 += v45 * v45;
                  v46.i32[0] = *v42;
                  v46.i32[1] = v44 * v44;
                  v46.i64[1] = __PAIR64__(v45 * v44, v45);
                  v40 = vaddq_s32(v40, v46);
                }
              }

              ++v42;
              ++v43;
              --v41;
            }

            while (v41);
            v47 = v39;
            v48 = vcvtq_f32_u32(v40);
          }

          else
          {
            v48 = 0uLL;
            v47 = 0.0;
          }

          v38[1].f32[0] = v47 + v38[1].f32[0];
          *v38 = vaddq_f32(v48, *v38);
          v38 = (v38 + 20);
          ++v37;
        }

        while (v31 != v37);
        ++v28;
        a8 += 360;
        v27 = v32;
      }

      while (v28 != v26);
    }
  }
}

uint64_t PDAF::PixelEngine::anonymous namespace::CorrProfileScaleMirrorSat(uint64_t result, int a2, uint64_t a3, char a4, _WORD *a5, _WORD *a6, _WORD *a7)
{
  v7 = *(result + 24);
  if (!*(result + 16))
  {
    v7 = 0xFFFF;
  }

  for (; a3; --a3)
  {
    *a5 = (*a5 * a2) >> 5;
    v8 = *a6 * a2;
    *a6 = v8 >> 5;
    v9 = *a5;
    v10 = (v8 >> 4) & 0xFFFE;
    v11 = v10 >= v9;
    v12 = v10 - v9;
    if (!v11)
    {
      v12 = 0;
    }

    if (a4)
    {
      *a5 = v12;
      v12 = v9;
    }

    *a6 = v12;
    if (v7 <= *a7)
    {
      *a7 = 1;
      *a5 = -1;
      *a6 = -1;
    }

    ++a7;
    ++a5;
    ++a6;
    a4 ^= 1u;
  }

  return result;
}

uint64_t PDAF::PixelEngine::anonymous namespace::CorrProfileUpSample2x(uint64_t this, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = this - 1;
  if (this != 1)
  {
    do
    {
      v5 = *a2;
      *a3 = v5;
      if (v5 == 0xFFFF)
      {
        LOWORD(v7) = -1;
      }

      else
      {
        v6 = a2[1];
        v7 = (v5 + v6 + 1) >> 1;
        if (v6 == 0xFFFF)
        {
          LOWORD(v7) = -1;
        }
      }

      a3[1] = v7;
      ++a2;
      a3 += 2;
      --v4;
    }

    while (v4);
  }

  *a3 = *a2;
  return this;
}

uint64_t PDAF::PixelEngine::anonymous namespace::CorrProfileUpSample4x(uint64_t this, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = this - 1;
  if (this != 1)
  {
    do
    {
      v5 = *a2;
      *a3 = v5;
      if (v5 == 0xFFFF || (v6 = a2[1], v6 == 0xFFFF))
      {
        *(a3 + 1) = -1;
        LOWORD(v8) = -1;
      }

      else
      {
        v7 = v5 + v6 + 1;
        a3[2] = v7 >> 1;
        a3[1] = (v5 + (v7 >> 1) + 1) >> 1;
        v8 = (a2[1] + (v7 >> 1) + 1) >> 1;
      }

      a3[3] = v8;
      ++a2;
      a3 += 4;
      --v4;
    }

    while (v4);
  }

  *a3 = *a2;
  return this;
}

float PDAF::PixelEngine::anonymous namespace::CorrChunkAccumNeon64(int a1, int16x8_t *a2, int8x16_t *a3, uint64_t a4)
{
  if (a1 < 1)
  {
    v20 = 0uLL;
    v90 = 0.0;
    v89 = 0.0;
    v88 = 0.0;
    v87 = 0.0;
    v86 = 0.0;
    v85 = 0.0;
    v84 = 0.0;
    v83 = 0.0;
    v19 = 0uLL;
    v18 = 0uLL;
    v17 = 0uLL;
    v16 = 0uLL;
    v15 = 0uLL;
    v13 = 0uLL;
    v12 = 0uLL;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = a1 + 8;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v93 = v20;
      v21 = a3[-1];
      v22 = vextq_s8(v21, *a3, 2uLL);
      v23 = vextq_s8(v21, *a3, 4uLL);
      v24 = vextq_s8(v21, *a3, 6uLL);
      v25 = *a2++;
      v26 = vextq_s8(v21, *a3, 8uLL);
      v27 = vextq_s8(v21, *a3, 0xAuLL);
      v28 = vextq_s8(v21, *a3, 0xCuLL);
      v92 = v28;
      v29 = vextq_s8(v21, *a3, 0xEuLL);
      v30.i64[0] = -1;
      v30.i64[1] = -1;
      v31 = vmvnq_s8(vceqq_s16(v25, v30));
      v32 = vbicq_s8(v31, vceqq_s16(v21, v30));
      v33 = vminq_u16(v25, v32);
      v34 = vminq_u16(v21, v32);
      v35 = vmlal_high_u16(vmull_u16(*v33.i8, *v33.i8), v33, v33);
      v36 = vmlal_high_u16(vmull_u16(*v34.i8, *v34.i8), v34, v34);
      v37 = vmlal_high_u16(vmull_u16(*v33.i8, *v34.i8), v33, v34);
      v33.i16[0] = vaddvq_s16(v33);
      v34.i16[0] = vaddvq_s16(v34);
      v38 = vbicq_s8(v31, vceqq_s16(v22, v30));
      v39 = vminq_u16(v25, v38);
      v40 = vminq_u16(v22, v38);
      v33.i32[1] = v34.i32[0];
      v41 = vmlal_high_u16(vmull_u16(*v39.i8, *v39.i8), v39, v39);
      v42 = vmlal_high_u16(vmull_u16(*v40.i8, *v40.i8), v40, v40);
      v43 = vmlal_high_u16(vmull_u16(*v39.i8, *v40.i8), v39, v40);
      v34.i16[0] = vaddvq_s16(v39);
      v40.i16[0] = vaddvq_s16(v40);
      v34.i32[1] = v40.i32[0];
      v44.i32[0] = vaddvq_s32(v37);
      v45 = vbicq_s8(v31, vceqq_s16(v23, v30));
      v46 = vminq_u16(v25, v45);
      v47 = vminq_u16(v23, v45);
      v48 = vmlal_high_u16(vmull_u16(*v46.i8, *v46.i8), v46, v46);
      v49 = vmlal_high_u16(vmull_u16(*v47.i8, *v47.i8), v47, v47);
      v50 = vmlal_high_u16(vmull_u16(*v46.i8, *v47.i8), v46, v47);
      v46.i16[0] = vaddvq_s16(v46);
      v47.i16[0] = vaddvq_s16(v47);
      v46.i32[1] = v47.i32[0];
      v51 = vbicq_s8(v31, vceqq_s16(v24, v30));
      v52 = vminq_u16(v25, v51);
      v53 = vminq_u16(v24, v51);
      v54 = vmlal_high_u16(vmull_u16(*v52.i8, *v52.i8), v52, v52);
      v55 = vmlal_high_u16(vmull_u16(*v53.i8, *v53.i8), v53, v53);
      v56 = v44.i32[0];
      v57 = vaddvq_s32(vmlal_high_u16(vmull_u16(*v52.i8, *v53.i8), v52, v53));
      v44.i16[0] = vaddvq_s16(v52);
      v52.i16[0] = vaddvq_s16(v53);
      v44.i32[1] = v52.i32[0];
      v58 = vaddvq_s32(v43);
      v59 = vbicq_s8(v31, vceqq_s16(v26, v30));
      v60 = vminq_u16(v25, v59);
      v61 = vminq_u16(v26, v59);
      v62 = vaddvq_s32(v50);
      v63 = vmlal_high_u16(vmull_u16(*v60.i8, *v60.i8), v60, v60);
      v64 = vmlal_high_u16(vmull_u16(*v61.i8, *v61.i8), v61, v61);
      *v26.i8 = vand_s8(*v33.i8, 0xFFFF0000FFFFLL);
      v65 = vaddvq_s32(vmlal_high_u16(vmull_u16(*v60.i8, *v61.i8), v60, v61));
      v60.i16[0] = vaddvq_s16(v60);
      v33.i16[0] = vaddvq_s16(v61);
      v66 = v57;
      v60.i32[1] = v33.i32[0];
      v67 = vbicq_s8(v31, vceqq_s16(v27, v30));
      v68 = vminq_u16(v25, v67);
      v69 = v65;
      v70 = vminq_u16(v27, v67);
      v71 = vmlal_high_u16(vmull_u16(*v68.i8, *v68.i8), v68, v68);
      *v27.i8 = vand_s8(*v34.i8, 0xFFFF0000FFFFLL);
      v72 = vaddvq_s32(vmlal_high_u16(vmull_u16(*v68.i8, *v70.i8), v68, v70));
      v73 = vmlal_high_u16(vmull_u16(*v70.i8, *v70.i8), v70, v70);
      v26.i64[1] = __PAIR64__(vaddvq_s32(v36), vaddvq_s32(v35));
      v28.i16[0] = vaddvq_s16(v68);
      v70.i16[0] = vaddvq_s16(v70);
      v28.i32[1] = v70.i32[0];
      v27.i64[1] = __PAIR64__(vaddvq_s32(v42), vaddvq_s32(v41));
      v4 += v56;
      *v35.i8 = vand_s8(*v46.i8, 0xFFFF0000FFFFLL);
      v35.i64[1] = __PAIR64__(vaddvq_s32(v49), vaddvq_s32(v48));
      v5 += v58;
      v6 += v62;
      *v68.i8 = vand_s8(v44, 0xFFFF0000FFFFLL);
      v68.i64[1] = __PAIR64__(vaddvq_s32(v55), vaddvq_s32(v54));
      v7 += v66;
      v8 += v69;
      *v34.i8 = vand_s8(*v60.i8, 0xFFFF0000FFFFLL);
      v34.i64[1] = __PAIR64__(vaddvq_s32(v64), vaddvq_s32(v63));
      v9 += v72;
      *v36.i8 = vand_s8(*v28.i8, 0xFFFF0000FFFFLL);
      v36.i32[2] = vaddvq_s32(v71);
      v28.i32[0] = vaddvq_s32(v73);
      v74 = vbicq_s8(v31, vceqq_s16(v92, v30));
      v75 = vminq_u16(v25, v74);
      v76 = vminq_u16(v92, v74);
      v77 = vmlal_high_u16(vmull_u16(*v76.i8, *v76.i8), v76, v76);
      v10 += vaddvq_s32(vmlal_high_u16(vmull_u16(*v75.i8, *v76.i8), v75, v76));
      v36.i32[3] = v28.i32[0];
      v28.i16[0] = vaddvq_s16(v75);
      v76.i16[0] = vaddvq_s16(v76);
      v28.i32[1] = v76.i32[0];
      v12 = vaddq_s32(v26, v12);
      *v28.i8 = vand_s8(*v28.i8, 0xFFFF0000FFFFLL);
      v28.i64[1] = __PAIR64__(vaddvq_s32(v77), vaddvq_s32(vmlal_high_u16(vmull_u16(*v75.i8, *v75.i8), v75, v75)));
      v13 = vaddq_s32(v27, v13);
      v78 = vbicq_s8(v31, vceqq_s16(v29, v30));
      v79 = vminq_u16(v25, v78);
      v15 = vaddq_s32(v35, v15);
      v80 = vminq_u16(v29, v78);
      v81 = vmlal_high_u16(vmull_u16(*v79.i8, *v79.i8), v79, v79);
      v82 = vmlal_high_u16(vmull_u16(*v80.i8, *v80.i8), v80, v80);
      v16 = vaddq_s32(v68, v16);
      v11 += vaddvq_s32(vmlal_high_u16(vmull_u16(*v79.i8, *v80.i8), v79, v80));
      v17 = vaddq_s32(v34, v17);
      v79.i16[0] = vaddvq_s16(v79);
      v80.i16[0] = vaddvq_s16(v80);
      v79.i32[1] = v80.i32[0];
      v18 = vaddq_s32(v36, v18);
      *v80.i8 = vand_s8(*v79.i8, 0xFFFF0000FFFFLL);
      v80.i64[1] = __PAIR64__(vaddvq_s32(v82), vaddvq_s32(v81));
      v19 = vaddq_s32(v28, v19);
      ++a3;
      v14 -= 8;
      v20 = vaddq_s32(v80, v93);
    }

    while (v14 > 8);
    v83 = v4;
    v84 = v5;
    v85 = v6;
    v86 = v7;
    v87 = v8;
    v88 = v9;
    v89 = v10;
    v90 = v11;
  }

  *a4 = vcvt_f32_u32(vzip1_s32(*v12.i8, *&vextq_s8(v12, v12, 8uLL)));
  *(a4 + 8) = v12.u32[1];
  *(a4 + 12) = v83;
  *(a4 + 16) = vcvtq_f32_u32(vextq_s8(v12, vuzp2q_s32(vtrn1q_s32(v12, v13), v13), 0xCuLL));
  *(a4 + 32) = v84;
  *(a4 + 36) = vcvtq_f32_u32(vextq_s8(v13, vuzp2q_s32(vtrn1q_s32(v13, v15), v15), 0xCuLL));
  *(a4 + 52) = v85;
  *(a4 + 56) = vcvtq_f32_u32(vextq_s8(v15, vuzp2q_s32(vtrn1q_s32(v15, v16), v16), 0xCuLL));
  *(a4 + 72) = v86;
  *(a4 + 76) = vcvtq_f32_u32(vextq_s8(v16, vuzp2q_s32(vtrn1q_s32(v16, v17), v17), 0xCuLL));
  *(a4 + 92) = v87;
  *(a4 + 96) = vcvtq_f32_u32(vextq_s8(v17, vuzp2q_s32(vtrn1q_s32(v17, v18), v18), 0xCuLL));
  *(a4 + 112) = v88;
  *(a4 + 116) = vcvtq_f32_u32(vextq_s8(v18, vuzp2q_s32(vtrn1q_s32(v18, v19), v19), 0xCuLL));
  *(a4 + 132) = v89;
  *(a4 + 136) = vcvtq_f32_u32(vextq_s8(v19, vuzp2q_s32(vtrn1q_s32(v19, v20), v20), 0xCuLL));
  result = v20.u32[3];
  *(a4 + 152) = v90;
  *(a4 + 156) = v20.u32[3];
  return result;
}

uint64_t PDAF::PixelEngine::anonymous namespace::CorrProfileSumCols1x1V(unsigned int *a1, int a2, unint64_t a3, uint64_t a4, _WORD *a5, _WORD *a6, _WORD *a7)
{
  v9 = a1[5];
  v10 = *a4;
  v37 = *(a4 + 48);
  v12 = *(a4 + 64);
  v11 = *(a4 + 72);
  v13 = *(a4 + 80);
  v43 = *(a4 + 88);
  v44 = *(a4 + 8);
  v14 = *(a4 + 128);
  v16 = *(a4 + 144);
  v15 = *(a4 + 152);
  v36 = a1[160];
  bzero(a7, a1[121823]);
  if (!a3)
  {
  }

  v17 = 56;
  if (!*(a4 + 48))
  {
    v17 = 136;
  }

  v18 = *(a4 + v17);
  if (v9)
  {
    v19 = 0;
    v20 = v37 - a2;
    if (v37 - a2 >= 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = v14;
    }

    v22 = v21 + v20;
    v23 = (v36 >> 4);
    v24 = a5;
    v25 = a6;
    v26 = a7;
    v27 = v18;
    do
    {
      if (v20 >= 1)
      {
        v28 = (v11 + 8 * a2);
      }

      else
      {
        v28 = &v15[-4 * (v37 - a2)];
      }

      v29 = a3;
      v30 = v22;
      do
      {
        if (!v30)
        {
          v28 = v15;
          v30 = v14;
        }

        v31 = *v28 >> 3;
        v32 = v28[3];
        if (v27)
        {
          v31 = -v31;
        }

        *v24 += v28[3] >> 2;
        *v25 += (v31 + v32) >> 2;
        if (v23 < v32 || v23 < (v31 + v32))
        {
          ++*v26;
        }

        v28 += 4;
        --v30;
        --v29;
      }

      while (v29);
      if ((v10 - 3) >= 5)
      {
        if (v10 > 1)
        {
          if (v10 == 8 || v10 == 2)
          {
LABEL_54:
          }

LABEL_49:
        }

        if (v10 != 1)
        {
          if (!v10)
          {
            goto LABEL_54;
          }

          goto LABEL_49;
        }
      }

      if ((v13 - 3) >= 5)
      {
        if (v13 > 1)
        {
          if (v13 != 8 && v13 != 2)
          {
LABEL_55:
          }

LABEL_52:
        }

        if (v13 != 1)
        {
          if (v13)
          {
            goto LABEL_55;
          }

          goto LABEL_52;
        }
      }

      if (v12)
      {
        v11 += 4 * v44;
      }

      else
      {
        v11 += 2 * v44;
      }

      if (v12)
      {
        --v12;
      }

      else
      {
        v12 = 0;
      }

      v34 = v16 - 1;
      if (v16)
      {
        v15 += 2 * v43;
      }

      else
      {
        v34 = 0;
        v15 += v43;
      }

      ++v24;
      ++v25;
      ++v26;
      v27 ^= 1u;
      ++v19;
      v16 = v34;
    }

    while (v19 != v9);
  }
}

uint64_t PDAF::PixelEngine::anonymous namespace::CorrProfileSumRows2x1H(uint64_t a1, unsigned int a2, uint64_t a3, _WORD *a4, _WORD *a5)
{
  if (!a2)
  {
  }

  v5 = 0;
  v6 = *(a1 + 4);
  v7 = *(a3 + 16);
  v8 = *a3;
  v9 = *(a3 + 40);
  v10 = 1 << *a3;
  do
  {
    v11 = v7;
    v12 = v6;
    v13 = a5;
    v14 = a4;
    v15 = v9;
    if (v6)
    {
      do
      {
        if (!v11)
        {
          v15 = *(a3 + 120);
          v11 = *(a3 + 96);
        }

        *v14++ += *(v15 + 6) >> 2;
        *v13++ += *(v15 + 14) >> 2;
        v15 += 16;
        --v11;
        --v12;
      }

      while (v12);
    }

    if (v8 > 8)
    {
    }

    if ((v10 & 0xFA) != 0)
    {
      v16 = *(a3 + 32);
      if (v16)
      {
        *(a3 + 32) = v16 - 1;
        v9 += 2 * *(a3 + 8);
      }

      else
      {
        v9 += 4 * *(a3 + 8);
      }

      *(a3 + 40) = v9;
      v19 = *(a3 + 20) + 2;
    }

    else
    {
      if ((v10 & 0x101) != 0)
      {
        v9 += 2 * *(a3 + 8);
        *(a3 + 40) = v9;
        v17 = *(a3 + 20);
        LODWORD(v18) = vadd_s32(v17, 0x100000001).u32[0];
        HIDWORD(v18) = veor_s8(*&v17, 0x100000001).i32[1];
        *(a3 + 20) = v18;
        goto LABEL_16;
      }

      v9 += 2 * *(a3 + 8);
      *(a3 + 40) = v9;
      v19 = *(a3 + 20) + 1;
    }

    *(a3 + 20) = v19;
LABEL_16:
    v20 = *(a3 + 80);
    if (v20 > 8)
    {
    }

    v21 = 1 << v20;
    if ((v21 & 0xFA) != 0)
    {
      v22 = *(a3 + 112);
      if (v22)
      {
        *(a3 + 112) = v22 - 1;
        v23 = *(a3 + 120) + 2 * *(a3 + 88);
      }

      else
      {
        v23 = *(a3 + 120) + 4 * *(a3 + 88);
      }

      *(a3 + 120) = v23;
      result = (*(a3 + 100) + 2);
    }

    else
    {
      if ((v21 & 0x101) != 0)
      {
        result = *(a3 + 120) + 2 * *(a3 + 88);
        *(a3 + 120) = result;
        v25 = *(a3 + 100);
        LODWORD(v26) = vadd_s32(v25, 0x100000001).u32[0];
        HIDWORD(v26) = veor_s8(*&v25, 0x100000001).i32[1];
        *(a3 + 100) = v26;
        goto LABEL_25;
      }

      *(a3 + 120) += 2 * *(a3 + 88);
      result = (*(a3 + 100) + 1);
    }

    *(a3 + 100) = result;
LABEL_25:
    if (v11)
    {
    }

    ++v5;
  }

  while (v5 != a2);
  if (v6)
  {
    v27 = 0x80 / a2;
    do
    {
      *a4 = (v27 * *a4) >> 5;
      ++a4;
      *a5 = (v27 * *a5) >> 5;
      ++a5;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t PDAF::PixelEngine::anonymous namespace::CorrProfileSumCols2x1V(uint64_t result, int a2, unint64_t a3, uint64_t a4, _WORD *a5, _WORD *a6)
{
  if (!a3)
  {
  }

  v6 = *(result + 20);
  if (v6)
  {
    v7 = *a4;
    v8 = *(a4 + 8);
    v9 = *(a4 + 64);
    v10 = *(a4 + 72);
    v11 = *(a4 + 88);
    v12 = *(a4 + 128);
    result = (*(a4 + 48) - a2);
    if (result >= 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(a4 + 128);
    }

    v14 = v13 + result;
    v16 = *(a4 + 144);
    v15 = *(a4 + 152);
    v17 = *(a4 + 80);
    v18 = a5;
    v19 = 0;
    v20 = a6;
    while (1)
    {
      v21 = v15 + -16 * result;
      if (result >= 1)
      {
        v21 = v10 + 16 * a2;
      }

      v22 = a3;
      v23 = v14;
      do
      {
        if (!v23)
        {
          v21 = v15;
          v23 = v12;
        }

        *v18 += *(v21 + 6) >> 2;
        *v20 += *(v21 + 14) >> 2;
        v21 += 16;
        --v23;
        --v22;
      }

      while (v22);
      if ((v7 - 3) >= 5)
      {
        if (v7 > 1)
        {
          if (v7 == 8 || v7 == 2)
          {
LABEL_40:
          }

LABEL_35:
        }

        if (v7 != 1)
        {
          if (!v7)
          {
            goto LABEL_40;
          }

          goto LABEL_35;
        }
      }

      if ((v17 - 3) >= 5)
      {
        if (v17 > 1)
        {
          if (v17 != 8 && v17 != 2)
          {
LABEL_41:
          }

LABEL_38:
        }

        if (v17 != 1)
        {
          if (v17)
          {
            goto LABEL_41;
          }

          goto LABEL_38;
        }
      }

      v24 = v10 + 2 * v8;
      v10 += 4 * v8;
      if (!v9)
      {
        v10 = v24;
      }

      if (v9-- == 0)
      {
        v9 = 0;
      }

      v26 = v15 + 2 * v11;
      v15 += 4 * v11;
      v27 = v16 - 1;
      if (!v16)
      {
        v27 = 0;
        v15 = v26;
      }

      ++v18;
      ++v20;
      ++v19;
      v16 = v27;
      if (v19 == v6)
      {
        v28 = 0x80 / a3;
        do
        {
          *a5 = (*a5 * v28) >> 5;
          ++a5;
          *a6 = (*a6 * v28) >> 5;
          ++a6;
          --v6;
        }

        while (v6);
        return result;
      }
    }
  }

  return result;
}

uint64_t PDAF::PixelEngine::anonymous namespace::CorrGetPhaseChunk(uint64_t result, uint64_t a2, float *a3, float *a4)
{
  v4 = 0;
  v51 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 340);
  v6 = (a2 + 8);
  do
  {
    v7 = *(v6 - 2);
    v8 = (*(v6 - 1) * v5) - (v7 * v7);
    v9 = 0.0;
    if (v8 >= 0.0)
    {
      v10 = *v6;
      v11 = (v6[2] * v5) - (v10 * v10);
      if (v11 >= 0.0)
      {
        v12 = ((v10 * -v7) + (v6[1] * v5));
        v13 = sqrt(v8) * sqrt(v11);
        if (v13 == 0.0)
        {
          v13 = 1.0;
        }

        v9 = v12 / v13;
      }
    }

    v50[v4++] = v9;
    v6 += 5;
  }

  while (v4 != 17);
  v14 = *(result + 336) - *(result + 332);
  v15 = (v14 + 1);
  v16 = v15 / 2;
  if (v14 < 0)
  {
    v19 = -1.0;
    v18 = 1.0;
    v20 = v15 / 2;
  }

  else
  {
    v17 = 0;
    v18 = 1.0;
    v19 = -1.0;
    v20 = v15 / 2;
    do
    {
      v21 = v50[v17];
      if (v19 < v21)
      {
        v20 = v17;
        v19 = v50[v17];
      }

      if (v18 > v21)
      {
        v18 = v50[v17];
      }

      ++v17;
    }

    while (v15 != v17);
  }

  v22 = *(result + 356);
  if (!v22)
  {
    goto LABEL_44;
  }

  if (v20 > 0xF || ((1 << v20) & 0x8101) == 0)
  {
    v24 = *(result + 360);
    if (v20 >= 8)
    {
      v25 = 7;
    }

    else
    {
      v25 = 14;
    }

    if (v20 >= 8)
    {
      v26 = 1;
    }

    else
    {
      v26 = 9;
    }

    v27 = v25 >= v26;
    v28 = v25 - v26;
    if (!v27)
    {
      v28 = 0;
    }

    v29 = v28 + 1;
    v30 = &v50[v26];
    v31 = -1.0;
    do
    {
      v32 = *v30;
      if (v31 < *v30 && *(v30 - 1) < (v24 + v32) && v30[1] < (v24 + v32))
      {
        v31 = *v30;
      }

      ++v30;
      --v29;
    }

    while (v29);
    v22 = (v19 - v31) < *(result + 364);
  }

  else
  {
    v22 = 0;
  }

  v33 = 0;
  if (v20 < 2 || v20 >= v14 - 1)
  {
    goto LABEL_45;
  }

  v34 = *(result + 368);
  v35 = &v50[v20];
  v36 = *v35;
  if (*v35 >= (v34 + *(v35 - 1)) || v36 >= (v34 + v35[1]))
  {
LABEL_44:
    v33 = 0;
    goto LABEL_45;
  }

  if (v36 < (v34 + *(v35 - 2)))
  {
LABEL_57:
    *a4 = 0.0;
    v39 = 0.0;
    goto LABEL_62;
  }

  v33 = v36 < (v34 + v35[2]);
LABEL_45:
  if ((v19 - v18) < *(result + 372) || (v22 & 1) != 0 || v33)
  {
    goto LABEL_57;
  }

  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  if (v19 > 1.0)
  {
    v19 = 1.0;
  }

  *a4 = v19;
  if (v20)
  {
    v37 = v20 < v14;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    v40 = v20 - 1;
    v41 = v20;
    v42 = v20 + 1;
    v43 = v50[v40];
    v44 = v50[v20];
    v45 = v50[v42];
    v46 = v44 - v43;
    v47 = v43 - v45;
    v48 = v45 - v44;
    v49 = ((v47 * v20) + (v42 * v46)) + (v40 * v48);
    if (v49 != 0.0)
    {
      v41 = ((((v41 * v41) * v47) + ((v42 * v42) * v46)) + ((v40 * v40) * v48)) / (v49 + v49);
    }

    v38 = v41 - v16;
  }

  else
  {
    v38 = (v20 - v16);
  }

  v39 = v38 * -2.0;
LABEL_62:
  *a3 = v39;
  return result;
}

uint64_t PDAF::PixelEngine::anonymous namespace::FlowStatsEdgeToOutput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0.0;
  do
  {
    v6 = *(a2 + v3 * 4);
    *v4.i32 = *v4.i32 + (v6 - v7);
    v5 = v5 + v7;
    ++v3;
  }

  while (v3 != 14);
  if (v5 == 0.0)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v5;
  }

  v9 = (*v4.i32 / v8) + -1.0;
  if (*v4.i32 == 0.0)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = *v4.i32;
  }

  if (v5 <= *v4.i32)
  {
    v11 = 1.0 - (v5 / v10);
  }

  else
  {
    v11 = v9;
  }

  if (v11 >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = -v11;
  }

  v13 = 0.0;
  if (v12 > 0.2)
  {
    v13 = 1.0;
    if (v12 < 0.6)
    {
      v13 = (v12 + -0.2) / 0.4;
    }
  }

  if (v11 >= 0.0)
  {
    *v4.i32 = v13 * *(a1 + 36);
  }

  else
  {
    *v4.i32 = -(v13 * *(a1 + 36));
  }

  v14 = (*v4.i32 + 1.0) * 0.5;
  *v4.i32 = 1.0 - v14;
  v15 = vdupq_lane_s32(v4, 0);
  v16 = a2 + 60;
  v17 = 0uLL;
  v18 = &xmmword_2249D2364;
  v19 = &xmmword_2249D239C;
  v20 = 12;
  v21 = vdupq_n_s32(0x3A800000u);
  __asm { FMOV            V5.4S, #1.0 }

  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
  v33 = 0uLL;
  v34 = 0uLL;
  v35 = 0uLL;
  do
  {
    v36 = *(v16 - 56);
    v37 = vsqrtq_f32(vmulq_f32(vcvtq_f32_u32(v36), v21));
    v38 = *v18++;
    v39 = vmulq_f32(vcvtq_f32_u32(*v16), vcvtq_f32_u32(v38));
    v40 = *v19++;
    v41 = vmulq_f32(v39, vbslq_s8(vcgtq_f32(v37, _Q5), _Q5, v37));
    v42 = vcvtq_u64_f64(vcvtq_f64_f32(*v41.f32));
    v43 = vcvtq_u64_f64(vcvt_hight_f64_f32(v41));
    v44 = vmulq_f32(v41, vmlaq_f32(vmulq_n_f32(vsubq_f32(_Q5, v40), v14), v15, v40));
    v45 = vcvtq_u64_f64(vcvtq_f64_f32(*v44.f32));
    v46 = vcvtq_u64_f64(vcvt_hight_f64_f32(v44));
    v35 = vaddq_s64(v35, v43);
    v34 = vaddq_s64(v34, v42);
    v33 = vaddq_s64(v33, v46);
    v47 = *(v16 + 56);
    v32 = vaddq_s64(v32, v45);
    v42.i64[0] *= v47;
    result = SDWORD2(v47);
    v43.i64[0] *= SDWORD2(v47);
    v27 = vaddw_high_u32(v27, v36);
    v17 = vaddw_u32(v17, *v36.i8);
    v42.i64[1] *= SDWORD1(v47);
    v43.i64[1] *= SHIDWORD(v47);
    v36.i64[0] = v45.i64[0] * v47;
    v36.i64[1] = v45.i64[1] * SDWORD1(v47);
    v31 = vaddq_s64(v43, v31);
    v46.i64[0] *= SDWORD2(v47);
    v30 = vaddq_s64(v42, v30);
    v46.i64[1] *= SHIDWORD(v47);
    v29 = vaddq_s64(v46, v29);
    v28 = vaddq_s64(v36, v28);
    v16 += 16;
    v20 -= 4;
  }

  while (v20);
  v49 = vaddvq_s64(vaddq_s64(v28, v29));
  v50 = vaddvq_s64(vaddq_s64(v30, v31));
  v51 = vaddvq_s64(vaddq_s64(v32, v33));
  v52 = vaddvq_s64(vaddq_s64(v34, v35));
  if (v52)
  {
    v50 = 16 * v50 / v52;
  }

  v53 = v49;
  if (v51)
  {
    v53 = 16 * v49 / v51;
  }

  *(a3 + 12) = *(a2 + 168);
  if (v52)
  {
    *a3 = (vaddvq_s64(vaddq_s64(v17, v27)) + 8) >> 4;
    *(a3 + 4) = v52;
    *(a3 + 8) = v50;
    if (v51)
    {
      if (v53 >= 0)
      {
        v54 = v53;
      }

      else
      {
        v54 = -v53;
      }

      if (v54 >= 0xA1)
      {
        if (v54 < 0x140)
        {
          *(a3 + 8) = (v53 * (((v54 << 10) - 163840) / 0xA0uLL) + (1024 - ((v54 << 10) - 163840) / 0xA0uLL) * v50) >> 10;
        }

        else
        {
          *(a3 + 8) = v53;
        }
      }
    }
  }

  else
  {
    *(a3 + 8) = 0;
    *a3 = 0;
  }

  return result;
}

float PDAF::PixelEngine::anonymous namespace::FlowEstimateGainError(unsigned int a1, _DWORD *a2)
{
  if (a1 >= 9)
  {
  }

  v2 = qword_2249D2408[a1];
  if (((1 << a1) & 0x198) != 0)
  {
    goto LABEL_28;
  }

  if (a1 == 5)
  {
    v3 = 0;
    result = -1.0;
    do
    {
      if ((v3 & 0x7FFFFFFD) != 0)
      {
        v5 = &a2[v3];
        v6 = v5[4];
        if (v6)
        {
          v7 = v5[8];
          if (v7)
          {
            if (a2[v3] >= 0x41u)
            {
              v8 = (v6 / v7) + -1.0;
              if (v8 < 0.0)
              {
                v8 = -v8;
              }

              if (fmaxf(v8, 0.0) > result)
              {
                result = v8;
              }
            }
          }
        }
      }

      ++v3;
    }

    while (v2 != v3);
    return result;
  }

  if (a1 == 6)
  {
    v9 = 0;
    result = -1.0;
    do
    {
      if ((v9 & 0x7FFFFFFD) != 1)
      {
        v10 = &a2[v9];
        v11 = v10[4];
        if (v11)
        {
          v12 = v10[8];
          if (v12)
          {
            if (a2[v9] >= 0x41u)
            {
              v13 = (v11 / v12) + -1.0;
              if (v13 < 0.0)
              {
                v13 = -v13;
              }

              if (fmaxf(v13, 0.0) > result)
              {
                result = v13;
              }
            }
          }
        }
      }

      ++v9;
    }

    while (v2 != v9);
    return result;
  }

  if (a1 < 2)
  {
LABEL_28:
    v14 = a2 + 8;
    result = -1.0;
    do
    {
      v15 = *(v14 - 4);
      if (v15 && *v14 && *(v14 - 8) >= 0x41)
      {
        v16 = (v15 / *v14) + -1.0;
        if (v16 < 0.0)
        {
          v16 = -v16;
        }

        if (fmaxf(v16, 0.0) > result)
        {
          result = v16;
        }
      }

      ++v14;
      --v2;
    }

    while (v2);
  }

  else
  {
    v17 = a2[4];
    result = -1.0;
    if (v17)
    {
      v18 = a2[8];
      if (v18)
      {
        if (*a2 >= 0x41u)
        {
          result = (v17 / v18) + -1.0;
          if (result < 0.0)
          {
            return -result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t PDAF::PixelEngine::anonymous namespace::FlareCompareGainError(PDAF::PixelEngine::_anonymous_namespace_ *this, const float *a2, const float *a3)
{
  if (*this >= *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*this > *a2)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

float PDAF::PixelEngine::anonymous namespace::CurveEstimate(uint64_t a1, unint64_t a2, float a3)
{
  if (a2 < 2)
  {
    v4 = 1;
  }

  else
  {
    v3 = (a1 + 8);
    v4 = 1;
    while (*v3 <= a3)
    {
      ++v4;
      v3 += 2;
      if (a2 == v4)
      {
        v4 = a2;
        break;
      }
    }
  }

  if (v4 >= a2 - 1)
  {
    v4 = a2 - 1;
  }

  v5 = (a1 + 8 * v4);
  v6 = *(v5 - 2);
  if (*v5 == v6)
  {
    return *(v5 - 1);
  }

  v8 = (a3 - v6) / (*v5 - v6);
  if (v8 <= 1.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = v8 < 0.0;
  v11 = 0.0;
  if (!v10)
  {
    v11 = v9;
  }

  return ((1.0 - v11) * *(v5 - 1)) + (v11 * v5[1]);
}

uint64_t PDAF::PixelEngine::anonymous namespace::ShiftMapTileLevelProcess(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, float *a8, unsigned int *a9)
{
  v43 = *MEMORY[0x277D85DE8];
  v9 = *(result + 720);
  v10 = vcvts_n_f32_u32(*(result + 722), 0xFuLL);
  v11 = *(result + 704);
  if (v11)
  {
    v10 = -1.0;
  }

  v12 = 0.0;
  if (v11)
  {
    v9 = 0.0;
  }

  v13 = (100 - *(result + 716)) / 200.0;
  memset(v42, 0, sizeof(v42));
  if (a5 <= a7)
  {
    v14 = a7 + a3;
    v15 = a5 + a3;
    v16 = a4 + a2;
    v17 = a6 + a2;
    if (a6 + a2 <= a4 + a2)
    {
      v17 = a4 + a2;
    }

    if (v14 <= v15)
    {
      v14 = a5 + a3;
    }

    do
    {
      if ((v15 & 0x80000000) == 0 && v15 < *(result + 34) && a4 <= a6)
      {
        v19 = v16;
        do
        {
          if ((v19 & 0x80000000) == 0)
          {
            v20 = *(result + 32);
            if (v19 < v20)
            {
              v21 = (result + 427324 + 112 * (v19 + v15 * v20));
              v22 = 14;
              v23 = v42 + 1;
              do
              {
                *(v23 - 1) = *(v21 - 1) + *(v23 - 1);
                v24 = *v21;
                v21 += 2;
                *v23 += LODWORD(v24);
                v23 += 2;
                --v22;
              }

              while (v22);
            }
          }

          v25 = v19++ == v17;
        }

        while (!v25);
      }

      v25 = v15++ == v14;
    }

    while (!v25);
    v12 = DWORD1(v42[0]);
  }

  v26 = 1.0 - v13;
  v40[0] = v12;
  v27 = 1;
  v28 = 12;
  do
  {
    v12 = v12 + *(v42 + v28);
    v40[v27++] = v12;
    v28 += 8;
  }

  while (v27 != 14);
  if (v41 != 0.0)
  {
    for (i = 0; i != 14; ++i)
    {
      v40[i] = v40[i] / v41;
    }
  }

  v30 = 0;
  v31 = 0;
  v32 = 13;
  do
  {
    v33 = v40[v30];
    if (v33 <= v13 && v40[v30 + 1] > v13)
    {
      v31 = v30 + 1;
    }

    if (v33 < v26 && v40[v30 + 1] >= v26)
    {
      v32 = v30 + 1;
    }

    ++v30;
  }

  while (v30 != 13);
  if (v31 > v32)
  {
    v34 = 0;
LABEL_45:
    v39 = 0.0;
    goto LABEL_46;
  }

  v34 = 0;
  v35 = v32 - v31 + 1;
  v36 = ((v42 + 8 * v31) | 4);
  v37 = 0.0;
  do
  {
    v37 = v37 + *(v36 - 1);
    v38 = *v36;
    v36 += 2;
    v34 += LODWORD(v38);
    --v35;
  }

  while (v35);
  if (!v34)
  {
    goto LABEL_45;
  }

  v39 = -((v9 + (v37 / v34)) * v10);
LABEL_46:
  *a8 = v39;
  *a9 = v34;
  return result;
}

H16ISP::H16ISPGraphExclaveAutoExposureNode *H16ISP::H16ISPGraphExclaveAutoExposureNode::H16ISPGraphExclaveAutoExposureNode(H16ISP::H16ISPGraphExclaveAutoExposureNode *this, H16ISP::H16ISPDevice *a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 19);
  *v6 = &unk_283814668;
  *(v6 + 80) = 0;
  *(v6 + 88) = a2;
  *(v6 + 96) = a3;
  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(this + 24);
    v10 = 136315394;
    v11 = "H16ISPGraphExclaveAutoExposureNode";
    v12 = 1024;
    v13 = v8;
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "%s - [Exclaves]: channel %d\n", &v10, 0x12u);
  }

  return this;
}

void H16ISP::H16ISPGraphExclaveAutoExposureNode::~H16ISPGraphExclaveAutoExposureNode(H16ISP::H16ISPGraphExclaveAutoExposureNode *this)
{
  v5 = *MEMORY[0x277D85DE8];
  *this = &unk_283814668;
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "~H16ISPGraphExclaveAutoExposureNode";
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_INFO, "%s - [Exclaves]: ~H16ISPGraphExclaveAutoExposureNode\n", &v3, 0xCu);
  }

  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);
}

{
  H16ISP::H16ISPGraphExclaveAutoExposureNode::~H16ISPGraphExclaveAutoExposureNode(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISP::H16ISPGraphExclaveAutoExposureNode::onActivate(H16ISP::H16ISPGraphExclaveAutoExposureNode *this)
{
  v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_INFO, "[Exclaves]: H16ISPGraphAutoExposureNode::onActivate\n", v3, 2u);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphExclaveAutoExposureNode::onDeactivate(H16ISP::H16ISPGraphExclaveAutoExposureNode *this)
{
  v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_INFO, "[Exclaves]: H16ISPGraphAutoExposureNode::onDeactivate\n", v3, 2u);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphExclaveAutoExposureNode::onMessageProcessing(H16ISP::H16ISPGraphExclaveAutoExposureNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a2 + 8));
  v4 = *(a2 + 90);
  v5 = *(a2 + 388);
  pthread_mutex_unlock((a2 + 8));
  v6 = H16ISP::H16ISPDevice::enabledExclaveDebug(*(this + 11));
  v7 = MEMORY[0x277D86220];
  if (v6)
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(this + 24);
      *buf = 136315650;
      v44 = "onMessageProcessing";
      v45 = 1024;
      v46 = v9;
      v47 = 1024;
      v48 = v4;
      _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_DEFAULT, "[Exclaves]: H16ISPGraphExclaveAutoExposureNode::%s EK AE RunKit CamChan %d, requestID=0x%08X\n", buf, 0x18u);
    }
  }

  bzero(&v44, 0x350uLL);
  v49 = *(this + 24);
  *buf = 196608;
  kdebug_trace();
  v10 = ispExclaveKitCommand();
  kdebug_trace();
  if (v10)
  {
    goto LABEL_7;
  }

  if (v55 == 1)
  {
    if (!H16ISP::H16ISPDevice::enabledExclaveDebug(*(this + 11)))
    {
      return 0;
    }

    v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v7)
    {
      v21 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v21;
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v25 = 136315394;
    v26 = "onMessageProcessing";
    v27 = 1024;
    LODWORD(v28) = v4;
    v17 = "[Exclaves]: H16ISPGraphExclaveAutoExposureNode::%s EK RunKit AE skipped for reqID 0x%08X\n";
    v18 = v21;
    v19 = OS_LOG_TYPE_DEFAULT;
    v20 = 18;
LABEL_26:
    _os_log_impl(&dword_2247DB000, v18, v19, v17, &v25, v20);
    return 0;
  }

  if (v55 == 2)
  {
LABEL_7:
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v7)
    {
      v11 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPGraphExclaveAutoExposureNode::onMessageProcessing(buf, v4, v11);
    }

    return 0;
  }

  *&v56 = v50;
  *(&v56 + 1) = v51;
  *&v14 = v52;
  *(&v14 + 1) = v54[0];
  v57 = v14;
  v58 = *&v54[1];
  v59 = v54[3];
  v60 = v53;
  v15 = *(this + 11);
  if (v5)
  {
    if (!H16ISP::H16ISPDevice::enabledExclaveDebug(v15))
    {
      return 0;
    }

    v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v7)
    {
      v16 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v16;
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v25 = 136315138;
    v26 = "onMessageProcessing";
    v17 = "[Exclaves]: H16ISPGraphAutoExposureNode::%s In concurrent mode, skip apply AE Settings to FW\n";
    v18 = v16;
    v19 = OS_LOG_TYPE_DEFAULT;
    v20 = 12;
    goto LABEL_26;
  }

  v22 = H16ISP::H16ISPDevice::SetExclaveAEConfig(v15, *(this + 24), &v56);
  if (!v22)
  {
    if (!H16ISP::H16ISPDevice::enabledExclaveDebug(*(this + 11)))
    {
      return 0;
    }

    v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v7)
    {
      v24 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v24;
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v25 = 136317186;
    v26 = "onMessageProcessing";
    v27 = 2048;
    v28 = v56;
    v29 = 2048;
    v30 = *(&v56 + 1);
    v31 = 1024;
    v32 = DWORD2(v57);
    v33 = 1024;
    v34 = HIDWORD(v57);
    v35 = 1024;
    v36 = v57;
    v37 = 1024;
    v38 = DWORD1(v57);
    v39 = 1024;
    v40 = v60;
    v41 = 1024;
    v42 = v55;
    v17 = "[Exclaves]: H16ISPGraphAutoExposureNode::%s Debug AE results: reqID %llu aeCounter %llu exp %d ET %d Sensor AG %d Sensor DG %d ISP DG %d resultstatus=%d\n";
    v18 = v24;
    v19 = OS_LOG_TYPE_INFO;
    v20 = 68;
    goto LABEL_26;
  }

  v12 = v22;
  v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v7)
  {
    v23 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v23;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPGraphExclaveAutoExposureNode::onMessageProcessing(v12, v23);
  }

  return v12;
}

void H16ISP::SystemStatus::~SystemStatus(CFTypeRef *this)
{
  if (objc_opt_class())
  {
    [H16ISP::stMediaStatusDomainPublisher invalidate];

    H16ISP::stMediaStatusDomainPublisher = 0;
    if (*this)
    {
      CFRelease(*this);
      *this = 0;
    }
  }
}

void H16ISP::SystemStatus::updateData(H16ISP::SystemStatus *this, audit_token_t *a2, char a3)
{
  if (objc_opt_class())
  {
    if (objc_opt_class())
    {
      if (objc_opt_class())
      {
        if (objc_opt_class())
        {
          if (H16ISP::stMediaStatusDomainPublisher)
          {
            v6 = *&a2->val[4];
            v13 = *a2->val;
            v14 = v6;
            v7 = [MEMORY[0x277D6B8E8] attributionWithAuditToken:&v13];
            if (v7)
            {
              v8 = v7;
              v9 = [objc_alloc(MEMORY[0x277D6B9C0]) initWithCameraIdentifier:*this];
              if (v9)
              {
                v10 = v9;
                *&v13 = 0;
                *(&v13 + 1) = &v13;
                *&v14 = 0x3052000000;
                *(&v14 + 1) = __Block_byref_object_copy__2;
                v15 = __Block_byref_object_dispose__2;
                v16 = [objc_alloc(MEMORY[0x277D6B9B8]) initWithCameraDescriptor:v9 activityAttribution:v8];

                if (*(*(&v13 + 1) + 40))
                {
                  v11[0] = MEMORY[0x277D85DD0];
                  v11[1] = 3221225472;
                  v11[2] = ___ZN6H16ISP12SystemStatus10updateDataE13audit_token_tb_block_invoke;
                  v11[3] = &unk_278531C18;
                  v12 = a3;
                  v11[4] = &v13;
                  [H16ISP::stMediaStatusDomainPublisher updateVolatileDataWithBlock:v11];
                }

                _Block_object_dispose(&v13, 8);
              }
            }
          }
        }
      }
    }
  }
}

void sub_224936F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN6H16ISP12SystemStatus10updateDataE13audit_token_tb_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (*(a1 + 40) == 1)
  {
    [a2 addCameraAttribution:v3];
  }

  else
  {
    [a2 removeCameraAttribution:v3];
  }

  v4 = *(*(*(a1 + 32) + 8) + 40);
}

uint64_t H16ISPFirmwareWork::verifyAndCreateFilepath(H16ISPFirmwareWork *this, char *__s, unsigned int a3, char *a4)
{
  v7 = strlen(__s);
  if (v7 != a3)
  {
    return 0;
  }

  v8 = v7;
  if (strstr(__s, "./"))
  {
    return 0;
  }

  v10 = strstr(__s, "../");
  result = 0;
  if (a3 <= 0xC0 && !v10)
  {
    if (!a4)
    {
      operator new[]();
    }

    strcpy(a4, "/private/var/mobile/Media/DCIM");
    if (*__s != 47)
    {
      *&a4[strlen(a4)] = 47;
    }

    strncat(a4, __s, v8);
    return 1;
  }

  return result;
}

uint64_t H16ISPFirmwareWork::RPCFileInfo(uint64_t a1, uint64_t a2, int a3)
{
  if (os_variant_allows_internal_security_policies() && (os_variant_has_internal_content() & 1) != 0)
  {
    if (a3 == 1)
    {
      if (*(a2 + 8) == 208)
      {
        operator new[]();
      }

      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        H16ISPFirmwareWork::RPCFileInfo();
      }
    }

    else
    {
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        H16ISPFirmwareWork::RPCFileInfo();
      }
    }

    return 3;
  }

  else
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::RPCFileInfo();
    }

    return 4;
  }
}

uint64_t H16ISPFirmwareWork::IsInternalVariant(H16ISPFirmwareWork *this)
{
  result = os_variant_allows_internal_security_policies();
  if (result)
  {

    return os_variant_has_internal_content();
  }

  return result;
}

uint64_t H16ISPFirmwareWork::RPCFileRead(uint64_t a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_variant_allows_internal_security_policies() && (os_variant_has_internal_content() & 1) != 0)
  {
    if (a3 == 2)
    {
      if (*(a2 + 8) == 208)
      {
        operator new[]();
      }

      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        H16ISPFirmwareWork::RPCFileRead();
      }
    }

    else
    {
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        H16ISPFirmwareWork::RPCFileRead();
      }
    }

    return 3;
  }

  else
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::RPCFileRead();
    }

    return 4;
  }
}

uint64_t H16ISPFirmwareWork::RPCFileWrite(uint64_t a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_variant_allows_internal_security_policies() && (os_variant_has_internal_content() & 1) != 0)
  {
    if (a3 == 2)
    {
      if (*(a2 + 8) == 208)
      {
        operator new[]();
      }

      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        H16ISPFirmwareWork::RPCFileWrite();
      }
    }

    else
    {
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        H16ISPFirmwareWork::RPCFileWrite();
      }
    }

    return 3;
  }

  else
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::RPCFileWrite();
    }

    return 4;
  }
}

uint64_t H16ISPFirmwareWork::RPCRunGMC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 208);
  if (v3)
  {
    goto LABEL_2;
  }

  v6 = *(a1 + 216);
  if (!v6)
  {
    goto LABEL_11;
  }

  if (!GMCInitializer::isValid(v6))
  {
    GMCInitializer::refresh(*(a1 + 216));
  }

  if (GMCInitializer::isValid(*(a1 + 216)))
  {
    operator new();
  }

  v3 = *(a1 + 208);
  if (v3)
  {
LABEL_2:

    return GMCProcessor::run(v3, a2);
  }

  else
  {
LABEL_11:
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::RPCRunGMC();
    }

    return 2;
  }
}

uint64_t H16ISPFirmwareWork::PDAFProcessX1Wrapper(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 != 2)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::PDAFProcessX1Wrapper();
    }

    return 3;
  }

  if (a2[4] <= 0x7EF9F)
  {
    v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::PDAFProcessX1Wrapper();
    }

    return 3;
  }

  PDAF::PixelEngine::Process_x1(*a2, a2[3]);
  return 0;
}

uint64_t H16ISPFirmwareWork::PDAFProcessX2Wrapper(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 != 3)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::PDAFProcessX2Wrapper();
    }

    return 3;
  }

  if (a2[7] <= 0x7EF9F)
  {
    v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::PDAFProcessX2Wrapper();
    }

    return 3;
  }

  PDAF::PixelEngine::Process_x2(*a2, a2[3], a2[6]);
  return 0;
}

uint64_t H16ISPFirmwareWork::PDAFProcessX3Wrapper(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 4)
  {
    if (*(a2 + 80) > 0x7EF9FuLL)
    {
      PDAF::PixelEngine::Process_x3(*a2, *(a2 + 24), *(a2 + 48), *(a2 + 72));
    }

    v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::PDAFProcessX3Wrapper();
    }
  }

  else
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::PDAFProcessX3Wrapper();
    }
  }

  return 3;
}

uint64_t H16ISPFirmwareWork::PDAFProcessX4Wrapper(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 5)
  {
    if (*(a2 + 104) > 0x7EF9FuLL)
    {
      PDAF::PixelEngine::Process_x4(*a2, *(a2 + 24), *(a2 + 48), *(a2 + 72), *(a2 + 96));
    }

    v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::PDAFProcessX4Wrapper();
    }
  }

  else
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::PDAFProcessX4Wrapper();
    }
  }

  return 3;
}

uint64_t H16ISPFirmwareWork::ZFProcessX1Wrapper(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 != 2)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::ZFProcessX1Wrapper();
    }

    return 3;
  }

  if (a2[4] <= 0x7EFAB)
  {
    v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::ZFProcessX1Wrapper();
    }

    return 3;
  }

  ZF::RPC::Process_x1(*a2, a2[3]);
  return 0;
}

uint64_t H16ISPFirmwareWork::ZFProcessX2Wrapper(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 != 3)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::ZFProcessX2Wrapper();
    }

    return 3;
  }

  if (a2[7] <= 0x7EFAB)
  {
    v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::ZFProcessX2Wrapper();
    }

    return 3;
  }

  ZF::RPC::Process_x2(*a2, a2[3], a2[6]);
  return 0;
}

uint64_t H16ISPFirmwareWork::BlurMProcessWrapper(uint64_t a1, uint64_t a2, int a3)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    v3 = *a2;
    v4 = *(a2 + 48);
    v8[0] = *(a2 + 24);
    v8[1] = v4;
    v8[2] = *(a2 + 72);
    if (*(a2 + 8) == 591796)
    {
      BlurM::Process(v3, v8);
      return 0;
    }

    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::BlurMProcessWrapper();
    }
  }

  else
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::BlurMProcessWrapper();
    }
  }

  return 3;
}

uint64_t H16ISPFirmwareWork::SPDProcessWrapper(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 2)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::SPDProcessWrapper();
    }

    return 3;
  }

  if (*(a2 + 8) <= 0x10008FuLL)
  {
    v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::SPDProcessWrapper();
    }

    return 3;
  }

  SPD::Process(*a2, *(a2 + 24));
  return 0;
}

uint64_t H16ISPFirmwareWork::FLDProcessWrapper(uint64_t a1, uint64_t *a2, int a3)
{
  __dst = 0;
  if (a3 != 2)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::FLDProcessWrapper();
    }

    return 3;
  }

  if (a2[1] != 10408)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      H16ISPFirmwareWork::FLDProcessWrapper();
    }

    return 3;
  }

  v5 = *a2;
  v6 = a2[3];
  v7 = *(a1 + 224);
  if (v7 && !H16ISP::H16ISPFirmwareWorkSharedBuffers::SharedBufferGet(v7, 0x18u, a2[4], &__dst) && __dst)
  {
    memcpy(__dst, v6, a2[4]);
    v6 = __dst;
  }

  FLD::Process(v5, v6);
  result = 0;
  if (*(a1 + 224))
  {
    if (__dst)
    {
      H16ISP::H16ISPFirmwareWorkSharedBuffers::SharedBufferPut(*(a1 + 224), 0x18u);
      return 0;
    }
  }

  return result;
}

uint64_t H16ISPFirmwareWork::FirmwareRPC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = gFirmwareWorkCFPrefs;
  if (*(a2 + 32))
  {
    v7 = 0;
    v8 = (a2 + 488);
    v9 = (a2 + 48);
    do
    {
      v10 = v9[10];
      if (v4)
      {
        v11 = *(a1 + 8 * *(v9 - 3));
        if (v11)
        {
          H16ISPMetrics::StartTimer(v11);
        }
      }

      *a3 = 0;
      v12 = kdebug_trace();
      v13 = 5;
      switch(*(v9 - 3))
      {
        case 4:
          v14 = H16ISPFirmwareWork::RPCFileInfo(v12, v8, v10);
          goto LABEL_16;
        case 5:
          v14 = H16ISPFirmwareWork::RPCFileRead(v12, v8, v10);
          goto LABEL_16;
        case 6:
          v14 = H16ISPFirmwareWork::RPCFileWrite(v12, v8, v10);
LABEL_16:
          v13 = v14;
          *a3 = 1;
          break;
        case 13:
          v15 = H16ISPFirmwareWork::RPCRunGMC(a1, v8);
          goto LABEL_21;
        case 14:
          v15 = H16ISPFirmwareWork::PDAFProcessX1Wrapper(v12, v8, v10);
          goto LABEL_21;
        case 15:
          v15 = H16ISPFirmwareWork::PDAFProcessX2Wrapper(v12, v8, v10);
          goto LABEL_21;
        case 16:
          v15 = H16ISPFirmwareWork::PDAFProcessX3Wrapper(v12, v8, v10);
          goto LABEL_21;
        case 17:
          v15 = H16ISPFirmwareWork::PDAFProcessX4Wrapper(v12, v8, v10);
          goto LABEL_21;
        case 18:
          v15 = H16ISPFirmwareWork::BlurMProcessWrapper(v12, v8, v10);
          goto LABEL_21;
        case 19:
          v15 = H16ISPFirmwareWork::SPDProcessWrapper(v12, v8, v10);
          goto LABEL_21;
        case 20:
          v15 = H16ISPFirmwareWork::ZFProcessX1Wrapper(v12, v8, v10);
          goto LABEL_21;
        case 21:
          v15 = H16ISPFirmwareWork::ZFProcessX2Wrapper(v12, v8, v10);
          goto LABEL_21;
        case 24:
          v15 = H16ISPFirmwareWork::FLDProcessWrapper(a1, v8, v10);
LABEL_21:
          v13 = v15;
          break;
        default:
          break;
      }

      kdebug_trace();
      *v9 = v13;
      v4 = gFirmwareWorkCFPrefs;
      if (gFirmwareWorkCFPrefs == 1)
      {
        v16 = *(a1 + 8 * *(v9 - 3));
        if (v16)
        {
          H16ISPMetrics::StopTimer(v16);
          v4 = gFirmwareWorkCFPrefs;
        }

        else
        {
          v4 = 1;
        }
      }

      ++*(a1 + 200);
      ++v7;
      v8 += 24;
      v9 += 14;
    }

    while (v7 < *(a2 + 32));
  }

  if ((v4 & 1) != 0 && *(a1 + 200) >= 0x400u)
  {
    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    v18 = MEMORY[0x277D86220];
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v17 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v17;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, v17, OS_LOG_TYPE_DEFAULT, "*** Metrics report for firmware work processor ***\n", buf, 2u);
    }

    for (i = 0; i != 25; ++i)
    {
      if (*(a1 + 8 * i))
      {
        v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v18)
        {
          v20 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v20;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v24 = i;
          _os_log_impl(&dword_2247DB000, v20, OS_LOG_TYPE_DEFAULT, "*** Metrics for command %d ***\n", buf, 8u);
        }

        H16ISPMetrics::PrintMetricsSummary(*(a1 + 8 * i));
      }
    }

    v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v18)
    {
      v21 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v21;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, v21, OS_LOG_TYPE_DEFAULT, "*** End report ***\n", buf, 2u);
    }

    *(a1 + 200) = 0;
  }

  return 0;
}

void H16ISPFirmwareWork::H16ISPFirmwareWork(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 200) = 0;
  v3 = a3[1];
  *(a1 + 224) = *a3;
  *(a1 + 232) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_224938C94(_Unwind_Exception *a1)
{
  MEMORY[0x22AA55B60](v2, 0x1020C4030AEDD8CLL);
  v4 = *(v1 + 232);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void H16ISPFirmwareWork::~H16ISPFirmwareWork(H16ISPFirmwareWork *this)
{
  if (gFirmwareWorkCFPrefs == 1)
  {
    for (i = 0; i != 200; i += 8)
    {
      v3 = *(this + i);
      if (v3)
      {
        H16ISPMetrics::~H16ISPMetrics(v3);
        MEMORY[0x22AA55B60]();
      }
    }
  }

  v4 = *(this + 26);
  if (v4)
  {
    GMCProcessor::~GMCProcessor(v4);
    MEMORY[0x22AA55B60]();
    *(this + 26) = 0;
  }

  v5 = *(this + 27);
  if (v5)
  {
    GMCInitializer::~GMCInitializer(v5);
    MEMORY[0x22AA55B60]();
    *(this + 27) = 0;
  }

  v6 = *(this + 29);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

BOOL GMC_SingularityTest(uint64_t a1, double a2)
{
  v2 = 0;
  v3 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v3;
  v11 = *(a1 + 64);
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v4;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = v2;
    do
    {
      if (*(v10 + v6) < *(v10 + v7))
      {
        v7 = v6;
      }

      ++v6;
    }

    while (v6 != 9);
    v8 = *(v10 + v7);
    *(v10 + v7) = *(v10 + v2);
    *(v10 + v2) = v8;
    ++v5;
    ++v2;
  }

  while (v2 != 8);
  return v11 / *(v10 + 1) < a2;
}

void GMC_ConstrainWorldPoints(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 20);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0uLL;
  v11 = 0;
  Matrix<double>::Matrix(&v9, 3, v6);
  v9 = &unk_283812E40;
  Matrix<double>::Matrix(&v8, 3, v6);
  v8 = &unk_283812E40;
  Matrix<unsigned int>::Matrix(&v7, a5, 0, -1);
}

void sub_2249395B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  Matrix<unsigned int>::~Matrix(&a41);
  Matrix<double>::~Matrix(&a45);
  Matrix<double>::~Matrix(&a49);
  _Unwind_Resume(a1);
}

void Matrix<unsigned int>::Matrix(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_283813A68;
  v4 = *(a2 + 20);
  v5 = *(a2 + 16) - a3;
  if (a4 != -1)
  {
    v5 = a4;
  }

  v6 = *(a2 + 8) + 4 * (v4 * a3);
  v7 = &unk_283813A68;
  v8 = v6;
  v9 = v5;
  v10 = v4;
  v11 = 0;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  operator new[]();
}

H16ISP::H16ISPBufferReceiver *H16ISP::H16ISPBufferReceiver::H16ISPBufferReceiver(H16ISP::H16ISPBufferReceiver *this, H16ISP::H16ISPDevice *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 40) = 0;
  *(this + 82) = 0;
  *(this + 42) = 0;
  *(this + 43) = a2;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 61) = 0x4000000000000000;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  pthread_mutex_init(this + 3, 0);
  pthread_mutex_init((this + 16), 0);
  pthread_mutex_init((this + 88), 0);
  *(this + 10) = 0;
  *(this + 19) = 0;
  pthread_mutexattr_init(&v5);
  pthread_mutexattr_settype(&v5, 2);
  pthread_mutex_init(this + 4, &v5);
  pthread_mutexattr_destroy(&v5);
  v4 = 0;
  H16ISP::H16ISPDevice::GetISPCounterFrequency(*(this + 43), &v4, this + 45);
  mach_timebase_info(this + 46);
  bzero(this + 496, 0x30uLL);
  return this;
}

void sub_224939844(_Unwind_Exception *a1)
{
  std::deque<__CVBuffer *>::~deque[abi:ne200100]((v1 + 424));
  std::deque<__CVBuffer *>::~deque[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void H16ISP::H16ISPBufferReceiver::~H16ISPBufferReceiver(H16ISP::H16ISPBufferReceiver *this)
{
  if (*this)
  {
    H16ISP::H16ISPBufferReceiver::stopReceive(this);
  }

  if (*(this + 42))
  {
    H16ISP::H16ISPBufferReceiver::removeIODispatcherFromRunLoop(this);
  }

  for (i = *(this + 52); i; i = *(this + 52))
  {
    v3 = *(*(*(this + 48) + ((*(this + 51) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 51) & 0x1FFLL));
    ++*(this + 51);
    *(this + 52) = i - 1;
    std::deque<__CVBuffer *>::__maybe_remove_front_spare[abi:ne200100](this + 376, 1);
    if (v3)
    {
      H16ISP::H16ISPFrameReceiverBufferPool::~H16ISPFrameReceiverBufferPool(v3);
      MEMORY[0x22AA55B60]();
    }
  }

  pthread_mutex_destroy(this + 3);
  pthread_mutex_destroy(this + 4);
  pthread_mutex_destroy((this + 16));
  pthread_mutex_destroy((this + 88));
  std::deque<__CVBuffer *>::~deque[abi:ne200100](this + 53);
  std::deque<__CVBuffer *>::~deque[abi:ne200100](this + 47);
}

uint64_t H16ISP::H16ISPBufferReceiver::stopReceive(H16ISP::H16ISPBufferReceiver *this)
{
  pthread_mutex_lock(this + 3);
  if (*this)
  {
    kdebug_trace();
    pthread_mutex_lock(this + 4);
    *(this + 352) = 1;
    pthread_mutex_unlock(this + 4);
    v2 = *(this + 48);
    v3 = *(this + 49);
    v4 = (v2 + 8 * (*(this + 51) >> 9));
    if (v3 == v2)
    {
      v5 = 0;
    }

    else
    {
      v5 = (*v4 + 8 * (*(this + 51) & 0x1FFLL));
    }

    while (1)
    {
      if (v3 == v2)
      {
        v8 = 0;
      }

      else
      {
        v7 = *(this + 52) + *(this + 51);
        v8 = *(v2 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF);
      }

      if (v5 == v8)
      {
        break;
      }

      v9 = *v5;
      pthread_mutex_lock(this + 4);
      *(v9 + 144) = 1;
      pthread_mutex_unlock(this + 4);
      v10 = H16ISP::H16ISPDevice::ReturnAllBuffersInPool(*(this + 43), 0, *(v9 + 20));
      if (v10)
      {
        v6 = v10;
        v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v24 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v24;
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPBufferReceiver::stopReceive();
        }

        goto LABEL_37;
      }

      if ((++v5 - *v4) == 4096)
      {
        v11 = v4[1];
        ++v4;
        v5 = v11;
      }

      v2 = *(this + 48);
      v3 = *(this + 49);
    }

    for (i = 0; i != 2001; ++i)
    {
      v13 = *(this + 48);
      v14 = *(this + 49);
      v15 = (v13 + 8 * (*(this + 51) >> 9));
      if (v14 == v13)
      {
        v16 = 0;
      }

      else
      {
        v16 = (*v15 + 8 * (*(this + 51) & 0x1FFLL));
      }

      v17 = 0;
      while (1)
      {
        if (v14 == v13)
        {
          v19 = 0;
        }

        else
        {
          v18 = *(this + 52) + *(this + 51);
          v19 = *(v13 + ((v18 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v18 & 0x1FF);
        }

        if (v16 == v19)
        {
          break;
        }

        v20 = *v16++;
        pthread_mutex_lock(this + 4);
        v21 = *(v20 + 120);
        pthread_mutex_unlock(this + 4);
        if ((v16 - *v15) == 4096)
        {
          v22 = v15[1];
          ++v15;
          v16 = v22;
        }

        v17 += v21;
        v13 = *(this + 48);
        v14 = *(this + 49);
      }

      if (!v17)
      {
        v6 = 0;
        goto LABEL_37;
      }

      usleep(0x3E8u);
    }

    v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v23 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;
    }

    v6 = 3758097084;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPBufferReceiver::stopReceive();
    }

LABEL_37:
    *this = 0;
    for (j = *(this + 58); j; j = *(this + 58))
    {
      v26 = *(*(*(this + 54) + ((*(this + 57) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 57) & 0x1FFLL));
      ++*(this + 57);
      *(this + 58) = j - 1;
      std::deque<__CVBuffer *>::__maybe_remove_front_spare[abi:ne200100](this + 424, 1);
      if (v26)
      {
        CVPixelBufferRelease(*v26);
        MEMORY[0x22AA55B60](v26, 0x1020C4093CA8EA1);
      }
    }

    pthread_mutex_unlock(this + 3);
    kdebug_trace();
  }

  else
  {
    pthread_mutex_unlock(this + 3);
    return 3758097122;
  }

  return v6;
}

void H16ISP::H16ISPBufferReceiver::removeIODispatcherFromRunLoop(H16ISP::H16ISPBufferReceiver *this)
{
  v2 = *(this + 42);
  if (v2)
  {
    CFRunLoopRemoveSource(*(this + 1), v2, *MEMORY[0x277CBF058]);
    CFRelease(*(this + 42));
    *(this + 42) = 0;
  }

  v3 = *(this + 40);
  if (v3)
  {
    CFMachPortInvalidate(v3);
    CFRelease(*(this + 40));
    *(this + 40) = 0;
  }

  v4 = *(this + 82);
  if (v4)
  {
    mach_port_mod_refs(*MEMORY[0x277D85F48], v4, 1u, -1);
    *(this + 82) = 0;
  }
}

uint64_t H16ISP::H16ISPBufferReceiver::setupBufferReceiver(H16ISP::H16ISPBufferReceiver *this)
{
  *(this + 1) = CFRunLoopGetCurrent();

  return H16ISP::H16ISPBufferReceiver::addIODispatcherToRunLoop(this);
}

uint64_t H16ISP::H16ISPBufferReceiver::addIODispatcherToRunLoop(H16ISP::H16ISPBufferReceiver *this)
{
  v2 = IOCreateReceivePort(0x39u, this + 82);
  if (!v2)
  {
    v2 = 3758097085;
    shouldFreeInfo = 0;
    context.version = 1;
    context.info = this;
    memset(&context.retain, 0, 24);
    v4 = *MEMORY[0x277CBECE8];
    v5 = CFMachPortCreateWithPort(*MEMORY[0x277CBECE8], *(this + 82), MEMORY[0x277CD27F0], &context, &shouldFreeInfo);
    *(this + 40) = v5;
    if (v5)
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(v4, v5, 0);
      *(this + 42) = RunLoopSource;
      if (RunLoopSource)
      {
        CFRunLoopAddSource(*(this + 1), RunLoopSource, *MEMORY[0x277CBF058]);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t H16ISP::H16ISPBufferReceiver::removeBufferPoolFromBufferReceiver(H16ISP::H16ISPBufferReceiver *this, int a2)
{
  pthread_mutex_lock(this + 3);
  v4 = *(this + 51);
  v5 = *(this + 48);
  v6 = *(this + 49);
  v7 = (v5 + 8 * (v4 >> 9));
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = (*v7 + 8 * (*(this + 51) & 0x1FFLL));
  }

LABEL_4:
  v9 = v8;
  while (1)
  {
    if (v6 == v5)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v5 + (((*(this + 52) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 52) + v4) & 0x1FF);
    }

    if (v9 == v10)
    {
      v13 = 3758097136;
      goto LABEL_23;
    }

    v11 = *v9;
    if (*(*v9 + 20) == a2)
    {
      break;
    }

    v9 += 8;
    v8 += 8;
    if ((*v7 + 4096) == v8)
    {
      v12 = *(v7 + 1);
      v7 += 8;
      v8 = v12;
      goto LABEL_4;
    }
  }

  if ((*this - 1) > 1)
  {
    goto LABEL_22;
  }

  pthread_mutex_lock(this + 4);
  *(v11 + 144) = 1;
  pthread_mutex_unlock(this + 4);
  v13 = H16ISP::H16ISPDevice::ReturnAllBuffersInPool(*(this + 43), 0, a2);
  if (!v13)
  {
    v14 = 2001;
    while (1)
    {
      pthread_mutex_lock(this + 4);
      v15 = *(v11 + 120);
      pthread_mutex_unlock(this + 4);
      if (!v15)
      {
        break;
      }

      usleep(0x3E8u);
      if (!--v14)
      {
        v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v16 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;
        }

        v13 = 3758097084;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPBufferReceiver::removeBufferPoolFromBufferReceiver((v11 + 20), v11 + 120, v16);
        }

        goto LABEL_23;
      }
    }

LABEL_22:
    std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::erase((this + 376), v7, v8);
    H16ISP::H16ISPFrameReceiverBufferPool::~H16ISPFrameReceiverBufferPool(v11);
    MEMORY[0x22AA55B60]();
    v13 = 0;
  }

LABEL_23:
  pthread_mutex_unlock(this + 3);
  return v13;
}

uint64_t H16ISP::H16ISPBufferReceiver::addBufferPoolToBufferReceiver(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, int a14)
{
  v42 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 192));
  v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v19 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v19;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316931;
    *&buf[4] = "addBufferPoolToBufferReceiver";
    *&buf[12] = 1024;
    *&buf[14] = a3;
    v30 = 1025;
    v31 = a4;
    v32 = 1025;
    v33 = a5;
    v34 = 1025;
    v35 = a8;
    v36 = 1024;
    v37 = a14;
    v38 = 1024;
    v39 = a11;
    v40 = 1024;
    v41 = a13;
    _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "%s - PoolID:0x%x W:%{private}u H:%{private}u FMT:%{private}u Option:%u BufCnt:%u PrimeCnt:%u\n", buf, 0x36u);
  }

  v20 = *(a1 + 408);
  v21 = *(a1 + 384);
  v22 = *(a1 + 392);
  v23 = (v21 + 8 * (v20 >> 9));
  if (v22 == v21)
  {
    v24 = 0;
  }

  else
  {
    v24 = *v23 + 8 * (*(a1 + 408) & 0x1FFLL);
  }

LABEL_8:
  v25 = v24 - 4096;
  while (1)
  {
    v26 = v22 == v21 ? 0 : *(v21 + (((*(a1 + 416) + v20) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 416) + v20) & 0x1FF);
    if (v24 == v26)
    {
      operator new();
    }

    if (*(*v24 + 20) == a3)
    {
      break;
    }

    v24 += 8;
    v25 += 8;
    if (*v23 == v25)
    {
      v27 = v23[1];
      ++v23;
      v24 = v27;
      goto LABEL_8;
    }
  }

  pthread_mutex_unlock((a1 + 192));
  return 3758097122;
}

uint64_t H16ISP::H16ISPBufferReceiver::sendInitialBuffersToFirmware(H16ISP::H16ISPBufferReceiver *this, H16ISP::H16ISPFrameReceiverBufferPool *a2)
{
  MEMORY[0x28223BE20](this, a2);
  v3 = v2;
  v22 = *MEMORY[0x277D85DE8];
  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v5 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v3 + 5);
    v7 = *(v3 + 25);
    v8 = *(v3 + 28);
    v9 = *(v3 + 29);
    *buf = 136316162;
    *&buf[4] = "sendInitialBuffersToFirmware";
    v14 = 1024;
    v15 = v8;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v7;
    v20 = 1024;
    v21 = v9;
    _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "%s - Sending %d initial buffers to firmware (PoolID:0x%x, poolSize=%d), 0x%08x\n", buf, 0x24u);
  }

  v10 = 3758097084;
  if (*(v3 + 28))
  {
    *buf = 0;
    if (!H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(v3, buf, 1))
    {
      operator new();
    }

    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
    {
      v11 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPBufferReceiver::sendInitialBuffersToFirmware();
    }

    return 3758097085;
  }

  return v10;
}

uint64_t H16ISP::H16ISPBufferReceiver::getBufferPool(H16ISP::H16ISPBufferReceiver *this, int a2)
{
  v2 = *(this + 51);
  v3 = *(this + 48);
  v4 = *(this + 49);
  v5 = (v3 + 8 * (v2 >> 9));
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5 + 8 * (*(this + 51) & 0x1FFLL);
  }

LABEL_4:
  v7 = v6 - 4096;
  while (1)
  {
    v8 = v4 == v3 ? 0 : *(v3 + (((*(this + 52) + v2) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 52) + v2) & 0x1FF);
    if (v6 == v8)
    {
      return 0;
    }

    v9 = *v6;
    if (*(*v6 + 20) == a2)
    {
      return v9;
    }

    v6 += 8;
    v7 += 8;
    if (*v5 == v7)
    {
      v10 = v5[1];
      ++v5;
      v6 = v10;
      goto LABEL_4;
    }
  }
}

uint64_t H16ISP::H16ISPBufferReceiver::registerBufferReceiveCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 160) = a2;
  *(a1 + 168) = a3;
  return 0;
}

uint64_t H16ISP::H16ISPBufferReceiver::registerMessageCallback(H16ISP::H16ISPBufferReceiver *this, void (*a2)(unsigned int, unsigned int, unsigned int, void *, void *, void *), void *a3)
{
  *(this + 22) = a2;
  *(this + 23) = a3;
  return 0;
}

uint64_t H16ISP::H16ISPBufferReceiver::startReceive(pthread_mutex_t *this)
{
  pthread_mutex_lock(this + 3);
  if (LODWORD(this->__sig))
  {
    pthread_mutex_unlock(this + 3);
    return 3758097122;
  }

  kdebug_trace();
  this[5].__opaque[24] = 0;
  LODWORD(this->__sig) = 1;
  sig = this[6].__sig;
  if (this[7].__opaque[24] == 1)
  {
    v4 = *this[6].__opaque;
    goto LABEL_29;
  }

  v5 = (sig + 8 * (*&this[6].__opaque[16] >> 9));
  v4 = *this[6].__opaque;
  if (v4 == sig)
  {
    v6 = 0;
  }

  else
  {
    v6 = (*v5 + 8 * (*&this[6].__opaque[16] & 0x1FFLL));
  }

  while (v4 != sig)
  {
    v7 = *&this[6].__opaque[24] + *&this[6].__opaque[16];
    if (v6 == (*(sig + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)))
    {
      this[7].__opaque[24] = 1;
      v9 = (sig + 8 * (*&this[6].__opaque[16] >> 9));
      v6 = (*v9 + 8 * (*&this[6].__opaque[16] & 0x1FFLL));
      goto LABEL_25;
    }

LABEL_12:
    if (H16ISP::H16ISPFrameReceiverBufferPool::activatePool(*v6, 0))
    {
      v2 = 3758097085;
      goto LABEL_43;
    }

    if ((++v6 - *v5) == 4096)
    {
      v8 = v5[1];
      ++v5;
      v6 = v8;
    }

    sig = this[6].__sig;
    v4 = *this[6].__opaque;
  }

  if (v6)
  {
    goto LABEL_12;
  }

  this[7].__opaque[24] = 1;
  v9 = (sig + 8 * (*&this[6].__opaque[16] >> 9));
LABEL_25:
  while (1)
  {
    if (v4 == sig)
    {
      v15 = 0;
    }

    else
    {
      v14 = *&this[6].__opaque[24] + *&this[6].__opaque[16];
      v15 = *(sig + ((v14 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v14 & 0x1FF);
    }

    if (v6 == v15)
    {
      break;
    }

    v10 = *&this[2].__opaque[40];
    if (v10)
    {
      v11 = *v6;
      v12 = *(*v6 + 23);
      if (!v12)
      {
        v12 = *(v11 + 20);
      }

      v10(7, *(v11 + 4), 0, v12, *(v11 + 21), *&this[2].__opaque[48]);
    }

    if ((++v6 - *v9) == 4096)
    {
      v13 = v9[1];
      ++v9;
      v6 = v13;
    }

    sig = this[6].__sig;
    v4 = *this[6].__opaque;
  }

LABEL_29:
  v16 = (sig + 8 * (*&this[6].__opaque[16] >> 9));
  if (v4 == sig)
  {
    v17 = 0;
  }

  else
  {
    v17 = (*v16 + 8 * (*&this[6].__opaque[16] & 0x1FFLL));
  }

  while (1)
  {
    if (*this[6].__opaque == sig)
    {
      v21 = 0;
    }

    else
    {
      v20 = *&this[6].__opaque[24] + *&this[6].__opaque[16];
      v21 = *(sig + ((v20 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v20 & 0x1FF);
    }

    if (v17 == v21)
    {
      v2 = 0;
      goto LABEL_43;
    }

    if ((*(*v17 + 116) & 1) == 0)
    {
      v18 = H16ISP::H16ISPBufferReceiver::sendInitialBuffersToFirmware(this, *v17);
      if (v18)
      {
        break;
      }
    }

    if ((++v17 - *v16) == 4096)
    {
      v19 = v16[1];
      ++v16;
      v17 = v19;
    }

    sig = this[6].__sig;
  }

  v2 = v18;
LABEL_43:
  pthread_mutex_unlock(this + 3);
  kdebug_trace();
  return v2;
}

uint64_t H16ISP::H16ISPBufferReceiver::ProcessFrameMetadata(H16ISP::H16ISPBufferReceiver *this, unsigned int a2, __CVBuffer *a3, unint64_t *a4)
{
  CameraTime = H16ISP::H16ISPDevice::ISP_GetCameraTime(*(this + 43), &v8);
  if (!CameraTime)
  {
    operator new();
  }

  v5 = CameraTime;
  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v6 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPBufferReceiver::ProcessFrameMetadata();
  }

  return v5;
}

void H16ISP::H16ISPBufferReceiver::BufferDone(H16ISP::H16ISPBufferReceiver *this, void *a2, int a3, unint64_t *a4)
{
  v4 = MEMORY[0x28223BE20](this, a2);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v65 = *MEMORY[0x277D85DE8];
  v56 = mach_absolute_time();
  kdebug_trace();
  pthread_mutex_lock((v9 + 256));
  v10 = (v6 - 2);
  if (v6 != 2)
  {
    v11 = 0;
    v57 = 0;
    v12 = 0;
    do
    {
      pixelBuffer = 0;
      v13 = *(v9 + 456);
      v14 = *(v9 + 432);
      v15 = *(v9 + 440);
      v16 = v14 + 8 * (v13 >> 9);
      if (v15 == v14)
      {
        v17 = 0;
      }

      else
      {
        v17 = (*v16 + 8 * (*(v9 + 456) & 0x1FFLL));
      }

      v18 = v11 + 2;
LABEL_7:
      v19 = v17;
      while (1)
      {
        v20 = v15 == v14 ? 0 : *(v14 + (((*(v9 + 464) + v13) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v9 + 464) + v13) & 0x1FF);
        if (v19 == v20)
        {
          break;
        }

        v21 = *v19;
        if (*(v8 + 8 * v18) == *(*v19 + 8))
        {
          v25 = *(v21 + 16);
          --*(v25 + 120);
          if (*(v9 + 352) & 1) != 0 || (*(v25 + 144))
          {
            H16ISP::H16ISPFrameReceiverBufferPool::updateTracking(v25);
            CVPixelBufferRelease(*v21);
            std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::erase((v9 + 424), v16, v17);
            MEMORY[0x22AA55B60](v21, 0x1020C4093CA8EA1);
          }

          else
          {
            H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(v25, &pixelBuffer, 0);
            if (pixelBuffer && ((v26 = *(v21 + 16), *(v26 + 5) != 43) || (v27 = &v64[HIDWORD(v57)], *v27 = *v21, *(v27 + 2) = *(v26 + 4), *(v27 + 3) = 43, H16ISP::H16ISPFrameReceiverBufferPool::updateTracking(v26), CVPixelBufferRetain(*v21), ++HIDWORD(v57), pixelBuffer)))
            {
              CVPixelBufferRelease(*v21);
              v28 = pixelBuffer;
              *v21 = pixelBuffer;
              IOSurface = CVPixelBufferGetIOSurface(v28);
              ID = IOSurfaceGetID(IOSurface);
              *(v21 + 8) = ID;
              v31 = &v63[7 * v12];
              *v31 = H16ISP::H16ISPBufferReceiver::BufferDone;
              v31[1] = v9;
              *(v31 + 4) = ID;
              v32 = *(v21 + 16);
              *(v31 + 20) = *(v32 + 24);
              *(v31 + 7) = *(v32 + 40);
              *(v31 + 8) = *(v32 + 20);
              ++v12;
            }

            else
            {
              v33 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
              {
                v33 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v33;
              }

              v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
              v35 = *(v21 + 16);
              if (v34)
              {
                v38 = *(v35 + 5);
                v39 = *(v35 + 30);
                *buf = 136315650;
                v60 = "BufferDone";
                v61 = 1024;
                LODWORD(v62[0]) = v38;
                WORD2(v62[0]) = 1024;
                *(v62 + 6) = v39;
                _os_log_error_impl(&dword_2247DB000, v33, OS_LOG_TYPE_ERROR, "%s - Unable to allocate a replacement buffer (PoolID:0x%x / InFW:%u)\n", buf, 0x18u);
                v35 = *(v21 + 16);
              }

              H16ISP::H16ISPFrameReceiverBufferPool::updateTracking(v35);
              v36 = &v63[7 * v12];
              *v36 = H16ISP::H16ISPBufferReceiver::BufferDone;
              v36[1] = v9;
              *(v36 + 4) = *(v21 + 8);
              v37 = *(v21 + 16);
              *(v36 + 20) = *(v37 + 24);
              *(v36 + 7) = *(v37 + 40);
              *(v36 + 8) = *(v37 + 20);
              ++v12;
              LOBYTE(v57) = 1;
            }
          }

          goto LABEL_22;
        }

        v19 += 8;
        v17 += 8;
        if ((*v16 + 4096) == v17)
        {
          v22 = *(v16 + 8);
          v16 += 8;
          v17 = v22;
          goto LABEL_7;
        }
      }

      v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v23 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *(v8 + 8 * v18);
        *buf = 136315394;
        v60 = "BufferDone";
        v61 = 1024;
        LODWORD(v62[0]) = v24;
        _os_log_error_impl(&dword_2247DB000, v23, OS_LOG_TYPE_ERROR, "%s - Unable to locate surface ID %d\n", buf, 0x12u);
      }

LABEL_22:
      ++v11;
    }

    while (v11 != v10);
    if (v12)
    {
      if (H16ISP::H16ISPDevice::ISP_SendBuffers(*(v9 + 344), v63, v12, *(v9 + 328)))
      {
        v40 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v40 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v40;
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPBufferReceiver::BufferDone();
        }
      }

      else
      {
        v41 = 0;
        v42 = *(v9 + 408);
        v43 = *(v9 + 384);
        v44 = *(v9 + 392);
        do
        {
          if (v44 == v43)
          {
            v45 = 0;
          }

          else
          {
            v45 = *(v43 + 8 * (v42 >> 9)) + 8 * (v42 & 0x1FF);
          }

          v46 = (v43 + 8 * (v42 >> 9));
LABEL_44:
          v47 = v45 - 4096;
          while (1)
          {
            v48 = v44 == v43 ? 0 : *(v43 + (((*(v9 + 416) + v42) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v9 + 416) + v42) & 0x1FF);
            if (v45 == v48)
            {
              break;
            }

            if (*(*v45 + 20) == LODWORD(v63[7 * v41 + 4]))
            {
              ++*(*v45 + 120);
              break;
            }

            v45 += 8;
            v47 += 8;
            if (*v46 == v47)
            {
              v49 = v46[1];
              ++v46;
              v45 = v49;
              goto LABEL_44;
            }
          }

          ++v41;
        }

        while (v12 > v41);
      }
    }

    if (HIDWORD(v57))
    {
      v50 = *(v9 + 160);
      if (v50)
      {
        v50(*(v9 + 168), 0, HIDWORD(v57), v64);
      }
    }

    if ((v57 & 1) != 0 && *(v9 + 176))
    {
      v51 = mach_absolute_time();
      (*(v9 + 176))(0, HIDWORD(v51), v51, 0, 0, *(v9 + 184));
    }
  }

  pthread_mutex_unlock((v9 + 256));
  v52 = mach_absolute_time();
  mach_timebase_info(&pixelBuffer);
  v53 = (v52 - v56) * pixelBuffer / HIDWORD(pixelBuffer);
  v54 = v53 / 0xF4240;
  if (v53 < 0x30A32C0)
  {
    kdebug_trace();
  }

  else
  {
    kdebug_trace();
    v55 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v55 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v55;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v60 = "BufferDone";
      v61 = 2048;
      v62[0] = v54;
      _os_log_impl(&dword_2247DB000, v55, OS_LOG_TYPE_DEFAULT, "%s - Long Delay: %llu msec\n", buf, 0x16u);
    }
  }
}

uint64_t H16ISP::H16ISPBufferReceiver::startNoBufferAvailableTimer(H16ISP::H16ISPBufferReceiver *this)
{
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPBufferReceiver::startNoBufferAvailableTimer(v2);
  }

  result = pthread_mutex_lock((this + 88));
  if (!*(this + 19))
  {
    context.version = 0;
    context.info = this;
    memset(&context.retain, 0, 24);
    Current = CFAbsoluteTimeGetCurrent();
    v5 = CFRunLoopTimerCreate(0, Current + 0.01, 0.0, 0, 0, H16ISP::H16ISPBufferReceiver::TryToTopOffFirmwareBufferPools, &context);
    *(this + 19) = v5;
    if (v5)
    {
      CFRunLoopAddTimer(*(this + 1), v5, *MEMORY[0x277CBF058]);
    }

    return pthread_mutex_unlock((this + 88));
  }

  return result;
}

uint64_t H16ISP::H16ISPBufferReceiver::TryToTopOffFirmwareBufferPools(H16ISP::H16ISPBufferReceiver *this, __CFRunLoopTimer *a2, void *a3)
{
  MEMORY[0x28223BE20](this, a2);
  v4 = v3;
  v30 = *MEMORY[0x277D85DE8];
  v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v5 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;
  }

  pixelBuffer = 0;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315138;
    *&buf[1] = "TryToTopOffFirmwareBufferPools";
    _os_log_impl(&dword_2247DB000, v5, OS_LOG_TYPE_DEFAULT, "%s - \n", buf, 0xCu);
  }

  pthread_mutex_lock((v4 + 256));
  H16ISP::H16ISPBufferReceiver::stopNoBufferAvailableTimer(v4);
  v6 = *(v4 + 384);
  v7 = *(v4 + 392);
  v8 = (v6 + 8 * (*(v4 + 408) >> 9));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 8 * (*(v4 + 408) & 0x1FFLL);
  }

  v10 = 0;
  while (1)
  {
    if (v7 == v6)
    {
      v12 = 0;
    }

    else
    {
      v11 = *(v4 + 416) + *(v4 + 408);
      v12 = *(v6 + ((v11 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v11 & 0x1FF);
    }

    if (v9 == v12)
    {
      break;
    }

    v13 = *v9;
    if (*(*v9 + 112) > *(*v9 + 120) && (*(v4 + 352) & 1) == 0 && (*(v13 + 144) & 1) == 0)
    {
      H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(v13, &pixelBuffer, 0);
      if (pixelBuffer)
      {
        operator new();
      }

      v14 = *(v13 + 120);
      if (v14 < *(v13 + 112))
      {
        v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v15 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(v13 + 20);
          v17 = "noBuffer";
          if (v14)
          {
            v17 = "lowBuffer";
          }

          buf[0] = 136315906;
          *&buf[1] = "TryToTopOffFirmwareBufferPools";
          v24 = 2080;
          v25 = v17;
          v26 = 1024;
          v27 = v16;
          v28 = 1024;
          v29 = v14;
          _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_DEFAULT, "%s - %s on receiver PoolID 0x%x, FW has %d buffers\n", buf, 0x22u);
        }

        v18 = *(v4 + 176);
        if (v18)
        {
          v18(v14 != 0, 0, *(v13 + 16), v13, v4, *(v4 + 184));
        }

        v10 = 1;
      }
    }

    v9 += 8;
    if (v9 - *v8 == 4096)
    {
      v19 = v8[1];
      ++v8;
      v9 = v19;
    }

    v6 = *(v4 + 384);
    v7 = *(v4 + 392);
  }

  if (v10)
  {
    H16ISP::H16ISPBufferReceiver::startNoBufferAvailableTimer(v4);
  }

  else
  {
    v20 = *(v4 + 176);
    if (v20)
    {
      v20(2, 0, 0, 0, v4, *(v4 + 184));
    }
  }

  return pthread_mutex_unlock((v4 + 256));
}

uint64_t H16ISP::H16ISPBufferReceiver::stopNoBufferAvailableTimer(H16ISP::H16ISPBufferReceiver *this)
{
  pthread_mutex_lock((this + 88));
  v2 = *(this + 19);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(this + 19));
    *(this + 19) = 0;
  }

  return pthread_mutex_unlock((this + 88));
}

void *std::deque<H16ISP::H16ISPBufferReceiverAllocatedBufferStruct *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<H16ISP::H16ISPBufferReceiverAllocatedBufferStruct *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

uint64_t H16ISP::CreateH16ISPBufferReceiver(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = 0;
  H16ISP::H16ISPThreadReadySyncer::H16ISPThreadReadySyncer(&v13);
  v8 = 0;
  v2 = *(a1 + 32);
  v9 = *(a1 + 16);
  v10 = v2;
  v11 = *(a1 + 8);
  v12 = &v13;
  v6 = 48;
  pthread_attr_init(&v14);
  pthread_attr_setschedparam(&v14, &v6);
  pthread_attr_setdetachstate(&v14, 2);
  pthread_create(&v7, &v14, H16ISP::H16ISPBufferReceiverRTThreadMain, &v8);
  pthread_attr_destroy(&v14);
  H16ISP::H16ISPThreadReadySyncer::wait(&v13);
  v3 = v8;
  **a1 = v8;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 3758097084;
  }

  H16ISP::H16ISPThreadReadySyncer::~H16ISPThreadReadySyncer(&v13);
  return v4;
}

void H16ISP::H16ISPBufferReceiverRTThreadMain(uint64_t a1)
{
  pthread_setname_np("H16ISPBufferReceiverRealTimeThread");
  H16ISP::H16ISPThreadReadySyncer::lock(*(a1 + 48));
  operator new();
}

uint64_t H16ISP::DestroyH16ISPBufferReceiver(H16ISP *this, H16ISP::H16ISPBufferReceiver *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1);
  CFRetain(v3);
  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v5 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "DestroyH16ISPBufferReceiver";
    _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "%s - Stopping\n", buf, 0xCu);
  }

  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v7 = *MEMORY[0x277CBF058];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN6H16ISP27DestroyH16ISPBufferReceiverEPNS_20H16ISPBufferReceiverE_block_invoke;
  block[3] = &__block_descriptor_tmp_11;
  block[4] = this;
  block[5] = v3;
  block[6] = v6;
  CFRunLoopPerformBlock(v3, v7, block);
  CFRunLoopWakeUp(v3);
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
  {
    v8 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "DestroyH16ISPBufferReceiver";
    _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_DEFAULT, "%s - Stopped\n", buf, 0xCu);
  }

  dispatch_release(v6);
  CFRelease(v3);
  return 0;
}

void ___ZN6H16ISP27DestroyH16ISPBufferReceiverEPNS_20H16ISPBufferReceiverE_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "DestroyH16ISPBufferReceiver_block_invoke";
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "%s - Stopping in the runloop\n", &v4, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    H16ISP::H16ISPBufferReceiver::~H16ISPBufferReceiver(v3);
    MEMORY[0x22AA55B60]();
  }

  CFRunLoopStop(*(a1 + 40));
  dispatch_group_leave(*(a1 + 48));
}

void *std::deque<H16ISP::H16ISPBufferReceiverAllocatedBufferStruct *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::allocator<__CVBuffer **>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<__CVBuffer **>::emplace_back<__CVBuffer **&>(a1, &v10);
}

void sub_22493C04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x18u);
}

void BayerArray::BayerArray(BayerArray *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0x43F800000;
}

{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0x43F800000;
}

void BayerArray::BayerArray(BayerArray *this, const unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 8) = 1.0 / (a5 * a4);
  *(this + 9) = a6;
}

{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 8) = 1.0 / (a5 * a4);
  *(this + 9) = a6;
}

float BayerArray::Average(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a1 + 8);
    v6 = *a1 + 2 * v5 * ((a2 + (a2 >> 31)) >> 1) + 2 * (a2 % 2);
    v7 = 4 * v5;
    do
    {
      if (*(a1 + 16))
      {
        v8 = 0;
        v9 = *(a1 + 16);
        do
        {
          v4 += *(v6 + v8) >> 4;
          v8 += 4;
          --v9;
        }

        while (v9);
      }

      v6 += v7;
      ++v3;
    }

    while (v3 != v2);
    v10 = v4;
  }

  else
  {
    v10 = 0.0;
  }

  return *(a1 + 32) * v10;
}

float BayerArray::Average(BayerArray *this, float *a2, float *a3, float *a4, float *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *this;
    v12 = *(this + 1);
    v13 = v12;
    v14 = 4 * v12;
    do
    {
      v15 = v11;
      for (i = *(this + 2); i; --i)
      {
        v6 += *v15;
        v7 += v15[1];
        v8 += v15[v13];
        v9 += v15[v13 + 1];
        v15 += 2;
      }

      ++v10;
      v11 = (v11 + v14);
    }

    while (v10 != v5);
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  v17 = *(this + 9);
  *a2 = *(this + 8) * (v6 >> v17);
  *a3 = *(this + 8) * (v7 >> v17);
  *a4 = *(this + 8) * (v8 >> v17);
  result = *(this + 8) * (v9 >> v17);
  *a5 = result;
  return result;
}

uint64_t BayerArray::DefineSubBayerArray(BayerArray *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, BayerArray *a6, int a7)
{
  if (!a7)
  {
    goto LABEL_7;
  }

  v7 = 0;
  if (((a3 | a2) & 0x8000000000000000) == 0 && ((a5 | a4) & 0x80000000) == 0)
  {
    if ((a4 + a2) > *(this + 2) || (a5 + a3) > *(this + 3))
    {
      return 0;
    }

LABEL_7:
    v8 = *(this + 1);
    v9 = *(this + 9);
    *a6 = *this + 4 * (a2 + v8 * a3);
    *(a6 + 1) = v8;
    *(a6 + 2) = a4;
    *(a6 + 3) = a5;
    *(a6 + 8) = 1.0 / (a5 * a4);
    *(a6 + 9) = v9;
    return 1;
  }

  return v7;
}

uint64_t BayerArray::Dump(uint64_t this, unsigned int a2)
{
  if (a2)
  {
    v2 = this;
    if (*this && *(this + 16) && (v3 = *(this + 24)) != 0)
    {
      this = printf("[base=%p, width = %zd, height = %zd]\n", *this, *(this + 16), v3);
      if (*(v2 + 24))
      {
        v5 = 0;
        v6 = 0;
        if (a2 == 1)
        {
          v7 = "";
        }

        else
        {
          v7 = "/";
        }

        if (a2 >= 4)
        {
          v8 = "/";
        }

        else
        {
          v8 = "";
        }

        if (a2 >= 8)
        {
          v9 = "/";
        }

        else
        {
          v9 = "";
        }

        for (i = 2; ; i += 4)
        {
          v13 = v6;
          if (*(v2 + 16))
          {
            break;
          }

LABEL_29:
          this = putchar(10);
          v6 = v13 + 1;
          v5 += 4;
          if ((v13 + 1) >= *(v2 + 24))
          {
            return this;
          }
        }

        v11 = 0;
        v12 = 0;
        while (1)
        {
          if (a2)
          {
            printf("%5d%s", *(*v2 + v5 * *(v2 + 8) + v11) >> *(v2 + 36), v7);
            if ((a2 & 2) == 0)
            {
LABEL_20:
              if ((a2 & 4) != 0)
              {
                goto LABEL_27;
              }

              goto LABEL_21;
            }
          }

          else if ((a2 & 2) == 0)
          {
            goto LABEL_20;
          }

          printf("%5d%s", *(*v2 + v5 * *(v2 + 8) + v11 + 2) >> *(v2 + 36), v8);
          if ((a2 & 4) != 0)
          {
LABEL_27:
            printf("%5d%s", *(*v2 + i * *(v2 + 8) + v11) >> *(v2 + 36), v9);
            if ((a2 & 8) == 0)
            {
              goto LABEL_23;
            }

LABEL_22:
            printf("%5d  ", *(*v2 + i * *(v2 + 8) + v11 + 2) >> *(v2 + 36));
            goto LABEL_23;
          }

LABEL_21:
          if ((a2 & 8) != 0)
          {
            goto LABEL_22;
          }

LABEL_23:
          ++v12;
          v11 += 4;
          if (v12 >= *(v2 + 16))
          {
            goto LABEL_29;
          }
        }
      }
    }

    else
    {

      return puts("BayerArray::Dump -- empty array");
    }
  }

  return this;
}

unint64_t BayerArray::GetPackedPixel(BayerArray *this, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a4 == 14)
  {
    v5 = *this + ((a5 * a3) & 0xFFFFFFFFFFFFFFFCLL) + 28 * (a2 >> 4);
    switch(a2 & 0xF)
    {
      case 1uLL:
        v13 = *v5;
        v14 = 0xFFFFFFFAFFFFFFFELL;
        goto LABEL_53;
      case 2uLL:
        v13 = *v5;
        v14 = 0xFFFFFFF4FFFFFFF6;
        goto LABEL_53;
      case 3uLL:
        v11 = vshr_n_u32(*v5, 0x12uLL);
        goto LABEL_54;
      case 4uLL:
        v13 = *(v5 + 4);
        v14 = 0xFFFFFFE8FFFFFFEELL;
        goto LABEL_53;
      case 5uLL:
        v18 = vand_s8(vshl_u32(*(v5 + 8), 0x200000006), 0x3C00003FC0);
        v19 = v18.i16[2];
        LODWORD(v5) = v18.i32[0] | (*(v5 + 8) >> 30);
        goto LABEL_51;
      case 6uLL:
        v13 = *(v5 + 8);
        v14 = 0xFFFFFFFCFFFFFFFELL;
        goto LABEL_53;
      case 7uLL:
        v11 = vshr_n_u32(*(v5 + 8), 0xAuLL);
        goto LABEL_54;
      case 8uLL:
        v13 = *(v5 + 12);
        v14 = 0xFFFFFFF0FFFFFFF6;
        goto LABEL_53;
      case 9uLL:
        v13 = *(v5 + 12);
        v14 = 0xFFFFFFEAFFFFFFEELL;
        goto LABEL_53;
      case 0xAuLL:
        v20 = vand_s8(vshl_u32(*(v5 + 16), 0x400000006), 0x3000003FC0);
        v19 = v20.i16[2];
        LODWORD(v5) = v20.i32[0] | (*(v5 + 16) >> 28);
LABEL_51:
        LOWORD(v5) = v5 | v19;
        return v5;
      case 0xBuLL:
        v11 = vshr_n_u32(*(v5 + 16), 2uLL);
        goto LABEL_54;
      case 0xCuLL:
        v13 = *(v5 + 20);
        v14 = 0xFFFFFFF8FFFFFFFELL;
        goto LABEL_53;
      case 0xDuLL:
        v13 = *(v5 + 20);
        v14 = 0xFFFFFFF2FFFFFFF6;
        goto LABEL_53;
      case 0xEuLL:
        v13 = *(v5 + 20);
        v14 = 0xFFFFFFECFFFFFFEELL;
LABEL_53:
        v11 = vshl_u32(v13, v14);
LABEL_54:
        v12 = 0x3F00003FC0;
        goto LABEL_61;
      case 0xFuLL:
        HIDWORD(v17) = *(v5 + 24);
        LODWORD(v17) = HIDWORD(v17);
        return (v17 >> 26) & 0x3FFF;
      default:
        LODWORD(v5) = *(v5 + 4) & 0x3F | (*v5 << 6);
        return v5;
    }
  }

  if (a4 != 12)
  {
    if (a4 == 10)
    {
      v5 = *this + ((a5 * a3) & 0xFFFFFFFFFFFFFFFCLL) + 20 * (a2 >> 4);
      switch(a2 & 0xF)
      {
        case 1uLL:
          v15 = *v5;
          v16 = 0xFFFFFFFEFFFFFFFALL;
          goto LABEL_60;
        case 2uLL:
          v15 = *v5;
          v16 = 0xFFFFFFFCFFFFFFF2;
          goto LABEL_60;
        case 3uLL:
          v15 = *v5;
          v16 = 0xFFFFFFFAFFFFFFEALL;
          goto LABEL_60;
        case 4uLL:
          v15 = *(v5 + 4);
          v16 = 0xFFFFFFF8FFFFFFFALL;
          goto LABEL_60;
        case 5uLL:
          v15 = *(v5 + 4);
          v16 = 0xFFFFFFF6FFFFFFF2;
          goto LABEL_60;
        case 6uLL:
          v15 = *(v5 + 4);
          v16 = 0xFFFFFFF4FFFFFFEALL;
          goto LABEL_60;
        case 7uLL:
          v6 = *(v5 + 8);
          LOWORD(v5) = v6 >> 14;
          goto LABEL_58;
        case 8uLL:
          v15 = *(v5 + 8);
          v16 = 0xFFFFFFF0FFFFFFF2;
          goto LABEL_60;
        case 9uLL:
          v15 = *(v5 + 8);
          v16 = 0xFFFFFFEEFFFFFFEALL;
          goto LABEL_60;
        case 0xAuLL:
          v6 = *(v5 + 12);
          LODWORD(v5) = (v6 >> 20) & 3;
          goto LABEL_58;
        case 0xBuLL:
          LODWORD(v5) = (*(v5 + 12) >> 6) & 0x3FC | (*(v5 + 12) >> 22) & 3;
          return v5;
        case 0xCuLL:
          v15 = *(v5 + 12);
          v16 = 0xFFFFFFE8FFFFFFEALL;
LABEL_60:
          v11 = vshl_u32(v15, v16);
          v12 = 0x3000003FCLL;
          goto LABEL_61;
        case 0xDuLL:
          v6 = *(v5 + 16);
          LODWORD(v5) = (v6 >> 26) & 3;
          goto LABEL_58;
        case 0xEuLL:
          LODWORD(v5) = (*(v5 + 16) >> 6) & 0x3FC | (*(v5 + 16) >> 28) & 3;
          return v5;
        case 0xFuLL:
          LODWORD(v5) = (*(v5 + 16) >> 14) & 0x3FC | (*(v5 + 16) >> 30);
          return v5;
        default:
          v6 = *v5;
          LODWORD(v5) = *(v5 + 4) & 3;
LABEL_58:
          LOWORD(v5) = v5 & 0xFC03 | (4 * v6);
          break;
      }
    }

    else
    {
      LOWORD(v5) = 0;
    }

    return v5;
  }

  v7 = a2 & 7;
  v5 = *this + ((a5 * a3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * (a2 >> 3);
  if (v7 > 3)
  {
    if ((a2 & 7) > 5)
    {
      if (v7 == 6)
      {
        LODWORD(v5) = (*(v5 + 8) >> 4) & 0xFF0 | HIBYTE(*(v5 + 8)) & 0xF;
      }

      else
      {
        LODWORD(v5) = (*(v5 + 8) >> 12) & 0xFF0 | (*(v5 + 8) >> 28);
      }

      return v5;
    }

    if (v7 == 4)
    {
      LODWORD(v5) = *(v5 + 8) & 0xF | (16 * *(v5 + 6));
      return v5;
    }

    v9 = *(v5 + 4);
    v10 = 0xFFFFFFFCFFFFFFECLL;
  }

  else
  {
    if ((a2 & 7) <= 1)
    {
      if ((a2 & 7) != 0)
      {
        LODWORD(v5) = (*v5 >> 4) & 0xFF0 | (*v5 >> 20) & 0xF;
        return v5;
      }

      v8 = *v5;
      LODWORD(v5) = HIWORD(*v5) & 0xF;
LABEL_24:
      LOWORD(v5) = v5 & 0xF00F | (16 * v8);
      return v5;
    }

    if (v7 != 2)
    {
      v8 = *(v5 + 4);
      LOWORD(v5) = v8 >> 12;
      goto LABEL_24;
    }

    v9 = *v5;
    v10 = 0xFFFFFFF8FFFFFFECLL;
  }

  v11 = vshl_u32(v9, v10);
  v12 = 0xF00000FF0;
LABEL_61:
  v21 = vand_s8(v11, v12);
  LOWORD(v5) = vorr_s8(vdup_lane_s32(v21, 1), v21).u16[0];
  return v5;
}

void H16ISP::H16ISPMotionManager::~H16ISPMotionManager(H16ISP::H16ISPMotionManager *this)
{
  v3 = 0;
  v2 = *(this + 7);
  if (v2)
  {
    pthread_join(v2, &v3);
  }

  if (*(this + 1))
  {
    if (objc_opt_respondsToSelector())
    {
      [*(this + 1) setSidebandTimeSyncHandler:0];
    }

    *(this + 1) = 0;
  }

  pthread_mutex_destroy(this + 1);
}

void GMCProcessorInternal::GMCProcessorInternal(GMCProcessorInternal *this)
{
  *this = dispatch_queue_create("com.apple.gmc.postprocess", 0);
}

{
  *this = dispatch_queue_create("com.apple.gmc.postprocess", 0);
}

void GMCProcessorInternal::~GMCProcessorInternal(dispatch_queue_t *this)
{
  dispatch_sync(*this, &__block_literal_global_9);
  dispatch_release(*this);
  *this = 0;
}

{
  dispatch_sync(*this, &__block_literal_global_9);
  dispatch_release(*this);
  *this = 0;
}

uint64_t GMCProcessorInternal::updatePCECalibWithISF(dispatch_queue_t *a1, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8)
{
  v49 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = &v29;
  v31 = 0xE6002000000;
  v32 = __Block_byref_object_copy__3;
  v33 = __Block_byref_object_dispose__3;
  v15 = fopen("/var/mobile/Library/ISP/Pearl/IsfIRHistory.bin", "rb");
  if (v15)
  {
    fread(&v34, 0xE38uLL, 1uLL, v15);
    fclose(v15);
  }

  else
  {
    v34 = 1;
    v35 = 1;
  }

  v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v17 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v16 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v45 = "updatePCECalibWithISF";
    _os_log_impl(&dword_2247DB000, v16, OS_LOG_TYPE_DEFAULT, "%s - ISF\n", buf, 0xCu);
  }

  kdebug_trace();
  PearlIRIsf::PearlIRIsf(v28);
  v18 = PearlIRIsf::Run(v28, (v30 + 10), &v26, a3, a4, a5, a6);
  kdebug_trace();
  v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v17)
  {
    v19 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v19;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v45 = "updatePCECalibWithISF";
    v46 = 1024;
    v47 = v18;
    _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "%s - ISF status: %d\n", buf, 0x12u);
  }

  Isf::getHistoryStatistics(v28, buf);
  bzero((a2 + 116), 0x78uLL);
  v20 = 0;
  *(a2 + 112) = *buf > 0;
  do
  {
    v21 = a2 + 116 + v20;
    v22 = *&v48[v20];
    *v21 = *(&v45 + v20 + 4);
    *(v21 + 16) = v22;
    *(v21 + 32) = *&v48[v20 + 16];
    v20 += 40;
  }

  while (v20 != 120);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 0x40000000;
  v25[2] = ___ZN20GMCProcessorInternal21updatePCECalibWithISFEddddP22H16ISPAnalyticsGMCInfoRK26sCIspCmdChPearlCalibrationRS2__block_invoke;
  v25[3] = &unk_278531CA0;
  v25[4] = &v29;
  dispatch_async(*a1, v25);
  if (!v18)
  {
    PearlIRIsf::updatePCECalib(v28, v30 + 10, a8);
    v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v17)
    {
      v23 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 136315906;
      v37 = "updatePCECalibWithISF";
      v38 = 2048;
      v39 = v26.i64[0];
      v40 = 2048;
      v41 = v26.i64[1];
      v42 = 2048;
      v43 = v27;
      _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_DEFAULT, "%s - GMC post-ISF rotation angles, rotX: %.5lf, rotY: %.5lf, rotZ: %.5lf\n", v36, 0x2Au);
    }
  }

  PearlIRIsf::~PearlIRIsf(v28);
  _Block_object_dispose(&v29, 8);
  return v18;
}

void sub_22493CE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN20GMCProcessorInternal21updatePCECalibWithISFEddddP22H16ISPAnalyticsGMCInfoRK26sCIspCmdChPearlCalibrationRS2__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v3 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "updatePCECalibWithISF_block_invoke";
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "%s - Writing GMC ISF file\n", &v9, 0xCu);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = fopen("/var/mobile/Library/ISP/Pearl/IsfIRHistory.bin.bak", "wb");
  if (v5)
  {
    v6 = v5;
    fwrite((v4 + 40), 0xE38uLL, 1uLL, v5);
    fclose(v6);
    rename("/var/mobile/Library/ISP/Pearl/IsfIRHistory.bin.bak", "/var/mobile/Library/ISP/Pearl/IsfIRHistory.bin", v7);
  }

  v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
  {
    v8 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "updatePCECalibWithISF_block_invoke";
    _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_DEFAULT, "%s - OK\n", &v9, 0xCu);
  }
}

double GMCProcessorInternal::updatePCECalibWithGMCResults(dispatch_queue_t *a1, uint64_t a2, double *a3, int a4, void *__src, char *__dst, uint64_t a7, int a8)
{
  v46 = *MEMORY[0x277D85DE8];
  memcpy(__dst, __src, 0x3400uLL);
  v34 = 0uLL;
  v35 = 0.0;
  GeomUtils::CalcRotationAngleFromMatrix<double>(a2, &v34);
  *(a7 + 32) = v34;
  *(a7 + 48) = v35;
  *(a7 + 56) = 0;
  v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v16 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v15 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *a3;
    *buf = 136316162;
    v37 = "updatePCECalibWithGMCResults";
    v38 = 2048;
    v39 = v34;
    v40 = 2048;
    v41 = *(&v34 + 1);
    v42 = 2048;
    v43 = v35;
    v44 = 2048;
    v45 = v17;
    _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_DEFAULT, "%s - GMC raw rotation angles, rotX: %.5lf, rotY: %.5lf, rotZ: %.5lf, spatial_coverage: %.3lf\n", buf, 0x34u);
  }

  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (a3[47] < 0.0 || (a4 & 1) == 0)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v16)
    {
      v18 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 136315394;
    v37 = "updatePCECalibWithGMCResults";
    v38 = 1024;
    LODWORD(v39) = a4;
    v22 = "%s - Front camera supports auto-focus: %d\n";
    v23 = v18;
    goto LABEL_20;
  }

  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v16)
  {
    v18 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v37 = "updatePCECalibWithGMCResults";
    _os_log_impl(&dword_2247DB000, v18, OS_LOG_TYPE_DEFAULT, "%s - GMC controller succeeded and front camera supports auto-focus, running ISF...\n", buf, 0xCu);
  }

  mach_timebase_info(&info);
  v33 = mach_absolute_time();
  updated = GMCProcessorInternal::updatePCECalibWithISF(a1, a7, *&v34, *(&v34 + 1), v35, *a3, v19, __dst);
  *a7 = ((mach_absolute_time() - v33) * info.numer / info.denom / 0x3E8) / 1000.0;
  *(a7 + 56) = 1;
  *(a7 + 16) = *a3;
  if (updated)
  {
    v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v16)
    {
      v21 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v21;
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 136315394;
    v37 = "updatePCECalibWithGMCResults";
    v38 = 1024;
    LODWORD(v39) = updated;
    v22 = "%s - ISF run failed, status: %d, using raw/unfiltered GMC results.\n";
    v23 = v21;
LABEL_20:
    _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, 0x12u);
LABEL_21:
    v24 = *(a2 + 16);
    v25 = *(a2 + 32);
    v26 = *(a2 + 48);
    *(__dst + 1657) = *(a2 + 64);
    v27 = *a2;
    *(__dst + 13224) = v25;
    *(__dst + 13240) = v26;
    *(__dst + 13192) = v27;
    *(__dst + 13208) = v24;
  }

  if ((a8 & 0xFFFFFFFE) == 0xA)
  {
    *(__dst + 1658) = *(a2 + 80);
    v28 = -*(a2 + 72);
  }

  else
  {
    *(__dst + 1658) = *(a2 + 72);
    v28 = *(a2 + 80);
  }

  *(__dst + 1659) = v28;
  *(__dst + 1660) = *(a2 + 88);
  v29 = *(a2 + 96) * *(__src + 1116);
  *(__dst + 1117) = v29;
  *(__dst + 1110) = v29;
  result = *(a7 + 64);
  *(__dst + 1112) = result;
  return result;
}

void GMCInitializer::GMCInitializer(GMCInitializer *this, H16ISP::H16ISPDevice *a2)
{
  *this = 0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 24) = 0;
  GMCInitializer::refresh(this);
  std::thread::thread<void (&)(void *),GMCInitializer *,0>();
}

uint64_t GMCInitializer::refresh(uint64_t this)
{
  v1 = this;
  v2 = 0;
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(this + 8);
  v4 = (*(v3 + 538) + 16);
  v5 = 6;
  v6 = 6;
  do
  {
    if (*(v4 - 2))
    {
      v7 = *v4;
      if (*v4 == 1718186595)
      {
        v8 = v2;
      }

      else
      {
        v8 = v5;
      }

      if (v7 == 1718776695 || v7 == 1718775412)
      {
        v6 = v2;
      }

      else
      {
        v5 = v8;
      }
    }

    ++v2;
    v4 += 26;
  }

  while (v2 != 6);
  if (v6 != 6)
  {
    bzero(v10, 0x190uLL);
    v11 = 269;
    v12 = v6;
    this = H16ISP::H16ISPDevice::ISP_SendCommand(v3, v10, 0x190u, 0, 0xFFFFFFFF);
    if (!this)
    {
      *(v1 + 4) = v13 & 1;
    }
  }

  if (v5 != 6)
  {
    bzero(v10, 0x68uLL);
    v11 = 1565;
    v12 = v5;
    this = H16ISP::H16ISPDevice::ISP_SendCommand(*(v1 + 8), v10, 0x68u, 0, 0xFFFFFFFF);
    if (!this)
    {
      *v1 = v14;
    }
  }

  return this;
}

uint64_t RefreshOnPowerThread(H16ISP::H16ISPDevice **a1)
{
  result = H16ISP::H16ISPDevice::ISP_IsPowered(a1[1]);
  if (result)
  {
LABEL_5:
    if (!*a1)
    {

      return GMCInitializer::refresh(a1);
    }
  }

  else
  {
    while (!*a1 && (a1[3] & 1) == 0)
    {
      usleep(0x7A120u);
      result = H16ISP::H16ISPDevice::ISP_IsPowered(a1[1]);
      if (result)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

void GMCInitializer::~GMCInitializer(GMCInitializer *this)
{
  *(this + 24) = 1;
  std::thread::join(this + 2);
  std::thread::~thread(this + 2);
}

void GMCProcessor::GMCProcessor(GMCProcessor *this, const GMCInitializer *a2)
{
  *(this + 1) = 0xBFF0000000000000;
  *(this + 2) = -1;
  *(this + 3) = 0xBFF0000000000000;
  *(this + 4) = -1;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 64) = 0;
  *(this + 17) = 4;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 72) = _Q0;
  *(this + 88) = _Q0;
  *(this + 13) = 0xBFF0000000000000;
  *(this + 120) = 0;
  *(this + 248) = 0;
  operator new();
}

void GMCProcessor::~GMCProcessor(dispatch_queue_t **this)
{
  v1 = *this;
  if (*this)
  {
    dispatch_sync(*v1, &__block_literal_global_9);
    dispatch_release(*v1);
    *v1 = 0;
    MEMORY[0x22AA55B60](v1, 0x20C4093837F09);
  }
}

uint64_t GMCProcessor::run(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v39 = *MEMORY[0x277D85DE8];
  v6 = v3[6];
  if (v4 < 3 || *v6 == 5)
  {
    if (*(v6 + 17))
    {
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v6 + 17);
        v33 = 136315394;
        v34 = "run";
        v35 = 1024;
        v36 = v8;
        v9 = "%s - Unexpected GMC type %d\n";
LABEL_8:
        v10 = v7;
        v11 = 18;
LABEL_21:
        _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_DEFAULT, v9, &v33, v11);
      }
    }

    else if (*(v2 + 244))
    {
      if (v4 == 6)
      {
        operator new[]();
      }

      if (v4 == 3)
      {
        v12 = *v3;
        v13 = (*v3 + 32);
        GMC_Verbose = 0;
        v18 = *(v6 + 26);
        v19.i64[0] = v18;
        v19.i64[1] = SHIDWORD(v18);
        v20 = vcvtq_f64_s64(v19);
        v21 = *(v6 + 30);
        v19.i64[0] = v21;
        v19.i64[1] = HIDWORD(v21);
        v31 = v20;
        v32 = vcvtq_f64_u64(v19);
        if ((v6[24] & 1) == 0)
        {
          __asm { FMOV            V0.2D, #-1.0 }

          v32 = _Q0;
          v31 = _Q0;
        }

        mach_timebase_info(&info);
        v27 = mach_absolute_time();
        *(v6 + 19) = *(v6 + 10);
        v30 = v27;
        v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v28 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v28;
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v33 = 136315138;
          v34 = "run";
          _os_log_impl(&dword_2247DB000, v28, OS_LOG_TYPE_DEFAULT, "%s - Running GMC\n", &v33, 0xCu);
        }

        kdebug_trace();
        runGmcOnGmsBuffer(v13, *v12);
      }

      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315394;
        v34 = "run";
        v35 = 1024;
        v36 = v5;
        v9 = "%s - Number of buffers is not 3 or 6 (%d)\n";
        goto LABEL_8;
      }
    }

    else
    {
      v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v16 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315138;
        v34 = "run";
        v9 = "%s - Couldn't understand which projector is on this device.\n";
        v10 = v16;
        v11 = 12;
        goto LABEL_21;
      }
    }
  }

  else
  {
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *v6;
      v33 = 136315650;
      v34 = "run";
      v35 = 1024;
      v36 = 5;
      v37 = 1024;
      v38 = v15;
      v9 = "%s - expected GMC parameters buffer v%d, got v%d\n";
      v10 = v14;
      v11 = 24;
      goto LABEL_21;
    }
  }

  return 3;
}

uint64_t GMCProcessor::populateGMSBuffer(GMCProcessor *this, unint64_t *a2, int a3, int a4, int a5, const unsigned __int16 *a6, int a7, const unsigned __int16 *a8, int a9, const unsigned __int8 *a10, int a11, int a12)
{
  result = 0;
  if (a5 >= 1 && a3 >= 1)
  {
    v13 = 0;
    result = 0;
    v15 = a5;
    do
    {
      if (a4 >= 1)
      {
        v16 = 0;
        do
        {
          if (a10[v16] >= a12)
          {
            v17 = *a2 & 0xFFFFFFFFF0000000 | v16 | ((v13 & 0xFFF) << 16);
            *a2 = v17;
            v18 = v17 & 0xFFFFFC000FFFFFFFLL | ((a6[v16] & 0x3FFF) << 28);
            *a2 = v18;
            v19 = v18 & 0xFF0003FFFFFFFFFFLL | ((a8[v16] & 0x3FFF) << 42);
            *a2 = v19;
            *a2++ = v19 & 0xFFFFFFFFFFFFFFLL | (a10[v16] << 56);
            result = (result + 1);
            if (result >= a3)
            {
              break;
            }
          }

          ++v16;
        }

        while (a4 != v16);
      }

      if (++v13 >= v15)
      {
        break;
      }

      a10 += a11;
      a8 += a9 / 2;
      a6 += a7 / 2;
    }

    while (result < a3);
  }

  return result;
}

void GMCProcessor::postProcessProjectorGMC(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v18 = *MEMORY[0x277D85DE8];
  v11 = *v2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN12GMCProcessor23postProcessProjectorGMCE26sCIspCmdChPearlCalibrationS0_j18GMCInnerStatisticsyb_block_invoke;
  block[3] = &__block_descriptor_tmp_3_2;
  block[4] = v2;
  memcpy(v14, v12, sizeof(v14));
  memcpy(v15, v6, sizeof(v15));
  v16 = v8;
  memcpy(v17, v10, 0x3400uLL);
  v17[13312] = v4;
  dispatch_async(*v11, block);
}

void ___ZN12GMCProcessor23postProcessProjectorGMCE26sCIspCmdChPearlCalibrationS0_j18GMCInnerStatisticsyb_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v4 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v3 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "postProcessProjectorGMC_block_invoke";
    _os_log_impl(&dword_2247DB000, v3, OS_LOG_TYPE_DEFAULT, "%s - projector GMC reporting analytics\n", &v7, 0xCu);
  }

  reportProjectorGmcResults(a1 + 40, a1 + 13352, *(a1 + 13944), a1 + 13948, (v2 + 8));
  if (*(a1 + 27260) == 1 && *(a1 + 13728) >= 0.0)
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
    {
      v5 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "postProcessProjectorGMC_block_invoke";
      _os_log_impl(&dword_2247DB000, v5, OS_LOG_TYPE_DEFAULT, "%s - Updating PCECalib on disk\n", &v7, 0xCu);
    }

    kdebug_trace();
    PCECalibration::save(a1 + 40);
  }

  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
  {
    v6 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "postProcessProjectorGMC_block_invoke";
    _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_DEFAULT, "%s - Projector-GMC post processing done\n", &v7, 0xCu);
  }
}

void sub_22493E780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void *),GMCInitializer *>>(uint64_t *a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  (v5[1])(v5[2]);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void *),GMCInitializer *>>::~unique_ptr[abi:ne200100](&v5);
  return 0;
}

void sub_22493E810(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void *),GMCInitializer *>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void *),GMCInitializer *>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x22AA55B60](v3, 0xA0C40A8488062);
  }

  return a1;
}

uint64_t H16ISP::H16ISPGraphExclaveSensorMetadataNode::H16ISPGraphExclaveSensorMetadataNode(uint64_t a1, H16ISP::H16ISPDevice *this, int a3, int a4)
{
  result = H16ISP::H16ISPExclaveGraphNode::H16ISPExclaveGraphNode(a1, 26, this, a3, a4);
  *result = &unk_283814700;
  *(result + 96) = 0;
  return result;
}

uint64_t H16ISP::H16ISPGraphExclaveSensorMetadataNode::onMessageProcessing(H16ISP::H16ISPGraphExclaveSensorMetadataNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v2 = 3758097136;
  if (!a2)
  {
    return 3758097090;
  }

  if ((*(a2 + 9) & (1 << H16ISP::H16ISPFilterGraphNode::GetType(this))) == 0)
  {
    return 3758097130;
  }

  pthread_mutex_lock((a2 + 8));
  v5 = *(a2 + 47);
  *(this + 96) = *(a2 + 388);
  pthread_mutex_unlock((a2 + 8));
  if (!v5)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPGraphExclaveSensorMetadataNode::onMessageProcessing(this, v9);
    }

    return v2;
  }

  v6 = H16ISP::H16ISPGraphExclaveSensorMetadataNode::computePTS(this, *(v5 + 4));
  *(v5 + 4) = FigHostTimeToNanoseconds();
  pthread_mutex_lock((a2 + 8));
  *(a2 + 11) = v6;
  pthread_mutex_unlock((a2 + 8));
  v7 = *(*this + 80);

  return v7(this, v5);
}

unint64_t H16ISP::H16ISPGraphExclaveSensorMetadataNode::computePTS(H16ISP::H16ISPGraphExclaveSensorMetadataNode *this, uint64_t a2)
{
  v11 = 0.0;
  v9 = 0;
  v4 = H16ISP::H16ISPExclaveGraphNode::ISPDevice(this);
  if (H16ISP::H16ISPDevice::ISP_GetCameraTime(v4, outputStruct))
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPGraphExclaveSensorMetadataNode::computePTS();
    }
  }

  else
  {
    v6 = H16ISP::H16ISPExclaveGraphNode::ISPDevice(this);
    if (H16ISP::H16ISPDevice::GetISPCounterFrequency(v6, &v9, &v11))
    {
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPGraphExclaveSensorMetadataNode::computePTS();
      }
    }

    else
    {
      return (outputStruct[0] - (outputStruct[1] - a2) * v11);
    }
  }

  return a2;
}

uint64_t H16ISP::H16ISPGraphExclaveRGBSensorMetadataNode::H16ISPGraphExclaveRGBSensorMetadataNode(H16ISP::H16ISPGraphExclaveRGBSensorMetadataNode *this, H16ISP::H16ISPDevice *a2, int a3)
{
  result = H16ISP::H16ISPExclaveGraphNode::H16ISPExclaveGraphNode(this, 26, a2, a3, 1);
  *(result + 96) = 0;
  *result = &unk_283814768;
  return result;
}

{
  result = H16ISP::H16ISPExclaveGraphNode::H16ISPExclaveGraphNode(this, 26, a2, a3, 1);
  *(result + 96) = 0;
  *result = &unk_283814768;
  return result;
}

uint64_t H16ISP::H16ISPGraphExclaveRGBSensorMetadataNode::sendSensorMetadata(uint64_t a1, int *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  if (*(a2 + 102) <= 1u)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a2 + 102);
  }

  v5 = BinningModeToFactor(*(a2 + 100));
  v6 = BinningModeToFactor(*(a2 + 101));
  v7 = H16ISP::H16ISPExclaveGraphNode::Verbose(a1);
  v8 = MEMORY[0x277D86220];
  if (v7)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a2[31];
      v11 = *(a2 + 128);
      v12 = *(a2 + 100);
      v13 = *(a2 + 101);
      v14 = a2[29];
      v15 = a2[30];
      v16 = *a2;
      *buf = 136316930;
      v39 = "sendSensorMetadata";
      v40 = 2048;
      v41 = v10;
      v42 = 1024;
      v43 = v11;
      v44 = 1024;
      v45 = v12;
      v46 = 1024;
      v47 = v13;
      v48 = 1024;
      v49 = v14;
      v50 = 1024;
      v51 = v15;
      v52 = 1024;
      v53 = v16;
      _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, "%s - focalLength=%f, isValid=%hhu, modeBinW=%hhu, modeBinH=%hhu, centerX=%u, centerY=%u, requestID=0x%08X\n", buf, 0x3Au);
    }
  }

  H16ISP::H16ISPExclaveGraphNode::GetModuleParams(a1, buf);
  v17 = 1.0 / v54;
  v18 = ComputeLensPSF(v5, v6, v4, *(a2 + 46), *(a2 + 47), *(a2 + 48), *(a2 + 49));
  v19 = v18;
  if (*(a2 + 128))
  {
    v20 = a2[31] * 0.0000152587891 * 1000.0 * v17 * v18;
  }

  else
  {
    v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v8)
    {
      v21 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v21;
    }

    v20 = 1.0;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPGraphExclaveRGBSensorMetadataNode::sendSensorMetadata(v21);
    }
  }

  v22 = ComputeOpticalCenter(v5, v6, v4, *(a2 + 46), *(a2 + 47), *(a2 + 48), *(a2 + 49), v19, v17, a2[29], *(a2 + 1), a2[30], 0);
  v24 = v23;
  bzero(&v39, 0x268uLL);
  *buf = 196609;
  v55 = H16ISP::H16ISPExclaveGraphNode::Channel(a1);
  v56 = *a2;
  v57 = *(a2 + 1);
  v58 = *(a2 + 3);
  v59 = *(a2 + 10);
  v60 = *(a2 + 3);
  *&v25 = *(a2 + 4);
  *(&v25 + 1) = *(a2 + 11);
  v61 = v25;
  v62 = *(a2 + 13);
  v63 = *(a2 + 15);
  v64 = *(a2 + 17);
  v65 = a2[19];
  v26 = *(a1 + 96);
  v67 = *(a1 + 96);
  v66 = *(a2 + 20);
  v68 = v20;
  v69 = 0;
  v70 = v22;
  v71 = 0;
  v72 = v20;
  v73 = v24;
  v74 = 0;
  v75 = 0x3F80000000000000;
  *&v25 = *(a2 + 21);
  *(&v25 + 1) = *(a2 + 13);
  v76 = v25;
  v77 = a2[28];
  if (H16ISP::H16ISPExclaveGraphNode::Verbose(a1))
  {
    v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v8)
    {
      v27 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v27;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 67109632;
      v33 = v55;
      v34 = 1024;
      v35 = v56;
      v36 = 1024;
      v37 = v26;
      _os_log_impl(&dword_2247DB000, v27, OS_LOG_TYPE_DEFAULT, "sending sensor metadata channel=%u frameid=%u concurrentmode=%d \n", v32, 0x14u);
    }
  }

  kdebug_trace();
  v28 = ispExclaveKitCommand();
  kdebug_trace();
  if (!v28)
  {
    return 0;
  }

  v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v8)
  {
    v29 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v29;
  }

  v30 = 3758097084;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPGraphExclaveRGBSensorMetadataNode::sendSensorMetadata();
  }

  return v30;
}

uint64_t BinningModeToFactor(unsigned int a1)
{
  if (a1 >= 3)
  {
    v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v2 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v2;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      BinningModeToFactor();
    }

    LOBYTE(v1) = 1;
  }

  else
  {
    return (0x40201u >> (8 * (a1 & 0x1F)));
  }

  return v1;
}

uint64_t H16ISP::H16ISPGraphExclaveIRSensorMetadataNode::H16ISPGraphExclaveIRSensorMetadataNode(H16ISP::H16ISPGraphExclaveIRSensorMetadataNode *this, H16ISP::H16ISPDevice *a2, int a3)
{
  result = H16ISP::H16ISPExclaveGraphNode::H16ISPExclaveGraphNode(this, 26, a2, a3, 0);
  *(result + 96) = 0;
  *result = &unk_2838147D0;
  return result;
}

{
  result = H16ISP::H16ISPExclaveGraphNode::H16ISPExclaveGraphNode(this, 26, a2, a3, 0);
  *(result + 96) = 0;
  *result = &unk_2838147D0;
  return result;
}

uint64_t H16ISP::H16ISPGraphExclaveIRSensorMetadataNode::sendSensorMetadata(uint64_t a1, int *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  if (*(a2 + 102) <= 1u)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a2 + 102);
  }

  v5 = BinningModeToFactor(*(a2 + 100));
  v6 = BinningModeToFactor(*(a2 + 101));
  H16ISP::H16ISPExclaveGraphNode::GetModuleParams(a1, &v27);
  v7 = 1.0 / v28[36];
  v8 = ComputeLensPSF(v5, v6, v4, *(a2 + 46), *(a2 + 47), *(a2 + 48), *(a2 + 49));
  v9 = ComputeOpticalCenter(v5, v6, v4, *(a2 + 46), *(a2 + 47), *(a2 + 48), *(a2 + 49), v8, v7, a2[29], *(a2 + 1), a2[30], 0);
  v11 = v10;
  bzero(v28, 0x268uLL);
  v27 = 196609;
  v29 = H16ISP::H16ISPExclaveGraphNode::Channel(a1);
  v30 = *a2;
  v31 = *(a2 + 1);
  v32 = *(a2 + 3);
  v33 = *(a2 + 10);
  v34 = *(a2 + 3);
  *&v12 = *(a2 + 4);
  *(&v12 + 1) = *(a2 + 11);
  v35 = v12;
  v36 = *(a2 + 13);
  v37 = *(a2 + 15);
  v38 = *(a2 + 17);
  v39 = a2[19];
  v13 = *(a1 + 96);
  v41 = *(a1 + 96);
  v40 = *(a2 + 20);
  v42 = 1065353216;
  v43 = v9;
  v44 = 0x3F80000000000000;
  v45 = v11;
  v46 = 0;
  v47 = 0x3F80000000000000;
  *&v12 = *(a2 + 21);
  *(&v12 + 1) = *(a2 + 13);
  v48 = v12;
  v49 = a2[28];
  v14 = H16ISP::H16ISPExclaveGraphNode::Verbose(a1);
  v15 = MEMORY[0x277D86220];
  if (v14)
  {
    v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v16 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v16;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v22 = v29;
      v23 = 1024;
      v24 = v30;
      v25 = 1024;
      v26 = v13;
      _os_log_impl(&dword_2247DB000, v16, OS_LOG_TYPE_DEFAULT, "sending sensor metadata channel=%u frameid=%u concurrentmode=%d\n", buf, 0x14u);
    }
  }

  kdebug_trace();
  v17 = ispExclaveKitCommand();
  kdebug_trace();
  if (!v17)
  {
    return 0;
  }

  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v15)
  {
    v18 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v18;
  }

  v19 = 3758097084;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPGraphExclaveIRSensorMetadataNode::sendSensorMetadata();
  }

  return v19;
}

void H16ISP::H16ISPGraphExclaveRGBSensorMetadataNode::~H16ISPGraphExclaveRGBSensorMetadataNode(H16ISP::H16ISPGraphExclaveRGBSensorMetadataNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

void H16ISP::H16ISPGraphExclaveIRSensorMetadataNode::~H16ISPGraphExclaveIRSensorMetadataNode(H16ISP::H16ISPGraphExclaveIRSensorMetadataNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISP::H16ISPDevice::GetUnitInfoPropertyDict(H16ISP::H16ISPDevice *this, __CFDictionary **a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = 3758097085;
  err = 0;
  if (!a2 || *a2)
  {
    return 3758097090;
  }

  if (byte_28100312A)
  {
    return 0;
  }

  v5 = *MEMORY[0x277CBECE8];
  v6 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], @"/usr/local/share/firmware/isp/ISPUnitInfo.plist", kCFURLPOSIXPathStyle, 0);
  if (v6)
  {
    v7 = v6;
    format = 0;
    v8 = CFReadStreamCreateWithFile(v5, v6);
    if (v8)
    {
      v9 = v8;
      if (CFReadStreamOpen(v8))
      {
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
        {
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
        }

        v10 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v17 = "GetUnitInfoPropertyDict";
          _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s - Parsing ISPUnitInfo.plist\n", buf, 0xCu);
        }

        v11 = CFPropertyListCreateWithStream(v5, v9, 0, 0, &format, &err);
        if (err)
        {
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v10)
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPDevice::GetUnitInfoPropertyDict();
          }

          v12 = CFErrorCopyDescription(err);
          if (v12)
          {
            v13 = v12;
            CFShow(v12);
            CFRelease(v13);
          }
        }

        else
        {
          v2 = 0;
          *a2 = v11;
        }
      }

      else
      {
        v2 = 3758097136;
      }

      CFReadStreamClose(v9);
      CFRelease(v9);
    }

    CFRelease(v7);
  }

  return v2;
}

uint64_t H16ISP::H16ISPDevice::CreateISPUnitInfoDictionary(H16ISP::H16ISPDevice *this, __CFDictionary **a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v4 = v3;
  v5 = v2;
  v100 = *MEMORY[0x277D85DE8];
  v6 = 3758097085;
  length = 40960;
  if (!H16ISP::H16ISPDevice::ISP_IsPowered(v2))
  {
    Mutable = 0;
    v6 = 3758097123;
    goto LABEL_10;
  }

  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    length_4 = *(v5 + 1074);
    v9 = CFNumberCreate(0, kCFNumberIntType, &length_4);
    CFDictionarySetValue(Mutable, @"PlatformID", v9);
    CFRelease(v9);
    v10 = MGCopyAnswer();
    if (v10)
    {
      v11 = v10;
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(v11))
      {
        CFDictionarySetValue(Mutable, @"iOSBuildVersion", v11);
      }

      CFRelease(v11);
    }

    bzero(v92, 0xACuLL);
    v93 = 6;
    v13 = H16ISP::H16ISPDevice::ISP_SendCommand(v5, v92, 0xACu, 0, 0xFFFFFFFF);
    if (v13)
    {
      v6 = v13;
      CFRelease(Mutable);
      Mutable = 0;
      goto LABEL_10;
    }

    v15 = CFStringCreateWithCString(0, v94, 0);
    if (v15)
    {
      v16 = v15;
      CFDictionarySetValue(Mutable, @"FirmwareName", v15);
      CFRelease(v16);
    }

    v17 = CFStringCreateWithCString(0, v95, 0);
    if (v17)
    {
      v18 = v17;
      CFDictionarySetValue(Mutable, @"FirmwareLinkDate", v17);
      CFRelease(v18);
    }

    v19 = CFStringCreateWithCString(0, v96, 0);
    if (v19)
    {
      v20 = v19;
      CFDictionarySetValue(Mutable, @"FirmwareReleaseVersion", v19);
      CFRelease(v20);
    }

    v21 = CFStringCreateWithCString(0, v97, 0);
    if (v21)
    {
      v22 = v21;
      CFDictionarySetValue(Mutable, @"FirmwareToolchainName", v21);
      CFRelease(v22);
    }

    v23 = CFStringCreateWithCString(0, v98, 0);
    if (v23)
    {
      v24 = v23;
      CFDictionarySetValue(Mutable, @"FirmwareToolchainVersion", v23);
      CFRelease(v24);
    }

    v25 = *MEMORY[0x277CD28A0];
    v26 = IOServiceNameMatching("AppleARMPE");
    MatchingService = IOServiceGetMatchingService(v25, v26);
    v28 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"IOPlatformSerialNumber", v7, 3u);
    if (v28)
    {
      v29 = v28;
      CFDictionarySetValue(Mutable, @"DeviceSerialNumber", v28);
      CFRelease(v29);
    }

    theDict = 0;
    H16ISP::H16ISPDevice::GetUnitInfoPropertyDict(v28, &theDict);
    v30 = IORegistryEntrySearchCFProperty(*(v5 + 1084), "IOService", @"multi-camera-cal-wide", v7, 3u);
    Value = v30;
    if (v30 || theDict && (Value = CFDictionaryGetValue(theDict, @"MultiCameraCalWide")) != 0)
    {
      v32 = CFDataGetLength(Value);
      BytePtr = CFDataGetBytePtr(Value);
      if (BytePtr)
      {
        v34 = CFDataCreate(0, BytePtr, v32);
        CFDictionarySetValue(Mutable, @"MultiCameraCalWide", v34);
        CFRelease(v34);
      }

      if (v30)
      {
        CFRelease(v30);
      }
    }

    v35 = IORegistryEntrySearchCFProperty(*(v5 + 1084), "IOService", @"multi-camera-cal-swide", v7, 3u);
    v36 = v35;
    if (v35 || theDict && (v36 = CFDictionaryGetValue(theDict, @"MultiCameraCalSwide")) != 0)
    {
      v37 = CFDataGetLength(v36);
      v38 = CFDataGetBytePtr(v36);
      if (v38)
      {
        v39 = CFDataCreate(0, v38, v37);
        CFDictionarySetValue(Mutable, @"MultiCameraCalSwide", v39);
        CFRelease(v39);
      }

      if (v35)
      {
        CFRelease(v35);
      }
    }

    v40 = IORegistryEntrySearchCFProperty(*(v5 + 1084), "IOService", @"front-camera-cal-swide", v7, 3u);
    v41 = v40;
    if (v40)
    {
      goto LABEL_38;
    }

    if (!theDict)
    {
LABEL_47:
      length_4 = v99;
      v45 = CFNumberCreate(0, kCFNumberIntType, &length_4);
      CFDictionarySetValue(Mutable, @"MetadataVersion", v45);
      CFRelease(v45);
      v46 = CFArrayCreateMutable(v7, *(v5 + 1167), MEMORY[0x277CBF128]);
      if (!v46)
      {
        goto LABEL_67;
      }

      v47 = v46;
      v76 = v4;
      if (!*(v5 + 1167))
      {
        goto LABEL_66;
      }

      v48 = 0;
      v49 = MEMORY[0x277CBF138];
      v50 = MEMORY[0x277CBF150];
      while (1)
      {
        v51 = CFDictionaryCreateMutable(v7, 0, v49, v50);
        if (v51)
        {
          v52 = v51;
          length_4 = v48;
          v53 = CFNumberCreate(0, kCFNumberIntType, &length_4);
          CFDictionarySetValue(v52, @"Index", v53);
          CFRelease(v53);
          if (!H16ISP::H16ISPDevice::ISP_GetModuleParams(v5, v48, v84))
          {
            if (v84[4] == 1)
            {
              length_4 = v85;
              v54 = CFNumberCreate(0, kCFNumberIntType, &length_4);
              CFDictionarySetValue(v52, @"SensorID", v54);
              CFRelease(v54);
              length_4 = v86;
              v55 = CFNumberCreate(0, kCFNumberIntType, &length_4);
              CFDictionarySetValue(v52, @"ModuleIntegrator", v55);
              CFRelease(v55);
              length_4 = v87;
              v56 = CFNumberCreate(0, kCFNumberIntType, &length_4);
              CFDictionarySetValue(v52, @"ModuleLensID", v56);
              CFRelease(v56);
              length_4 = v90;
              v57 = CFNumberCreate(0, kCFNumberIntType, &length_4);
              CFDictionarySetValue(v52, @"ModuleIRFilterID", v57);
              CFRelease(v57);
              length = 40960;
              if (H16ISP::H16ISPDevice::GetSensorNVMBytes(v5, v48, bytes, 0, &length))
              {
                goto LABEL_66;
              }

              v58 = CFDataCreate(0, bytes, length);
              CFDictionarySetValue(v52, @"NVM", v58);
              CFRelease(v58);
              if (v88 == 1)
              {
                valuePtr = v89;
                v59 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
                CFDictionarySetValue(v52, @"SetfileVersion", v59);
                CFRelease(v59);
                v79 = 0;
                if (!H16ISP::H16ISPDevice::ISP_GetSetfileSize(v5, v48, &v79))
                {
                  operator new[]();
                }
              }
            }

            LOWORD(valuePtr) = 0;
            LOWORD(v79) = 0;
            *v78 = 0;
            if (H16ISP::H16ISPDevice::GetColorCalData(v5, v48, &valuePtr, &v79, &v78[1], v78))
            {
              goto LABEL_66;
            }

            v60 = CFDictionaryCreateMutable(v7, 0, v49, v50);
            if (!v60)
            {
              goto LABEL_66;
            }

            v61 = v60;
            v62 = v47;
            v63 = v50;
            v64 = v49;
            length_4 = valuePtr;
            v65 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v61, @"LowCCTrgBias", v65);
            CFRelease(v65);
            length_4 = v79;
            v66 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v61, @"LowCCTbgBias", v66);
            CFRelease(v66);
            length_4 = v78[1];
            v67 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v61, @"HiCCTrgBias", v67);
            CFRelease(v67);
            length_4 = v78[0];
            v68 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v61, @"HiCCTbgBias", v68);
            CFRelease(v68);
            CFDictionarySetValue(v52, @"ColorCalibrationData", v61);
            CFRelease(v61);
            v77 = 0;
            if (H16ISP::H16ISPDevice::GetAbsoluteColorCal(v5, v48, &valuePtr, &v79, &v78[1], v78, &v77) || (v69 = CFDictionaryCreateMutable(v7, 0, v64, v63)) == 0)
            {
              v47 = v62;
LABEL_66:
              CFDictionarySetValue(Mutable, @"ChannelArray", v47);
              CFRelease(v47);
              v4 = v76;
LABEL_67:
              v6 = 0;
              goto LABEL_10;
            }

            v70 = v69;
            length_4 = valuePtr;
            v71 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v70, @"LowCCTrgAbs", v71);
            CFRelease(v71);
            length_4 = v79;
            v72 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v70, @"LowCCTbgAbs", v72);
            CFRelease(v72);
            length_4 = v78[1];
            v73 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v70, @"HiCCTrgAbs", v73);
            CFRelease(v73);
            length_4 = v78[0];
            v74 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v70, @"HiCCTbgAbs", v74);
            CFRelease(v74);
            length_4 = v77;
            v75 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v70, @"AbsoluteColorCalFlags", v75);
            CFRelease(v75);
            CFDictionarySetValue(v52, @"AbsoluteColorCalibrationData", v70);
            CFRelease(v70);
            v49 = v64;
            v50 = v63;
            v47 = v62;
          }

          CFArraySetValueAtIndex(v47, v48, v52);
          CFRelease(v52);
        }

        if (++v48 >= *(v5 + 1167))
        {
          goto LABEL_66;
        }
      }
    }

    v41 = CFDictionaryGetValue(theDict, @"FrontCameraCalSwide");
    if (v41)
    {
LABEL_38:
      v42 = CFDataGetLength(v41);
      v43 = CFDataGetBytePtr(v41);
      if (v43)
      {
        v44 = CFDataCreate(0, v43, v42);
        CFDictionarySetValue(Mutable, @"FrontCameraCalSwide", v44);
        CFRelease(v44);
      }

      if (v40)
      {
        CFRelease(v40);
      }
    }

    if (theDict)
    {
      CFRelease(theDict);
      theDict = 0;
    }

    goto LABEL_47;
  }

LABEL_10:
  *v4 = Mutable;
  return v6;
}

uint64_t H16ISP::H16ISPDevice::GetSensorNVMBytes(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned __int8 *a3, unsigned int a4, unsigned int *a5)
{
  v5 = 3758097090;
  if (*(this + 4))
  {
    if (*(this + 1167) > a2)
    {
      v6 = (*(this + 5) + 432 * a2);
      if (*v6)
      {
        v7 = v6[18];
        if (v7 > a4)
        {
          v8 = *a5;
          if (*a5 >= v7)
          {
            v8 = v7;
          }

          if (v8 + a4 <= v7)
          {
            v9 = v8;
          }

          else
          {
            v9 = v7 - a4;
          }

          if (v9)
          {
            operator new[]();
          }
        }
      }

      else
      {
        return 3758097088;
      }
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v5 = 3758097112;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::GetSensorNVMBytes();
    }
  }

  return v5;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetSetfileSize(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int *a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  output = 0;
  input[0] = a2;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v3, 0x14u, input, 1u, &output, &outputCnt);
  if (!result)
  {
    *a3 = output;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_CopySetfile(H16ISP::H16ISPDevice *this, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v4 = *(this + 1086);
  if (!v4)
  {
    return 3758097084;
  }

  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v5 = IOConnectCallScalarMethod(v4, 0x38u, v7, 3u, 0, 0);
  if (v5)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ISP_CopySetfile();
    }
  }

  return v5;
}

uint64_t H16ISP::H16ISPDevice::GetColorCalData(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6)
{
  bzero(v13, 0x14uLL);
  v14 = 2053;
  v15 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v16;
    *a4 = v17;
    *a5 = v18;
    *a6 = v19;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetAbsoluteColorCal(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int8 *a7)
{
  bzero(v15, 0x18uLL);
  v16 = 2056;
  v17 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v18;
    *a4 = v19;
    *a5 = v20;
    *a6 = v21;
    *a7 = v22;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetLSCCoefficients(uint64_t a1, unsigned int a2, unsigned int a3, void *__dst)
{
  v4 = 3758097090;
  if (*(a1 + 4))
  {
    if (*(a1 + 4668) > a2)
    {
      v5 = *(a1 + 40) + 432 * a2;
      if (*v5 > a3)
      {
        memmove(__dst, (*(v5 + 24) + 72 * a3), 0x48uLL);
        return 0;
      }
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v4 = 3758097112;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::GetLSCCoefficients();
    }
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::AllExpectedSensorsDetected(H16ISP::H16ISPDevice *this)
{
  v1 = *(this + 1167);
  if (v1)
  {
    if (*(this + 4) == 1)
    {
      v2 = *(this + 538);
      if (v2)
      {
        v3 = (v2 + 12);
        for (i = 44; ; i += 432)
        {
          v5 = *v3;
          v3 += 26;
          if (v5)
          {
            if (!*(*(this + 5) + i))
            {
              break;
            }
          }

          if (!--v1)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t H16ISP::H16ISPDevice::SetStillFESConfig(H16ISP::H16ISPDevice *a1, __int16 a2, int a3, char a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  bzero(v17, 0x2CuLL);
  v19 = a2;
  v18 = 2308;
  v20 = a4;
  v21 = a3;
  v22 = a7;
  v23 = a8;
  v24 = a5;
  v25 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v17, 0x2Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableVisPipeOutput(uint64_t a1, uint64_t a2)
{
  v9 = MEMORY[0x28223BE20](a1, a2);
  v27 = *MEMORY[0x277D85DE8];
  result = 3758097090;
  if (v8 <= 4)
  {
    v11 = v2;
    if (*(v9 + 1167) > v2)
    {
      v12 = v8;
      v13 = v7;
      v14 = v6;
      v15 = v5;
      v16 = v4;
      v17 = v3;
      v18 = HIDWORD(v4);
      v19 = HIDWORD(v3);
      bzero(v20, 0x1CuLL);
      v21 = 20488;
      v22 = v11;
      v23 = v17;
      v25 = v16;
      v26 = v18;
      v24 = v19;
      result = H16ISP::H16ISPDevice::ISP_SendCommand(v9, v20, 0x1Cu, 0, 0xFFFFFFFF);
      if (!result)
      {
        bzero(v20, 0x14uLL);
        v22 = v11;
        v21 = 20489;
        LOWORD(v23) = v14;
        HIWORD(v23) = v13;
        v24 = v12;
        result = H16ISP::H16ISPDevice::ISP_SendCommand(v9, v20, 0x14u, 0, 0xFFFFFFFF);
        if (!result)
        {
          bzero(v20, 0x10uLL);
          v22 = v11;
          v21 = 20487;
          LOBYTE(v23) = v15;
          return H16ISP::H16ISPDevice::ISP_SendCommand(v9, v20, 0x10u, 0, 0xFFFFFFFF);
        }
      }
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ConfigureProResRawOutput(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  if (*(this + 1167) < a2)
  {
    return 3758097090;
  }

  v8 = 365;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::StopCamera(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = 3758097112;
  v4 = *(this + 1086);
  if (!v4)
  {
    return 3758097084;
  }

  if (*(this + 4))
  {
    v6[0] = a2;
    return IOConnectCallScalarMethod(v4, 0x37u, v6, 1u, 0, 0);
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::StopCamera();
    }
  }

  return v3;
}

uint64_t H16ISP::H16ISPDevice::ReturnAllUnusedBuffers(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v4 = v3;
  v11 = *MEMORY[0x277D85DE8];
  if (*(v2 + 4))
  {
    v5 = v2;
    bzero(v8, 0xCuLL);
    v10 = v4;
    v9 = 260;
    return H16ISP::H16ISPDevice::ISP_SendCommand(v5, v8, 0xCu, 0, 0xFFFFFFFF);
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v6 = 3758097112;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ReturnAllUnusedBuffers();
    }
  }

  return v6;
}

uint64_t H16ISP::H16ISPDevice::ReturnAllBuffersInPool(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 347;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ReturnAllSharedBuffersInPool(H16ISP::H16ISPDevice *this, __int16 a2, __int16 a3, int a4)
{
  bzero(v9, 0x10uLL);
  v10 = 13323;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::StartFaceDetect(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2;
  v18 = *MEMORY[0x277D85DE8];
  bzero(v12, 0x1CuLL);
  v14 = v8;
  v13 = 3330;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(v9, v12, 0x1Cu, 0, 0xFFFFFFFF);
  if (!result)
  {
    v11 = v16;
    bzero(v12, 0x18uLL);
    v13 = 3331;
    v14 = v8;
    v15 = v11;
    LOBYTE(v16) = v6 & 1;
    BYTE1(v16) = (v6 & 2) != 0;
    BYTE2(v16) = (v6 & 4) != 0;
    HIBYTE(v16) = (v6 & 8) == 0;
    v17 = (v6 & 0x10) == 0;
    result = H16ISP::H16ISPDevice::ISP_SendCommand(v9, v12, 0x18u, 0, 0xFFFFFFFF);
    if (!result)
    {
      bzero(v12, 0x10uLL);
      v14 = v8;
      v13 = 3333;
      LOBYTE(v15) = v4;
      result = H16ISP::H16ISPDevice::ISP_SendCommand(v9, v12, 0x10u, 0, 0xFFFFFFFF);
      if (!result)
      {
        bzero(v12, 0xCuLL);
        v14 = v8;
        v13 = 3328;
        return H16ISP::H16ISPDevice::ISP_SendCommand(v9, v12, 0xCu, 0, 0xFFFFFFFF);
      }
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ReconfigureFaceDetect(H16ISP::H16ISPDevice *this, int a2, char a3, int a4)
{
  bzero(v9, 0x18uLL);
  v10 = 3331;
  v11 = a2;
  v12 = a4;
  v13 = a3 & 1;
  v14 = (a3 & 2) != 0;
  v15 = (a3 & 4) != 0;
  v16 = (a3 & 8) == 0;
  v17 = (a3 & 0x10) == 0;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::StopFaceDetect(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v4 = v3;
  v5 = v2;
  v10 = *MEMORY[0x277D85DE8];
  bzero(v7, 0xCuLL);
  v9 = v4;
  v8 = 3329;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(v5, v7, 0xCu, 0, 0xFFFFFFFF);
  if (!result)
  {
    bzero(v7, 0xCuLL);
    v9 = v4;
    v8 = 3332;
    return H16ISP::H16ISPDevice::ISP_SendCommand(v5, v7, 0xCu, 0, 0xFFFFFFFF);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_SetExclaveMaximumFrameRate(H16ISP::H16ISPDevice *this, unsigned int a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = 3758097084;
  if (*(this + 1086))
  {
    if (*(this + 1167) <= a2)
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::ISP_SetExclaveMaximumFrameRate();
      }
    }

    else
    {
      bzero(&v11, 0x208uLL);
      v13 = a3;
      v12 = a2;
      kdebug_trace();
      v6 = ispExclaveKitCommand();
      kdebug_trace();
      if (byte_281003130 == 1)
      {
        v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v7 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v7;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          v15 = v12;
          v16 = 1024;
          v17 = v13;
          _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "AE max framerate: channel=%u, maxfps=%u\n", buf, 0xEu);
        }
      }

      if (v6)
      {
        v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v8 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPDevice::ISP_SetExclaveMaximumFrameRate();
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t H16ISP::H16ISPDevice::SetMaximumFrameRateForAllocation(H16ISP::H16ISPDevice *this, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 369;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetExclaveMinimumFrameRate(H16ISP::H16ISPDevice *this, unsigned int a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = 3758097084;
  if (*(this + 1086))
  {
    if (*(this + 1167) <= a2)
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::ISP_SetExclaveMinimumFrameRate();
      }
    }

    else
    {
      bzero(&v11, 0x208uLL);
      v13 = a3;
      v12 = a2;
      kdebug_trace();
      v6 = ispExclaveKitCommand();
      kdebug_trace();
      if (byte_281003130 == 1)
      {
        v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v7 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v7;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          v15 = v12;
          v16 = 1024;
          v17 = v13;
          _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "AE min framerate: channel=%u, minfps=%u\n", buf, 0xEu);
        }
      }

      if (v6)
      {
        v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v8 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPDevice::ISP_SetExclaveMinimumFrameRate();
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t H16ISP::H16ISPDevice::GetMinimumFrameRate(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3)
{
  if ((*(this + 1073) >> a2))
  {
    result = 0;
    *a3 = 0;
  }

  else
  {
    bzero(v7, 0x10uLL);
    v8 = 521;
    v9 = a2;
    result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
    if (!result)
    {
      *a3 = v10;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetExternalSyncConfigFrameRate(H16ISP::H16ISPDevice *a1, int a2, unint64_t a3)
{
  v3 = a3;
  v6 = HIDWORD(a3);
  bzero(v8, 0x14uLL);
  v9 = 371;
  v10 = a2;
  v11 = v3;
  v12 = v6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v8, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetRationalFrameRateRange(H16ISP::H16ISPDevice *a1, int a2, int a3, void *a4, void *a5)
{
  bzero(v12, 0x20uLL);
  v13 = 608;
  v14 = a2;
  v15 = a3;
  if (a3)
  {
    result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v12, 0x20u, 0, 0xFFFFFFFF);
    if (!result)
    {
      if (a3)
      {
        result = 0;
        v11 = v16;
        *a4 = *(&v16 + 1);
        *a5 = v11;
      }
    }
  }

  else
  {
    v16 = *a5;
    return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v12, 0x20u, 0, 0xFFFFFFFF);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetDeviceNVMBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (*a6)
  {
    operator new[]();
  }

  return 3758097090;
}

uint64_t H16ISP::H16ISPDevice::ReloadNVMBytes(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v3 = 3758097112;
  if (*(this + 4))
  {
    if (*(this + 1167) <= a2)
    {
      return 3758097090;
    }

    else
    {
      v5 = *(this + 5);
      if (*(v5 + 432 * a2))
      {
        bzero(v9, 0x14uLL);
        v10 = 1282;
        v11 = a2;
        v12 = 0;
        v13 = *(v5 + 432 * a2 + 72);
        v3 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
        if (!v3)
        {
          return H16ISP::H16ISPDevice::CacheDeviceConfigs(this, v7);
        }
      }

      else
      {
        return 3758097088;
      }
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ReloadNVMBytes();
    }
  }

  return v3;
}

uint64_t H16ISP::H16ISPDevice::EnableAE(H16ISP::H16ISPDevice *this, unsigned int a2, int a3)
{
  if (*(this + 1167) <= a2)
  {
    return 3758097090;
  }

  v13 = v3;
  v14 = v4;
  if (a3)
  {
    bzero(v10, 0xCuLL);
    v11 = 512;
    v12 = a2;
    v7 = this;
    v8 = 12;
  }

  else
  {
    bzero(v10, 0x10uLL);
    v11 = 513;
    v12 = a2;
    v7 = this;
    v8 = 16;
  }

  return H16ISP::H16ISPDevice::ISP_SendCommand(v7, v10, v8, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAWB(H16ISP::H16ISPDevice *this, unsigned int a2, int a3)
{
  if (*(this + 1167) <= a2)
  {
    return 3758097090;
  }

  v12 = v3;
  v13 = v4;
  if (a3)
  {
    bzero(v9, 0xCuLL);
    v7 = 768;
  }

  else
  {
    bzero(v9, 0xCuLL);
    v7 = 769;
  }

  v10 = v7;
  v11 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetFaceDetectionWindowParam(H16ISP::H16ISPDevice *a1, int a2, uint64_t a3)
{
  bzero(v7, 0x14uLL);
  v8 = 3340;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetFaceDetectionWindowParam(H16ISP::H16ISPDevice *a1, int a2, void *a3)
{
  bzero(v7, 0x14uLL);
  v8 = 3341;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetLensTemperature(H16ISP::H16ISPDevice *this, int a2, int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1961;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableHighFrameRateAF(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1038;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableReplaySifDMA(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 355;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::WritePropertyValue(H16ISP::H16ISPDevice *this, int a2, int a3, int a4, unsigned int a5)
{
  bzero(v15, 0x14uLL);
  v16 = 290;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v10 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x14u, 0, a5);
  v11 = v10;
  if (a3 == 6914 && !v10)
  {
    if (*(this + 1167))
    {
      v12 = 0;
      while (1)
      {
        updated = H16ISP::H16ISPDevice::UpdateChannelConfigCache(this, v12);
        if (updated)
        {
          break;
        }

        if (++v12 >= *(this + 1167))
        {
          return 0;
        }
      }

      v11 = updated;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::WritePropertyValue();
      }
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t H16ISP::H16ISPDevice::ReadPropertyValue(H16ISP::H16ISPDevice *this, int a2, int a3, unsigned int *a4, unsigned int a5)
{
  bzero(v11, 0x14uLL);
  v12 = 291;
  v13 = a2;
  v14 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x14u, 0, a5);
  if (!result)
  {
    *a4 = v15;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SendFirmwareObjectSpecialFunc(H16ISP::H16ISPDevice *this, int a2, const char **a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2 != 6)
  {
    return 3758097090;
  }

  bzero(v13, 0x40uLL);
  v14 = 5;
  strncpy(v16, a3[1], 0x20uLL);
  v5 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x40u, 1u, 0xFFFFFFFF);
  if (v5)
  {
    v6 = v5;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::SendFirmwareObjectSpecialFunc();
    }
  }

  else
  {
    v7 = v21;
    v8 = strtoul(a3[2], 0, 0);
    v9 = strtoul(a3[3], 0, 0);
    v10 = strtoul(a3[4], 0, 0);
    v11 = strtoul(a3[5], 0, 0);
    printf("Special function: name: %s, parameters %llu %llu %llu %llu\n", v16, v8, v9, v10, v11);
    bzero(v13, 0x38uLL);
    v14 = 28;
    v15 = 1;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x38u, 1u, 0xFFFFFFFF);
  }

  return v6;
}

uint64_t H16ISP::H16ISPDevice::SetBinningMode(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1293;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetFocusMode(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31734;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetAFMatrixModeConfig(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int16 *a7)
{
  bzero(v15, 0x18uLL);
  v16 = -31732;
  v17 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v18;
    *a4 = v19;
    *a5 = v20;
    *a6 = v21;
    *a7 = v22;
  }

  return result;
}

float H16ISP::H16ISPDevice::GetLSCStrength(H16ISP::H16ISPDevice *this, int a2, float *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2637;
  v9 = a2;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF))
  {
    result = v10;
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::LTMUpdateSuspend(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 8194;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LTMUpdateResume(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 8195;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LTMStateSet(H16ISP::H16ISPDevice *this, int a2, int a3, __int16 a4)
{
  bzero(v9, 0x14uLL);
  v10 = 8201;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LTMHWConfigSet(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2633;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LSCIdealPercentSet(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2638;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::CLRProcGammaConfigSet(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2634;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LSCModulationSuspend(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0x10uLL);
  v6 = 2610;
  v7 = a2;
  v8 = 1;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LSCModulationResume(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0x10uLL);
  v6 = 2610;
  v7 = a2;
  v8 = 0;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetTNRAlgorithm(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -16103;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetOISPosition(H16ISP::H16ISPDevice *this, int a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = 1856;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetOISPosition(H16ISP::H16ISPDevice *this, int a2, int *a3, int *a4, __int16 *a5, __int16 *a6)
{
  bzero(v14, 0x18uLL);
  v15 = 1857;
  v16 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v14, 0x18u, 0, 0xFFFFFFFF);
  if (!result)
  {
    v13 = v18;
    *a3 = v17;
    *a4 = v13;
    *a5 = v19;
    *a6 = v20;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetOISParams(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1858;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetOISMode(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1862;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetOISTemperature(H16ISP::H16ISPDevice *this, int a2, __int16 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1860;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetOISStatus(H16ISP::H16ISPDevice *this, int a2, int *a3, __int16 *a4, __int16 *a5, __int16 *a6, __int16 *a7, __int16 *a8)
{
  bzero(v17, 0x1CuLL);
  v18 = 1861;
  v19 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v17, 0x1Cu, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v20;
    *a4 = v21;
    *a5 = v22;
    *a6 = v23;
    *a7 = v24;
    *a8 = v25;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetOISContactStop(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1872;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableRawAverageMetadata(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -16361;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableLocalHistogram(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -16358;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetVISParams(H16ISP::H16ISPDevice *this, int a2, int a3, int a4, int a5, int a6)
{
  bzero(v13, 0x1CuLL);
  v14 = 18177;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DisableHardwareBlock(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -32511;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableHardwareBlock(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -32512;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetFlickerFrequencyHint(H16ISP::H16ISPDevice *this, int a2, double a3)
{
  bzero(v7, 0x10uLL);
  v8 = -32238;
  v9 = a2;
  v10 = vcvtd_n_u64_f64(a3, 0x10uLL);
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetFlickerFrequency(H16ISP::H16ISPDevice *a1, uint64_t a2)
{
  bzero(v12, 0xD8uLL);
  v4 = 0;
  v13 = 20;
  v14 = v14 & 0x7FFF0000 | 0x80000000;
  v5 = *(a2 + 4);
  v15 = *a2;
  v16 = v5;
  v6 = vcvtd_n_s64_f64(*(a2 + 72), 0x10uLL);
  v7 = *(a2 + 104);
  v17 = *(a2 + 108);
  v20 = v6;
  v22 = v7;
  v21 = *(a2 + 80);
  v8 = 1;
  do
  {
    v9 = v8;
    v18[v4] = vcvtd_n_u64_f64(*(a2 + 8 + 8 * v4), 0x10uLL);
    *(&v18[2] + v4) = *(a2 + 24 + 8 * v4);
    *(&v18[3] + v4) = vcvtd_n_s64_f64(*(a2 + 40 + 8 * v4), 8uLL);
    v4 = 1;
    v8 = 0;
  }

  while ((v9 & 1) != 0);
  v19 = vmovn_s64(vcvtq_n_s64_f64(*(a2 + 56), 0x10uLL));
  v10 = *(a2 + 132);
  v23 = *(a2 + 116);
  v24 = v10;
  v25 = *(a2 + 148);
  v26 = *(a2 + 164);
  v29 = *(a2 + 204);
  v30 = *(a2 + 220);
  v31[0] = *(a2 + 236);
  *(v31 + 14) = *(a2 + 250);
  v27 = *(a2 + 172);
  v28 = *(a2 + 188);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v12, 0xD8u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SuspendAEHdrRatioUpdate(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 570;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ResumeAEHdrRatioUpdate(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 571;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetHDRRatioManual(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -15608;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableMotionCaptureControl(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 17920;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SendAccelerometerSampleToFirmware(H16ISP::H16ISPDevice *this, uint64_t a2, int a3, int a4, int a5)
{
  bzero(v11, 0x1CuLL);
  v12 = 17921;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SendDeviceImpactSamples(H16ISP::H16ISPDevice *a1, const void *a2, unsigned int a3)
{
  bzero(v7, 0xE8uLL);
  v8 = 1971;
  memcpy(&v10, a2, 20 * a3);
  v9 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0xE8u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableRowColSumStats(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -16359;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetRowColSumWindow(H16ISP::H16ISPDevice *a1, int a2, uint64_t a3)
{
  bzero(v7, 0x14uLL);
  v8 = -16360;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEPanoMaxExpAdjustment(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 568;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAEPanoMaxExpAdjustment(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 569;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableHITH(H16ISP::H16ISPDevice *this, int a2, char a3, char a4, __int16 a5, __int16 a6)
{
  bzero(v13, 0x14uLL);
  v14 = 8206;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableWSEG(H16ISP::H16ISPDevice *this, int a2, char a3, char a4, __int16 a5, __int16 a6, int a7)
{
  bzero(v15, 0x18uLL);
  v16 = 8208;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableSemanticMasks(H16ISP::H16ISPDevice *this, int a2, char a3, char a4, char a5, char a6)
{
  bzero(v13, 0x10uLL);
  v14 = 2842;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableBand0Modulation(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -16100;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::TNRSuspend(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = -16108;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAWBMultiIlluminant(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31959;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableANSTThumbnail(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2848;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMaxCurrentTorch(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1560;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMaxCurrentFlashLight(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1562;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMaxCurrentPreFlash(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1558;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMaxCurrentMainFlash(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1559;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::OverrideTotalStrobeMaxCurrent(H16ISP::H16ISPDevice *this, int a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = 1561;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetTorchManualLevel(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v10, 0x10uLL);
  v11 = 1541;
  v12 = a2;
  v13 = a3;
  v6 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v10, 0x10u, 0, 0xFFFFFFFF);
  H16ISP::H16ISPDevice::GetTorchCurrents(this, a2, &v9, &v8);
  return v6;
}

uint64_t H16ISP::H16ISPDevice::GetTorchCurrents(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  bzero(v16, 0x10uLL);
  *&v16[4] = 1543;
  *&v16[8] = a2;
  v8 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v16, 0x10u, 0, 0xFFFFFFFF);
  if (!v8)
  {
    if (*(this + 4640) == 1)
    {
      v9 = *(*(this + 9) + 72);
      if (v9)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___ZN6H16ISP12H16ISPDevice16GetTorchCurrentsEjPtS1__block_invoke;
        block[3] = &__block_descriptor_tmp_121;
        block[4] = this;
        v15 = *v16;
        dispatch_async(v9, block);
      }
    }

    if (*(this + 4656) == 1)
    {
      v10 = *(*(this + 9) + 72);
      if (v10)
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 0x40000000;
        v12[2] = ___ZN6H16ISP12H16ISPDevice16GetTorchCurrentsEjPtS1__block_invoke_2;
        v12[3] = &__block_descriptor_tmp_122;
        v12[4] = this;
        v13 = *v16;
        dispatch_async(v10, v12);
      }
    }

    *a3 = *&v16[12];
    *a4 = *&v16[14];
  }

  return v8;
}

uint64_t H16ISP::H16ISPDevice::SetTorchColorMode(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v12, 0x10uLL);
  v13 = 1542;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v8 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v12, 0x10u, 0, 0xFFFFFFFF);
  H16ISP::H16ISPDevice::GetTorchCurrents(this, a2, &v11, &v10);
  return v8;
}

uint64_t H16ISP::H16ISPDevice::SetIndividualTorchLEDLevels(H16ISP::H16ISPDevice *this, int a2, unsigned int a3)
{
  bzero(v14, 0x10uLL);
  v15 = 1554;
  v16 = a2;
  v17 = a3;
  v6 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v14, 0x10u, 0, 0xFFFFFFFF);
  if (!v6 && *(this + 4624) == 1)
  {
    v7 = *(*(this + 9) + 72);
    if (v7)
    {
      v8 = HIBYTE(a3) + a3 + BYTE1(a3) + BYTE2(a3);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN6H16ISP12H16ISPDevice27SetIndividualTorchLEDLevelsEjj_block_invoke;
      block[3] = &__block_descriptor_tmp_119;
      if (v8 >= 0xFF)
      {
        LOWORD(v8) = 255;
      }

      block[4] = this;
      v13 = v8;
      dispatch_async(v7, block);
    }
  }

  H16ISP::H16ISPDevice::GetTorchCurrents(this, a2, &v11, &v10);
  return v6;
}

uint64_t ___ZN6H16ISP12H16ISPDevice27SetIndividualTorchLEDLevelsEjj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  notify_set_state(*(v1 + 4628), *(a1 + 40));
  v2 = *(v1 + 4616);

  return notify_post(v2);
}

uint64_t H16ISP::H16ISPDevice::SetSegmentTorchLEDLevels(H16ISP::H16ISPDevice *this, int a2, int a3, __int16 a4, unsigned int a5, unsigned __int16 *a6, const unint64_t *a7)
{
  bzero(v16, 0x6CuLL);
  v17 = 1579;
  v18 = a2;
  result = H16ISP::H16ISPDevice::PackTorchSegments(v14, a3, a4, a5, a6, a7, &v19);
  if (!result)
  {
    return H16ISP::H16ISPDevice::ISP_SendCommand(this, v16, 0x6Cu, 0, 0xFFFFFFFF);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::PackTorchSegments(uint64_t a1, int a2, __int16 a3, unsigned int a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7)
{
  result = 3758097090;
  if (!a7)
  {
    return result;
  }

  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *a7 = a2;
  if (!a2)
  {
    if (a4 > 8 || !a5 || !a6)
    {
      return result;
    }

    *(a7 + 2) = a4;
    if (a4)
    {
      v9 = 0;
      v10 = a7 + 24;
      do
      {
        v11 = a5[v9];
        if (v11 >= 0xFF)
        {
          LOWORD(v11) = 255;
        }

        *(v10 + 2 * v9 - 20) = v11;
        *(v10 + 8 * v9) = *(a6 + 8 * v9);
        ++v9;
      }

      while (a4 != v9);
    }

    return 0;
  }

  if (a2 != 170)
  {
    return 3758097122;
  }

  *(a7 + 2) = a3;
  if (!a5)
  {
    return 0;
  }

  result = 0;
  v8 = *a5;
  if (v8 >= 0xFF)
  {
    LOWORD(v8) = 255;
  }

  *(a7 + 4) = v8;
  return result;
}