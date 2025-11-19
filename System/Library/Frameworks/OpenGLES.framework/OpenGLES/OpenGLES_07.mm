uint64_t glvmWindowTransformGP(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, double a6, double a7, double a8, double a9, double a10, float32x4_t _Q6)
{
  v11 = *(a3 + 48);
  v12 = ((*(a3 + 96) - v11) / 0x280uLL) & 3;
  v13 = (a4 >> 2) & 3;
  v14 = 6944;
  if ((a4 & 0x20) == 0)
  {
    v14 = 6976;
  }

  v15 = 6960;
  if ((a4 & 0x20) == 0)
  {
    v15 = 6992;
  }

  v16 = (v11 - 2557);
  v17 = 65280;
  v18 = 65280;
  do
  {
    v19 = v18;
    v20 = v16;
    v21 = (v16 + 2557);
    _X22 = v20 + 5197;
    _X23 = v20 + 6477;
    _X24 = v20 + 7117;
    __asm
    {
      PRFM            #0, [X24]
      PRFM            #0, [X23]
    }

    _X23 = v20 + 5837;
    __asm
    {
      PRFM            #0, [X23]
      PRFM            #0, [X22]
    }

    if (a4)
    {
      _Q6.i64[0] = *(a1 + 7072);
      _Q6.i32[2] = *(a2 + 160);
      _Q6.i32[3] = _Q6.i32[2];
      v38.i64[0] = *(a1 + 7080);
      v38.i32[2] = *(a2 + 164);
      v38.i32[3] = v38.i32[2];
      v34 = vmlaq_f32(vmulq_laneq_f32(v38, v21[5], 3), v21[5], _Q6);
      v35 = vmlaq_f32(vmulq_laneq_f32(v38, v21[45], 3), v21[45], _Q6);
      v36 = vmlaq_f32(vmulq_laneq_f32(v38, v21[85], 3), v21[85], _Q6);
      v37 = vmlaq_f32(vmulq_laneq_f32(v38, v21[125], 3), v21[125], _Q6);
      v21[5] = v34;
      v21[45] = v35;
      v21[85] = v36;
      v21[125] = v37;
      if ((a4 & 0x40) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v34 = v21[5];
      v35 = v21[45];
      v36 = v21[85];
      v37 = v21[125];
      if ((a4 & 0x40) != 0)
      {
        goto LABEL_6;
      }
    }

    if ((a4 & 2) != 0)
    {
      v48 = 0;
      v21->i32[0] = 0;
      v21[40].i32[0] = 0;
      v21[80].i32[0] = 0;
      v21[120].i32[0] = 0;
    }

    else
    {
      v39 = -v34.f32[3];
      if (v34.f32[0] <= v34.f32[3])
      {
        v40 = 16 * (v34.f32[0] < -v34.f32[3]);
      }

      else
      {
        v40 = (16 * (v34.f32[0] < -v34.f32[3])) | 0x20;
      }

      if (v34.f32[1] < v39)
      {
        v40 |= 4u;
      }

      if (v34.f32[1] > v34.f32[3])
      {
        v40 |= 8u;
      }

      if ((a4 & 0x100) == 0)
      {
        v40 |= v34.f32[2] < v39;
        if (v34.f32[2] > v34.f32[3])
        {
          v40 |= 2u;
        }
      }

      v41 = -v35.f32[3];
      if (v35.f32[0] <= v35.f32[3])
      {
        v42 = 16 * (v35.f32[0] < -v35.f32[3]);
      }

      else
      {
        v42 = (16 * (v35.f32[0] < -v35.f32[3])) | 0x20;
      }

      if (v35.f32[1] < v41)
      {
        v42 |= 4u;
      }

      if (v35.f32[1] > v35.f32[3])
      {
        v42 |= 8u;
      }

      if ((a4 & 0x100) == 0)
      {
        v42 |= v35.f32[2] < v41;
        if (v35.f32[2] > v35.f32[3])
        {
          v42 |= 2u;
        }
      }

      v43 = -v36.f32[3];
      if (v36.f32[0] <= v36.f32[3])
      {
        v44 = 16 * (v36.f32[0] < -v36.f32[3]);
      }

      else
      {
        v44 = (16 * (v36.f32[0] < -v36.f32[3])) | 0x20;
      }

      if (v36.f32[1] < v43)
      {
        v44 |= 4u;
      }

      if (v36.f32[1] > v36.f32[3])
      {
        v44 |= 8u;
      }

      if ((a4 & 0x100) == 0)
      {
        v44 |= v36.f32[2] < v43;
        if (v36.f32[2] > v36.f32[3])
        {
          v44 |= 2u;
        }
      }

      v45 = -v37.f32[3];
      if (v37.f32[0] <= v37.f32[3])
      {
        v46 = 16 * (v37.f32[0] < -v37.f32[3]);
      }

      else
      {
        v46 = (16 * (v37.f32[0] < -v37.f32[3])) | 0x20;
      }

      if (v37.f32[1] < v45)
      {
        v46 |= 4u;
      }

      if (v37.f32[1] > v37.f32[3])
      {
        v46 |= 8u;
      }

      if ((a4 & 0x100) == 0)
      {
        v46 |= v37.f32[2] < v45;
        if (v37.f32[2] > v37.f32[3])
        {
          v46 |= 2u;
        }
      }

      v21->i32[0] = v40 << 24;
      v21[40].i32[0] = v42 << 24;
      v21[80].i32[0] = v44 << 24;
      v21[120].i32[0] = v46 << 24;
      v47 = v42 & v40;
      v48 = v42 | v40 | v44 | v46;
      v49 = v47 & v44 & v46;
      if (v49)
      {
        if (!v13)
        {
          goto LABEL_62;
        }

        goto LABEL_55;
      }
    }

    v49 = 0;
    v63 = *(a1 + v15);
    v64 = *(a1 + v14);
    v65 = *(a2 + 160);
    v66 = v65 / v34.f32[3];
    v67 = v65 / v35.f32[3];
    v68 = v65 / v36.f32[3];
    v69 = vmulq_n_f32(v35, v65 / v35.f32[3]);
    v70 = vmulq_n_f32(v36, v65 / v36.f32[3]);
    v71 = v65 / v37.f32[3];
    v72 = vmulq_n_f32(v37, v65 / v37.f32[3]);
    v73 = vmlaq_f32(v63, vmulq_n_f32(v34, v65 / v34.f32[3]), v64);
    v34 = vmlaq_f32(v63, v69, v64);
    v21[4] = v73;
    v21[44] = v34;
    v21[84] = vmlaq_f32(v63, v70, v64);
    v21[124] = vmlaq_f32(v63, v72, v64);
    v21[4].f32[3] = v66;
    v21[44].f32[3] = v67;
    v21[84].f32[3] = v68;
    v21[124].f32[3] = v71;
    if (!v13)
    {
LABEL_62:
      if ((a4 & 2) != 0)
      {
        goto LABEL_6;
      }

      goto LABEL_71;
    }

LABEL_55:
    _X24 = v20 + 7213;
    _X25 = v20 + 6573;
    _X26 = v20 + 5933;
    _X27 = v20 + 5293;
    __asm { PRFM            #0, [X27] }

    v55.i32[0] = v21[11].i32[0];
    __asm
    {
      PRFM            #0, [X26]
      PRFM            #0, [X25]
    }

    v58 = v21[91].f32[0];
    __asm { PRFM            #0, [X24] }

    v61.i32[0] = v55.i32[0];
    v61.i32[1] = v21[51].i32[0];
    v60 = v21[131].f32[0];
    v61.i64[1] = __PAIR64__(LODWORD(v60), LODWORD(v58));
    if (v13 == 3)
    {
      v34.i32[0] = *(a1 + 12972);
      v62 = vmulq_f32(vmulq_f32(v61, v61), vmulq_n_f32(vnegq_f32(vdupq_lane_s32(*v34.f32, 0)), v34.f32[0]));
LABEL_65:
      __asm { FMOV            V3.4S, #1.0 }

      v75 = vsubq_f32(_Q3, v62);
      v76 = vcvt_hight_f64_f32(v75);
      v77 = vmulq_f32(v62, v62);
      __asm { FMOV            V16.2D, #0.5 }

      v79 = vaddq_f64(vmulq_f64(vcvtq_f64_f32(*v77.f32), _Q16), vcvtq_f64_f32(*v75.f32));
      v80 = vaddq_f64(vmulq_f64(vcvt_hight_f64_f32(v77), _Q16), v76);
      v81 = vmulq_f32(v62, v77);
      __asm { FMOV            V16.2D, #-6.0 }

      v83 = vaddq_f64(v80, vdivq_f64(vcvt_hight_f64_f32(v81), _Q16));
      v84 = vaddq_f64(v79, vdivq_f64(vcvtq_f64_f32(*v81.f32), _Q16));
      v85 = vmulq_f32(v62, v81);
      v86 = vcvtq_f64_f32(*v85.f32);
      __asm { FMOV            V6.2D, #24.0 }

      v87 = vaddq_f64(v83, vdivq_f64(vcvt_hight_f64_f32(v85), _Q6));
      __asm { FMOV            V4.2D, #1.0 }

      v89 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(_Q4, vaddq_f64(v84, vdivq_f64(v86, _Q6)))), vdivq_f64(_Q4, v87));
      goto LABEL_70;
    }

    if (v13 == 2)
    {
      if ((a4 & 0x80) != 0)
      {
        v61.f32[0] = fmaxf(v55.f32[0], 0.0);
        v61.i32[1] = fmaxf(v21[51].f32[0], 0.0);
        v61.i64[1] = __PAIR64__(COERCE_UNSIGNED_INT(fmaxf(v60, 0.0)), COERCE_UNSIGNED_INT(fmaxf(v58, 0.0)));
      }

      v62 = vmulq_n_f32(vnegq_f32(vabsq_f32(v61)), *(a1 + 12972));
      goto LABEL_65;
    }

    v55.i32[1] = v21[51].i32[0];
    if ((a4 & 0x80) != 0)
    {
      *v90.f32 = vneg_f32(v55);
      v91 = -v58;
    }

    else
    {
      *v90.f32 = vneg_f32(vabs_f32(v55));
      v91 = -fabsf(v58);
      v60 = fabsf(v60);
    }

    _Q6.i32[0] = *(a1 + 12984);
    v55.f32[0] = *(a1 + 12980) * _Q6.f32[0];
    v90.f32[2] = v91;
    v90.f32[3] = -v60;
    v92 = vmaxnmq_f32(vmlaq_f32(vdupq_lane_s32(v55, 0), vdupq_lane_s32(*_Q6.f32, 0), v90), 0);
    __asm { FMOV            V3.4S, #1.0 }

    v89 = vminnmq_f32(v92, _Q3);
LABEL_70:
    v21[11].i32[1] = v89.i32[0];
    v21[51].i32[1] = v89.i32[1];
    v21[91].i32[1] = v89.i32[2];
    v21[131].i32[1] = v89.i32[3];
    if ((a4 & 2) != 0)
    {
LABEL_6:
      v18 = 0;
      goto LABEL_7;
    }

LABEL_71:
    v18 = v48 | (v49 << 8);
LABEL_7:
    v17 = (v19 | v17) & (v19 | 0xFF);
    v16 = v20 + 2560;
  }

  while ((v20 + 5117) < *(a3 + 96));
  if (v12)
  {
    v18 = ((*v16 << 8) | 0xFF) & (*v16 | 0xFF00);
    if (v12 != 1)
    {
      v18 = ((v20[3200] << 8) | 0xFF) & (v18 | v20[3200]);
      if (v12 == 3)
      {
        v18 = ((v20[3840] << 8) | 0xFF) & (v18 | v20[3840]);
      }
    }
  }

  return (v18 | v17) & (v18 | 0xFFu);
}

_DWORD *glvmSetSourceIndirectLimits_2(_DWORD *result, unint64_t a2, unint64_t *a3, __int16 a4, __int16 a5, __int16 a6, unsigned __int16 a7)
{
  v7 = (a2 >> 6) & 7;
  if (v7 != 2)
  {
    if (v7 != 1)
    {
      return result;
    }

    v8 = *a3;
    v9 = (a4 & 0xFFF) << 16;
    goto LABEL_4;
  }

  v8 = *a3;
  if ((*a3 & 0x3C000000000000) == 0x1C000000000000)
  {
    v10 = v8 & 0xFFDF0000FFFFFFFFLL | (a7 << 32);
    goto LABEL_16;
  }

  v11 = (*&result[2 * result[15] + 2 * HIWORD(a2)] >> 8) & 0x1F;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v9 = (a6 & 0xFFF) << 16;
      goto LABEL_4;
    }

    if (v11 == 6)
    {
      v8 = v8 & 0xFFFFFFFFF003FFFFLL | ((result[34] & 0x3FF) << 18);
      *a3 = v8;
      v12 = result[35] >> 1;
LABEL_15:
      v10 = v8 & 0xFFFF0000FFFFFFFFLL | (v12 << 32);
      goto LABEL_16;
    }

LABEL_14:
    v12 = a7;
    goto LABEL_15;
  }

  if (!v11)
  {
    return result;
  }

  if (v11 != 1)
  {
    goto LABEL_14;
  }

  v9 = (a5 & 0xFFF) << 16;
LABEL_4:
  v10 = v8 & 0xFFFFFFFFF000FFFFLL | v9;
LABEL_16:
  *a3 = v10;
  return result;
}

uint64_t glvmInterpretGPTransformPrimitive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, unsigned int *a7, uint64_t a8, uint64_t a9)
{
  v62 = a3;
  v63 = a4;
  v61 = a2;
  v68 = *MEMORY[0x277D85DE8];
  v14 = *a7;
  v15 = a6[8] << 6;
  MEMORY[0x28223BE20](a1);
  v18 = &v59 - v17;
  if (*(v19 + 72))
  {
    v20 = a6[14];
  }

  else
  {
    v20 = 0;
  }

  bzero(v18, v16);
  v22 = a6[27];
  v23 = a6[31];
  v65 = a8;
  v66 = a1;
  v64 = a7;
  if (v22 != v23)
  {
    v60 = v14;
    v37 = 0;
    v38 = &a6[2 * v22];
    v39 = &a6[2 * v23];
    v40 = v38;
    do
    {
      if ((*v40 & 0x3FC0) != 0x12C0)
      {
        break;
      }

      ++v37;
      v40 += (*v40 & 7) + 2;
    }

    while (v40 != v39);
    v41 = MEMORY[0x28223BE20](v21);
    v24 = (&v59 - 8);
    v57 = 0u;
    v58 = 0u;
    *(&v59 - 4) = 0u;
    v56 = 0u;
    MEMORY[0x28223BE20](v41);
    v25 = &v59 - v42;
    bzero(&v59 - v42, v43);
    if (v22 != v23)
    {
      v44 = 0;
      do
      {
        if ((*v38 & 0x3FC0) != 0x12C0)
        {
          break;
        }

        glvmOperationInitSub(v25, v44 | ((v38[1] & 0x3FFFFLL) << 32));
        v38 += (*v38 & 7) + 2;
        ++v44;
      }

      while (v38 != v39);
    }

    LODWORD(v14) = v60;
    v26 = a9;
    if (v20)
    {
      goto LABEL_6;
    }

LABEL_28:
    v36 = 0;
    goto LABEL_29;
  }

  MEMORY[0x28223BE20](v21);
  v24 = (&v59 - 8);
  v57 = 0u;
  v58 = 0u;
  *(&v59 - 4) = 0u;
  v56 = 0u;
  v25 = &v67;
  v26 = a9;
  if (!v20)
  {
    goto LABEL_28;
  }

LABEL_6:
  v27 = 0;
  v28 = 0;
  v29 = a6[15];
  v30 = v20;
  do
  {
    v31 = *&a6[2 * v29];
    v32 = (v31 >> 8) & 0x1F;
    v33 = HIDWORD(v31) & 0x3FFF;
    if (v33 >= v27)
    {
      v34 = v33 + 1;
    }

    else
    {
      v34 = v27;
    }

    if (v33 >= v28)
    {
      v35 = v33 + 1;
    }

    else
    {
      v35 = v28;
    }

    if (v32 != 1)
    {
      v35 = v28;
    }

    if (v32 == 2)
    {
      v27 = v34;
    }

    else
    {
      v28 = v35;
    }

    ++v29;
    --v30;
  }

  while (v30);
  v36 = (v28 | (v27 << 16)) << 32;
LABEL_29:
  v45 = v36 | (2 * a6[29]);
  *&v58 = v25;
  v46 = v66;
  glvmInterpretGPTransformPrimitiveInner(v66, v61, v62, v63, a5, a6, v64, v65, v26, v18, v57, v24, v58, v45);
  glvmOperationENDSTREAMPRIMITIVES(a5, v26);
  result = glvmWindowTransformGP(v46, a5, v26, v14, v47, v48, v49, v50, v51, v52, v53);
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 glvmOperationCopyAttributes(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *a1 = *a2;
  if ((a4 & 0x100000001) != 0)
  {
    *(a1 + 16) = *(a2 + 16);
  }

  if ((a4 & 0x200000002) != 0)
  {
    *(a1 + 32) = *(a2 + 32);
  }

  if ((a4 & 0x400000004) != 0)
  {
    *(a1 + 48) = *(a2 + 48);
  }

  if ((a4 & 0x800000008) != 0)
  {
    *(a1 + 64) = *(a2 + 64);
  }

  if ((a4 & 0x1000000010) != 0)
  {
    *(a1 + 80) = *(a2 + 80);
  }

  if ((a4 & 0x2000000020) != 0)
  {
    *(a1 + 96) = *(a2 + 96);
  }

  if ((a4 & 0x4000000040) != 0)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  if ((a4 & 0x8000000080) != 0)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  if ((a4 & 0x10000000100) != 0)
  {
    *(a1 + 144) = *(a2 + 144);
  }

  if ((a4 & 0x20000000200) != 0)
  {
    *(a1 + 160) = *(a2 + 160);
  }

  if ((a4 & 0x40000000400) != 0)
  {
    *(a1 + 176) = *(a2 + 176);
  }

  if ((a4 & 0x80000000800) != 0)
  {
    *(a1 + 192) = *(a2 + 192);
  }

  if ((a4 & 0x100000001000) != 0)
  {
    *(a1 + 208) = *(a2 + 208);
  }

  if ((a4 & 0x200000002000) != 0)
  {
    *(a1 + 224) = *(a2 + 224);
  }

  if ((a4 & 0x400000004000) != 0)
  {
    *(a1 + 240) = *(a2 + 240);
  }

  if ((a4 & 0x800000008000) != 0)
  {
    *(a1 + 256) = *(a2 + 256);
  }

  if ((a4 & 0x1000000010000) != 0)
  {
    *(a1 + 272) = *(a2 + 272);
  }

  if ((a4 & 0x2000000020000) != 0)
  {
    *(a1 + 288) = *(a2 + 288);
  }

  if ((a4 & 0x4000000040000) != 0)
  {
    *(a1 + 304) = *(a2 + 304);
  }

  if ((a4 & 0x8000000080000) != 0)
  {
    *(a1 + 320) = *(a2 + 320);
  }

  if ((a4 & 0x10000000100000) != 0)
  {
    *(a1 + 336) = *(a2 + 336);
  }

  if ((a4 & 0x20000000200000) != 0)
  {
    *(a1 + 352) = *(a2 + 352);
  }

  if ((a4 & 0x40000000400000) != 0)
  {
    *(a1 + 368) = *(a2 + 368);
  }

  if ((a4 & 0x80000000800000) != 0)
  {
    *(a1 + 384) = *(a2 + 384);
  }

  if ((a4 & 0x100000001000000) != 0)
  {
    *(a1 + 400) = *(a2 + 400);
  }

  if ((a4 & 0x200000002000000) != 0)
  {
    *(a1 + 416) = *(a2 + 416);
  }

  if ((a4 & 0x400000004000000) != 0)
  {
    *(a1 + 432) = *(a2 + 432);
  }

  if ((a4 & 0x800000008000000) != 0)
  {
    *(a1 + 448) = *(a2 + 448);
  }

  if ((a4 & 0x1000000010000000) != 0)
  {
    *(a1 + 464) = *(a2 + 464);
  }

  if ((a4 & 0x2000000020000000) != 0)
  {
    *(a1 + 480) = *(a2 + 480);
  }

  if ((a4 & 0x4000000040000000) != 0)
  {
    *(a1 + 496) = *(a2 + 496);
  }

  if ((a4 & 0x8000000080000000) != 0)
  {
    *(a1 + 512) = *(a2 + 512);
  }

  if ((a3 & 0x40) != 0)
  {
    *(a1 + 528) = *(a2 + 528);
  }

  if (a3 < 0)
  {
    *(a1 + 544) = *(a2 + 544);
  }

  result = *(a2 + 560);
  *(a1 + 560) = result;
  return result;
}

float32x4_t glvmPreloadPositionAttrib(float32x4_t *a1, float32x4_t *a2, uint64_t a3)
{
  v3 = a1[7];
  if ((a3 & 0x100000000000) != 0)
  {
    v10 = a1[6];
    v4 = a1 + 6;
    v11 = v4[2];
    v9 = vaddq_f32(v3, v10);
    *a2 = v10;
    a2[1] = v9;
    v12 = vaddq_f32(v11, v10);
    a2[2] = v12;
    v8 = vaddq_f32(v3, v12);
  }

  else
  {
    v5 = a1[6];
    v4 = a1 + 6;
    v6 = vaddq_f32(v3, v5);
    *a2 = v5;
    a2[1] = v6;
    v7 = vaddq_f32(v3, v6);
    a2[2] = v7;
    v8 = vaddq_f32(v3, v7);
    v9 = v8;
  }

  a2[3] = v8;
  result = vaddq_f32(v3, v9);
  *v4 = result;
  if ((a3 & 0x80000000000) == 0)
  {
    if ((a3 & 0x40000000000) == 0)
    {
      return result;
    }

LABEL_8:
    v19 = a2[2];
    v20 = a2[3];
    v21 = vmaxnmq_f32(vminnmq_f32(a2[1], xmmword_23A29C1F0), xmmword_23A29C200);
    *a2 = vmaxnmq_f32(vminnmq_f32(*a2, xmmword_23A29C1F0), xmmword_23A29C200);
    a2[1] = v21;
    result = vmaxnmq_f32(vminnmq_f32(v19, xmmword_23A29C1F0), xmmword_23A29C200);
    a2[2] = result;
    a2[3] = vmaxnmq_f32(vminnmq_f32(v20, xmmword_23A29C1F0), xmmword_23A29C200);
    return result;
  }

  v14 = a2[1];
  *v15.f32 = vcvt_f32_s32(vcvt_s32_f32(*a2->f32));
  v15.i64[1] = vextq_s8(*a2, *a2, 8uLL).u64[0];
  *v16.f32 = vcvt_f32_s32(vcvt_s32_f32(*v14.i8));
  v16.i64[1] = vextq_s8(v14, v14, 8uLL).u64[0];
  *a2 = v15;
  a2[1] = v16;
  v17 = a2[2];
  v18 = a2[3];
  *v15.f32 = vcvt_f32_s32(vcvt_s32_f32(*v17.i8));
  v15.i64[1] = vextq_s8(v17, v17, 8uLL).u64[0];
  *result.f32 = vcvt_f32_s32(vcvt_s32_f32(*v18.i8));
  result.i64[1] = vextq_s8(v18, v18, 8uLL).u64[0];
  a2[2] = v15;
  a2[3] = result;
  if ((a3 & 0x40000000000) != 0)
  {
    goto LABEL_8;
  }

  return result;
}

float32x4_t glvmPreloadSourceAttribs(uint64_t a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, float32x4_t result)
{
  if (a6)
  {
    if ((a6 & 0x100000001) == 1)
    {
      result = a2[1];
      *(a4 + 64) = result;
      *(a4 + 80) = result;
      *(a4 + 96) = result;
      *(a4 + 112) = result;
      a6 &= 0xFFFFFFFEFFFFFFFELL;
    }

    if ((a6 & 0x200000002) == 2)
    {
      result = a2[2];
      *(a4 + 128) = result;
      *(a4 + 144) = result;
      *(a4 + 160) = result;
      *(a4 + 176) = result;
      a6 &= 0xFFFFFFFDFFFFFFFDLL;
    }

    if ((a6 & 0x400000004) == 4)
    {
      result = a2[3];
      *(a4 + 192) = result;
      *(a4 + 208) = result;
      *(a4 + 224) = result;
      *(a4 + 240) = result;
      a6 &= 0xFFFFFFFBFFFFFFFBLL;
    }

    if ((a6 & 0x800000008) == 8)
    {
      result = a2[4];
      *(a4 + 256) = result;
      *(a4 + 272) = result;
      *(a4 + 288) = result;
      *(a4 + 304) = result;
      a6 &= 0xFFFFFFF7FFFFFFF7;
    }

    if ((a6 & 0x1000000010) == 0x10)
    {
      result = a2[5];
      *(a4 + 320) = result;
      *(a4 + 336) = result;
      *(a4 + 352) = result;
      *(a4 + 368) = result;
      a6 &= 0xFFFFFFEFFFFFFFEFLL;
    }

    if ((a6 & 0x2000000020) == 0x20)
    {
      result = a2[6];
      *(a4 + 384) = result;
      *(a4 + 400) = result;
      *(a4 + 416) = result;
      *(a4 + 432) = result;
      a6 &= 0xFFFFFFDFFFFFFFDFLL;
    }

    if ((a6 & 0x4000000040) == 0x40)
    {
      result = a2[7];
      *(a4 + 448) = result;
      *(a4 + 464) = result;
      *(a4 + 480) = result;
      *(a4 + 496) = result;
      a6 &= 0xFFFFFFBFFFFFFFBFLL;
    }

    if ((a6 & 0x8000000080) == 0x80)
    {
      result = a2[8];
      *(a4 + 512) = result;
      *(a4 + 528) = result;
      *(a4 + 544) = result;
      *(a4 + 560) = result;
      a6 &= 0xFFFFFF7FFFFFFF7FLL;
    }

    if ((a6 & 0x10000000100) == 0x100)
    {
      result = a2[9];
      *(a4 + 576) = result;
      *(a4 + 592) = result;
      *(a4 + 608) = result;
      *(a4 + 624) = result;
      a6 &= 0xFFFFFEFFFFFFFEFFLL;
    }

    if ((a6 & 0x20000000200) == 0x200)
    {
      result = a2[10];
      *(a4 + 640) = result;
      *(a4 + 656) = result;
      *(a4 + 672) = result;
      *(a4 + 688) = result;
      a6 &= 0xFFFFFDFFFFFFFDFFLL;
    }

    if ((a6 & 0x40000000400) == 0x400)
    {
      result = a2[11];
      *(a4 + 704) = result;
      *(a4 + 720) = result;
      *(a4 + 736) = result;
      *(a4 + 752) = result;
      a6 &= 0xFFFFFBFFFFFFFBFFLL;
    }

    if ((a6 & 0x80000000800) == 0x800)
    {
      result = a2[12];
      *(a4 + 768) = result;
      *(a4 + 784) = result;
      *(a4 + 800) = result;
      *(a4 + 816) = result;
      a6 &= 0xFFFFF7FFFFFFF7FFLL;
    }

    if ((a6 & 0x100000001000) == 0x1000)
    {
      result = a2[13];
      *(a4 + 832) = result;
      *(a4 + 848) = result;
      *(a4 + 864) = result;
      *(a4 + 880) = result;
      a6 &= 0xFFFFEFFFFFFFEFFFLL;
    }

    if ((a6 & 0x200000002000) == 0x2000)
    {
      result = a2[14];
      *(a4 + 896) = result;
      *(a4 + 912) = result;
      *(a4 + 928) = result;
      *(a4 + 944) = result;
      a6 &= 0xFFFFDFFFFFFFDFFFLL;
    }

    if ((a6 & 0x400000004000) == 0x4000)
    {
      result = a2[15];
      *(a4 + 960) = result;
      *(a4 + 976) = result;
      *(a4 + 992) = result;
      *(a4 + 1008) = result;
      a6 &= 0xFFFFBFFFFFFFBFFFLL;
    }

    if ((a6 & 0x800000008000) == 0x8000)
    {
      result = a2[16];
      *(a4 + 1024) = result;
      *(a4 + 1040) = result;
      *(a4 + 1056) = result;
      *(a4 + 1072) = result;
      a6 &= 0xFFFF7FFFFFFF7FFFLL;
    }

    if ((a6 & 0x1000000010000) == 0x10000)
    {
      result = a2[17];
      *(a4 + 1088) = result;
      *(a4 + 1104) = result;
      *(a4 + 1120) = result;
      *(a4 + 1136) = result;
      a6 &= 0xFFFEFFFFFFFEFFFFLL;
    }

    if ((a6 & 0x2000000020000) == 0x20000)
    {
      result = a2[18];
      *(a4 + 1152) = result;
      *(a4 + 1168) = result;
      *(a4 + 1184) = result;
      *(a4 + 1200) = result;
      a6 &= 0xFFFDFFFFFFFDFFFFLL;
    }

    if ((a6 & 0x4000000040000) == 0x40000)
    {
      result = a2[19];
      *(a4 + 1216) = result;
      *(a4 + 1232) = result;
      *(a4 + 1248) = result;
      *(a4 + 1264) = result;
      a6 &= 0xFFFBFFFFFFFBFFFFLL;
    }

    if ((a6 & 0x8000000080000) == 0x80000)
    {
      result = a2[20];
      *(a4 + 1280) = result;
      *(a4 + 1296) = result;
      *(a4 + 1312) = result;
      *(a4 + 1328) = result;
      a6 &= 0xFFF7FFFFFFF7FFFFLL;
    }

    if ((a6 & 0x10000000100000) == 0x100000)
    {
      result = a2[21];
      *(a4 + 1344) = result;
      *(a4 + 1360) = result;
      *(a4 + 1376) = result;
      *(a4 + 1392) = result;
      a6 &= 0xFFEFFFFFFFEFFFFFLL;
    }

    if ((a6 & 0x20000000200000) == 0x200000)
    {
      result = a2[22];
      *(a4 + 1408) = result;
      *(a4 + 1424) = result;
      *(a4 + 1440) = result;
      *(a4 + 1456) = result;
      a6 &= 0xFFDFFFFFFFDFFFFFLL;
    }

    if ((a6 & 0x40000000400000) == 0x400000)
    {
      result = a2[23];
      *(a4 + 1472) = result;
      *(a4 + 1488) = result;
      *(a4 + 1504) = result;
      *(a4 + 1520) = result;
      a6 &= 0xFFBFFFFFFFBFFFFFLL;
    }

    if ((a6 & 0x80000000800000) == 0x800000)
    {
      result = a2[24];
      *(a4 + 1536) = result;
      *(a4 + 1552) = result;
      *(a4 + 1568) = result;
      *(a4 + 1584) = result;
      a6 &= 0xFF7FFFFFFF7FFFFFLL;
    }

    if ((a6 & 0x100000001000000) == 0x1000000)
    {
      result = a2[25];
      *(a4 + 1600) = result;
      *(a4 + 1616) = result;
      *(a4 + 1632) = result;
      *(a4 + 1648) = result;
      a6 &= 0xFEFFFFFFFEFFFFFFLL;
    }

    if ((a6 & 0x200000002000000) == 0x2000000)
    {
      result = a2[26];
      *(a4 + 1664) = result;
      *(a4 + 1680) = result;
      *(a4 + 1696) = result;
      *(a4 + 1712) = result;
      a6 &= 0xFDFFFFFFFDFFFFFFLL;
    }

    if ((a6 & 0x400000004000000) == 0x4000000)
    {
      result = a2[27];
      *(a4 + 1728) = result;
      *(a4 + 1744) = result;
      *(a4 + 1760) = result;
      *(a4 + 1776) = result;
      a6 &= 0xFBFFFFFFFBFFFFFFLL;
    }

    if ((a6 & 0x800000008000000) == 0x8000000)
    {
      result = a2[28];
      *(a4 + 1792) = result;
      *(a4 + 1808) = result;
      *(a4 + 1824) = result;
      *(a4 + 1840) = result;
      a6 &= 0xF7FFFFFFF7FFFFFFLL;
    }

    if ((a6 & 0x1000000010000000) == 0x10000000)
    {
      result = a2[29];
      *(a4 + 1856) = result;
      *(a4 + 1872) = result;
      *(a4 + 1888) = result;
      *(a4 + 1904) = result;
      a6 &= 0xEFFFFFFFEFFFFFFFLL;
    }

    if ((a6 & 0x2000000020000000) == 0x20000000)
    {
      result = a2[30];
      *(a4 + 1920) = result;
      *(a4 + 1936) = result;
      *(a4 + 1952) = result;
      *(a4 + 1968) = result;
      a6 &= 0xDFFFFFFFDFFFFFFFLL;
    }

    if ((a6 & 0x4000000040000000) == 0x40000000)
    {
      result = a2[31];
      *(a4 + 1984) = result;
      *(a4 + 2000) = result;
      *(a4 + 2016) = result;
      *(a4 + 2032) = result;
      a6 &= 0xBFFFFFFFBFFFFFFFLL;
    }

    if ((a6 & 0x8000000080000000) == 0x80000000)
    {
      result = a2[32];
      *(a4 + 2048) = result;
      *(a4 + 2064) = result;
      *(a4 + 2080) = result;
      *(a4 + 2096) = result;
      a6 &= 0x7FFFFFFF7FFFFFFFuLL;
    }
  }

  v8 = (a5 >> 9) & 1;
  v9 = (a5 >> 6) | v8;
  if (a6 | v9)
  {
    result.f32[0] = *(a1 + 80);
    result = vdupq_lane_s32(*result.f32, 0);
    if (a6)
    {
      if ((a6 & 0x100000001) == 0x100000000)
      {
        v10 = a3[1];
        v11 = vmlaq_f32(a2[1], v10, result);
        *(a4 + 64) = v11;
        v12 = vaddq_f32(v10, v11);
        if ((a7 & 0x100000000000) != 0)
        {
          v13 = vaddq_f32(v11, a3[37]);
        }

        else
        {
          v13 = vaddq_f32(v10, v12);
        }

        *(a4 + 80) = v12;
        *(a4 + 96) = v13;
        *(a4 + 112) = vaddq_f32(v10, v13);
        a6 &= 0xFFFFFFFEFFFFFFFELL;
      }

      if ((a6 & 0x200000002) == 0x200000000)
      {
        v14 = a3[2];
        v15 = vmlaq_f32(a2[2], v14, result);
        *(a4 + 128) = v15;
        v16 = vaddq_f32(v14, v15);
        if ((a7 & 0x100000000000) != 0)
        {
          v17 = vaddq_f32(v15, a3[38]);
        }

        else
        {
          v17 = vaddq_f32(v14, v16);
        }

        *(a4 + 144) = v16;
        *(a4 + 160) = v17;
        *(a4 + 176) = vaddq_f32(v14, v17);
        a6 &= 0xFFFFFFFDFFFFFFFDLL;
      }

      if ((a6 & 0x400000004) == 0x400000000)
      {
        v18 = a3[3];
        v19 = vmlaq_f32(a2[3], v18, result);
        *(a4 + 192) = v19;
        v20 = vaddq_f32(v18, v19);
        if ((a7 & 0x100000000000) != 0)
        {
          v21 = vaddq_f32(v19, a3[39]);
        }

        else
        {
          v21 = vaddq_f32(v18, v20);
        }

        *(a4 + 208) = v20;
        *(a4 + 224) = v21;
        *(a4 + 240) = vaddq_f32(v18, v21);
        a6 &= 0xFFFFFFFBFFFFFFFBLL;
      }

      if ((a6 & 0x800000008) == 0x800000000)
      {
        v22 = a3[4];
        v23 = vmlaq_f32(a2[4], v22, result);
        *(a4 + 256) = v23;
        v24 = vaddq_f32(v22, v23);
        if ((a7 & 0x100000000000) != 0)
        {
          v25 = vaddq_f32(v23, a3[40]);
        }

        else
        {
          v25 = vaddq_f32(v22, v24);
        }

        *(a4 + 272) = v24;
        *(a4 + 288) = v25;
        *(a4 + 304) = vaddq_f32(v22, v25);
        a6 &= 0xFFFFFFF7FFFFFFF7;
      }

      if ((a6 & 0x1000000010) == 0x1000000000)
      {
        v26 = a3[5];
        v27 = vmlaq_f32(a2[5], v26, result);
        *(a4 + 320) = v27;
        v28 = vaddq_f32(v26, v27);
        if ((a7 & 0x100000000000) != 0)
        {
          v29 = vaddq_f32(v27, a3[41]);
        }

        else
        {
          v29 = vaddq_f32(v26, v28);
        }

        *(a4 + 336) = v28;
        *(a4 + 352) = v29;
        *(a4 + 368) = vaddq_f32(v26, v29);
        a6 &= 0xFFFFFFEFFFFFFFEFLL;
      }

      if ((a6 & 0x2000000020) == 0x2000000000)
      {
        v30 = a3[6];
        v31 = vmlaq_f32(a2[6], v30, result);
        *(a4 + 384) = v31;
        v32 = vaddq_f32(v30, v31);
        if ((a7 & 0x100000000000) != 0)
        {
          v33 = vaddq_f32(v31, a3[42]);
        }

        else
        {
          v33 = vaddq_f32(v30, v32);
        }

        *(a4 + 400) = v32;
        *(a4 + 416) = v33;
        *(a4 + 432) = vaddq_f32(v30, v33);
        a6 &= 0xFFFFFFDFFFFFFFDFLL;
      }

      if ((a6 & 0x4000000040) == 0x4000000000)
      {
        v34 = a3[7];
        v35 = vmlaq_f32(a2[7], v34, result);
        *(a4 + 448) = v35;
        v36 = vaddq_f32(v34, v35);
        if ((a7 & 0x100000000000) != 0)
        {
          v37 = vaddq_f32(v35, a3[43]);
        }

        else
        {
          v37 = vaddq_f32(v34, v36);
        }

        *(a4 + 464) = v36;
        *(a4 + 480) = v37;
        *(a4 + 496) = vaddq_f32(v34, v37);
        a6 &= 0xFFFFFFBFFFFFFFBFLL;
      }

      if ((a6 & 0x8000000080) == 0x8000000000)
      {
        v38 = a3[8];
        v39 = vmlaq_f32(a2[8], v38, result);
        *(a4 + 512) = v39;
        v40 = vaddq_f32(v38, v39);
        if ((a7 & 0x100000000000) != 0)
        {
          v41 = vaddq_f32(v39, a3[44]);
        }

        else
        {
          v41 = vaddq_f32(v38, v40);
        }

        *(a4 + 528) = v40;
        *(a4 + 544) = v41;
        *(a4 + 560) = vaddq_f32(v38, v41);
        a6 &= 0xFFFFFF7FFFFFFF7FLL;
      }

      if ((a6 & 0x10000000100) == 0x10000000000)
      {
        v42 = a3[9];
        v43 = vmlaq_f32(a2[9], v42, result);
        *(a4 + 576) = v43;
        v44 = vaddq_f32(v42, v43);
        if ((a7 & 0x100000000000) != 0)
        {
          v45 = vaddq_f32(v43, a3[45]);
        }

        else
        {
          v45 = vaddq_f32(v42, v44);
        }

        *(a4 + 592) = v44;
        *(a4 + 608) = v45;
        *(a4 + 624) = vaddq_f32(v42, v45);
        a6 &= 0xFFFFFEFFFFFFFEFFLL;
      }

      if ((a6 & 0x20000000200) == 0x20000000000)
      {
        v46 = a3[10];
        v47 = vmlaq_f32(a2[10], v46, result);
        *(a4 + 640) = v47;
        v48 = vaddq_f32(v46, v47);
        if ((a7 & 0x100000000000) != 0)
        {
          v49 = vaddq_f32(v47, a3[46]);
        }

        else
        {
          v49 = vaddq_f32(v46, v48);
        }

        *(a4 + 656) = v48;
        *(a4 + 672) = v49;
        *(a4 + 688) = vaddq_f32(v46, v49);
        a6 &= 0xFFFFFDFFFFFFFDFFLL;
      }

      if ((a6 & 0x40000000400) == 0x40000000000)
      {
        v50 = a3[11];
        v51 = vmlaq_f32(a2[11], v50, result);
        *(a4 + 704) = v51;
        v52 = vaddq_f32(v50, v51);
        if ((a7 & 0x100000000000) != 0)
        {
          v53 = vaddq_f32(v51, a3[47]);
        }

        else
        {
          v53 = vaddq_f32(v50, v52);
        }

        *(a4 + 720) = v52;
        *(a4 + 736) = v53;
        *(a4 + 752) = vaddq_f32(v50, v53);
        a6 &= 0xFFFFFBFFFFFFFBFFLL;
      }

      if ((a6 & 0x80000000800) == 0x80000000000)
      {
        v54 = a3[12];
        v55 = vmlaq_f32(a2[12], v54, result);
        *(a4 + 768) = v55;
        v56 = vaddq_f32(v54, v55);
        if ((a7 & 0x100000000000) != 0)
        {
          v57 = vaddq_f32(v55, a3[48]);
        }

        else
        {
          v57 = vaddq_f32(v54, v56);
        }

        *(a4 + 784) = v56;
        *(a4 + 800) = v57;
        *(a4 + 816) = vaddq_f32(v54, v57);
        a6 &= 0xFFFFF7FFFFFFF7FFLL;
      }

      if ((a6 & 0x100000001000) == 0x100000000000)
      {
        v58 = a3[13];
        v59 = vmlaq_f32(a2[13], v58, result);
        *(a4 + 832) = v59;
        v60 = vaddq_f32(v58, v59);
        if ((a7 & 0x100000000000) != 0)
        {
          v61 = vaddq_f32(v59, a3[49]);
        }

        else
        {
          v61 = vaddq_f32(v58, v60);
        }

        *(a4 + 848) = v60;
        *(a4 + 864) = v61;
        *(a4 + 880) = vaddq_f32(v58, v61);
        a6 &= 0xFFFFEFFFFFFFEFFFLL;
      }

      if ((a6 & 0x200000002000) == 0x200000000000)
      {
        v62 = a3[14];
        v63 = vmlaq_f32(a2[14], v62, result);
        *(a4 + 896) = v63;
        v64 = vaddq_f32(v62, v63);
        if ((a7 & 0x100000000000) != 0)
        {
          v65 = vaddq_f32(v63, a3[50]);
        }

        else
        {
          v65 = vaddq_f32(v62, v64);
        }

        *(a4 + 912) = v64;
        *(a4 + 928) = v65;
        *(a4 + 944) = vaddq_f32(v62, v65);
        a6 &= 0xFFFFDFFFFFFFDFFFLL;
      }

      if ((a6 & 0x400000004000) == 0x400000000000)
      {
        v66 = a3[15];
        v67 = vmlaq_f32(a2[15], v66, result);
        *(a4 + 960) = v67;
        v68 = vaddq_f32(v66, v67);
        if ((a7 & 0x100000000000) != 0)
        {
          v69 = vaddq_f32(v67, a3[51]);
        }

        else
        {
          v69 = vaddq_f32(v66, v68);
        }

        *(a4 + 976) = v68;
        *(a4 + 992) = v69;
        *(a4 + 1008) = vaddq_f32(v66, v69);
        a6 &= 0xFFFFBFFFFFFFBFFFLL;
      }

      if ((a6 & 0x800000008000) == 0x800000000000)
      {
        v70 = a3[16];
        v71 = vmlaq_f32(a2[16], v70, result);
        *(a4 + 1024) = v71;
        v72 = vaddq_f32(v70, v71);
        if ((a7 & 0x100000000000) != 0)
        {
          v73 = vaddq_f32(v71, a3[52]);
        }

        else
        {
          v73 = vaddq_f32(v70, v72);
        }

        *(a4 + 1040) = v72;
        *(a4 + 1056) = v73;
        *(a4 + 1072) = vaddq_f32(v70, v73);
        a6 &= 0xFFFF7FFFFFFF7FFFLL;
      }

      if ((a6 & 0x1000000010000) == 0x1000000000000)
      {
        v74 = a3[17];
        v75 = vmlaq_f32(a2[17], v74, result);
        *(a4 + 1088) = v75;
        v76 = vaddq_f32(v74, v75);
        if ((a7 & 0x100000000000) != 0)
        {
          v77 = vaddq_f32(v75, a3[53]);
        }

        else
        {
          v77 = vaddq_f32(v74, v76);
        }

        *(a4 + 1104) = v76;
        *(a4 + 1120) = v77;
        *(a4 + 1136) = vaddq_f32(v74, v77);
        a6 &= 0xFFFEFFFFFFFEFFFFLL;
      }

      if ((a6 & 0x2000000020000) == 0x2000000000000)
      {
        v78 = a3[18];
        v79 = vmlaq_f32(a2[18], v78, result);
        *(a4 + 1152) = v79;
        v80 = vaddq_f32(v78, v79);
        if ((a7 & 0x100000000000) != 0)
        {
          v81 = vaddq_f32(v79, a3[54]);
        }

        else
        {
          v81 = vaddq_f32(v78, v80);
        }

        *(a4 + 1168) = v80;
        *(a4 + 1184) = v81;
        *(a4 + 1200) = vaddq_f32(v78, v81);
        a6 &= 0xFFFDFFFFFFFDFFFFLL;
      }

      if ((a6 & 0x4000000040000) == 0x4000000000000)
      {
        v82 = a3[19];
        v83 = vmlaq_f32(a2[19], v82, result);
        *(a4 + 1216) = v83;
        v84 = vaddq_f32(v82, v83);
        if ((a7 & 0x100000000000) != 0)
        {
          v85 = vaddq_f32(v83, a3[55]);
        }

        else
        {
          v85 = vaddq_f32(v82, v84);
        }

        *(a4 + 1232) = v84;
        *(a4 + 1248) = v85;
        *(a4 + 1264) = vaddq_f32(v82, v85);
        a6 &= 0xFFFBFFFFFFFBFFFFLL;
      }

      if ((a6 & 0x8000000080000) == 0x8000000000000)
      {
        v86 = a3[20];
        v87 = vmlaq_f32(a2[20], v86, result);
        *(a4 + 1280) = v87;
        v88 = vaddq_f32(v86, v87);
        if ((a7 & 0x100000000000) != 0)
        {
          v89 = vaddq_f32(v87, a3[56]);
        }

        else
        {
          v89 = vaddq_f32(v86, v88);
        }

        *(a4 + 1296) = v88;
        *(a4 + 1312) = v89;
        *(a4 + 1328) = vaddq_f32(v86, v89);
        a6 &= 0xFFF7FFFFFFF7FFFFLL;
      }

      if ((a6 & 0x10000000100000) == 0x10000000000000)
      {
        v90 = a3[21];
        v91 = vmlaq_f32(a2[21], v90, result);
        *(a4 + 1344) = v91;
        v92 = vaddq_f32(v90, v91);
        if ((a7 & 0x100000000000) != 0)
        {
          v93 = vaddq_f32(v91, a3[57]);
        }

        else
        {
          v93 = vaddq_f32(v90, v92);
        }

        *(a4 + 1360) = v92;
        *(a4 + 1376) = v93;
        *(a4 + 1392) = vaddq_f32(v90, v93);
        a6 &= 0xFFEFFFFFFFEFFFFFLL;
      }

      if ((a6 & 0x20000000200000) == 0x20000000000000)
      {
        v94 = a3[22];
        v95 = vmlaq_f32(a2[22], v94, result);
        *(a4 + 1408) = v95;
        v96 = vaddq_f32(v94, v95);
        if ((a7 & 0x100000000000) != 0)
        {
          v97 = vaddq_f32(v95, a3[58]);
        }

        else
        {
          v97 = vaddq_f32(v94, v96);
        }

        *(a4 + 1424) = v96;
        *(a4 + 1440) = v97;
        *(a4 + 1456) = vaddq_f32(v94, v97);
        a6 &= 0xFFDFFFFFFFDFFFFFLL;
      }

      if ((a6 & 0x40000000400000) == 0x40000000000000)
      {
        v98 = a3[23];
        v99 = vmlaq_f32(a2[23], v98, result);
        *(a4 + 1472) = v99;
        v100 = vaddq_f32(v98, v99);
        if ((a7 & 0x100000000000) != 0)
        {
          v101 = vaddq_f32(v99, a3[59]);
        }

        else
        {
          v101 = vaddq_f32(v98, v100);
        }

        *(a4 + 1488) = v100;
        *(a4 + 1504) = v101;
        *(a4 + 1520) = vaddq_f32(v98, v101);
        a6 &= 0xFFBFFFFFFFBFFFFFLL;
      }

      if ((a6 & 0x80000000800000) == 0x80000000000000)
      {
        v102 = a3[24];
        v103 = vmlaq_f32(a2[24], v102, result);
        *(a4 + 1536) = v103;
        v104 = vaddq_f32(v102, v103);
        if ((a7 & 0x100000000000) != 0)
        {
          v105 = vaddq_f32(v103, a3[60]);
        }

        else
        {
          v105 = vaddq_f32(v102, v104);
        }

        *(a4 + 1552) = v104;
        *(a4 + 1568) = v105;
        *(a4 + 1584) = vaddq_f32(v102, v105);
        a6 &= 0xFF7FFFFFFF7FFFFFLL;
      }

      if ((a6 & 0x100000001000000) == 0x100000000000000)
      {
        v106 = a3[25];
        v107 = vmlaq_f32(a2[25], v106, result);
        *(a4 + 1600) = v107;
        v108 = vaddq_f32(v106, v107);
        if ((a7 & 0x100000000000) != 0)
        {
          v109 = vaddq_f32(v107, a3[61]);
        }

        else
        {
          v109 = vaddq_f32(v106, v108);
        }

        *(a4 + 1616) = v108;
        *(a4 + 1632) = v109;
        *(a4 + 1648) = vaddq_f32(v106, v109);
        a6 &= 0xFEFFFFFFFEFFFFFFLL;
      }

      if ((a6 & 0x200000002000000) == 0x200000000000000)
      {
        v110 = a3[26];
        v111 = vmlaq_f32(a2[26], v110, result);
        *(a4 + 1664) = v111;
        v112 = vaddq_f32(v110, v111);
        if ((a7 & 0x100000000000) != 0)
        {
          v113 = vaddq_f32(v111, a3[62]);
        }

        else
        {
          v113 = vaddq_f32(v110, v112);
        }

        *(a4 + 1680) = v112;
        *(a4 + 1696) = v113;
        *(a4 + 1712) = vaddq_f32(v110, v113);
        a6 &= 0xFDFFFFFFFDFFFFFFLL;
      }

      if ((a6 & 0x400000004000000) == 0x400000000000000)
      {
        v114 = a3[27];
        v115 = vmlaq_f32(a2[27], v114, result);
        *(a4 + 1728) = v115;
        v116 = vaddq_f32(v114, v115);
        if ((a7 & 0x100000000000) != 0)
        {
          v117 = vaddq_f32(v115, a3[63]);
        }

        else
        {
          v117 = vaddq_f32(v114, v116);
        }

        *(a4 + 1744) = v116;
        *(a4 + 1760) = v117;
        *(a4 + 1776) = vaddq_f32(v114, v117);
        a6 &= 0xFBFFFFFFFBFFFFFFLL;
      }

      if ((a6 & 0x800000008000000) == 0x800000000000000)
      {
        v118 = a3[28];
        v119 = vmlaq_f32(a2[28], v118, result);
        *(a4 + 1792) = v119;
        v120 = vaddq_f32(v118, v119);
        if ((a7 & 0x100000000000) != 0)
        {
          v121 = vaddq_f32(v119, a3[64]);
        }

        else
        {
          v121 = vaddq_f32(v118, v120);
        }

        *(a4 + 1808) = v120;
        *(a4 + 1824) = v121;
        *(a4 + 1840) = vaddq_f32(v118, v121);
        a6 &= 0xF7FFFFFFF7FFFFFFLL;
      }

      if ((a6 & 0x1000000010000000) == 0x1000000000000000)
      {
        v122 = a3[29];
        v123 = vmlaq_f32(a2[29], v122, result);
        *(a4 + 1856) = v123;
        v124 = vaddq_f32(v122, v123);
        if ((a7 & 0x100000000000) != 0)
        {
          v125 = vaddq_f32(v123, a3[65]);
        }

        else
        {
          v125 = vaddq_f32(v122, v124);
        }

        *(a4 + 1872) = v124;
        *(a4 + 1888) = v125;
        *(a4 + 1904) = vaddq_f32(v122, v125);
        a6 &= 0xEFFFFFFFEFFFFFFFLL;
      }

      if ((a6 & 0x2000000020000000) == 0x2000000000000000)
      {
        v126 = a3[30];
        v127 = vmlaq_f32(a2[30], v126, result);
        *(a4 + 1920) = v127;
        v128 = vaddq_f32(v126, v127);
        if ((a7 & 0x100000000000) != 0)
        {
          v129 = vaddq_f32(v127, a3[66]);
        }

        else
        {
          v129 = vaddq_f32(v126, v128);
        }

        *(a4 + 1936) = v128;
        *(a4 + 1952) = v129;
        *(a4 + 1968) = vaddq_f32(v126, v129);
        a6 &= 0xDFFFFFFFDFFFFFFFLL;
      }

      if ((a6 & 0x4000000040000000) == 0x4000000000000000)
      {
        v130 = a3[31];
        v131 = vmlaq_f32(a2[31], v130, result);
        *(a4 + 1984) = v131;
        v132 = vaddq_f32(v130, v131);
        if ((a7 & 0x100000000000) != 0)
        {
          v133 = vaddq_f32(v131, a3[67]);
        }

        else
        {
          v133 = vaddq_f32(v130, v132);
        }

        *(a4 + 2000) = v132;
        *(a4 + 2016) = v133;
        *(a4 + 2032) = vaddq_f32(v130, v133);
        a6 &= 0xBFFFFFFFBFFFFFFFLL;
      }

      if ((a6 & 0x8000000080000000) == 0x8000000000000000)
      {
        v134 = a3[32];
        v135 = vmlaq_f32(a2[32], v134, result);
        *(a4 + 2048) = v135;
        v136 = vaddq_f32(v134, v135);
        if ((a7 & 0x100000000000) != 0)
        {
          v137 = vaddq_f32(v135, a3[68]);
        }

        else
        {
          v137 = vaddq_f32(v134, v136);
        }

        *(a4 + 2064) = v136;
        *(a4 + 2080) = v137;
        *(a4 + 2096) = vaddq_f32(v134, v137);
        a6 &= 0x7FFFFFFF7FFFFFFFuLL;
      }
    }

    if (a6 | v9)
    {
      __asm { FMOV            V2.4S, #1.0 }

      v143 = vdivq_f32(_Q2, *(a4 + 2624));
      *(a4 + 2624) = vdupq_lane_s32(*v143.f32, 0);
      *(a4 + 2640) = vdupq_lane_s32(*v143.f32, 1);
      *(a4 + 2656) = vdupq_laneq_s32(v143, 2);
      *(a4 + 2672) = vdupq_laneq_s32(v143, 3);
      if (a6)
      {
        if ((~a6 & 0x100000001) == 0)
        {
          v144 = a3[1];
          v145 = vmlaq_f32(a2[1], v144, result);
          *(a4 + 64) = v145;
          v146 = vaddq_f32(v144, v145);
          if ((a7 & 0x100000000000) != 0)
          {
            v147 = vaddq_f32(v145, a3[37]);
          }

          else
          {
            v147 = vaddq_f32(v144, v146);
          }

          *(a4 + 64) = vmulq_n_f32(v145, v143.f32[0]);
          *(a4 + 80) = vmulq_lane_f32(v146, *v143.f32, 1);
          *(a4 + 96) = vmulq_laneq_f32(v147, v143, 2);
          *(a4 + 112) = vmulq_laneq_f32(vaddq_f32(v144, v147), v143, 3);
        }

        if ((~a6 & 0x200000002) == 0)
        {
          v148 = a3[2];
          v149 = vmlaq_f32(a2[2], v148, result);
          *(a4 + 128) = v149;
          v150 = vaddq_f32(v148, v149);
          if ((a7 & 0x100000000000) != 0)
          {
            v151 = vaddq_f32(v149, a3[38]);
          }

          else
          {
            v151 = vaddq_f32(v148, v150);
          }

          *(a4 + 128) = vmulq_n_f32(v149, v143.f32[0]);
          *(a4 + 144) = vmulq_lane_f32(v150, *v143.f32, 1);
          *(a4 + 160) = vmulq_laneq_f32(v151, v143, 2);
          *(a4 + 176) = vmulq_laneq_f32(vaddq_f32(v148, v151), v143, 3);
        }

        if ((~a6 & 0x400000004) == 0)
        {
          v152 = a3[3];
          v153 = vmlaq_f32(a2[3], v152, result);
          *(a4 + 192) = v153;
          v154 = vaddq_f32(v152, v153);
          if ((a7 & 0x100000000000) != 0)
          {
            v155 = vaddq_f32(v153, a3[39]);
          }

          else
          {
            v155 = vaddq_f32(v152, v154);
          }

          *(a4 + 192) = vmulq_n_f32(v153, v143.f32[0]);
          *(a4 + 208) = vmulq_lane_f32(v154, *v143.f32, 1);
          *(a4 + 224) = vmulq_laneq_f32(v155, v143, 2);
          *(a4 + 240) = vmulq_laneq_f32(vaddq_f32(v152, v155), v143, 3);
        }

        if ((~a6 & 0x800000008) == 0)
        {
          v156 = a3[4];
          v157 = vmlaq_f32(a2[4], v156, result);
          *(a4 + 256) = v157;
          v158 = vaddq_f32(v156, v157);
          if ((a7 & 0x100000000000) != 0)
          {
            v159 = vaddq_f32(v157, a3[40]);
          }

          else
          {
            v159 = vaddq_f32(v156, v158);
          }

          *(a4 + 256) = vmulq_n_f32(v157, v143.f32[0]);
          *(a4 + 272) = vmulq_lane_f32(v158, *v143.f32, 1);
          *(a4 + 288) = vmulq_laneq_f32(v159, v143, 2);
          *(a4 + 304) = vmulq_laneq_f32(vaddq_f32(v156, v159), v143, 3);
        }

        if ((~a6 & 0x1000000010) == 0)
        {
          v160 = a3[5];
          v161 = vmlaq_f32(a2[5], v160, result);
          *(a4 + 320) = v161;
          v162 = vaddq_f32(v160, v161);
          if ((a7 & 0x100000000000) != 0)
          {
            v163 = vaddq_f32(v161, a3[41]);
          }

          else
          {
            v163 = vaddq_f32(v160, v162);
          }

          *(a4 + 320) = vmulq_n_f32(v161, v143.f32[0]);
          *(a4 + 336) = vmulq_lane_f32(v162, *v143.f32, 1);
          *(a4 + 352) = vmulq_laneq_f32(v163, v143, 2);
          *(a4 + 368) = vmulq_laneq_f32(vaddq_f32(v160, v163), v143, 3);
        }

        if ((~a6 & 0x2000000020) == 0)
        {
          v164 = a3[6];
          v165 = vmlaq_f32(a2[6], v164, result);
          *(a4 + 384) = v165;
          v166 = vaddq_f32(v164, v165);
          if ((a7 & 0x100000000000) != 0)
          {
            v167 = vaddq_f32(v165, a3[42]);
          }

          else
          {
            v167 = vaddq_f32(v164, v166);
          }

          *(a4 + 384) = vmulq_n_f32(v165, v143.f32[0]);
          *(a4 + 400) = vmulq_lane_f32(v166, *v143.f32, 1);
          *(a4 + 416) = vmulq_laneq_f32(v167, v143, 2);
          *(a4 + 432) = vmulq_laneq_f32(vaddq_f32(v164, v167), v143, 3);
        }

        if ((~a6 & 0x4000000040) == 0)
        {
          v168 = a3[7];
          v169 = vmlaq_f32(a2[7], v168, result);
          *(a4 + 448) = v169;
          v170 = vaddq_f32(v168, v169);
          if ((a7 & 0x100000000000) != 0)
          {
            v171 = vaddq_f32(v169, a3[43]);
          }

          else
          {
            v171 = vaddq_f32(v168, v170);
          }

          *(a4 + 448) = vmulq_n_f32(v169, v143.f32[0]);
          *(a4 + 464) = vmulq_lane_f32(v170, *v143.f32, 1);
          *(a4 + 480) = vmulq_laneq_f32(v171, v143, 2);
          *(a4 + 496) = vmulq_laneq_f32(vaddq_f32(v168, v171), v143, 3);
        }

        if ((~a6 & 0x8000000080) == 0)
        {
          v172 = a3[8];
          v173 = vmlaq_f32(a2[8], v172, result);
          *(a4 + 512) = v173;
          v174 = vaddq_f32(v172, v173);
          if ((a7 & 0x100000000000) != 0)
          {
            v175 = vaddq_f32(v173, a3[44]);
          }

          else
          {
            v175 = vaddq_f32(v172, v174);
          }

          *(a4 + 512) = vmulq_n_f32(v173, v143.f32[0]);
          *(a4 + 528) = vmulq_lane_f32(v174, *v143.f32, 1);
          *(a4 + 544) = vmulq_laneq_f32(v175, v143, 2);
          *(a4 + 560) = vmulq_laneq_f32(vaddq_f32(v172, v175), v143, 3);
        }

        if ((~a6 & 0x10000000100) == 0)
        {
          v176 = a3[9];
          v177 = vmlaq_f32(a2[9], v176, result);
          *(a4 + 576) = v177;
          v178 = vaddq_f32(v176, v177);
          if ((a7 & 0x100000000000) != 0)
          {
            v179 = vaddq_f32(v177, a3[45]);
          }

          else
          {
            v179 = vaddq_f32(v176, v178);
          }

          *(a4 + 576) = vmulq_n_f32(v177, v143.f32[0]);
          *(a4 + 592) = vmulq_lane_f32(v178, *v143.f32, 1);
          *(a4 + 608) = vmulq_laneq_f32(v179, v143, 2);
          *(a4 + 624) = vmulq_laneq_f32(vaddq_f32(v176, v179), v143, 3);
        }

        if ((~a6 & 0x20000000200) == 0)
        {
          v180 = a3[10];
          v181 = vmlaq_f32(a2[10], v180, result);
          *(a4 + 640) = v181;
          v182 = vaddq_f32(v180, v181);
          if ((a7 & 0x100000000000) != 0)
          {
            v183 = vaddq_f32(v181, a3[46]);
          }

          else
          {
            v183 = vaddq_f32(v180, v182);
          }

          *(a4 + 640) = vmulq_n_f32(v181, v143.f32[0]);
          *(a4 + 656) = vmulq_lane_f32(v182, *v143.f32, 1);
          *(a4 + 672) = vmulq_laneq_f32(v183, v143, 2);
          *(a4 + 688) = vmulq_laneq_f32(vaddq_f32(v180, v183), v143, 3);
        }

        if ((~a6 & 0x40000000400) == 0)
        {
          v184 = a3[11];
          v185 = vmlaq_f32(a2[11], v184, result);
          *(a4 + 704) = v185;
          v186 = vaddq_f32(v184, v185);
          if ((a7 & 0x100000000000) != 0)
          {
            v187 = vaddq_f32(v185, a3[47]);
          }

          else
          {
            v187 = vaddq_f32(v184, v186);
          }

          *(a4 + 704) = vmulq_n_f32(v185, v143.f32[0]);
          *(a4 + 720) = vmulq_lane_f32(v186, *v143.f32, 1);
          *(a4 + 736) = vmulq_laneq_f32(v187, v143, 2);
          *(a4 + 752) = vmulq_laneq_f32(vaddq_f32(v184, v187), v143, 3);
        }

        if ((~a6 & 0x80000000800) == 0)
        {
          v188 = a3[12];
          v189 = vmlaq_f32(a2[12], v188, result);
          *(a4 + 768) = v189;
          v190 = vaddq_f32(v188, v189);
          if ((a7 & 0x100000000000) != 0)
          {
            v191 = vaddq_f32(v189, a3[48]);
          }

          else
          {
            v191 = vaddq_f32(v188, v190);
          }

          *(a4 + 768) = vmulq_n_f32(v189, v143.f32[0]);
          *(a4 + 784) = vmulq_lane_f32(v190, *v143.f32, 1);
          *(a4 + 800) = vmulq_laneq_f32(v191, v143, 2);
          *(a4 + 816) = vmulq_laneq_f32(vaddq_f32(v188, v191), v143, 3);
        }

        if ((~a6 & 0x100000001000) == 0)
        {
          v192 = a3[13];
          v193 = vmlaq_f32(a2[13], v192, result);
          *(a4 + 832) = v193;
          v194 = vaddq_f32(v192, v193);
          if ((a7 & 0x100000000000) != 0)
          {
            v195 = vaddq_f32(v193, a3[49]);
          }

          else
          {
            v195 = vaddq_f32(v192, v194);
          }

          *(a4 + 832) = vmulq_n_f32(v193, v143.f32[0]);
          *(a4 + 848) = vmulq_lane_f32(v194, *v143.f32, 1);
          *(a4 + 864) = vmulq_laneq_f32(v195, v143, 2);
          *(a4 + 880) = vmulq_laneq_f32(vaddq_f32(v192, v195), v143, 3);
        }

        if ((~a6 & 0x200000002000) == 0)
        {
          v196 = a3[14];
          v197 = vmlaq_f32(a2[14], v196, result);
          *(a4 + 896) = v197;
          v198 = vaddq_f32(v196, v197);
          if ((a7 & 0x100000000000) != 0)
          {
            v199 = vaddq_f32(v197, a3[50]);
          }

          else
          {
            v199 = vaddq_f32(v196, v198);
          }

          *(a4 + 896) = vmulq_n_f32(v197, v143.f32[0]);
          *(a4 + 912) = vmulq_lane_f32(v198, *v143.f32, 1);
          *(a4 + 928) = vmulq_laneq_f32(v199, v143, 2);
          *(a4 + 944) = vmulq_laneq_f32(vaddq_f32(v196, v199), v143, 3);
        }

        if ((~a6 & 0x400000004000) == 0)
        {
          v200 = a3[15];
          v201 = vmlaq_f32(a2[15], v200, result);
          *(a4 + 960) = v201;
          v202 = vaddq_f32(v200, v201);
          if ((a7 & 0x100000000000) != 0)
          {
            v203 = vaddq_f32(v201, a3[51]);
          }

          else
          {
            v203 = vaddq_f32(v200, v202);
          }

          *(a4 + 960) = vmulq_n_f32(v201, v143.f32[0]);
          *(a4 + 976) = vmulq_lane_f32(v202, *v143.f32, 1);
          *(a4 + 992) = vmulq_laneq_f32(v203, v143, 2);
          *(a4 + 1008) = vmulq_laneq_f32(vaddq_f32(v200, v203), v143, 3);
        }

        if ((~a6 & 0x800000008000) == 0)
        {
          v204 = a3[16];
          v205 = vmlaq_f32(a2[16], v204, result);
          *(a4 + 1024) = v205;
          v206 = vaddq_f32(v204, v205);
          if ((a7 & 0x100000000000) != 0)
          {
            v207 = vaddq_f32(v205, a3[52]);
          }

          else
          {
            v207 = vaddq_f32(v204, v206);
          }

          *(a4 + 1024) = vmulq_n_f32(v205, v143.f32[0]);
          *(a4 + 1040) = vmulq_lane_f32(v206, *v143.f32, 1);
          *(a4 + 1056) = vmulq_laneq_f32(v207, v143, 2);
          *(a4 + 1072) = vmulq_laneq_f32(vaddq_f32(v204, v207), v143, 3);
        }

        if ((~a6 & 0x1000000010000) == 0)
        {
          v208 = a3[17];
          v209 = vmlaq_f32(a2[17], v208, result);
          *(a4 + 1088) = v209;
          v210 = vaddq_f32(v208, v209);
          if ((a7 & 0x100000000000) != 0)
          {
            v211 = vaddq_f32(v209, a3[53]);
          }

          else
          {
            v211 = vaddq_f32(v208, v210);
          }

          *(a4 + 1088) = vmulq_n_f32(v209, v143.f32[0]);
          *(a4 + 1104) = vmulq_lane_f32(v210, *v143.f32, 1);
          *(a4 + 1120) = vmulq_laneq_f32(v211, v143, 2);
          *(a4 + 1136) = vmulq_laneq_f32(vaddq_f32(v208, v211), v143, 3);
        }

        if ((~a6 & 0x2000000020000) == 0)
        {
          v212 = a3[18];
          v213 = vmlaq_f32(a2[18], v212, result);
          *(a4 + 1152) = v213;
          v214 = vaddq_f32(v212, v213);
          if ((a7 & 0x100000000000) != 0)
          {
            v215 = vaddq_f32(v213, a3[54]);
          }

          else
          {
            v215 = vaddq_f32(v212, v214);
          }

          *(a4 + 1152) = vmulq_n_f32(v213, v143.f32[0]);
          *(a4 + 1168) = vmulq_lane_f32(v214, *v143.f32, 1);
          *(a4 + 1184) = vmulq_laneq_f32(v215, v143, 2);
          *(a4 + 1200) = vmulq_laneq_f32(vaddq_f32(v212, v215), v143, 3);
        }

        if ((~a6 & 0x4000000040000) == 0)
        {
          v216 = a3[19];
          v217 = vmlaq_f32(a2[19], v216, result);
          *(a4 + 1216) = v217;
          v218 = vaddq_f32(v216, v217);
          if ((a7 & 0x100000000000) != 0)
          {
            v219 = vaddq_f32(v217, a3[55]);
          }

          else
          {
            v219 = vaddq_f32(v216, v218);
          }

          *(a4 + 1216) = vmulq_n_f32(v217, v143.f32[0]);
          *(a4 + 1232) = vmulq_lane_f32(v218, *v143.f32, 1);
          *(a4 + 1248) = vmulq_laneq_f32(v219, v143, 2);
          *(a4 + 1264) = vmulq_laneq_f32(vaddq_f32(v216, v219), v143, 3);
        }

        if ((~a6 & 0x8000000080000) == 0)
        {
          v220 = a3[20];
          v221 = vmlaq_f32(a2[20], v220, result);
          *(a4 + 1280) = v221;
          v222 = vaddq_f32(v220, v221);
          if ((a7 & 0x100000000000) != 0)
          {
            v223 = vaddq_f32(v221, a3[56]);
          }

          else
          {
            v223 = vaddq_f32(v220, v222);
          }

          *(a4 + 1280) = vmulq_n_f32(v221, v143.f32[0]);
          *(a4 + 1296) = vmulq_lane_f32(v222, *v143.f32, 1);
          *(a4 + 1312) = vmulq_laneq_f32(v223, v143, 2);
          *(a4 + 1328) = vmulq_laneq_f32(vaddq_f32(v220, v223), v143, 3);
        }

        if ((~a6 & 0x10000000100000) == 0)
        {
          v224 = a3[21];
          v225 = vmlaq_f32(a2[21], v224, result);
          *(a4 + 1344) = v225;
          v226 = vaddq_f32(v224, v225);
          if ((a7 & 0x100000000000) != 0)
          {
            v227 = vaddq_f32(v225, a3[57]);
          }

          else
          {
            v227 = vaddq_f32(v224, v226);
          }

          *(a4 + 1344) = vmulq_n_f32(v225, v143.f32[0]);
          *(a4 + 1360) = vmulq_lane_f32(v226, *v143.f32, 1);
          *(a4 + 1376) = vmulq_laneq_f32(v227, v143, 2);
          *(a4 + 1392) = vmulq_laneq_f32(vaddq_f32(v224, v227), v143, 3);
        }

        if ((~a6 & 0x20000000200000) == 0)
        {
          v228 = a3[22];
          v229 = vmlaq_f32(a2[22], v228, result);
          *(a4 + 1408) = v229;
          v230 = vaddq_f32(v228, v229);
          if ((a7 & 0x100000000000) != 0)
          {
            v231 = vaddq_f32(v229, a3[58]);
          }

          else
          {
            v231 = vaddq_f32(v228, v230);
          }

          *(a4 + 1408) = vmulq_n_f32(v229, v143.f32[0]);
          *(a4 + 1424) = vmulq_lane_f32(v230, *v143.f32, 1);
          *(a4 + 1440) = vmulq_laneq_f32(v231, v143, 2);
          *(a4 + 1456) = vmulq_laneq_f32(vaddq_f32(v228, v231), v143, 3);
        }

        if ((~a6 & 0x40000000400000) == 0)
        {
          v232 = a3[23];
          v233 = vmlaq_f32(a2[23], v232, result);
          *(a4 + 1472) = v233;
          v234 = vaddq_f32(v232, v233);
          if ((a7 & 0x100000000000) != 0)
          {
            v235 = vaddq_f32(v233, a3[59]);
          }

          else
          {
            v235 = vaddq_f32(v232, v234);
          }

          *(a4 + 1472) = vmulq_n_f32(v233, v143.f32[0]);
          *(a4 + 1488) = vmulq_lane_f32(v234, *v143.f32, 1);
          *(a4 + 1504) = vmulq_laneq_f32(v235, v143, 2);
          *(a4 + 1520) = vmulq_laneq_f32(vaddq_f32(v232, v235), v143, 3);
        }

        if ((~a6 & 0x80000000800000) == 0)
        {
          v236 = a3[24];
          v237 = vmlaq_f32(a2[24], v236, result);
          *(a4 + 1536) = v237;
          v238 = vaddq_f32(v236, v237);
          if ((a7 & 0x100000000000) != 0)
          {
            v239 = vaddq_f32(v237, a3[60]);
          }

          else
          {
            v239 = vaddq_f32(v236, v238);
          }

          *(a4 + 1536) = vmulq_n_f32(v237, v143.f32[0]);
          *(a4 + 1552) = vmulq_lane_f32(v238, *v143.f32, 1);
          *(a4 + 1568) = vmulq_laneq_f32(v239, v143, 2);
          *(a4 + 1584) = vmulq_laneq_f32(vaddq_f32(v236, v239), v143, 3);
        }

        if ((~a6 & 0x100000001000000) == 0)
        {
          v240 = a3[25];
          v241 = vmlaq_f32(a2[25], v240, result);
          *(a4 + 1600) = v241;
          v242 = vaddq_f32(v240, v241);
          if ((a7 & 0x100000000000) != 0)
          {
            v243 = vaddq_f32(v241, a3[61]);
          }

          else
          {
            v243 = vaddq_f32(v240, v242);
          }

          *(a4 + 1600) = vmulq_n_f32(v241, v143.f32[0]);
          *(a4 + 1616) = vmulq_lane_f32(v242, *v143.f32, 1);
          *(a4 + 1632) = vmulq_laneq_f32(v243, v143, 2);
          *(a4 + 1648) = vmulq_laneq_f32(vaddq_f32(v240, v243), v143, 3);
        }

        if ((~a6 & 0x200000002000000) == 0)
        {
          v244 = a3[26];
          v245 = vmlaq_f32(a2[26], v244, result);
          *(a4 + 1664) = v245;
          v246 = vaddq_f32(v244, v245);
          if ((a7 & 0x100000000000) != 0)
          {
            v247 = vaddq_f32(v245, a3[62]);
          }

          else
          {
            v247 = vaddq_f32(v244, v246);
          }

          *(a4 + 1664) = vmulq_n_f32(v245, v143.f32[0]);
          *(a4 + 1680) = vmulq_lane_f32(v246, *v143.f32, 1);
          *(a4 + 1696) = vmulq_laneq_f32(v247, v143, 2);
          *(a4 + 1712) = vmulq_laneq_f32(vaddq_f32(v244, v247), v143, 3);
        }

        if ((~a6 & 0x400000004000000) == 0)
        {
          v248 = a3[27];
          v249 = vmlaq_f32(a2[27], v248, result);
          *(a4 + 1728) = v249;
          v250 = vaddq_f32(v248, v249);
          if ((a7 & 0x100000000000) != 0)
          {
            v251 = vaddq_f32(v249, a3[63]);
          }

          else
          {
            v251 = vaddq_f32(v248, v250);
          }

          *(a4 + 1728) = vmulq_n_f32(v249, v143.f32[0]);
          *(a4 + 1744) = vmulq_lane_f32(v250, *v143.f32, 1);
          *(a4 + 1760) = vmulq_laneq_f32(v251, v143, 2);
          *(a4 + 1776) = vmulq_laneq_f32(vaddq_f32(v248, v251), v143, 3);
        }

        if ((~a6 & 0x800000008000000) == 0)
        {
          v252 = a3[28];
          v253 = vmlaq_f32(a2[28], v252, result);
          *(a4 + 1792) = v253;
          v254 = vaddq_f32(v252, v253);
          if ((a7 & 0x100000000000) != 0)
          {
            v255 = vaddq_f32(v253, a3[64]);
          }

          else
          {
            v255 = vaddq_f32(v252, v254);
          }

          *(a4 + 1792) = vmulq_n_f32(v253, v143.f32[0]);
          *(a4 + 1808) = vmulq_lane_f32(v254, *v143.f32, 1);
          *(a4 + 1824) = vmulq_laneq_f32(v255, v143, 2);
          *(a4 + 1840) = vmulq_laneq_f32(vaddq_f32(v252, v255), v143, 3);
        }

        if ((~a6 & 0x1000000010000000) == 0)
        {
          v256 = a3[29];
          v257 = vmlaq_f32(a2[29], v256, result);
          *(a4 + 1856) = v257;
          v258 = vaddq_f32(v256, v257);
          if ((a7 & 0x100000000000) != 0)
          {
            v259 = vaddq_f32(v257, a3[65]);
          }

          else
          {
            v259 = vaddq_f32(v256, v258);
          }

          *(a4 + 1856) = vmulq_n_f32(v257, v143.f32[0]);
          *(a4 + 1872) = vmulq_lane_f32(v258, *v143.f32, 1);
          *(a4 + 1888) = vmulq_laneq_f32(v259, v143, 2);
          *(a4 + 1904) = vmulq_laneq_f32(vaddq_f32(v256, v259), v143, 3);
        }

        if ((~a6 & 0x2000000020000000) == 0)
        {
          v260 = a3[30];
          v261 = vmlaq_f32(a2[30], v260, result);
          *(a4 + 1920) = v261;
          v262 = vaddq_f32(v260, v261);
          if ((a7 & 0x100000000000) != 0)
          {
            v263 = vaddq_f32(v261, a3[66]);
          }

          else
          {
            v263 = vaddq_f32(v260, v262);
          }

          *(a4 + 1920) = vmulq_n_f32(v261, v143.f32[0]);
          *(a4 + 1936) = vmulq_lane_f32(v262, *v143.f32, 1);
          *(a4 + 1952) = vmulq_laneq_f32(v263, v143, 2);
          *(a4 + 1968) = vmulq_laneq_f32(vaddq_f32(v260, v263), v143, 3);
        }

        if ((~a6 & 0x4000000040000000) == 0)
        {
          v264 = a3[31];
          v265 = vmlaq_f32(a2[31], v264, result);
          *(a4 + 1984) = v265;
          v266 = vaddq_f32(v264, v265);
          if ((a7 & 0x100000000000) != 0)
          {
            v267 = vaddq_f32(v265, a3[67]);
          }

          else
          {
            v267 = vaddq_f32(v264, v266);
          }

          *(a4 + 1984) = vmulq_n_f32(v265, v143.f32[0]);
          *(a4 + 2000) = vmulq_lane_f32(v266, *v143.f32, 1);
          *(a4 + 2016) = vmulq_laneq_f32(v267, v143, 2);
          *(a4 + 2032) = vmulq_laneq_f32(vaddq_f32(v264, v267), v143, 3);
        }

        if ((~a6 & 0x8000000080000000) == 0)
        {
          v268 = a3[32];
          v269 = vmlaq_f32(a2[32], v268, result);
          *(a4 + 2048) = v269;
          v270 = vaddq_f32(v268, v269);
          if ((a7 & 0x100000000000) != 0)
          {
            v271 = vaddq_f32(v269, a3[68]);
          }

          else
          {
            v271 = vaddq_f32(v268, v270);
          }

          *(a4 + 2048) = vmulq_n_f32(v269, v143.f32[0]);
          *(a4 + 2064) = vmulq_lane_f32(v270, *v143.f32, 1);
          *(a4 + 2080) = vmulq_laneq_f32(v271, v143, 2);
          *(a4 + 2096) = vmulq_laneq_f32(vaddq_f32(v268, v271), v143, 3);
        }
      }

      if (a5 >> 6)
      {
        if ((a5 & 0x40) != 0)
        {
          v272 = a3[33];
          v273 = vmlaq_f32(a2[33], v272, result);
          *(a4 + 2112) = v273;
          v274 = vaddq_f32(v272, v273);
          if ((a7 & 0x100000000000) != 0)
          {
            v275 = vaddq_f32(v273, a3[69]);
          }

          else
          {
            v275 = vaddq_f32(v272, v274);
          }

          *(a4 + 2112) = vmulq_n_f32(v273, v143.f32[0]);
          *(a4 + 2128) = vmulq_lane_f32(v274, *v143.f32, 1);
          *(a4 + 2144) = vmulq_laneq_f32(v275, v143, 2);
          *(a4 + 2160) = vmulq_laneq_f32(vaddq_f32(v272, v275), v143, 3);
        }

        if ((a5 & 0x80) != 0)
        {
          v276 = a3[34];
          v277 = vmlaq_f32(a2[34], v276, result);
          *(a4 + 2176) = v277;
          v278 = vaddq_f32(v276, v277);
          if ((a7 & 0x100000000000) != 0)
          {
            v279 = vaddq_f32(v277, a3[70]);
          }

          else
          {
            v279 = vaddq_f32(v276, v278);
          }

          *(a4 + 2176) = vmulq_n_f32(v277, v143.f32[0]);
          *(a4 + 2192) = vmulq_lane_f32(v278, *v143.f32, 1);
          *(a4 + 2208) = vmulq_laneq_f32(v279, v143, 2);
          *(a4 + 2224) = vmulq_laneq_f32(vaddq_f32(v276, v279), v143, 3);
        }
      }

      if (v8)
      {
        v280 = a3[35];
        v281 = vmlaq_f32(a2[35], v280, result);
        *(a4 + 2240) = v281;
        v282 = vaddq_f32(v280, v281);
        if ((a7 & 0x100000000000) != 0)
        {
          v283 = vaddq_f32(v281, a3[71]);
        }

        else
        {
          v283 = vaddq_f32(v280, v282);
        }

        *(a4 + 2240) = vmulq_n_f32(v281, v143.f32[0]);
        *(a4 + 2256) = vmulq_lane_f32(v282, *v143.f32, 1);
        *(a4 + 2272) = vmulq_laneq_f32(v283, v143, 2);
        result = vmulq_laneq_f32(vaddq_f32(v280, v283), v143, 3);
        *(a4 + 2288) = result;
      }
    }
  }

  return result;
}

unsigned __int16 glvmOperationKIL@<H0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>)
{
  result = vmaxv_u16(vmovn_s32(vmvnq_s8(vcgezq_f32(a2[6]))));
  *(a1 + 144) &= ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgezq_f32(*a2)))) & 1) == 0) | (2 * ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgezq_f32(a2[2])))) & 1) == 0)) & 0xF3 | (4 * ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgezq_f32(a2[4])))) & 1) == 0)) & 0xF7 | (8 * ((result & 1) == 0));
  return result;
}

void glvmPreloadFPTransformFour(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t *a9, float32x4_t *a10, float32x4_t *a11, int a12, int a13)
{
  v13 = a13;
  v116 = *MEMORY[0x277D85DE8];
  v14 = *(a6 + 8);
  v15 = *(a6 + 16);
  v16.i32[1] = 0;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  memset(v109, 0, sizeof(v109));
  v17 = *(a6 + 128);
  if (!v17)
  {
    v26 = ~a13;
    goto LABEL_25;
  }

  v18 = a6 + 8 * *(a6 + 132);
  v19 = (v17 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (!v19)
  {
    v22 = (a6 + 8 * *(a6 + 132));
LABEL_9:
    v27 = (v18 + 8 * v17);
    do
    {
      *(v109 + (*v22 & 0xF8)) = v22;
      ++v22;
    }

    while (v22 != v27);
    goto LABEL_11;
  }

  v20 = v19 + 1;
  v21 = (v19 + 1) & 0x3FFFFFFFFFFFFFFELL;
  v22 = (v18 + 8 * v21);
  v23 = (v18 + 8);
  v24 = v21;
  do
  {
    v25 = *v23 & 0xF8;
    *(v109 + (*(v23 - 1) & 0xF8)) = v23 - 1;
    *(v109 + v25) = v23;
    v23 += 2;
    v24 -= 2;
  }

  while (v24);
  if (v20 != v21)
  {
    goto LABEL_9;
  }

LABEL_11:
  v26 = ~a13;
  if (v111)
  {
    v28 = *v111;
    v29 = (*v111 >> 47) + v26;
    if ((*v111 & 0x1000) != 0)
    {
      v29 = a13;
    }

    v30 = a12 + v29 * (*v111 >> 15);
    v31 = (v28 >> 8) & 0xF;
    if (v31 > 4)
    {
      if (v31 - 7 < 2)
      {
        v32 = 8 * v30;
      }

      else if (v31 == 5)
      {
        v32 = 4 * v30;
      }

      else if (v31 == 6)
      {
        v32 = 2 * v30;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 16 * v30;
      if (v31 - 1 >= 4)
      {
        v32 = 0;
      }
    }

    a9[-10].i64[v28 >> 3] += v32;
  }

LABEL_25:
  if (*(&v111 + 1))
  {
    v33 = **(&v111 + 1);
    v34 = v26 + (**(&v111 + 1) >> 47);
    if ((**(&v111 + 1) & 0x1000) != 0)
    {
      v34 = a13;
    }

    v35 = a12 + v34 * (**(&v111 + 1) >> 15);
    v36 = (v33 >> 8) & 0xF;
    v37 = 4 * v35;
    v38 = 2 * v35;
    if (v36 != 6)
    {
      v38 = 0;
    }

    if (v36 != 5)
    {
      v37 = v38;
    }

    if (v36 - 7 >= 2)
    {
      v39 = v37;
    }

    else
    {
      v39 = 8 * v35;
    }

    v40 = 16 * v35;
    if (v36 - 1 >= 4)
    {
      v40 = 0;
    }

    if (((v33 >> 8) & 0xF) > 4)
    {
      v40 = v39;
    }

    a9[-10].i64[v33 >> 3] += v40;
  }

  if (v112)
  {
    v41 = *v112;
    v42 = v26 + (*v112 >> 47);
    if ((*v112 & 0x1000) != 0)
    {
      v42 = a13;
    }

    v43 = a12 + v42 * (*v112 >> 15);
    v44 = (v41 >> 8) & 0xF;
    v45 = 4 * v43;
    v46 = 2 * v43;
    if (v44 != 6)
    {
      v46 = 0;
    }

    if (v44 != 5)
    {
      v45 = v46;
    }

    if (v44 - 7 >= 2)
    {
      v47 = v45;
    }

    else
    {
      v47 = 8 * v43;
    }

    v48 = 16 * v43;
    if (v44 - 1 >= 4)
    {
      v48 = 0;
    }

    if (((v41 >> 8) & 0xF) > 4)
    {
      v48 = v47;
    }

    a9[-10].i64[v41 >> 3] += v48;
  }

  if (*(&v112 + 1))
  {
    v49 = **(&v112 + 1);
    v50 = v26 + (**(&v112 + 1) >> 47);
    if ((**(&v112 + 1) & 0x1000) != 0)
    {
      v50 = a13;
    }

    v51 = a12 + v50 * (**(&v112 + 1) >> 15);
    v52 = (v49 >> 8) & 0xF;
    v53 = 4 * v51;
    v54 = 2 * v51;
    if (v52 != 6)
    {
      v54 = 0;
    }

    if (v52 != 5)
    {
      v53 = v54;
    }

    if (v52 - 7 >= 2)
    {
      v55 = v53;
    }

    else
    {
      v55 = 8 * v51;
    }

    v56 = 16 * v51;
    if (v52 - 1 >= 4)
    {
      v56 = 0;
    }

    if (((v49 >> 8) & 0xF) > 4)
    {
      v56 = v55;
    }

    a9[-10].i64[v49 >> 3] += v56;
  }

  if (v113)
  {
    v57 = *v113;
    v58 = v26 + (*v113 >> 47);
    if ((*v113 & 0x1000) != 0)
    {
      v58 = a13;
    }

    v59 = a12 + v58 * (*v113 >> 15);
    v60 = (v57 >> 8) & 0xF;
    v61 = 4 * v59;
    v62 = 2 * v59;
    if (v60 != 6)
    {
      v62 = 0;
    }

    if (v60 != 5)
    {
      v61 = v62;
    }

    if (v60 - 7 >= 2)
    {
      v63 = v61;
    }

    else
    {
      v63 = 8 * v59;
    }

    v64 = 16 * v59;
    if (v60 - 1 >= 4)
    {
      v64 = 0;
    }

    if (((v57 >> 8) & 0xF) > 4)
    {
      v64 = v63;
    }

    a9[-10].i64[v57 >> 3] += v64;
  }

  if (*(&v113 + 1))
  {
    v65 = **(&v113 + 1);
    v66 = v26 + (**(&v113 + 1) >> 47);
    if ((**(&v113 + 1) & 0x1000) != 0)
    {
      v66 = a13;
    }

    v67 = a12 + v66 * (**(&v113 + 1) >> 15);
    v68 = (v65 >> 8) & 0xF;
    v69 = 4 * v67;
    v70 = 2 * v67;
    if (v68 != 6)
    {
      v70 = 0;
    }

    if (v68 != 5)
    {
      v69 = v70;
    }

    if (v68 - 7 >= 2)
    {
      v71 = v69;
    }

    else
    {
      v71 = 8 * v67;
    }

    v72 = 16 * v67;
    if (v68 - 1 >= 4)
    {
      v72 = 0;
    }

    if (((v65 >> 8) & 0xF) > 4)
    {
      v72 = v71;
    }

    a9[-10].i64[v65 >> 3] += v72;
  }

  if (v114)
  {
    v73 = *v114;
    v74 = v26 + (*v114 >> 47);
    if ((*v114 & 0x1000) != 0)
    {
      v74 = a13;
    }

    v75 = a12 + v74 * (*v114 >> 15);
    v76 = (v73 >> 8) & 0xF;
    v77 = 4 * v75;
    v78 = 2 * v75;
    if (v76 != 6)
    {
      v78 = 0;
    }

    if (v76 != 5)
    {
      v77 = v78;
    }

    if (v76 - 7 >= 2)
    {
      v79 = v77;
    }

    else
    {
      v79 = 8 * v75;
    }

    v80 = 16 * v75;
    if (v76 - 1 >= 4)
    {
      v80 = 0;
    }

    if (((v73 >> 8) & 0xF) > 4)
    {
      v80 = v79;
    }

    a9[-10].i64[v73 >> 3] += v80;
  }

  if (*(&v114 + 1))
  {
    v81 = **(&v114 + 1);
    v82 = v26 + (**(&v114 + 1) >> 47);
    if ((**(&v114 + 1) & 0x1000) != 0)
    {
      v82 = a13;
    }

    v83 = a12 + v82 * (**(&v114 + 1) >> 15);
    v84 = (v81 >> 8) & 0xF;
    v85 = 4 * v83;
    v86 = 2 * v83;
    if (v84 != 6)
    {
      v86 = 0;
    }

    if (v84 != 5)
    {
      v85 = v86;
    }

    if (v84 - 7 >= 2)
    {
      v87 = v85;
    }

    else
    {
      v87 = 8 * v83;
    }

    v88 = 16 * v83;
    if (v84 - 1 >= 4)
    {
      v88 = 0;
    }

    if (((v81 >> 8) & 0xF) > 4)
    {
      v88 = v87;
    }

    a9[-10].i64[v81 >> 3] += v88;
  }

  if (v115)
  {
    v89 = v26 + (*v115 >> 47);
    if ((*v115 & 0x1000) != 0)
    {
      v89 = a13;
    }

    if ((*v115 & 0x80000000000) != 0)
    {
      v90 = 3;
    }

    else
    {
      v90 = 2;
    }

    a9[4].i64[0] += (a12 + v89 * (*v115 >> 15)) << v90;
  }

  if (*(&v115 + 1))
  {
    v91 = **(&v115 + 1);
    v92 = v26 + (**(&v115 + 1) >> 47);
    if ((**(&v115 + 1) & 0x1000) == 0)
    {
      v13 = v92;
    }

    v93 = a12 + v13 * (**(&v115 + 1) >> 15);
    v94 = 8 * v93;
    if ((v91 & 0x80000000000) == 0)
    {
      v94 = v93;
    }

    v95 = 4 * v93;
    if ((v91 & 0x40000000000) == 0)
    {
      v95 = v94;
    }

    a9[4].i64[1] += v95;
  }

  v96 = *(a7 + 12);
  v97 = **(&v110 + 1);
  if ((v96 & 2) != 0)
  {
    v98 = 0;
    a9[5].i32[0] = 0;
    a9[5].i32[1] = dword_23A29C220[a12 & 3];
    a9[9].i32[0] = 15;
  }

  else if ((v97 & 0x100000000000) != 0)
  {
    v98 = -(a12 & 1);
    a9[5].i32[0] = v98;
    a9[5].i32[1] = 228;
  }

  else
  {
    a9[9].i32[0] = (15 << (a12 & 3)) & 0xF;
    v98 = -(a12 & 3);
    a9[5].i64[0] = v98;
  }

  if ((v14 >> 9) & 1 | v15 | (v14 >> 6) | ((v14 & 0x4100) != 0))
  {
    if ((v96 & 2) != 0)
    {
      v100 = *a11;
      a9[7] = *a11;
      if ((v97 & 0x100000000000) != 0)
      {
        a9[8] = a11[36];
      }

      v101 = *a10;
      a9[6] = *a10;
      if ((v14 & 0x1000) == 0)
      {
        goto LABEL_161;
      }
    }

    else
    {
      *v16.i32 = v98;
      v99 = vdupq_lane_s32(v16, 0);
      v100 = *a11;
      a9[7] = *a11;
      if ((v97 & 0x100000000000) != 0)
      {
        a9[8] = a11[36];
      }

      v101 = vmlaq_f32(*a10, v100, v99);
      a9[6] = v101;
      if ((v14 & 0x1000) == 0)
      {
        goto LABEL_161;
      }
    }

    a9[6].f32[1] = (v97 >> 47) - v101.f32[1];
    if ((v97 & 0x100000000000) != 0)
    {
      a9[8].f32[1] = -a9[8].f32[1];
    }

LABEL_161:
    v102 = (v97 >> 40) & 3;
    if (v102)
    {
      __asm { FMOV            V1.4S, #1.0 }

      _Q1.f32[0] = 1.0 / (v102 + 1);
      _Q1.f32[1] = _Q1.f32[0];
      a9[6] = vmulq_f32(_Q1, a9[6]);
      a9[7] = vmulq_f32(_Q1, v100);
      if ((v97 & 0x100000000000) != 0)
      {
        a9[8] = vmulq_f32(_Q1, a9[8]);
      }
    }

    else if ((v14 & 0x2000) != 0)
    {
      a9[6] = vaddq_f32(a9[6], xmmword_23A29C1E0);
    }
  }

  v108 = *MEMORY[0x277D85DE8];
}

uint64_t glvmOperationDispatchFP(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int *a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v19 = 0;
  v20 = 0;
  v21 = a16;
  v22 = a10;
  v23 = a9;
  v47 = *MEMORY[0x277D85DE8];
  v24 = *a16;
  memset(v46, 0, sizeof(v46));
  v45[0] = 0;
  v45[1] = 0;
  v41 = v24;
  v44 = vandq_s8(vdupq_n_s32(v24), xmmword_23A29BFD0);
  do
  {
    if (v44.i32[v19])
    {
      v25 = (v19 == 0) | (2 * (v19 == 1)) | (4 * (v19 == 2)) | (8 * (v19 == 3));
      v26 = *(a18 + 8 * *(a19 + 32 * v19));
      if (v20)
      {
        v27 = 0;
        while (v26 != *(v46 + v27))
        {
          if (v20 == ++v27)
          {
            goto LABEL_2;
          }
        }

        *(v45 + v27) |= v25;
      }

      else
      {
        LODWORD(v27) = 0;
      }

      if (v27 == v20)
      {
LABEL_2:
        *(v46 + v20) = v26;
        *(v45 + v20++) = v25;
      }

      v22 = a10;
      v23 = a9;
    }

    ++v19;
  }

  while (v19 != 4);
  if (v20)
  {
    v28 = a11;
    v29 = v45;
    v30 = v46;
    v31 = v20;
    v42 = a2;
    v43 = result;
    do
    {
      v32 = *v29++;
      *v21 = v32;
      v33 = *v30++;
      v34 = a3;
      v35 = a4;
      v36 = a5;
      v37 = a6;
      v38 = a7;
      v39 = a8;
      glvmInterpretFPTransformFourInner(result, a2, a3, a4, a5, a6, a7, a8, v23, v22, v28);
      v28 = a11;
      result = v43;
      v23 = a9;
      v22 = a10;
      a3 = v34;
      a4 = v35;
      a5 = v36;
      a6 = v37;
      v21 = a16;
      a7 = v38;
      a2 = v42;
      a8 = v39;
      --v31;
    }

    while (v31);
  }

  *v21 = v41;
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

void glvmInterpretFPTransformFourInner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int *a16, float32x4_t *a17, uint64_t a18, unint64_t a19)
{
  v170 = a8;
  v183 = a3;
  v184 = a5;
  v162 = a4;
  v182 = a2;
  v185 = a1;
  v207 = *MEMORY[0x277D85DE8];
  v20 = a19 >> 1;
  v21 = (a6 + 8 * v20);
  v22 = *v21;
  v23 = *(a6 + 128);
  v24 = (a6 + 8 * *(a6 + 132));
  if (v23)
  {
    v25 = 8 * v23;
    v26 = &v24[v23];
    while ((*v24 & 0xF8) != 0x98)
    {
      ++v24;
      v25 -= 8;
      if (!v25)
      {
        v24 = v26;
        break;
      }
    }
  }

  v168 = a18;
  v167 = a17;
  v163 = a16;
  v166 = a15;
  v165 = a14;
  v164 = a13;
  v181 = *(a7 + 12);
  v193 = 0;
  v194 = 0;
  v191 = 0;
  v192 = 0;
  memset(v200, 0, sizeof(v200));
  v201 = 0u;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v206 = 0u;
  memset(v199, 0, sizeof(v199));
  memset(v198, 0, sizeof(v198));
  memset(v197, 0, sizeof(v197));
  memset(v196, 0, sizeof(v196));
  memset(v195, 0, sizeof(v195));
  v27 = *(a6 + 120);
  v169 = v27;
  v28 = *(a6 + 72);
  v159 = a7;
  if (v28)
  {
    v176 = *(a6 + 56);
  }

  else
  {
    v176 = 0;
  }

  v29 = (v22 >> 14) & 1;
  v180 = *(a6 + 32);
  v161 = *v24;
  v30 = *(a6 + 124);
  v158 = *(a6 + 8);
  if ((*(a6 + 8 * *(a6 + 116)) & 0x3FC0) == 0x21C0)
  {
    v171 = 0;
    v172 = 0;
    v160 = 0;
    *&v186[8] = 0;
    v187 = 0;
    v177 = 0;
    *v186 = (v22 >> 14) & 1;
    if (v20 != v30)
    {
LABEL_20:
      v174 = HIWORD(a19);
      v175 = WORD2(a19);
      v157 = a12;
      v156 = a11;
      if (v169)
      {
        v37 = v29;
      }

      else
      {
        v37 = 1;
      }

      v173 = v37;
      v154 = (4 * v169);
      v153 = v27 << 8;
      v179 = a9;
      v155 = a10;
      v151 = a19 & 0xFFFFFFFF00000000 | 1;
      v152 = a19 & 0xFFFFFFFF00000000;
      v178 = (a6 + 8 * v30);
      while (1)
      {
        v38 = v21;
        v190 = 0;
        v39 = *v21;
        v40 = v39 & 7;
        v41 = WORD1(v39) & 1;
        v42 = (v39 >> 15) & 1;
        if (v41 | v42)
        {
          v43 = v38[v40 + 1];
          v40 = v40 - (v42 + v41) + ((v39 << 14) >> 31);
        }

        else
        {
          v43 = 0;
        }

        v44 = v184;
        v190 = v38[1];
        if ((a6 + 8 * *(a6 + 108)) != v38)
        {
          v45 = &v38[-2 - ((*v38 >> 3) & 7)];
          v46 = (*v45 >> 6) - 89;
          v47 = v46 > 0x2E;
          v48 = (1 << v46) & 0x400008000001;
          if (!v47 && v48 != 0)
          {
            v50 = v45[1];
            v51 = (v50 & 0x1FC0000) < 0xC0000 && (v50 & 0x100000000) == 0;
            v52 = *v186;
            if (v51)
            {
              v52 = v173;
            }

            *v186 = v52;
          }
        }

        OperationSpec = glvmGetOperationSpec(v38, &v191);
        v189 = 0;
        if (!v40)
        {
          break;
        }

        v59 = v38[2];
        glvmGetSourceOffsetStride(a6, (v39 >> 38) & 7, 0, v59, 4, v181, &v189, &v191, &v194);
        if (v59)
        {
          glvmSetSourceIndirectLimits_3(a6, v59, &v194, v180, v175, v174, v176);
        }

        v68 = (v59 >> 6) & 7;
        if (!v68 || v68 == 5 || v189)
        {
          LOD.n128_f64[0] = glvmLoadSourceAttribFP(v60, v185, v182, v183, v44, a6, v179, *&v186[4], v177, v187, v200, v59, v194);
          if (v40 == 1)
          {
            break;
          }
        }

        else
        {
          if (v68 == 4)
          {
            LOD.n128_f64[0] = glvmLoadSourceAddress(v185, v182, v183, v44, a6, *&v186[4], v187, v200, v59, v194);
          }

          else if (v68 == 1)
          {
            LOD.n128_f64[0] = glvmLoadSourceTemp(v185, v182, v183, v44, a6, *&v186[4], v187, v200, v59, v194);
          }

          else
          {
            OperationSpec = glvmLoadSourceParam(v185, v182, v183, v60, v61, v62, v63, v64, v65, v66, v67, v44, a6, *&v186[4], v187, v200[0].i32, v59, v194);
          }

          if (v40 == 1)
          {
            break;
          }
        }

        v69 = v38[3];
        glvmGetSourceOffsetStride(a6, (v39 >> 38) & 7, 1, v69, 4, v181, &v189, &v191, &v193);
        if (v69)
        {
          glvmSetSourceIndirectLimits_3(a6, v69, &v193, v180, v175, v174, v176);
        }

        v78 = (v69 >> 6) & 7;
        if (!v78 || v78 == 5 || v189)
        {
          LOD.n128_f64[0] = glvmLoadSourceAttribFP(v70, v185, v182, v183, v44, a6, v179, *&v186[4], v177, v187, v199, v69, v193);
          if (v40 < 3)
          {
            break;
          }
        }

        else
        {
          if (v78 == 4)
          {
            LOD.n128_f64[0] = glvmLoadSourceAddress(v185, v182, v183, v44, a6, *&v186[4], v187, v199, v69, v193);
          }

          else if (v78 == 1)
          {
            LOD.n128_f64[0] = glvmLoadSourceTemp(v185, v182, v183, v44, a6, *&v186[4], v187, v199, v69, v193);
          }

          else
          {
            OperationSpec = glvmLoadSourceParam(v185, v182, v183, v70, v71, v72, v73, v74, v75, v76, v77, v44, a6, *&v186[4], v187, v199[0].i32, v69, v193);
          }

          if (v40 < 3)
          {
            break;
          }
        }

        v79 = v38[4];
        glvmGetSourceOffsetStride(a6, (v39 >> 38) & 7, 2, v79, 4, v181, &v189, &v191, &v193);
        if (v79)
        {
          glvmSetSourceIndirectLimits_3(a6, v79, &v193, v180, v175, v174, v176);
        }

        v88 = (v79 >> 6) & 7;
        if (!v88 || v88 == 5 || v189)
        {
          LOD.n128_f64[0] = glvmLoadSourceAttribFP(v80, v185, v182, v183, v44, a6, v179, *&v186[4], v177, v187, v198, v79, v193);
          if (v40 == 3)
          {
            break;
          }
        }

        else
        {
          if (v88 == 4)
          {
            LOD.n128_f64[0] = glvmLoadSourceAddress(v185, v182, v183, v44, a6, *&v186[4], v187, v198, v79, v193);
          }

          else if (v88 == 1)
          {
            LOD.n128_f64[0] = glvmLoadSourceTemp(v185, v182, v183, v44, a6, *&v186[4], v187, v198, v79, v193);
          }

          else
          {
            OperationSpec = glvmLoadSourceParam(v185, v182, v183, v80, v81, v82, v83, v84, v85, v86, v87, v44, a6, *&v186[4], v187, v198[0].i32, v79, v193);
          }

          if (v40 == 3)
          {
            break;
          }
        }

        v97 = v38[5];
        glvmGetSourceOffsetStride(a6, (v39 >> 38) & 7, 3, v97, 4, v181, &v189, &v191, &v193);
        if (v97)
        {
          glvmSetSourceIndirectLimits_3(a6, v97, &v193, v180, v175, v174, v176);
        }

        v106 = (v97 >> 6) & 7;
        if (!v106 || v106 == 5 || v189)
        {
          LOD.n128_f64[0] = glvmLoadSourceAttribFP(v98, v185, v182, v183, v44, a6, v179, *&v186[4], v177, v187, v197, v97, v193);
          if ((v39 & 0x100000000) != 0)
          {
            goto LABEL_77;
          }
        }

        else
        {
          if (v106 == 4)
          {
            LOD.n128_f64[0] = glvmLoadSourceAddress(v185, v182, v183, v44, a6, *&v186[4], v187, v197, v97, v193);
          }

          else if (v106 == 1)
          {
            LOD.n128_f64[0] = glvmLoadSourceTemp(v185, v182, v183, v44, a6, *&v186[4], v187, v197, v97, v193);
          }

          else
          {
            OperationSpec = glvmLoadSourceParam(v185, v182, v183, v98, v99, v100, v101, v102, v103, v104, v105, v44, a6, *&v186[4], v187, v197[0].i32, v97, v193);
          }

          if ((v39 & 0x100000000) != 0)
          {
            goto LABEL_77;
          }
        }

LABEL_78:
        v89 = (v39 >> 6);
        v188 = &v38[(v39 & 7) + 2];
        if (v89 <= 0xA9)
        {
          v90 = 0;
          v91 = 0;
          v92 = 0;
          switch((v39 >> 6))
          {
            case 1u:
              LOD = glvmOperationLIT(v44, v200, v195);
              break;
            case 2u:
              LOD = glvmOperationABS(v44, v200, v195, v191);
              break;
            case 3u:
              glvmOperationCEI(v44, v200[0].i64, v195, v191, LOD);
              break;
            case 4u:
              glvmOperationFRC(v44, v200, v195[0].i64, v191);
              break;
            case 5u:
              glvmOperationFLR(v44, v200[0].i64, v195, v191, LOD);
              break;
            case 6u:
              LOD = glvmOperationFWD(v44, v200, v195);
              break;
            case 7u:
              LOD = glvmOperationSSG(LOD, v44, v200, v195[0].i64, v191);
              break;
            case 8u:
              LOD = glvmOperationANY(LOD, v44, v200, v195, v191);
              break;
            case 9u:
              LOD = glvmOperationALL(LOD, v44, v200, v195, v191);
              break;
            case 0xAu:
              LOD = glvmOperationNOT(v44, v200, v195);
              break;
            case 0xBu:
              glvmOperationNSE(v44, v200[0].i32, v195[0].i32, v191);
              break;
            case 0xCu:
              glvmOperationSQT(v44, v200[0].i64, v195[0].i64, v191);
              break;
            case 0xDu:
              LOD = glvmOperationRSQ(v44, v200, v195);
              break;
            case 0xEu:
              LOD = glvmOperationRCP(v44, v200, v195);
              break;
            case 0xFu:
              glvmOperationRCC(v44, v200, v195, v191);
              break;
            case 0x10u:
              glvmOperationEX2(v44, v200, v195, v191);
              break;
            case 0x11u:
              glvmOperationEXP(v44, v200, v195);
              break;
            case 0x12u:
              LOD = glvmOperationLEN(v44, v200, v195[0].i64, v191, LOD, v55.f64[0], v56.f64[0], v57.f64[0]);
              break;
            case 0x13u:
              glvmOperationLG2(v44, v200[0].i32, v195, v191);
              break;
            case 0x14u:
              glvmOperationLOG(v44, v200, v195);
              break;
            case 0x15u:
              LOD = glvmOperationNRM(v44, v200, v195[0].i64, v191, LOD);
              break;
            case 0x16u:
              LOD = glvmOperationRAD(v44, v200, v195);
              break;
            case 0x17u:
              LOD = glvmOperationDEG(v44, v200, v195);
              break;
            case 0x18u:
              glvmOperationSCS(v44, v200, v195);
              break;
            case 0x19u:
              glvmOperationSIN(v44, v200, v195, v191);
              break;
            case 0x1Au:
              glvmOperationCOS(v44, v200, v195);
              break;
            case 0x1Bu:
              LOD = glvmOperationTAN(v44, v200, v195);
              break;
            case 0x1Cu:
              LOD = glvmOperationASN(v44, v200, v195);
              break;
            case 0x1Du:
              LOD = glvmOperationACS(v44, v200, v195);
              break;
            case 0x1Eu:
              if (v40 == 1)
              {
                LOD.n128_f64[0] = glvmOperationATN(v44, v200, v195);
              }

              else
              {
                LOD = glvmOperationATN2(v44, v200, v199, v195);
              }

              break;
            case 0x1Fu:
              glvmOperationADD(v44, v200, v199, v195, v191);
              break;
            case 0x20u:
              glvmOperationSUB(v44, v200, v199, v195, v191);
              break;
            case 0x21u:
              glvmOperationMOD(v44, v200, v199, v195, v191);
              break;
            case 0x22u:
              glvmOperationMUL(v44, v200, v199, v195, v191);
              break;
            case 0x23u:
              glvmOperationMLC(v44, v200, v199, v195, v191);
              break;
            case 0x24u:
              LOD = glvmOperationANL(v44, v200, v199, v195);
              break;
            case 0x25u:
              LOD = glvmOperationORL(v44, v200, v199, v195);
              break;
            case 0x26u:
              LOD = glvmOperationXRL(v44, v200, v199, v195);
              break;
            case 0x27u:
              glvmOperationDOT(LOD.n128_f64[0], v44, v200, v199, v195, v191);
              break;
            case 0x28u:
              glvmOperationDP3(v44, v200, v199, v195, v191);
              break;
            case 0x29u:
              glvmOperationDP4(LOD.n128_f64[0], v44, v200, v199, v195, v191);
              break;
            case 0x2Au:
              LOD = glvmOperationDPH(LOD.n128_f64[0], v44, v200[0].i32, v199[0].i32, v195);
              break;
            case 0x2Bu:
              LOD = glvmOperationDST(v44, v200, v199, v195);
              break;
            case 0x2Cu:
              glvmOperationMIN(v44, v200[0].i64, v199[0].i64, v195, v191);
              break;
            case 0x2Du:
              glvmOperationMAX(v44, v200[0].i64, v199[0].i64, v195, v191);
              break;
            case 0x2Eu:
              LOD.n128_f64[0] = glvmOperationXPD(v44, v200, v199, v195, v191);
              break;
            case 0x2Fu:
              LOD = glvmOperationRFL(LOD, v55.f64[0], v56.f64[0], v57.f64[0], v44, v200, v199, v195, v191);
              break;
            case 0x30u:
              LOD = glvmOperationSTR(v44, v200, v199, v195);
              break;
            case 0x31u:
              LOD = glvmOperationSEQ(LOD, v44, v200, v199, v195, v191);
              break;
            case 0x32u:
              glvmOperationSGE(v44, v200, v199, v195, v191);
              break;
            case 0x33u:
              glvmOperationSGT(v44, v200, v199, v195, v191);
              break;
            case 0x34u:
              glvmOperationSLE(v44, v200, v199, v195, v191);
              break;
            case 0x35u:
              glvmOperationSLT(v44, v200, v199, v195, v191);
              break;
            case 0x36u:
              LOD = glvmOperationSNE(LOD, v44, v200, v199, v195, v191);
              break;
            case 0x37u:
              LOD.n128_f64[0] = glvmOperationSFL(v44, v200, v199, v195);
              break;
            case 0x38u:
              glvmOperationPOW(v44, v200[0].i32, v199, v195, v191);
              break;
            case 0x39u:
              glvmOperationSEL(v44, v200, v199, v195, v191);
              break;
            case 0x3Au:
              LOD = glvmOperationDIV(LOD, v44, v200, v199, v195, v191);
              break;
            case 0x3Bu:
              LOD = glvmOperationFFW(LOD, v55, v56, v57, v44, v200, v199, v198, v195, v191);
              break;
            case 0x3Cu:
              glvmOperationLRP(v44, v200, v199, v198, v195, v191);
              break;
            case 0x3Du:
              glvmOperationCLM(v44, v200[0].i32, v199[0].i32, v198, v195, v191);
              break;
            case 0x3Eu:
              LOD = glvmOperationCMP(v44, v200, v199, v198, v195);
              break;
            case 0x3Fu:
              LOD = glvmOperationMAD(v44, v200, v199, v198, v195, v191);
              break;
            case 0x40u:
              LOD = glvmOperationSMS(v44, v200, v199, v198, v195, v191);
              break;
            case 0x41u:
              glvmOperationSWZ(v44, v200, v195, v43, v191);
              break;
            case 0x42u:
            case 0x43u:
            case 0x44u:
            case 0x45u:
            case 0xA4u:
              v90 = 1;
              goto LABEL_81;
            case 0x46u:
            case 0x47u:
            case 0x82u:
            case 0x83u:
            case 0xA5u:
            case 0xA6u:
              goto LABEL_82;
            case 0x48u:
              LOD = glvmOperationARL(v44, v200, v195);
              break;
            case 0x49u:
              glvmOperationARR(v44, v200, v195, v191);
              break;
            case 0x4Au:
              glvmOperationARA(v44, v200, v195, v191);
              break;
            case 0x4Bu:
            case 0x4Eu:
            case 0x52u:
            case 0x53u:
            case 0x56u:
            case 0x57u:
            case 0x5Au:
            case 0x5Bu:
            case 0x60u:
            case 0x61u:
            case 0x68u:
            case 0x6Fu:
            case 0x72u:
            case 0x75u:
            case 0x76u:
            case 0x77u:
            case 0x78u:
            case 0x79u:
            case 0x99u:
              break;
            case 0x4Cu:
              if (v40 == 1)
              {
                v191 = v151;
                glvmOperationDispatchFP(v185, v182, v183, v162, v44, a6, v159, v170, v179, v155, v156, v157, *&v186[4], v177, v171, v172, v187, v160, v200);
              }

              else
              {
                v191 = (2 * (v190 & 0x3FFFF)) | v152;
                glvmInterpretFPTransformFourInner(v185, v182, v183, v162, v44, a6, v159, v170, v179, v155, v156);
              }

              if ((v158 & 2) == 0 || *(v179 + 144))
              {
                break;
              }

              goto LABEL_19;
            case 0x4Du:
              v127 = a6 + 8 * (v190 & 0x3FFFF);
              v128 = glvmPredicateBRA(v44, v200, v172, (v190 >> 17) & 0x7F00 | (v190 >> 18) & 0x7F | (*(v127 + 8) >> 2) & 0x7F0000);
              goto LABEL_296;
            case 0x4Fu:
              if (v169)
              {
                if (v40 == 1)
                {
                  LOD = vmvnq_s8(vcgezq_f32(v205));
                  LOD.n128_u64[0] = vmovn_s32(LOD);
                  LOD.n128_u16[0] = vmaxv_u16(LOD.n128_u64[0]);
                  v119 = ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgezq_f32(v200[0])))) & 1) == 0) | (2 * ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgezq_f32(v201)))) & 1) == 0)) & 0xF3 | (4 * ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgezq_f32(v203)))) & 1) == 0)) & 0xF7 | (8 * ((LOD.n128_u8[0] & 1) == 0));
                  if ((v186[0] & 1) == 0)
                  {
                    v119 |= ~*v172;
                  }
                }

                else if (v186[0])
                {
                  v119 = 0;
                }

                else
                {
                  v119 = ~*v172;
                }

                v141 = *(v179 + 144) & v119;
                *(v179 + 144) = v141;
                if (!v141)
                {
                  goto LABEL_19;
                }
              }

              else
              {
                if (v40 != 1)
                {
                  *(v179 + 144) = 0;
                  goto LABEL_19;
                }

                v139 = v179;
                LOD.n128_u64[0] = glvmOperationKIL(v179, v200);
                if (!*(v139 + 144))
                {
                  goto LABEL_19;
                }
              }

              break;
            case 0x50u:
              LOD = glvmOperationDDX(v44, v200, v195);
              break;
            case 0x51u:
              LOD = glvmOperationDDY(v44, v200, v195);
              break;
            case 0x54u:
              v127 = a6 + 8 * (v190 & 0x3FFFF);
              v128 = glvmPredicateBRK(v44, v200, v172, (v190 >> 7) & 0x2000000 | (v190 >> 18) & 0x7F | (*(v127 + 8) >> 2) & 0x7F0000);
LABEL_296:
              v121 = v188;
              if (v128)
              {
                v121 = v127;
              }

              goto LABEL_329;
            case 0x55u:
              if (!glvmPredicateIF(v44, v200, v172, v191, (v190 >> 18) & 0x7F))
              {
                goto LABEL_241;
              }

              goto LABEL_219;
            case 0x58u:
              if (!glvmPredicateELSE(v44, v200, v172, (v190 >> 18) & 0x7F))
              {
                break;
              }

              goto LABEL_261;
            case 0x59u:
              glvmPredicateENDIF(v44, v200, v172, (v190 >> 7) & 0x2000000 | (v190 >> 18) & 0x7F | (v190 >> 17) & 0x7F00);
              break;
            case 0x5Cu:
              glvmOperationPK2H(v44, v200, v195);
              break;
            case 0x5Du:
              glvmOperationPK2US(v44, v200, v195);
              break;
            case 0x5Eu:
              glvmOperationPK4B(v44, v200, v195);
              break;
            case 0x5Fu:
              glvmOperationPK4UB(v44, v200, v195);
              break;
            case 0x62u:
            case 0x63u:
LABEL_81:
              v91 = 1;
              v92 = v90;
LABEL_82:
              v93 = (a6 + 8 * *(a6 + 92) + ((v43 >> 35) & 0x7F0));
              v94 = *v93;
              if ((v191 & 0x100) != 0 && (v39 & 0x3F00 | 0x80) == 0x1180 || v89 - 167 <= 0xFFFFFFFD && (v191 & 0x1F000000) == 0x11000000)
              {
                glvmOperationMOV(v184, v199, v196, 0x400004800000000uLL);
              }

              if ((v191 & 0x200) == 0)
              {
                goto LABEL_112;
              }

              if (v89 == 165)
              {
                v95 = 0x400004800000000;
              }

              else
              {
                v95 = 0x100001800000000;
              }

              switch(v40)
              {
                case 2u:
                  v96 = v199;
                  break;
                case 4u:
                  v96 = v197;
                  break;
                case 3u:
                  v96 = v198;
                  break;
                default:
                  goto LABEL_112;
              }

              glvmOperationMOV(v184, v96, v197, v95);
LABEL_112:
              if (v89 == 166)
              {
                v109 = BYTE3(v191) & 0x1F;
                if (v109 <= 0x11 && ((1 << v109) & 0x219E0) != 0)
                {
                  v110 = v184;
                  glvmOperationMOV(v184, v197, v196, 0x400004800000000uLL);
                  glvmOperationMOV(v110, v198, v197, 0x400004800000000uLL);
                  v108 = v110;
                  goto LABEL_120;
                }

                glvmOperationMOV(v184, v198, v196, 0x400004800000000uLL);
                if (v40 == 4)
                {
                  v138 = v184;
                  glvmOperationMOV(v184, v197, v198, 0x100001800000000uLL);
                }

                else
                {
                  v138 = v184;
                  glvmOperationZERO(v184, v198, 0x400000800000000uLL);
                }

                v135 = v197;
                v136 = v138;
                v137 = 0x400004800000000;
              }

              else
              {
                if (v89 != 165)
                {
                  goto LABEL_121;
                }

                v107 = BYTE3(v191) & 0x1F;
                if (v107 <= 0x11 && ((1 << v107) & 0x219E0) != 0 || ((v133 = v40 == 2, (v191 & 0x200) == 0) ? (v134 = 1) : (v133 = 0, v134 = v40 != 3), !v133 && v134))
                {
                  v108 = v184;
LABEL_120:
                  glvmOperationZERO(v108, v198, 0x400000800000000uLL);
                  goto LABEL_121;
                }

                v135 = v198;
                v136 = v184;
                v137 = 0x100001800000000;
              }

              glvmOperationMOV(v136, v199, v135, v137);
LABEL_121:
              v111 = *v93;
              v112 = v92 ^ 1;
              if ((*v93 & 0x400000000000000) == 0)
              {
                v112 = 1;
              }

              if ((v112 & 1) == 0 && (v89 == 164 || (v111 & 0x2000000000000000) != 0 || ((v111 >> 44) & 1) != ((v111 >> 45) & 7)))
              {
                v113 = v184;
                glvmOperationDDX(v184, v200, v199);
                glvmOperationDDY(v113, v200, v198);
                v111 = *v93;
              }

              v114 = v94 & 0xDFFFFFFFFFFFFFFFLL;
              if (v91)
              {
                v114 = v94;
              }

              v115 = v93[1];
              if ((v111 & 0x400000000000000) != 0)
              {
                v44 = v184;
                switch(v89)
                {
                  case 0xA4u:
                    LOD = glvmSamplerQueryLOD(v185, v184, v170, v200, v199, v198, v197, v196, v195, v114, v93[1], v191);
                    break;
                  case 0x83u:
                    LOD = glvmSamplerSize(v185, v184, v170, v200, v199, v198, v197, v196, v195, v114, v93[1], v191);
                    break;
                  case 0x82u:
                    LOD = glvmSamplerFetch(v185, v184, v170, v200, v199, v198, v197, v196, v195, v114, v93[1], HIDWORD(v93[1]), v191);
                    break;
                  default:
                    glvmSamplerSample(v185, v184, v170, v200, v199, v198, v197, v196, v195, v114, v93[1], v191);
                    break;
                }

                if ((v191 & 0x800000) != 0)
                {
                  v116 = v93[1];
                  if (!(v116 >> 28) || (v117 = v116 >> 28, v117 == 10) || v117 == 5)
                  {
                    LOD = glvmOperationSAT(v44, v195, v195);
                  }
                }
              }

              else
              {
                v44 = v184;
                glvmSamplerInvalid(v185, v184, v170, v200, v199, v198, v197, v196, v195[0].i8, v114, v93[1], v191, SWORD2(v191), SBYTE6(v191), SHIBYTE(v191));
              }

              break;
            case 0x64u:
              glvmOperationUP2H(v44, v200, v195[0].i32);
              break;
            case 0x65u:
              LOD = glvmOperationUP2US(LOD.n128_f32[0], v44, v200, v195);
              break;
            case 0x66u:
              LOD = glvmOperationUP4B(LOD.n128_u64[0], v44, v200[0].i8, v195);
              break;
            case 0x67u:
              LOD = glvmOperationUP4UB(LOD.n128_f32[0], v44, v200, v195);
              break;
            case 0x69u:
              glvmOperationRFR(v44, v200, v199, v198[0].i32, v195, v191, LOD);
              break;
            case 0x6Au:
              v120 = v172;
              if ((*v172 & *(v179 + 144)) == 0)
              {
                break;
              }

              v121 = a6 + 8 * (v190 & 0x3FFFF);
              v122 = (v190 >> 18) & 0x7F;
              v123 = (*(v121 + 8) >> 18) & 0x7F;
              if (v122 <= v123)
              {
                goto LABEL_329;
              }

              v124 = v122 + ~v123;
              if (v124 < 7)
              {
                v125 = 0;
                v126 = (v190 >> 18) & 0x7F;
LABEL_361:
                v149 = &v172[v126];
                do
                {
                  v150 = *v149--;
                  v125 |= v150;
                  LODWORD(v126) = v126 - 1;
                }

                while (v123 < v126);
                goto LABEL_363;
              }

              v142 = v124 + 1;
              v143 = (v124 + 1) & 0x1FFFFFFF8;
              v126 = v122 - v143;
              v144 = &v172[v122 - 3];
              v145 = 0uLL;
              v146 = v143;
              v55 = 0uLL;
              do
              {
                v147 = vrev64q_s32(*v144);
                v56 = vextq_s8(v147, v147, 8uLL);
                v148 = vrev64q_s32(v144[-1]);
                v57 = vextq_s8(v148, v148, 8uLL);
                v145 = vorrq_s8(v56, v145);
                v55 = vorrq_s8(v57, v55);
                v144 -= 2;
                v146 -= 8;
              }

              while (v146);
              LOD = vorrq_s8(v55, v145);
              *&v55.f64[0] = vextq_s8(LOD, LOD, 8uLL).u64[0];
              LOD.n128_u64[0] = vorr_s8(LOD.n128_u64[0], *&v55.f64[0]);
              v125 = LOD.n128_u32[0] | LOD.n128_u32[1];
              if (v142 != v143)
              {
                goto LABEL_361;
              }

LABEL_363:
              if (v125)
              {
                v172[v123] |= *v172;
                *v120 = 0;
              }

              else
              {
LABEL_329:
                v188 = v121;
              }

              break;
            case 0x6Bu:
              glvmPredicateWHILE();
              *v186 = 0;
              break;
            case 0x6Cu:
              if ((*v172 & *(v179 + 144)) == 0 || (v190 & 0x100000000) != 0 && !*v172)
              {
                break;
              }

              v118 = v190 & 0x3FFFF;
              goto LABEL_262;
            case 0x6Eu:
              v132 = (v190 >> 12) & 7;
              if (v132 != 3 && v132 != 5)
              {
                glvmLoadDestTemp(*&v186[4], v187, v195, dword_23A29C270[2 * ((v190 >> 27) & 3)] & ((v190 >> 12) & 0xFF000000 | BYTE4(v190) & 0xF | (v190 >> 6) & 0x1C0 | (v190 >> 2) & 0x1E0000 | dword_23A29C230[2 * ((v190 >> 25) & 3)]) | dword_23A29C290[2 * ((v190 >> 27) & 3)] | dword_23A29C250[2 * ((v190 >> 29) & 3)], v192);
              }

              glvmOperationDSL(v44, v200, v199, v195, v191);
              break;
            case 0x70u:
              glvmOperationEXPE(v44, v200, v195, v191);
              break;
            case 0x71u:
              LOD = glvmOperationLOGE(v44, v200[0].i32, v195, v191);
              break;
            case 0x73u:
              glvmOperationTARGCONT(v172, (v190 >> 18) & 0x7F);
              break;
            case 0x74u:
              glvmOperationTARGBRK(v172, (v190 >> 18) & 0x7F);
              break;
            case 0x7Au:
              LOD = glvmOperationBDL(v162, v44, v200, v199, v195, v191);
              break;
            case 0x7Bu:
              glvmOperationROUND(v44, v200[0].i32, v195, v191);
              break;
            case 0x7Cu:
              glvmOperationTRUNCATE(v44, v200[0].i32, v195, v191);
              break;
            case 0x7Du:
              LOD = glvmOperationAND(v44, v200, v199, v195);
              break;
            case 0x7Eu:
              LOD = glvmOperationOR(v44, v200, v199, v195);
              break;
            case 0x7Fu:
              LOD = glvmOperationXOR(v44, v200, v199, v195);
              break;
            case 0x80u:
              glvmOperationSHL(v44, v200, v199, v195);
              break;
            case 0x81u:
              glvmOperationSHR(v44, v200[0].i32, v199, v195, v191);
              break;
            case 0x84u:
              LOD = glvmOperationCOMP(v44, v200, v195);
              break;
            case 0x85u:
              LOD = glvmOperationDISTANCE(v44, v200, v199, v195[0].i64, v191, LOD);
              break;
            case 0x86u:
              LOD.n128_f64[0] = glvmOperationINVERSESQRT(v44, v200[0].i64, v195, v191);
              break;
            case 0x87u:
              if (v169)
              {
                MEMORY[0x28223BE20](OperationSpec);
                v130 = (&v151 - v129);
                bzero(&v151 - v129, v131);
                v191 = v153;
                v172 = v130;
                glvmOperationInitMasksForNested(v44, v163, v130, v153);
              }

              glvmOperationFUNCSTART(v172, 0);
              v160 = v168;
              *&v186[4] = v164;
              v187 = v167;
              v171 = v166;
              v177 = v165;
              break;
            case 0x88u:
              if ((v190 & 0xFE000000) != 0)
              {
                glvmOperationTARGBRA(v172, (v190 >> 17) & 0x7F00 | (v190 >> 18) & 0x7F);
              }

              else
              {
                glvmOperationRET(v172, 0);
              }

              v121 = v178;
              goto LABEL_329;
            case 0x89u:
              glvmOperationROUNDEVEN(v44, v200[0].i64, v195[0].i64, v191);
              break;
            case 0x8Au:
              glvmOperationISNAN(v44, v200, v195, v191);
              break;
            case 0x8Bu:
              glvmOperationISINF(v44, v200, v195, v191);
              break;
            case 0x8Cu:
              if (!glvmPredicateSWITCH(v44, v200, v172, v191, (v190 >> 18) & 0x7F))
              {
LABEL_241:
                *v186 = 0;
                break;
              }

LABEL_219:
              *v186 = 0;
LABEL_261:
              v118 = v190 & 0x3FFFF;
LABEL_262:
              v121 = a6 + 8 * v118;
              goto LABEL_329;
            case 0x8Du:
              if (!glvmPredicateCASE(v44, v200, v199, v172, v191, (v190 >> 18) & 0x7F))
              {
                break;
              }

              goto LABEL_261;
            case 0x8Eu:
              if (!glvmPredicateDEFAULT(v44, v200, v172, (v190 >> 18) & 0x7F))
              {
                break;
              }

              goto LABEL_261;
            case 0x8Fu:
              if (!glvmPredicateENDSWITCH(v44, v200, v172, (v190 >> 7) & 0x2000000 | (v190 >> 18) & 0x7F | ((*v38 >> 46 != 0) << 26)))
              {
                break;
              }

              goto LABEL_261;
            case 0x90u:
              glvmOperationSINH(v44, v200[0].i32, v195[0].i32);
              break;
            case 0x91u:
              glvmOperationCOSH(v44, v200[0].i32, v195[0].i32);
              break;
            case 0x92u:
              glvmOperationTANH(v44, v200[0].i32, v195[0].i32);
              break;
            case 0x93u:
              glvmOperationASINH(v44, v200[0].i32, v195[0].i32);
              break;
            case 0x94u:
              glvmOperationACOSH(v44, v200[0].i32, v195[0].i32);
              break;
            case 0x95u:
              glvmOperationATANH(v44, v200[0].i32, v195[0].i32);
              break;
            case 0x96u:
              LOD = glvmOperationTO_BITS(v44, v200, v195);
              break;
            case 0x97u:
              LOD = glvmOperationFROM_BITS(v44, v200, v195);
              break;
            case 0x98u:
              glvmOperationLOAD(v162, v44, v200, v199[0].i32, v198, v195, v191);
              break;
            case 0x9Au:
              glvmOperationEXTRACT_EXPONENT(v44, v200, v195, v191);
              break;
            case 0x9Bu:
              glvmOperationEXTRACT_SIGNIFICAND(v44, v200[0].i32, v195, v191);
              break;
            case 0x9Cu:
              glvmOperationLDEXP(v44, v200[0].i32, v199, v195, v191);
              break;
            case 0x9Du:
              glvmOperationPK2W(v44, v200, v195);
              break;
            case 0x9Eu:
              glvmOperationUP2W(v44, v200, v195);
              break;
            case 0x9Fu:
              glvmOperationMUL_HB(v44, v200, v199, v195, v191);
              break;
            case 0xA0u:
              glvmOperationBITFIELD_REVERSE(v44, v200, v195);
              break;
            case 0xA1u:
              glvmOperationBITCOUNT(v44, v200, v195);
              break;
            case 0xA2u:
              glvmOperationFIND_LSB(v44, v200, v195);
              break;
            case 0xA3u:
              glvmOperationFIND_MSB(v44, v200, v195[0].i32, v191);
              break;
            case 0xA7u:
              LOD = glvmOperationINTERPOLATE_AT_CENTROID(v200, v195);
              break;
            case 0xA8u:
              glvmOperationINTERPOLATE_AT_SAMPLE(v179, v155, v156, v157, SHIDWORD(v157), v200, v199, v195, v194, v161, *(a6 + 16));
              break;
            case 0xA9u:
              glvmOperationINTERPOLATE_AT_OFFSET(v179, v155, v156, v157, SHIDWORD(v157), v200, v199, v195, v194, v161, *(a6 + 16));
              break;
            default:
              glvmOperationMOV(v44, v200, v195, v191);
              break;
          }
        }

        if ((v39 & 0x100000000) != 0)
        {
          if ((v191 & 0x1F00000000800000) == 0x400000000000000 && ((*(v38 + 5) & 8) != 0 || (v190 & 0x7000) == 0x3000 && (*(a6 + 8 * (*(a6 + 68) + HIWORD(v190))) & 0x1F00) == 0x400 && *(v185 + 12906)))
          {
            LOD = glvmOperationSAT(v44, v195, v195);
          }

          v140 = (v190 >> 12) & 7;
          if (*v186)
          {
            v21 = v188;
            if (v140 == 1)
            {
              glvmStoreDestTemp(*&v186[4], v187, v195, v190, v192, LOD, v55.f64[0], v56.f64[0], v57, v58);
            }

            else if (v140 == 5 || v140 == 3)
            {
              glvmStoreDestOutputFP(LOD, v55.f64[0], v56.f64[0], v57, v58, v179, *&v186[4], v171, v187, v195, v190, v192);
            }

            else
            {
              glvmStoreDestAddress(*&v186[4], v187, v195[0].i8, v190, v192);
            }
          }

          else
          {
            v21 = v188;
            if (v140 == 1)
            {
              glvmStoreDestTempWithMask(*&v186[4], v187, v195, v172, v190, v192, LOD, v55.f64[0], v56.f64[0], v57, v58);
              *v186 = 0;
            }

            else if (v140 == 5 || v140 == 3)
            {
              glvmStoreDestOutputWithMaskFP(LOD, v55.f64[0], v56.f64[0], v57, v58, v179, *&v186[4], v171, v187, v195, v172, v190, v192);
              *v186 = 0;
            }

            else
            {
              glvmStoreDestAddressWithMask(*&v186[4], v187, v195[0].i8, v172, v190, v192);
              *v186 = 0;
            }
          }
        }

        else
        {
          v21 = v188;
        }

        if (v21 == v178)
        {
          goto LABEL_19;
        }
      }

      if ((v39 & 0x100000000) == 0)
      {
        goto LABEL_78;
      }

LABEL_77:
      OperationSpec = glvmGetDestOffsetCount(a6, (v39 >> 38) & 7, &v190, &v191, 4, v180, &v192);
      goto LABEL_78;
    }
  }

  else
  {
    if (v169)
    {
      v31 = (v22 >> 14) & 1;
    }

    else
    {
      v31 = 1;
    }

    *v186 = v31;
    if (v169)
    {
      MEMORY[0x28223BE20](a1);
      v33 = (&v151 - v32);
      bzero(&v151 - v32, v34);
      v191 = v27 << 8;
      glvmOperationInitMasksForNested(v184, v163, v33, v191);
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    v172 = v35;
    glvmOperationFUNCSTART(v35, 0);
    v160 = v168;
    *&v186[4] = v164;
    v187 = v167;
    v171 = v166;
    v177 = v165;
    if (v20 != v30)
    {
      goto LABEL_20;
    }
  }

LABEL_19:
  v36 = *MEMORY[0x277D85DE8];
}

_DWORD *glvmSetSourceIndirectLimits_3(_DWORD *result, unint64_t a2, unint64_t *a3, __int16 a4, __int16 a5, __int16 a6, unsigned __int16 a7)
{
  v7 = (a2 >> 6) & 7;
  if (v7 != 2)
  {
    if (v7 != 1)
    {
      return result;
    }

    v8 = *a3;
    v9 = (a4 & 0xFFF) << 16;
    goto LABEL_4;
  }

  v8 = *a3;
  if ((*a3 & 0x3C000000000000) == 0x1C000000000000)
  {
    v10 = v8 & 0xFFDF0000FFFFFFFFLL | (a7 << 32);
    goto LABEL_16;
  }

  v11 = (*&result[2 * result[15] + 2 * HIWORD(a2)] >> 8) & 0x1F;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v9 = (a6 & 0xFFF) << 16;
      goto LABEL_4;
    }

    if (v11 == 6)
    {
      v8 = v8 & 0xFFFFFFFFF003FFFFLL | ((result[34] & 0x3FF) << 18);
      *a3 = v8;
      v12 = result[35] >> 1;
LABEL_15:
      v10 = v8 & 0xFFFF0000FFFFFFFFLL | (v12 << 32);
      goto LABEL_16;
    }

LABEL_14:
    v12 = a7;
    goto LABEL_15;
  }

  if (!v11)
  {
    return result;
  }

  if (v11 != 1)
  {
    goto LABEL_14;
  }

  v9 = (a5 & 0xFFF) << 16;
LABEL_4:
  v10 = v8 & 0xFFFFFFFFF000FFFFLL | v9;
LABEL_16:
  *a3 = v10;
  return result;
}

void glvmInterpretFPTransformFour(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, float32x4_t *a10, float32x4_t *a11, uint64_t a12)
{
  v242 = a4;
  v243 = a8;
  v12 = a7;
  v250 = a5;
  v240 = a2;
  v241 = a3;
  v245 = a1;
  v274 = *MEMORY[0x277D85DE8];
  v272 = 0u;
  v273 = 0u;
  v270 = 0u;
  v271 = 0u;
  v268 = 0u;
  v269 = 0u;
  v267 = 0u;
  v265 = 0u;
  v266 = 0u;
  v263 = 0u;
  v264 = 0u;
  v261 = 0u;
  v262 = 0u;
  v259 = 0u;
  v260 = 0u;
  v14 = *(a6 + 16);
  v254 = *(a6 + 8);
  v251 = *(a7 + 12);
  v15 = *(a6 + 128);
  v16 = a6 + 8 * *(a6 + 132);
  v17 = (v15 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v17)
  {
    v18 = v17 + 1;
    v19 = (v17 + 1) & 0x3FFFFFFFFFFFFFFELL;
    v20 = (v16 + 8 * v19);
    v21 = (v16 + 8);
    v22 = v19;
    do
    {
      a1 = *v21 & 0xF8;
      *(&v259 + (*(v21 - 1) & 0xF8)) = v21 - 1;
      *(&v259 + a1) = v21;
      v21 += 2;
      v22 -= 2;
    }

    while (v22);
    if (v18 == v19)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = (a6 + 8 * *(a6 + 132));
  }

  v23 = (v16 + 8 * v15);
  do
  {
    *(&v259 + (*v20 & 0xF8)) = v20;
    ++v20;
  }

  while (v20 != v23);
LABEL_9:
  v255 = *(&v268 + 1);
  v24 = **(&v268 + 1);
  if (v268)
  {
    v253 = (HIWORD(*v268) | (WORD2(*v268) >> 8)) | HIBYTE(*v268);
    v252 = v268;
  }

  else
  {
    v252 = 0;
    v253 = 255;
  }

  v249 = v268;
  v25 = *(a6 + 32) << 6;
  MEMORY[0x28223BE20](a1);
  v239 = &v233 - v26;
  bzero(&v233 - v26, v27);
  MEMORY[0x28223BE20](v28);
  v29 = (&v233 - 336);
  bzero(&v233 - 336, 0xA80uLL);
  MEMORY[0x28223BE20](v30);
  v31 = (&v233 - 80);
  bzero(&v233 - 80, 0x280uLL);
  v33 = *(a6 + 72);
  v247 = v24;
  if (v33)
  {
    v34 = *(a6 + 56);
  }

  else
  {
    v34 = 0;
  }

  v35 = *(a6 + 108);
  v36 = *(a6 + 124);
  v248 = v12;
  v256 = (&v233 - 80);
  v246 = v14;
  if (v35 == v36)
  {
    inited = MEMORY[0x28223BE20](v32);
    v238 = &v229;
    v40 = 0uLL;
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v41 = &v258;
    v42 = v247;
  }

  else
  {
    v43 = 0;
    v44 = (a6 + 8 * v35);
    v45 = (a6 + 8 * v36);
    v46 = v44;
    do
    {
      if ((*v46 & 0x3FC0) != 0x12C0)
      {
        break;
      }

      ++v43;
      v46 += (*v46 & 7) + 2;
    }

    while (v46 != v45);
    v47 = MEMORY[0x28223BE20](v32);
    v238 = &v229;
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    MEMORY[0x28223BE20](v47);
    v41 = &v233 - v48;
    bzero(&v233 - v48, v49);
    if (v35 == v36)
    {
      v31 = v256;
      v42 = v247;
    }

    else
    {
      v50 = 0;
      v42 = v247;
      do
      {
        if ((*v44 & 0x3FC0) != 0x12C0)
        {
          break;
        }

        inited = glvmOperationInitSub(v41, v50 | ((v44[1] & 0x3FFFFLL) << 32));
        v44 += (*v44 & 7) + 2;
        ++v50;
      }

      while (v44 != v45);
      v12 = v248;
      v31 = v256;
    }

    v14 = v246;
  }

  v257 = a9;
  if (v34)
  {
    v51 = 0;
    v52 = 0;
    v53 = *(a6 + 60);
    v54 = v34;
    do
    {
      v55 = *(a6 + 8 * v53);
      v56 = (v55 >> 8) & 0x1F;
      v57 = HIDWORD(v55) & 0x3FFF;
      if (v57 >= v51)
      {
        v58 = v57 + 1;
      }

      else
      {
        v58 = v51;
      }

      if (v57 >= v52)
      {
        v59 = v57 + 1;
      }

      else
      {
        v59 = v52;
      }

      if (v56 != 1)
      {
        v59 = v52;
      }

      if (v56 == 2)
      {
        v51 = v58;
      }

      else
      {
        v52 = v59;
      }

      ++v53;
      --v54;
    }

    while (v54);
    LODWORD(v237) = v51 << 16;
    HIDWORD(v237) = v52;
  }

  else
  {
    v237 = 0;
  }

  v60 = (v254 >> 6) | (v254 >> 9) & 1 | v14;
  if (((v254 & 0x4000) != 0) | (BYTE1(v254) & 1) | v60)
  {
    v61 = (v254 >> 14) & 1;
    v62 = (v254 & 0x2000) != 0 ? ((*(v255 + 5) & 3) != 0) << 43 : 0;
    v40 = glvmPreloadPositionAttrib(v257, &v233 - 168, v62 | v42 & 0x100000000000 | (((v251 >> 2) & 1) << 42));
    if (v60 | v61)
    {
      v63 = *v29;
      v64 = *(&v233 - 167);
      v39 = *(&v233 - 166);
      v65 = *(&v233 - 165);
      *&v66 = vzip2q_s32(*v29, v64).u64[0];
      DWORD2(v66) = *(&v233 - 331);
      HIDWORD(v66) = *(&v233 - 329);
      *(v31 + 32) = v66;
      v38 = vuzp2q_s32(v63, v64);
      v40.i64[0] = vuzp2q_s32(v38, v63).u64[0];
      v40.i64[1] = __PAIR64__(HIDWORD(v65), v39.u32[3]);
      v229 = v40;
    }
  }

  v255 = *(&v268 + 1);
  if ((*(*(&v268 + 1) + 5) & 3) != 0 && (v67 = *(a6 + 64), v67))
  {
    v68 = (a6 + 8 * *(a6 + 68));
    v69 = 8 * v67;
    while (1)
    {
      v70 = *v68 & 0x1F00;
      v71 = v70 != 3840;
      if (v70 == 3840)
      {
        break;
      }

      ++v68;
      v69 -= 8;
      if (!v69)
      {
        v72 = 0;
        if (*(&v259 + 1))
        {
          goto LABEL_59;
        }

        goto LABEL_66;
      }
    }

    v72 = 1;
    if (!*(&v259 + 1))
    {
      goto LABEL_66;
    }
  }

  else
  {
    v72 = 0;
    v71 = 1;
    if (!*(&v259 + 1))
    {
      goto LABEL_66;
    }
  }

LABEL_59:
  v73 = *(&v261 + 1);
  if (*(&v261 + 1))
  {
    v73 = (**(&v261 + 1) >> 27) & 0x1CLL | (**(&v261 + 1) >> 19) & 0x200 | 1;
  }

  if (v249)
  {
    v73 = v73 & 0xFFFFFFFFFFFFFFDFLL | (*v252 >> 19) & 0x20 | 2;
  }

  if (v273)
  {
    v73 = *v273 & 0xFFFF8000 | v73 & 0xFFFFFFFF00007A7FLL | (*v273 >> 2) & 0x400 | (*v273 >> 35) & 0x180;
  }

  inited = glvmRasterOpDepthBoundsTest(v12, v257, (v42 >> 33) & 0x800 | (((v251 >> 1) & 1) << 6) | v73 & 0xFFFFF7BF, v40, *v38.i64, v39);
  if (inited)
  {
    goto LABEL_262;
  }

LABEL_66:
  v244 = a12;
  v234 = v260;
  if (v260)
  {
    v74 = *v260;
    if ((*v260 & 0x1000) != 0)
    {
      v72 = 1;
    }

    if ((v74 & 0xC000) != 0)
    {
      inited = glvmRasterOpMultisampleCoverageMask(v245, v250, v257, v244, HIDWORD(v244), v74, v42 & 0x100000000000 | (((v251 >> 1) & 1) << 6) | *v255 & 0x30000000000);
      if (inited)
      {
        goto LABEL_262;
      }
    }
  }

  v236 = *(&v260 + 1);
  if (!v72 && !v236 && (v254 & 2) == 0)
  {
    if (*(&v261 + 1))
    {
      if ((v254 & 8) != 0)
      {
        goto LABEL_90;
      }

      v75 = (**(&v261 + 1) >> 27) & 0x1CLL | (**(&v261 + 1) >> 19) & 0x200 | 1;
      v76 = v268;
      if (v268)
      {
LABEL_77:
        v75 = v75 & 0xFFFFFFFFFFFFFFDFLL | (*v76 >> 19) & 0x20 | 2;
      }
    }

    else
    {
      if (!v261)
      {
        goto LABEL_90;
      }

      v75 = 0;
      v76 = v268;
      if (v268)
      {
        goto LABEL_77;
      }
    }

    if (v273)
    {
      v75 = *v273 & 0xFFFF8000 | v75 & 0xFFFFFFFF00007A7FLL | (*v273 >> 2) & 0x400 | (*v273 >> 35) & 0x180;
    }

    v77 = (v251 >> 1) & 1;
    v78 = v75 & 0xFFFFFFFFFFFFF7BFLL | (v77 << 6);
    v79 = v261;
    if (v261)
    {
      v80 = *v261;
      v79 = 1;
      v81 = v78 & 0xFFFFFFFFFFFFF7FFLL | (((v42 & 0x100000000000) != 0) << 11);
      if (!v76)
      {
LABEL_83:
        if (*(&v273 + 1))
        {
          v79 = **(&v273 + 1) & 0xFFFF8000 | v79 & 0xFFFFFFFF00007FD3 | (**(&v273 + 1) >> 7) & 0x20 | (**(&v273 + 1) >> 40) & 0xCLL;
        }

        inited = glvmRasterOpDepthStencilTest(v245, v12, v257, v31, v80, v81, v79 & 0xFFFFFFFFAFLL | (16 * v77) | (((v42 >> 44) & 1) << 6), *v40.i64, v38, v39);
        if (inited)
        {
          goto LABEL_262;
        }

        v261 = 0uLL;
        goto LABEL_90;
      }
    }

    else
    {
      LODWORD(v80) = 0;
      v81 = v78 & 0xFFFFFFFFFFFFF7FFLL | (((v42 & 0x100000000000) != 0) << 11);
      if (!v76)
      {
        goto LABEL_83;
      }
    }

    v79 |= (*v76 >> 1) & 0x7F80 | (BYTE2(*v76) << 32) | 2;
    goto LABEL_83;
  }

LABEL_90:
  v82 = a10;
  if (*(a6 + 120))
  {
    MEMORY[0x28223BE20](inited);
    v83 = &v232;
    LODWORD(v232) = 15;
    v235 = v82;
    if (!v60)
    {
      goto LABEL_92;
    }
  }

  else
  {
    v83 = 0;
    v235 = a10;
    if (!v60)
    {
LABEL_92:
      if ((v254 & 0x400) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_106;
    }
  }

  v85 = v83;
  if (v251)
  {
    v86 = v246;
    if ((v246 & 0x400000004) != 0)
    {
      v86 = v246 & 0xFFFFFFFBFFFFFFFBLL | 4;
    }

    if ((v86 & 0x800000008) != 0)
    {
      v246 = v86 & 0xFFFFFFF7FFFFFFF7 | 8;
    }

    else
    {
      v246 = v86;
    }
  }

  glvmPreloadSourceAttribs(v257, v82, a11, (&v233 - 336), v254 & 0x2C0, v246, v42, v40);
  v82 = v235;
  v83 = v85;
  if ((v254 & 0x400) == 0)
  {
LABEL_93:
    if ((v254 & 0x800) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_107;
  }

LABEL_106:
  v87 = *v12;
  *(&v233 - 24) = *v12;
  *(&v233 - 23) = v87;
  *(&v233 - 22) = v87;
  *(&v233 - 21) = v87;
  if ((v254 & 0x800) == 0)
  {
LABEL_94:
    v84 = *(a6 + 48);
    if (!v84)
    {
      goto LABEL_126;
    }

LABEL_108:
    v89 = (a6 + 8 * *(a6 + 52));
    v90 = ((v42 >> 40) & 3) + 1;
    v91 = 1.0 / v90;
    v92 = 8 * v84;
    v93 = SHIDWORD(v244) % v90 * v90;
    v94 = v244 % v90;
    v95 = (v244 + 1) % v90;
    v96 = (v244 + 2) % v90;
    v97 = (v244 + 3) % v90;
    *(&v104 + 1) = 0;
    *&v104 = v91 * ((v244 % v90) + 0.5);
    v98 = v104;
    *(&v98 + 1) = v91 * ((SHIDWORD(v244) % v90) + 0.5);
    v99 = (HIDWORD(v244) + 1) % v90;
    *(&v105 + 1) = 0;
    *&v105 = v91 * (v95 + 0.5);
    v100 = v99 * v90;
    v101 = v105;
    DWORD1(v101) = DWORD1(v98);
    *(&v103 + 1) = 0;
    *(&v102 + 1) = 0;
    *&v102 = v91 * (v96 + 0.5);
    DWORD1(v102) = DWORD1(v98);
    *&v103 = v91 * (v97 + 0.5);
    DWORD1(v103) = DWORD1(v98);
    *(&v104 + 1) = v91 * (v99 + 0.5);
    *(&v105 + 1) = *(&v104 + 1);
    do
    {
      if ((*v89 & 0x7C00) == 0x7000)
      {
        v108 = HIDWORD(*v89) & 0x3FLL;
        switch(v108)
        {
          case '\'':
            *(&v233 - 32) = 1 << (v93 + v94);
            *(&v233 - 28) = 1 << (v95 + v93);
            if ((v42 & 0x100000000000) != 0)
            {
              v112 = v100 + v94;
              v113 = v100 + v95;
            }

            else
            {
              v112 = v96 + v93;
              v113 = v97 + v93;
            }

            LODWORD(v227) = 1 << v112;
            LODWORD(v228) = 1 << v113;
            break;
          case '&':
            *(&v233 - 12) = v98;
            *(&v233 - 11) = v101;
            if ((v42 & 0x100000000000) != 0)
            {
              v106 = v104;
              v107 = v105;
            }

            else
            {
              v106 = v102;
              v107 = v103;
            }

            *(&v233 - 10) = v106;
            *(&v233 - 9) = v107;
            break;
          case '%':
            *(&v233 - 64) = v94 + v93;
            *(&v233 - 60) = v95 + v93;
            if ((v42 & 0x100000000000) != 0)
            {
              v109 = v95;
              v110 = v94;
              v111 = v100;
            }

            else
            {
              v109 = v97;
              v110 = v96;
              v111 = v93;
            }

            *(&v233 - 56) = v111 + v110;
            *(&v233 - 52) = v111 + v109;
            break;
        }
      }

      ++v89;
      v92 -= 8;
    }

    while (v92);
    goto LABEL_126;
  }

LABEL_107:
  v88 = v12[1];
  *(&v233 - 20) = v88;
  *(&v233 - 19) = v88;
  *(&v233 - 18) = v88;
  *(&v233 - 17) = v88;
  v84 = *(a6 + 48);
  if (v84)
  {
    goto LABEL_108;
  }

LABEL_126:
  if ((v254 & 8) != 0)
  {
    v114 = vdupq_laneq_s32(*(&v233 - 167), 2);
    *(v31 + 32) = vdupq_laneq_s32(*v29, 2);
    *(v31 + 33) = v114;
    v115 = vdupq_laneq_s32(*(&v233 - 165), 2);
    *(v31 + 34) = vdupq_laneq_s32(*(&v233 - 166), 2);
    *(v31 + 35) = v115;
  }

  glvmInterpretFPTransformFourInner(v245, v240, v241, v242, v250, a6, v12, v243, v257, v82, a11, v244, v239, (&v233 - 336), v31, v83, v238, v41, (2 * *(a6 + 116)) | ((v237 | HIDWORD(v237)) << 32));
  if ((v254 & 2) != 0 && !v257[9].i32[0])
  {
    goto LABEL_262;
  }

  v119 = v255;
  v120 = *v255;
  v121 = v253;
  v122 = v235;
  if (v259)
  {
    v123 = 0;
    v124 = v31 + 127;
    v116.i32[0] = 2.0;
    _Q1.i32[0] = 3.0;
    do
    {
      if (((1 << (v123 + 7)) & v121 & v119[1]) != 0)
      {
        v126 = *(&v272 + v123 + 1);
        if (v126)
        {
          if ((*v126 & 0xF00) != 0x400)
          {
            v127 = a11[35].f32[2];
            v128 = v122[35].f32[2] + (v257[5].i32[0] * v127);
            *(v124 - 12) = *(v124 - 12) * v128;
            *(v124 - 8) = (v127 + v128) * *(v124 - 8);
            if ((v42 & 0x100000000000) != 0)
            {
              v129 = v128 + a11[71].f32[2];
              *(v124 - 4) = v129 * *(v124 - 4);
              v125 = v127 + v129;
            }

            else
            {
              *(v124 - 4) = (v128 + (v127 * 2.0)) * *(v124 - 4);
              v125 = v128 + (v127 * 3.0);
            }

            *v118.i32 = v125 * *v124;
            *v124 = *v118.i32;
          }
        }
      }

      --v123;
      v124 -= 16;
    }

    while (v123 != -8);
  }

  LODWORD(v242) = v120;
  LODWORD(v243) = (v120 >> 8) & 0xF;
  v130 = v234;
  if (v234)
  {
    v131 = (32 * v251) & 0x40;
    v132 = *v119 & 0x30000000000 | v247 & 0x100000000000;
    v133 = *v234;
    if ((*v234 & 0x1000) != 0 && v243 != 4)
    {
      v134 = (32 * v251) & 0x40;
      if (glvmRasterOpMultisampleAlphaCoverage(v245, v250, v257, v244, SBYTE4(v244), v256, v133, v132 | v131))
      {
        goto LABEL_262;
      }

      v133 = *v130;
      v119 = v255;
      v121 = v253;
      LODWORD(v131) = v134;
    }

    if ((v133 & 0x2000) != 0)
    {
      i32 = v256[31].i32;
      v144 = 7;
      v145 = 216;
      v146 = v131;
      do
      {
        if (((1 << v144) & v121 & v119[1]) != 0)
        {
          v147 = **(&v259 + v145);
          if (v145 != 160)
          {
            v148 = v256;
            *(i32 - 3) = *v256;
            *(i32 - 2) = v148[1];
            *(i32 - 1) = v148[2];
            *i32 = v148[3];
          }

          v146 = (v145 + 96) & 0x38 | v146 & 0xFFFFF0C7 | v147 & 0xF00;
          glvmRasterOpMultisampleAlphaOne(v256->i32, v132 | v146);
          v119 = v255;
          v121 = v253;
        }

        v145 -= 8;
        --v144;
        i32 -= 16;
      }

      while (v145 != 152);
    }
  }

  v136 = v247;
  v135 = v248;
  v137 = v256;
  if (!v71 && glvmRasterOpMultisampleSampleMask(v257, v244, HIDWORD(v244), v256, *v255 & 0x30000000000 | v247 & 0x100000000000))
  {
    goto LABEL_262;
  }

  if (v243 != 4 && v236 && glvmRasterOpAlphaTest(v135, v257, v137, *v236))
  {
    goto LABEL_262;
  }

  v138 = *(a6 + 96);
  if (v138)
  {
    v139 = *(a6 + 100);
    if (v138 >= 8)
    {
      v140 = v138 & 0xFFFFFFF8;
      v149 = (a6 + 8 * v139 + 32);
      v150 = 0uLL;
      v151.i64[0] = 0x100000001;
      v151.i64[1] = 0x100000001;
      v152 = v140;
      v118 = 0uLL;
      do
      {
        v154 = v149[-2];
        v153 = v149[-1];
        v156 = *v149;
        v155 = v149[1];
        v149 += 4;
        v150 = vorrq_s8(vshlq_u32(v151, vshrq_n_u32(vuzp1q_s32(v154, v153), 0x18uLL)), v150);
        v118 = vorrq_s8(vshlq_u32(v151, vshrq_n_u32(vuzp1q_s32(v156, v155), 0x18uLL)), v118);
        v152 -= 8;
      }

      while (v152);
      v116 = vorrq_s8(v118, v150);
      _Q1 = vextq_s8(v116, v116, 8uLL);
      *v116.f32 = vorr_s8(*v116.f32, *_Q1.f32);
      v141 = v116.i32[0] | v116.i32[1];
      v142 = v255;
      if (v140 == v138)
      {
        goto LABEL_166;
      }
    }

    else
    {
      v140 = 0;
      v141 = 0;
      v142 = v255;
    }

    v157 = a6 + 8 * v140 + 8 * v139;
    v158 = v138 - v140;
    do
    {
      v141 |= 1 << *(v157 + 3);
      v157 += 8;
      --v158;
    }

    while (v158);
LABEL_166:
    LODWORD(v246) = (v141 >> 12) & 1;
    goto LABEL_167;
  }

  LODWORD(v246) = 0;
  v142 = v255;
LABEL_167:
  if ((v243 - 9) <= 1)
  {
    v159 = *v142;
    v160 = *v29;
    if ((v254 & 8) != 0)
    {
      v167 = *v29;
      v167.f32[2] = v137[128];
      v161 = *(&v233 - 167);
      v162 = *(&v233 - 166);
      v166 = v161;
      v166.f32[2] = v137[132];
      *(v137 + 32) = v167;
      *(v137 + 33) = v166;
      v165 = v162;
      v165.f32[2] = v137[136];
      v163 = *(&v233 - 165);
      v164 = v163;
      v164.f32[2] = v137[140];
      *(v137 + 34) = v165;
      *(v137 + 35) = v164;
      if ((v254 & 0x2000) != 0)
      {
LABEL_170:
        v168 = vaddq_f32(v167, xmmword_23A29C210);
        v169 = vaddq_f32(v166, xmmword_23A29C210);
        *(v137 + 32) = v168;
        *(v137 + 33) = v169;
        v170 = vaddq_f32(v165, xmmword_23A29C210);
        v171 = vaddq_f32(v164, xmmword_23A29C210);
        *(v137 + 34) = v170;
        *(v137 + 35) = v171;
        v172 = v168.f32[1];
        v173 = v169.f32[1];
        v174 = v170.f32[1];
        v175 = v171.f32[1];
        if ((v254 & 0x1000) == 0)
        {
LABEL_188:
          if (v262)
          {
            glvmRasterOpFragmentCount(v250, v135, v257);
            v142 = v255;
          }

          v186 = *v142;
          v187 = v242 & 0xF00;
          v188 = HIDWORD(*v142);
          if ((v188 & 0x80) != 0)
          {
            v190 = v187 | 0x38;
            if (v246)
            {
              v187 |= 0x30u;
              if ((v188 & 0x40) != 0)
              {
                v189 = 2;
              }

              else
              {
                v187 = v190;
                v189 = 1;
              }

              goto LABEL_232;
            }

            v191 = *(v137 + 1);
            *(v137 + 28) = *v137;
            *(v137 + 29) = v191;
            v192 = *(v137 + 3);
            *(v137 + 30) = *(v137 + 2);
            *(v137 + 31) = v192;
            LODWORD(v188) = *(v142 + 1);
            if ((v188 & 0x40) == 0)
            {
              v189 = 1;
              v187 |= 0x38u;
              goto LABEL_232;
            }

            v187 |= 0x30u;
            v189 = 2;
          }

          else
          {
            if ((v188 & 0x40) == 0)
            {
              v189 = 0;
              goto LABEL_232;
            }

            v187 |= 0x30u;
            v189 = 1;
            if (v246)
            {
LABEL_232:
              if ((v188 & 0x20) != 0)
              {
                v211 = v187 & 0xFFFFFFC7;
                v187 = v187 & 0xFFFFFFC7 | 0x28;
                if (v246)
                {
                  v212 = v211 | 0x20;
                  if ((v188 & 0x10) != 0)
                  {
                    v187 = v212;
                    v189 += 2;
                  }

                  else
                  {
                    ++v189;
                  }

LABEL_244:
                  if ((v188 & 8) != 0)
                  {
                    v217 = v187 & 0xFFFFFFC7;
                    v187 = v187 & 0xFFFFFFC7 | 0x18;
                    if (v246)
                    {
                      v218 = v217 | 0x10;
                      if ((v188 & 4) != 0)
                      {
                        v187 = v218;
                        v189 += 2;
                      }

                      else
                      {
                        ++v189;
                      }

                      goto LABEL_256;
                    }

                    v219 = *(v137 + 1);
                    *(v137 + 12) = *v137;
                    *(v137 + 13) = v219;
                    v220 = *(v137 + 3);
                    *(v137 + 14) = *(v137 + 2);
                    *(v137 + 15) = v220;
                    LODWORD(v188) = *(v142 + 1);
                    if ((v188 & 4) == 0)
                    {
                      ++v189;
                      goto LABEL_256;
                    }

                    v189 += 2;
                    v187 = v217 | 0x10;
                  }

                  else
                  {
                    if ((v188 & 4) == 0)
                    {
                      goto LABEL_256;
                    }

                    ++v189;
                    v187 = v187 & 0xFFFFFFC7 | 0x10;
                    if (v246)
                    {
                      goto LABEL_256;
                    }
                  }

                  v221 = *(v137 + 1);
                  *(v137 + 8) = *v137;
                  *(v137 + 9) = v221;
                  v222 = *(v137 + 3);
                  *(v137 + 10) = *(v137 + 2);
                  *(v137 + 11) = v222;
                  LODWORD(v188) = *(v142 + 1);
LABEL_256:
                  if ((v188 & 2) != 0)
                  {
                    ++v189;
                    v187 = v187 & 0xFFFFFFC7 | 8;
                    if ((v246 & 1) == 0)
                    {
                      v223 = *(v137 + 1);
                      *(v137 + 4) = *v137;
                      *(v137 + 5) = v223;
                      v224 = *(v137 + 3);
                      *(v137 + 6) = *(v137 + 2);
                      *(v137 + 7) = v224;
                      LODWORD(v188) = *(v142 + 1);
                    }
                  }

                  v225 = v188 & 1;
                  if (v225)
                  {
                    v187 &= 0xFFFFFFC0;
                  }

                  glvmRasterOpWriteFallback(v250, v135, v257, v137, v186 & 0xFFFF80FF00000000 | v136 & 0x100000000000 | v187 & 0xFFFFFFF8 | (v189 + v225 - 1) & 7);
                  goto LABEL_262;
                }

                v213 = *(v137 + 1);
                *(v137 + 20) = *v137;
                *(v137 + 21) = v213;
                v214 = *(v137 + 3);
                *(v137 + 22) = *(v137 + 2);
                *(v137 + 23) = v214;
                LODWORD(v188) = *(v142 + 1);
                if ((v188 & 0x10) == 0)
                {
                  ++v189;
                  goto LABEL_244;
                }

                v189 += 2;
                v187 = v211 | 0x20;
              }

              else
              {
                if ((v188 & 0x10) == 0)
                {
                  goto LABEL_244;
                }

                ++v189;
                v187 = v187 & 0xFFFFFFC7 | 0x20;
                if (v246)
                {
                  goto LABEL_244;
                }
              }

              v215 = *(v137 + 1);
              *(v137 + 16) = *v137;
              *(v137 + 17) = v215;
              v216 = *(v137 + 3);
              *(v137 + 18) = *(v137 + 2);
              *(v137 + 19) = v216;
              LODWORD(v188) = *(v142 + 1);
              goto LABEL_244;
            }
          }

          v209 = *(v137 + 1);
          *(v137 + 24) = *v137;
          *(v137 + 25) = v209;
          v210 = *(v137 + 3);
          *(v137 + 26) = *(v137 + 2);
          *(v137 + 27) = v210;
          LODWORD(v188) = *(v142 + 1);
          goto LABEL_232;
        }

LABEL_187:
        v185 = (v159 >> 47);
        v137[129] = v185 - v172;
        v137[133] = v185 - v173;
        v137[137] = v185 - v174;
        v137[141] = v185 - v175;
        goto LABEL_188;
      }
    }

    else
    {
      v161 = *(&v233 - 167);
      v162 = *(&v233 - 166);
      *(v137 + 32) = v160;
      *(v137 + 33) = v161;
      v163 = *(&v233 - 165);
      *(v137 + 34) = v162;
      *(v137 + 35) = v163;
      v164 = v163;
      v165 = v162;
      v166 = v161;
      v167 = v160;
      if ((v254 & 0x2000) != 0)
      {
        goto LABEL_170;
      }
    }

    v172 = *&v160.i32[1];
    v173 = v161.f32[1];
    v174 = v162.f32[1];
    v175 = v163.f32[1];
    if ((v254 & 0x1000) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_187;
  }

  v176 = *(&v261 + 1);
  v177 = v261;
  if (v261 == 0)
  {
    goto LABEL_207;
  }

  if (*(&v261 + 1))
  {
    v176 = (**(&v261 + 1) >> 27) & 0x1CLL | (**(&v261 + 1) >> 19) & 0x200 | 1;
  }

  v178 = v268;
  if (v268)
  {
    v176 = v176 & 0xFFFFFFFFFFFFFFDFLL | (*v268 >> 19) & 0x20 | 2;
  }

  if (v273)
  {
    v176 = *v273 & 0xFFFF8000 | v176 & 0xFFFFFFFF00007A7FLL | (*v273 >> 2) & 0x400 | (*v273 >> 35) & 0x180;
  }

  if ((v254 & 8) != 0)
  {
    v118 = *(v137 + 132);
    _Q1 = *(v137 + 140);
    v116.i64[0] = vzip1q_s32(*(v137 + 128), v118).u64[0];
    v116.i32[2] = *(v137 + 34);
    v116.i32[3] = _Q1.i32[0];
    if ((v176 & 0x200) == 0)
    {
      __asm { FMOV            V1.4S, #1.0 }

      v116 = vminnmq_f32(vmaxnmq_f32(v116, 0), _Q1);
    }

    *(v137 + 32) = v116;
  }

  if (v177)
  {
    v183 = *v177;
    v184 = 1;
  }

  else
  {
    v184 = 0;
    LODWORD(v183) = 0;
  }

  if (v178)
  {
    v184 |= (*v178 >> 1) & 0x7F80 | (BYTE2(*v178) << 32) | 2;
  }

  v193 = v176 & 0xFFFFFFFFFFFFF7BFLL;
  if (*(&v273 + 1))
  {
    v184 = **(&v273 + 1) & 0xFFFF8000 | v184 & 0xFFFFFFFF00007FD3 | (**(&v273 + 1) >> 7) & 0x20 | (**(&v273 + 1) >> 40) & 0xCLL;
  }

  if ((glvmRasterOpDepthStencilTest(v245, v135, v257, v137, v183, v193 | (((v251 >> 1) & 1) << 6) & 0xFFFFFFFFFFFFF7FFLL | (((v136 >> 44) & 1) << 11), v184 & 0xFFFFFFFFAFLL | (16 * ((v251 >> 1) & 1)) | (((v136 >> 44) & 1) << 6), *v116.i64, _Q1, v118) & 1) == 0)
  {
LABEL_207:
    if (v262)
    {
      glvmRasterOpFragmentCount(v250, v135, v257);
    }

    v194 = 0;
    v254 = v136 & 0x100000000000;
    LODWORD(v251) = (32 * v251) & 0x40;
    v195 = *(&v267 + 1);
    v196 = (v137 + 124);
    v247 = &v266 + 8;
    v197 = 7;
    do
    {
      v198 = *v255;
      if (((1 << v197) & v253 & HIDWORD(*v255)) != 0)
      {
        v199 = (v247 + v194);
        v200 = *(v247 + v194 + 96);
        v201 = *v200;
        if (!((v194 == -56) | v246 & 1))
        {
          v196[-3] = *v137;
          v196[-2] = *(v137 + 4);
          v196[-1] = *(v137 + 8);
          v116 = *(v137 + 12);
          *v196 = v116;
        }

        v202 = *v199;
        v203 = v201 & 0xFFFF800000000000 | v254;
        v204 = ((v194 + 56) & 0x38 | v251 | v198 & 0x2000 | v201 & 0xFFFFDF00) ^ 0x2000;
        if (v252 || v202 || v195)
        {
          glvmRasterOpRead(v257, v256, v203 | v204);
        }

        v205 = *v200 & 0xF00;
        v206 = v248;
        if (v205 != 1024)
        {
          if (v202)
          {
            glvmRasterOpBlend(v248, v250, v256, *v202, v203 | v204, v116, _Q1);
          }

          v207 = (v201 >> 8) & 0xF;
          if (v207 <= 8 && ((1 << v207) & 0x1EC) != 0)
          {
            glvmRasterOpPack(v250, v256, v203 | v204);
          }
        }

        v137 = v256;
        if (v195)
        {
          glvmRasterOpLogicOp(v256, *v195, v203 | v204);
        }

        v208 = v203 | v204;
        if (v249)
        {
          glvmRasterOpMask(v137, *v252, v208, *v116.i64, *_Q1.i64, v118);
        }

        glvmRasterOpWrite(v206, v257, v137, v208);
      }

      v194 -= 8;
      --v197;
      v196 -= 4;
    }

    while (v194 != -64);
  }

LABEL_262:
  v226 = *MEMORY[0x277D85DE8];
}

uint64_t glsmCreateTexture(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x50uLL, 0x850A2C2EuLL);
  if (!v6)
  {
    abort();
  }

  *(v6 + 2) = a2;
  *(v6 + 3) = a3;
  v6[56] = *(a2 + 211);
  *(v6 + 30) = *(a2 + 192);
  *(v6 + 8) = 0;
  *(v6 + 57) = 256;
  v6[59] = 0;
  *(v6 + 4) = 0;
  *a1 = v6;
  return 0;
}

void *glsmAllocateTextureLevels(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 1440 * *(a1 + 56), 0x11AD907CuLL);
  if (!result)
  {
    abort();
  }

  *(a1 + 32) = result;
  return result;
}

void glsmFreeTextureLevelBuffers(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*(a1 + 56))
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a1 + 32);
    do
    {
      v6 = *(v5 + v3 + 72);
      if (v6)
      {
        if (*(v5 + v3 + 64))
        {
          free(v6);
          v5 = *(a1 + 32);
          *(v5 + v3 + 64) = 0;
          v1 = *(a1 + 56);
        }
      }

      *(v5 + v3 + 72) = 0;
      ++v4;
      v3 += 96;
    }

    while (v4 < 15 * v1);
  }
}

void glsmDestroyTexture(void **a1)
{
  if (a1[4])
  {
    glsmFreeTextureLevelBuffers(a1);
    free(a1[4]);
  }

  free(a1);
}

void glsmCleanTextureGeometry(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(v3 + 20);
  if ((*v4 & 0xF) == 7)
  {
    if (*(v3 + 20))
    {
      glvmSetTextureFormat(a1, *(v4 + 192));
      v3 = *(a1 + 24);
      v5 = *(v3 + 20) & 0xFE;
      *(v3 + 20) = v5;
    }

    if ((v5 & 8) != 0)
    {
      v6 = *v3;
      *(v3 + 4) |= 1u;
      if (v6)
      {
        v7 = *(*v6 + 16) / *(a1 + 57);
      }

      else
      {
        LODWORD(v7) = 1;
      }

      glsmResetTextureLevel(a1, 0, 0, v7, 1u, 1u, 0);
      v33 = -9;
LABEL_61:
      *(*(a1 + 24) + 20) &= v33;
    }
  }

  else
  {
    if (*(v3 + 20))
    {
      glvmSetTextureFormat(a1, *(v4 + 192));
      v23 = *(v4 + 212);
      if (v23 < 0xA)
      {
        v24 = 3;
      }

      else
      {
        v24 = 4;
      }

      if (v23 >= 5)
      {
        v25 = v24;
      }

      else
      {
        v25 = 2;
      }

      if (*(v4 + 212))
      {
        v26 = v25;
      }

      else
      {
        v26 = 1;
      }

      *(a1 + 58) = v26;
      v27 = *(a1 + 56);
      if (*(a1 + 56))
      {
        v28 = 0;
        do
        {
          if (*(v4 + 194))
          {
            if (*(v4 + 194) >> *(v4 + 208) <= 1u)
            {
              v29 = 1;
            }

            else
            {
              v29 = *(v4 + 194) >> *(v4 + 208);
            }
          }

          else
          {
            v29 = 0;
          }

          v30 = *(v4 + 196);
          if (*(v4 + 196) && (*(v4 + 214) & 0x600) != 0)
          {
            if (v30 >> *(v4 + 208) <= 1)
            {
              v30 = 1;
            }

            else
            {
              v30 >>= *(v4 + 208);
            }
          }

          v31 = *(v4 + 198);
          if (*(v4 + 198))
          {
            v32 = *(v4 + 208);
            if ((*(v4 + 214) & 0x1800) != 0)
            {
              if (v31 >> v32 <= 1)
              {
                v31 = 1;
              }

              else
              {
                v31 >>= v32;
              }
            }
          }

          else
          {
            v32 = *(v4 + 208);
          }

          if (v32 <= *(v4 + 210))
          {
            do
            {
              glsmResetTextureLevel(a1, v28, v32, v29, v30, v31, a2);
              if (v30 >= 2)
              {
                v30 >>= (*(v4 + 214) & 0x600) != 0;
              }

              if (v31 >= 2)
              {
                v31 >>= (*(v4 + 214) & 0x1800) != 0;
              }

              v29 >>= v29 > 1;
              v21 = v32++ >= *(v4 + 210);
            }

            while (!v21);
            v27 = *(a1 + 56);
          }

          ++v28;
        }

        while (v28 < v27);
      }

      v33 = -2;
      goto LABEL_61;
    }

    if ((*(v3 + 20) & 4) != 0)
    {
      v8 = *(a1 + 56);
      if (*(a1 + 56))
      {
        v9 = 0;
        v10 = 0;
        v11 = *(v4 + 210);
        v12 = 288;
        do
        {
          v13 = *(v4 + 208);
          if (v13 <= v11)
          {
            v14 = 96 * v13;
            v15 = 16 * v13;
            v16 = v12;
            v17 = v9;
            do
            {
              if ((*(*(a1 + 24) + 2 * v10 + 8) >> v13))
              {
                v18 = *(a1 + 16);
                if ((*v18 & 0x400) != 0)
                {
                  glvmCalculateSurfaceTextureBase(a1, v10, v13);
                  v11 = *(v4 + 210);
                }

                else
                {
                  v19 = (&v18[v15] + v16);
                  v20 = *(a1 + 32) + v14 + v17;
                  *(v20 + 80) = *v19;
                  *(v20 + 92) = *(v19 - 6);
                  *(v20 + 88) = *(v19 - 2);
                }
              }

              v21 = v13++ >= v11;
              v17 += 96;
              v16 += 32;
            }

            while (!v21);
            v8 = *(a1 + 56);
          }

          ++v10;
          v9 += 1440;
          v12 += 480;
        }

        while (v10 < v8);
      }
    }
  }
}

void glsmResetTextureLevel(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7)
{
  v11 = *(a1 + 32) + 96 * (15 * a2 + a3);
  v12 = *(a1 + 16);
  v13 = v12;
  v14 = v12[107];
  *(v11 + 16) = a4;
  *(v11 + 20) = a5;
  *(v11 + 24) = a6;
  v15 = *(a1 + 58);
  v16 = ((v14 >> 14) & 2) + v15 * a4;
  v17 = *&vshl_u32(vand_s8(vdup_n_s32(v14), 0xFFFF0000FFFFLL), 0xFFFFFFF5FFFFFFF7) & 0xFFFFFF83FFFFFF83;
  v18 = vceqz_s32(v17);
  *v11 = v16;
  *(v11 + 4) = vmla_s32(vand_s8(v17, vcltz_s32(vshl_n_s32(vdup_n_s32(v14 < 0), 0x1FuLL))), vsub_s32(vbic_s8(vdup_n_s32(v15), v18), v18), __PAIR64__(a6, a5));
  if (a7)
  {
    *v11 = (v16 + 3) & 0xFFFFFFFC;
  }

  if ((*v12 & 0xF) == 0xA)
  {
    a6 /= 6u;
    *(v11 + 24) = a6;
  }

  *(v11 + 32) = a4;
  *(v11 + 36) = a5;
  *(v11 + 40) = a6;
  v19 = *(v11 + 72);
  if (v19 && *(v11 + 64))
  {
    free(v19);
    *(v11 + 64) = 0;
    v13 = *(a1 + 16);
  }

  *(v11 + 72) = 0;
  v20 = *(a1 + 24);
  *(v20 + a2 + 4) |= 1 << a3;
  v21 = *v13;
  if ((v21 & 0x400) != 0)
  {

    glvmCalculateSurfaceTextureBase(a1, a2, a3);
  }

  else
  {
    if ((v21 & 0xF) != 7)
    {
      *(v11 + 92) = v12[240 * a2 + 138 + 16 * a3];
      *(v11 + 88) = *&v12[240 * a2 + 140 + 16 * a3];
      v23 = *&v12[240 * a2 + 144 + 16 * a3];
      goto LABEL_16;
    }

    *(v11 + 92) = a4;
    HIDWORD(v22) = *(a1 + 64);
    LODWORD(v22) = HIDWORD(v22);
    *(v11 + 88) = v22 >> 16;
    if (*v20)
    {
      v23 = ***v20;
LABEL_16:
      *(v11 + 80) = v23;
      return;
    }

    *(v11 + 80) = 0;
  }
}

uint64_t glsmLoadTextureLevelBuffer(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v59 = a1;
  *(a2 + 59) = 1;
  if (*(a2 + 56))
  {
    v4 = a3;
    v6 = 0;
    v50 = 1;
    v7 = 1 << a3;
    v53 = a3;
    v52 = ~(1 << a3);
    v57 = 0u;
    memset(v58, 0, 24);
    v55 = 0u;
    v56 = 0u;
    while (1)
    {
      v8 = *(a2 + 24);
      v9 = *(v8 + 2 * v6 + 8);
      if ((v7 & v9) == 0)
      {
        goto LABEL_60;
      }

      v10 = *(a2 + 32) + 1440 * v6 + 96 * v53;
      v11 = *(a2 + 16);
      v12 = &v11[240 * v6 + 16 * v53];
      v13 = *v11;
      if ((*v11 & 0x400) != 0)
      {
        v14 = *(v10 + 80);
      }

      else
      {
        v14 = *(v12 + 288);
        *(v10 + 80) = v14;
      }

      v15 = *v10;
      v16 = *(v10 + 4);
      v17 = *(v10 + 8);
      v18 = *(a2 + 58);
      if (v14 && *(v10 + 88) == *(a2 + 66) && *(v10 + 90) == *(a2 + 64) && *(v10 + 92) == v15 && v18 == 1)
      {
        if (a4)
        {
          if ((v13 & 0xC00) == 0 && v11[56] != 34237)
          {
LABEL_67:
            v47 = *(v10 + 72);
            if (v47 && *(v10 + 64))
            {
              free(v47);
              v14 = *(v10 + 80);
              v8 = *(a2 + 24);
              LOWORD(v9) = *(v8 + 2 * v6 + 8);
            }

            *(v10 + 64) = 0;
            *(v10 + 72) = v14;
            *(v8 + 2 * v6 + 8) = v9 & v52;
            goto LABEL_60;
          }
        }

        else if ((v13 & 0xC00) == 0)
        {
          goto LABEL_67;
        }
      }

      HIDWORD(v56) = v15 * *(a2 + 57);
      v20 = v17 * v16 * SHIDWORD(v56);
      v22 = *(v10 + 64);
      v21 = *(v10 + 72);
      if (v22 == v20 || v22 == 0 || v21 == 0)
      {
        if (v21)
        {
          goto LABEL_25;
        }
      }

      else
      {
        free(v21);
        *(v10 + 64) = 0;
        *(v10 + 72) = 0;
      }

      v25 = malloc_type_malloc(v20, 0x850A2C2EuLL);
      if (!v25)
      {
        abort();
      }

      *(v10 + 64) = v20;
      *(v10 + 72) = v25;
LABEL_25:
      if ((v7 & *(*(a2 + 16) + 2 * v6 + 228)) == 0)
      {
        goto LABEL_60;
      }

      if (v18 == 1)
      {
        v26 = 2147479551;
      }

      else
      {
        v26 = 0x7FFFFFFF;
      }

      HIDWORD(v57) = 0;
      LODWORD(v58[0]) = v26;
      v27 = *(a2 + 60);
      if ((v27 + 29328) < 0x24u || v27 == 36975 || (v27 + 32207) <= 0xBu)
      {
        HIDWORD(v57) = 0x100000;
      }

      *(v58 + 12) = 0;
      v28 = *(v10 + 88);
      v29 = *(v10 + 90);
      glgConvertType();
      if (v4)
      {
        v30 = DWORD1(v56);
      }

      else
      {
        v30 = DWORD1(v56);
        if ((*(*(a2 + 16) + 144) & 0xFFFC) != 0x2700)
        {
          goto LABEL_43;
        }
      }

      if (v30 == 19)
      {
        if (DWORD2(v56) == 21)
        {
          v31 = 23;
LABEL_41:
          DWORD2(v56) = v31;
        }

        else if (DWORD2(v56) == 22)
        {
          v31 = 24;
          goto LABEL_41;
        }

        v30 = 19;
      }

LABEL_43:
      v32 = *(a2 + 16);
      if ((*v32 & 0x800) == 0)
      {
        *&v55 = *(v10 + 80);
        if ((v30 - 19) > 1)
        {
          v54[0] = 0.0;
          v54[183] = 0.0;
          v41 = *(v10 + 88);
          v42 = *(v10 + 90);
          glgConvertType();
          v43 = *(v10 + 92);
          v39 = 0;
          LODWORD(v56) = glgGetPixelSize() * v43;
          CompressedImageBytes = *(v12 + 270) * v56;
        }

        else
        {
          CompressedBlockBytes = glgGetCompressedBlockBytes();
          v34 = *(v10 + 92);
          v35 = glgConvertPixelWidthToBlocks();
          LODWORD(v56) = v35 * CompressedBlockBytes / glgGetCompressedBlockHeight();
          v36 = *(v10 + 92);
          v37 = *(v12 + 270);
          CompressedImageBytes = glgGetCompressedImageBytes();
          v39 = 0;
        }

        goto LABEL_50;
      }

      v39 = *(v32 + 256);
      v40 = *(v32 + 248);
      if (!IOSurfaceLockPlane())
      {
        *&v55 = IOSurfaceGetBaseAddressOfPlane(v39, v40);
        LODWORD(v56) = IOSurfaceGetBytesPerRowOfPlane(v39, v40);
        CompressedImageBytes = v56 * *(v12 + 270);
LABEL_50:
        DWORD1(v58[0]) = *(v12 + 268);
        DWORD2(v58[0]) = *(v12 + 270);
        DWORD2(v57) = 2;
        v44 = *(a2 + 66);
        v45 = *(a2 + 64);
        glgConvertType();
        *(&v55 + 1) = *(v10 + 72);
        if ((*(*(a2 + 16) + 1) & 4) != 0)
        {
          *&v55 = v55 + ((DWORD2(v58[0]) - 1) * v56);
          LODWORD(v56) = -v56;
        }

        bzero(v54, 0x2D8uLL);
        if (v18 != 1)
        {
          LODWORD(v54[180]) = 49152;
          v54[0] = v18;
          v54[1] = v18;
        }

        if (*(v12 + 272))
        {
          v46 = 0;
          do
          {
            glgProcessPixelsWithProcessor();
            *&v55 = v55 + CompressedImageBytes;
            *(&v55 + 1) += HIDWORD(v56) * v16;
            ++v46;
          }

          while (v46 < *(v12 + 272));
        }

        *(*(a2 + 24) + 2 * v6 + 8) &= v52;
        if (v39)
        {
          IOSurfaceUnlockPlane();
        }

        v4 = a3;
        goto LABEL_60;
      }

      v50 = 0;
LABEL_60:
      if (++v6 >= *(a2 + 56))
      {
        return v50;
      }
    }
  }

  return 1;
}

uint64_t glsmLoadTextureStructure(uint64_t a1, uint64_t a2, unsigned __int16 **a3, unint64_t *a4, int a5)
{
  glsmCleanTextureGeometry(a2, a5);
  if (a3)
  {
    result = glvmUpdateTextureStructure(a2, a3, a4);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = *(a2 + 16);
    result = *(v11 + 209);
    if (!*(v11 + 209))
    {
      return result;
    }
  }

  v12 = *(a2 + 16);
  if ((*v12 & 0xF) == 7)
  {
    v13 = *(a2 + 32);
    if (*(v13 + 64))
    {
      free(*(v13 + 72));
      *(v13 + 64) = 0;
      *(v13 + 72) = 0;
    }

    v14 = *(v13 + 80);
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = 64;
      v14 = malloc_type_malloc(0x40uLL, 0x850A2C2EuLL);
      if (!v14)
      {
        abort();
      }
    }

    *(v13 + 64) = v15;
    *(v13 + 72) = v14;
    *(a2 + 59) = 1;
    v34 = *(a2 + 24);
    *(v34 + 8) &= ~1u;
LABEL_48:
    *(v34 + 20) = 0;
    return 1;
  }

  if ((*v12 & 0x400) != 0 && !*(v12 + 16))
  {
    return 0;
  }

  if ((*v12 & 0x800) != 0)
  {
    v17 = *(v12 + 256);
    v18 = *(v12 + 248);
    v16 = IOSurfaceGetSeedOfPlane() != *(a2 + 68);
    if (!a3)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v16 = 0;
    if (!a3)
    {
      goto LABEL_25;
    }
  }

  v19 = *a3;
  v20 = **a3;
  if (v20 != *(a2 + 62))
  {
    v21 = *(a2 + 32);
    if (*v21 <= 7u && *(v21 + 4) <= 7u && (*(v21 + 88) & 0xFFFC) == 0x8C00)
    {
      v22 = *(a2 + 56);
      if (*(a2 + 56))
      {
        v23 = (*(a2 + 24) + 8);
        do
        {
          *v23++ |= 1u;
          --v22;
        }

        while (v22);
        LOWORD(v20) = *v19;
      }
    }
  }

  *(a2 + 62) = v20;
LABEL_25:
  v24 = *(a2 + 16);
  v25 = *(v24 + 214);
  v26 = v25 & 0xF;
  if (v26 > v25 >> 4)
  {
LABEL_43:
    if ((*v24 & 0x400) != 0)
    {
      *(a2 + 68) = *(*(v24 + 16) + 24);
    }

    v34 = *(a2 + 24);
    goto LABEL_48;
  }

  v27 = !v16;
  while (1)
  {
    if ((*v24 & 0x400) != 0)
    {
      if (*(*(v24 + 16) + 24) != *(a2 + 68))
      {
        v31 = *(a2 + 56);
        if (*(a2 + 56))
        {
          v32 = (*(a2 + 24) + 8);
          do
          {
            *v32++ |= 1 << v26;
            --v31;
          }

          while (v31);
        }
      }
    }

    else
    {
      if ((*v24 & 0x800) != 0)
      {
        v28 = v27;
      }

      else
      {
        v28 = 1;
      }

      if ((v28 & 1) == 0)
      {
        v29 = *(a2 + 56);
        if (*(a2 + 56))
        {
          v30 = (*(a2 + 24) + 8);
          do
          {
            *v30++ |= 1 << v26;
            --v29;
          }

          while (v29);
        }
      }
    }

    result = glsmLoadTextureLevelBuffer(a1, a2, v26, a5);
    if (!result)
    {
      return result;
    }

    v24 = *(a2 + 16);
    if (v26++ >= *(v24 + 214) >> 4)
    {
      goto LABEL_43;
    }
  }
}

uint64_t glsmCreateSampler(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x10uLL, 0x850A2C2EuLL);
  if (!v6)
  {
    abort();
  }

  *v6 = a2;
  v6[1] = a3;
  *a1 = v6;
  return 0;
}

uint64_t glsmUpdateTexImageDataInPPStream(uint64_t result, uint64_t a2, _DWORD *a3, int *a4)
{
  v4 = HIBYTE(a3[2]) & 1;
  v5 = (2 * a3[22]);
  if (v5)
  {
    v6 = &a3[2 * a3[23]];
    v7 = a2 + 512;
    v8 = 8 * v5;
    do
    {
      v9 = *v6;
      v10 = *v6 & 0x7F;
      if (*(v7 + 8 * v10))
      {
        v11 = (a2 + 16 * v10);
        v12 = *v11;
        v13 = *v11 & 0xFFFFFFFFFFE00000 | v9 & 0x1FFFFF;
        *v6 = *v11;
        v14 = v11[1];
        *v6 = v13;
        v6[1] = v14;
        v15 = v13 & 0xF7FFFFFFFFFFFFFFLL | (((*(**(a2 + 768 + 8 * v10) + 28) + *(result + 13988 + 4 * v10)) != 0.0) << 59);
        *v6 = v15;
        if (*(result + 15440))
        {
          v16 = **(*(v7 + 8 * v10) + 16) & 0xF;
          if (v16)
          {
            v17 = (v16 == 10) << 62;
          }

          else
          {
            v17 = 0x4000000000000000;
          }
        }

        else
        {
          v17 = 0;
        }

        *v6 = v17 | v15 & 0xBFFFFFFFFFFFFFFFLL;
        v18 = (v12 & 0x2000000000000000) != 0 || ((v12 >> 44) & 1) != ((v12 >> 45) & 7);
        v4 |= v18;
      }

      else
      {
        *v6 = v9 & 0xFBFFFFFFFFFFFFFFLL;
      }

      v6 += 2;
      v8 -= 16;
    }

    while (v8);
  }

  if (a4)
  {
    *a4 = v4;
  }

  return result;
}

void *glsmCreateBuffer(void *a1, uint64_t a2, uint64_t a3)
{
  result = malloc_type_malloc(0x10uLL, 0x850A2C2EuLL);
  if (!result)
  {
    abort();
  }

  *result = a2;
  result[1] = a3;
  *a1 = result;
  return result;
}

uint64_t glpMakeStringHash(void *a1)
{
  v2 = (a1[1])(*a1, 56, "Hash (String)");
  v3 = *(a1 + 1);
  *v2 = *a1;
  *(v2 + 16) = v3;
  v4 = HT_PRIMES;
  *(v2 + 32) = HT_PRIMES;
  v5 = (a1[1])(*a1, 32 * v4, "Hash Storage (String)");
  *(v2 + 40) = v5;
  bzero(v5, 32 * HT_PRIMES);
  *(v2 + 48) = 1;
  return v2;
}

uint64_t glpDestroyStringHash(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 48))
    {
      (*(result + 24))(*result, *(result + 40));
      v2 = v1[3];
      v3 = *v1;

      return v2(v3, v1);
    }
  }

  return result;
}

uint64_t glpStringHashPut(uint64_t a1, const char *a2, size_t __n, uint64_t a4, double a5)
{
  LODWORD(a5) = *(a1 + 36);
  v9 = *(a1 + 32);
  if (*&a5 / v9 > 0.65)
  {
    v10 = 0;
    do
    {
      v11 = HT_PRIMES[v10++];
    }

    while (v11 <= v9);
    _glpStringHashRehash(a1, v11);
  }

  return _glpStringHashRealPut(a1, a2, __n, a4);
}

uint64_t _glpStringHashRehash(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 36) = 0;
  v5 = 32 * a2;
  v6 = (*(a1 + 8))(*a1, v5, "Hash Storage (String, growth)");
  *(a1 + 40) = v6;
  bzero(v6, v5);
  if (v3)
  {
    v7 = (v4 + 16);
    do
    {
      v8 = *(v7 - 2);
      if (v8)
      {
        _glpStringHashRealPut(a1, *(v7 - 1), *v7, v8);
      }

      v7 += 4;
      --v3;
    }

    while (v3);
  }

  v9 = *(a1 + 24);
  v10 = *a1;

  return v9(v10, v4);
}

uint64_t _glpStringHashRealPut(uint64_t result, const char *a2, size_t __n, uint64_t a4)
{
  v7 = result;
  v8 = (HIDWORD(__n) % *(result + 32));
  for (i = *(result + 40); ; i = *(v7 + 40))
  {
    v10 = i + 32 * v8;
    if (!*v10)
    {
      break;
    }

    result = glpStringsEqual(a2, __n, *(v10 + 8), *(v10 + 16));
    if (result)
    {
      --*(v7 + 36);
      i = *(v7 + 40);
      break;
    }

    v8 = (v8 + 1) % *(v7 + 32);
  }

  v11 = i + 32 * v8;
  *(v11 + 8) = a2;
  *(v11 + 16) = __n;
  *(*(v7 + 40) + 32 * v8) = a4;
  ++*(v7 + 36);
  return result;
}

uint64_t glpStringHashGet(uint64_t a1, const char *a2, size_t __n)
{
  v3 = (HIDWORD(__n) % *(a1 + 32));
  v4 = *(a1 + 40) + 32 * v3;
  if (!*v4)
  {
    return 0;
  }

  while (!glpStringsEqual(a2, __n, *(v4 + 8), *(v4 + 16)))
  {
    v3 = (v3 + 1) % *(a1 + 32);
    v4 = *(a1 + 40) + 32 * v3;
    if (!*v4)
    {
      return 0;
    }
  }

  return *(*(a1 + 40) + 32 * v3);
}

uint64_t glpStringHashCache(uint64_t a1, const char *a2, size_t a3, uint64_t a4)
{
  result = glpStringHashGet(a1, a2, a3);
  if (!result)
  {
    glpStringHashPut(a1, a2, a3, a4, v9);
    return a4;
  }

  return result;
}

uint64_t glpStringHashRemove(uint64_t result, const char *a2, size_t __n)
{
  v3 = (HIDWORD(__n) % *(result + 32));
  v4 = *(result + 40) + 32 * v3;
  if (*v4)
  {
    v7 = result;
    v8 = HIDWORD(__n) % *(result + 32);
    do
    {
      result = glpStringsEqual(a2, __n, *(v4 + 8), *(v4 + 16));
      if (result)
      {
        *(*(v7 + 40) + 32 * v3) = 0;
        result = _glpStringHashRehash(v7, *(v7 + 32));
      }

      else
      {
        v8 = (v8 + 1) % *(v7 + 32);
      }

      v3 = v8;
      v4 = *(v7 + 40) + 32 * v8;
    }

    while (*v4);
  }

  return result;
}

uint64_t glpMakePointerHash(void *a1)
{
  v2 = (a1[1])(*a1, 56, "Hash (Pointer)");
  v3 = *(a1 + 1);
  *v2 = *a1;
  *(v2 + 16) = v3;
  v4 = HT_PRIMES;
  *(v2 + 32) = HT_PRIMES;
  v5 = (a1[1])(*a1, 24 * v4, "Hash Storage (Pointer)");
  *(v2 + 40) = v5;
  bzero(v5, 24 * HT_PRIMES);
  *(v2 + 48) = 1;
  return v2;
}

uint64_t glpDestroyPointerHash(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 48))
    {
      (*(result + 24))(*result, *(result + 40));
      v2 = v1[3];
      v3 = *v1;

      return v2(v3, v1);
    }
  }

  return result;
}

uint64_t glpPointerHashPut(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  LODWORD(a4) = *(a1 + 36);
  v7 = *(a1 + 32);
  if (*&a4 / v7 > 0.65)
  {
    v8 = 0;
    do
    {
      v9 = HT_PRIMES[v8++];
    }

    while (v9 <= v7);
    _glpPointerHashRehash(a1, v9);
  }

  return _glpPointerHashRealPut(a1, a2, a3);
}

uint64_t _glpPointerHashRehash(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 36) = 0;
  v5 = 24 * a2;
  v6 = (*(a1 + 8))(*a1, v5, "Hash Storage (Pointer, growth)");
  *(a1 + 40) = v6;
  bzero(v6, v5);
  if (v3)
  {
    v7 = (v4 + 8);
    do
    {
      v8 = *(v7 - 1);
      if (v8)
      {
        _glpPointerHashRealPut(a1, *v7, v8);
      }

      v7 += 3;
      --v3;
    }

    while (v3);
  }

  v9 = *(a1 + 24);
  v10 = *a1;

  return v9(v10, v4);
}

uint64_t _glpPointerHashRealPut(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 32);
  v4 = *(result + 40);
  v5 = (a2 >> 4) % v3;
  v6 = (v4 + 24 * v5);
  if (*v6)
  {
    if (v6[1] == a2)
    {
LABEL_8:
      --*(result + 36);
    }

    else
    {
      while (1)
      {
        if (v5 + 1 == v3)
        {
          v5 = 0;
        }

        else
        {
          ++v5;
        }

        v6 = (v4 + 24 * v5);
        if (!*v6)
        {
          break;
        }

        if (v6[1] == a2)
        {
          goto LABEL_8;
        }
      }
    }
  }

  *(v4 + 24 * v5 + 8) = a2;
  *v6 = a3;
  ++*(result + 36);
  return result;
}

uint64_t glpPointerHashGet(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = (a2 >> 4) % v2;
  for (result = *(v3 + 24 * v4); result && *(v3 + 24 * v4 + 8) != a2; result = *(v3 + 24 * v4))
  {
    if (v4 + 1 == v2)
    {
      v4 = 0;
    }

    else
    {
      ++v4;
    }
  }

  return result;
}

uint64_t glpPointerHashCache_b(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = glpPointerHashGet(a1, a2);
  if (!v6)
  {
    v6 = (*(a3 + 16))(a3);
    glpPointerHashPut(a1, a2, v6, v7);
  }

  return v6;
}

uint64_t glpPointerHashRemove(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 4) % *(result + 32);
  v3 = *(result + 40);
  v4 = (v3 + 24 * v2);
  if (*v4)
  {
    v6 = result;
    do
    {
      if (v4[1] == a2)
      {
        *v4 = 0;
        result = _glpPointerHashRehash(v6, *(v6 + 32));
        v3 = *(v6 + 40);
      }

      else
      {
        v2 = (v2 + 1) % *(v6 + 32);
      }

      v4 = (v3 + 24 * v2);
    }

    while (*v4);
  }

  return result;
}

uint64_t glpMakeIntHash(void *a1)
{
  v2 = (a1[1])(*a1, 56, "Hash (Int)");
  v3 = *(a1 + 1);
  *v2 = *a1;
  *(v2 + 16) = v3;
  v4 = HT_PRIMES;
  *(v2 + 32) = HT_PRIMES;
  v5 = (a1[1])(*a1, 16 * v4, "Hash Storage (Int)");
  *(v2 + 40) = v5;
  bzero(v5, 16 * HT_PRIMES);
  *(v2 + 48) = 1;
  return v2;
}

uint64_t glpDestroyIntHash(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 48))
    {
      (*(result + 24))(*result, *(result + 40));
      v2 = v1[3];
      v3 = *v1;

      return v2(v3, v1);
    }
  }

  return result;
}

uint64_t glpIntHashPut(uint64_t a1, unsigned int a2, uint64_t a3, double a4)
{
  LODWORD(a4) = *(a1 + 36);
  v7 = *(a1 + 32);
  if (*&a4 / v7 > 0.65)
  {
    v8 = 0;
    do
    {
      v9 = HT_PRIMES[v8++];
    }

    while (v9 <= v7);
    _glpIntHashRehash(a1, v9);
  }

  return _glpIntHashRealPut(a1, a2, a3);
}

uint64_t _glpIntHashRehash(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 36) = 0;
  v5 = 16 * a2;
  v6 = (*(a1 + 8))(*a1, v5, "Hash Storage (Int, growth)");
  *(a1 + 40) = v6;
  bzero(v6, v5);
  if (v3)
  {
    v7 = (v4 + 8);
    do
    {
      v8 = *(v7 - 1);
      if (v8)
      {
        _glpIntHashRealPut(a1, *v7, v8);
      }

      v7 += 4;
      --v3;
    }

    while (v3);
  }

  v9 = *(a1 + 24);
  v10 = *a1;

  return v9(v10, v4);
}

uint64_t _glpIntHashRealPut(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 32);
  v4 = *(result + 40);
  v5 = a2 % v3;
  while (1)
  {
    v6 = v4 + 16 * v5;
    if (!*v6)
    {
      break;
    }

    if (*(v6 + 8) == a2)
    {
      --*(result + 36);
      break;
    }

    if (v5 + 1 == v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = (v5 + 1);
    }
  }

  *(v4 + 16 * v5 + 8) = a2;
  *v6 = a3;
  ++*(result + 36);
  return result;
}

uint64_t glpIntHashGet(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2 % v2;
  for (result = *(v3 + 16 * v4); result && *(v3 + 16 * v4 + 8) != a2; result = *(v3 + 16 * v4))
  {
    if (v4 + 1 == v2)
    {
      v4 = 0;
    }

    else
    {
      v4 = (v4 + 1);
    }
  }

  return result;
}

uint64_t glpIntHashCache_b(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = glpIntHashGet(a1, a2);
  if (!v6)
  {
    v6 = (*(a3 + 16))(a3);
    glpIntHashPut(a1, a2, v6, v7);
  }

  return v6;
}

uint64_t glpIntHashRemove(uint64_t result, unsigned int a2)
{
  v2 = a2 % *(result + 32);
  v3 = *(result + 40);
  v4 = v3 + 16 * v2;
  if (*v4)
  {
    v6 = result;
    do
    {
      if (*(v4 + 8) == a2)
      {
        *v4 = 0;
        result = _glpIntHashRehash(v6, *(v6 + 32));
        v3 = *(v6 + 40);
      }

      else
      {
        v2 = (v2 + 1) % *(v6 + 32);
      }

      v4 = v3 + 16 * v2;
    }

    while (*v4);
  }

  return result;
}

uint64_t glpMakeTypedValueHash(void *a1)
{
  v2 = (a1[1])(*a1, 56, "Hash (TypedValue)");
  v3 = *(a1 + 1);
  *v2 = *a1;
  *(v2 + 16) = v3;
  v4 = HT_PRIMES;
  *(v2 + 32) = HT_PRIMES;
  v5 = (a1[1])(*a1, 32 * v4, "Hash Storage (TypedValue)");
  *(v2 + 40) = v5;
  bzero(v5, 32 * HT_PRIMES);
  *(v2 + 48) = 1;
  return v2;
}

uint64_t glpDestroyTypedValueHash(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 48))
    {
      (*(result + 24))(*result, *(result + 40));
      v2 = v1[3];
      v3 = *v1;

      return v2(v3, v1);
    }
  }

  return result;
}

uint64_t glpTypedValueHashPut(uint64_t a1, unsigned int *a2, char *a3, uint64_t a4, double a5)
{
  LODWORD(a5) = *(a1 + 36);
  v9 = *(a1 + 32);
  if (*&a5 / v9 > 0.65)
  {
    v10 = 0;
    do
    {
      v11 = HT_PRIMES[v10++];
    }

    while (v11 <= v9);
    _glpTypedValueHashRehash(a1, v11);
  }

  return _glpTypedValueHashRealPut(a1, a2, a3, a4);
}

uint64_t _glpTypedValueHashRehash(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 36) = 0;
  v5 = 32 * a2;
  v6 = (*(a1 + 8))(*a1, v5, "Hash Storage (TypedValue, growth)");
  *(a1 + 40) = v6;
  bzero(v6, v5);
  if (v3)
  {
    v7 = (v4 + 16);
    do
    {
      v8 = *(v7 - 2);
      if (v8)
      {
        _glpTypedValueHashRealPut(a1, *(v7 - 1), *v7, v8);
      }

      v7 += 4;
      --v3;
    }

    while (v3);
  }

  v9 = *(a1 + 24);
  v10 = *a1;

  return v9(v10, v4);
}

uint64_t _glpTypedValueHashRealPut(uint64_t a1, unsigned int *a2, char *a3, uint64_t a4)
{
  result = glpTypedValueHash(a2, a3);
  for (i = result % *(a1 + 32); ; i = (i + 1) % *(a1 + 32))
  {
    v10 = *(a1 + 40);
    v11 = v10 + 32 * i;
    if (!*v11)
    {
      break;
    }

    result = glpTypedValuesEqual(a2, a3, *(v11 + 8), *(v11 + 16));
    if (result)
    {
      --*(a1 + 36);
      v10 = *(a1 + 40);
      break;
    }
  }

  v12 = v10 + 32 * i;
  *(v12 + 8) = a2;
  *(v12 + 16) = a3;
  *(*(a1 + 40) + 32 * i) = a4;
  ++*(a1 + 36);
  return result;
}

uint64_t glpTypedValueHashGet(uint64_t a1, unsigned int *a2, char *a3)
{
  for (i = glpTypedValueHash(a2, a3) % *(a1 + 32); ; i = (i + 1) % *(a1 + 32))
  {
    v7 = *(a1 + 40) + 32 * i;
    if (!*v7)
    {
      break;
    }

    if (glpTypedValuesEqual(a2, a3, *(v7 + 8), *(v7 + 16)))
    {
      return *(*(a1 + 40) + 32 * i);
    }
  }

  return 0;
}

uint64_t glpTypedValueHashCache(uint64_t a1, unsigned int *a2, char *a3, uint64_t a4)
{
  result = glpTypedValueHashGet(a1, a2, a3);
  if (!result)
  {
    glpTypedValueHashPut(a1, a2, a3, a4, v9);
    return a4;
  }

  return result;
}

uint64_t glpMakeDataHash(void *a1)
{
  v2 = (a1[1])(*a1, 56, "Hash (Data)");
  v3 = *(a1 + 1);
  *v2 = *a1;
  *(v2 + 16) = v3;
  v4 = HT_PRIMES[0];
  *(v2 + 32) = HT_PRIMES[0];
  v5 = (a1[1])(*a1, 32 * v4, "Hash Storage (Data)");
  *(v2 + 40) = v5;
  bzero(v5, 32 * HT_PRIMES[0]);
  *(v2 + 48) = 1;
  return v2;
}

uint64_t glpDataHashPut(uint64_t a1, const void *a2, size_t __n, uint64_t a4, double a5)
{
  LODWORD(a5) = *(a1 + 36);
  v9 = *(a1 + 32);
  if (*&a5 / v9 > 0.65)
  {
    v10 = 0;
    do
    {
      v11 = HT_PRIMES[v10++];
    }

    while (v11 <= v9);
    _glpDataHashRehash(a1, v11);
  }

  return _glpDataHashRealPut(a1, a2, __n, a4);
}

uint64_t _glpDataHashRehash(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 36) = 0;
  v5 = 32 * a2;
  v6 = (*(a1 + 8))(*a1, v5, "Hash Storage (Data, growth)");
  *(a1 + 40) = v6;
  bzero(v6, v5);
  if (v3)
  {
    v7 = (v4 + 16);
    do
    {
      v8 = *(v7 - 2);
      if (v8)
      {
        _glpDataHashRealPut(a1, *(v7 - 1), *v7, v8);
      }

      v7 += 4;
      --v3;
    }

    while (v3);
  }

  v9 = *(a1 + 24);
  v10 = *a1;

  return v9(v10, v4);
}

uint64_t _glpDataHashRealPut(uint64_t result, const void *a2, size_t __n, uint64_t a4)
{
  v7 = result;
  v8 = (HIDWORD(__n) % *(result + 32));
  for (i = *(result + 40); ; i = *(v7 + 40))
  {
    v10 = i + 32 * v8;
    if (!*v10)
    {
      break;
    }

    result = glpDatasEqual(a2, __n, *(v10 + 8), *(v10 + 16));
    if (result)
    {
      --*(v7 + 36);
      i = *(v7 + 40);
      break;
    }

    v8 = (v8 + 1) % *(v7 + 32);
  }

  v11 = i + 32 * v8;
  *(v11 + 8) = a2;
  *(v11 + 16) = __n;
  *(*(v7 + 40) + 32 * v8) = a4;
  ++*(v7 + 36);
  return result;
}

uint64_t glpDataHashGet(uint64_t a1, const void *a2, size_t __n)
{
  v3 = (HIDWORD(__n) % *(a1 + 32));
  v4 = *(a1 + 40) + 32 * v3;
  if (!*v4)
  {
    return 0;
  }

  while (!glpDatasEqual(a2, __n, *(v4 + 8), *(v4 + 16)))
  {
    v3 = (v3 + 1) % *(a1 + 32);
    v4 = *(a1 + 40) + 32 * v3;
    if (!*v4)
    {
      return 0;
    }
  }

  return *(*(a1 + 40) + 32 * v3);
}

uint64_t glpAlignTypeSize(uint64_t result, unsigned int a2)
{
  if (result != -1)
  {
    return (result + a2 - 1) / a2 * a2;
  }

  return result;
}

uint64_t glpABIGetMinimumBufferBytesForType(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v3 = &ABIs[6 * a1];
  v4 = (*v3)(a2, a3);
  return ((v3[4])(v4) + 15) & 0xFFFFFFF0;
}

uint64_t glpABIGetStructTypeRangeOfField(unsigned int a1, uint64_t a2, uint64_t a3, int a4)
{
  v14[1] = *MEMORY[0x277D85DE8];
  ElementCount = glpAggregateTypeGetElementCount(a2);
  MEMORY[0x28223BE20](ElementCount);
  v10 = (v14 - v9);
  bzero(v14 - v9, v11);
  glpStructTypeGetSizesAndAlignments(a1, a2, a3, 0, 0, v10);
  result = *&v10[2 * a4];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpTypeGetAppleVec4Types(unsigned int *a1, _DWORD *a2, int a3, _DWORD *a4, char a5, _BYTE *a6, uint64_t a7, uint64_t a8, char a9)
{
  Kind = glpTypeGetKind(a1);
  v55 = a7;
  if (Kind == 2)
  {
    v54 = a8;
    ElementCount = glpArrayTypeGetElementCount(a1);
    v35 = glpArrayTypeGetElementCount(a1);
    if (v35 == -1)
    {
      v36 = ElementCount;
    }

    else
    {
      v36 = v35;
    }

    v49 = v36;
    ElementType = glpArrayTypeGetElementType(a1);
    result = applevec4TypeSize(ElementType, 0);
    v52 = ElementCount;
    v38 = a7;
    if (ElementCount)
    {
      v39 = 4 * result;
      v40 = ElementCount;
      v41 = v54;
      v42 = result;
      do
      {
        v43 = result;
        v44 = glpTypeGetKind(ElementType) == 0;
        LOBYTE(v45) = a9;
        glpTypeGetAppleVec4Types(ElementType, a2, v40, a4, v44, a6, v38, v41, v45);
        result = v43;
        if (a4)
        {
          a4 += v42;
        }

        else
        {
          a4 = 0;
        }

        if (a6)
        {
          a6 += v42;
        }

        else
        {
          a6 = 0;
        }

        v41 = (v41 + v43);
        a2 = (a2 + v39);
        v40 = (v40 - 1);
      }

      while (v40);
    }

    if (v38 && v52 != v49)
    {

      return BitSetSetRangeEquals(v55, v54 + v49 * result, v54 + result * v52, 0);
    }
  }

  else if (Kind == 1)
  {
    result = glpAggregateTypeGetElementCount(a1);
    v51 = result;
    if (result)
    {
      v29 = 0;
      do
      {
        v30 = glpAggregateTypeGetElementType(a1, v29);
        v31 = applevec4TypeSize(v30, 0);
        LOBYTE(v45) = a9;
        result = glpTypeGetAppleVec4Types(v30, a2, 1, a4, 0, a6, v55, a8, v45);
        if (a4)
        {
          a4 += v31;
        }

        else
        {
          a4 = 0;
        }

        if (a6)
        {
          v32 = v31;
          v33 = a6;
          if (v31)
          {
            do
            {
              result = glpAggregateTypeGetElementFlags(a1, v29);
              *v33 = *v33 & 7 | (8 * result);
              ++v33;
              --v32;
            }

            while (v32);
          }

          a6 += v31;
        }

        a2 += v31;
        a8 = v31 + a8;
        ++v29;
      }

      while (v29 != v51);
    }
  }

  else
  {
    if (Kind)
    {
      goto LABEL_67;
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);
    result = glpPrimitiveTypeGetCategory(PrimitiveType);
    v47 = PrimitiveType;
    if ((result - 1) < 3)
    {
      v19 = a8;
      MaxComponentsPerVec4 = glpPrimitiveTypeGetMaxComponentsPerVec4(PrimitiveType);
      ColumnType = PrimitiveType;
      if (glpPrimitiveTypeGetCategory(PrimitiveType) == 3)
      {
        PrimitiveType = PrimitiveType;
        ColumnType = glpPrimitiveMatrixGetColumnType(PrimitiveType);
      }

      ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
      ScalarCount = glpPrimitiveTypeGetScalarCount(ColumnType);
      result = glpPrimitiveTypeGetNumVec4s(PrimitiveType);
      if (result)
      {
        v22 = 0;
        v23 = a5;
        v24 = 0;
        v46 = v23 & 1;
        v25 = ScalarCount;
        do
        {
          if (MaxComponentsPerVec4 >= v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = MaxComponentsPerVec4;
          }

          VectorType = glpGetVectorType(ScalarType, v26);
          if (a9)
          {
            v28 = PrimitiveType;
          }

          else
          {
            v28 = VectorType;
          }

          a2[v22] = v28;
          if (a4)
          {
            a4[v22] = a3;
          }

          if (a6)
          {
            a6[v22] = (v46 | (2 * (v22 == 0))) & 0xFB | (4 * (v24 & 1));
          }

          if (v55)
          {
            BitSetSetEquals(v55, v19);
            PrimitiveType = v47;
          }

          if (v25 > MaxComponentsPerVec4)
          {
            ++v24;
          }

          else
          {
            v24 = 0;
          }

          if (v25 <= MaxComponentsPerVec4)
          {
            v25 = ScalarCount;
          }

          else
          {
            v25 -= v26;
          }

          ++v22;
          result = glpPrimitiveTypeGetNumVec4s(PrimitiveType);
          ++v19;
        }

        while (v22 < result);
      }

      return result;
    }

    if (result != 4)
    {
LABEL_67:
      abort();
    }

    *a2 = PrimitiveType;
    if (a4)
    {
      *a4 = a3;
    }

    if (a6)
    {
      *a6 = a5 & 1 | 2;
    }

    if (v55)
    {

      return BitSetSetEquals(v55, a8);
    }
  }

  return result;
}

uint64_t applevec4TypeSize(unsigned int *a1, uint64_t a2)
{
  Kind = glpTypeGetKind(a1);
  if (Kind <= 1)
  {
    if (Kind)
    {
      if (Kind == 1)
      {
        v14 = 0;
        glpStructTypeGetSizesAndAlignments(0, a1, a2, &v14, 0, 0);
        return v14;
      }
    }

    else
    {
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);
      Category = glpPrimitiveTypeGetCategory(PrimitiveType);
      if (Category > 2)
      {
        if (Category == 3)
        {
          Columns = glpPrimitiveMatrixGetColumns(PrimitiveType);
          ColumnType = glpPrimitiveMatrixGetColumnType(PrimitiveType);
          return glpPrimitiveTypeGetNumVec4s(ColumnType) * Columns;
        }

        if (Category == 4)
        {
          return 1;
        }
      }

      else if ((Category - 1) < 2)
      {

        return glpPrimitiveTypeGetNumVec4s(PrimitiveType);
      }
    }

    abort();
  }

  if (Kind != 2)
  {
    if (Kind != 5)
    {
      abort();
    }

    return 1;
  }

  result = glpArrayTypeGetElementCount(a1);
  if (result != -1)
  {
    ElementType = glpArrayTypeGetElementType(a1);
    v9 = applevec4TypeSize(ElementType, a2);
    ElementCount = glpArrayTypeGetElementCount(a1);
    if (ElementCount == -1 || v9 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return (ElementCount * v9);
    }
  }

  return result;
}

uint64_t applevec4MatrixStride(int a1)
{
  ColumnType = glpPrimitiveMatrixGetColumnType(a1);

  return glpPrimitiveTypeGetNumVec4s(ColumnType);
}

uint64_t std140TypeSize(unsigned int *a1, uint64_t a2)
{
  Kind = glpTypeGetKind(a1);
  if (Kind == 2)
  {
    result = glpArrayTypeGetElementCount(a1);
    if (result != -1)
    {
      ElementType = glpArrayTypeGetElementType(a1);
      v8 = std140TypeSize(ElementType, a2);
      if (v8 == -1)
      {
        v9 = -1;
      }

      else
      {
        v9 = (v8 + 15) & 0xFFFFFFF0;
      }

      ElementCount = glpArrayTypeGetElementCount(a1);
      if (ElementCount == -1 || v8 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v9 * ElementCount;
      }
    }
  }

  else if (Kind == 1)
  {
    v12 = 0;
    glpStructTypeGetSizesAndAlignments(1u, a1, a2, &v12, 0, 0);
    return v12;
  }

  else
  {
    if (Kind)
    {
      abort();
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);

    return std140PrimitiveTypeSize(PrimitiveType, a2);
  }

  return result;
}

uint64_t std140TypeAlign(unsigned int *a1, uint64_t a2)
{
  Kind = glpTypeGetKind(a1);
  if (Kind == 2)
  {
    ElementType = glpArrayTypeGetElementType(a1);
    return (std140TypeAlign(ElementType, a2) + 15) & 0xFFFFFFF0;
  }

  else if (Kind == 1)
  {
    v8 = 0;
    glpStructTypeGetSizesAndAlignments(1u, a1, a2, 0, &v8, 0);
    return v8;
  }

  else
  {
    if (Kind)
    {
      abort();
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);

    return std140PrimitiveTypeAlign(PrimitiveType);
  }
}

uint64_t std140MatrixStride(int a1, __int16 a2)
{
  if ((a2 & 0x400) != 0)
  {
    RowType = glpPrimitiveMatrixGetRowType(a1);
  }

  else
  {
    RowType = glpPrimitiveMatrixGetColumnType(a1);
  }

  return (std140PrimitiveTypeAlign(RowType) + 15) & 0xFFFFFFF0;
}

uint64_t std140PrimitiveTypeSize(uint64_t a1, uint64_t a2)
{
  Category = glpPrimitiveTypeGetCategory(a1);
  if (Category <= 2)
  {
    if (Category == 1)
    {
      if (a1 == 62)
      {
        return 8;
      }

      else
      {
        return 4;
      }
    }

    if (Category == 2)
    {
      Length = glpPrimitiveVectorGetLength(a1);
      ElementType = glpPrimitiveVectorGetElementType(a1);
      v7 = std140PrimitiveTypeSize(ElementType, a2);
      if (v7 == -1 || Length == -1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return (v7 * Length);
      }
    }

LABEL_20:
    abort();
  }

  if (Category != 3)
  {
    if (Category == 4)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_20;
  }

  if ((a2 & 0x400) != 0)
  {
    Rows = glpPrimitiveMatrixGetRows(a1);
  }

  else
  {
    Rows = glpPrimitiveMatrixGetColumns(a1);
  }

  return std140MatrixStride(a1, a2) * Rows;
}

uint64_t std140PrimitiveTypeAlign(uint64_t a1)
{
  Category = glpPrimitiveTypeGetCategory(a1);
  if (Category > 2)
  {
    if (Category == 3)
    {
      ColumnType = glpPrimitiveMatrixGetColumnType(a1);
      return (std140PrimitiveTypeAlign(ColumnType) + 15) & 0xFFFFFFF0;
    }

    if (Category == 4)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (Category == 1)
  {
    if (a1 == 62)
    {
      return 8;
    }

    else
    {
      return 4;
    }
  }

  if (Category != 2)
  {
LABEL_15:
    abort();
  }

  Length = glpPrimitiveVectorGetLength(a1);
  ElementType = glpPrimitiveVectorGetElementType(a1);
  v5 = std140PrimitiveTypeAlign(ElementType);
  if (Length == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  return (v5 << v6);
}

void *glpMallocAlloc(int a1, size_t size)
{
  result = malloc_type_malloc(size, 0xCA0EF1E7uLL);
  if (!result)
  {
    abort();
  }

  return result;
}

void *glpMallocRealloc(int a1, void *ptr, size_t size)
{
  result = malloc_type_realloc(ptr, size, 0x352A3853uLL);
  if (!result)
  {
    abort();
  }

  return result;
}

void *glpInitPoolAllocator(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = malloc_type_malloc(0x20uLL, 0xCA0EF1E7uLL);
  if (!v6)
  {
    abort();
  }

  v7 = v6;
  v8 = sysconf(29);
  *v7 = (a2 + v8 - 1) / v8 * v8;
  v9 = sysconf(29);
  result = makePoolNode((a1 + v9 - 1) / v9 * v9, 0);
  v7[1] = result;
  *(v7 + 24) = 0;
  *a3 = v7;
  a3[1] = poolAlloc;
  a3[2] = poolRealloc;
  a3[3] = poolFree;
  return result;
}

void *makePoolNode(size_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0xCA0EF1E7uLL);
  if (!v4)
  {
    abort();
  }

  v5 = v4;
  v6 = mmap(0, a1, 3, 4098, 1107296256, 0);
  *v5 = v6;
  v5[1] = v6;
  v5[2] = a1;
  v5[3] = a1;
  v5[4] = a2;
  return v5;
}

size_t poolAlloc(size_t *a1, uint64_t a2)
{
  v3 = (a2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = *a1;
  if (v3 > v4)
  {
    v5 = sysconf(29);
    v4 = (v3 + v5 - 1) / v5 * v5;
    PoolNode = a1[1];
LABEL_4:
    PoolNode = makePoolNode(v4, PoolNode);
    a1[1] = PoolNode;
    goto LABEL_5;
  }

  PoolNode = a1[1];
  if (PoolNode[3] < v3)
  {
    goto LABEL_4;
  }

LABEL_5:
  result = PoolNode[1];
  a1[2] = result;
  PoolNode[1] = result + v3;
  PoolNode[3] -= v3;
  return result;
}

uint64_t poolFree(uint64_t result, uint64_t a2)
{
  if (*(result + 24))
  {
    if (*(result + 16) == a2)
    {
      v2 = *(result + 8);
      *(v2 + 24) += *(v2 + 8) - a2;
      *(v2 + 8) = a2;
    }
  }

  return result;
}

void *glpInitTempPoolAllocator(uint64_t a1, uint64_t a2, void *a3)
{
  result = glpInitPoolAllocator(a1, a2, a3);
  *(*a3 + 24) = 1;
  return result;
}

void glpDestroyPoolAllocator(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 32);
      munmap(*v2, *(v2 + 16));
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  free(v1);
}

uint64_t glpLockPoolAllocator(uint64_t result)
{
  v1 = *(*result + 8);
  if (v1)
  {
    do
    {
      v2 = *(v1 + 32);
      result = mprotect(*v1, *(v1 + 8) - *v1, 1);
      v1 = v2;
    }

    while (v2);
  }

  return result;
}

uint64_t glpUnlockPoolAllocator(uint64_t result)
{
  v1 = *(*result + 8);
  if (v1)
  {
    do
    {
      v2 = *(v1 + 32);
      result = mprotect(*v1, *(v1 + 8) - *v1, 3);
      v1 = v2;
    }

    while (v2);
  }

  return result;
}

uint64_t glpOpenArchive(void *a1, int a2, uint64_t a3)
{
  v6 = (a1[1])(*a1, 32, "Archive");
  *v6 = a1;
  *(v6 + 8) = glpMakeStringHash(a1);
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  if (!readTOC(v6))
  {
    glpDestroyStringHash(*(v6 + 8));
    (a1[3])(*a1, v6);
    return 0;
  }

  return v6;
}

uint64_t readTOC(void **a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v33 = 0u;
  memset(v32, 0, sizeof(v32));
  glpInitDeserialContext(v32, *a1, *a1, a1[3], *(a1 + 4));
  if (_setjmp(v32))
  {
    v2 = 0;
    goto LABEL_27;
  }

  v3 = HIDWORD(v34);
  if (HIDWORD(v34) >= v34)
  {
    goto LABEL_28;
  }

  v4 = *(*(&v33 + 1) + HIDWORD(v34));
  ++HIDWORD(v34);
  if (v3 + 1 >= v34)
  {
    goto LABEL_28;
  }

  v5 = *(*(&v33 + 1) + v3 + 1);
  HIDWORD(v34) = v3 + 2;
  if (v3 + 2 >= v34)
  {
    goto LABEL_28;
  }

  v6 = *(*(&v33 + 1) + v3 + 2);
  HIDWORD(v34) = v3 + 3;
  if (v3 + 3 >= v34)
  {
    goto LABEL_28;
  }

  v7 = *(*(&v33 + 1) + v3 + 3);
  HIDWORD(v34) = v3 + 4;
  if (v4 != 103 || v5 != 108 || v6 != 112 || v7 != 65)
  {
    glpDeserialError(v32, 3u);
  }

  if (v3 + 8 > v34)
  {
    goto LABEL_28;
  }

  v8 = v3;
  v9 = *(*(&v33 + 1) + v3 + 4);
  v10 = (v3 + 8);
  HIDWORD(v34) = v10;
  if (v9 != 1)
  {
    glpDeserialError(v32, 4u);
  }

  if (v10 + 4 > v34)
  {
LABEL_28:
    glpDeserialError(v32, 1u);
  }

  v11 = *(*(&v33 + 1) + v10);
  HIDWORD(v34) = v8 + 12;
  if (v11)
  {
    v12 = v11;
    do
    {
      v13 = deserialize_GLPString(v32);
      v15 = v14;
      v16 = ((*a1)[1])(**a1, 24, "Archive Entry");
      v18 = HIDWORD(v34);
      v19 = v34;
      if (HIDWORD(v34) + 4 > v34)
      {
        goto LABEL_28;
      }

      v20 = *(&v33 + 1);
      v21 = *(*(&v33 + 1) + HIDWORD(v34));
      HIDWORD(v34) += 4;
      *v16 = v21;
      v22 = (v18 + 4);
      if (v22 + 4 > v19)
      {
        goto LABEL_28;
      }

      v23 = *(v20 + v22);
      HIDWORD(v34) = v18 + 8;
      *(v16 + 4) = v23;
      v24 = (v18 + 8);
      if (v24 + 4 > v19)
      {
        goto LABEL_28;
      }

      v25 = *(v20 + v24);
      HIDWORD(v34) = v18 + 12;
      *(v16 + 8) = v25;
      *(v16 + 16) = 0;
      glpStringHashPut(a1[1], v13, v15, v16, v17);
    }

    while (--v12);
  }

  v26 = a1[1];
  if (*(v26 + 8))
  {
    v27 = v26[5];
    v28 = *(v26 + 8);
    do
    {
      v29 = *v27;
      if (*v27)
      {
        if (*v29 < HIDWORD(v34))
        {
          glpDeserialError(v32, 5u);
        }

        if (v29[1] + *v29 > v34)
        {
          glpDeserialError(v32, 6u);
        }
      }

      v27 += 4;
      --v28;
    }

    while (v28);
  }

  v2 = 1;
LABEL_27:
  glpDestroyDeserialContext(v32);
  v30 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t glpArchiveFileGetEntryNamed(uint64_t a1, const char *a2, size_t a3, _DWORD *a4, void *a5)
{
  v7 = a3;
  v9 = glpStringHashGet(*(a1 + 8), a2, a3);
  if (v9)
  {
    v17 = *(v9 + 2);
    if (!v17)
    {
      v17 = *(a1 + 24) + *v9;
      *(v9 + 2) = v17;
    }

    *a4 = v9[2];
    *a5 = v17;
    return 1;
  }

  else
  {
    glpSetCrashLogMessagef("GLProgrammability: archive file doesn't have entry named '%.*s'", v10, v11, v12, v13, v14, v15, v16, v7);
    return 0;
  }
}

uint64_t glpArchiveFileFinishEntryNamed(uint64_t a1, const char *a2, size_t a3)
{
  result = glpStringHashGet(*(a1 + 8), a2, a3);
  *(result + 16) = 0;
  return result;
}

uint64_t glpASTMergeInitContext(uint64_t a1, uint64_t a2, int a3)
{
  Allocator = glpLinkerGetAllocator(a2);
  *a1 = Allocator;
  *(a1 + 8) = glpLinkerGetInfoLog(a2);
  *(a1 + 16) = *(a2 + 56);
  *(a1 + 24) = a3;
  v7 = *(a2 + 308);
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      v8 = 3;
      goto LABEL_11;
    }

    if (v7 == 10)
    {
      v8 = 4;
      goto LABEL_11;
    }

LABEL_8:
    v8 = 6;
    goto LABEL_11;
  }

  if (!v7)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v7 != 1)
  {
    goto LABEL_8;
  }

  v8 = 2;
LABEL_11:
  *(a1 + 28) = v8;
  *(a1 + 32) = *(a2 + 296);
  *(a1 + 40) = glpMakeStringHash(Allocator);
  *(a1 + 48) = glpMakeStringHash(Allocator);
  *(a1 + 56) = glpMakeStringHash(Allocator);
  *(a1 + 64) = glpMakeStringHash(Allocator);
  *(a1 + 72) = glpMakeStringHash(Allocator);
  *(a1 + 80) = glpMakeStringHash(Allocator);
  *(a1 + 88) = glpMakePointerHash(Allocator);
  *(a1 + 96) = glpMakePointerHash(Allocator);
  *(a1 + 104) = glpMakePointerHash(Allocator);
  *(a1 + 112) = glpMakePointerHash(Allocator);
  *(a1 + 120) = glpMakePointerHash(Allocator);
  *(a1 + 128) = glpMakePointerHash(Allocator);
  *(a1 + 136) = glpMakePointerHash(Allocator);
  *(a1 + 144) = glpMakePointerHash(Allocator);
  v13.n128_u64[0] = "-1";
  v13.n128_u64[1] = 0xEDA00000002;
  v14 = 0xFFFFFFFFLL;
  glpMakeTopLevelNode(Allocator, &v13);
  *(a1 + 152) = v9;
  *(a1 + 160) = glpMakeStringHash(Allocator);
  *(a1 + 168) = glpMakePointerHash(Allocator);
  *(a1 + 176) = glpMakePointerHash(Allocator);
  *(a1 + 184) = glpMakePointerHash(Allocator);
  *(a1 + 192) = glpMakeStringHash(Allocator);
  *(a1 + 200) = glpMakeStringHash(Allocator);
  *(a1 + 208) = glpMakeStringHash(Allocator);
  *(a1 + 216) = glpMakeStringHash(Allocator);
  *(a1 + 224) = glpMakeStringHash(Allocator);
  *(a1 + 232) = glpMakeStringHash(Allocator);
  *(a1 + 240) = glpMakeStringHash(Allocator);
  *(a1 + 280) = 4;
  v10 = 0;
  *(a1 + 288) = (Allocator[1])(*Allocator, 32, "Vector Storage (GLPType *)");
  v11 = a1 + 248;
  do
  {
    result = glpMakeTypedValueHash(Allocator);
    *(v11 + v10) = result;
    v10 += 8;
  }

  while (v10 != 32);
  return result;
}

uint64_t glpASTMergePhase1AddTopLevelNode(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if (!glpTopLevelNodeGetDefCount(a2))
  {
    return 1;
  }

  v4 = 0;
  v104 = a1 + 7;
  v5 = &__block_descriptor_tmp_0;
  v103 = v2;
  while (1)
  {
    Def = glpTopLevelNodeGetDef(v2, v4);
    if (!Def)
    {
      goto LABEL_73;
    }

    v7 = Def;
    Kind = glpASTNodeGetKind(Def);
    if (Kind <= 50)
    {
      break;
    }

    if (Kind > 62)
    {
      if (Kind != 63)
      {
        if (Kind != 85)
        {
          goto LABEL_85;
        }

        Extra = glpSubroutineUniformNodeGetExtra(v7);
        glpPointerHashPut(a1[14], Extra, v7, v14);
        goto LABEL_73;
      }

      SaFlags = glpASTNodeGetSaFlags(v7);
      Layout = glpGlobalTypeQualifierNodeGetLayout(v7);
      GlobalTypeQualifier = glpTopLevelNodeGetGlobalTypeQualifier(a1[19], SaFlags & 0xFFFFFFFFFFFFFF7FLL);
      if (GlobalTypeQualifier)
      {
        v43 = GlobalTypeQualifier;
        v44 = glpGlobalTypeQualifierNodeGetLayout(GlobalTypeQualifier);
        v45 = *a1;
        v107 = "-1";
        v108 = 0xEDA00000002;
        v109 = 0xFFFFFFFFLL;
        appended = glpLayoutObjectAppendMany(v45, 0, &v107, v44, Layout);
        v7 = v43;
        Layout = v44;
        if (!appended)
        {
          v99 = a1[1];
          v107 = "-1";
          v108 = 0xEDA00000002;
          v109 = 0xFFFFFFFFLL;
          glpLogMessage(v99, 0, &v107, "Global layout qualifiers conflict", v47, v48, v49, v50, v101);
          return 0;
        }
      }

      else
      {
        glpTopLevelNodeAddDef(*a1, a1[19], v7);
      }

      glpGlobalTypeQualifierNodeSetLayout(v7, Layout);
    }

    else
    {
      if (Kind == 51)
      {
        Prototype = glpFunctionDefinitionNodeGetPrototype(v7);
        v16 = glpFunctionPrototypeNodeGetExtra(Prototype);
        v17 = glpStringHashGet(a1[6], *(v16 + 40), *(v16 + 48));
        if (v17)
        {
          v19 = v17;
          if (glpPointerHashGet(a1[12], v17))
          {
            if ((*(v19 + 9) & 0x20) == 0)
            {
              v25 = a1[1];
              v26 = *(v16 + 24);
              v27 = *(v16 + 32);
              v112[0] = "-1";
              v112[1] = 0xEDA00000002;
              v112[2] = 0xFFFFFFFFLL;
              glpLogMessage(v25, 0, v112, "duplicate definition of function '%.*s'", v20, v21, v22, v23, v27);
              result = 0;
LABEL_71:
              v2 = v103;
              goto LABEL_72;
            }

            v102 = Prototype;
            glpPointerHashRemove(a1[12], v19);
            glpStringHashRemove(a1[6], *(v16 + 40), *(v16 + 48));
LABEL_58:
            glpStringHashPut(a1[6], *(v16 + 40), *(v16 + 48), v16, v18);
            glpPointerHashPut(a1[12], v16, v7, v67);
            glpPointerHashPut(a1[16], v16, v16, v68);
          }

          else
          {
            v102 = Prototype;
            glpPointerHashPut(a1[12], v19, v7, v24);
            *(v19 + 64) = *(v16 + 64);
          }

          if (*(v16 + 96))
          {
            v69 = 0;
            v70 = MEMORY[0x277D85DD0];
            v106 = v16;
            v105 = MEMORY[0x277D85DD0];
            do
            {
              v71 = *(*(v16 + 104) + 8 * v69);
              v72 = a1[18];
              v107 = v70;
              v108 = 0x40000000;
              v109 = __phase1ProcessFunctionDefinition_block_invoke;
              v110 = v5;
              v111 = a1;
              v73 = glpPointerHashCache_b(v72, v71, &v107);
              v74 = v73;
              v75 = *v73;
              v76 = *(v73 + 4);
              if ((v76 + 1) <= *v73)
              {
                v84 = *(v73 + 8);
                v87 = *(v73 + 4);
              }

              else
              {
                if (v75 <= 1)
                {
                  v75 = 1;
                }

                v77 = 2 * v75;
                if (v77 <= v76 + 1)
                {
                  v78 = v76 + 1;
                }

                else
                {
                  v78 = v77;
                }

                v79 = v7;
                v80 = v4;
                v81 = v5;
                v82 = a1;
                v83 = *a1;
                v84 = (*(v83 + 8))(*v83, 8 * v78, "Vector Storage (GLPASTNode *, growth)");
                memcpy(v84, *(v74 + 8), 8 * *(v74 + 4));
                v85 = *(v83 + 24);
                v86 = *v83;
                a1 = v82;
                v5 = v81;
                v4 = v80;
                v7 = v79;
                v16 = v106;
                v85(v86, *(v74 + 8));
                *v74 = v78;
                v70 = v105;
                *(v74 + 8) = v84;
                v87 = *(v74 + 4);
              }

              memmove(&v84[8 * v76 + 8], &v84[8 * v76], 8 * (v87 - v76));
              *(*(v74 + 8) + 8 * v76) = v7;
              ++*(v74 + 4);
              ++v69;
            }

            while (v69 < *(v16 + 96));
          }

          phase1ProcessFunctionPrototype(a1, v102);
          result = 1;
          goto LABEL_71;
        }

        v102 = Prototype;
        goto LABEL_58;
      }

      if (Kind != 57)
      {
        goto LABEL_85;
      }

      v10 = glpInterfaceBlockNodeGetExtra(v7);
      v11 = *(**(v10 + 72) + 48);
      if ((v11 & 0x20000000) != 0)
      {
        v12 = 0;
      }

      else if ((v11 & 0x40000000) != 0)
      {
        v12 = 1;
      }

      else
      {
        if ((v11 & 0x100000000) == 0)
        {
          goto LABEL_85;
        }

        v12 = 2;
      }

      v51 = glpStringHashGet(v104[v12], *v10, *(v10 + 8));
      if (v51)
      {
        v53 = v51;
        if (!glpTypesEqual(*(v51 + 64), *(v10 + 64)) || *(**(v53 + 72) + 48) != *(**(v10 + 72) + 48))
        {
          v96 = a1[1];
          v97 = *v10;
          v98 = *(v10 + 8);
          v107 = "-1";
          v108 = 0xEDA00000002;
          v109 = 0xFFFFFFFFLL;
          glpLogMessage(v96, 0, &v107, "Multiple definitions of interface block '%.*s' differ in name/type/order/qualification of members", v54, v55, v56, v57, v98);
          return 0;
        }

        glpPointerHashPut(a1[17], v10, v53, v58);
        VariableObjectCount = glpInterfaceBlockObjectGetVariableObjectCount(v10);
        if (VariableObjectCount)
        {
          v61 = 0;
          v62 = 8 * VariableObjectCount;
          do
          {
            glpPointerHashPut(a1[15], *(*(v10 + 72) + v61), *(*(v53 + 72) + v61), v60);
            v61 += 8;
          }

          while (v62 != v61);
        }
      }

      else
      {
        v63 = *(**(v10 + 72) + 48);
        if ((v63 & 0x20000000) != 0)
        {
          v64 = 0;
        }

        else if ((v63 & 0x40000000) != 0)
        {
          v64 = 1;
        }

        else
        {
          if ((v63 & 0x100000000) == 0)
          {
LABEL_85:
            abort();
          }

          v64 = 2;
        }

        glpStringHashPut(v104[v64], *v10, *(v10 + 8), v10, v52);
        glpPointerHashPut(a1[13], v10, v7, v88);
        glpPointerHashPut(a1[17], v10, v10, v89);
        v90 = glpInterfaceBlockObjectGetVariableObjectCount(v10);
        if (v90)
        {
          v92 = 0;
          v93 = 8 * v90;
          do
          {
            v94 = *(*(v10 + 72) + v92);
            glpPointerHashPut(a1[11], v94, v7, v91);
            glpPointerHashPut(a1[15], v94, v94, v95);
            v92 += 8;
          }

          while (v93 != v92);
        }
      }
    }

LABEL_73:
    v4 = (v4 + 1);
    if (v4 >= glpTopLevelNodeGetDefCount(v2))
    {
      return 1;
    }
  }

  if (Kind <= 46)
  {
    if (Kind != 45)
    {
      if (Kind != 46)
      {
        goto LABEL_85;
      }

      result = phase1ProcessVariableDeclaration(a1, v7);
LABEL_72:
      if (!result)
      {
        return result;
      }

      goto LABEL_73;
    }

    phase1ProcessFunctionPrototype(a1, v7);
    goto LABEL_73;
  }

  if (Kind != 47)
  {
    if (Kind != 48)
    {
      goto LABEL_85;
    }

    goto LABEL_73;
  }

  BaseType = glpVariableDeclarationGroupNodeGetBaseType(v7);
  if (BaseType)
  {
    v29 = BaseType;
    Name = glpStructTypeNodeGetName(BaseType);
    v32 = v31;
    SaType = glpASTNodeGetSaType(v29);
    v34 = glpStringHashGet(a1[10], Name, v32);
    if (v34)
    {
      if (!glpTypesEqual(v34, SaType))
      {
        v100 = a1[1];
        v107 = "-1";
        v108 = 0xEDA00000002;
        v109 = 0xFFFFFFFFLL;
        glpLogMessage(v100, 0, &v107, "Inconsistent declarations of struct type '%.*s'", v36, v37, v38, v39, v32);
        return 0;
      }
    }

    else
    {
      glpStringHashPut(a1[10], Name, v32, SaType, v35);
    }
  }

  if (!glpVariableDeclarationGroupNodeGetDeclarationCount(v7))
  {
    goto LABEL_73;
  }

  v65 = 0;
  while (1)
  {
    Declaration = glpVariableDeclarationGroupNodeGetDeclaration(v7, v65);
    result = phase1ProcessVariableDeclaration(a1, Declaration);
    if (!result)
    {
      return result;
    }

    if (++v65 >= glpVariableDeclarationGroupNodeGetDeclarationCount(v7))
    {
      goto LABEL_73;
    }
  }
}

uint64_t glpASTMergePhase2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 32))
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = *(v2 + 40);
      v6 = *(v5 + v3);
      if (v6)
      {
        v7 = glpPointerHashGet(*(a1 + 88), *(v5 + v3));
        if (*(v6 + 56))
        {
          goto LABEL_38;
        }

        v8 = *(a1 + 24);
        if (v8)
        {
          v9 = 1610612736;
        }

        else
        {
          v9 = 0x40000000;
        }

        if (v8 == 4)
        {
          v9 = 0x20000000;
        }

        if ((v10 = *(v6 + 48), *(a1 + 32)) && (v10 & v9) != 0 || (v10 & 0x100000000) != 0 && (v13 = *(v6 + 8)) != 0 && glpLayoutObjectFind(v13, 28))
        {
LABEL_38:
          if (!phase2AddDef(a1, v7))
          {
            break;
          }

          v11 = *(v6 + 80);
          if (v11)
          {
            v12 = glpPointerHashGet(*(a1 + 104), v11);
            if (!phase2AddDef(a1, v12))
            {
              break;
            }
          }
        }
      }

      ++v4;
      v3 += 32;
      if (v4 >= *(v2 + 32))
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    if (*(a1 + 16) >= 10 && (v14 = *(a1 + 72), *(v14 + 32)))
    {
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = *(v14 + 40);
        v18 = *(v17 + v15);
        if (v18)
        {
          v19 = glpPointerHashGet(*(a1 + 104), *(v17 + v15));
          if (*(v18 + 44))
          {
            v20 = v19;
            v21 = *(v18 + 56);
            if (v21)
            {
              if ((glpLayoutObjectFind(v21, 21) || glpLayoutObjectFind(*(v18 + 56), 23)) && !phase2AddDef(a1, v20))
              {
                break;
              }
            }
          }
        }

        ++v16;
        v15 += 32;
        if (v16 >= *(v14 + 32))
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
LABEL_31:
      v22 = glpStringHashGet(*(a1 + 48), "#main", 0x1057F56200000005uLL);
      if (v22)
      {
        v23 = v22;
        *(v22 + 128) = 1;
        v24 = glpPointerHashGet(*(a1 + 96), v22);
        v25 = phase2AddDef(a1, v24);
        *(v23 + 128) = 0;
        if (v25)
        {
          return *(a1 + 152);
        }
      }

      else
      {
        v27 = *(a1 + 8);
        v28 = glpLanguageToString(*(a1 + 24));
        v33[0] = "-1";
        v33[1] = 0xEDA00000002;
        v33[2] = 0xFFFFFFFFLL;
        glpLogMessage(v27, 0, v33, "No definition of main in %s shader", v29, v30, v31, v32, v28);
      }
    }
  }

  return -1;
}

uint64_t glpMergeRemapValue(uint64_t a1, char a2, unsigned int *a3, char *a4)
{
  v6 = *(a1 + 8 * glpPrecisionIndexFromSAFlags(a2) + 248);

  return glpRemapValue(v6, a3, a4);
}

uint64_t phase1ProcessVariableDeclaration(uint64_t *a1, uint64_t a2)
{
  Extra = glpVariableDeclarationNodeGetExtra(a2);
  v5 = glpStringHashGet(a1[5], *(Extra + 16), *(Extra + 24));
  if (!v5)
  {
    glpStringHashPut(a1[5], *(Extra + 16), *(Extra + 24), Extra, v6);
    glpPointerHashPut(a1[11], Extra, a2, v15);
    v16 = a1[15];
    v17 = Extra;
    v18 = Extra;
    goto LABEL_27;
  }

  v7 = v5;
  result = mergeTypes(a1, *(Extra + 32), *(Extra + 40), *Extra, (Extra + 96), *v5, (v5 + 96), v5, (v5 + 96));
  if (!result)
  {
    return result;
  }

  if (*(Extra + 48) != *(v7 + 48))
  {
    v19 = a1[1];
    v20 = *(Extra + 32);
    v21 = *(Extra + 40);
    v35 = "-1";
    v36 = 0xEDA00000002;
    v37 = 0xFFFFFFFFLL;
    glpLogMessage(v19, 0, &v35, "Multiple declarations of variable '%.*s' differ in qualification", v9, v10, v11, v12, v21);
    return 0;
  }

  v14 = *(Extra + 8);
  if (v14)
  {
    if (*(v7 + 8))
    {
      v9 = *(Extra + 8);
      v14 = *(v7 + 8);
LABEL_11:
      if (v9 != v14)
      {
        v22 = *a1;
        v35 = "-1";
        v36 = 0xEDA00000002;
        v37 = 0xFFFFFFFFLL;
        if (!glpLayoutObjectAppendMany(v22, 0, &v35, v14, v9))
        {
          v31 = a1[1];
          v32 = *(Extra + 32);
          v33 = *(Extra + 40);
          v35 = "-1";
          v36 = 0xEDA00000002;
          v37 = 0xFFFFFFFFLL;
          glpLogMessage(v31, 0, &v35, "Multiple declarations of variable '%.*s' conflict in layouts", v9, v10, v11, v12, v33);
          return 0;
        }
      }

      goto LABEL_13;
    }

    *(v7 + 8) = v14;
    v9 = *(Extra + 8);
    if (v9)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v23 = *(Extra + 72);
  if (v23)
  {
    v24 = *(v7 + 72);
    if (v24)
    {
      if (glpCompareValues(v23, *Extra, v24))
      {
        v25 = a1[1];
        v26 = *(Extra + 32);
        v27 = *(Extra + 40);
        v35 = "-1";
        v36 = 0xEDA00000002;
        v37 = 0xFFFFFFFFLL;
        glpLogMessage(v25, 0, &v35, "Multiple declarations of variable '%.*s' conflict in initializer", v9, v10, v11, v12, v27);
        return 0;
      }
    }

    else
    {
      *(v7 + 64) = *(Extra + 64);
      *(v7 + 72) = *(Extra + 72);
    }
  }

  if (!*(v7 + 72))
  {
    if (*(v7 + 56))
    {
      if (*(Extra + 56))
      {
        v28 = a1[1];
        v29 = *(Extra + 32);
        v30 = *(Extra + 40);
        v35 = "-1";
        v36 = 0xEDA00000002;
        v37 = 0xFFFFFFFFLL;
        glpLogMessage(v28, 0, &v35, "Multiple declarations of variable '%.*s' have initializers", v9, v10, v11, v12, v30);
        return 0;
      }

      v34 = 1;
    }

    else
    {
      v34 = *(Extra + 56) != 0;
    }

    *(v7 + 56) = v34;
  }

  v16 = a1[15];
  v17 = Extra;
  v18 = v7;
LABEL_27:
  glpPointerHashPut(v16, v17, v18, v13);
  return 1;
}

uint64_t phase1ProcessFunctionPrototype(uint64_t *a1, uint64_t a2)
{
  Extra = glpFunctionPrototypeNodeGetExtra(a2);
  v5 = glpStringHashGet(a1[6], *(Extra + 40), *(Extra + 48));
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = Extra;
  }

  glpStringHashPut(a1[6], *(Extra + 40), *(Extra + 48), v7, v6);
  if ((*(v7 + 10) & 2) != 0)
  {
    glpPointerHashPut(a1[12], v7, a2, v8);
  }

  result = glpPointerHashPut(a1[16], Extra, v7, v8);
  v11 = *(v7 + 72);
  if (v11)
  {
    result = glpPointerHashPut(a1[15], *(Extra + 72), v11, v10);
  }

  if (*(Extra + 88))
  {
    v12 = 0;
    do
    {
      result = glpPointerHashPut(a1[15], *(*(Extra + 80) + 8 * v12), *(*(v7 + 80) + 8 * v12), v10);
      ++v12;
    }

    while (v12 < *(Extra + 88));
  }

  return result;
}

uint64_t mergeTypes(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int **a8, unsigned int *a9)
{
  Kind = glpTypeGetKind(a4);
  if (Kind != glpTypeGetKind(a6) || (Kind & 0xFFFFFFFE) != 2)
  {
    if (!glpTypesEqual(a4, a6))
    {
      glpTypeHumanReadableDescription(a4, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, *a1);
      glpTypeHumanReadableDescription(a6, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, *a1);
      v31 = a1[1];
      v46 = "-1";
      v47 = 0xEDA00000002;
      v48 = 0xFFFFFFFFLL;
      v42 = a3;
      v32 = "Multiple declarations of '%.*s' have different types (%.*s and %.*s)";
      v33 = v31;
LABEL_10:
      glpLogMessage(v33, 0, &v46, v32, v23, v24, v25, v26, v42);
      return 0;
    }

    *a8 = a4;
    return 1;
  }

  v44 = a8;
  v18 = a9 + 1;
  if (Kind == 3)
  {
    ElementType = glpBankTypeGetElementType(a4);
    v20 = glpBankTypeGetElementType(a6);
    v45 = 0;
    result = mergeTypes(a1, a2, a3, ElementType, a5 + 1, v20, a7 + 1, &v45, v18);
    if (!result)
    {
      return result;
    }

    ElementCount = glpBankTypeGetElementCount(a4);
    v27 = glpBankTypeGetElementCount(a6);
    v28 = *a5;
    v29 = *a7;
    v30 = -1;
LABEL_17:
    if (ElementCount == -1)
    {
      if (v27 == -1)
      {
        if (v28 <= v29)
        {
          v38 = v29;
        }

        else
        {
          v38 = v28;
        }

        v27 = -1;
        goto LABEL_33;
      }

      if (v28 <= v27)
      {
        goto LABEL_24;
      }

      v33 = a1[1];
      v46 = "-1";
      v47 = 0xEDA00000002;
      v48 = 0xFFFFFFFFLL;
      v42 = v28;
    }

    else
    {
      if (v27 != -1)
      {
        if (ElementCount != v27)
        {
          v33 = a1[1];
          v46 = "-1";
          v47 = 0xEDA00000002;
          v48 = 0xFFFFFFFFLL;
          v42 = ElementCount;
          v32 = "Sizes (%u and %u) in multiple declarations of array '%.*s' differ";
          goto LABEL_10;
        }

LABEL_24:
        v38 = 0;
LABEL_33:
        v39 = *a1;
        if (Kind == 3)
        {
          Bank = glpBankTypeGetBank(a4);
          BankType = glpMakeBankType(v39, Bank, v45, v27);
        }

        else
        {
          BankType = glpMakeArrayType(*a1, v45, v27, v30);
        }

        *v44 = BankType;
        *a9 = v38;
        return 1;
      }

      if (v29 <= ElementCount)
      {
        v38 = 0;
        v27 = ElementCount;
        goto LABEL_33;
      }

      v33 = a1[1];
      v46 = "-1";
      v47 = 0xEDA00000002;
      v48 = 0xFFFFFFFFLL;
      v42 = v29;
    }

    v32 = "Implicit size (%u) of multiply-declared array '%.*s' exceeds specified size (%u)";
    goto LABEL_10;
  }

  v34 = glpArrayTypeGetElementType(a4);
  v35 = glpArrayTypeGetElementType(a6);
  v45 = 0;
  result = mergeTypes(a1, a2, a3, v34, a5 + 1, v35, a7 + 1, &v45, v18);
  if (result)
  {
    v43 = glpArrayTypeGetElementCount(a4);
    v27 = glpArrayTypeGetElementCount(a6);
    MaxElementCount = glpArrayTypeGetMaxElementCount(a4);
    v37 = glpArrayTypeGetMaxElementCount(a6);
    v28 = *a5;
    v29 = *a7;
    if (MaxElementCount == -1)
    {
      v30 = v37;
    }

    else
    {
      v30 = MaxElementCount;
    }

    ElementCount = v43;
    goto LABEL_17;
  }

  return result;
}

void *__phase1ProcessFunctionDefinition_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 32) + 8))(***(a1 + 32), 16, "subroutine implementations by type");
  v3 = **(a1 + 32);
  *v2 = 4;
  v2[1] = (*(v3 + 8))(*v3, 32, "Vector Storage (GLPASTNode *)");
  return v2;
}

uint64_t glpCGTopLevel(void *a1, uint64_t a2, uint64_t *a3)
{
  for (i = 20; i != 24; ++i)
  {
    Allocator = glpLinkerGetAllocator(a1[19]);
    v8 = *a3++;
    glpPackConstants(Allocator, v8, a1[i]);
  }

  if (glpTopLevelNodeGetDefCount(a2))
  {
    v9 = 0;
    do
    {
      Def = glpTopLevelNodeGetDef(a2, v9);
      if (Def)
      {
        v11 = Def;
        if (glpASTNodeGetKind(Def) == 51)
        {
          Prototype = glpFunctionDefinitionNodeGetPrototype(v11);
          Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
          if ((*(Extra + 10) & 0x10) != 0)
          {
            v17 = Extra;
            v18 = AddOp(a1[17], 0x4Bu, 0, 0, 0, v14, v15, v16, 0);
            v19 = glpLinkerPoolAlloc(a1[19]);
            v19[2] = v17;
            *v19 = *a1;
            v19[1] = v18;
            *a1 = v19;
          }
        }
      }

      ++v9;
    }

    while (v9 < glpTopLevelNodeGetDefCount(a2));
  }

  if (!glpTopLevelNodeGetDefCount(a2))
  {
LABEL_14:
    v22 = *a1;
    if (*a1)
    {
      do
      {
        v23 = *(v22[2] + 136);
        if (!v23)
        {
          abort();
        }

        *(v22[1] + 24) = *(v22[1] + 24) & 0x3FFFFFFFFFFFLL | (*(v23 + 88) << 46);
        v22 = *v22;
      }

      while (v22);
      if (*a1)
      {
        *a1 = 0;
      }
    }

    v24 = a1[3];
    if (*(v24 + 32))
    {
      for (j = 0; j < *(v24 + 32); ++j)
      {
        v26 = *(*(v24 + 40) + 16 * j);
        if (v26)
        {
          v27 = *v26;
          if (v26[1])
          {
            v28 = v27[3];
            if (HIWORD(v28) - WORD1(v28) == -1)
            {
              goto LABEL_30;
            }

            v29 = 0;
            v30 = HIWORD(v28) - WORD1(v28) + 1;
            do
            {
              if (!BitSetGetEquals(v26[1], v29))
              {
                v31 = *(a1[17] + 32);
                v32 = PPStreamChunkListChunkAtIndex(v31, v29 + *(*v26 + 26));
                PPStreamChunkListRemoveChunk(v31, v32);
              }

              ++v29;
            }

            while (v30 != v29);
            v27 = *v26;
          }

          if (v27)
          {
LABEL_30:
            PPStreamChunkListRemoveChunk(*(a1[17] + 80), v27);
          }
        }
      }
    }

    v33 = a1[4];
    if (!*(v33 + 32))
    {
LABEL_45:
      v42 = a1[17];
      if (*(v42 + 136) == 2)
      {
        PPStreamAddOption(v42, 12);
        v42 = a1[17];
      }

      PPStreamPackIndices(v42);
      return 0;
    }

    v34 = 0;
    while (1)
    {
      v35 = *(*(v33 + 40) + 16 * v34);
      if (v35)
      {
        v36 = *v35;
        if (v35[1])
        {
          v37 = v36[3];
          if (HIWORD(v37) - WORD1(v37) == -1)
          {
            goto LABEL_43;
          }

          v38 = 0;
          v39 = HIWORD(v37) - WORD1(v37) + 1;
          do
          {
            if (!BitSetGetEquals(v35[1], v38))
            {
              v40 = *(a1[17] + 56);
              v41 = PPStreamChunkListChunkAtIndex(v40, v38 + *(*v35 + 26));
              PPStreamChunkListRemoveChunk(v40, v41);
            }

            ++v38;
          }

          while (v39 != v38);
          v36 = *v35;
        }

        if (v36)
        {
LABEL_43:
          PPStreamChunkListRemoveChunk(*(a1[17] + 72), v36);
        }
      }

      if (++v34 >= *(v33 + 32))
      {
        goto LABEL_45;
      }
    }
  }

  v20 = 0;
  while (1)
  {
    v21 = glpTopLevelNodeGetDef(a2, v20);
    if (!glpCGNode(a1, v21))
    {
      return 0xFFFFFFFFLL;
    }

    if (++v20 >= glpTopLevelNodeGetDefCount(a2))
    {
      goto LABEL_14;
    }
  }
}

uint64_t glpCGNode(void *a1, uint64_t a2)
{
  if (a2)
  {
    Expr = a2;
    while (2)
    {
      v11 = glpASTNodeGetKind(Expr) - 16;
      result = 1;
      switch(v11)
      {
        case 0:

          return glpCGNegate(a1, Expr);
        case 1:

          return glpCGLogicalNot(a1, Expr);
        case 2:

          return glpCGBitwiseNot(a1, Expr);
        case 23:

          return glpCGAssign(a1, Expr);
        case 25:
        case 26:
        case 47:
          return result;
        case 27:

          return glpCGCommaExpr(a1, Expr);
        case 28:
          glpCGParameterDeclaration(a1, Expr);
          return 1;
        case 29:

          return glpCGFunctionPrototype(a1, Expr);
        case 30:

          return glpCGVariableDeclaration(a1, Expr);
        case 31:

          return glpCGVariableDeclarationGroup(a1, Expr);
        case 35:

          return glpCGFunctionDefinition(a1, Expr);
        case 41:
          glpCGInterfaceBlock(a1, Expr);
          return 1;
        case 49:
          Expr = glpExpressionStatementNodeGetExpr(Expr);
          if (!Expr)
          {
            return 1;
          }

          continue;
        case 50:

          return glpCGBlock(a1, Expr);
        case 51:

          return glpCGIfStatement(a1, Expr);
        case 52:

          return glpCGLoopStatement(a1, Expr);
        case 53:

          return glpCGSwitchStatement(a1, Expr);
        case 54:

          return glpCGCaseStatement(a1, Expr);
        case 55:

          return glpCGDefaultStatement(a1, v4, v5, v6, v7, v8, v9, v10);
        case 56:

          return glpCGBreakStatement(a1, v4, v5, v6, v7, v8, v9, v10);
        case 57:

          return glpCGContinueStatement(a1, v4, v5, v6, v7, v8, v9, v10);
        case 58:
          a1[16] = AddOp(a1[17], 0x4Fu, 0, 0, 0, v8, v9, v10, 0);
          return 1;
        case 59:
          glpCGReturnStatement(a1, v4, v5, v6, v7, v8, v9, v10);
          return 1;
        case 62:
          glpCGRawCallNode(a1, Expr);
          return 1;
        case 63:

          return glpCGSubroutineRawCallNode(a1, Expr);
        case 65:

          return glpCGLValue(a1, Expr);
        case 66:

          return glpCGRValue(a1, Expr);
        case 68:

          return glpCGPPStreamOpNode(a1, Expr);
        case 69:
          glpCGSubroutineUniformNode(a1, Expr);
          return 1;
        default:
          abort();
      }
    }
  }

  return 1;
}