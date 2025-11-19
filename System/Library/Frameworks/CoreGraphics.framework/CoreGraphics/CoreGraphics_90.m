float PDAcolordodgePDA(float *a1, float a2, float a3, float a4, float a5, float a6, double a7, double a8, double a9, float a10, float a11, float a12, float a13, float a14)
{
  v18 = a6 - a2;
  v19 = a6 - a3;
  v20 = a14 - a10;
  v21 = a14 * a14;
  v22 = 0.0;
  v23 = 0.0;
  if (v18 != 0.0)
  {
    if (v20 == a14)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = (v18 * v21) / (a14 - v20);
    }
  }

  v24 = a6 - a4;
  v25 = a14 - a11;
  if (v19 != 0.0)
  {
    if (v25 == a14)
    {
      v22 = 1.0;
    }

    else
    {
      v22 = (v19 * v21) / (a14 - v25);
    }
  }

  v26 = a6 - a5;
  v27 = a14 - a12;
  v28 = 0.0;
  v29 = 0.0;
  if (v24 != 0.0)
  {
    if (v27 == a14)
    {
      v29 = 1.0;
    }

    else
    {
      v29 = (v24 * v21) / (a14 - v27);
    }
  }

  v30 = a14 - a13;
  if (v26 != 0.0)
  {
    if (v30 == a14)
    {
      v28 = 1.0;
    }

    else
    {
      v28 = (v26 * v21) / (a14 - v30);
    }
  }

  if (a14 != 1.0)
  {
    v23 = v23 + (v18 * (1.0 - a14));
    v22 = v22 + (v19 * (1.0 - a14));
    v29 = v29 + (v24 * (1.0 - a14));
    v28 = v28 + (v26 * (1.0 - a14));
  }

  v31 = v23 + (v20 * (1.0 - a6));
  v32 = v22 + (v25 * (1.0 - a6));
  v33 = v29 + (v27 * (1.0 - a6));
  if (a6 == 1.0)
  {
    v31 = v23;
  }

  else
  {
    v22 = v32;
  }

  if (a6 == 1.0)
  {
    v34 = v29;
  }

  else
  {
    v34 = v33;
  }

  if (a6 == 1.0)
  {
    v35 = v28;
  }

  else
  {
    v35 = v28 + (v30 * (1.0 - a6));
  }

  v36 = (a6 + a14) - (a6 * a14);
  if (v31 > v36)
  {
    v31 = v36;
  }

  if (v22 > v36)
  {
    v22 = v36;
  }

  if (v34 > v36)
  {
    v34 = v36;
  }

  if (v35 > v36)
  {
    v35 = v36;
  }

  *a1 = v36 - v31;
  a1[1] = v36 - v22;
  result = v36 - v34;
  a1[2] = v36 - v34;
  a1[3] = v36 - v35;
  a1[4] = v36;
  return result;
}

float PDAcolorburnPDA(float *a1, float a2, float a3, float a4, float a5, float a6, double a7, double a8, double a9, float a10, float a11, float a12, float a13, float a14)
{
  v18 = a6 - a2;
  v19 = a6 - a3;
  v20 = a6 - a4;
  v21 = a6 - a5;
  v22 = a6 * a14;
  v23 = a6 * a14;
  v24 = a6 * a14;
  v25 = a6 * a14;
  v26 = a6 * a14;
  if (a14 != 1.0)
  {
    v23 = v22 + (v18 * (1.0 - a14));
    v24 = v22 + (v19 * (1.0 - a14));
    v25 = v22 + (v20 * (1.0 - a14));
    v26 = v22 + (v21 * (1.0 - a14));
  }

  v27 = a14 - a10;
  v28 = a14 - a11;
  v29 = a14 - a12;
  v30 = a14 - a13;
  if (a6 != 1.0)
  {
    v23 = v23 + (v27 * (1.0 - a6));
    v24 = v24 + (v28 * (1.0 - a6));
    v25 = v25 + (v29 * (1.0 - a6));
    v26 = v26 + (v30 * (1.0 - a6));
  }

  v31 = a6 - v18;
  if (v31 != 0.0)
  {
    if (v27 == 0.0 || (v23 = v23 - ((v31 * (a14 * a14)) / v27), v23 < 0.0))
    {
      v23 = 0.0;
    }
  }

  v32 = a6 - v19;
  if (v32 != 0.0)
  {
    if (v28 == 0.0 || (v24 = v24 - ((v32 * (a14 * a14)) / v28), v24 < 0.0))
    {
      v24 = 0.0;
    }
  }

  v33 = a6 - v20;
  if (v33 != 0.0)
  {
    if (v29 == 0.0 || (v25 = v25 - ((v33 * (a14 * a14)) / v29), v25 < 0.0))
    {
      v25 = 0.0;
    }
  }

  v34 = a6 - v21;
  if (v34 != 0.0)
  {
    if (v30 == 0.0 || (v26 = v26 - ((v34 * (a14 * a14)) / v30), v26 < 0.0))
    {
      v26 = 0.0;
    }
  }

  result = (a6 + a14) - v22;
  *a1 = result - v23;
  a1[1] = result - v24;
  a1[2] = result - v25;
  a1[3] = result - v26;
  a1[4] = result;
  return result;
}

float PDAhardlightPDA(float *a1, float a2, float a3, float a4, float a5, float a6, double a7, double a8, double a9, float a10, float a11, float a12, float a13, float a14)
{
  v18 = a6 - a2;
  v19 = a6 - a3;
  v20 = a6 - a4;
  v21 = a6 - a5;
  v22 = a14 - a11;
  v23 = a14 - a12;
  v24 = a14 - a13;
  v25 = (v18 * (a14 - a10)) + (v18 * (a14 - a10));
  v26 = (v19 * (a14 - a11)) + (v19 * (a14 - a11));
  v27 = (v20 * (a14 - a12)) + (v20 * (a14 - a12));
  v28 = (v21 * (a14 - a13)) + (v21 * (a14 - a13));
  v29 = a6 * a14;
  v30 = a14 * 0.5;
  v31 = 1.0 - a14;
  v32 = 1.0 - a6;
  v33 = (((1.0 - a6) * (a14 - a10)) + (v18 * (1.0 - a14))) + v25;
  v34 = a14 + 1.0;
  v35 = a6 + 1.0;
  v36 = ((((a6 + 1.0) * (a14 - a10)) + (v18 * (a14 + 1.0))) - v25) - (a6 * a14);
  if ((a14 - a10) <= (a14 * 0.5))
  {
    v36 = v33;
  }

  v37 = ((v32 * v22) + (v19 * v31)) + v26;
  v38 = (((v35 * v22) + (v19 * v34)) - v26) - v29;
  if (v22 <= v30)
  {
    v38 = v37;
  }

  v39 = ((v32 * v23) + (v20 * v31)) + v27;
  v40 = (((v35 * v23) + (v20 * v34)) - v27) - v29;
  if (v23 <= v30)
  {
    v40 = v39;
  }

  v41 = ((v32 * v24) + (v21 * v31)) + v28;
  v42 = (((v35 * v24) + (v21 * v34)) - v28) - v29;
  if (v24 <= v30)
  {
    v42 = v41;
  }

  v43 = (a6 + a14) - v29;
  *a1 = v43 - v36;
  a1[1] = v43 - v38;
  result = v43 - v40;
  a1[2] = v43 - v40;
  a1[3] = v43 - v42;
  a1[4] = v43;
  return result;
}

float32x4_t PDAsoftlightPDA(float32x4_t *a1, float32x2_t a2, float32_t a3, float a4, float a5, double a6, int32x2_t a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, float32x2_t a17, float a18, float a19, float a20)
{
  *a7.i32 = a20;
  v18 = vdup_lane_s32(*&a6, 0);
  a2.f32[1] = a3;
  v19 = vsub_f32(v18, a2);
  v20 = *&a6 - a4;
  v21 = *&a6 - a5;
  v22 = vdup_lane_s32(a7, 0);
  v23 = vsub_f32(v22, a17);
  v24 = a20 - a18;
  v25 = a20 - a19;
  if (*&a6 == 0.0)
  {
    v28.i64[0] = 0;
    v29 = 0.0;
    v30 = 0.0;
  }

  else
  {
    v26 = vmul_f32(v19, v23);
    v27 = vsub_f32(vadd_f32(v26, v26), vdiv_f32(vmul_f32(vmul_f32(v19, v19), vsub_f32(vadd_f32(v23, v23), v22)), v18));
    *v28.f32 = vbic_s8(v27, vcltz_f32(v27));
    v29 = ((v20 * v24) + (v20 * v24)) - (((v20 * v20) * ((v24 + v24) - a20)) / *&a6);
    v30 = 0.0;
    if (v29 < 0.0)
    {
      v29 = 0.0;
    }

    if ((((v21 * v25) + (v21 * v25)) - (((v21 * v21) * ((v25 + v25) - a20)) / *&a6)) >= 0.0)
    {
      v30 = ((v21 * v25) + (v21 * v25)) - (((v21 * v21) * ((v25 + v25) - a20)) / *&a6);
    }
  }

  if (a20 != 1.0)
  {
    *v28.f32 = vmla_n_f32(*v28.f32, v19, 1.0 - a20);
    v29 = v29 + (v20 * (1.0 - a20));
    v30 = v30 + (v21 * (1.0 - a20));
  }

  if (*&a6 != 1.0)
  {
    *v28.f32 = vmla_n_f32(*v28.f32, v23, 1.0 - *&a6);
    v29 = v29 + (v24 * (1.0 - *&a6));
    v30 = v30 + (v25 * (1.0 - *&a6));
  }

  v23.f32[0] = (*&a6 + a20) - (*&a6 * a20);
  v28.i64[1] = __PAIR64__(LODWORD(v30), LODWORD(v29));
  result = vsubq_f32(vdupq_lane_s32(v23, 0), v28);
  *a1 = result;
  a1[1].i32[0] = v23.i32[0];
  return result;
}

float PDAhuePDA(float *a1, float a2, float a3, float a4, float a5, float a6, double a7, double a8, double a9, float a10, float a11, float a12, float a13, float a14)
{
  v62 = *MEMORY[0x1E69E9840];
  v18 = a6 - a2;
  v19 = a6 - a3;
  v20 = a6 - a4;
  v21 = a6 - a5;
  v22 = a14 - a10;
  v23 = a14 - a11;
  v24 = a14 - a12;
  v25 = v18 * a14;
  v26 = v18 - (v18 * a14);
  v27 = v19 - (v19 * a14);
  v28 = v20 - (v20 * a14);
  v29 = v21 - (v21 * a14);
  if (a14 == 1.0)
  {
    v26 = 0.0;
  }

  else
  {
    v21 = v21 * a14;
  }

  if (a14 == 1.0)
  {
    v27 = 0.0;
    v28 = 0.0;
    v30 = 0.0;
  }

  else
  {
    v30 = v29;
  }

  if (a14 == 1.0)
  {
    v31 = v19;
  }

  else
  {
    v20 = v20 * a14;
    v31 = v19 * a14;
  }

  if (a14 == 1.0)
  {
    v25 = v18;
  }

  v32 = v22 * a6;
  v33 = v23 * a6;
  v34 = v24 * a6;
  v35 = (v24 + v28) - (v24 * a6);
  if (a6 == 1.0)
  {
    v32 = a14 - a10;
    v33 = a14 - a11;
    v34 = a14 - a12;
    v36 = v26;
  }

  else
  {
    v36 = (v22 + v26) - (v22 * a6);
  }

  if (a6 == 1.0)
  {
    v37 = v27;
  }

  else
  {
    v37 = (v23 + v27) - (v23 * a6);
  }

  if (a6 == 1.0)
  {
    v38 = v28;
  }

  else
  {
    v38 = v35;
  }

  if (a6 == 1.0)
  {
    v39 = v30;
  }

  else
  {
    v39 = ((a14 - a13) + v30) - ((a14 - a13) * a6);
  }

  v59 = v32;
  v60 = v33;
  v61 = v34;
  v40 = v32 < v33;
  v41 = v32 >= v33;
  if (v32 < v33)
  {
    v42 = v32;
  }

  else
  {
    v42 = v33;
  }

  if (v32 < v33)
  {
    v32 = v33;
  }

  if (v34 <= v32)
  {
    v43 = v41;
  }

  else
  {
    v43 = v40;
  }

  v44 = 2;
  if (v34 <= v32)
  {
    v45 = v40;
  }

  else
  {
    v45 = 2;
  }

  if (v34 < v42)
  {
    v46 = v40;
  }

  else
  {
    v44 = v41;
    v41 = v43;
    v46 = v45;
  }

  v47 = *(&v59 + v46);
  v48 = *(&v59 + v44);
  if (v47 <= v48)
  {
    *(&v59 + v46) = 0.0;
    *(&v59 + v41) = 0.0;
  }

  else
  {
    if (v25 >= v31)
    {
      v49 = v31;
    }

    else
    {
      v49 = v25;
    }

    if (v25 >= v31)
    {
      v50 = v25;
    }

    else
    {
      v50 = v31;
    }

    if (v20 > v50)
    {
      v51 = v20;
    }

    else
    {
      v51 = v50;
    }

    if (v20 >= v49)
    {
      v50 = v51;
    }

    else
    {
      v49 = v20;
    }

    v52 = v50 - v49;
    *(&v59 + v46) = v52;
    *(&v59 + v41) = (v52 / (v47 - v48)) * (*(&v59 + v41) - v48);
  }

  *(&v59 + v44) = 0.0;
  v53 = (((v31 - v60) * 0.59) + ((v25 - v59) * 0.3)) + ((v20 - v61) * 0.11);
  v54 = v59 + v53;
  v55 = v60 + v53;
  v56 = (a6 + a14) - (a6 * a14);
  v57 = v38 + (v61 + v53);
  *a1 = v56 - (v36 + v54);
  a1[1] = v56 - (v37 + v55);
  result = v56 - (v21 + v39);
  a1[2] = v56 - v57;
  a1[3] = result;
  a1[4] = v56;
  return result;
}

float PDAsaturationPDA(float *a1, float a2, float a3, float a4, float a5, float a6, double a7, double a8, double a9, float a10, float a11, float a12, float a13, float a14)
{
  v58 = *MEMORY[0x1E69E9840];
  v18 = a6 - a2;
  v19 = a6 - a3;
  v20 = a6 - a4;
  v21 = a6 - a5;
  v22 = a14 - a10;
  v23 = a14 - a11;
  v24 = a14 - a12;
  if (a14 == 1.0)
  {
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
  }

  else
  {
    v25 = v18 - (v18 * a14);
    v26 = v19 - (v19 * a14);
    v27 = v20 - (v20 * a14);
    v28 = v21 - (v21 * a14);
    v21 = v21 * a14;
    v20 = v20 * a14;
    v19 = v19 * a14;
    v18 = v18 * a14;
  }

  v29 = v22 * a6;
  v30 = v23 * a6;
  v31 = ((a14 - a13) + v28) - ((a14 - a13) * a6);
  if (a6 == 1.0)
  {
    v29 = a14 - a10;
    v30 = a14 - a11;
    v32 = a14 - a12;
  }

  else
  {
    v32 = v24 * a6;
  }

  if (a6 == 1.0)
  {
    v33 = v25;
  }

  else
  {
    v33 = (v22 + v25) - (v22 * a6);
  }

  if (a6 == 1.0)
  {
    v34 = v26;
  }

  else
  {
    v34 = (v23 + v26) - (v23 * a6);
  }

  if (a6 == 1.0)
  {
    v35 = v27;
  }

  else
  {
    v35 = (v24 + v27) - (v24 * a6);
  }

  if (a6 == 1.0)
  {
    v31 = v28;
  }

  v55 = v18;
  v56 = v19;
  v57 = v20;
  v36 = v18 >= v19;
  if (v18 < v19)
  {
    v37 = v18;
  }

  else
  {
    v37 = v19;
  }

  if (v18 < v19)
  {
    v38 = v19;
  }

  else
  {
    v38 = v18;
  }

  if (v20 <= v38)
  {
    v39 = v18 >= v19;
  }

  else
  {
    v39 = v18 < v19;
  }

  v40 = 2;
  if (v20 <= v38)
  {
    v41 = v18 < v19;
  }

  else
  {
    v41 = 2;
  }

  if (v20 < v37)
  {
    v42 = v18 < v19;
  }

  else
  {
    v40 = v18 >= v19;
    v36 = v39;
    v42 = v41;
  }

  v43 = *(&v55 + v42);
  v44 = *(&v55 + v40);
  if (v43 <= v44)
  {
    *(&v55 + v42) = 0.0;
    *(&v55 + v36) = 0.0;
  }

  else
  {
    if (v29 >= v30)
    {
      v45 = v30;
    }

    else
    {
      v45 = v29;
    }

    if (v29 >= v30)
    {
      v46 = v29;
    }

    else
    {
      v46 = v30;
    }

    if (v32 > v46)
    {
      v47 = v32;
    }

    else
    {
      v47 = v46;
    }

    if (v32 >= v45)
    {
      v46 = v47;
    }

    else
    {
      v45 = v32;
    }

    v48 = v46 - v45;
    *(&v55 + v42) = v48;
    *(&v55 + v36) = (v48 / (v43 - v44)) * (*(&v55 + v36) - v44);
  }

  *(&v55 + v40) = 0.0;
  v49 = (((v19 - v56) * 0.59) + ((v18 - v55) * 0.3)) + ((v20 - v57) * 0.11);
  v50 = v55 + v49;
  v51 = v56 + v49;
  v52 = (a6 + a14) - (a6 * a14);
  v53 = v35 + (v57 + v49);
  *a1 = v52 - (v33 + v50);
  a1[1] = v52 - (v34 + v51);
  result = v52 - (v21 + v31);
  a1[2] = v52 - v53;
  a1[3] = result;
  a1[4] = v52;
  return result;
}

float PDAluminosityPDA(float *a1, float a2, float a3, float a4, float a5, float a6, double a7, double a8, double a9, float a10, float a11, float a12, float a13, float a14)
{
  v18 = a6 - a2;
  v19 = a6 - a3;
  v20 = a6 - a4;
  v21 = a14 - a10;
  v22 = a14 - a11;
  v23 = a14 - a12;
  v24 = a14 - a13;
  v25 = v18 - (v18 * a14);
  v26 = v19 - (v19 * a14);
  v27 = v20 - (v20 * a14);
  v28 = (a6 - a5) - ((a6 - a5) * a14);
  if (a14 == 1.0)
  {
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
  }

  else
  {
    v20 = v20 * a14;
    v19 = v19 * a14;
    v18 = v18 * a14;
  }

  v29 = (v21 + v25) - (v21 * a6);
  v30 = (v22 + v26) - (v22 * a6);
  v31 = (v23 + v27) - (v23 * a6);
  v32 = (v24 + v28) - (v24 * a6);
  if (a6 == 1.0)
  {
    v29 = v25;
    v33 = v26;
  }

  else
  {
    v21 = v21 * a6;
    v22 = v22 * a6;
    v23 = v23 * a6;
    v24 = v24 * a6;
    v33 = v30;
  }

  if (a6 == 1.0)
  {
    v34 = v27;
  }

  else
  {
    v34 = v31;
  }

  if (a6 != 1.0)
  {
    v28 = v32;
  }

  v35 = (((v22 - v19) * 0.59) + ((v21 - v18) * 0.3)) + ((v23 - v20) * 0.11);
  v36 = (a6 + a14) - (a6 * a14);
  *a1 = v36 - (v29 + (v18 + v35));
  a1[1] = v36 - (v33 + (v19 + v35));
  result = v36 - (v34 + (v20 + v35));
  a1[2] = result;
  a1[3] = v36 - (v24 + v28);
  a1[4] = v36;
  return result;
}

void CMYKf_mark_constmask(uint64_t a1, uint64_t a2, double a3, float32x4_t a4, float32x4_t a5, int32x4_t a6, double a7, float32x4_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16 = *(a1 + 48);
  v17 = *(a1 + 136);
  v18 = *(a1 + 96);
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 1.0;
  }

  v20 = *(a1 + 12);
  v21 = *(a1 + 16);
  if (v16)
  {
    v22 = *(a1 + 32) >> 2;
    v23 = (v16 + 4 * v22 * v21 + 4 * v20);
    v24 = 1;
    if (!v17)
    {
      return;
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v24 = 0;
    if (!v17)
    {
      return;
    }
  }

  v25 = *(a1 + 4);
  v26 = v22 - v25;
  if (v16)
  {
    v27 = v22 - v25;
  }

  else
  {
    v27 = v22;
  }

  v28 = *(a1 + 8);
  v29 = *(a1 + 28) >> 4;
  v30 = **(a1 + 88);
  v31 = *(a1 + 40) + 16 * v29 * v21 + 16 * v20;
  v32 = *(a1 + 124);
  v33 = v17 + *(a1 + 108) * v32 + *(a1 + 104);
  v34 = v32 - v25;
  v35 = v29 - v25;
  v329 = v30;
  v328 = v35;
  v36 = v34;
  v37 = v25;
  v38 = v27;
  switch(a2)
  {
    case 0:
      if (v16)
      {
        v39 = 4 * v24;
        do
        {
          v40 = v25;
          do
          {
            v41 = *v33;
            if (*v33)
            {
              if (v41 == 255)
              {
                *v31 = 0;
                *(v31 + 8) = 0;
                v42 = 0.0;
              }

              else
              {
                v43 = (v41 ^ 0xFFu) * 0.0039216;
                *v31 = vmulq_n_f32(*v31, v43);
                v42 = v43 * *v23;
              }

              *v23 = v42;
            }

            ++v33;
            v31 += 16;
            v23 = (v23 + v39);
            --v40;
          }

          while (v40);
          v33 += v34;
          v31 += 16 * v35;
          v23 += v27;
          --v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v257 = v25;
          do
          {
            v258 = *v33;
            if (*v33)
            {
              if (v258 == 255)
              {
                *v31 = 0;
                *(v31 + 8) = 0;
              }

              else
              {
                *v31 = vmulq_n_f32(*v31, (v258 ^ 0xFFu) * 0.0039216);
              }
            }

            ++v33;
            v31 += 16;
            --v257;
          }

          while (v257);
          v33 += v34;
          v31 += 16 * v35;
          --v28;
        }

        while (v28);
      }

      return;
    case 1:
      v143 = v33 & 3;
      if (!v16)
      {
        v259 = -1 << (8 * v143);
        if ((v33 & 3) != 0)
        {
          v260 = v33 & 0xFC;
        }

        else
        {
          v260 = v33;
        }

        if ((v33 & 3) != 0)
        {
          v261 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v259 = -1;
          v261 = v33;
        }

        if ((v33 & 3) != 0)
        {
          v262 = (v31 - 16 * (v33 & 3));
        }

        else
        {
          v262 = v31;
        }

        if ((v33 & 3) != 0)
        {
          v263 = v143 + v25;
        }

        else
        {
          v263 = v25;
        }

        if (((v263 + v260) & 3) != 0)
        {
          v264 = 4 - ((v263 + v260) & 3);
          v143 += v264;
          v265 = 0xFFFFFFFF >> (8 * v264);
          if (v263 >= 4)
          {
            v266 = v265;
          }

          else
          {
            v266 = 0;
          }

          if (v263 >= 4)
          {
            v265 = -1;
          }

          v259 &= v265;
        }

        else
        {
          v266 = 0;
        }

        v317 = v34 - v143;
        v318 = v263 >> 2;
        v319 = v35 - v143;
        while (1)
        {
          v320 = *v261 & v259;
          v321 = v318;
          v322 = v266;
          if (!v320)
          {
            goto LABEL_532;
          }

LABEL_530:
          if (v320 == -1)
          {
            break;
          }

          while (1)
          {
            if (v320)
            {
              v324 = v30;
              if (v320 != 255)
              {
                v324 = vmlaq_n_f32(vmulq_n_f32(v30, v320 * 0.0039216), *v262, 1.0 - (v320 * 0.0039216));
              }

              *v262 = v324;
            }

            if (BYTE1(v320))
            {
              v325 = v30;
              if (BYTE1(v320) != 255)
              {
                v325 = vmlaq_n_f32(vmulq_n_f32(v30, BYTE1(v320) * 0.0039216), v262[1], 1.0 - (BYTE1(v320) * 0.0039216));
              }

              v262[1] = v325;
            }

            if (BYTE2(v320))
            {
              v326 = v30;
              if (BYTE2(v320) != 255)
              {
                v326 = vmlaq_n_f32(vmulq_n_f32(v30, BYTE2(v320) * 0.0039216), v262[2], 1.0 - (BYTE2(v320) * 0.0039216));
              }

              v262[2] = v326;
            }

            v327 = HIBYTE(v320);
            if (v327 == 255)
            {
              goto LABEL_550;
            }

            if (v327)
            {
              v262[3] = vmlaq_n_f32(vmulq_n_f32(v30, v327 * 0.0039216), v262[3], 1.0 - (v327 * 0.0039216));
            }

LABEL_532:
            while (1)
            {
              v323 = v321;
              v262 += 4;
              --v321;
              ++v261;
              if (v323 < 2)
              {
                break;
              }

              v320 = *v261;
              if (*v261)
              {
                goto LABEL_530;
              }
            }

            if (!v322)
            {
              break;
            }

            v322 = 0;
            v320 = *v261 & v266;
          }

          v261 = (v261 + v317);
          v262 += v319;
          if (!--v28)
          {
            return;
          }
        }

        *v262 = v30;
        v262[1] = v30;
        v262[2] = v30;
LABEL_550:
        v262[3] = v30;
        goto LABEL_532;
      }

      v144 = -1 << (8 * v143);
      v145 = (v31 - 16 * (v33 & 3));
      if ((v33 & 3) != 0)
      {
        v146 = v33 & 0xFC;
      }

      else
      {
        v146 = v33;
      }

      if ((v33 & 3) != 0)
      {
        v147 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v144 = -1;
        v147 = v33;
      }

      if ((v33 & 3) != 0)
      {
        v148 = &v23[-(v33 & 3)];
      }

      else
      {
        v148 = v23;
      }

      if ((v33 & 3) != 0)
      {
        v149 = v143 + v25;
      }

      else
      {
        v145 = v31;
        v149 = v25;
      }

      if (((v149 + v146) & 3) != 0)
      {
        v150 = 4 - ((v149 + v146) & 3);
        v143 += v150;
        v151 = 0xFFFFFFFF >> (8 * v150);
        if (v149 >= 4)
        {
          v152 = v151;
        }

        else
        {
          v152 = 0;
        }

        if (v149 >= 4)
        {
          v151 = -1;
        }

        v144 &= v151;
      }

      else
      {
        v152 = 0;
      }

      v290 = v34 - v143;
      v291 = v35 - v143;
      v292 = v149 >> 2;
      v293 = v26 - v143;
      do
      {
        v294 = *v147 & v144;
        v295 = v292;
        v296 = v152;
        if (!v294)
        {
          goto LABEL_481;
        }

LABEL_479:
        if (v294 == -1)
        {
          *v145 = v30;
          *v148 = v19;
          v145[1] = v30;
          v148[1] = v19;
          v145[2] = v30;
          v148[2] = v19;
LABEL_502:
          v145[3] = v30;
          v148[3] = v19;
          goto LABEL_481;
        }

        while (1)
        {
          if (v294)
          {
            if (v294 == 255)
            {
              *v145 = v30;
              v298 = v19;
            }

            else
            {
              v299 = v294 * 0.0039216;
              *v145 = vmlaq_n_f32(vmulq_n_f32(v30, v299), *v145, 1.0 - v299);
              v298 = (v19 * v299) + (*v148 * (1.0 - v299));
            }

            *v148 = v298;
          }

          if (BYTE1(v294))
          {
            if (BYTE1(v294) == 255)
            {
              v145[1] = v30;
              v300 = v19;
            }

            else
            {
              v301 = BYTE1(v294) * 0.0039216;
              v145[1] = vmlaq_n_f32(vmulq_n_f32(v30, v301), v145[1], 1.0 - v301);
              v300 = (v19 * v301) + (v148[1] * (1.0 - v301));
            }

            v148[1] = v300;
          }

          if (BYTE2(v294))
          {
            if (BYTE2(v294) == 255)
            {
              v145[2] = v30;
              v302 = v19;
            }

            else
            {
              v303 = BYTE2(v294) * 0.0039216;
              v145[2] = vmlaq_n_f32(vmulq_n_f32(v30, v303), v145[2], 1.0 - v303);
              v302 = (v19 * v303) + (v148[2] * (1.0 - v303));
            }

            v148[2] = v302;
          }

          v304 = HIBYTE(v294);
          if (v304 == 255)
          {
            goto LABEL_502;
          }

          if (v304)
          {
            v305 = v304 * 0.0039216;
            v145[3] = vmlaq_n_f32(vmulq_n_f32(v30, v305), v145[3], 1.0 - v305);
            v148[3] = (v19 * v305) + (v148[3] * (1.0 - v305));
          }

LABEL_481:
          while (1)
          {
            v297 = v295;
            v145 += 4;
            v148 += 4;
            --v295;
            ++v147;
            if (v297 < 2)
            {
              break;
            }

            v294 = *v147;
            if (*v147)
            {
              goto LABEL_479;
            }
          }

          if (!v296)
          {
            break;
          }

          v296 = 0;
          v294 = *v147 & v152;
        }

        v147 = (v147 + v290);
        v145 += v291;
        v148 += v293;
        --v28;
      }

      while (v28);
      return;
    case 2:
      *&a3 = 1.0 - v19;
      v115 = v33 & 3;
      if (v16)
      {
        v116 = -1 << (8 * v115);
        v117 = (v31 - 16 * (v33 & 3));
        if ((v33 & 3) != 0)
        {
          v118 = v33 & 0xFC;
        }

        else
        {
          v118 = v33;
        }

        if ((v33 & 3) != 0)
        {
          v119 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v116 = -1;
          v119 = v33;
        }

        if ((v33 & 3) != 0)
        {
          v120 = &v23[-(v33 & 3)];
        }

        else
        {
          v120 = v23;
        }

        if ((v33 & 3) != 0)
        {
          v121 = v115 + v25;
        }

        else
        {
          v117 = v31;
          v121 = v25;
        }

        if (((v121 + v118) & 3) != 0)
        {
          v122 = 4 - ((v121 + v118) & 3);
          v115 += v122;
          v123 = 0xFFFFFFFF >> (8 * v122);
          if (v121 >= 4)
          {
            v124 = v123;
          }

          else
          {
            v124 = 0;
          }

          if (v121 >= 4)
          {
            v123 = -1;
          }

          v116 &= v123;
        }

        else
        {
          v124 = 0;
        }

        v271 = v34 - v115;
        v272 = v35 - v115;
        v273 = v121 >> 2;
        v274 = vdupq_lane_s32(*&a3, 0);
        v275 = v26 - v115;
        while (1)
        {
          v276 = *v119 & v116;
          v277 = v273;
          v278 = v124;
          if (!v276)
          {
            goto LABEL_460;
          }

LABEL_458:
          if (v276 == -1)
          {
            break;
          }

          while (1)
          {
            if (v276)
            {
              v281 = v276 * 0.0039216;
              v282 = 1.0 - (v19 * v281);
              *v117 = vmlaq_n_f32(vmulq_n_f32(v30, v281), *v117, v282);
              *v120 = (v19 * v281) + (*v120 * v282);
            }

            if ((v276 & 0xFF00) != 0)
            {
              v283 = BYTE1(v276) * 0.0039216;
              v284 = 1.0 - (v19 * v283);
              v117[1] = vmlaq_n_f32(vmulq_n_f32(v30, v283), v117[1], v284);
              v120[1] = (v19 * v283) + (v120[1] * v284);
            }

            if ((v276 & 0xFF0000) != 0)
            {
              v285 = BYTE2(v276) * 0.0039216;
              v286 = 1.0 - (v19 * v285);
              v117[2] = vmlaq_n_f32(vmulq_n_f32(v30, v285), v117[2], v286);
              v120[2] = (v19 * v285) + (v120[2] * v286);
            }

            v287 = HIBYTE(v276);
            if (v287)
            {
              v288 = v287 * 0.0039216;
              v289 = 1.0 - (v19 * v288);
              v117[3] = vmlaq_n_f32(vmulq_n_f32(v30, v288), v117[3], v289);
              v279 = (v19 * v288) + (v120[3] * v289);
              goto LABEL_473;
            }

LABEL_460:
            while (1)
            {
              v280 = v277;
              v117 += 4;
              v120 += 4;
              --v277;
              ++v119;
              if (v280 < 2)
              {
                break;
              }

              v276 = *v119;
              if (*v119)
              {
                goto LABEL_458;
              }
            }

            if (!v278)
            {
              break;
            }

            v278 = 0;
            v276 = *v119 & v124;
          }

          v119 = (v119 + v271);
          v117 += v272;
          v120 += v275;
          if (!--v28)
          {
            return;
          }
        }

        *v117 = vmlaq_f32(v30, v274, *v117);
        *v120 = v19 + (*v120 * *&a3);
        v117[1] = vmlaq_f32(v30, v274, v117[1]);
        v120[1] = v19 + (v120[1] * *&a3);
        v117[2] = vmlaq_f32(v30, v274, v117[2]);
        v120[2] = v19 + (v120[2] * *&a3);
        v117[3] = vmlaq_f32(v30, v274, v117[3]);
        v279 = v19 + (v120[3] * *&a3);
LABEL_473:
        v120[3] = v279;
        goto LABEL_460;
      }

      v245 = -1 << (8 * v115);
      if ((v33 & 3) != 0)
      {
        v246 = v33 & 0xFC;
      }

      else
      {
        v246 = v33;
      }

      if ((v33 & 3) != 0)
      {
        v247 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v245 = -1;
        v247 = v33;
      }

      if ((v33 & 3) != 0)
      {
        v248 = (v31 - 16 * (v33 & 3));
      }

      else
      {
        v248 = v31;
      }

      if ((v33 & 3) != 0)
      {
        v249 = v115 + v25;
      }

      else
      {
        v249 = v25;
      }

      if (((v249 + v246) & 3) != 0)
      {
        v250 = 4 - ((v249 + v246) & 3);
        v115 += v250;
        v251 = 0xFFFFFFFF >> (8 * v250);
        if (v249 >= 4)
        {
          v252 = v251;
        }

        else
        {
          v252 = 0;
        }

        if (v249 >= 4)
        {
          v251 = -1;
        }

        v245 &= v251;
      }

      else
      {
        v252 = 0;
      }

      v306 = v34 - v115;
      v307 = v249 >> 2;
      v308 = vdupq_lane_s32(*&a3, 0);
      v309 = v35 - v115;
      do
      {
        v310 = *v247 & v245;
        v311 = v307;
        v312 = v252;
        if (!v310)
        {
          goto LABEL_512;
        }

LABEL_510:
        if (v310 == -1)
        {
          v313 = vmlaq_f32(v30, v308, v248[1]);
          *v248 = vmlaq_f32(v30, v308, *v248);
          v248[1] = v313;
          v314 = vmlaq_f32(v30, v308, v248[3]);
          v248[2] = vmlaq_f32(v30, v308, v248[2]);
          v248[3] = v314;
          goto LABEL_512;
        }

        while (1)
        {
          if (v310)
          {
            *v248 = vmlaq_n_f32(vmulq_n_f32(v30, v310 * 0.0039216), *v248, 1.0 - (v19 * (v310 * 0.0039216)));
          }

          if ((v310 & 0xFF00) != 0)
          {
            v248[1] = vmlaq_n_f32(vmulq_n_f32(v30, BYTE1(v310) * 0.0039216), v248[1], 1.0 - (v19 * (BYTE1(v310) * 0.0039216)));
          }

          if ((v310 & 0xFF0000) != 0)
          {
            v248[2] = vmlaq_n_f32(vmulq_n_f32(v30, BYTE2(v310) * 0.0039216), v248[2], 1.0 - (v19 * (BYTE2(v310) * 0.0039216)));
          }

          v316 = HIBYTE(v310);
          if (v316)
          {
            v248[3] = vmlaq_n_f32(vmulq_n_f32(v30, v316 * 0.0039216), v248[3], 1.0 - (v19 * (v316 * 0.0039216)));
          }

LABEL_512:
          while (1)
          {
            v315 = v311;
            v248 += 4;
            --v311;
            ++v247;
            if (v315 < 2)
            {
              break;
            }

            v310 = *v247;
            if (*v247)
            {
              goto LABEL_510;
            }
          }

          if (!v312)
          {
            break;
          }

          v312 = 0;
          v310 = *v247 & v252;
        }

        v247 = (v247 + v306);
        v248 += v309;
        --v28;
      }

      while (v28);
      return;
    case 3:
      v130 = 4 * v24;
      do
      {
        v131 = v25;
        do
        {
          v132 = *v33;
          if (*v33)
          {
            if (v132 == 255)
            {
              v133 = v19 * *v23;
              *v31 = vmulq_n_f32(v30, *v23);
            }

            else
            {
              v134 = v132 * 0.0039216;
              v135 = *v23;
              v136 = v134 * *v23;
              v137 = 1.0 - v134;
              *v31 = vmlaq_n_f32(vmulq_n_f32(v30, v136), *v31, v137);
              v133 = (v19 * v136) + (v135 * v137);
            }

            *v23 = v133;
          }

          ++v33;
          v31 += 16;
          v23 = (v23 + v130);
          --v131;
        }

        while (v131);
        v33 += v34;
        v31 += 16 * v35;
        v23 += v27;
        --v28;
      }

      while (v28);
      return;
    case 4:
      v85 = 4 * v24;
      do
      {
        v86 = v25;
        do
        {
          v87 = *v33;
          if (*v33)
          {
            if (v87 == 255)
            {
              v88 = 1.0 - *v23;
              v89 = v19 * v88;
              *v31 = vmulq_n_f32(v30, v88);
            }

            else
            {
              v90 = v87 * 0.0039216;
              v91 = *v23;
              v92 = v90 * (1.0 - *v23);
              v93 = 1.0 - v90;
              *v31 = vmlaq_n_f32(vmulq_n_f32(v30, v92), *v31, v93);
              v89 = (v19 * v92) + (v91 * v93);
            }

            *v23 = v89;
          }

          ++v33;
          v31 += 16;
          v23 = (v23 + v85);
          --v86;
        }

        while (v86);
        v33 += v34;
        v31 += 16 * v35;
        v23 += v27;
        --v28;
      }

      while (v28);
      return;
    case 5:
      v168 = 4 * v24;
      do
      {
        v169 = v25;
        do
        {
          if (*v33)
          {
            v170 = *v23;
            v171 = *v33 * 0.0039216;
            v172 = 1.0 - (v19 * v171);
            *v31 = vmlaq_n_f32(vmulq_n_f32(*v31, v172), vmulq_n_f32(v30, v171), *v23);
            *v23 = (v172 * v170) + ((v19 * v171) * v170);
          }

          ++v33;
          v31 += 16;
          v23 = (v23 + v168);
          --v169;
        }

        while (v169);
        v33 += v34;
        v31 += 16 * v35;
        v23 += v27;
        --v28;
      }

      while (v28);
      return;
    case 6:
      v187 = 4 * v24;
      while (1)
      {
        v188 = v25;
        do
        {
          v189 = *v33;
          if (!*v33)
          {
            goto LABEL_282;
          }

          v190 = *v23;
          v191 = 1.0 - *v23;
          if (v191 >= 1.0)
          {
            v194 = v189 * 0.0039216;
            v193 = v19 * v194;
            *v31 = vmulq_n_f32(v30, v194);
          }

          else
          {
            if (v191 <= 0.0)
            {
              goto LABEL_282;
            }

            v192 = v189 * 0.0039216;
            *v31 = vmlaq_n_f32(*v31, vmulq_n_f32(v30, v192), v191);
            v193 = v190 + ((v19 * v192) * v191);
          }

          *v23 = v193;
LABEL_282:
          ++v33;
          v31 += 16;
          v23 = (v23 + v187);
          --v188;
        }

        while (v188);
        v33 += v34;
        v31 += 16 * v35;
        v23 += v27;
        if (!--v28)
        {
          return;
        }
      }

    case 7:
      if (v16)
      {
        v138 = 4 * v24;
        do
        {
          v139 = v25;
          do
          {
            v140 = *v33;
            if (*v33)
            {
              if (v140 == 255)
              {
                v141 = v19 * *v31;
                v142 = v19;
              }

              else
              {
                v142 = (v19 * (v140 * 0.0039216)) + (1.0 - (v140 * 0.0039216));
                v141 = v142 * *v31;
              }

              *v31 = v141;
              *(v31 + 4) = vmul_n_f32(*(v31 + 4), v142);
              *(v31 + 12) = v142 * *(v31 + 12);
              *v23 = v142 * *v23;
            }

            ++v33;
            v31 += 16;
            v23 = (v23 + v138);
            --v139;
          }

          while (v139);
          v33 += v34;
          v31 += 16 * v35;
          v23 += v27;
          --v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v253 = v25;
          do
          {
            v254 = *v33;
            if (*v33)
            {
              if (v254 == 255)
              {
                v255 = v19 * *v31;
                v256 = v19;
              }

              else
              {
                v256 = (v19 * (v254 * 0.0039216)) + (1.0 - (v254 * 0.0039216));
                v255 = v256 * *v31;
              }

              *v31 = v255;
              *(v31 + 4) = vmul_n_f32(*(v31 + 4), v256);
              *(v31 + 12) = v256 * *(v31 + 12);
            }

            ++v33;
            v31 += 16;
            --v253;
          }

          while (v253);
          v33 += v34;
          v31 += 16 * v35;
          --v28;
        }

        while (v28);
      }

      return;
    case 8:
      v206 = 1.0 - v19;
      if (v16)
      {
        v207 = 4 * v24;
        do
        {
          v208 = v25;
          do
          {
            v209 = *v33;
            if (*v33)
            {
              if (v209 == 255)
              {
                v210 = v206 * *v31;
                v211 = 1.0 - v19;
              }

              else
              {
                v211 = (v19 * (v209 * -0.0039216)) + 1.0;
                v210 = v211 * *v31;
              }

              *v31 = v210;
              *(v31 + 4) = vmul_n_f32(*(v31 + 4), v211);
              *(v31 + 12) = v211 * *(v31 + 12);
              *v23 = v211 * *v23;
            }

            ++v33;
            v31 += 16;
            v23 = (v23 + v207);
            --v208;
          }

          while (v208);
          v33 += v34;
          v31 += 16 * v35;
          v23 += v27;
          --v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v267 = v25;
          do
          {
            v268 = *v33;
            if (*v33)
            {
              if (v268 == 255)
              {
                v269 = v206 * *v31;
                v270 = 1.0 - v19;
              }

              else
              {
                v270 = (v19 * (v268 * -0.0039216)) + 1.0;
                v269 = v270 * *v31;
              }

              *v31 = v269;
              *(v31 + 4) = vmul_n_f32(*(v31 + 4), v270);
              *(v31 + 12) = v270 * *(v31 + 12);
            }

            ++v33;
            v31 += 16;
            --v267;
          }

          while (v267);
          v33 += v34;
          v31 += 16 * v35;
          --v28;
        }

        while (v28);
      }

      return;
    case 9:
      v99 = 4 * v24;
      do
      {
        v100 = v25;
        do
        {
          if (*v33)
          {
            v101 = *v33 * 0.0039216;
            v102 = *v23;
            v103 = 1.0 - *v23;
            v104 = (1.0 - v101) + (v19 * v101);
            *v31 = vmlaq_n_f32(vmulq_n_f32(*v31, v104), vmulq_n_f32(v30, v101), v103);
            *v23 = (v104 * v102) + ((v19 * v101) * v103);
          }

          ++v33;
          v31 += 16;
          v23 = (v23 + v99);
          --v100;
        }

        while (v100);
        v33 += v34;
        v31 += 16 * v35;
        v23 += v27;
        --v28;
      }

      while (v28);
      return;
    case 10:
      v200 = 4 * v24;
      do
      {
        v201 = v25;
        do
        {
          if (*v33)
          {
            v202 = *v23;
            v203 = *v33 * 0.0039216;
            v204 = 1.0 - *v23;
            v205 = 1.0 - (v19 * v203);
            *v31 = vmlaq_n_f32(vmulq_n_f32(*v31, v205), vmulq_n_f32(v30, v203), v204);
            *v23 = (v205 * v202) + ((v19 * v203) * v204);
          }

          ++v33;
          v31 += 16;
          v23 = (v23 + v200);
          --v201;
        }

        while (v201);
        v33 += v34;
        v31 += 16 * v35;
        v23 += v27;
        --v28;
      }

      while (v28);
      return;
    case 11:
      if (v16)
      {
        v71 = 4 * v24;
        do
        {
          v72 = v25;
          do
          {
            if (*v33)
            {
              v73 = *v33 * 0.0039216;
              v74 = v30.f32[0] * v73;
              v75 = v30.f32[1] * v73;
              v76 = v30.f32[2] * v73;
              v77 = v30.f32[3] * v73;
              v78 = v19 * v73;
              v79 = (v78 - v74) + (*v23 - *v31);
              v80 = v78 + *v23;
              if (v80 > 1.0)
              {
                v80 = 1.0;
              }

              v81 = (v78 - v75) + (*v23 - *(v31 + 4));
              *v31 = v80 - v79;
              v82 = *(v31 + 12);
              v83 = (v78 - v76) + (*v23 - *(v31 + 8));
              *(v31 + 4) = v80 - v81;
              v84 = *v23 - v82;
              *(v31 + 8) = v80 - v83;
              *v23 = v80;
              *(v31 + 12) = v80 - ((v78 - v77) + v84);
            }

            ++v33;
            v31 += 16;
            v23 = (v23 + v71);
            --v72;
          }

          while (v72);
          v33 += v34;
          v31 += 16 * v35;
          v23 += v27;
          --v28;
        }

        while (v28);
      }

      else
      {
        __asm { FMOV            V1.4S, #1.0 }

        do
        {
          v242 = v25;
          do
          {
            if (*v33)
            {
              v243 = *v33 * 0.0039216;
              *a6.i32 = v19 * v243;
              a6 = vdupq_lane_s32(*a6.i8, 0);
              *v31 = vsubq_f32(_Q1, vaddq_f32(vsubq_f32(a6, vmulq_n_f32(v30, v243)), vsubq_f32(_Q1, *v31)));
            }

            ++v33;
            v31 += 16;
            --v242;
          }

          while (v242);
          v33 += v34;
          v31 += 16 * v35;
          --v28;
        }

        while (v28);
      }

      return;
    case 12:
      if (v16)
      {
        v94 = 4 * v24;
        do
        {
          v95 = v25;
          do
          {
            if (*v33)
            {
              v96 = *v33 * 0.0039216;
              v97 = (v19 * v96) + *v23;
              if (v97 > 1.0)
              {
                v97 = 1.0;
              }

              v98.i64[0] = *v31;
              *v23 = v97;
              v98.i64[1] = *(v31 + 8);
              *v31 = vaddq_f32(vmulq_n_f32(v30, v96), v98);
            }

            ++v33;
            v31 += 16;
            v23 = (v23 + v94);
            --v95;
          }

          while (v95);
          v33 += v34;
          v31 += 16 * v35;
          v23 += v27;
          --v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v244 = v25;
          do
          {
            if (*v33)
            {
              *v31 = vaddq_f32(vmulq_n_f32(v30, *v33 * 0.0039216), *v31);
            }

            ++v33;
            v31 += 16;
            --v244;
          }

          while (v244);
          v33 += v34;
          v31 += 16 * v35;
          --v28;
        }

        while (v28);
      }

      return;
    case 13:
      v178 = 4 * v24;
      a4.i32[0] = 1.0;
      while (1)
      {
        v179 = v25;
        do
        {
          if (*v33)
          {
            v180 = *v33 * 0.0039216;
            a5.f32[0] = v19 * v180;
            if ((v19 * v180) > 0.0)
            {
              v181 = vmulq_n_f32(v30, v180);
              if (v16)
              {
                a6.i32[0] = *v23;
                if (*v23 <= 0.0)
                {
                  goto LABEL_269;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              v182 = vsubq_f32(vdupq_lane_s32(*a6.i8, 0), *v31);
              v183 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v181);
              v184 = vmulq_f32(v182, v183);
              v185 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, a4)), 0), vmlaq_n_f32(v184, v182, 1.0 - a5.f32[0]), v184);
              v186 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, a4)), 0), vmlaq_n_f32(v185, v183, 1.0 - *a6.i32), v185);
              a5.f32[0] = (*a6.i32 + a5.f32[0]) - (*a6.i32 * a5.f32[0]);
              a6 = vdupq_lane_s32(*a5.f32, 0);
              v181 = vsubq_f32(a6, v186);
              if (v16)
              {
LABEL_269:
                *v31 = v181;
                *v23 = a5.f32[0];
                goto LABEL_271;
              }

              *v31 = v181;
            }
          }

LABEL_271:
          ++v33;
          v31 += 16;
          v23 = (v23 + v178);
          --v179;
        }

        while (v179);
        v33 += v34;
        v31 += 16 * v35;
        v23 += v27;
        if (!--v28)
        {
          return;
        }
      }

    case 14:
      v60 = 4 * v24;
      __asm { FMOV            V1.4S, #1.0 }

      while (1)
      {
        v66 = v25;
        do
        {
          if (*v33)
          {
            v67 = *v33 * 0.0039216;
            a5.f32[0] = v19 * v67;
            if ((v19 * v67) > 0.0)
            {
              v68 = vmulq_n_f32(v30, v67);
              if (v16)
              {
                *&a7 = *v23;
                if (*v23 <= 0.0)
                {
                  goto LABEL_61;
                }
              }

              else
              {
                LODWORD(a7) = 1.0;
              }

              v69 = vsubq_f32(vdupq_lane_s32(*&a7, 0), *v31);
              v70 = vmlaq_f32(v69, vsubq_f32(_Q1, v69), vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v68));
              a5.f32[0] = (a5.f32[0] + *&a7) - (*&a7 * a5.f32[0]);
              v68 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v70);
              if (v16)
              {
LABEL_61:
                *v31 = v68;
                *v23 = a5.f32[0];
                goto LABEL_63;
              }

              *v31 = v68;
            }
          }

LABEL_63:
          ++v33;
          v31 += 16;
          v23 = (v23 + v60);
          --v66;
        }

        while (v66);
        v33 += v34;
        v31 += 16 * v35;
        v23 += v27;
        if (!--v28)
        {
          return;
        }
      }

    case 15:
      v125 = 4 * v24;
      while (1)
      {
        v126 = v25;
        do
        {
          if (*v33)
          {
            v127 = *v33 * 0.0039216;
            a8.f32[0] = v19 * v127;
            if ((v19 * v127) > 0.0)
            {
              v128 = vmulq_n_f32(v30, v127);
              if (v16)
              {
                v129 = *v23;
                if (*v23 <= 0.0)
                {
                  goto LABEL_163;
                }
              }

              else
              {
                v129 = 1.0;
              }

              PDAoverlayPDA(v330.f32, *v31, *(v31 + 4), *(v31 + 8), *(v31 + 12), v129, *a8.i64, *v128.i64, a10, v128.f32[0], v128.f32[1], v128.f32[2], v128.f32[3], a8.f32[0]);
              v128 = v330;
              if (v16)
              {
                a8.i32[0] = v331;
                v30 = v329;
LABEL_163:
                *v31 = v128;
                *v23 = a8.f32[0];
                goto LABEL_165;
              }

              *v31 = v330;
              v30 = v329;
            }
          }

LABEL_165:
          ++v33;
          v31 += 16;
          v23 = (v23 + v125);
          --v126;
        }

        while (v126);
        v33 += v36;
        v31 += 16 * v328;
        v23 += v38;
        --v28;
        LODWORD(v25) = v37;
        if (!v28)
        {
          return;
        }
      }

    case 16:
      v49 = 4 * v24;
      a4.i32[0] = 1.0;
      while (1)
      {
        v50 = v25;
        do
        {
          if (*v33)
          {
            v51 = *v33 * 0.0039216;
            a5.f32[0] = v19 * v51;
            if ((v19 * v51) > 0.0)
            {
              v52 = vmulq_n_f32(v30, v51);
              if (v16)
              {
                a6.i32[0] = *v23;
                if (*v23 <= 0.0)
                {
                  goto LABEL_47;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              v53 = vsubq_f32(vdupq_lane_s32(*a6.i8, 0), *v31);
              v54 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v52);
              v55 = vmulq_n_f32(v53, a5.f32[0]);
              v56 = vmulq_n_f32(v54, *a6.i32);
              v57 = vbslq_s8(vcgtq_f32(v55, v56), v56, v55);
              v58 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, a4)), 0), vmlaq_n_f32(v57, v53, 1.0 - a5.f32[0]), v57);
              v59 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, a4)), 0), vmlaq_n_f32(v58, v54, 1.0 - *a6.i32), v58);
              a5.f32[0] = (*a6.i32 + a5.f32[0]) - (*a6.i32 * a5.f32[0]);
              a6 = vdupq_lane_s32(*a5.f32, 0);
              v52 = vsubq_f32(a6, v59);
              if (v16)
              {
LABEL_47:
                *v31 = v52;
                *v23 = a5.f32[0];
                goto LABEL_49;
              }

              *v31 = v52;
            }
          }

LABEL_49:
          ++v33;
          v31 += 16;
          v23 = (v23 + v49);
          --v50;
        }

        while (v50);
        v33 += v34;
        v31 += 16 * v35;
        v23 += v27;
        if (!--v28)
        {
          return;
        }
      }

    case 17:
      v153 = 4 * v24;
      a4.i32[0] = 1.0;
      while (1)
      {
        v154 = v25;
        do
        {
          if (*v33)
          {
            v155 = *v33 * 0.0039216;
            a5.f32[0] = v19 * v155;
            if ((v19 * v155) > 0.0)
            {
              v156 = vmulq_n_f32(v30, v155);
              if (v16)
              {
                a6.i32[0] = *v23;
                if (*v23 <= 0.0)
                {
                  goto LABEL_218;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              v157 = vsubq_f32(vdupq_lane_s32(*a6.i8, 0), *v31);
              v158 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v156);
              v159 = vmulq_n_f32(v157, a5.f32[0]);
              v160 = vmulq_n_f32(v158, *a6.i32);
              v161 = vbslq_s8(vcgtq_f32(v160, v159), v160, v159);
              v162 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, a4)), 0), vmlaq_n_f32(v161, v157, 1.0 - a5.f32[0]), v161);
              v163 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, a4)), 0), vmlaq_n_f32(v162, v158, 1.0 - *a6.i32), v162);
              a5.f32[0] = (*a6.i32 + a5.f32[0]) - (*a6.i32 * a5.f32[0]);
              a6 = vdupq_lane_s32(*a5.f32, 0);
              v156 = vsubq_f32(a6, v163);
              if (v16)
              {
LABEL_218:
                *v31 = v156;
                *v23 = a5.f32[0];
                goto LABEL_220;
              }

              *v31 = v156;
            }
          }

LABEL_220:
          ++v33;
          v31 += 16;
          v23 = (v23 + v153);
          --v154;
        }

        while (v154);
        v33 += v34;
        v31 += 16 * v35;
        v23 += v27;
        if (!--v28)
        {
          return;
        }
      }

    case 18:
      v195 = 4 * v24;
      while (1)
      {
        v196 = v25;
        do
        {
          if (*v33)
          {
            v197 = *v33 * 0.0039216;
            a8.f32[0] = v19 * v197;
            if ((v19 * v197) > 0.0)
            {
              v198 = vmulq_n_f32(v30, v197);
              if (v16)
              {
                v199 = *v23;
                if (*v23 <= 0.0)
                {
                  goto LABEL_295;
                }
              }

              else
              {
                v199 = 1.0;
              }

              PDAcolordodgePDA(v330.f32, *v31, *(v31 + 4), *(v31 + 8), *(v31 + 12), v199, *a8.i64, *v198.i64, a10, v198.f32[0], v198.f32[1], v198.f32[2], v198.f32[3], a8.f32[0]);
              v198 = v330;
              if (v16)
              {
                a8.i32[0] = v331;
                v30 = v329;
LABEL_295:
                *v31 = v198;
                *v23 = a8.f32[0];
                goto LABEL_297;
              }

              *v31 = v330;
              v30 = v329;
            }
          }

LABEL_297:
          ++v33;
          v31 += 16;
          v23 = (v23 + v195);
          --v196;
        }

        while (v196);
        v33 += v36;
        v31 += 16 * v328;
        v23 += v38;
        --v28;
        LODWORD(v25) = v37;
        if (!v28)
        {
          return;
        }
      }

    case 19:
      v224 = 4 * v24;
      while (1)
      {
        v225 = v25;
        do
        {
          if (*v33)
          {
            v226 = *v33 * 0.0039216;
            a8.f32[0] = v19 * v226;
            if ((v19 * v226) > 0.0)
            {
              v227 = vmulq_n_f32(v30, v226);
              if (v16)
              {
                v228 = *v23;
                if (*v23 <= 0.0)
                {
                  goto LABEL_343;
                }
              }

              else
              {
                v228 = 1.0;
              }

              PDAcolorburnPDA(v330.f32, *v31, *(v31 + 4), *(v31 + 8), *(v31 + 12), v228, *a8.i64, *v227.i64, a10, v227.f32[0], v227.f32[1], v227.f32[2], v227.f32[3], a8.f32[0]);
              v227 = v330;
              if (v16)
              {
                a8.i32[0] = v331;
                v30 = v329;
LABEL_343:
                *v31 = v227;
                *v23 = a8.f32[0];
                goto LABEL_345;
              }

              *v31 = v330;
              v30 = v329;
            }
          }

LABEL_345:
          ++v33;
          v31 += 16;
          v23 = (v23 + v224);
          --v225;
        }

        while (v225);
        v33 += v36;
        v31 += 16 * v328;
        v23 += v38;
        --v28;
        LODWORD(v25) = v37;
        if (!v28)
        {
          return;
        }
      }

    case 20:
      v164 = 4 * v24;
      while (1)
      {
        v165 = v25;
        do
        {
          if (*v33)
          {
            v166 = *v33 * 0.0039216;
            a8.f32[0] = v19 * v166;
            if ((v19 * v166) > 0.0)
            {
              v167 = vmulq_n_f32(v30, v166);
              if (v16)
              {
                *&a7 = *v23;
                if (*v23 <= 0.0)
                {
                  goto LABEL_233;
                }
              }

              else
              {
                LODWORD(a7) = 1.0;
              }

              LODWORD(a3) = *v31;
              *&a3 = PDAsoftlightPDA(&v330, *&a3, *(v31 + 4), *(v31 + 8), *(v31 + 12), a7, *a8.f32, *v167.i64, a10, a2, v26, v34, v25, v27, a15, a16, *v167.f32, v167.f32[2], v167.f32[3], a8.f32[0]).u64[0];
              v167 = v330;
              if (v16)
              {
                a8.i32[0] = v331;
                v30 = v329;
LABEL_233:
                *v31 = v167;
                *v23 = a8.f32[0];
                goto LABEL_235;
              }

              *v31 = v330;
              v30 = v329;
            }
          }

LABEL_235:
          ++v33;
          v31 += 16;
          v23 = (v23 + v164);
          --v165;
        }

        while (v165);
        v33 += v36;
        v31 += 16 * v328;
        v23 += v38;
        --v28;
        v25 = v37;
        if (!v28)
        {
          return;
        }
      }

    case 21:
      v173 = 4 * v24;
      while (1)
      {
        v174 = v25;
        do
        {
          if (*v33)
          {
            v175 = *v33 * 0.0039216;
            a8.f32[0] = v19 * v175;
            if ((v19 * v175) > 0.0)
            {
              v176 = vmulq_n_f32(v30, v175);
              if (v16)
              {
                v177 = *v23;
                if (*v23 <= 0.0)
                {
                  goto LABEL_255;
                }
              }

              else
              {
                v177 = 1.0;
              }

              PDAhardlightPDA(v330.f32, *v31, *(v31 + 4), *(v31 + 8), *(v31 + 12), v177, *a8.i64, *v176.i64, a10, v176.f32[0], v176.f32[1], v176.f32[2], v176.f32[3], a8.f32[0]);
              v176 = v330;
              if (v16)
              {
                a8.i32[0] = v331;
                v30 = v329;
LABEL_255:
                *v31 = v176;
                *v23 = a8.f32[0];
                goto LABEL_257;
              }

              *v31 = v330;
              v30 = v329;
            }
          }

LABEL_257:
          ++v33;
          v31 += 16;
          v23 = (v23 + v173);
          --v174;
        }

        while (v174);
        v33 += v36;
        v31 += 16 * v328;
        v23 += v38;
        --v28;
        LODWORD(v25) = v37;
        if (!v28)
        {
          return;
        }
      }

    case 22:
      v212 = 4 * v24;
      while (1)
      {
        v213 = v25;
        do
        {
          if (*v33)
          {
            v214 = *v33 * 0.0039216;
            a4.f32[0] = v19 * v214;
            if ((v19 * v214) > 0.0)
            {
              v215 = vmulq_n_f32(v30, v214);
              if (v16)
              {
                a6.i32[0] = *v23;
                if (*v23 <= 0.0)
                {
                  goto LABEL_328;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              *&a7 = (*a6.i32 + a4.f32[0]) - (*a6.i32 * a4.f32[0]);
              v216 = vsubq_f32(vdupq_lane_s32(*a6.i8, 0), *v31);
              v217 = vsubq_f32(vdupq_lane_s32(*a4.f32, 0), v215);
              v218 = vaddq_f32(v216, v217);
              v219 = vmulq_n_f32(v216, a4.f32[0]);
              v220 = vmulq_n_f32(v217, *a6.i32);
              v221 = vsubq_f32(v218, v219);
              v222 = vsubq_f32(v219, v220);
              v223 = vsubq_f32(v221, v220);
              a6 = vcltzq_f32(v222);
              a4 = vaddq_f32(v223, vbslq_s8(a6, vnegq_f32(v222), v222));
              v215 = vsubq_f32(vdupq_lane_s32(*&a7, 0), a4);
              if (v16)
              {
                a4.i32[0] = LODWORD(a7);
LABEL_328:
                *v31 = v215;
                *v23 = a4.f32[0];
                goto LABEL_330;
              }

              *v31 = v215;
            }
          }

LABEL_330:
          ++v33;
          v31 += 16;
          v23 = (v23 + v212);
          --v213;
        }

        while (v213);
        v33 += v34;
        v31 += 16 * v35;
        v23 += v27;
        if (!--v28)
        {
          return;
        }
      }

    case 23:
      v229 = 4 * v24;
      v230.i64[0] = 0xC0000000C0000000;
      v230.i64[1] = 0xC0000000C0000000;
      while (1)
      {
        v231 = v25;
        do
        {
          if (*v33)
          {
            v232 = *v33 * 0.0039216;
            a5.f32[0] = v19 * v232;
            if ((v19 * v232) > 0.0)
            {
              v233 = vmulq_n_f32(v30, v232);
              if (v16)
              {
                a8.f32[0] = *v23;
                if (*v23 <= 0.0)
                {
                  goto LABEL_358;
                }
              }

              else
              {
                a8.i32[0] = 1.0;
              }

              *&a7 = (a8.f32[0] + a5.f32[0]) - (a8.f32[0] * a5.f32[0]);
              a8 = vsubq_f32(vdupq_lane_s32(*a8.f32, 0), *v31);
              v234 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v233);
              v235 = vmlaq_f32(vaddq_f32(a8, v234), v230, vmulq_f32(v234, a8));
              a5 = vdupq_lane_s32(*&a7, 0);
              v233 = vsubq_f32(a5, v235);
              if (v16)
              {
                a5.i32[0] = LODWORD(a7);
LABEL_358:
                *v31 = v233;
                *v23 = a5.f32[0];
                goto LABEL_360;
              }

              *v31 = v233;
            }
          }

LABEL_360:
          ++v33;
          v31 += 16;
          v23 = (v23 + v229);
          --v231;
        }

        while (v231);
        v33 += v34;
        v31 += 16 * v35;
        v23 += v27;
        if (!--v28)
        {
          return;
        }
      }

    case 24:
      v110 = 4 * v24;
      while (1)
      {
        v111 = v25;
        do
        {
          if (*v33)
          {
            v112 = *v33 * 0.0039216;
            a8.f32[0] = v19 * v112;
            if ((v19 * v112) > 0.0)
            {
              v113 = vmulq_n_f32(v30, v112);
              if (v16)
              {
                v114 = *v23;
                if (*v23 <= 0.0)
                {
                  goto LABEL_128;
                }
              }

              else
              {
                v114 = 1.0;
              }

              PDAhuePDA(v330.f32, *v31, *(v31 + 4), *(v31 + 8), *(v31 + 12), v114, *a8.i64, *v113.i64, a10, v113.f32[0], v113.f32[1], v113.f32[2], v113.f32[3], a8.f32[0]);
              v113 = v330;
              if (v16)
              {
                a8.i32[0] = v331;
                v30 = v329;
LABEL_128:
                *v31 = v113;
                *v23 = a8.f32[0];
                goto LABEL_130;
              }

              *v31 = v330;
              v30 = v329;
            }
          }

LABEL_130:
          ++v33;
          v31 += 16;
          v23 = (v23 + v110);
          --v111;
        }

        while (v111);
        v33 += v36;
        v31 += 16 * v328;
        v23 += v38;
        --v28;
        LODWORD(v25) = v37;
        if (!v28)
        {
          return;
        }
      }

    case 25:
      v105 = 4 * v24;
      while (1)
      {
        v106 = v25;
        do
        {
          if (*v33)
          {
            v107 = *v33 * 0.0039216;
            a8.f32[0] = v19 * v107;
            if ((v19 * v107) > 0.0)
            {
              v108 = vmulq_n_f32(v30, v107);
              if (v16)
              {
                v109 = *v23;
                if (*v23 <= 0.0)
                {
                  goto LABEL_113;
                }
              }

              else
              {
                v109 = 1.0;
              }

              PDAsaturationPDA(v330.f32, *v31, *(v31 + 4), *(v31 + 8), *(v31 + 12), v109, *a8.i64, *v108.i64, a10, v108.f32[0], v108.f32[1], v108.f32[2], v108.f32[3], a8.f32[0]);
              v108 = v330;
              if (v16)
              {
                a8.i32[0] = v331;
                v30 = v329;
LABEL_113:
                *v31 = v108;
                *v23 = a8.f32[0];
                goto LABEL_115;
              }

              *v31 = v330;
              v30 = v329;
            }
          }

LABEL_115:
          ++v33;
          v31 += 16;
          v23 = (v23 + v105);
          --v106;
        }

        while (v106);
        v33 += v36;
        v31 += 16 * v328;
        v23 += v38;
        --v28;
        LODWORD(v25) = v37;
        if (!v28)
        {
          return;
        }
      }

    case 26:
      v236 = 4 * v24;
      do
      {
        v237 = v25;
        do
        {
          if (*v33)
          {
            v238 = *v33 * 0.0039216;
            v239 = v19 * v238;
            if ((v19 * v238) > 0.0)
            {
              v240 = vmulq_n_f32(v30, v238);
              if (v16)
              {
                a8.f32[0] = *v23;
                if (*v23 <= 0.0)
                {
                  goto LABEL_373;
                }
              }

              else
              {
                a8.i32[0] = 1.0;
              }

              LODWORD(a9) = *v31;
              LODWORD(a10) = *(v31 + 12);
              PDAluminosityPDA(v330.f32, v240.f32[0], v240.f32[1], v240.f32[2], v240.f32[3], v239, *a8.i64, a9, a10, *v31, COERCE_FLOAT(*(v31 + 4)), COERCE_FLOAT(HIDWORD(*(v31 + 4))), *&a10, a8.f32[0]);
              v240 = v330;
              if (v16)
              {
                v239 = *&v331;
                v30 = v329;
LABEL_373:
                *v31 = v240;
                *v23 = v239;
                goto LABEL_375;
              }

              *v31 = v330;
              v30 = v329;
            }
          }

LABEL_375:
          ++v33;
          v31 += 16;
          v23 = (v23 + v236);
          --v237;
        }

        while (v237);
        v33 += v36;
        v31 += 16 * v328;
        v23 += v38;
        --v28;
        LODWORD(v25) = v37;
      }

      while (v28);
      return;
    case 27:
      v44 = 4 * v24;
      break;
    default:
      return;
  }

LABEL_24:
  v45 = v25;
  while (1)
  {
    if (!*v33)
    {
      goto LABEL_35;
    }

    v46 = *v33 * 0.0039216;
    a8.f32[0] = v19 * v46;
    if ((v19 * v46) <= 0.0)
    {
      goto LABEL_35;
    }

    v47 = vmulq_n_f32(v30, v46);
    if (v16)
    {
      v48 = *v23;
      if (*v23 <= 0.0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v48 = 1.0;
    }

    PDAluminosityPDA(v330.f32, *v31, *(v31 + 4), *(v31 + 8), *(v31 + 12), v48, *a8.i64, *v47.i64, a10, v47.f32[0], v47.f32[1], v47.f32[2], v47.f32[3], a8.f32[0]);
    v47 = v330;
    if (!v16)
    {
      *v31 = v330;
      v30 = v329;
      goto LABEL_35;
    }

    a8.i32[0] = v331;
    v30 = v329;
LABEL_33:
    *v31 = v47;
    *v23 = a8.f32[0];
LABEL_35:
    ++v33;
    v31 += 16;
    v23 = (v23 + v44);
    if (!--v45)
    {
      v33 += v36;
      v31 += 16 * v328;
      v23 += v38;
      --v28;
      LODWORD(v25) = v37;
      if (!v28)
      {
        return;
      }

      goto LABEL_24;
    }
  }
}

void CMYKf_mark_pixelmask(uint64_t a1, uint64_t a2, double a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, double a7, float32x4_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16 = *(a1 + 48);
  v17 = *(a1 + 136);
  v18 = *(a1 + 12);
  v19 = *(a1 + 16);
  if (v16)
  {
    v20 = *(a1 + 32) >> 2;
    v21 = (v16 + 4 * v20 * v19 + 4 * v18);
    v22 = 0xFFFFFFFFLL;
    if (!v17)
    {
      return;
    }
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v22 = 0;
    if (!v17)
    {
      return;
    }
  }

  v23 = *(a1 + 4);
  v24 = *(a1 + 8);
  v25 = *(a1 + 96);
  v720 = *(a1 + 88);
  v26 = *(a1 + 28) >> 4;
  v27 = (*(a1 + 40) + 16 * v26 * v19 + 16 * v18);
  v28 = *(a1 + 124);
  v29 = (v17 + *(a1 + 108) * v28 + *(a1 + 104));
  v30 = *(a1 + 56);
  v31 = *(a1 + 60);
  v32 = *(a1 + 76);
  if ((*a1 & 0xFF00) != 0x100)
  {
    v34 = *(a1 + 64);
    v35 = *(a1 + 68);
    v714 = v32 >> 4;
    if (v25)
    {
      v712 = *(a1 + 80) >> 2;
      v33 = 1;
    }

    else
    {
      v712 = 0;
      v33 = 0;
    }

    v36 = *(a1 + 88);
    v41 = v720 + 16 * v714 * v35;
    v22 &= 1u;
    v40 = 1;
    v42 = v720;
    goto LABEL_19;
  }

  v714 = v32 >> 4;
  if (v25)
  {
    v712 = *(a1 + 80) >> 2;
    v25 += 4 * v712 * v31 + 4 * v30;
    v33 = 0xFFFFFFFFLL;
  }

  else
  {
    v712 = 0;
    v33 = 0;
  }

  v36 = (v720 + 16 * v714 * v31 + 16 * v30);
  if (v714 == v26)
  {
    v37 = v27 - v36;
    if (v37 >= 1)
    {
      if (v37 <= v23)
      {
        v27 += v23 - 1;
        v36 += v23 - 1;
        v29 += v23 - 1;
        v21 += (v22 & (v23 - 1));
        v40 = -1;
        v714 = *(a1 + 28) >> 4;
        v25 += 4 * (v33 & (v23 - 1));
        goto LABEL_16;
      }

      v38 = v24 - 1;
      v39 = &v36[v26 * v38];
      if (v27 <= &v39[v23 - 1])
      {
        v27 += v26 * v38;
        v29 += v28 * v38;
        v28 = -v28;
        v21 += v20 * v38;
        v20 = -v20;
        v22 &= 1u;
        v25 += 4 * v712 * v38;
        v712 = -v712;
        v33 &= 1u;
        v40 = 1;
        v36 = v39;
        v714 = -v26;
        v26 = -v26;
        goto LABEL_16;
      }
    }
  }

  v22 &= 1u;
  v33 &= 1u;
  v40 = 1;
LABEL_16:
  v41 = 0;
  v42 = 0;
  v720 = -1;
  v35 = v712;
  v34 = v714;
LABEL_19:
  v43 = v40 * v23;
  v713 = v23;
  v709 = v41;
  v717 = v24;
  if (v41)
  {
    v44 = v31 % v35;
    v45 = &v36[v714 * v44];
    v46 = v30 % v34;
    v36 = &v45[v46];
    v47 = v34;
    v720 = &v45[v34];
    v48 = v25 + 4 * v712 * v44 + 4 * v46;
    if (v33)
    {
      v25 = v48;
    }

    v715 = v25;
    v716 = &v45[v46];
  }

  else
  {
    v715 = v25;
    v716 = v42;
    v714 -= v43;
    v712 -= v33 * v23;
    v47 = v34;
  }

  v711 = v28 - v43;
  v710 = v26 - v43;
  v708 = v20 - v22 * v23;
  v49 = v40;
  v718 = v22;
  v719 = v33;
  switch(a2)
  {
    case 0:
      if (v22)
      {
        do
        {
          v50 = v23;
          v51 = v717;
          do
          {
            v52 = *v29;
            if (*v29)
            {
              if (v52 == 255)
              {
                v27->i64[0] = 0;
                v27->i64[1] = 0;
                v53 = 0.0;
              }

              else
              {
                v54 = (v52 * -0.0039216) + 1.0;
                *v27 = vmulq_n_f32(*v27, v54);
                v53 = v54 * *v21;
              }

              *v21 = v53;
            }

            v29 += v40;
            v21 += v22;
            v27 += v40;
            --v50;
          }

          while (v50);
          v29 += v711;
          v27 += v710;
          v21 += v708;
          --v717;
        }

        while (v51 != 1);
      }

      else
      {
        do
        {
          v634 = v23;
          v635 = v717;
          do
          {
            v636 = *v29;
            if (*v29)
            {
              if (v636 == 255)
              {
                v27->i64[0] = 0;
                v27->i64[1] = 0;
              }

              else
              {
                *v27 = vmulq_n_f32(*v27, (v636 * -0.0039216) + 1.0);
              }
            }

            v29 += v40;
            v27 += v40;
            --v634;
          }

          while (v634);
          v29 += v711;
          v27 += v710;
          --v717;
        }

        while (v635 != 1);
      }

      return;
    case 1:
      if (v22)
      {
        if (v33)
        {
          v310 = -v47;
          v311 = -(v714 * v35);
          v312 = -(v712 * v35);
          v313 = v715;
          do
          {
            v314 = v23;
            v315 = v717;
            do
            {
              v316 = *v29;
              if (*v29)
              {
                if (v316 == 255)
                {
                  *v27 = *v36;
                  v317 = *v313;
                }

                else
                {
                  v318 = v316 * 0.0039216;
                  *v27 = vmlaq_n_f32(vmulq_n_f32(*v27, 1.0 - v318), *v36, v318);
                  v317 = ((1.0 - v318) * *v21) + (*v313 * v318);
                }

                *v21 = v317;
              }

              v29 += v40;
              v319 = &v36[v40];
              v320 = &v313[v33];
              if (v319 >= v720)
              {
                v321 = v310;
              }

              else
              {
                v321 = 0;
              }

              v313 = &v320[v321];
              v36 = &v319[v321];
              v21 += v22;
              v27 += v40;
              --v314;
            }

            while (v314);
            if (v709)
            {
              v322 = v716 + 16 * v714;
              if (v322 >= v709)
              {
                v323 = v312;
              }

              else
              {
                v323 = 0;
              }

              v324 = &v715[v712 + v323];
              if (v322 >= v709)
              {
                v325 = v311;
              }

              else
              {
                v325 = 0;
              }

              v36 = (v322 + 16 * v325);
              v720 += 16 * v325 + 16 * v714;
              v715 += v712 + v323;
              v716 = v36;
              v313 = v324;
            }

            else
            {
              v36 += v714;
              v313 += v712;
            }

            v29 += v711;
            v27 += v710;
            v21 += v708;
            --v717;
          }

          while (v315 != 1);
        }

        else
        {
          v667 = -(v714 * v35);
          do
          {
            v668 = v23;
            v669 = v717;
            do
            {
              v670 = *v29;
              if (*v29)
              {
                if (v670 == 255)
                {
                  *v27 = *v36;
                  v671 = 1.0;
                }

                else
                {
                  v672 = v670 * 0.0039216;
                  *v27 = vmlaq_n_f32(vmulq_n_f32(*v27, 1.0 - v672), *v36, v672);
                  v671 = v672 + ((1.0 - v672) * *v21);
                }

                *v21 = v671;
              }

              v29 += v49;
              v673 = &v36[v49];
              if (v673 >= v720)
              {
                v674 = -v47;
              }

              else
              {
                v674 = 0;
              }

              v36 = &v673[v674];
              v21 += v22;
              v27 += v49;
              --v668;
            }

            while (v668);
            v29 += v711;
            v27 += v710;
            v21 += v708;
            v675 = v716;
            v676 = v716 + 16 * v714;
            if (v676 >= v709)
            {
              v677 = v667;
            }

            else
            {
              v677 = 0;
            }

            v678 = v720;
            v679 = (v676 + 16 * v677);
            v680 = v720 + 16 * v677 + 16 * v714;
            if (v709)
            {
              v678 = v680;
            }

            v720 = v678;
            if (v709)
            {
              v675 = v679;
              v36 = v679;
            }

            else
            {
              v36 += v714;
            }

            v716 = v675;
            --v717;
          }

          while (v669 != 1);
        }
      }

      else
      {
        v637 = -v47;
        do
        {
          v638 = v23;
          v639 = v717;
          do
          {
            v640 = *v29;
            if (*v29)
            {
              if (v640 == 255)
              {
                v641 = *v36;
              }

              else
              {
                v641 = vmlaq_n_f32(vmulq_n_f32(*v27, 1.0 - (v640 * 0.0039216)), *v36, v640 * 0.0039216);
              }

              *v27 = v641;
            }

            v29 += v49;
            v642 = &v36[v49];
            if (v642 >= v720)
            {
              v643 = v637;
            }

            else
            {
              v643 = 0;
            }

            v36 = &v642[v643];
            v27 += v49;
            --v638;
          }

          while (v638);
          v29 += v711;
          v27 += v710;
          v644 = v716;
          v645 = v716 + 16 * v714;
          if (v645 >= v709)
          {
            v646 = -(v714 * v35);
          }

          else
          {
            v646 = 0;
          }

          v647 = v720;
          v648 = (v645 + 16 * v646);
          v649 = v720 + 16 * v646 + 16 * v714;
          if (v709)
          {
            v647 = v649;
          }

          v720 = v647;
          if (v709)
          {
            v644 = v648;
            v36 = v648;
          }

          else
          {
            v36 += v714;
          }

          v716 = v644;
          --v717;
        }

        while (v639 != 1);
      }

      return;
    case 2:
      v234 = -v47;
      if (v22)
      {
        v235 = -(v714 * v35);
        v236 = -(v712 * v35);
        v237 = v715;
        while (1)
        {
          v238 = v23;
          v239 = v717;
          do
          {
            v240 = *v29;
            if (!*v29)
            {
              goto LABEL_286;
            }

            if (v240 == 255)
            {
              v241 = *v237;
              if (*v237 >= 1.0)
              {
                *v27 = *v36;
              }

              else
              {
                if (v241 <= 0.0)
                {
                  goto LABEL_286;
                }

                *v27 = vmlaq_n_f32(*v36, *v27, 1.0 - v241);
                v241 = v241 + (*v21 * (1.0 - v241));
              }
            }

            else
            {
              v242 = v240 * 0.0039216;
              v243 = v242 * *v237;
              if (v243 <= 0.0)
              {
                goto LABEL_286;
              }

              *v27 = vmlaq_n_f32(vmulq_n_f32(*v36, v242), *v27, 1.0 - v243);
              v241 = v243 + (*v21 * (1.0 - v243));
            }

            *v21 = v241;
LABEL_286:
            v29 += v40;
            v244 = &v36[v40];
            v245 = &v237[v33];
            if (v244 >= v720)
            {
              v246 = v234;
            }

            else
            {
              v246 = 0;
            }

            v237 = &v245[v246];
            v36 = &v244[v246];
            v21 += v22;
            v27 += v40;
            --v238;
          }

          while (v238);
          if (v709)
          {
            v247 = v716 + 16 * v714;
            if (v247 >= v709)
            {
              v248 = v236;
            }

            else
            {
              v248 = 0;
            }

            v249 = &v715[v712 + v248];
            if (v247 >= v709)
            {
              v250 = v235;
            }

            else
            {
              v250 = 0;
            }

            v36 = (v247 + 16 * v250);
            v720 += 16 * v250 + 16 * v714;
            v715 += v712 + v248;
            v716 = v36;
            v237 = v249;
          }

          else
          {
            v36 += v714;
            v237 += v712;
          }

          v29 += v711;
          v27 += v710;
          v21 += v708;
          --v717;
          if (v239 == 1)
          {
            return;
          }
        }
      }

      v596 = -(v714 * v35);
      v597 = -(v712 * v35);
      v598 = v715;
LABEL_792:
      v599 = v23;
      v600 = v717;
      while (1)
      {
        v601 = *v29;
        if (*v29)
        {
          if (v601 == 255)
          {
            v602 = *v598;
            if (*v598 >= 1.0)
            {
              v607 = *v36;
              goto LABEL_802;
            }

            if (v602 > 0.0)
            {
              v603 = 1.0 - v602;
              v604 = *v36;
              goto LABEL_800;
            }
          }

          else
          {
            v605 = v601 * 0.0039216;
            v606 = v605 * *v598;
            if (v606 > 0.0)
            {
              v603 = 1.0 - v606;
              v604 = vmulq_n_f32(*v36, v605);
LABEL_800:
              v607 = vmlaq_n_f32(v604, *v27, v603);
LABEL_802:
              *v27 = v607;
            }
          }
        }

        v29 += v49;
        v608 = &v36[v49];
        v609 = &v598[v33];
        if (v608 >= v720)
        {
          v610 = v234;
        }

        else
        {
          v610 = 0;
        }

        v598 = &v609[v610];
        v36 = &v608[v610];
        v27 += v49;
        if (!--v599)
        {
          if (v709)
          {
            v611 = v716 + 16 * v714;
            if (v611 >= v709)
            {
              v612 = v597;
            }

            else
            {
              v612 = 0;
            }

            v613 = &v715[v712 + v612];
            if (v611 >= v709)
            {
              v614 = v596;
            }

            else
            {
              v614 = 0;
            }

            v36 = (v611 + 16 * v614);
            v720 += 16 * v614 + 16 * v714;
            v715 += v712 + v612;
            v716 = v36;
            v598 = v613;
          }

          else
          {
            v36 += v714;
            v598 += v712;
          }

          v29 += v711;
          v27 += v710;
          --v717;
          if (v600 == 1)
          {
            return;
          }

          goto LABEL_792;
        }
      }

    case 3:
      v268 = -v47;
      v269 = -(v714 * v35);
      v270 = -(v712 * v35);
      v271 = v715;
      do
      {
        v272 = v23;
        v273 = v717;
        do
        {
          v274 = *v29;
          if (*v29)
          {
            if (v274 == 255)
            {
              v27->f32[0] = v36->f32[0] * *v21;
              v27->f32[1] = v36->f32[1] * *v21;
              v27->f32[2] = v36->f32[2] * *v21;
              v27->f32[3] = v36->f32[3] * *v21;
              if (v33)
              {
                v275 = *v271;
              }

              else
              {
                v275 = 1.0;
              }

              v281 = v275 * *v21;
            }

            else
            {
              v276 = v274 * 0.0039216;
              v277 = *v21;
              v278 = v276 * *v21;
              v279 = 1.0;
              v280 = 1.0 - v276;
              *v27 = vmlaq_n_f32(vmulq_n_f32(*v27, v280), *v36, v278);
              if (v33)
              {
                v279 = *v271;
              }

              v281 = (v280 * v277) + (v279 * v278);
            }

            *v21 = v281;
          }

          v29 += v40;
          v282 = &v36[v40];
          v283 = &v271[v33];
          if (v282 >= v720)
          {
            v284 = v268;
          }

          else
          {
            v284 = 0;
          }

          v271 = &v283[v284];
          v36 = &v282[v284];
          v21 += v22;
          v27 += v40;
          --v272;
        }

        while (v272);
        if (v709)
        {
          v285 = v716 + 16 * v714;
          if (v285 >= v709)
          {
            v286 = v270;
          }

          else
          {
            v286 = 0;
          }

          v287 = &v715[v712 + v286];
          if (v285 >= v709)
          {
            v288 = v269;
          }

          else
          {
            v288 = 0;
          }

          v36 = (v285 + 16 * v288);
          v720 += 16 * v288 + 16 * v714;
          v715 += v712 + v286;
          v716 = v36;
          v271 = v287;
        }

        else
        {
          v36 += v714;
          v271 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        --v717;
      }

      while (v273 != 1);
      return;
    case 4:
      v143 = -v47;
      v144 = -(v714 * v35);
      v145 = -(v712 * v35);
      v146 = v715;
      do
      {
        v147 = v23;
        v148 = v717;
        do
        {
          v149 = *v29;
          if (*v29)
          {
            if (v149 == 255)
            {
              v150 = 1.0;
              v27->f32[0] = v36->f32[0] * (1.0 - *v21);
              v27->f32[1] = v36->f32[1] * (1.0 - *v21);
              v27->f32[2] = v36->f32[2] * (1.0 - *v21);
              v27->f32[3] = v36->f32[3] * (1.0 - *v21);
              if (v33)
              {
                v150 = *v146;
              }

              v151 = v150 * (1.0 - *v21);
            }

            else
            {
              v152 = v149 * 0.0039216;
              v153 = *v21;
              v154 = 1.0;
              v155 = v152 * (1.0 - *v21);
              v156 = 1.0 - v152;
              *v27 = vmlaq_n_f32(vmulq_n_f32(*v27, v156), *v36, v155);
              if (v33)
              {
                v154 = *v146;
              }

              v151 = (v156 * v153) + (v154 * v155);
            }

            *v21 = v151;
          }

          v29 += v40;
          v157 = &v36[v40];
          v158 = &v146[v33];
          if (v157 >= v720)
          {
            v159 = v143;
          }

          else
          {
            v159 = 0;
          }

          v146 = &v158[v159];
          v36 = &v157[v159];
          v21 += v22;
          v27 += v40;
          --v147;
        }

        while (v147);
        if (v709)
        {
          v160 = v716 + 16 * v714;
          if (v160 >= v709)
          {
            v161 = v145;
          }

          else
          {
            v161 = 0;
          }

          v162 = &v715[v712 + v161];
          if (v160 >= v709)
          {
            v163 = v144;
          }

          else
          {
            v163 = 0;
          }

          v36 = (v160 + 16 * v163);
          v720 += 16 * v163 + 16 * v714;
          v715 += v712 + v161;
          v716 = v36;
          v146 = v162;
        }

        else
        {
          v36 += v714;
          v146 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        --v717;
      }

      while (v148 != 1);
      return;
    case 5:
      v365 = -v47;
      v366 = v715;
      v367 = -(v714 * v35);
      v368 = -(v712 * v35);
      do
      {
        v369 = v23;
        v370 = v717;
        do
        {
          if (*v29)
          {
            v371 = *v21;
            v372 = *v29 * 0.0039216;
            v373 = v372 * *v366;
            *v27 = vmlaq_n_f32(vmulq_n_f32(*v27, 1.0 - v373), vmulq_n_f32(*v36, v372), *v21);
            *v21 = (v371 * (1.0 - v373)) + (v373 * v371);
          }

          v29 += v40;
          v374 = &v36[v40];
          v375 = &v366[v33];
          if (v374 >= v720)
          {
            v376 = v365;
          }

          else
          {
            v376 = 0;
          }

          v366 = &v375[v376];
          v36 = &v374[v376];
          v21 += v22;
          v27 += v40;
          --v369;
        }

        while (v369);
        if (v709)
        {
          v377 = v716 + 16 * v714;
          if (v377 >= v709)
          {
            v378 = v368;
          }

          else
          {
            v378 = 0;
          }

          v379 = &v715[v712 + v378];
          if (v377 >= v709)
          {
            v380 = v367;
          }

          else
          {
            v380 = 0;
          }

          v36 = (v377 + 16 * v380);
          v720 += 16 * v380 + 16 * v714;
          v715 += v712 + v378;
          v716 = v36;
          v366 = v379;
        }

        else
        {
          v36 += v714;
          v366 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        --v717;
      }

      while (v370 != 1);
      return;
    case 6:
      v418 = -v47;
      v419 = -(v714 * v35);
      v420 = -(v712 * v35);
      v421 = v715;
      while (1)
      {
        v422 = v23;
        v423 = v717;
        do
        {
          v424 = *v29;
          if (!*v29)
          {
            goto LABEL_550;
          }

          v425 = *v21;
          v426 = 1.0 - *v21;
          if (v426 >= 1.0)
          {
            v429 = v424 * 0.0039216;
            *v27 = vmulq_n_f32(*v36, v429);
            if (v33)
            {
              v430 = *v421;
            }

            else
            {
              v430 = 1.0;
            }

            v431 = v429 * v430;
          }

          else
          {
            if (v426 <= 0.0)
            {
              goto LABEL_550;
            }

            v427 = (v424 * 0.0039216) * v426;
            *v27 = vmlaq_n_f32(*v27, *v36, v427);
            if (v33)
            {
              v428 = *v421;
            }

            else
            {
              v428 = 1.0;
            }

            v431 = v425 + (v428 * v427);
          }

          *v21 = v431;
LABEL_550:
          v29 += v40;
          v432 = &v36[v40];
          v433 = &v421[v33];
          if (v432 >= v720)
          {
            v434 = v418;
          }

          else
          {
            v434 = 0;
          }

          v421 = &v433[v434];
          v36 = &v432[v434];
          v21 += v22;
          v27 += v40;
          --v422;
        }

        while (v422);
        if (v709)
        {
          v435 = v716 + 16 * v714;
          if (v435 >= v709)
          {
            v436 = v420;
          }

          else
          {
            v436 = 0;
          }

          v437 = &v715[v712 + v436];
          if (v435 >= v709)
          {
            v438 = v419;
          }

          else
          {
            v438 = 0;
          }

          v36 = (v435 + 16 * v438);
          v720 += 16 * v438 + 16 * v714;
          v715 += v712 + v436;
          v716 = v36;
          v421 = v437;
        }

        else
        {
          v36 += v714;
          v421 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        --v717;
        if (v423 == 1)
        {
          return;
        }
      }

    case 7:
      v289 = -v47;
      if (v22)
      {
        v290 = v715;
        v291 = -(v714 * v35);
        v292 = -(v712 * v35);
        do
        {
          v293 = v23;
          v294 = v717;
          do
          {
            v295 = *v29;
            if (*v29)
            {
              if (v295 == 255)
              {
                v296 = v27->f32[1];
                v27->f32[0] = v27->f32[0] * *v290;
                v27->f32[1] = v296 * *v290;
                v297 = v27->f32[3];
                v27->f32[2] = v27->f32[2] * *v290;
                v27->f32[3] = v297 * *v290;
                v298 = *v21 * *v290;
              }

              else
              {
                v299 = v295 * 0.0039216;
                v300 = *v21;
                v301 = v27->f32[1];
                v27->f32[0] = ((1.0 - v299) * v27->f32[0]) + (v27->f32[0] * (v299 * *v290));
                v27->f32[1] = ((1.0 - v299) * v301) + (v301 * (v299 * *v290));
                v302 = v27->f32[3];
                v27->f32[2] = ((1.0 - v299) * v27->f32[2]) + (v27->f32[2] * (v299 * *v290));
                v27->f32[3] = ((1.0 - v299) * v302) + (v302 * (v299 * *v290));
                v298 = ((1.0 - v299) * v300) + (v300 * (v299 * *v290));
              }

              *v21 = v298;
            }

            v29 += v40;
            v303 = &v36[v40];
            v304 = &v290[v33];
            if (v303 >= v720)
            {
              v305 = v289;
            }

            else
            {
              v305 = 0;
            }

            v290 = &v304[v305];
            v36 = &v303[v305];
            v21 += v22;
            v27 += v40;
            --v293;
          }

          while (v293);
          if (v709)
          {
            v306 = v716 + 16 * v714;
            if (v306 >= v709)
            {
              v307 = v292;
            }

            else
            {
              v307 = 0;
            }

            v308 = &v715[v712 + v307];
            if (v306 >= v709)
            {
              v309 = v291;
            }

            else
            {
              v309 = 0;
            }

            v36 = (v306 + 16 * v309);
            v720 += 16 * v309 + 16 * v714;
            v715 += v712 + v307;
            v716 = v36;
            v290 = v308;
          }

          else
          {
            v36 += v714;
            v290 += v712;
          }

          v29 += v711;
          v27 += v710;
          v21 += v708;
          --v717;
        }

        while (v294 != 1);
      }

      else
      {
        v615 = -(v714 * v35);
        v616 = -(v712 * v35);
        v617 = v715;
        do
        {
          v618 = v23;
          v619 = v717;
          do
          {
            v620 = *v29;
            if (*v29)
            {
              if (v620 == 255)
              {
                v621 = v27->f32[1];
                v27->f32[0] = v27->f32[0] * *v617;
                v27->f32[1] = v621 * *v617;
                v622 = v27->f32[3];
                v27->f32[2] = v27->f32[2] * *v617;
                v623 = v622 * *v617;
              }

              else
              {
                v624 = v620 * 0.0039216;
                v625 = v27->f32[1];
                v27->f32[0] = ((1.0 - v624) * v27->f32[0]) + (v27->f32[0] * (v624 * *v617));
                v27->f32[1] = ((1.0 - v624) * v625) + (v625 * (v624 * *v617));
                v626 = v27->f32[3];
                v27->f32[2] = ((1.0 - v624) * v27->f32[2]) + (v27->f32[2] * (v624 * *v617));
                v623 = ((1.0 - v624) * v626) + (v626 * (v624 * *v617));
              }

              v27->f32[3] = v623;
            }

            v29 += v49;
            v627 = &v36[v49];
            v628 = &v617[v33];
            if (v627 >= v720)
            {
              v629 = v289;
            }

            else
            {
              v629 = 0;
            }

            v617 = &v628[v629];
            v36 = &v627[v629];
            v27 += v49;
            --v618;
          }

          while (v618);
          if (v709)
          {
            v630 = v716 + 16 * v714;
            if (v630 >= v709)
            {
              v631 = v616;
            }

            else
            {
              v631 = 0;
            }

            v632 = &v715[v712 + v631];
            if (v630 >= v709)
            {
              v633 = v615;
            }

            else
            {
              v633 = 0;
            }

            v36 = (v630 + 16 * v633);
            v720 += 16 * v633 + 16 * v714;
            v715 += v712 + v631;
            v716 = v36;
            v617 = v632;
          }

          else
          {
            v36 += v714;
            v617 += v712;
          }

          v29 += v711;
          v27 += v710;
          --v717;
        }

        while (v619 != 1);
      }

      return;
    case 8:
      v472 = -v47;
      if (v22)
      {
        v473 = -(v714 * v35);
        v474 = -(v712 * v35);
        v475 = v715;
        do
        {
          v476 = v23;
          v477 = v717;
          do
          {
            v478 = *v29;
            if (*v29)
            {
              if (v478 == 255)
              {
                v479 = v27->f32[1];
                v27->f32[0] = v27->f32[0] * (1.0 - *v475);
                v27->f32[1] = v479 * (1.0 - *v475);
                v480 = v27->f32[3];
                v27->f32[2] = v27->f32[2] * (1.0 - *v475);
                v27->f32[3] = v480 * (1.0 - *v475);
                v481 = *v475;
              }

              else
              {
                v482 = v478 * 0.0039216;
                v483 = v27->f32[1];
                v27->f32[0] = v27->f32[0] * (1.0 - (v482 * *v475));
                v27->f32[1] = v483 * (1.0 - (v482 * *v475));
                v484 = v27->f32[3];
                v27->f32[2] = v27->f32[2] * (1.0 - (v482 * *v475));
                v27->f32[3] = v484 * (1.0 - (v482 * *v475));
                v481 = v482 * *v475;
              }

              *v21 = *v21 * (1.0 - v481);
            }

            v29 += v40;
            v485 = &v36[v40];
            v486 = &v475[v33];
            if (v485 >= v720)
            {
              v487 = v472;
            }

            else
            {
              v487 = 0;
            }

            v475 = &v486[v487];
            v36 = &v485[v487];
            v21 += v22;
            v27 += v40;
            --v476;
          }

          while (v476);
          if (v709)
          {
            v488 = v716 + 16 * v714;
            if (v488 >= v709)
            {
              v489 = v474;
            }

            else
            {
              v489 = 0;
            }

            v490 = &v715[v712 + v489];
            if (v488 >= v709)
            {
              v491 = v473;
            }

            else
            {
              v491 = 0;
            }

            v36 = (v488 + 16 * v491);
            v720 += 16 * v491 + 16 * v714;
            v715 += v712 + v489;
            v716 = v36;
            v475 = v490;
          }

          else
          {
            v36 += v714;
            v475 += v712;
          }

          v29 += v711;
          v27 += v710;
          v21 += v708;
          --v717;
        }

        while (v477 != 1);
      }

      else
      {
        v650 = -(v714 * v35);
        v651 = -(v712 * v35);
        v652 = v715;
        do
        {
          v653 = v23;
          v654 = v717;
          do
          {
            v655 = *v29;
            if (*v29)
            {
              if (v655 == 255)
              {
                v656 = v27->f32[1];
                v27->f32[0] = v27->f32[0] * (1.0 - *v652);
                v27->f32[1] = v656 * (1.0 - *v652);
                v27->f32[2] = v27->f32[2] * (1.0 - *v652);
                v657 = *v652;
              }

              else
              {
                v658 = v655 * 0.0039216;
                v659 = v27->f32[1];
                v27->f32[0] = v27->f32[0] * (1.0 - (v658 * *v652));
                v27->f32[1] = v659 * (1.0 - (v658 * *v652));
                v27->f32[2] = v27->f32[2] * (1.0 - (v658 * *v652));
                v657 = v658 * *v652;
              }

              v27->f32[3] = v27->f32[3] * (1.0 - v657);
            }

            v29 += v49;
            v660 = &v36[v49];
            v661 = &v652[v33];
            if (v660 >= v720)
            {
              v662 = v472;
            }

            else
            {
              v662 = 0;
            }

            v652 = &v661[v662];
            v36 = &v660[v662];
            v27 += v49;
            --v653;
          }

          while (v653);
          if (v709)
          {
            v663 = v716 + 16 * v714;
            if (v663 >= v709)
            {
              v664 = v651;
            }

            else
            {
              v664 = 0;
            }

            v665 = &v715[v712 + v664];
            if (v663 >= v709)
            {
              v666 = v650;
            }

            else
            {
              v666 = 0;
            }

            v36 = (v663 + 16 * v666);
            v720 += 16 * v666 + 16 * v714;
            v715 += v712 + v664;
            v716 = v36;
            v652 = v665;
          }

          else
          {
            v36 += v714;
            v652 += v712;
          }

          v29 += v711;
          v27 += v710;
          --v717;
        }

        while (v654 != 1);
      }

      return;
    case 9:
      v182 = -v47;
      v183 = v715;
      v184 = -(v714 * v35);
      v185 = -(v712 * v35);
      do
      {
        v186 = v23;
        v187 = v717;
        do
        {
          if (*v29)
          {
            v188 = *v21;
            v189 = *v29 * 0.0039216;
            v190 = v189 * *v183;
            v191 = 1.0 - *v21;
            v192 = (1.0 - v189) + v190;
            *v27 = vmlaq_n_f32(vmulq_n_f32(*v27, v192), vmulq_n_f32(*v36, v189), v191);
            *v21 = (v188 * v192) + (v190 * v191);
          }

          v29 += v40;
          v193 = &v36[v40];
          v194 = &v183[v33];
          if (v193 >= v720)
          {
            v195 = v182;
          }

          else
          {
            v195 = 0;
          }

          v183 = &v194[v195];
          v36 = &v193[v195];
          v21 += v22;
          v27 += v40;
          --v186;
        }

        while (v186);
        if (v709)
        {
          v196 = v716 + 16 * v714;
          if (v196 >= v709)
          {
            v197 = v185;
          }

          else
          {
            v197 = 0;
          }

          v198 = &v715[v712 + v197];
          if (v196 >= v709)
          {
            v199 = v184;
          }

          else
          {
            v199 = 0;
          }

          v36 = (v196 + 16 * v199);
          v720 += 16 * v199 + 16 * v714;
          v715 += v712 + v197;
          v716 = v36;
          v183 = v198;
        }

        else
        {
          v36 += v714;
          v183 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        --v717;
      }

      while (v187 != 1);
      return;
    case 10:
      v455 = -v47;
      v456 = v715;
      v457 = -(v714 * v35);
      v458 = -(v712 * v35);
      do
      {
        v459 = v23;
        v460 = v717;
        do
        {
          if (*v29)
          {
            v461 = *v21;
            v462 = *v29 * 0.0039216;
            v463 = v462 * *v456;
            v464 = 1.0 - *v21;
            *v27 = vmlaq_n_f32(vmulq_n_f32(*v27, 1.0 - v463), vmulq_n_f32(*v36, v462), v464);
            *v21 = (v461 * (1.0 - v463)) + (v463 * v464);
          }

          v29 += v40;
          v465 = &v36[v40];
          v466 = &v456[v33];
          if (v465 >= v720)
          {
            v467 = v455;
          }

          else
          {
            v467 = 0;
          }

          v456 = &v466[v467];
          v36 = &v465[v467];
          v21 += v22;
          v27 += v40;
          --v459;
        }

        while (v459);
        if (v709)
        {
          v468 = v716 + 16 * v714;
          if (v468 >= v709)
          {
            v469 = v458;
          }

          else
          {
            v469 = 0;
          }

          v470 = &v715[v712 + v469];
          if (v468 >= v709)
          {
            v471 = v457;
          }

          else
          {
            v471 = 0;
          }

          v36 = (v468 + 16 * v471);
          v720 += 16 * v471 + 16 * v714;
          v715 += v712 + v469;
          v716 = v36;
          v456 = v470;
        }

        else
        {
          v36 += v714;
          v456 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        --v717;
      }

      while (v460 != 1);
      return;
    case 11:
      v119 = -v47;
      if (v22)
      {
        v120 = v715;
        v121 = -(v714 * v35);
        v122 = -(v712 * v35);
        do
        {
          v123 = v23;
          v124 = v717;
          do
          {
            if (*v29)
            {
              if (v33)
              {
                v125 = *v120;
              }

              else
              {
                v125 = 1.0;
              }

              v126 = *v29 * 0.0039216;
              v127 = v126 * v36->f32[2];
              v128 = v126 * v36->f32[3];
              v129 = v126 * v125;
              v130 = (v129 - (v126 * v36->f32[0])) + (*v21 - v27->f32[0]);
              v131 = *v21 + v129;
              if (v131 > 1.0)
              {
                v131 = 1.0;
              }

              v132 = (v129 - (v126 * v36->f32[1])) + (*v21 - v27->f32[1]);
              v27->f32[0] = v131 - v130;
              v133 = v27->f32[3];
              v134 = (v129 - v127) + (*v21 - v27->f32[2]);
              v27->f32[1] = v131 - v132;
              v135 = (v129 - v128) + (*v21 - v133);
              v27->f32[2] = v131 - v134;
              *v21 = v131;
              v27->f32[3] = v131 - v135;
            }

            v29 += v40;
            v136 = &v36[v40];
            v137 = &v120[v33];
            if (v136 >= v720)
            {
              v138 = v119;
            }

            else
            {
              v138 = 0;
            }

            v120 = &v137[v138];
            v36 = &v136[v138];
            v21 += v22;
            v27 += v40;
            --v123;
          }

          while (v123);
          if (v709)
          {
            v139 = v716 + 16 * v714;
            if (v139 >= v709)
            {
              v140 = v122;
            }

            else
            {
              v140 = 0;
            }

            v141 = &v715[v712 + v140];
            if (v139 >= v709)
            {
              v142 = v121;
            }

            else
            {
              v142 = 0;
            }

            v36 = (v139 + 16 * v142);
            v720 += 16 * v142 + 16 * v714;
            v715 += v712 + v140;
            v716 = v36;
            v120 = v141;
          }

          else
          {
            v36 += v714;
            v120 += v712;
          }

          v29 += v711;
          v27 += v710;
          v21 += v708;
          --v717;
        }

        while (v124 != 1);
      }

      else
      {
        v571 = -(v714 * v35);
        v572 = -(v712 * v35);
        __asm { FMOV            V1.4S, #1.0 }

        v574 = v715;
        do
        {
          v575 = v23;
          v576 = v717;
          do
          {
            if (*v29)
            {
              if (v33)
              {
                a5.i32[0] = *v574;
              }

              else
              {
                a5.i32[0] = 1.0;
              }

              v577 = *v29 * 0.0039216;
              a5.f32[0] = v577 * a5.f32[0];
              a5 = vsubq_f32(_Q1, vaddq_f32(vsubq_f32(vdupq_lane_s32(*a5.f32, 0), vmulq_n_f32(*v36, v577)), vsubq_f32(_Q1, *v27)));
              *v27 = a5;
            }

            v29 += v49;
            v578 = &v36[v49];
            v579 = &v574[v33];
            if (v578 >= v720)
            {
              v580 = v119;
            }

            else
            {
              v580 = 0;
            }

            v574 = &v579[v580];
            v36 = &v578[v580];
            v27 += v49;
            --v575;
          }

          while (v575);
          if (v709)
          {
            v581 = v716 + 16 * v714;
            if (v581 >= v709)
            {
              v582 = v572;
            }

            else
            {
              v582 = 0;
            }

            v583 = &v715[v712 + v582];
            if (v581 >= v709)
            {
              v584 = v571;
            }

            else
            {
              v584 = 0;
            }

            v36 = (v581 + 16 * v584);
            v720 += 16 * v584 + 16 * v714;
            v715 += v712 + v582;
            v716 = v36;
            v574 = v583;
          }

          else
          {
            v36 += v714;
            v574 += v712;
          }

          v29 += v711;
          v27 += v710;
          --v717;
        }

        while (v576 != 1);
      }

      return;
    case 12:
      if (v22)
      {
        v164 = -v47;
        v165 = v715;
        v166 = -(v714 * v35);
        v167 = -(v712 * v35);
        do
        {
          v168 = v23;
          v169 = v717;
          do
          {
            if (*v29)
            {
              if (v33)
              {
                v170 = *v165;
              }

              else
              {
                v170 = 1.0;
              }

              v171 = *v29 * 0.0039216;
              v172 = vmulq_n_f32(*v36, v171);
              v173 = *v21 + (v171 * v170);
              if (v173 > 1.0)
              {
                v173 = 1.0;
              }

              v174.i64[0] = v27->i64[0];
              *v21 = v173;
              v174.i64[1] = v27->i64[1];
              *v27 = vaddq_f32(v172, v174);
            }

            v29 += v40;
            v175 = &v36[v40];
            v176 = &v165[v33];
            if (v175 >= v720)
            {
              v177 = v164;
            }

            else
            {
              v177 = 0;
            }

            v165 = &v176[v177];
            v36 = &v175[v177];
            v21 += v22;
            v27 += v40;
            --v168;
          }

          while (v168);
          if (v709)
          {
            v178 = v716 + 16 * v714;
            if (v178 >= v709)
            {
              v179 = v167;
            }

            else
            {
              v179 = 0;
            }

            v180 = &v715[v712 + v179];
            if (v178 >= v709)
            {
              v181 = v166;
            }

            else
            {
              v181 = 0;
            }

            v36 = (v178 + 16 * v181);
            v720 += 16 * v181 + 16 * v714;
            v715 += v712 + v179;
            v716 = v36;
            v165 = v180;
          }

          else
          {
            v36 += v714;
            v165 += v712;
          }

          v29 += v711;
          v27 += v710;
          v21 += v708;
          --v717;
        }

        while (v169 != 1);
      }

      else
      {
        v585 = -v47;
        do
        {
          v586 = v23;
          v587 = v717;
          do
          {
            if (*v29)
            {
              *v27 = vaddq_f32(vmulq_n_f32(*v36, *v29 * 0.0039216), *v27);
            }

            v29 += v49;
            v588 = &v36[v49];
            if (v588 >= v720)
            {
              v589 = v585;
            }

            else
            {
              v589 = 0;
            }

            v36 = &v588[v589];
            v27 += v49;
            --v586;
          }

          while (v586);
          v29 += v711;
          v27 += v710;
          v590 = v716;
          v591 = v716 + 16 * v714;
          if (v591 >= v709)
          {
            v592 = -(v714 * v35);
          }

          else
          {
            v592 = 0;
          }

          v593 = v720;
          v594 = (v591 + 16 * v592);
          v595 = v720 + 16 * v592 + 16 * v714;
          if (v709)
          {
            v593 = v595;
          }

          v720 = v593;
          if (v709)
          {
            v590 = v594;
            v36 = v594;
          }

          else
          {
            v36 += v714;
          }

          v716 = v590;
          --v717;
        }

        while (v587 != 1);
      }

      return;
    case 13:
      v397 = -v47;
      v398 = v715;
      v399 = -(v714 * v35);
      v400 = -(v712 * v35);
      a4.i32[0] = 1.0;
      while (1)
      {
        v401 = v23;
        v402 = v717;
        do
        {
          if (*v29)
          {
            v403 = v33 ? *v398 : 1.0;
            v404 = *v29 * 0.0039216;
            a5.f32[0] = v404 * v403;
            if (a5.f32[0] > 0.0)
            {
              v405 = vmulq_n_f32(*v36, v404);
              if (v22)
              {
                a6.f32[0] = *v21;
                if (*v21 <= 0.0)
                {
                  goto LABEL_519;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              v406 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), *v27);
              v407 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v405);
              v408 = vmulq_f32(v406, v407);
              v409 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, a4)), 0), vmlaq_n_f32(v408, v406, 1.0 - a5.f32[0]), v408);
              v410 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, a4)), 0), vmlaq_n_f32(v409, v407, 1.0 - a6.f32[0]), v409);
              a5.f32[0] = (a6.f32[0] + a5.f32[0]) - (a6.f32[0] * a5.f32[0]);
              a6 = vdupq_lane_s32(*a5.f32, 0);
              v405 = vsubq_f32(a6, v410);
              if (v22)
              {
LABEL_519:
                *v27 = v405;
                *v21 = a5.f32[0];
                goto LABEL_521;
              }

              *v27 = v405;
            }
          }

LABEL_521:
          v29 += v40;
          v411 = &v36[v40];
          v412 = &v398[v33];
          if (v411 >= v720)
          {
            v413 = v397;
          }

          else
          {
            v413 = 0;
          }

          v398 = &v412[v413];
          v36 = &v411[v413];
          v21 += v22;
          v27 += v40;
          --v401;
        }

        while (v401);
        if (v709)
        {
          v414 = v716 + 16 * v714;
          if (v414 >= v709)
          {
            v415 = v400;
          }

          else
          {
            v415 = 0;
          }

          v416 = &v715[v712 + v415];
          if (v414 >= v709)
          {
            v417 = v399;
          }

          else
          {
            v417 = 0;
          }

          v36 = (v414 + 16 * v417);
          v720 += 16 * v417 + 16 * v714;
          v715 += v712 + v415;
          v716 = v36;
          v398 = v416;
        }

        else
        {
          v36 += v714;
          v398 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        --v717;
        if (v402 == 1)
        {
          return;
        }
      }

    case 14:
      v95 = -v47;
      v96 = v715;
      v97 = -(v714 * v35);
      v98 = -(v712 * v35);
      __asm { FMOV            V1.4S, #1.0 }

      while (1)
      {
        v104 = v23;
        v105 = v717;
        do
        {
          if (*v29)
          {
            v106 = v33 ? *v96 : 1.0;
            v107 = *v29 * 0.0039216;
            a5.f32[0] = v107 * v106;
            if (a5.f32[0] > 0.0)
            {
              v108 = *v36;
              v109 = vmulq_n_f32(*v36, v107);
              if (v22)
              {
                v108.f32[0] = *v21;
                if (*v21 <= 0.0)
                {
                  goto LABEL_106;
                }
              }

              else
              {
                v108.i32[0] = 1.0;
              }

              v110 = vsubq_f32(vdupq_lane_s32(*v108.f32, 0), *v27);
              v111 = vmlaq_f32(v110, vsubq_f32(_Q1, v110), vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v109));
              a5.f32[0] = (a5.f32[0] + v108.f32[0]) - (v108.f32[0] * a5.f32[0]);
              v109 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v111);
              if (v22)
              {
LABEL_106:
                *v27 = v109;
                *v21 = a5.f32[0];
                goto LABEL_108;
              }

              *v27 = v109;
            }
          }

LABEL_108:
          v29 += v40;
          v112 = &v36[v40];
          v113 = &v96[v33];
          if (v112 >= v720)
          {
            v114 = v95;
          }

          else
          {
            v114 = 0;
          }

          v96 = &v113[v114];
          v36 = &v112[v114];
          v21 += v22;
          v27 += v40;
          --v104;
        }

        while (v104);
        if (v709)
        {
          v115 = v716 + 16 * v714;
          if (v115 >= v709)
          {
            v116 = v98;
          }

          else
          {
            v116 = 0;
          }

          v117 = &v715[v712 + v116];
          if (v115 >= v709)
          {
            v118 = v97;
          }

          else
          {
            v118 = 0;
          }

          v36 = (v115 + 16 * v118);
          v720 += 16 * v118 + 16 * v714;
          v715 += v712 + v116;
          v716 = v36;
          v96 = v117;
        }

        else
        {
          v36 += v714;
          v96 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        --v717;
        if (v105 == 1)
        {
          return;
        }
      }

    case 15:
      v251 = v33;
      v252 = -v47;
      v253 = v715;
      v684 = -(v714 * v35);
      v693 = -(v712 * v35);
      v254 = 4 * v22;
      v255 = 16 * v40;
      v702 = v255;
      while (1)
      {
        v256 = v713;
        do
        {
          if (*v29)
          {
            v257 = v33 ? *v253 : 1.0;
            v258 = *v29 * 0.0039216;
            v259 = v258 * v257;
            if ((v258 * v257) > 0.0)
            {
              v260 = vmulq_n_f32(*v36, v258);
              LODWORD(a9) = v260.i32[1];
              v261 = v260.i32[3];
              LODWORD(a10) = v260.i32[2];
              if (v22)
              {
                v262 = *v21;
                if (*v21 <= 0.0)
                {
                  goto LABEL_314;
                }
              }

              else
              {
                v262 = 1.0;
              }

              PDAoverlayPDA(v721.f32, v27->f32[0], v27->f32[1], v27->f32[2], v27->f32[3], v262, *v260.i64, a9, a10, v260.f32[0], v260.f32[1], v260.f32[2], v260.f32[3], v259);
              LODWORD(v22) = v718;
              LODWORD(a9) = v721.i32[1];
              v260.i32[0] = v721.i32[0];
              v261 = v721.i32[3];
              LODWORD(a10) = v721.i32[2];
              if (v718)
              {
                v259 = v722;
                LODWORD(v33) = v719;
                v255 = v702;
LABEL_314:
                v27->i32[0] = v260.i32[0];
                v27->i32[1] = LODWORD(a9);
                v27->i32[2] = LODWORD(a10);
                v27->i32[3] = v261;
                *v21 = v259;
                goto LABEL_316;
              }

              v27->i32[0] = v721.i32[0];
              v27->i32[1] = LODWORD(a9);
              v27->i32[2] = LODWORD(a10);
              v27->i32[3] = v261;
              LODWORD(v33) = v719;
              v255 = v702;
            }
          }

LABEL_316:
          v29 += v49;
          v263 = &v36[v49];
          if (v263 >= v720)
          {
            v264 = v252;
          }

          else
          {
            v264 = 0;
          }

          v253 += v251 + v264;
          v36 = &v263[v264];
          v21 = (v21 + v254);
          v27 = (v27 + v255);
          --v256;
        }

        while (v256);
        if (v709)
        {
          v265 = v716 + 16 * v714;
          v266 = v693;
          if (v265 < v709)
          {
            v266 = 0;
          }

          v253 = &v715[v712 + v266];
          v267 = v684;
          if (v265 < v709)
          {
            v267 = 0;
          }

          v36 = (v265 + 16 * v267);
          v720 += 16 * v267 + 16 * v714;
          v715 += v712 + v266;
          v716 = v36;
        }

        else
        {
          v36 += v714;
          v253 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        if (!--v717)
        {
          return;
        }
      }

    case 16:
      v72 = -v47;
      v73 = v715;
      v74 = -(v714 * v35);
      v75 = -(v712 * v35);
      a4.i32[0] = 1.0;
      while (1)
      {
        v76 = v23;
        v77 = v717;
        do
        {
          if (*v29)
          {
            v78 = v33 ? *v73 : 1.0;
            v79 = *v29 * 0.0039216;
            a5.f32[0] = v79 * v78;
            if (a5.f32[0] > 0.0)
            {
              v80 = vmulq_n_f32(*v36, v79);
              if (v22)
              {
                a6.f32[0] = *v21;
                if (*v21 <= 0.0)
                {
                  goto LABEL_77;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              v81 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), *v27);
              v82 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v80);
              v83 = vmulq_n_f32(v81, a5.f32[0]);
              v84 = vmulq_n_f32(v82, a6.f32[0]);
              v85 = vbslq_s8(vcgtq_f32(v83, v84), v84, v83);
              v86 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, a4)), 0), vmlaq_n_f32(v85, v81, 1.0 - a5.f32[0]), v85);
              v87 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, a4)), 0), vmlaq_n_f32(v86, v82, 1.0 - a6.f32[0]), v86);
              a5.f32[0] = (a6.f32[0] + a5.f32[0]) - (a6.f32[0] * a5.f32[0]);
              a6 = vdupq_lane_s32(*a5.f32, 0);
              v80 = vsubq_f32(a6, v87);
              if (v22)
              {
LABEL_77:
                *v27 = v80;
                *v21 = a5.f32[0];
                goto LABEL_79;
              }

              *v27 = v80;
            }
          }

LABEL_79:
          v29 += v40;
          v88 = &v36[v40];
          v89 = &v73[v33];
          if (v88 >= v720)
          {
            v90 = v72;
          }

          else
          {
            v90 = 0;
          }

          v73 = &v89[v90];
          v36 = &v88[v90];
          v21 += v22;
          v27 += v40;
          --v76;
        }

        while (v76);
        if (v709)
        {
          v91 = v716 + 16 * v714;
          if (v91 >= v709)
          {
            v92 = v75;
          }

          else
          {
            v92 = 0;
          }

          v93 = &v715[v712 + v92];
          if (v91 >= v709)
          {
            v94 = v74;
          }

          else
          {
            v94 = 0;
          }

          v36 = (v91 + 16 * v94);
          v720 += 16 * v94 + 16 * v714;
          v715 += v712 + v92;
          v716 = v36;
          v73 = v93;
        }

        else
        {
          v36 += v714;
          v73 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        --v717;
        if (v77 == 1)
        {
          return;
        }
      }

    case 17:
      v326 = -v47;
      v327 = v715;
      v328 = -(v714 * v35);
      v329 = -(v712 * v35);
      a4.i32[0] = 1.0;
      while (1)
      {
        v330 = v23;
        v331 = v717;
        do
        {
          if (*v29)
          {
            v332 = v33 ? *v327 : 1.0;
            v333 = *v29 * 0.0039216;
            a5.f32[0] = v333 * v332;
            if (a5.f32[0] > 0.0)
            {
              v334 = vmulq_n_f32(*v36, v333);
              if (v22)
              {
                a6.f32[0] = *v21;
                if (*v21 <= 0.0)
                {
                  goto LABEL_415;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              v335 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), *v27);
              v336 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v334);
              v337 = vmulq_n_f32(v335, a5.f32[0]);
              v338 = vmulq_n_f32(v336, a6.f32[0]);
              v339 = vbslq_s8(vcgtq_f32(v338, v337), v338, v337);
              v340 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, a4)), 0), vmlaq_n_f32(v339, v335, 1.0 - a5.f32[0]), v339);
              v341 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, a4)), 0), vmlaq_n_f32(v340, v336, 1.0 - a6.f32[0]), v340);
              a5.f32[0] = (a6.f32[0] + a5.f32[0]) - (a6.f32[0] * a5.f32[0]);
              a6 = vdupq_lane_s32(*a5.f32, 0);
              v334 = vsubq_f32(a6, v341);
              if (v22)
              {
LABEL_415:
                *v27 = v334;
                *v21 = a5.f32[0];
                goto LABEL_417;
              }

              *v27 = v334;
            }
          }

LABEL_417:
          v29 += v40;
          v342 = &v36[v40];
          v343 = &v327[v33];
          if (v342 >= v720)
          {
            v344 = v326;
          }

          else
          {
            v344 = 0;
          }

          v327 = &v343[v344];
          v36 = &v342[v344];
          v21 += v22;
          v27 += v40;
          --v330;
        }

        while (v330);
        if (v709)
        {
          v345 = v716 + 16 * v714;
          if (v345 >= v709)
          {
            v346 = v329;
          }

          else
          {
            v346 = 0;
          }

          v347 = &v715[v712 + v346];
          if (v345 >= v709)
          {
            v348 = v328;
          }

          else
          {
            v348 = 0;
          }

          v36 = (v345 + 16 * v348);
          v720 += 16 * v348 + 16 * v714;
          v715 += v712 + v346;
          v716 = v36;
          v327 = v347;
        }

        else
        {
          v36 += v714;
          v327 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        --v717;
        if (v331 == 1)
        {
          return;
        }
      }

    case 18:
      v439 = v33;
      v440 = -v47;
      v441 = v715;
      v687 = -(v712 * v35);
      v696 = -(v714 * v35);
      v442 = 4 * v22;
      v705 = v442;
      while (1)
      {
        v443 = v713;
        do
        {
          if (*v29)
          {
            v444 = v33 ? *v441 : 1.0;
            v445 = *v29 * 0.0039216;
            *&a9 = v445 * v444;
            if ((v445 * v444) > 0.0)
            {
              v446 = vmulq_n_f32(*v36, v445);
              if (v22)
              {
                v447 = *v21;
                LODWORD(a10) = v446.i32[1];
                v449 = v446.f32[3];
                v448 = v446.f32[2];
                if (*v21 <= 0.0)
                {
                  goto LABEL_578;
                }
              }

              else
              {
                LODWORD(a10) = v446.i32[1];
                v449 = v446.f32[3];
                v448 = v446.f32[2];
                v447 = 1.0;
              }

              PDAcolordodgePDA(v721.f32, v27->f32[0], v27->f32[1], v27->f32[2], v27->f32[3], v447, *v446.i64, a9, a10, v446.f32[0], *&a10, v448, v449, *&a9);
              LODWORD(v22) = v718;
              LODWORD(a10) = v721.i32[1];
              v446.i32[0] = v721.i32[0];
              v449 = v721.f32[3];
              v448 = v721.f32[2];
              if (v718)
              {
                *&a9 = v722;
                LODWORD(v33) = v719;
                v442 = v705;
LABEL_578:
                v27->i32[0] = v446.i32[0];
                v27->i32[1] = LODWORD(a10);
                v27->f32[2] = v448;
                v27->f32[3] = v449;
                *v21 = *&a9;
                goto LABEL_580;
              }

              v27->i32[0] = v721.i32[0];
              v27->i32[1] = LODWORD(a10);
              v27->f32[2] = v448;
              v27->f32[3] = v449;
              LODWORD(v33) = v719;
              v442 = v705;
            }
          }

LABEL_580:
          v29 += v49;
          v450 = &v36[v49];
          if (v450 >= v720)
          {
            v451 = v440;
          }

          else
          {
            v451 = 0;
          }

          v441 += v439 + v451;
          v36 = &v450[v451];
          v21 = (v21 + v442);
          v27 += v49;
          --v443;
        }

        while (v443);
        if (v709)
        {
          v452 = v716 + 16 * v714;
          v453 = v687;
          if (v452 < v709)
          {
            v453 = 0;
          }

          v441 = &v715[v712 + v453];
          v454 = v696;
          if (v452 < v709)
          {
            v454 = 0;
          }

          v36 = (v452 + 16 * v454);
          v720 += 16 * v454 + 16 * v714;
          v715 += v712 + v453;
          v716 = v36;
        }

        else
        {
          v36 += v714;
          v441 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        if (!--v717)
        {
          return;
        }
      }

    case 19:
      v516 = v33;
      v517 = -v47;
      v518 = v715;
      v688 = -(v714 * v35);
      v697 = -(v712 * v35);
      v519 = 4 * v22;
      v520 = 16 * v40;
      v706 = v520;
      while (1)
      {
        v521 = v713;
        do
        {
          if (*v29)
          {
            v522 = v33 ? *v518 : 1.0;
            v523 = *v29 * 0.0039216;
            v524 = v523 * v522;
            if ((v523 * v522) > 0.0)
            {
              v525 = vmulq_n_f32(*v36, v523);
              LODWORD(a9) = v525.i32[1];
              v526 = v525.i32[3];
              LODWORD(a10) = v525.i32[2];
              if (v22)
              {
                v527 = *v21;
                if (*v21 <= 0.0)
                {
                  goto LABEL_678;
                }
              }

              else
              {
                v527 = 1.0;
              }

              PDAcolorburnPDA(v721.f32, v27->f32[0], v27->f32[1], v27->f32[2], v27->f32[3], v527, *v525.i64, a9, a10, v525.f32[0], v525.f32[1], v525.f32[2], v525.f32[3], v524);
              LODWORD(v22) = v718;
              LODWORD(a9) = v721.i32[1];
              v525.i32[0] = v721.i32[0];
              v526 = v721.i32[3];
              LODWORD(a10) = v721.i32[2];
              if (v718)
              {
                v524 = v722;
                LODWORD(v33) = v719;
                v520 = v706;
LABEL_678:
                v27->i32[0] = v525.i32[0];
                v27->i32[1] = LODWORD(a9);
                v27->i32[2] = LODWORD(a10);
                v27->i32[3] = v526;
                *v21 = v524;
                goto LABEL_680;
              }

              v27->i32[0] = v721.i32[0];
              v27->i32[1] = LODWORD(a9);
              v27->i32[2] = LODWORD(a10);
              v27->i32[3] = v526;
              LODWORD(v33) = v719;
              v520 = v706;
            }
          }

LABEL_680:
          v29 += v49;
          v528 = &v36[v49];
          if (v528 >= v720)
          {
            v529 = v517;
          }

          else
          {
            v529 = 0;
          }

          v518 += v516 + v529;
          v36 = &v528[v529];
          v21 = (v21 + v519);
          v27 = (v27 + v520);
          --v521;
        }

        while (v521);
        if (v709)
        {
          v530 = v716 + 16 * v714;
          v531 = v697;
          if (v530 < v709)
          {
            v531 = 0;
          }

          v518 = &v715[v712 + v531];
          v532 = v688;
          if (v530 < v709)
          {
            v532 = 0;
          }

          v36 = (v530 + 16 * v532);
          v720 += 16 * v532 + 16 * v714;
          v715 += v712 + v531;
          v716 = v36;
        }

        else
        {
          v36 += v714;
          v518 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        if (!--v717)
        {
          return;
        }
      }

    case 20:
      v349 = v33;
      v350 = -v47;
      v351 = v715;
      v685 = -(v712 * v35);
      v694 = -(v714 * v35);
      v352 = 4 * v22;
      v703 = v352;
      while (1)
      {
        v353 = v713;
        do
        {
          if (*v29)
          {
            v354 = v33 ? *v351 : 1.0;
            v355 = *v29 * 0.0039216;
            *&a9 = v355 * v354;
            if ((v355 * v354) > 0.0)
            {
              v356 = *v36;
              v357 = vmulq_n_f32(*v36, v355);
              if (v22)
              {
                *&a7 = *v21;
                LODWORD(a10) = v357.i32[1];
                v359 = v357.f32[3];
                v358 = v357.f32[2];
                if (*v21 <= 0.0)
                {
                  goto LABEL_445;
                }
              }

              else
              {
                LODWORD(a10) = v357.i32[1];
                v359 = v357.f32[3];
                v358 = v357.f32[2];
                LODWORD(a7) = 1.0;
              }

              v356.i32[0] = v27->i32[0];
              PDAsoftlightPDA(&v721, *v356.f32, v27->f32[1], v27->f32[2], v27->f32[3], a7, *v357.f32, a9, a10, a2, v23, v25, v42, v33, v22, a16, __PAIR64__(LODWORD(a10), v357.u32[0]), v358, v359, *&a9);
              v22 = v718;
              LODWORD(a10) = v721.i32[1];
              v357.i32[0] = v721.i32[0];
              v359 = v721.f32[3];
              v358 = v721.f32[2];
              if (v718)
              {
                *&a9 = v722;
                v33 = v719;
                v352 = v703;
LABEL_445:
                v27->i32[0] = v357.i32[0];
                v27->i32[1] = LODWORD(a10);
                v27->f32[2] = v358;
                v27->f32[3] = v359;
                *v21 = *&a9;
                goto LABEL_447;
              }

              v27->i32[0] = v721.i32[0];
              v27->i32[1] = LODWORD(a10);
              v27->f32[2] = v358;
              v27->f32[3] = v359;
              v33 = v719;
              v352 = v703;
            }
          }

LABEL_447:
          v29 += v49;
          v360 = &v36[v49];
          if (v360 >= v720)
          {
            v361 = v350;
          }

          else
          {
            v361 = 0;
          }

          v351 += v349 + v361;
          v36 = &v360[v361];
          v21 = (v21 + v352);
          v27 += v49;
          --v353;
        }

        while (v353);
        if (v709)
        {
          v362 = v716 + 16 * v714;
          v363 = v685;
          if (v362 < v709)
          {
            v363 = 0;
          }

          v351 = &v715[v712 + v363];
          v364 = v694;
          if (v362 < v709)
          {
            v364 = 0;
          }

          v36 = (v362 + 16 * v364);
          v720 += 16 * v364 + 16 * v714;
          v715 += v712 + v363;
          v716 = v36;
        }

        else
        {
          v36 += v714;
          v351 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        if (!--v717)
        {
          return;
        }
      }

    case 21:
      v381 = v33;
      v382 = -v47;
      v383 = v715;
      v686 = -(v712 * v35);
      v695 = -(v714 * v35);
      v384 = 4 * v22;
      v704 = v384;
      while (1)
      {
        v385 = v713;
        do
        {
          if (*v29)
          {
            v386 = v33 ? *v383 : 1.0;
            v387 = *v29 * 0.0039216;
            *&a9 = v387 * v386;
            if ((v387 * v386) > 0.0)
            {
              v388 = vmulq_n_f32(*v36, v387);
              if (v22)
              {
                v389 = *v21;
                LODWORD(a10) = v388.i32[1];
                v391 = v388.f32[3];
                v390 = v388.f32[2];
                if (*v21 <= 0.0)
                {
                  goto LABEL_492;
                }
              }

              else
              {
                LODWORD(a10) = v388.i32[1];
                v391 = v388.f32[3];
                v390 = v388.f32[2];
                v389 = 1.0;
              }

              PDAhardlightPDA(v721.f32, v27->f32[0], v27->f32[1], v27->f32[2], v27->f32[3], v389, *v388.i64, a9, a10, v388.f32[0], *&a10, v390, v391, *&a9);
              LODWORD(v22) = v718;
              LODWORD(a10) = v721.i32[1];
              v388.i32[0] = v721.i32[0];
              v391 = v721.f32[3];
              v390 = v721.f32[2];
              if (v718)
              {
                *&a9 = v722;
                LODWORD(v33) = v719;
                v384 = v704;
LABEL_492:
                v27->i32[0] = v388.i32[0];
                v27->i32[1] = LODWORD(a10);
                v27->f32[2] = v390;
                v27->f32[3] = v391;
                *v21 = *&a9;
                goto LABEL_494;
              }

              v27->i32[0] = v721.i32[0];
              v27->i32[1] = LODWORD(a10);
              v27->f32[2] = v390;
              v27->f32[3] = v391;
              LODWORD(v33) = v719;
              v384 = v704;
            }
          }

LABEL_494:
          v29 += v49;
          v392 = &v36[v49];
          if (v392 >= v720)
          {
            v393 = v382;
          }

          else
          {
            v393 = 0;
          }

          v383 += v381 + v393;
          v36 = &v392[v393];
          v21 = (v21 + v384);
          v27 += v49;
          --v385;
        }

        while (v385);
        if (v709)
        {
          v394 = v716 + 16 * v714;
          v395 = v686;
          if (v394 < v709)
          {
            v395 = 0;
          }

          v383 = &v715[v712 + v395];
          v396 = v695;
          if (v394 < v709)
          {
            v396 = 0;
          }

          v36 = (v394 + 16 * v396);
          v720 += 16 * v396 + 16 * v714;
          v715 += v712 + v395;
          v716 = v36;
        }

        else
        {
          v36 += v714;
          v383 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        if (!--v717)
        {
          return;
        }
      }

    case 22:
      v492 = -v47;
      v493 = -(v714 * v35);
      v494 = -(v712 * v35);
      v495 = v715;
      while (1)
      {
        v496 = v23;
        v497 = v717;
        do
        {
          if (*v29)
          {
            v498 = v33 ? *v495 : 1.0;
            v499 = *v29 * 0.0039216;
            a4.f32[0] = v499 * v498;
            if (a4.f32[0] > 0.0)
            {
              v500 = *v36;
              v501 = vmulq_n_f32(*v36, v499);
              if (v22)
              {
                v500.f32[0] = *v21;
                if (*v21 <= 0.0)
                {
                  goto LABEL_648;
                }
              }

              else
              {
                v500.i32[0] = 1.0;
              }

              *&a7 = (v500.f32[0] + a4.f32[0]) - (v500.f32[0] * a4.f32[0]);
              v502 = vsubq_f32(vdupq_lane_s32(*v500.f32, 0), *v27);
              v503 = vsubq_f32(vdupq_lane_s32(*a4.f32, 0), v501);
              v504 = vaddq_f32(v502, v503);
              v505 = vmulq_n_f32(v502, a4.f32[0]);
              v506 = vmulq_n_f32(v503, v500.f32[0]);
              v507 = vsubq_f32(v504, v505);
              v508 = vsubq_f32(v505, v506);
              a4 = vaddq_f32(vsubq_f32(v507, v506), vbslq_s8(vcltzq_f32(v508), vnegq_f32(v508), v508));
              v501 = vsubq_f32(vdupq_lane_s32(*&a7, 0), a4);
              if (v22)
              {
                a4.i32[0] = LODWORD(a7);
LABEL_648:
                *v27 = v501;
                *v21 = a4.f32[0];
                goto LABEL_650;
              }

              *v27 = v501;
            }
          }

LABEL_650:
          v29 += v40;
          v509 = &v36[v40];
          v510 = &v495[v33];
          if (v509 >= v720)
          {
            v511 = v492;
          }

          else
          {
            v511 = 0;
          }

          v495 = &v510[v511];
          v36 = &v509[v511];
          v21 += v22;
          v27 += v40;
          --v496;
        }

        while (v496);
        if (v709)
        {
          v512 = v716 + 16 * v714;
          if (v512 >= v709)
          {
            v513 = v494;
          }

          else
          {
            v513 = 0;
          }

          v514 = &v715[v712 + v513];
          if (v512 >= v709)
          {
            v515 = v493;
          }

          else
          {
            v515 = 0;
          }

          v36 = (v512 + 16 * v515);
          v720 += 16 * v515 + 16 * v714;
          v715 += v712 + v513;
          v716 = v36;
          v495 = v514;
        }

        else
        {
          v36 += v714;
          v495 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        --v717;
        if (v497 == 1)
        {
          return;
        }
      }

    case 23:
      v533 = -v47;
      v534 = v715;
      v535 = -(v714 * v35);
      v536 = -(v712 * v35);
      v537.i64[0] = 0xC0000000C0000000;
      v537.i64[1] = 0xC0000000C0000000;
      while (1)
      {
        v538 = v23;
        v539 = v717;
        do
        {
          if (*v29)
          {
            v540 = v33 ? *v534 : 1.0;
            v541 = *v29 * 0.0039216;
            a5.f32[0] = v541 * v540;
            if (a5.f32[0] > 0.0)
            {
              v542 = *v36;
              v543 = vmulq_n_f32(*v36, v541);
              if (v22)
              {
                a8.f32[0] = *v21;
                if (*v21 <= 0.0)
                {
                  goto LABEL_706;
                }
              }

              else
              {
                a8.i32[0] = 1.0;
              }

              v542.f32[0] = (a8.f32[0] + a5.f32[0]) - (a8.f32[0] * a5.f32[0]);
              a8 = vsubq_f32(vdupq_lane_s32(*a8.f32, 0), *v27);
              v544 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v543);
              v545 = vmlaq_f32(vaddq_f32(a8, v544), v537, vmulq_f32(v544, a8));
              a5 = vdupq_lane_s32(*v542.f32, 0);
              v543 = vsubq_f32(a5, v545);
              if (v22)
              {
                a5.i32[0] = v542.i32[0];
LABEL_706:
                *v27 = v543;
                *v21 = a5.f32[0];
                goto LABEL_708;
              }

              *v27 = v543;
            }
          }

LABEL_708:
          v29 += v40;
          v546 = &v36[v40];
          v547 = &v534[v33];
          if (v546 >= v720)
          {
            v548 = v533;
          }

          else
          {
            v548 = 0;
          }

          v534 = &v547[v548];
          v36 = &v546[v548];
          v21 += v22;
          v27 += v40;
          --v538;
        }

        while (v538);
        if (v709)
        {
          v549 = v716 + 16 * v714;
          if (v549 >= v709)
          {
            v550 = v536;
          }

          else
          {
            v550 = 0;
          }

          v551 = &v715[v712 + v550];
          if (v549 >= v709)
          {
            v552 = v535;
          }

          else
          {
            v552 = 0;
          }

          v36 = (v549 + 16 * v552);
          v720 += 16 * v552 + 16 * v714;
          v715 += v712 + v550;
          v716 = v36;
          v534 = v551;
        }

        else
        {
          v36 += v714;
          v534 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        --v717;
        if (v539 == 1)
        {
          return;
        }
      }

    case 24:
      v217 = v33;
      v218 = -v47;
      v219 = v715;
      v683 = -(v712 * v35);
      v692 = -(v714 * v35);
      v220 = 4 * v22;
      v221 = 16 * v40;
      v701 = v221;
      while (1)
      {
        v222 = v713;
        do
        {
          if (*v29)
          {
            v223 = v33 ? *v219 : 1.0;
            v224 = *v29 * 0.0039216;
            *&a9 = v224 * v223;
            if ((v224 * v223) > 0.0)
            {
              v225 = vmulq_n_f32(*v36, v224);
              if (v22)
              {
                v226 = *v21;
                LODWORD(a10) = v225.i32[1];
                v228 = v225.f32[3];
                v227 = v225.f32[2];
                if (*v21 <= 0.0)
                {
                  goto LABEL_259;
                }
              }

              else
              {
                LODWORD(a10) = v225.i32[1];
                v228 = v225.f32[3];
                v227 = v225.f32[2];
                v226 = 1.0;
              }

              PDAhuePDA(v721.f32, v27->f32[0], v27->f32[1], v27->f32[2], v27->f32[3], v226, *v225.i64, a9, a10, v225.f32[0], *&a10, v227, v228, *&a9);
              LODWORD(v22) = v718;
              LODWORD(a10) = v721.i32[1];
              v225.i32[0] = v721.i32[0];
              v228 = v721.f32[3];
              v227 = v721.f32[2];
              if (v718)
              {
                *&a9 = v722;
                LODWORD(v33) = v719;
                v221 = v701;
LABEL_259:
                v27->i32[0] = v225.i32[0];
                v27->i32[1] = LODWORD(a10);
                v27->f32[2] = v227;
                v27->f32[3] = v228;
                *v21 = *&a9;
                goto LABEL_261;
              }

              v27->i32[0] = v721.i32[0];
              v27->i32[1] = LODWORD(a10);
              v27->f32[2] = v227;
              v27->f32[3] = v228;
              LODWORD(v33) = v719;
              v221 = v701;
            }
          }

LABEL_261:
          v29 += v49;
          v229 = &v36[v49];
          if (v229 >= v720)
          {
            v230 = v218;
          }

          else
          {
            v230 = 0;
          }

          v219 += v217 + v230;
          v36 = &v229[v230];
          v21 = (v21 + v220);
          v27 = (v27 + v221);
          --v222;
        }

        while (v222);
        if (v709)
        {
          v231 = v716 + 16 * v714;
          v232 = v683;
          if (v231 < v709)
          {
            v232 = 0;
          }

          v219 = &v715[v712 + v232];
          v233 = v692;
          if (v231 < v709)
          {
            v233 = 0;
          }

          v36 = (v231 + 16 * v233);
          v720 += 16 * v233 + 16 * v714;
          v715 += v712 + v232;
          v716 = v36;
        }

        else
        {
          v36 += v714;
          v219 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        if (!--v717)
        {
          return;
        }
      }

    case 25:
      v200 = v33;
      v201 = -v47;
      v202 = v715;
      v682 = -(v712 * v35);
      v691 = -(v714 * v35);
      v203 = 4 * v22;
      v204 = 16 * v40;
      v700 = v204;
      while (1)
      {
        v205 = v713;
        do
        {
          if (*v29)
          {
            v206 = v33 ? *v202 : 1.0;
            v207 = *v29 * 0.0039216;
            *&a9 = v207 * v206;
            if ((v207 * v206) > 0.0)
            {
              v208 = vmulq_n_f32(*v36, v207);
              if (v22)
              {
                v209 = *v21;
                LODWORD(a10) = v208.i32[1];
                v211 = v208.f32[3];
                v210 = v208.f32[2];
                if (*v21 <= 0.0)
                {
                  goto LABEL_231;
                }
              }

              else
              {
                LODWORD(a10) = v208.i32[1];
                v211 = v208.f32[3];
                v210 = v208.f32[2];
                v209 = 1.0;
              }

              PDAsaturationPDA(v721.f32, v27->f32[0], v27->f32[1], v27->f32[2], v27->f32[3], v209, *v208.i64, a9, a10, v208.f32[0], *&a10, v210, v211, *&a9);
              LODWORD(v22) = v718;
              LODWORD(a10) = v721.i32[1];
              v208.i32[0] = v721.i32[0];
              v211 = v721.f32[3];
              v210 = v721.f32[2];
              if (v718)
              {
                *&a9 = v722;
                LODWORD(v33) = v719;
                v204 = v700;
LABEL_231:
                v27->i32[0] = v208.i32[0];
                v27->i32[1] = LODWORD(a10);
                v27->f32[2] = v210;
                v27->f32[3] = v211;
                *v21 = *&a9;
                goto LABEL_233;
              }

              v27->i32[0] = v721.i32[0];
              v27->i32[1] = LODWORD(a10);
              v27->f32[2] = v210;
              v27->f32[3] = v211;
              LODWORD(v33) = v719;
              v204 = v700;
            }
          }

LABEL_233:
          v29 += v49;
          v212 = &v36[v49];
          if (v212 >= v720)
          {
            v213 = v201;
          }

          else
          {
            v213 = 0;
          }

          v202 += v200 + v213;
          v36 = &v212[v213];
          v21 = (v21 + v203);
          v27 = (v27 + v204);
          --v205;
        }

        while (v205);
        if (v709)
        {
          v214 = v716 + 16 * v714;
          v215 = v682;
          if (v214 < v709)
          {
            v215 = 0;
          }

          v202 = &v715[v712 + v215];
          v216 = v691;
          if (v214 < v709)
          {
            v216 = 0;
          }

          v36 = (v214 + 16 * v216);
          v720 += 16 * v216 + 16 * v714;
          v715 += v712 + v215;
          v716 = v36;
        }

        else
        {
          v36 += v714;
          v202 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        if (!--v717)
        {
          return;
        }
      }

    case 26:
      v553 = v33;
      v554 = -v47;
      v555 = v715;
      v689 = -(v712 * v35);
      v698 = -(v714 * v35);
      v556 = 4 * v22;
      v557 = 16 * v40;
      v707 = v557;
      while (1)
      {
        v558 = v713;
        do
        {
          if (*v29)
          {
            v559 = v33 ? *v555 : 1.0;
            v560 = *v29 * 0.0039216;
            v561 = v560 * v559;
            if ((v560 * v559) > 0.0)
            {
              v562 = vmulq_n_f32(*v36, v560);
              v563 = v562.i32[1];
              v565 = v562.i32[3];
              v564 = v562.i32[2];
              if (v22)
              {
                a8.f32[0] = *v21;
                if (*v21 <= 0.0)
                {
                  goto LABEL_736;
                }
              }

              else
              {
                a8.i32[0] = 1.0;
              }

              LODWORD(a9) = v27->i32[0];
              LODWORD(a10) = v27->i32[3];
              PDAluminosityPDA(v721.f32, v562.f32[0], v562.f32[1], v562.f32[2], v562.f32[3], v561, *a8.i64, a9, a10, v27->f32[0], COERCE_FLOAT(*(v27->i64 + 4)), COERCE_FLOAT(HIDWORD(*(v27->i64 + 4))), *&a10, a8.f32[0]);
              LODWORD(v22) = v718;
              v563 = v721.i32[1];
              v562.i32[0] = v721.i32[0];
              v565 = v721.i32[3];
              v564 = v721.i32[2];
              if (v718)
              {
                v561 = v722;
                LODWORD(v33) = v719;
                v557 = v707;
LABEL_736:
                v27->i32[0] = v562.i32[0];
                v27->i32[1] = v563;
                v27->i32[2] = v564;
                v27->i32[3] = v565;
                *v21 = v561;
                goto LABEL_738;
              }

              v27->i32[0] = v721.i32[0];
              v27->i32[1] = v563;
              v27->i32[2] = v564;
              v27->i32[3] = v565;
              LODWORD(v33) = v719;
              v557 = v707;
            }
          }

LABEL_738:
          v29 += v49;
          v566 = &v36[v49];
          if (v566 >= v720)
          {
            v567 = v554;
          }

          else
          {
            v567 = 0;
          }

          v555 += v553 + v567;
          v36 = &v566[v567];
          v21 = (v21 + v556);
          v27 = (v27 + v557);
          --v558;
        }

        while (v558);
        if (v709)
        {
          v568 = v716 + 16 * v714;
          v569 = v689;
          if (v568 < v709)
          {
            v569 = 0;
          }

          v555 = &v715[v712 + v569];
          v570 = v698;
          if (v568 < v709)
          {
            v570 = 0;
          }

          v36 = (v568 + 16 * v570);
          v720 += 16 * v570 + 16 * v714;
          v715 += v712 + v569;
          v716 = v36;
        }

        else
        {
          v36 += v714;
          v555 += v712;
        }

        v29 += v711;
        v27 += v710;
        v21 += v708;
        if (!--v717)
        {
          return;
        }
      }

    case 27:
      v55 = v33;
      v56 = -v47;
      v57 = v715;
      v681 = -(v712 * v35);
      v690 = -(v714 * v35);
      v58 = 4 * v22;
      v59 = 16 * v40;
      v699 = v59;
      break;
    default:
      return;
  }

  do
  {
    v60 = v713;
    do
    {
      if (*v29)
      {
        v61 = v33 ? *v57 : 1.0;
        v62 = *v29 * 0.0039216;
        v63 = v62 * v61;
        if ((v62 * v61) > 0.0)
        {
          v64 = vmulq_n_f32(*v36, v62);
          LODWORD(a9) = v64.i32[1];
          v65 = v64.i32[3];
          LODWORD(a10) = v64.i32[2];
          if (v22)
          {
            v66 = *v21;
            if (*v21 <= 0.0)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v66 = 1.0;
          }

          PDAluminosityPDA(v721.f32, v27->f32[0], v27->f32[1], v27->f32[2], v27->f32[3], v66, *v64.i64, a9, a10, v64.f32[0], v64.f32[1], v64.f32[2], v64.f32[3], v63);
          LODWORD(v22) = v718;
          LODWORD(a9) = v721.i32[1];
          v64.i32[0] = v721.i32[0];
          v65 = v721.i32[3];
          LODWORD(a10) = v721.i32[2];
          if (v718)
          {
            v63 = v722;
            LODWORD(v33) = v719;
            v59 = v699;
LABEL_50:
            v27->i32[0] = v64.i32[0];
            v27->i32[1] = LODWORD(a9);
            v27->i32[2] = LODWORD(a10);
            v27->i32[3] = v65;
            *v21 = v63;
            goto LABEL_52;
          }

          v27->i32[0] = v721.i32[0];
          v27->i32[1] = LODWORD(a9);
          v27->i32[2] = LODWORD(a10);
          v27->i32[3] = v65;
          LODWORD(v33) = v719;
          v59 = v699;
        }
      }

LABEL_52:
      v29 += v49;
      v67 = &v36[v49];
      if (v67 >= v720)
      {
        v68 = v56;
      }

      else
      {
        v68 = 0;
      }

      v57 += v55 + v68;
      v36 = &v67[v68];
      v21 = (v21 + v58);
      v27 = (v27 + v59);
      --v60;
    }

    while (v60);
    if (v709)
    {
      v69 = v716 + 16 * v714;
      v70 = v681;
      if (v69 < v709)
      {
        v70 = 0;
      }

      v57 = &v715[v712 + v70];
      v71 = v690;
      if (v69 < v709)
      {
        v71 = 0;
      }

      v36 = (v69 + 16 * v71);
      v720 += 16 * v71 + 16 * v714;
      v715 += v712 + v70;
      v716 = v36;
    }

    else
    {
      v36 += v714;
      v57 += v712;
    }

    v29 += v711;
    v27 += v710;
    v21 += v708;
    --v717;
  }

  while (v717);
}

uint64_t CMYKf_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  memset(v39, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 8) >= 1.0;
  }

  v8 = *(*(v6 + 7) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v33, v39) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = *v6;
  v19 = *a3;
  v34 = v19;
  v35 = v18;
  if (v19 == 538985509)
  {
    if (!v38 && (~v37 & 0xC3) == 0)
    {
      v17.n128_u32[0] = *(a3 + 8);
      if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
      {
        if ((v37 & 4) != 0)
        {
          v17.n128_u64[0] = *(a3 + 32);
          *(a2 + 8) = v17.n128_u64[0];
        }

        CMYKf_mark_inner(*(*a1 + 56), v17);
        return 1;
      }
    }

    v33 = CMYKf_sample_CMYKf_inner;
    goto LABEL_38;
  }

  v20 = SAMPLEINDEX(v19, v10, v11, v12, v13, v14, v15, v16);
  if (!v20)
  {
    return 0xFFFFFFFFLL;
  }

  if (v20 > 0xB)
  {
    goto LABEL_28;
  }

  if (v20 > 6)
  {
    switch(v20)
    {
      case 7:
        v21 = 0;
        v22 = 32;
        break;
      case 9:
        v21 = 0;
        v22 = 40;
        break;
      case 8:
        v21 = 0;
        v22 = 8;
        goto LABEL_29;
      default:
        goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v20 == 2)
  {
    if (!*(a2 + 12))
    {
      v21 = 0;
      v22 = 16;
      goto LABEL_29;
    }

LABEL_28:
    v22 = 255;
    v21 = 1;
    goto LABEL_29;
  }

  if (v20 != 5)
  {
    if (v20 == 6)
    {
      v21 = 0;
      v22 = 0;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v21 = 0;
  v22 = 24;
LABEL_29:
  v23 = CMYKF_image_sample;
  v33 = *&CMYKF_image_sample[2 * v20 + 2];
  if (v33)
  {
    goto LABEL_37;
  }

  if ((HIWORD(*a3) & 0x3Fu) > 8)
  {
    if ((*a3 & 0x3F0000u) >> 16 > 0x10)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_34;
  }

  v23 = CMYK8_image_sample;
  v33 = *&CMYK8_image_sample[2 * v20 + 2];
  if (!v33)
  {
LABEL_34:
    v23 = CMYK16_image_sample;
    v33 = *&CMYK16_image_sample[2 * v20 + 2];
    if (v33)
    {
      v24 = 16;
      goto LABEL_36;
    }

    return 0xFFFFFFFFLL;
  }

  v24 = 8;
LABEL_36:
  v36 = v24;
LABEL_37:
  v34 = *v23;
  if ((v21 & 1) != 0 || (v8 - 1) > 1 || (v37 & 7) != 3 || a2[2] != 5 && a2[2] || v20 > 0xB)
  {
    goto LABEL_38;
  }

  HIDWORD(v26) = v22;
  LODWORD(v26) = v22;
  v25 = v26 >> 3;
  if (v25 > 2)
  {
    if (v25 == 3)
    {
      v34 = *a3;
      v27 = CMYKf_image_mark_RGB24;
      goto LABEL_67;
    }

    if (v25 == 4)
    {
      v34 = *a3;
      v27 = CMYKf_image_mark_rgb32;
      goto LABEL_67;
    }

    if (v25 != 5)
    {
      goto LABEL_38;
    }

    v34 = *a3;
    v28 = CMYKf_image_mark_rgb32;
LABEL_65:
    v29 = v28;
    v30 = a2;
    v31 = v8;
    v32 = 8;
LABEL_68:
    CMYKf_image_mark_image(v30, &v33, v31, v32, v29);
    return 1;
  }

  switch(v25)
  {
    case 0:
      v34 = *a3;
      v27 = CMYKf_image_mark_RGB32;
      goto LABEL_67;
    case 1:
      v34 = *a3;
      v28 = CMYKf_image_mark_RGB32;
      goto LABEL_65;
    case 2:
      v34 = *a3;
      v27 = CMYKf_image_mark_W8;
LABEL_67:
      v29 = v27;
      v30 = a2;
      v31 = v8;
      v32 = 0;
      goto LABEL_68;
  }

LABEL_38:
  CMYKf_image_mark(a2, &v33, v8, v17);
  return 1;
}

void CMYKf_image_mark_image(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(uint64_t, _DWORD *))
{
  v57[0] = a3;
  v57[1] = a4;
  v57[2] = *(a2 + 184);
  v8 = *(a1 + 28) >> 4;
  v59 = v8;
  if (*(a1 + 48))
  {
    v9 = *(a1 + 32) >> 2;
  }

  else
  {
    v9 = 0;
  }

  v61 = v9;
  v10 = *(a2 + 120);
  v11 = *(a2 + 20);
  v12 = HIBYTE(v11);
  v13 = BYTE2(v11);
  if (v10)
  {
    v14 = *(a2 + 24);
    v15 = (a2 + 104);
    v16 = (a2 + 72);
    v17 = (a2 + 88);
    v18 = v12;
  }

  else
  {
    v14 = *(a2 + 8) >> 25;
    v15 = (a2 + 96);
    v16 = (a2 + 64);
    v17 = (a2 + 80);
    v10 = *(a2 + 112);
    v18 = v13;
  }

  v19 = *v17;
  v20 = *v16;
  v21 = *v15;
  v22 = v18;
  v64 = v18;
  v62 = v21;
  v72 = v14;
  v55 = v20;
  v56 = v19;
  v70 = v19;
  v68 = v20;
  v66 = v10;
  v23 = *(a2 + 128);
  if (v23)
  {
    v24 = *(a2 + 8) >> 25;
    v25 = (a2 + 96);
    v26 = (a2 + 64);
    v27 = (a2 + 80);
    v12 = v13;
  }

  else
  {
    v24 = *(a2 + 24);
    v25 = (a2 + 104);
    v26 = (a2 + 72);
    v27 = (a2 + 88);
    v23 = *(a2 + 136);
  }

  v28 = *v27;
  v29 = *v26;
  v30 = *v25;
  v65 = v12;
  v63 = v30;
  v73 = v24;
  v71 = v28;
  v69 = v29;
  v67 = v23;
  v31 = *(a1 + 4);
  if ((v31 & 0x80000000) == 0)
  {
    v32 = malloc_type_malloc(16 * v31, 0x203A255uLL);
    v74 = v32;
    if (v32)
    {
      if (*(a2 + 176))
      {
        if (v31)
        {
          v34 = v32 + 1;
          v35 = v56 - v21;
          do
          {
            if (((v21 - v55) | v35) < 0)
            {
              v39 = 0;
            }

            else
            {
              v36 = ((v21 & ~(-1 << v22)) >> (v22 - 4)) & 0xF;
              v37 = weights_21890[v36];
              if (v36 - 7 >= 9)
              {
                v38 = -v14;
              }

              else
              {
                v38 = v14;
              }

              v39 = v37 & 0xF | (16 * v38);
            }

            *(v34 - 1) = v14 * (v21 >> v22);
            *v34 = v39;
            v34 += 2;
            v21 += v10;
            v35 -= v10;
            --v31;
          }

          while (v31);
        }
      }

      else if (v31)
      {
        v40 = v32 + 1;
        do
        {
          *(v40 - 1) = v14 * (v21 >> v22);
          *v40 = 0;
          v40 += 2;
          v21 += v10;
          --v31;
        }

        while (v31);
      }

      v41 = v32;
      v42 = *(a1 + 4);
      v43 = *(a1 + 8);
      v75 = v43;
      v76 = v42;
      v44 = *(a1 + 136);
      if (v44)
      {
        v45 = *(a1 + 104);
        v77[0] = *(a1 + 108);
        v77[1] = v45;
        shape_enum_clip_alloc(v32, v33, v44, 1, 1, 1, v45, v77[0], v42, v43);
        v47 = v46;
        if (v46)
        {
          goto LABEL_32;
        }
      }

      v48 = 0;
      v49 = 0;
      v47 = 0;
      *v77 = 0;
      while (1)
      {
        v50 = *(a1 + 16) + v49;
        v51 = *(a1 + 48);
        v52 = v48 + *(a1 + 12);
        v53 = *(a1 + 40) + 16 * v8 * v50 + 16 * v52;
        v54 = v51 + 4 * v9 * v50 + 4 * v52;
        if (!v51)
        {
          v54 = 0;
        }

        v58 = v53;
        v60 = v54;
        a5(a2, v57);
        if (!v47)
        {
          break;
        }

LABEL_32:
        if (!shape_enum_clip_next(v47, &v77[1], v77, &v76, &v75))
        {
          free(v47);
          break;
        }

        v49 = v77[0];
        v48 = v77[1];
        v8 = v59;
        v9 = v61;
      }

      free(v41);
    }
  }
}

void CMYKf_image_mark(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v454 = *MEMORY[0x1E69E9840];
  v440 = *(a1 + 4);
  v438 = v440;
  v4 = (v440 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v4 <= 0x1FFFFFF)
  {
    v7 = *(a1 + 28);
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    a4.n128_u32[0] = *(a2 + 184);
    v445 = a4;
    v10 = *(a1 + 136);
    v12 = *(a2 + 96);
    v11 = *(a2 + 104);
    v441 = a2;
    v442 = v12;
    v450 = v11;
    v451 = v8;
    v13 = *(a1 + 12);
    v14 = *(a1 + 16);
    v449 = *(a1 + 8);
    v15 = *(a2 + 16);
    v16 = (v15 + 22) * v4;
    if (v16 > 65439)
    {
      v19 = malloc_type_calloc(1uLL, v16 + 96, 0xB10D7B48uLL);
      v18 = v19;
      v21 = v19;
      v22 = v441;
      if (!v19)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1, a4);
      v18 = &v433 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v18, v17);
      v21 = 0;
      v22 = v441;
    }

    v435 = v21;
    v439 = a3;
    v23 = v7 >> 4;
    v24 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
    v25 = v24 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v15)
    {
      v26 = 20 * v4;
    }

    else
    {
      v26 = 0;
    }

    v27 = v25 + v26;
    v22[18] = v24;
    v22[19] = v25 + v26;
    v22[20] = v25;
    v28 = v451;
    if (v451)
    {
      v29 = *(a1 + 32) >> 2;
      v30 = (v451 + 4 * v29 * v14 + 4 * v13);
      v31 = v438;
      v446 = v29 - v438;
      v28 = 1;
    }

    else
    {
      v30 = 0;
      v446 = 0;
      v31 = v438;
    }

    v32 = (v9 + 16 * v23 * v14 + 16 * v13);
    v444 = v23 - v31;
    v33 = *(a1 + 104);
    v34 = *(a1 + 108);
    v35 = *(a1 + 2);
    if (v35 == 6 || v35 == 1)
    {
      v36 = v439;
      v38 = v441;
      v37 = v442;
      v39 = v450;
      if (v10)
      {
        v433 = v23;
        v40 = 0;
        v41 = *(a1 + 124);
        v42 = v10 + v41 * v34;
        v10 = 0;
        v43 = &v42[v33];
        v31 = v438;
        v443 = v41 - v438;
        v44 = v440;
        goto LABEL_21;
      }

      goto LABEL_562;
    }

    v433 = v23;
    if (v10)
    {
      v434 = v28;
      shape_enum_clip_alloc(v19, v20, v10, 1, 1, 1, v33, v34, v440, v449);
      if (v45)
      {
        v10 = v45;
        v46 = 0;
        v47 = ((v15 * v4 + 15) & 0xFFFFFFF0);
        if (!v15)
        {
          v47 = 20 * v4;
        }

        v48 = v438;
        v443 = -v438;
        v43 = (v27 + v47 + 16);
        v44 = v440;
        v38 = v441;
        v39 = v450;
        goto LABEL_565;
      }

LABEL_562:
      if (v435)
      {
        free(v435);
      }

      return;
    }

    v443 = 0;
    v43 = 0;
    v40 = 0;
    v36 = v439;
    v44 = v440;
    v38 = v441;
    v37 = v442;
    v39 = v450;
LABEL_21:
    v437 = (v44 - 1);
    v436 = -v31;
    v434 = v28;
    v49 = 4 * v28;
    v50 = v10;
LABEL_22:
    v447 = v40;
    v448 = v50;
    v51 = *v38;
    v450 = v39;
    v51(v38, v37, v39, v44);
    v66 = v38[20];
    v67 = v38[18];
    v68 = *(v38 + 2);
    if (v68 == *(v38 + 3))
    {
      v60 = v445;
      if (v445.n128_f32[0] >= 1.0)
      {
        v71 = v451;
      }

      else
      {
        v69 = v44;
        v70 = v38[18];
        v71 = v451;
        do
        {
          if (*v70)
          {
            v59 = vmulq_n_f32(*v66, v60.f32[0]);
            *v66 = v59;
            v66[1].f32[0] = v60.f32[0] * v66[1].f32[0];
          }

          ++v70;
          v66 = (v66 + 20);
          --v69;
        }

        while (v69);
        v66 = (v66 + 20 * v436);
        v67 += v437 + v436 + 1;
      }
    }

    else
    {
      v72 = v38[19];
      v73 = HIWORD(v68) & 0x3F;
      v74 = v445.n128_f32[0];
      if (v73 == 16)
      {
        v71 = v451;
        v79 = 0;
        v80 = &v72->u16[4];
        v81 = &v66->f32[2];
        if (v445.n128_f32[0] >= 1.0)
        {
          do
          {
            if (v67[v79])
            {
              v84 = *v80;
              v85 = *(v80 - 1);
              *(v81 - 2) = *&_blt_float[v85 + 256] + *&_blt_float[BYTE1(v85) + 512];
              *(v81 - 1) = *&_blt_float[BYTE2(v85) + 256] + *&_blt_float[BYTE3(v85) | 0x200];
              *v81 = *&_blt_float[BYTE4(v85) + 256] + *&_blt_float[BYTE5(v85) + 512];
              v81[1] = *&_blt_float[BYTE6(v85) + 256] + *&_blt_float[HIBYTE(v85) + 512];
              v81[2] = *&_blt_float[v84 + 256] + *(&_blt_float[512] + ((v84 >> 6) & 0x3FC));
            }

            v80 += 8;
            ++v79;
            v81 += 5;
          }

          while (v44 != v79);
        }

        else
        {
          do
          {
            if (v67[v79])
            {
              v82 = *v80;
              v83 = *(v80 - 1);
              *(v81 - 2) = v74 * (*&_blt_float[v83 + 256] + *&_blt_float[BYTE1(v83) + 512]);
              *(v81 - 1) = v74 * (*&_blt_float[BYTE2(v83) + 256] + *&_blt_float[BYTE3(v83) | 0x200]);
              *v81 = v74 * (*&_blt_float[BYTE4(v83) + 256] + *&_blt_float[BYTE5(v83) + 512]);
              v81[1] = v74 * (*&_blt_float[BYTE6(v83) + 256] + *&_blt_float[HIBYTE(v83) + 512]);
              v81[2] = v74 * (*&_blt_float[v82 + 256] + *(&_blt_float[512] + ((v82 >> 6) & 0x3FC)));
            }

            v80 += 8;
            ++v79;
            v81 += 5;
          }

          while (v44 != v79);
        }
      }

      else
      {
        _ZF = v73 == 32;
        v71 = v451;
        v76 = 0;
        if (_ZF)
        {
          v77 = v72 + 1;
          v78 = v66 + 1;
          if (v445.n128_f32[0] >= 1.0)
          {
            do
            {
              if (v67[v76])
              {
                v59 = v77[-1];
                v78[-1] = v59;
                v78->i32[0] = v77->i32[0];
              }

              v77 = (v77 + 20);
              ++v76;
              v78 = (v78 + 20);
            }

            while (v44 != v76);
          }

          else
          {
            do
            {
              if (v67[v76])
              {
                v59 = vmulq_n_f32(v77[-1], v74);
                v78[-1] = v59;
                v78->f32[0] = v74 * v77->f32[0];
              }

              v77 = (v77 + 20);
              ++v76;
              v78 = (v78 + 20);
            }

            while (v44 != v76);
          }
        }

        else if (v445.n128_f32[0] >= 1.0)
        {
          v89 = &v66->i32[2];
          do
          {
            if (v67[v76])
            {
              v90 = v72->i64[v76];
              *(v89 - 2) = _blt_float[BYTE3(v90)];
              *(v89 - 1) = _blt_float[BYTE2(v90)];
              *v89 = _blt_float[BYTE1(v90)];
              v89[1] = _blt_float[v90];
              v89[2] = _blt_float[BYTE4(v90)];
            }

            ++v76;
            v89 += 5;
          }

          while (v44 != v76);
        }

        else
        {
          f32 = v66[1].f32;
          do
          {
            if (v67[v76])
            {
              v87 = v72->i64[v76];
              v88.i32[0] = _blt_float[BYTE3(v87)];
              v88.i32[1] = _blt_float[BYTE2(v87)];
              v88.i32[2] = _blt_float[BYTE1(v87)];
              v88.i32[3] = _blt_float[v87];
              v59 = vmulq_n_f32(v88, v74);
              *(f32 - 1) = v59;
              *f32 = v74 * *&_blt_float[BYTE4(v87)];
            }

            ++v76;
            f32 += 5;
          }

          while (v44 != v76);
        }
      }
    }

    switch(v36)
    {
      case 0:
        v91 = v43 != 0;
        v92 = v44;
        v93 = v43;
        if (v71)
        {
          v94 = v447;
          do
          {
            v95 = *v67;
            if (*v67)
            {
              if (v43)
              {
                v95 = (*v93 * v95 + ((*v93 * v95) >> 8) + 1) >> 8;
              }

              if (v95)
              {
                if (v95 == 255)
                {
                  v32->i64[0] = 0;
                  v32->i64[1] = 0;
                  v96 = 0.0;
                }

                else
                {
                  v97 = (v95 * -0.0039216) + 1.0;
                  *v32 = vmulq_n_f32(*v32, v97);
                  v96 = v97 * *v30;
                }

                *v30 = v96;
              }
            }

            ++v67;
            v93 += v91;
            ++v32;
            ++v30;
            --v92;
          }

          while (v92);
        }

        else
        {
          v94 = v447;
          do
          {
            v396 = *v67;
            if (*v67)
            {
              if (v43)
              {
                v396 = (*v93 * v396 + ((*v93 * v396) >> 8) + 1) >> 8;
              }

              if (v396)
              {
                if (v396 == 255)
                {
                  v32->i64[0] = 0;
                  v32->i64[1] = 0;
                }

                else
                {
                  *v32 = vmulq_n_f32(*v32, (v396 * -0.0039216) + 1.0);
                }
              }
            }

            ++v67;
            v93 += v91;
            ++v32;
            --v92;
          }

          while (v92);
        }

        goto LABEL_508;
      case 1:
        v233 = *v67;
        if (v71)
        {
          if (v43)
          {
            v234 = 0;
            v235 = v66[1].f32;
            v236 = v67 + 1;
            v237 = v30 - 1;
            v200 = v32 - 1;
            v201 = v450;
            v94 = v447;
            do
            {
              if (v233)
              {
                v238 = ((v43[v234] * v233 + ((v43[v234] * v233) >> 8) + 1) >> 8);
                if (v238)
                {
                  if (v238 == 255)
                  {
                    v32[v234] = *(v235 - 4);
                    v239 = *v235;
                  }

                  else
                  {
                    v240 = v238 * 0.0039216;
                    v32[v234] = vmlaq_n_f32(vmulq_n_f32(v32[v234], 1.0 - v240), *(v235 - 4), v240);
                    v239 = ((1.0 - v240) * v30[v234]) + (*v235 * v240);
                  }

                  v30[v234] = v239;
                }
              }

              v233 = v236[v234++];
              v235 += 5;
              ++v237;
              ++v200;
            }

            while (v44 != v234);
            v43 += v234 + v443;
          }

          else
          {
            v412 = v66[1].f32;
            v413 = v67 + 1;
            v237 = v30 - 1;
            v200 = v32 - 1;
            v414 = v44;
            v201 = v450;
            v94 = v447;
            do
            {
              if (v233)
              {
                if (v233 == 255)
                {
                  v200[1] = *(v412 - 4);
                  v415 = *v412;
                }

                else
                {
                  v416 = v233 * 0.0039216;
                  v200[1] = vmlaq_n_f32(vmulq_n_f32(v200[1], 1.0 - v416), *(v412 - 4), v416);
                  v415 = ((1.0 - v416) * v237[1]) + (*v412 * v416);
                }

                v237[1] = v415;
              }

              v417 = *v413++;
              v233 = v417;
              v412 += 5;
              ++v237;
              ++v200;
              --v414;
            }

            while (v414);
            v43 = 0;
          }

          v411 = &v237[v446];
          goto LABEL_535;
        }

        v397 = v67 + 1;
        v398 = v32 - 1;
        v399 = v44;
        if (v43)
        {
          v201 = v450;
          v94 = v447;
          do
          {
            if (v233)
            {
              v400 = ((*v43 * v233 + ((*v43 * v233) >> 8) + 1) >> 8);
              if (v400)
              {
                if (v400 == 255)
                {
                  v401 = *v66;
                }

                else
                {
                  v401 = vmlaq_n_f32(vmulq_n_f32(v398[1], 1.0 - (v400 * 0.0039216)), *v66, v400 * 0.0039216);
                }

                v398[1] = v401;
              }
            }

            v402 = *v397++;
            v233 = v402;
            v66 = (v66 + 20);
            ++v43;
            ++v398;
            --v399;
          }

          while (v399);
          v43 += v443;
        }

        else
        {
          v201 = v450;
          v94 = v447;
          do
          {
            if (v233)
            {
              if (v233 == 255)
              {
                v426 = *v66;
              }

              else
              {
                v426 = vmlaq_n_f32(vmulq_n_f32(v398[1], 1.0 - (v233 * 0.0039216)), *v66, v233 * 0.0039216);
              }

              v398[1] = v426;
            }

            v427 = *v397++;
            v233 = v427;
            v66 = (v66 + 20);
            ++v398;
            --v399;
          }

          while (v399);
          v43 = 0;
        }

        v425 = &v398[v444];
        goto LABEL_559;
      case 2:
        v196 = *v67;
        if (v71)
        {
          if (v43)
          {
            v197 = 0;
            v198 = v67 + 1;
            v199 = v30 - 1;
            v200 = v32 - 1;
            v201 = v450;
            v94 = v447;
            while (1)
            {
              if (!v196)
              {
                goto LABEL_204;
              }

              v202 = ((v43[v197] * v196 + ((v43[v197] * v196) >> 8) + 1) >> 8);
              if (!v202)
              {
                goto LABEL_204;
              }

              if (v202 == 255)
              {
                v203 = v66[1].f32[0];
                if (v203 >= 1.0)
                {
                  v32[v197] = *v66;
                  goto LABEL_203;
                }

                if (v203 > 0.0)
                {
                  v32[v197] = vmlaq_n_f32(*v66, v32[v197], 1.0 - v203);
                  v203 = v203 + (v30[v197] * (1.0 - v203));
LABEL_203:
                  v30[v197] = v203;
                }
              }

              else
              {
                v204 = v202 * 0.0039216;
                v205 = v204 * v66[1].f32[0];
                if (v205 > 0.0)
                {
                  v32[v197] = vmlaq_n_f32(vmulq_n_f32(*v66, v204), v32[v197], 1.0 - v205);
                  v203 = v205 + (v30[v197] * (1.0 - v205));
                  goto LABEL_203;
                }
              }

LABEL_204:
              v196 = v198[v197];
              v66 = (v66 + 20);
              ++v197;
              ++v199;
              ++v200;
              if (v44 == v197)
              {
                v43 += v197 + v443;
                goto LABEL_525;
              }
            }
          }

          v405 = v67 + 1;
          v199 = v30 - 1;
          v200 = v32 - 1;
          v406 = v44;
          v201 = v450;
          v94 = v447;
          while (1)
          {
            if (v196)
            {
              if (v196 == 255)
              {
                v407 = v66[1].f32[0];
                if (v407 >= 1.0)
                {
                  v200[1] = *v66;
                  goto LABEL_522;
                }

                if (v407 > 0.0)
                {
                  v200[1] = vmlaq_n_f32(*v66, v200[1], 1.0 - v407);
                  v407 = v407 + (v199[1] * (1.0 - v407));
LABEL_522:
                  v199[1] = v407;
                }
              }

              else
              {
                v408 = v196 * 0.0039216;
                v409 = v408 * v66[1].f32[0];
                if (v409 > 0.0)
                {
                  v200[1] = vmlaq_n_f32(vmulq_n_f32(*v66, v408), v200[1], 1.0 - v409);
                  v407 = v409 + (v199[1] * (1.0 - v409));
                  goto LABEL_522;
                }
              }
            }

            v410 = *v405++;
            v196 = v410;
            v66 = (v66 + 20);
            ++v199;
            ++v200;
            if (!--v406)
            {
              v43 = 0;
LABEL_525:
              v411 = &v199[v446];
LABEL_535:
              v32 = &v200[v444 + 1];
              v30 = v411 + 1;
              goto LABEL_510;
            }
          }
        }

        v383 = v67 + 1;
        v384 = v32 - 1;
        v385 = v44;
        if (v43)
        {
          v201 = v450;
          v94 = v447;
          while (1)
          {
            if (!v196)
            {
              goto LABEL_465;
            }

            v386 = ((*v43 * v196 + ((*v43 * v196) >> 8) + 1) >> 8);
            if (!v386)
            {
              goto LABEL_465;
            }

            if (v386 == 255)
            {
              v387 = v66[1].f32[0];
              if (v387 >= 1.0)
              {
                v392 = *v66;
                goto LABEL_464;
              }

              if (v387 > 0.0)
              {
                v388 = 1.0 - v387;
                v389 = *v66;
                goto LABEL_462;
              }
            }

            else
            {
              v390 = v386 * 0.0039216;
              v391 = v390 * v66[1].f32[0];
              if (v391 > 0.0)
              {
                v388 = 1.0 - v391;
                v389 = vmulq_n_f32(*v66, v390);
LABEL_462:
                v392 = vmlaq_n_f32(v389, v384[1], v388);
LABEL_464:
                v384[1] = v392;
              }
            }

LABEL_465:
            v393 = *v383++;
            v196 = v393;
            v66 = (v66 + 20);
            ++v43;
            ++v384;
            if (!--v385)
            {
              v43 += v443;
LABEL_549:
              v425 = &v384[v444];
LABEL_559:
              v32 = v425 + 1;
              v30 += v446;
LABEL_510:
              if (v449 == 1)
              {
                v10 = v448;
                if (v448)
                {
LABEL_561:
                  free(v10);
                }

                goto LABEL_562;
              }

              --v449;
              v50 = 0;
              v40 = v94 + 1;
              v37 += v38[16];
              v39 = v38[17] + v201;
              if (v448)
              {
                v46 = v40;
                v442 = v37;
                v48 = v438;
                v10 = v448;
LABEL_565:
                v428 = v446 + v48;
                while (1)
                {
                  while (1)
                  {
                    v429 = *(v43 - 4);
                    v430 = v429 - v46;
                    if (v429 <= v46)
                    {
                      break;
                    }

                    v449 -= v430;
                    if (v449 < 1)
                    {
                      goto LABEL_561;
                    }

                    v431 = v38[17];
                    v442 += v38[16] * v430;
                    v39 += v431 * v430;
                    v32 += v433 * v430;
                    v432 = v428 * v430;
                    if (!v451)
                    {
                      v432 = 0;
                    }

                    v30 += v432;
                    v46 = v429;
                  }

                  v40 = v46;
                  if (v46 < *(v43 - 3) + v429)
                  {
                    break;
                  }

                  if (!shape_enum_clip_scan(v10, v43 - 4))
                  {
                    goto LABEL_561;
                  }
                }

                v31 = v438;
                v37 = v442;
                v28 = v434;
                v36 = v439;
                goto LABEL_21;
              }

              goto LABEL_22;
            }
          }
        }

        v201 = v450;
        v94 = v447;
        while (1)
        {
          if (v196)
          {
            if (v196 == 255)
            {
              v418 = v66[1].f32[0];
              if (v418 >= 1.0)
              {
                v423 = *v66;
                goto LABEL_546;
              }

              if (v418 > 0.0)
              {
                v419 = 1.0 - v418;
                v420 = *v66;
                goto LABEL_544;
              }
            }

            else
            {
              v421 = v196 * 0.0039216;
              v422 = v421 * v66[1].f32[0];
              if (v422 > 0.0)
              {
                v419 = 1.0 - v422;
                v420 = vmulq_n_f32(*v66, v421);
LABEL_544:
                v423 = vmlaq_n_f32(v420, v384[1], v419);
LABEL_546:
                v384[1] = v423;
              }
            }
          }

          v424 = *v383++;
          v196 = v424;
          v66 = (v66 + 20);
          ++v384;
          if (!--v385)
          {
            v43 = 0;
            goto LABEL_549;
          }
        }

      case 3:
        v215 = v66[1].f32;
        v216 = v44;
        v93 = v43;
        v94 = v447;
        do
        {
          v217 = *v67;
          if (*v67)
          {
            if (v43)
            {
              v217 = (*v93 * v217 + ((*v93 * v217) >> 8) + 1) >> 8;
            }

            if (v217)
            {
              if (v217 == 255)
              {
                v32->f32[0] = *(v215 - 4) * *v30;
                v32->f32[1] = *(v215 - 3) * *v30;
                v32->f32[2] = *(v215 - 2) * *v30;
                v32->f32[3] = *(v215 - 1) * *v30;
                v218 = *v215 * *v30;
              }

              else
              {
                v219 = v217 * 0.0039216;
                v220 = *v30;
                v221 = v219 * *v30;
                v222 = 1.0 - v219;
                *v32 = vmlaq_n_f32(vmulq_n_f32(*v32, v222), *(v215 - 4), v221);
                v218 = (v222 * v220) + (*v215 * v221);
              }

              *v30 = v218;
            }
          }

          ++v67;
          v93 += v43 != 0;
          ++v32;
          v215 += 5;
          v30 = (v30 + v49);
          --v216;
        }

        while (v216);
        goto LABEL_508;
      case 4:
        v152 = v66[1].f32;
        v153 = v44;
        v93 = v43;
        v94 = v447;
        do
        {
          v154 = *v67;
          if (*v67)
          {
            if (v43)
            {
              v154 = (*v93 * v154 + ((*v93 * v154) >> 8) + 1) >> 8;
            }

            if (v154)
            {
              if (v154 == 255)
              {
                v32->f32[0] = *(v152 - 4) * (1.0 - *v30);
                v32->f32[1] = *(v152 - 3) * (1.0 - *v30);
                v32->f32[2] = *(v152 - 2) * (1.0 - *v30);
                v32->f32[3] = *(v152 - 1) * (1.0 - *v30);
                v155 = *v152 * (1.0 - *v30);
              }

              else
              {
                v156 = v154 * 0.0039216;
                v157 = *v30;
                v158 = v156 * (1.0 - *v30);
                v159 = 1.0 - v156;
                *v32 = vmlaq_n_f32(vmulq_n_f32(*v32, v159), *(v152 - 4), v158);
                v155 = (v159 * v157) + (*v152 * v158);
              }

              *v30 = v155;
            }
          }

          ++v67;
          v93 += v43 != 0;
          ++v32;
          v152 += 5;
          v30 = (v30 + v49);
          --v153;
        }

        while (v153);
        goto LABEL_508;
      case 5:
        v263 = v66[1].f32;
        v264 = v44;
        v93 = v43;
        v94 = v447;
        while (1)
        {
          v265 = *v67;
          if (*v67)
          {
            if (!v43)
            {
              goto LABEL_290;
            }

            v266 = *v93 * v265 + ((*v93 * v265) >> 8) + 1;
            if (v266 >= 0x100)
            {
              break;
            }
          }

LABEL_291:
          ++v67;
          v93 += v43 != 0;
          ++v32;
          v263 += 5;
          v30 = (v30 + v49);
          if (!--v264)
          {
            goto LABEL_508;
          }
        }

        v265 = v266 >> 8;
LABEL_290:
        v267 = *v30;
        v268 = v265 * 0.0039216;
        v269 = v268 * *v263;
        *v32 = vmlaq_n_f32(vmulq_n_f32(*v32, 1.0 - v269), vmulq_n_f32(*(v263 - 4), v268), *v30);
        *v30 = (v267 * (1.0 - v269)) + (v269 * v267);
        goto LABEL_291;
      case 6:
        v291 = v66[1].f32;
        v292 = v44;
        v93 = v43;
        v94 = v447;
        while (1)
        {
          v293 = *v67;
          if (*v67)
          {
            if (v43)
            {
              v294 = *v93 * v293 + ((*v93 * v293) >> 8) + 1;
              if (v294 < 0x100)
              {
                goto LABEL_332;
              }

              v293 = v294 >> 8;
            }

            v295 = *v30;
            v296 = 1.0 - *v30;
            if (v296 >= 1.0)
            {
              v299 = v293 * 0.0039216;
              *v32 = vmulq_n_f32(*(v291 - 4), v299);
              v298 = v299 * *v291;
              goto LABEL_331;
            }

            if (v296 > 0.0)
            {
              v297 = v296 * (v293 * 0.0039216);
              *v32 = vmlaq_n_f32(*v32, *(v291 - 4), v297);
              v298 = v295 + (*v291 * v297);
LABEL_331:
              *v30 = v298;
            }
          }

LABEL_332:
          ++v67;
          v93 += v43 != 0;
          ++v32;
          v291 += 5;
          v30 = (v30 + v49);
          if (!--v292)
          {
            goto LABEL_508;
          }
        }

      case 7:
        v223 = v43 != 0;
        v224 = v66[1].f32;
        v225 = v44;
        v93 = v43;
        if (v71)
        {
          v94 = v447;
          do
          {
            v226 = *v67;
            if (*v67)
            {
              if (v43)
              {
                v226 = (*v93 * v226 + ((*v93 * v226) >> 8) + 1) >> 8;
              }

              if (v226)
              {
                if (v226 == 255)
                {
                  v227 = *v224;
                  *v32 = vmulq_n_f32(*v32, *v224);
                  v228 = v227 * *v30;
                }

                else
                {
                  v229 = v226 * 0.0039216;
                  v230 = *v30;
                  v231 = v229 * *v224;
                  v232 = 1.0 - v229;
                  *v32 = vmlaq_n_f32(vmulq_n_f32(*v32, v232), *v32, v231);
                  v228 = (v232 * v230) + (v230 * v231);
                }

                *v30 = v228;
              }
            }

            ++v67;
            v93 += v223;
            ++v32;
            ++v30;
            v224 += 5;
            --v225;
          }

          while (v225);
        }

        else
        {
          v94 = v447;
          do
          {
            v394 = *v67;
            if (*v67)
            {
              if (v43)
              {
                v394 = (*v93 * v394 + ((*v93 * v394) >> 8) + 1) >> 8;
              }

              if (v394)
              {
                if (v394 == 255)
                {
                  v395 = vmulq_n_f32(*v32, *v224);
                }

                else
                {
                  v395 = vmlaq_n_f32(vmulq_n_f32(*v32, 1.0 - (v394 * 0.0039216)), *v32, (v394 * 0.0039216) * *v224);
                }

                *v32 = v395;
              }
            }

            ++v67;
            v93 += v223;
            ++v32;
            v224 += 5;
            --v225;
          }

          while (v225);
        }

        goto LABEL_508;
      case 8:
        v317 = v43 != 0;
        v318 = v66[1].f32;
        v319 = v44;
        v93 = v43;
        if (v71)
        {
          v94 = v447;
          do
          {
            v320 = *v67;
            if (*v67)
            {
              if (v43)
              {
                v320 = (*v93 * v320 + ((*v93 * v320) >> 8) + 1) >> 8;
              }

              if (v320)
              {
                if (v320 == 255)
                {
                  v321 = 1.0 - *v318;
                  *v32 = vmulq_n_f32(*v32, v321);
                  v322 = v321 * *v30;
                }

                else
                {
                  v323 = v320 * 0.0039216;
                  v324 = *v30;
                  v325 = v323 * (1.0 - *v318);
                  v326 = 1.0 - v323;
                  *v32 = vmlaq_n_f32(vmulq_n_f32(*v32, v326), *v32, v325);
                  v322 = (v326 * v324) + (v324 * v325);
                }

                *v30 = v322;
              }
            }

            ++v67;
            v93 += v317;
            ++v32;
            ++v30;
            v318 += 5;
            --v319;
          }

          while (v319);
        }

        else
        {
          v94 = v447;
          do
          {
            v403 = *v67;
            if (*v67)
            {
              if (v43)
              {
                v403 = (*v93 * v403 + ((*v93 * v403) >> 8) + 1) >> 8;
              }

              if (v403)
              {
                if (v403 == 255)
                {
                  v404 = vmulq_n_f32(*v32, 1.0 - *v318);
                }

                else
                {
                  v404 = vmlaq_n_f32(vmulq_n_f32(*v32, 1.0 - (v403 * 0.0039216)), *v32, (v403 * 0.0039216) * (1.0 - *v318));
                }

                *v32 = v404;
              }
            }

            ++v67;
            v93 += v317;
            ++v32;
            v318 += 5;
            --v319;
          }

          while (v319);
        }

        goto LABEL_508;
      case 9:
        v169 = v66[1].f32;
        v170 = v44;
        v93 = v43;
        v94 = v447;
        while (1)
        {
          v171 = *v67;
          if (*v67)
          {
            if (!v43)
            {
              goto LABEL_156;
            }

            v172 = *v93 * v171 + ((*v93 * v171) >> 8) + 1;
            if (v172 >= 0x100)
            {
              break;
            }
          }

LABEL_157:
          ++v67;
          v93 += v43 != 0;
          ++v32;
          v169 += 5;
          v30 = (v30 + v49);
          if (!--v170)
          {
            goto LABEL_508;
          }
        }

        v171 = v172 >> 8;
LABEL_156:
        v173 = *v30;
        v174 = v171 * 0.0039216;
        v175 = v174 * *v169;
        v176 = 1.0 - *v30;
        v177 = (1.0 - v174) + v175;
        *v32 = vmlaq_n_f32(vmulq_n_f32(*v32, v177), vmulq_n_f32(*(v169 - 4), v174), v176);
        *v30 = (v173 * v177) + (v175 * v176);
        goto LABEL_157;
      case 10:
        v309 = v66[1].f32;
        v310 = v44;
        v93 = v43;
        v94 = v447;
        while (1)
        {
          v311 = *v67;
          if (*v67)
          {
            if (!v43)
            {
              goto LABEL_355;
            }

            v312 = *v93 * v311 + ((*v93 * v311) >> 8) + 1;
            if (v312 >= 0x100)
            {
              break;
            }
          }

LABEL_356:
          ++v67;
          v93 += v43 != 0;
          ++v32;
          v309 += 5;
          v30 = (v30 + v49);
          if (!--v310)
          {
            goto LABEL_508;
          }
        }

        v311 = v312 >> 8;
LABEL_355:
        v313 = *v30;
        v314 = v311 * 0.0039216;
        v315 = v314 * *v309;
        v316 = 1.0 - *v30;
        *v32 = vmlaq_n_f32(vmulq_n_f32(*v32, 1.0 - v315), vmulq_n_f32(*(v309 - 4), v314), v316);
        *v30 = (v313 * (1.0 - v315)) + (v315 * v316);
        goto LABEL_356;
      case 11:
        v135 = v43 != 0;
        if (v71)
        {
          v136 = &v66->f32[2];
          v137 = v44;
          v93 = v43;
          v94 = v447;
          while (1)
          {
            v138 = *v67;
            if (*v67)
            {
              if (!v43)
              {
                goto LABEL_124;
              }

              v139 = *v93 * v138 + ((*v93 * v138) >> 8) + 1;
              if (v139 >= 0x100)
              {
                break;
              }
            }

LABEL_127:
            ++v67;
            v93 += v135;
            ++v32;
            ++v30;
            v136 += 5;
            if (!--v137)
            {
              goto LABEL_508;
            }
          }

          v138 = v139 >> 8;
LABEL_124:
          v140 = v138 * 0.0039216;
          v141 = *(v136 - 2) * v140;
          v142 = *(v136 - 1) * v140;
          v143 = v140 * *v136;
          v144 = v140 * v136[1];
          v145 = v140 * v136[2];
          v146 = *v30 + v145;
          v147 = (v145 - v141) + (*v30 - v32->f32[0]);
          if (v146 > 1.0)
          {
            v146 = 1.0;
          }

          v148 = (v145 - v142) + (*v30 - v32->f32[1]);
          v32->f32[0] = v146 - v147;
          v149 = v32->f32[3];
          v150 = (v145 - v143) + (*v30 - v32->f32[2]);
          v32->f32[1] = v146 - v148;
          v151 = *v30 - v149;
          v32->f32[2] = v146 - v150;
          *v30 = v146;
          v32->f32[3] = v146 - ((v145 - v144) + v151);
          goto LABEL_127;
        }

        v373 = v66[1].f32;
        v374 = v44;
        v93 = v43;
        v94 = v447;
        while (1)
        {
          v375 = *v67;
          if (*v67)
          {
            if (!v43)
            {
              goto LABEL_441;
            }

            v376 = *v93 * v375 + ((*v93 * v375) >> 8) + 1;
            if (v376 >= 0x100)
            {
              break;
            }
          }

LABEL_442:
          ++v67;
          v93 += v135;
          ++v32;
          v373 += 5;
          if (!--v374)
          {
LABEL_508:
            v43 = &v93[v443];
            goto LABEL_509;
          }
        }

        v375 = v376 >> 8;
LABEL_441:
        v377 = v375 * 0.0039216;
        v60.f32[0] = v377 * *v373;
        __asm { FMOV            V3.4S, #1.0 }

        v60 = vdupq_lane_s32(*v60.f32, 0);
        *v32 = vsubq_f32(_Q3, vaddq_f32(vsubq_f32(v60, vmulq_n_f32(*(v373 - 4), v377)), vsubq_f32(_Q3, *v32)));
        goto LABEL_442;
      case 12:
        v160 = v43 != 0;
        if (v71)
        {
          v161 = v66[1].f32;
          v162 = v44;
          v93 = v43;
          v94 = v447;
          while (1)
          {
            v163 = *v67;
            if (*v67)
            {
              if (!v43)
              {
                goto LABEL_146;
              }

              v164 = *v93 * v163 + ((*v93 * v163) >> 8) + 1;
              if (v164 >= 0x100)
              {
                break;
              }
            }

LABEL_149:
            ++v67;
            v93 += v160;
            ++v32;
            ++v30;
            v161 += 5;
            if (!--v162)
            {
              goto LABEL_508;
            }
          }

          v163 = v164 >> 8;
LABEL_146:
          v165 = v163 * 0.0039216;
          v166 = *v30 + (v165 * *v161);
          if (v166 > 1.0)
          {
            v166 = 1.0;
          }

          v167 = vmulq_n_f32(*(v161 - 4), v165);
          v168.i64[0] = v32->i64[0];
          *v30 = v166;
          v168.i64[1] = v32->i64[1];
          *v32 = vaddq_f32(v167, v168);
          goto LABEL_149;
        }

        v379 = v44;
        v380 = v43;
        v94 = v447;
        while (1)
        {
          v381 = *v67;
          if (*v67)
          {
            if (!v43)
            {
              goto LABEL_449;
            }

            v382 = *v380 * v381 + ((*v380 * v381) >> 8) + 1;
            if (v382 >= 0x100)
            {
              break;
            }
          }

LABEL_450:
          ++v67;
          v66 = (v66 + 20);
          v380 += v160;
          ++v32;
          if (!--v379)
          {
            v43 = &v380[v443];
LABEL_509:
            v32 += v444;
            v30 += v446;
            v201 = v450;
            goto LABEL_510;
          }
        }

        v381 = v382 >> 8;
LABEL_449:
        *v32 = vaddq_f32(vmulq_n_f32(*v66, v381 * 0.0039216), *v32);
        goto LABEL_450;
      case 13:
        v279 = v66[1].f32;
        v280 = v44;
        v109 = v43;
        while (1)
        {
          v281 = *v67;
          if (*v67)
          {
            if (!v43)
            {
              goto LABEL_314;
            }

            v282 = *v109 * v281 + ((*v109 * v281) >> 8) + 1;
            if (v282 >= 0x100)
            {
              break;
            }
          }

LABEL_320:
          ++v67;
          v109 += v43 != 0;
          ++v32;
          v279 += 5;
          v30 = (v30 + v49);
          if (!--v280)
          {
            goto LABEL_418;
          }
        }

        v281 = v282 >> 8;
LABEL_314:
        v283 = v281 * 0.0039216;
        v59.f32[0] = v283 * *v279;
        if (v59.f32[0] > 0.0)
        {
          v285 = *(v279 - 4);
          v284 = vmulq_n_f32(v285, v283);
          v285.i32[0] = 1.0;
          v60.i32[0] = 1.0;
          if (v71 && (v60.f32[0] = *v30, *v30 <= 0.0) || (v286 = vsubq_f32(vdupq_lane_s32(*v60.f32, 0), *v32), v287 = vsubq_f32(vdupq_lane_s32(*v59.f32, 0), v284), v288 = vmulq_f32(v286, v287), v289 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v59, v285)), 0), vmlaq_n_f32(v288, v286, 1.0 - v59.f32[0]), v288), v290 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v60, v285)), 0), vmlaq_n_f32(v289, v287, 1.0 - v60.f32[0]), v289), v59.f32[0] = (v60.f32[0] + v59.f32[0]) - (v60.f32[0] * v59.f32[0]), v60 = vdupq_lane_s32(*v59.f32, 0), v284 = vsubq_f32(v60, v290), v71))
          {
            *v32 = v284;
            *v30 = v59.f32[0];
          }

          else
          {
            *v32 = v284;
          }
        }

        goto LABEL_320;
      case 14:
        v122 = v66[1].f32;
        v123 = v44;
        v109 = v43;
        while (1)
        {
          v124 = *v67;
          if (*v67)
          {
            if (v43)
            {
              v125 = *v109 * v124 + ((*v109 * v124) >> 8) + 1;
              if (v125 < 0x100)
              {
                goto LABEL_116;
              }

              v124 = v125 >> 8;
            }

            v126 = v124 * 0.0039216;
            v59.f32[0] = v126 * *v122;
            if (v59.f32[0] > 0.0)
            {
              v127 = *(v122 - 4);
              v128 = vmulq_n_f32(v127, v126);
              if (v71)
              {
                v127.f32[0] = *v30;
                if (*v30 <= 0.0)
                {
LABEL_114:
                  *v32 = v128;
                  *v30 = v59.f32[0];
                  goto LABEL_116;
                }
              }

              else
              {
                v127.i32[0] = 1.0;
              }

              v129 = vsubq_f32(vdupq_lane_s32(*v127.f32, 0), *v32);
              __asm { FMOV            V4.4S, #1.0 }

              v134 = vmlaq_f32(v129, vsubq_f32(_Q4, v129), vsubq_f32(vdupq_lane_s32(*v59.f32, 0), v128));
              v59.f32[0] = (v59.f32[0] + v127.f32[0]) - (v127.f32[0] * v59.f32[0]);
              v128 = vsubq_f32(vdupq_lane_s32(*v59.f32, 0), v134);
              if (!v71)
              {
                *v32 = v128;
                goto LABEL_116;
              }

              goto LABEL_114;
            }
          }

LABEL_116:
          ++v67;
          v109 += v43 != 0;
          ++v32;
          v122 += 5;
          v30 = (v30 + v49);
          if (!--v123)
          {
            goto LABEL_418;
          }
        }

      case 15:
        v442 = v37;
        v206 = v66[1].f32;
        v207 = v44;
        v188 = v43;
        while (1)
        {
          v208 = *v67;
          if (*v67)
          {
            if (v43)
            {
              v209 = *v188 * v208 + ((*v188 * v208) >> 8) + 1;
              if (v209 < 0x100)
              {
                goto LABEL_220;
              }

              v208 = v209 >> 8;
            }

            v210 = v208 * 0.0039216;
            *&v64 = v210 * *v206;
            if (*&v64 > 0.0)
            {
              v211 = vmulq_n_f32(*(v206 - 4), v210);
              if (v71)
              {
                v212 = *v30;
                LODWORD(v65) = v211.i32[1];
                v214 = v211.f32[3];
                v213 = v211.f32[2];
                if (*v30 <= 0.0)
                {
LABEL_218:
                  v32->i32[0] = v211.i32[0];
                  v32->i32[1] = LODWORD(v65);
                  v32->f32[2] = v213;
                  v32->f32[3] = v214;
                  *v30 = *&v64;
                  goto LABEL_220;
                }
              }

              else
              {
                LODWORD(v65) = v211.i32[1];
                v214 = v211.f32[3];
                v213 = v211.f32[2];
                v212 = 1.0;
              }

              PDAoverlayPDA(v452.f32, v32->f32[0], v32->f32[1], v32->f32[2], v32->f32[3], v212, *v211.i64, v64, v65, v211.f32[0], *&v65, v213, v214, *&v64);
              v71 = v451;
              LODWORD(v65) = v452.i32[1];
              v211.i32[0] = v452.i32[0];
              v214 = v452.f32[3];
              v213 = v452.f32[2];
              if (!v451)
              {
                v32->i32[0] = v452.i32[0];
                v32->i32[1] = LODWORD(v65);
                v32->f32[2] = v213;
                v32->f32[3] = v214;
                goto LABEL_220;
              }

              *&v64 = v453;
              goto LABEL_218;
            }
          }

LABEL_220:
          ++v67;
          v188 += v43 != 0;
          ++v32;
          v206 += 5;
          v30 = (v30 + v49);
          if (!--v207)
          {
            goto LABEL_401;
          }
        }

      case 16:
        v107 = v66[1].f32;
        v108 = v44;
        v109 = v43;
        while (1)
        {
          v110 = *v67;
          if (*v67)
          {
            if (!v43)
            {
              goto LABEL_95;
            }

            v111 = *v109 * v110 + ((*v109 * v110) >> 8) + 1;
            if (v111 >= 0x100)
            {
              break;
            }
          }

LABEL_101:
          ++v67;
          v109 += v43 != 0;
          ++v32;
          v107 += 5;
          v30 = (v30 + v49);
          if (!--v108)
          {
            goto LABEL_418;
          }
        }

        v110 = v111 >> 8;
LABEL_95:
        v112 = v110 * 0.0039216;
        v59.f32[0] = v112 * *v107;
        if (v59.f32[0] > 0.0)
        {
          v114 = *(v107 - 4);
          v113 = vmulq_n_f32(v114, v112);
          v114.i32[0] = 1.0;
          v60.i32[0] = 1.0;
          if (v71 && (v60.f32[0] = *v30, *v30 <= 0.0) || (v115 = vsubq_f32(vdupq_lane_s32(*v60.f32, 0), *v32), v116 = vsubq_f32(vdupq_lane_s32(*v59.f32, 0), v113), v117 = vmulq_n_f32(v115, v59.f32[0]), v118 = vmulq_n_f32(v116, v60.f32[0]), v119 = vbslq_s8(vcgtq_f32(v117, v118), v118, v117), v120 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v59, v114)), 0), vmlaq_n_f32(v119, v115, 1.0 - v59.f32[0]), v119), v121 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v60, v114)), 0), vmlaq_n_f32(v120, v116, 1.0 - v60.f32[0]), v120), v59.f32[0] = (v60.f32[0] + v59.f32[0]) - (v60.f32[0] * v59.f32[0]), v60 = vdupq_lane_s32(*v59.f32, 0), v113 = vsubq_f32(v60, v121), v71))
          {
            *v32 = v113;
            *v30 = v59.f32[0];
          }

          else
          {
            *v32 = v113;
          }
        }

        goto LABEL_101;
      case 17:
        v241 = v66[1].f32;
        v242 = v44;
        v109 = v43;
        while (1)
        {
          v243 = *v67;
          if (*v67)
          {
            if (!v43)
            {
              goto LABEL_261;
            }

            v244 = *v109 * v243 + ((*v109 * v243) >> 8) + 1;
            if (v244 >= 0x100)
            {
              break;
            }
          }

LABEL_267:
          ++v67;
          v109 += v43 != 0;
          ++v32;
          v241 += 5;
          v30 = (v30 + v49);
          if (!--v242)
          {
            goto LABEL_418;
          }
        }

        v243 = v244 >> 8;
LABEL_261:
        v245 = v243 * 0.0039216;
        v59.f32[0] = v245 * *v241;
        if (v59.f32[0] > 0.0)
        {
          v247 = *(v241 - 4);
          v246 = vmulq_n_f32(v247, v245);
          v247.i32[0] = 1.0;
          v60.i32[0] = 1.0;
          if (v71 && (v60.f32[0] = *v30, *v30 <= 0.0) || (v248 = vsubq_f32(vdupq_lane_s32(*v60.f32, 0), *v32), v249 = vsubq_f32(vdupq_lane_s32(*v59.f32, 0), v246), v250 = vmulq_n_f32(v248, v59.f32[0]), v251 = vmulq_n_f32(v249, v60.f32[0]), v252 = vbslq_s8(vcgtq_f32(v251, v250), v251, v250), v253 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v59, v247)), 0), vmlaq_n_f32(v252, v248, 1.0 - v59.f32[0]), v252), v254 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v60, v247)), 0), vmlaq_n_f32(v253, v249, 1.0 - v60.f32[0]), v253), v59.f32[0] = (v60.f32[0] + v59.f32[0]) - (v60.f32[0] * v59.f32[0]), v60 = vdupq_lane_s32(*v59.f32, 0), v246 = vsubq_f32(v60, v254), v71))
          {
            *v32 = v246;
            *v30 = v59.f32[0];
          }

          else
          {
            *v32 = v246;
          }
        }

        goto LABEL_267;
      case 18:
        v442 = v37;
        v300 = v66[1].f32;
        v301 = v44;
        v188 = v43;
        while (1)
        {
          v302 = *v67;
          if (*v67)
          {
            if (v43)
            {
              v303 = *v188 * v302 + ((*v188 * v302) >> 8) + 1;
              if (v303 < 0x100)
              {
                goto LABEL_348;
              }

              v302 = v303 >> 8;
            }

            v304 = v302 * 0.0039216;
            *&v64 = v304 * *v300;
            if (*&v64 > 0.0)
            {
              v305 = vmulq_n_f32(*(v300 - 4), v304);
              if (v71)
              {
                v306 = *v30;
                LODWORD(v65) = v305.i32[1];
                v308 = v305.f32[3];
                v307 = v305.f32[2];
                if (*v30 <= 0.0)
                {
LABEL_346:
                  v32->i32[0] = v305.i32[0];
                  v32->i32[1] = LODWORD(v65);
                  v32->f32[2] = v307;
                  v32->f32[3] = v308;
                  *v30 = *&v64;
                  goto LABEL_348;
                }
              }

              else
              {
                LODWORD(v65) = v305.i32[1];
                v308 = v305.f32[3];
                v307 = v305.f32[2];
                v306 = 1.0;
              }

              PDAcolordodgePDA(v452.f32, v32->f32[0], v32->f32[1], v32->f32[2], v32->f32[3], v306, *v305.i64, v64, v65, v305.f32[0], *&v65, v307, v308, *&v64);
              v71 = v451;
              LODWORD(v65) = v452.i32[1];
              v305.i32[0] = v452.i32[0];
              v308 = v452.f32[3];
              v307 = v452.f32[2];
              if (!v451)
              {
                v32->i32[0] = v452.i32[0];
                v32->i32[1] = LODWORD(v65);
                v32->f32[2] = v307;
                v32->f32[3] = v308;
                goto LABEL_348;
              }

              *&v64 = v453;
              goto LABEL_346;
            }
          }

LABEL_348:
          ++v67;
          v188 += v43 != 0;
          ++v32;
          v300 += 5;
          v30 = (v30 + v49);
          if (!--v301)
          {
            goto LABEL_401;
          }
        }

      case 19:
        v442 = v37;
        v341 = v66[1].f32;
        v342 = v44;
        v188 = v43;
        while (1)
        {
          v343 = *v67;
          if (*v67)
          {
            if (v43)
            {
              v344 = *v188 * v343 + ((*v188 * v343) >> 8) + 1;
              if (v344 < 0x100)
              {
                goto LABEL_400;
              }

              v343 = v344 >> 8;
            }

            v345 = v343 * 0.0039216;
            *&v64 = v345 * *v341;
            if (*&v64 > 0.0)
            {
              v346 = vmulq_n_f32(*(v341 - 4), v345);
              if (v71)
              {
                v347 = *v30;
                LODWORD(v65) = v346.i32[1];
                v349 = v346.f32[3];
                v348 = v346.f32[2];
                if (*v30 <= 0.0)
                {
LABEL_398:
                  v32->i32[0] = v346.i32[0];
                  v32->i32[1] = LODWORD(v65);
                  v32->f32[2] = v348;
                  v32->f32[3] = v349;
                  *v30 = *&v64;
                  goto LABEL_400;
                }
              }

              else
              {
                LODWORD(v65) = v346.i32[1];
                v349 = v346.f32[3];
                v348 = v346.f32[2];
                v347 = 1.0;
              }

              PDAcolorburnPDA(v452.f32, v32->f32[0], v32->f32[1], v32->f32[2], v32->f32[3], v347, *v346.i64, v64, v65, v346.f32[0], *&v65, v348, v349, *&v64);
              v71 = v451;
              LODWORD(v65) = v452.i32[1];
              v346.i32[0] = v452.i32[0];
              v349 = v452.f32[3];
              v348 = v452.f32[2];
              if (!v451)
              {
                v32->i32[0] = v452.i32[0];
                v32->i32[1] = LODWORD(v65);
                v32->f32[2] = v348;
                v32->f32[3] = v349;
                goto LABEL_400;
              }

              *&v64 = v453;
              goto LABEL_398;
            }
          }

LABEL_400:
          ++v67;
          v188 += v43 != 0;
          ++v32;
          v341 += 5;
          v30 = (v30 + v49);
          if (!--v342)
          {
            goto LABEL_401;
          }
        }

      case 20:
        v442 = v37;
        v255 = v66[1].f32;
        v256 = v44;
        v188 = v43;
        while (1)
        {
          v257 = *v67;
          if (*v67)
          {
            if (v43)
            {
              v258 = *v188 * v257 + ((*v188 * v257) >> 8) + 1;
              if (v258 < 0x100)
              {
                goto LABEL_283;
              }

              v257 = v258 >> 8;
            }

            v259 = v257 * 0.0039216;
            *&v64 = v259 * *v255;
            if (*&v64 > 0.0)
            {
              v260 = vmulq_n_f32(*(v255 - 4), v259);
              if (v71)
              {
                *&v62 = *v30;
                LODWORD(v65) = v260.i32[1];
                v262 = v260.f32[3];
                v261 = v260.f32[2];
                if (*v30 <= 0.0)
                {
LABEL_281:
                  v32->i32[0] = v260.i32[0];
                  v32->i32[1] = LODWORD(v65);
                  v32->f32[2] = v261;
                  v32->f32[3] = v262;
                  *v30 = *&v64;
                  goto LABEL_283;
                }
              }

              else
              {
                LODWORD(v65) = v260.i32[1];
                v262 = v260.f32[3];
                v261 = v260.f32[2];
                LODWORD(v62) = 1.0;
              }

              v59.i32[0] = v32->i32[0];
              v59 = PDAsoftlightPDA(&v452, *v59.f32, v32->f32[1], v32->f32[2], v32->f32[3], v62, *v260.f32, v64, v65, v52, v53, v54, v55, v56, v57, v58, __PAIR64__(LODWORD(v65), v260.u32[0]), v261, v262, *&v64);
              v71 = v451;
              LODWORD(v65) = v452.i32[1];
              v260.i32[0] = v452.i32[0];
              v262 = v452.f32[3];
              v261 = v452.f32[2];
              if (!v451)
              {
                v32->i32[0] = v452.i32[0];
                v32->i32[1] = LODWORD(v65);
                v32->f32[2] = v261;
                v32->f32[3] = v262;
                goto LABEL_283;
              }

              *&v64 = v453;
              goto LABEL_281;
            }
          }

LABEL_283:
          ++v67;
          v188 += v43 != 0;
          ++v32;
          v255 += 5;
          v30 = (v30 + v49);
          if (!--v256)
          {
            goto LABEL_401;
          }
        }

      case 21:
        v442 = v37;
        v270 = v66[1].f32;
        v271 = v44;
        v188 = v43;
        while (1)
        {
          v272 = *v67;
          if (*v67)
          {
            if (v43)
            {
              v273 = *v188 * v272 + ((*v188 * v272) >> 8) + 1;
              if (v273 < 0x100)
              {
                goto LABEL_307;
              }

              v272 = v273 >> 8;
            }

            v274 = v272 * 0.0039216;
            *&v64 = v274 * *v270;
            if (*&v64 > 0.0)
            {
              v275 = vmulq_n_f32(*(v270 - 4), v274);
              if (v71)
              {
                v276 = *v30;
                LODWORD(v65) = v275.i32[1];
                v278 = v275.f32[3];
                v277 = v275.f32[2];
                if (*v30 <= 0.0)
                {
LABEL_305:
                  v32->i32[0] = v275.i32[0];
                  v32->i32[1] = LODWORD(v65);
                  v32->f32[2] = v277;
                  v32->f32[3] = v278;
                  *v30 = *&v64;
                  goto LABEL_307;
                }
              }

              else
              {
                LODWORD(v65) = v275.i32[1];
                v278 = v275.f32[3];
                v277 = v275.f32[2];
                v276 = 1.0;
              }

              PDAhardlightPDA(v452.f32, v32->f32[0], v32->f32[1], v32->f32[2], v32->f32[3], v276, *v275.i64, v64, v65, v275.f32[0], *&v65, v277, v278, *&v64);
              v71 = v451;
              LODWORD(v65) = v452.i32[1];
              v275.i32[0] = v452.i32[0];
              v278 = v452.f32[3];
              v277 = v452.f32[2];
              if (!v451)
              {
                v32->i32[0] = v452.i32[0];
                v32->i32[1] = LODWORD(v65);
                v32->f32[2] = v277;
                v32->f32[3] = v278;
                goto LABEL_307;
              }

              *&v64 = v453;
              goto LABEL_305;
            }
          }

LABEL_307:
          ++v67;
          v188 += v43 != 0;
          ++v32;
          v270 += 5;
          v30 = (v30 + v49);
          if (!--v271)
          {
            goto LABEL_401;
          }
        }

      case 22:
        v327 = v66[1].f32;
        v328 = v44;
        v109 = v43;
        while (1)
        {
          v329 = *v67;
          if (*v67)
          {
            if (v43)
            {
              v330 = *v109 * v329 + ((*v109 * v329) >> 8) + 1;
              if (v330 < 0x100)
              {
                goto LABEL_384;
              }

              v329 = v330 >> 8;
            }

            v331 = v329 * 0.0039216;
            v59.f32[0] = v331 * *v327;
            if (v59.f32[0] > 0.0)
            {
              v332 = *(v327 - 4);
              v333 = vmulq_n_f32(v332, v331);
              if (v71)
              {
                v332.f32[0] = *v30;
                if (*v30 <= 0.0)
                {
LABEL_382:
                  *v32 = v333;
                  *v30 = v59.f32[0];
                  goto LABEL_384;
                }
              }

              else
              {
                v332.i32[0] = 1.0;
              }

              *v61.i32 = (v332.f32[0] + v59.f32[0]) - (v332.f32[0] * v59.f32[0]);
              v334 = vsubq_f32(vdupq_lane_s32(*v332.f32, 0), *v32);
              v335 = vsubq_f32(vdupq_lane_s32(*v59.f32, 0), v333);
              v336 = vaddq_f32(v334, v335);
              v337 = vmulq_n_f32(v334, v59.f32[0]);
              v338 = vmulq_n_f32(v335, v332.f32[0]);
              v339 = vsubq_f32(v336, v337);
              v340 = vsubq_f32(v337, v338);
              v59 = vaddq_f32(vsubq_f32(v339, v338), vbslq_s8(vcltzq_f32(v340), vnegq_f32(v340), v340));
              v333 = vsubq_f32(vdupq_lane_s32(v61, 0), v59);
              if (!v71)
              {
                *v32 = v333;
                goto LABEL_384;
              }

              v59.i32[0] = v61.i32[0];
              goto LABEL_382;
            }
          }

LABEL_384:
          ++v67;
          v109 += v43 != 0;
          ++v32;
          v327 += 5;
          v30 = (v30 + v49);
          if (!--v328)
          {
            goto LABEL_418;
          }
        }

      case 23:
        v350 = v66[1].f32;
        v351 = v44;
        v109 = v43;
        while (1)
        {
          v352 = *v67;
          if (*v67)
          {
            if (v43)
            {
              v353 = *v109 * v352 + ((*v109 * v352) >> 8) + 1;
              if (v353 < 0x100)
              {
                goto LABEL_417;
              }

              v352 = v353 >> 8;
            }

            v354 = v352 * 0.0039216;
            v59.f32[0] = v354 * *v350;
            if (v59.f32[0] > 0.0)
            {
              v355 = *(v350 - 4);
              v356 = vmulq_n_f32(v355, v354);
              if (v71)
              {
                v355.f32[0] = *v30;
                if (*v30 <= 0.0)
                {
LABEL_415:
                  *v32 = v356;
                  *v30 = v59.f32[0];
                  goto LABEL_417;
                }
              }

              else
              {
                v355.i32[0] = 1.0;
              }

              v357 = vdupq_lane_s32(*v355.f32, 0);
              v355.f32[0] = (v355.f32[0] + v59.f32[0]) - (v355.f32[0] * v59.f32[0]);
              v358 = vsubq_f32(v357, *v32);
              v359 = vsubq_f32(vdupq_lane_s32(*v59.f32, 0), v356);
              v360 = vaddq_f32(v358, v359);
              v361 = vmulq_f32(v359, v358);
              v358.i64[0] = 0xC0000000C0000000;
              v358.i64[1] = 0xC0000000C0000000;
              v362 = vmlaq_f32(v360, v358, v361);
              v59 = vdupq_lane_s32(*v355.f32, 0);
              v356 = vsubq_f32(v59, v362);
              if (!v71)
              {
                *v32 = v356;
                goto LABEL_417;
              }

              v59.i32[0] = v355.i32[0];
              goto LABEL_415;
            }
          }

LABEL_417:
          ++v67;
          v109 += v43 != 0;
          ++v32;
          v350 += 5;
          v30 = (v30 + v49);
          if (!--v351)
          {
LABEL_418:
            v43 = &v109[v443];
            v32 += v444;
            v30 += v446;
            goto LABEL_419;
          }
        }

      case 24:
        v442 = v37;
        v186 = v66[1].f32;
        v187 = v44;
        v188 = v43;
        while (1)
        {
          v189 = *v67;
          if (*v67)
          {
            if (v43)
            {
              v190 = *v188 * v189 + ((*v188 * v189) >> 8) + 1;
              if (v190 < 0x100)
              {
                goto LABEL_189;
              }

              v189 = v190 >> 8;
            }

            v191 = v189 * 0.0039216;
            *&v64 = v191 * *v186;
            if (*&v64 > 0.0)
            {
              v192 = vmulq_n_f32(*(v186 - 4), v191);
              if (v71)
              {
                v193 = *v30;
                LODWORD(v65) = v192.i32[1];
                v195 = v192.f32[3];
                v194 = v192.f32[2];
                if (*v30 <= 0.0)
                {
LABEL_187:
                  v32->i32[0] = v192.i32[0];
                  v32->i32[1] = LODWORD(v65);
                  v32->f32[2] = v194;
                  v32->f32[3] = v195;
                  *v30 = *&v64;
                  goto LABEL_189;
                }
              }

              else
              {
                LODWORD(v65) = v192.i32[1];
                v195 = v192.f32[3];
                v194 = v192.f32[2];
                v193 = 1.0;
              }

              PDAhuePDA(v452.f32, v32->f32[0], v32->f32[1], v32->f32[2], v32->f32[3], v193, *v192.i64, v64, v65, v192.f32[0], *&v65, v194, v195, *&v64);
              v71 = v451;
              LODWORD(v65) = v452.i32[1];
              v192.i32[0] = v452.i32[0];
              v195 = v452.f32[3];
              v194 = v452.f32[2];
              if (!v451)
              {
                v32->i32[0] = v452.i32[0];
                v32->i32[1] = LODWORD(v65);
                v32->f32[2] = v194;
                v32->f32[3] = v195;
                goto LABEL_189;
              }

              *&v64 = v453;
              goto LABEL_187;
            }
          }

LABEL_189:
          ++v67;
          v188 += v43 != 0;
          ++v32;
          v186 += 5;
          v30 = (v30 + v49);
          if (!--v187)
          {
LABEL_401:
            v43 = &v188[v443];
            goto LABEL_402;
          }
        }

      case 25:
        v442 = v37;
        v178 = v66[1].f32;
        v99 = v43;
        while (1)
        {
          v179 = *v67;
          if (*v67)
          {
            if (v43)
            {
              v180 = *v99 * v179 + ((*v99 * v179) >> 8) + 1;
              if (v180 < 0x100)
              {
                goto LABEL_173;
              }

              v179 = v180 >> 8;
            }

            v181 = v179 * 0.0039216;
            v182 = v181 * *v178;
            if (v182 > 0.0)
            {
              v183 = vmulq_n_f32(*(v178 - 4), v181);
              LODWORD(v64) = v183.i32[1];
              v184 = v183.i32[3];
              LODWORD(v65) = v183.i32[2];
              if (v71)
              {
                v185 = *v30;
                if (*v30 <= 0.0)
                {
LABEL_171:
                  v32->i32[0] = v183.i32[0];
                  v32->i32[1] = LODWORD(v64);
                  v32->i32[2] = LODWORD(v65);
                  v32->i32[3] = v184;
                  *v30 = v182;
                  goto LABEL_173;
                }
              }

              else
              {
                v185 = 1.0;
              }

              PDAsaturationPDA(v452.f32, v32->f32[0], v32->f32[1], v32->f32[2], v32->f32[3], v185, *v183.i64, v64, v65, v183.f32[0], v183.f32[1], v183.f32[2], v183.f32[3], v182);
              v71 = v451;
              LODWORD(v64) = v452.i32[1];
              v183.i32[0] = v452.i32[0];
              v184 = v452.i32[3];
              LODWORD(v65) = v452.i32[2];
              if (!v451)
              {
                v32->i32[0] = v452.i32[0];
                v32->i32[1] = LODWORD(v64);
                v32->i32[2] = LODWORD(v65);
                v32->i32[3] = v184;
                goto LABEL_173;
              }

              v182 = v453;
              goto LABEL_171;
            }
          }

LABEL_173:
          ++v67;
          v99 += v43 != 0;
          ++v32;
          v178 += 5;
          v30 = (v30 + v49);
          LODWORD(v44) = v44 - 1;
          if (!v44)
          {
            goto LABEL_174;
          }
        }

      case 26:
        v442 = v37;
        v363 = v66[1].f32;
        v364 = v43;
        while (1)
        {
          v365 = *v67;
          if (*v67)
          {
            if (v43)
            {
              v366 = *v364 * v365 + ((*v364 * v365) >> 8) + 1;
              if (v366 < 0x100)
              {
                goto LABEL_434;
              }

              v365 = v366 >> 8;
            }

            v367 = v365 * 0.0039216;
            v368 = v367 * *v363;
            if (v368 > 0.0)
            {
              v369 = vmulq_n_f32(*(v363 - 4), v367);
              v370 = v369.i32[1];
              v372 = v369.i32[3];
              v371 = v369.i32[2];
              if (v71)
              {
                *&v63 = *v30;
                if (*v30 <= 0.0)
                {
LABEL_432:
                  v32->i32[0] = v369.i32[0];
                  v32->i32[1] = v370;
                  v32->i32[2] = v371;
                  v32->i32[3] = v372;
                  *v30 = v368;
                  goto LABEL_434;
                }
              }

              else
              {
                LODWORD(v63) = 1.0;
              }

              LODWORD(v64) = v32->i32[0];
              LODWORD(v65) = v32->i32[3];
              PDAluminosityPDA(v452.f32, v369.f32[0], v369.f32[1], v369.f32[2], v369.f32[3], v368, v63, v64, v65, v32->f32[0], COERCE_FLOAT(*(v32->i64 + 4)), COERCE_FLOAT(HIDWORD(*(v32->i64 + 4))), *&v65, *&v63);
              v71 = v451;
              v370 = v452.i32[1];
              v369.i32[0] = v452.i32[0];
              v372 = v452.i32[3];
              v371 = v452.i32[2];
              if (!v451)
              {
                v32->i32[0] = v452.i32[0];
                v32->i32[1] = v370;
                v32->i32[2] = v371;
                v32->i32[3] = v372;
                goto LABEL_434;
              }

              v368 = v453;
              goto LABEL_432;
            }
          }

LABEL_434:
          ++v67;
          v364 += v43 != 0;
          ++v32;
          v363 += 5;
          v30 = (v30 + v49);
          LODWORD(v44) = v44 - 1;
          if (!v44)
          {
            v43 = &v364[v443];
            goto LABEL_402;
          }
        }

      case 27:
        v442 = v37;
        v98 = v66[1].f32;
        v99 = v43;
        break;
      default:
        goto LABEL_419;
    }

    while (1)
    {
      v100 = *v67;
      if (*v67)
      {
        if (v43)
        {
          v101 = *v99 * v100 + ((*v99 * v100) >> 8) + 1;
          if (v101 < 0x100)
          {
            goto LABEL_88;
          }

          v100 = v101 >> 8;
        }

        v102 = v100 * 0.0039216;
        v103 = v102 * *v98;
        if (v103 > 0.0)
        {
          v104 = vmulq_n_f32(*(v98 - 4), v102);
          LODWORD(v64) = v104.i32[1];
          v105 = v104.i32[3];
          LODWORD(v65) = v104.i32[2];
          if (v71)
          {
            v106 = *v30;
            if (*v30 <= 0.0)
            {
LABEL_86:
              v32->i32[0] = v104.i32[0];
              v32->i32[1] = LODWORD(v64);
              v32->i32[2] = LODWORD(v65);
              v32->i32[3] = v105;
              *v30 = v103;
              goto LABEL_88;
            }
          }

          else
          {
            v106 = 1.0;
          }

          PDAluminosityPDA(v452.f32, v32->f32[0], v32->f32[1], v32->f32[2], v32->f32[3], v106, *v104.i64, v64, v65, v104.f32[0], v104.f32[1], v104.f32[2], v104.f32[3], v103);
          v71 = v451;
          LODWORD(v64) = v452.i32[1];
          v104.i32[0] = v452.i32[0];
          v105 = v452.i32[3];
          LODWORD(v65) = v452.i32[2];
          if (!v451)
          {
            v32->i32[0] = v452.i32[0];
            v32->i32[1] = LODWORD(v64);
            v32->i32[2] = LODWORD(v65);
            v32->i32[3] = v105;
            goto LABEL_88;
          }

          v103 = v453;
          goto LABEL_86;
        }
      }

LABEL_88:
      ++v67;
      v99 += v43 != 0;
      ++v32;
      v98 += 5;
      v30 = (v30 + v49);
      LODWORD(v44) = v44 - 1;
      if (!v44)
      {
LABEL_174:
        v43 = &v99[v443];
LABEL_402:
        v32 += v444;
        v30 += v446;
        v36 = v439;
        v44 = v440;
        v38 = v441;
        v37 = v442;
LABEL_419:
        v201 = v450;
        v94 = v447;
        goto LABEL_510;
      }
    }
  }
}