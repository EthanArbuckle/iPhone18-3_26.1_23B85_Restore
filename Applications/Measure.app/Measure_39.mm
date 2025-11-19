void sub_1002A2598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_100006D14(&a29);
  sub_100006D14(&a41);
  sub_1001D8BF4(v41 - 184);
  _Unwind_Resume(a1);
}

uint64_t sub_1002A26AC(float32x2_t *a1, unsigned __int8 *a2, double *a3, int a4, int a5)
{
  v5 = *a3;
  if (!a2)
  {
    v9 = a5 * a4;
    v10 = (a5 * a4 - 4);
    if (a5 * a4 < 4)
    {
      v11 = 0;
      v12 = 0.0;
      if (v9 <= 0)
      {
        goto LABEL_42;
      }

LABEL_35:
      v46 = v11;
      v47 = (v9 + ~v11);
      if (v47 > 6)
      {
        v49 = v47 + 1;
        v50 = (v47 + 1) & 0x1FFFFFFF8;
        v48 = v50 + v46;
        v51 = (a1 + 4 * v46 + 16);
        v52 = v50;
        do
        {
          v53 = *v51[-2].f32;
          v54 = vcvtq_f64_f32(*v53.f32);
          v55 = vcvt_hight_f64_f32(v53);
          v56 = vcvtq_f64_f32(*v51);
          v57 = vcvt_hight_f64_f32(*v51->f32);
          v58 = vmulq_f64(v55, v55);
          v59 = vmulq_f64(v54, v54);
          v60 = vmulq_f64(v57, v57);
          v61 = vmulq_f64(v56, v56);
          v12 = v12 + v59.f64[0] + v59.f64[1] + v58.f64[0] + v58.f64[1] + v61.f64[0] + v61.f64[1] + v60.f64[0] + v60.f64[1];
          v51 += 4;
          v52 -= 8;
        }

        while (v52);
        if (v49 == v50)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v48 = v46;
      }

      v62 = a1 + v48;
      do
      {
        v63 = *v62++;
        v12 = v12 + v63 * v63;
        LODWORD(v48) = v48 + 1;
      }

      while (v9 > v48);
LABEL_42:
      v5 = v5 + v12;
      goto LABEL_43;
    }

    if (v10 > 0xB)
    {
      v29 = (v10 >> 2) + 1;
      v13 = 4 * (v29 & 0x3FFFFFFC);
      v30 = &a1[4];
      v12 = 0.0;
      v31 = v29 & 0x3FFFFFFC;
      do
      {
        v32 = v30 - 8;
        v65 = vld4_f32(v32);
        v66 = vld4_f32(v30);
        v33 = vcvtq_f64_f32(v65.val[0]);
        v34 = vcvtq_f64_f32(v66.val[0]);
        v35 = vcvtq_f64_f32(v65.val[1]);
        v36 = vcvtq_f64_f32(v66.val[1]);
        v37 = vcvtq_f64_f32(v65.val[2]);
        v38 = vcvtq_f64_f32(v66.val[2]);
        *v65.val[0].f32 = vcvtq_f64_f32(v65.val[3]);
        *v65.val[1].f32 = vcvtq_f64_f32(v66.val[3]);
        *v65.val[2].f32 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v35, v35), v33, v33), v37, v37), *v65.val[0].f32, *v65.val[0].f32);
        *v65.val[3].f32 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v36, v36), v34, v34), v38, v38), *v65.val[1].f32, *v65.val[1].f32);
        v12 = v12 + *&v65.val[2] + v39 + *&v65.val[3] + v40;
        v30 += 16;
        v31 -= 4;
      }

      while (v31);
      if (v29 == (v29 & 0x3FFFFFFC))
      {
LABEL_34:
        v11 = (v10 & 0xFFFFFFFC) + 4;
        if (v11 >= v9)
        {
          goto LABEL_42;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0.0;
    }

    v41 = &a1[v13 / 2 + 1];
    do
    {
      v42 = *(v41 - 2);
      v43 = *(v41 - 1);
      v44 = *v41;
      v45 = v41[1];
      v41 += 4;
      v12 = v12 + v43 * v43 + v42 * v42 + v44 * v44 + v45 * v45;
      v13 += 4;
    }

    while (v13 <= v10);
    goto LABEL_34;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    v6 = a4;
    if (a5 >= 8)
    {
      v14 = 0;
      v15 = a1 + 2;
      v16 = 4 * a5;
      do
      {
        if (a2[v14])
        {
          v17 = a5 & 0x7FFFFFF8;
          v18 = v15;
          do
          {
            v19 = *v18[-2].f32;
            v20 = vcvtq_f64_f32(*v19.f32);
            v21 = vcvt_hight_f64_f32(v19);
            v22 = vcvtq_f64_f32(*v18);
            v23 = vcvt_hight_f64_f32(*v18->f32);
            v24 = vmulq_f64(v21, v21);
            v25 = vmulq_f64(v20, v20);
            v26 = vmulq_f64(v23, v23);
            v27 = vmulq_f64(v22, v22);
            v5 = v5 + v25.f64[0] + v25.f64[1] + v24.f64[0] + v24.f64[1] + v27.f64[0] + v27.f64[1] + v26.f64[0] + v26.f64[1];
            v18 += 4;
            v17 -= 8;
          }

          while (v17);
          if ((a5 & 0x7FFFFFF8) != a5)
          {
            v28 = a5 & 0x7FFFFFF8;
            do
            {
              v5 = v5 + a1->f32[v28] * a1->f32[v28];
              ++v28;
            }

            while (a5 != v28);
          }
        }

        ++v14;
        v15 = (v15 + v16);
        a1 = (a1 + v16);
      }

      while (v14 != a4);
    }

    else
    {
      v7 = &a1[1] + 1;
      do
      {
        if (*a2++)
        {
          v5 = v5 + *(v7 - 3) * *(v7 - 3);
          if (a5 != 1)
          {
            v5 = v5 + *(v7 - 2) * *(v7 - 2);
            if (a5 != 2)
            {
              v5 = v5 + *(v7 - 1) * *(v7 - 1);
              if (a5 != 3)
              {
                v5 = v5 + *v7 * *v7;
                if (a5 != 4)
                {
                  v5 = v5 + v7[1] * v7[1];
                  if (a5 != 5)
                  {
                    v5 = v5 + v7[2] * v7[2];
                    if (a5 != 6)
                    {
                      v5 = v5 + v7[3] * v7[3];
                    }
                  }
                }
              }
            }
          }
        }

        v7 += a5;
        --v6;
      }

      while (v6);
    }
  }

LABEL_43:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A2A20(float32x4_t *a1, unsigned __int8 *a2, double *a3, int a4, int a5)
{
  v5 = *a3;
  if (!a2)
  {
    v9 = a5 * a4;
    v10 = (a5 * a4 - 4);
    if (a5 * a4 < 4)
    {
      v11 = 0;
      v12 = 0.0;
      if (v9 <= 0)
      {
        goto LABEL_42;
      }

LABEL_35:
      v45 = v11;
      v46 = (v9 + ~v11);
      if (v46 > 6)
      {
        v48 = v46 + 1;
        v49 = (v46 + 1) & 0x1FFFFFFF8;
        v47 = v49 + v45;
        v50 = (a1 + 4 * v45 + 16);
        v51 = v49;
        do
        {
          v52 = vabsq_f32(v50[-1]);
          v53 = vabsq_f32(*v50);
          v54 = vcvt_hight_f64_f32(v52);
          v55 = vcvtq_f64_f32(*v52.f32);
          v56 = vcvt_hight_f64_f32(v53);
          v57 = vcvtq_f64_f32(*v53.f32);
          v12 = v12 + v55.f64[0] + v55.f64[1] + v54.f64[0] + v54.f64[1] + v57.f64[0] + v57.f64[1] + v56.f64[0] + v56.f64[1];
          v50 += 2;
          v51 -= 8;
        }

        while (v51);
        if (v48 == v49)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v47 = v45;
      }

      v58 = &a1->f32[v47];
      do
      {
        v59 = *v58++;
        v12 = v12 + fabsf(v59);
        LODWORD(v47) = v47 + 1;
      }

      while (v9 > v47);
LABEL_42:
      v5 = v5 + v12;
      goto LABEL_43;
    }

    if (v10 > 0x1B)
    {
      v26 = (v10 >> 2) + 1;
      v13 = v26 & 0x3FFFFFF8;
      f32 = a1[4].f32;
      v12 = 0.0;
      v28 = v26 & 0x3FFFFFF8;
      do
      {
        v29 = f32 - 16;
        v61 = vld4q_f32(v29);
        v62 = vld4q_f32(f32);
        v30 = vabsq_f32(v61.val[0]);
        v31 = vabsq_f32(v62.val[0]);
        v32 = vcvtq_f64_f32(*v30.f32);
        v33 = vcvtq_f64_f32(*v31.f32);
        v34 = vabsq_f32(v61.val[1]);
        v35 = vabsq_f32(v62.val[1]);
        v36 = vaddq_f64(vcvt_hight_f64_f32(v30), vcvt_hight_f64_f32(v34));
        v37 = vaddq_f64(v32, vcvtq_f64_f32(*v34.f32));
        v38 = vaddq_f64(vcvt_hight_f64_f32(v31), vcvt_hight_f64_f32(v35));
        v39 = vaddq_f64(v33, vcvtq_f64_f32(*v35.f32));
        v40 = vabsq_f32(v61.val[2]);
        v41 = vabsq_f32(v62.val[2]);
        v61.val[0] = vabsq_f32(v61.val[3]);
        v61.val[1] = vabsq_f32(v62.val[3]);
        v61.val[2] = vcvtq_f64_f32(*v61.val[0].f32);
        v61.val[3] = vcvtq_f64_f32(*v61.val[1].f32);
        v61.val[0] = vaddq_f64(vaddq_f64(v36, vcvt_hight_f64_f32(v40)), vcvt_hight_f64_f32(v61.val[0]));
        v61.val[2] = vaddq_f64(vaddq_f64(v37, vcvtq_f64_f32(*v40.f32)), v61.val[2]);
        v61.val[1] = vaddq_f64(vaddq_f64(v38, vcvt_hight_f64_f32(v41)), vcvt_hight_f64_f32(v61.val[1]));
        v61.val[3] = vaddq_f64(vaddq_f64(v39, vcvtq_f64_f32(*v41.f32)), v61.val[3]);
        v12 = v12 + *v61.val[2].i64 + *&v61.val[2].i64[1] + *v61.val[0].i64 + *&v61.val[0].i64[1] + *v61.val[3].i64 + *&v61.val[3].i64[1] + *v61.val[1].i64 + *&v61.val[1].i64[1];
        f32 += 32;
        v28 -= 8;
      }

      while (v28);
      if (v26 == (v26 & 0x3FFFFFF8))
      {
LABEL_34:
        v11 = (v10 & 0xFFFFFFFC) + 4;
        if (v11 >= v9)
        {
          goto LABEL_42;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0.0;
    }

    v42 = v13 * 4 + 2;
    v43 = &a1[v13].f32[3];
    do
    {
      v12 = v12 + vaddvq_f64(vcvtq_f64_f32(vabs_f32(*(v43 - 3)))) + fabsf(*(v43 - 1)) + fabsf(*v43);
      v44 = v42 + 2;
      v42 += 4;
      v43 += 4;
    }

    while (v44 <= v10);
    goto LABEL_34;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    v6 = a4;
    if (a5 >= 8)
    {
      v14 = 0;
      v15 = a1 + 1;
      v16 = 4 * a5;
      do
      {
        if (a2[v14])
        {
          v17 = a5 & 0x7FFFFFF8;
          v18 = v15;
          do
          {
            v19 = vabsq_f32(v18[-1]);
            v20 = vabsq_f32(*v18);
            v21 = vcvt_hight_f64_f32(v19);
            v22 = vcvtq_f64_f32(*v19.f32);
            v23 = vcvt_hight_f64_f32(v20);
            v24 = vcvtq_f64_f32(*v20.f32);
            v5 = v5 + v22.f64[0] + v22.f64[1] + v21.f64[0] + v21.f64[1] + v24.f64[0] + v24.f64[1] + v23.f64[0] + v23.f64[1];
            v18 += 2;
            v17 -= 8;
          }

          while (v17);
          if ((a5 & 0x7FFFFFF8) != a5)
          {
            v25 = a5 & 0x7FFFFFF8;
            do
            {
              v5 = v5 + fabsf(a1->f32[v25++]);
            }

            while (a5 != v25);
          }
        }

        ++v14;
        v15 = (v15 + v16);
        a1 = (a1 + v16);
      }

      while (v14 != a4);
    }

    else
    {
      v7 = &a1->f32[3];
      do
      {
        if (*a2++)
        {
          v5 = v5 + fabsf(*(v7 - 3));
          if (a5 != 1)
          {
            v5 = v5 + fabsf(*(v7 - 2));
            if (a5 != 2)
            {
              v5 = v5 + fabsf(*(v7 - 1));
              if (a5 != 3)
              {
                v5 = v5 + fabsf(*v7);
                if (a5 != 4)
                {
                  v5 = v5 + fabsf(v7[1]);
                  if (a5 != 5)
                  {
                    v5 = v5 + fabsf(v7[2]);
                    if (a5 != 6)
                    {
                      v5 = v5 + fabsf(v7[3]);
                    }
                  }
                }
              }
            }
          }
        }

        v7 += a5;
        --v6;
      }

      while (v6);
    }
  }

LABEL_43:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A2E20(float *a1, uint64_t a2, float *a3, int a4, int a5)
{
  v5 = *a3;
  if (a2)
  {
    if (a4 >= 1 && a5 >= 1)
    {
      for (i = 0; i != a4; ++i)
      {
        if (*(a2 + i))
        {
          for (j = 0; j != a5; ++j)
          {
            v8 = fabsf(a1[j]);
            if (v5 < v8)
            {
              v5 = v8;
            }
          }
        }

        a1 += a5;
      }
    }
  }

  else
  {
    v9 = (a5 * a4);
    v10 = 0.0;
    if (v9 >= 1)
    {
      do
      {
        v11 = *a1++;
        v12 = fabsf(v11);
        if (v10 < v12)
        {
          v10 = v12;
        }

        --v9;
      }

      while (v9);
    }

    if (v5 < v10)
    {
      v5 = v10;
    }
  }

  *a3 = v5;
  return 0;
}

uint64_t sub_1002A2EC8(uint64_t a1, int a2, int a3)
{
  switch(a3)
  {
    case 4:
      v5 = &unk_1003E5268;
      v6 = (a2 - 4);
      if (a2 < 4)
      {
LABEL_6:
        v7 = 0;
        result = 0;
        if (a2 <= 0)
        {
          return result;
        }

LABEL_12:
        v15 = v7;
        v16 = ~v7 + a2;
        if (v16)
        {
          v17 = 0;
          v18 = v16 + 1;
          v19 = (v16 + 1) & 0x1FFFFFFFELL;
          v20 = v19 + v15;
          v21 = (v15 + a1 + 1);
          v22 = v19;
          do
          {
            v23 = *(v21 - 1);
            v24 = *v21;
            v21 += 2;
            LODWORD(result) = result + v5[v23];
            v17 += v5[v24];
            v22 -= 2;
          }

          while (v22);
          result = (v17 + result);
          if (v18 == v19)
          {
            return result;
          }
        }

        else
        {
          v20 = v15;
        }

        v25 = (a1 + v20);
        do
        {
          v26 = *v25++;
          result = result + v5[v26];
          LODWORD(v20) = v20 + 1;
        }

        while (v20 < a2);
        return result;
      }

      break;
    case 2:
      v5 = &unk_1003E5168;
      v6 = (a2 - 4);
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      break;
    case 1:
      return sub_1002A7F44(a1, a2);
    default:
      return 0xFFFFFFFFLL;
  }

  v8 = 0;
  LODWORD(result) = 0;
  v9 = v6 & 0xFFFFFFFC;
  v10 = (a1 + 3);
  do
  {
    v11 = v5[*(v10 - 3)];
    v12 = v5[*(v10 - 2)];
    v13 = v5[*(v10 - 1)];
    v14 = *v10;
    v10 += 4;
    result = result + v11 + v12 + v13 + v5[v14];
    v8 += 4;
  }

  while (v8 <= v6);
  v7 = v9 + 4;
  if (v9 + 4 < a2)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1002A3000(uint64_t a1, signed int a2, double a3, double a4, int32x4_t a5)
{
  v5 = a2 & 0xFFFFFFF0;
  if ((a2 & 0xFFFFFFF0) < 1)
  {
    v6 = 0;
    v7 = 0uLL;
  }

  else
  {
    v6 = 0;
    v7 = 0uLL;
    v8 = a1;
    do
    {
      if (v5 - v6 >= 15360)
      {
        v9 = 15360;
      }

      else
      {
        v9 = v5 - v6;
      }

      if (v5 - v6 >= 1)
      {
        v10 = 0;
        do
        {
          if (v9 - v10 >= 240)
          {
            v13 = 240;
          }

          else
          {
            v13 = v9 - v10;
          }

          v14 = 0uLL;
          if (v9 - v10 >= 16)
          {
            v15 = 0;
            do
            {
              v14 = vsubq_s8(v14, vceqzq_s8(*(v8 + v15)));
              v15 += 16;
            }

            while (v15 <= v13 - 16);
          }

          v11 = vmovl_u8(*v14.i8);
          v12 = vmovl_high_u8(v14);
          a5 = vextq_s8(v11, v11, 8uLL);
          v7 = vaddw_u16(vaddw_u16(v7, *&vaddw_u8(a5, *v14.i8)), *&vaddw_u8(vextq_s8(v12, v12, 8uLL), *&vextq_s8(v14, v14, 8uLL)));
          v8 += v13;
          v10 += v13;
        }

        while (v10 < v9);
      }

      v6 += v9;
    }

    while (v6 < v5);
  }

  v16 = vaddvq_s32(v7);
  if (v16 >= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = v6 - v16;
  if (v6 < a2)
  {
    v18 = a2 - v6;
    if (v18 < 4)
    {
      v19 = v6;
      goto LABEL_34;
    }

    if (v18 >= 0x20)
    {
      v20 = v18 & 0xFFFFFFFFFFFFFFE0;
      v21 = 0uLL;
      v22 = v17;
      v23.i64[0] = 0x100000001;
      v23.i64[1] = 0x100000001;
      v24 = (v6 + a1 + 16);
      v25 = v18 & 0xFFFFFFFFFFFFFFE0;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v32 = vtstq_s8(v24[-1], v24[-1]);
        v33 = vmovl_u8(*v32.i8);
        v34 = vmovl_high_u8(v32);
        v35 = vtstq_s8(*v24, *v24);
        v36 = vmovl_u8(*v35.i8);
        v37 = vmovl_high_u8(v35);
        v27 = vaddq_s32(v27, vandq_s8(vmovl_high_u16(v34), v23));
        v26 = vaddq_s32(v26, vandq_s8(vmovl_u16(*v34.i8), v23));
        v21 = vaddq_s32(v21, vandq_s8(vmovl_high_u16(v33), v23));
        v22 = vaddq_s32(v22, vandq_s8(vmovl_u16(*v33.i8), v23));
        v31 = vaddq_s32(v31, vandq_s8(vmovl_high_u16(v37), v23));
        v30 = vaddq_s32(v30, vandq_s8(vmovl_u16(*v37.i8), v23));
        v29 = vaddq_s32(v29, vandq_s8(vmovl_high_u16(v36), v23));
        v28 = vaddq_s32(v28, vandq_s8(vmovl_u16(*v36.i8), v23));
        v24 += 2;
        v25 -= 32;
      }

      while (v25);
      a5 = vaddq_s32(v31, v27);
      v17 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v28, v22), vaddq_s32(v30, v26)), vaddq_s32(vaddq_s32(v29, v21), a5)));
      if (v18 == v20)
      {
        return v17;
      }

      if ((v18 & 0x1C) == 0)
      {
        v19 = v20 + v6;
LABEL_34:
        v44 = (a1 + v19);
        v45 = a2 - v19;
        do
        {
          if (*v44++)
          {
            v17 = (v17 + 1);
          }

          else
          {
            v17 = v17;
          }

          --v45;
        }

        while (v45);
        return v17;
      }
    }

    else
    {
      v20 = 0;
    }

    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL) + v6;
    v38 = v17;
    v39 = (a1 + v20 + v6);
    v40 = v20 - (v18 & 0xFFFFFFFFFFFFFFFCLL);
    v41.i64[0] = 0x100000001;
    v41.i64[1] = 0x100000001;
    do
    {
      v42 = *v39++;
      a5.i32[0] = v42;
      v43 = vmovl_u8(*a5.i8).u64[0];
      a5 = vandq_s8(vmovl_u16(vtst_s16(v43, v43)), v41);
      v38 = vaddq_s32(v38, a5);
      v40 += 4;
    }

    while (v40);
    v17 = vaddvq_s32(v38);
    if (v18 == (v18 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v17;
    }

    goto LABEL_34;
  }

  return v17;
}

uint64_t sub_1002A3284(int16x8_t *a1, int a2)
{
  v2 = a2 & 0xFFFFFFF8;
  if ((a2 & 0xFFFFFFF8) < 1)
  {
    v3 = 0;
    v4 = 0uLL;
  }

  else
  {
    v3 = 0;
    v4 = 0uLL;
    do
    {
      if (v2 - v3 >= 0x200000)
      {
        v5 = 0x200000;
      }

      else
      {
        v5 = v2 - v3;
      }

      if (v2 - v3 >= 1)
      {
        v6 = 0;
        do
        {
          if (v5 - v6 >= 0x8000)
          {
            v7 = 0x8000;
          }

          else
          {
            v7 = v5 - v6;
          }

          v8 = 0uLL;
          if (v5 - v6 >= 8)
          {
            v9 = 0;
            v10 = a1;
            do
            {
              v11 = *v10++;
              v8 = vsubq_s16(v8, vceqzq_s16(v11));
              v9 += 8;
            }

            while (v9 <= v7 - 8);
          }

          v4 = vaddw_u16(vaddw_high_u16(v4, v8), *v8.i8);
          a1 = (a1 + 2 * v7);
          v6 += v7;
        }

        while (v6 < v5);
      }

      v3 += v5;
    }

    while (v3 < v2);
  }

  v12 = a2 - v3;
  v13 = (a2 - v3 - 4);
  if (a2 - v3 >= 4)
  {
    if (v13 < 0xC)
    {
      v16 = 0;
      v15 = 0;
      goto LABEL_34;
    }

    v17 = (v13 >> 2) + 1;
    if (v13 >= 0x3C)
    {
      v18 = v17 & 0x3FFFFFF0;
      i16 = a1[4].i16;
      v20 = 0uLL;
      v21.i64[0] = 0x100000001;
      v21.i64[1] = 0x100000001;
      v22 = v18;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      do
      {
        v26 = i16 - 32;
        v65 = vld4q_s16(v26);
        v66 = vld4q_s16(i16);
        v27 = vtstq_s16(v65.val[0], v65.val[0]);
        v28 = vtstq_s16(v66.val[0], v66.val[0]);
        v29 = vtstq_s16(v65.val[1], v65.val[1]);
        v30 = vtstq_s16(v66.val[1], v66.val[1]);
        v31 = vtstq_s16(v65.val[2], v65.val[2]);
        v32 = vtstq_s16(v66.val[2], v66.val[2]);
        v65.val[0] = vtstq_s16(v65.val[3], v65.val[3]);
        v65.val[2] = vtstq_s16(v66.val[3], v66.val[3]);
        v23 = vaddq_s32(vaddq_s32(vaddq_s32(v23, vandq_s8(vmovl_high_u16(v27), v21)), vaddq_s32(vandq_s8(vmovl_high_u16(v29), v21), vandq_s8(vmovl_high_u16(v31), v21))), vandq_s8(vmovl_high_u16(v65.val[0]), v21));
        v20 = vaddq_s32(vaddq_s32(vaddq_s32(v20, vandq_s8(vmovl_u16(*v27.i8), v21)), vaddq_s32(vandq_s8(vmovl_u16(*v29.i8), v21), vandq_s8(vmovl_u16(*v31.i8), v21))), vandq_s8(vmovl_u16(*v65.val[0].i8), v21));
        v25 = vaddq_s32(vaddq_s32(vaddq_s32(v25, vandq_s8(vmovl_high_u16(v28), v21)), vaddq_s32(vandq_s8(vmovl_high_u16(v30), v21), vandq_s8(vmovl_high_u16(v32), v21))), vandq_s8(vmovl_high_u16(v65.val[2]), v21));
        i16 += 64;
        v24 = vaddq_s32(vaddq_s32(vaddq_s32(v24, vandq_s8(vmovl_u16(*v28.i8), v21)), vaddq_s32(vandq_s8(vmovl_u16(*v30.i8), v21), vandq_s8(vmovl_u16(*v32.i8), v21))), vandq_s8(vmovl_u16(*v65.val[2].i8), v21));
        v22 -= 16;
      }

      while (v22);
      v15 = vaddvq_s32(vaddq_s32(vaddq_s32(v24, v20), vaddq_s32(v25, v23)));
      if (v17 == v18)
      {
        goto LABEL_36;
      }

      if ((v17 & 0xC) == 0)
      {
        v16 = 4 * v18;
LABEL_34:
        v37 = (a1 + 2 * v16);
        do
        {
          v38 = *v37++;
          v39 = vbic_s8(0x8000400020001, vceqz_s16(v38));
          v39.i32[0] = vaddv_s16(v39) & 0xF;
          v40 = vcnt_s8(v39);
          v40.i16[0] = vaddlv_u8(v40);
          v15 += v40.i32[0];
          v16 += 4;
        }

        while (v16 <= v13);
        goto LABEL_36;
      }
    }

    else
    {
      v15 = 0;
      v18 = 0;
    }

    v16 = 4 * (v17 & 0x3FFFFFFC);
    v33 = v15;
    v34 = &a1->i16[4 * v18];
    v35 = v18 - (v17 & 0x3FFFFFFC);
    v36.i64[0] = 0x100000001;
    v36.i64[1] = 0x100000001;
    do
    {
      v64 = vld4_s16(v34);
      v34 += 16;
      v33 = vaddq_s32(vaddq_s32(vaddq_s32(v33, vandq_s8(vmovl_u16(vtst_s16(v64.val[0], v64.val[0])), v36)), vaddq_s32(vandq_s8(vmovl_u16(vtst_s16(v64.val[1], v64.val[1])), v36), vandq_s8(vmovl_u16(vtst_s16(v64.val[2], v64.val[2])), v36))), vandq_s8(vmovl_u16(vtst_s16(v64.val[3], v64.val[3])), v36));
      v35 += 4;
    }

    while (v35);
    v15 = vaddvq_s32(v33);
    if (v17 != (v17 & 0x3FFFFFFC))
    {
      goto LABEL_34;
    }

LABEL_36:
    v14 = (v13 & 0xFFFFFFFC) + 4;
    if (v14 >= v12)
    {
      goto LABEL_54;
    }

    goto LABEL_37;
  }

  v14 = 0;
  v15 = 0;
  if (v12 <= 0)
  {
    goto LABEL_54;
  }

LABEL_37:
  v41 = v14;
  v42 = ~v3 + a2 - v14;
  if (v42 < 3)
  {
    v43 = v14;
    goto LABEL_50;
  }

  v44 = v42 + 1;
  if (v42 < 0xF)
  {
    v45 = 0;
LABEL_45:
    v43 = (v44 & 0x1FFFFFFFCLL) + v41;
    v55 = v15;
    v56 = v45 - (v44 & 0x1FFFFFFFCLL);
    v57 = (a1 + 2 * v45 + 2 * v41);
    v58.i64[0] = 0x100000001;
    v58.i64[1] = 0x100000001;
    do
    {
      v59 = *v57++;
      v55 = vaddq_s32(v55, vandq_s8(vmovl_u16(vtst_s16(v59, v59)), v58));
      v56 += 4;
    }

    while (v56);
    v15 = vaddvq_s32(v55);
    if (v44 == (v44 & 0x1FFFFFFFCLL))
    {
      goto LABEL_54;
    }

    goto LABEL_50;
  }

  v45 = v44 & 0x1FFFFFFF0;
  v46 = 0uLL;
  v47 = v15;
  v48 = (a1 + 2 * v41 + 16);
  v49.i64[0] = 0x100000001;
  v49.i64[1] = 0x100000001;
  v50 = v44 & 0x1FFFFFFF0;
  v51 = 0uLL;
  v52 = 0uLL;
  do
  {
    v53 = vtstq_s16(v48[-1], v48[-1]);
    v54 = vtstq_s16(*v48, *v48);
    v46 = vaddq_s32(v46, vandq_s8(vmovl_high_u16(v53), v49));
    v47 = vaddq_s32(v47, vandq_s8(vmovl_u16(*v53.i8), v49));
    v52 = vaddq_s32(v52, vandq_s8(vmovl_high_u16(v54), v49));
    v51 = vaddq_s32(v51, vandq_s8(vmovl_u16(*v54.i8), v49));
    v48 += 2;
    v50 -= 16;
  }

  while (v50);
  v15 = vaddvq_s32(vaddq_s32(vaddq_s32(v51, v47), vaddq_s32(v52, v46)));
  if (v44 == v45)
  {
    goto LABEL_54;
  }

  if ((v44 & 0xC) != 0)
  {
    goto LABEL_45;
  }

  v43 = v45 + v41;
LABEL_50:
  v60 = a1 + v43;
  do
  {
    if (*v60++)
    {
      ++v15;
    }

    LODWORD(v43) = v43 + 1;
  }

  while (v12 > v43);
LABEL_54:
  v62 = vaddvq_s32(v4);
  if (v62 >= 0x7FFFFFFF)
  {
    v62 = 0x7FFFFFFF;
  }

  return v3 - v62 + v15;
}

uint64_t sub_1002A36F0(uint64_t a1, int a2)
{
  v2 = a2 & 0xFFFFFFF8;
  if ((a2 & 0xFFFFFFF8) < 1)
  {
    v3 = 0;
    v4 = 0uLL;
  }

  else
  {
    v3 = 0;
    v4 = 0uLL;
    do
    {
      if (v2 - v3 >= 0x200000)
      {
        v5 = 0x200000;
      }

      else
      {
        v5 = v2 - v3;
      }

      if (v2 - v3 >= 1)
      {
        v6 = 0;
        do
        {
          if (v5 - v6 >= 0x8000)
          {
            v7 = 0x8000;
          }

          else
          {
            v7 = v5 - v6;
          }

          v8 = 0uLL;
          if (v5 - v6 >= 8)
          {
            v9 = 0;
            v10 = (a1 + 16);
            do
            {
              v8 = vsubq_s16(v8, vuzp1q_s16(vceqzq_s32(v10[-1]), vceqzq_s32(*v10)));
              v9 += 8;
              v10 += 2;
            }

            while (v9 <= v7 - 8);
          }

          v4 = vaddw_u16(vaddw_high_u16(v4, v8), *v8.i8);
          a1 += 4 * v7;
          v6 += v7;
        }

        while (v6 < v5);
      }

      v3 += v5;
    }

    while (v3 < v2);
  }

  v11 = a2 - v3;
  v12 = (a2 - v3 - 4);
  if (a2 - v3 >= 4)
  {
    if (v12 > 0x1B)
    {
      v16 = (v12 >> 2) + 1;
      v15 = 4 * (v16 & 0x3FFFFFF8);
      v17 = (a1 + 64);
      v18 = 0uLL;
      v19 = v16 & 0x3FFFFFF8;
      v20 = 0uLL;
      do
      {
        v21 = v17 - 16;
        v38 = vld4q_f32(v21);
        v39 = vld4q_f32(v17);
        v18 = vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(v18, vtstq_s32(v38.val[0], v38.val[0])), vtstq_s32(v38.val[1], v38.val[1])), vtstq_s32(v38.val[2], v38.val[2])), vtstq_s32(v38.val[3], v38.val[3]));
        v20 = vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(v20, vtstq_s32(v39.val[0], v39.val[0])), vtstq_s32(v39.val[1], v39.val[1])), vtstq_s32(v39.val[2], v39.val[2])), vtstq_s32(v39.val[3], v39.val[3]));
        v17 += 32;
        v19 -= 8;
      }

      while (v19);
      v14 = vaddvq_s32(vaddq_s32(v20, v18));
      if (v16 == (v16 & 0x3FFFFFF8))
      {
LABEL_28:
        v13 = (v12 & 0xFFFFFFFC) + 4;
        if (v13 >= v11)
        {
          goto LABEL_38;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v22 = (a1 + 4 * v15);
    do
    {
      v23 = *v22++;
      v24 = vbicq_s8(xmmword_1003E3A20, vceqzq_s32(v23));
      v24.i32[0] = vaddvq_s32(v24) & 0xF;
      *v24.i8 = vcnt_s8(*v24.i8);
      v24.i16[0] = vaddlv_u8(*v24.i8);
      v14 += v24.i32[0];
      v15 += 4;
    }

    while (v15 <= v12);
    goto LABEL_28;
  }

  v13 = 0;
  v14 = 0;
  if (v11 <= 0)
  {
    goto LABEL_38;
  }

LABEL_29:
  v25 = v13;
  v26 = (~v3 + a2 - v13);
  if (v26 > 6)
  {
    v28 = v26 + 1;
    v29 = (v26 + 1) & 0x1FFFFFFF8;
    v27 = v29 + v25;
    v30 = 0uLL;
    v31 = v14;
    v32 = (a1 + 4 * v25 + 16);
    v33 = v29;
    do
    {
      v31 = vsubq_s32(v31, vtstq_s32(v32[-1], v32[-1]));
      v30 = vsubq_s32(v30, vtstq_s32(*v32, *v32));
      v32 += 2;
      v33 -= 8;
    }

    while (v33);
    v14 = vaddvq_s32(vaddq_s32(v30, v31));
    if (v28 == v29)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v27 = v25;
  }

  v34 = (a1 + 4 * v27);
  do
  {
    if (*v34++)
    {
      ++v14;
    }

    LODWORD(v27) = v27 + 1;
  }

  while (v11 > v27);
LABEL_38:
  v36 = vaddvq_s32(v4);
  if (v36 >= 0x7FFFFFFF)
  {
    v36 = 0x7FFFFFFF;
  }

  return v3 - v36 + v14;
}

uint64_t sub_1002A3970(float32x4_t *a1, int a2)
{
  v2 = a2 & 0xFFFFFFF8;
  if ((a2 & 0xFFFFFFF8) < 1)
  {
    v3 = 0;
    v4 = 0uLL;
  }

  else
  {
    v3 = 0;
    v4 = 0uLL;
    do
    {
      if (v2 - v3 >= 0x200000)
      {
        v5 = 0x200000;
      }

      else
      {
        v5 = v2 - v3;
      }

      if (v2 - v3 >= 1)
      {
        v6 = 0;
        do
        {
          if (v5 - v6 >= 0x8000)
          {
            v7 = 0x8000;
          }

          else
          {
            v7 = v5 - v6;
          }

          v8 = 0uLL;
          if (v5 - v6 >= 8)
          {
            v9 = 0;
            v10 = a1 + 1;
            do
            {
              v8 = vsubq_s16(v8, vuzp1q_s16(vceqzq_f32(v10[-1]), vceqzq_f32(*v10)));
              v9 += 8;
              v10 += 2;
            }

            while (v9 <= v7 - 8);
          }

          v4 = vaddw_u16(vaddw_high_u16(v4, v8), *v8.i8);
          a1 = (a1 + 4 * v7);
          v6 += v7;
        }

        while (v6 < v5);
      }

      v3 += v5;
    }

    while (v3 < v2);
  }

  v11 = a2 - v3;
  v12 = (a2 - v3 - 4);
  if (a2 - v3 >= 4)
  {
    if (v12 > 0x1B)
    {
      v16 = (v12 >> 2) + 1;
      v15 = 4 * (v16 & 0x3FFFFFF8);
      f32 = a1[4].f32;
      v18 = 0uLL;
      v19 = v16 & 0x3FFFFFF8;
      v20 = 0uLL;
      do
      {
        v21 = f32 - 16;
        v38 = vld4q_f32(v21);
        v39 = vld4q_f32(f32);
        v18 = vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(v18, vmvnq_s8(vceqzq_f32(v38.val[0]))), vmvnq_s8(vceqzq_f32(v38.val[1]))), vmvnq_s8(vceqzq_f32(v38.val[2]))), vmvnq_s8(vceqzq_f32(v38.val[3])));
        v20 = vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(v20, vmvnq_s8(vceqzq_f32(v39.val[0]))), vmvnq_s8(vceqzq_f32(v39.val[1]))), vmvnq_s8(vceqzq_f32(v39.val[2]))), vmvnq_s8(vceqzq_f32(v39.val[3])));
        f32 += 32;
        v19 -= 8;
      }

      while (v19);
      v14 = vaddvq_s32(vaddq_s32(v20, v18));
      if (v16 == (v16 & 0x3FFFFFF8))
      {
LABEL_28:
        v13 = (v12 & 0xFFFFFFFC) + 4;
        if (v13 >= v11)
        {
          goto LABEL_38;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v22 = &a1[v15 / 4];
    do
    {
      v23 = *v22++;
      v24 = vbicq_s8(xmmword_1003E3A20, vceqzq_f32(v23));
      v24.i32[0] = vaddvq_s32(v24) & 0xF;
      *v24.i8 = vcnt_s8(*v24.i8);
      v24.i16[0] = vaddlv_u8(*v24.i8);
      v14 += v24.i32[0];
      v15 += 4;
    }

    while (v15 <= v12);
    goto LABEL_28;
  }

  v13 = 0;
  v14 = 0;
  if (v11 <= 0)
  {
    goto LABEL_38;
  }

LABEL_29:
  v25 = v13;
  v26 = (~v3 + a2 - v13);
  if (v26 > 6)
  {
    v28 = v26 + 1;
    v29 = (v26 + 1) & 0x1FFFFFFF8;
    v27 = v29 + v25;
    v30 = 0uLL;
    v31 = v14;
    v32 = (a1 + 4 * v25 + 16);
    v33 = v29;
    do
    {
      v31 = vsubq_s32(v31, vmvnq_s8(vceqzq_f32(v32[-1])));
      v30 = vsubq_s32(v30, vmvnq_s8(vceqzq_f32(*v32)));
      v32 += 2;
      v33 -= 8;
    }

    while (v33);
    v14 = vaddvq_s32(vaddq_s32(v30, v31));
    if (v28 == v29)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v27 = v25;
  }

  v34 = &a1->f32[v27];
  do
  {
    v35 = *v34++;
    if (v35 != 0.0)
    {
      ++v14;
    }

    LODWORD(v27) = v27 + 1;
  }

  while (v11 > v27);
LABEL_38:
  v36 = vaddvq_s32(v4);
  if (v36 >= 0x7FFFFFFF)
  {
    v36 = 0x7FFFFFFF;
  }

  return v3 - v36 + v14;
}

uint64_t sub_1002A3C18(uint64_t a1, int a2)
{
  v2 = (a2 - 4);
  if (a2 < 4)
  {
    v3 = 0;
    v4 = 0;
    if (a2 <= 0)
    {
      return v4;
    }

    goto LABEL_12;
  }

  if (v2 <= 0x1B)
  {
    v5 = 0;
    LODWORD(v4) = 0;
LABEL_9:
    v14 = (a1 + 8 * v5);
    do
    {
      v15 = *v14;
      v16 = v14[1];
      v14 += 2;
      v17 = vbicq_s8(xmmword_1003E3A20, vuzp1q_s32(vceqzq_f64(v15), vceqzq_f64(v16)));
      v17.i32[0] = vaddvq_s32(v17);
      *v17.i8 = vcnt_s8(*v17.i8);
      v17.i16[0] = vaddlv_u8(*v17.i8);
      v4 = (v4 + v17.i32[0]);
      v5 += 4;
    }

    while (v5 <= v2);
    goto LABEL_11;
  }

  v6 = (v2 >> 2) + 1;
  v5 = 4 * (v6 & 0x3FFFFFF8);
  v7 = (a1 + 128);
  v8 = 0uLL;
  v9 = v6 & 0x3FFFFFF8;
  v10 = 0uLL;
  do
  {
    v11 = v7 - 16;
    v12 = v7 - 8;
    v34 = vld4q_f64(v11);
    v35 = vld4q_f64(v12);
    v13 = v7;
    v36 = vld4q_f64(v13);
    v13 += 8;
    v37 = vld4q_f64(v13);
    v8 = vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(v8, vmvnq_s8(vuzp1q_s32(vceqzq_f64(v34.val[0]), vceqzq_f64(v35.val[0])))), vmvnq_s8(vuzp1q_s32(vceqzq_f64(v34.val[1]), vceqzq_f64(v35.val[1])))), vmvnq_s8(vuzp1q_s32(vceqzq_f64(v34.val[2]), vceqzq_f64(v35.val[2])))), vmvnq_s8(vuzp1q_s32(vceqzq_f64(v34.val[3]), vceqzq_f64(v35.val[3]))));
    v10 = vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(v10, vmvnq_s8(vuzp1q_s32(vceqzq_f64(v36.val[0]), vceqzq_f64(v37.val[0])))), vmvnq_s8(vuzp1q_s32(vceqzq_f64(v36.val[1]), vceqzq_f64(v37.val[1])))), vmvnq_s8(vuzp1q_s32(vceqzq_f64(v36.val[2]), vceqzq_f64(v37.val[2])))), vmvnq_s8(vuzp1q_s32(vceqzq_f64(v36.val[3]), vceqzq_f64(v37.val[3]))));
    v7 += 32;
    v9 -= 8;
  }

  while (v9);
  v4 = vaddvq_s32(vaddq_s32(v10, v8));
  if (v6 != (v6 & 0x3FFFFFF8))
  {
    goto LABEL_9;
  }

LABEL_11:
  v3 = (v2 & 0xFFFFFFFC) + 4;
  if (v3 >= a2)
  {
    return v4;
  }

LABEL_12:
  v18 = v3;
  v19 = (~v3 + a2);
  if (v19 > 6)
  {
    v21 = v19 + 1;
    v22 = (v19 + 1) & 0x1FFFFFFF8;
    v20 = v22 + v18;
    v23 = 0uLL;
    v24 = v4;
    v25 = (a1 + 8 * v18 + 32);
    v26 = v22;
    do
    {
      v27 = v25[-2];
      v28 = v25[-1];
      v29 = *v25;
      v30 = v25[1];
      v25 += 4;
      v24 = vsubq_s32(v24, vmvnq_s8(vuzp1q_s32(vceqzq_f64(v27), vceqzq_f64(v28))));
      v23 = vsubq_s32(v23, vmvnq_s8(vuzp1q_s32(vceqzq_f64(v29), vceqzq_f64(v30))));
      v26 -= 8;
    }

    while (v26);
    v4 = vaddvq_s32(vaddq_s32(v23, v24));
    if (v21 == v22)
    {
      return v4;
    }
  }

  else
  {
    v20 = v18;
  }

  v31 = (a1 + 8 * v20);
  do
  {
    v32 = *v31++;
    if (v32 == 0.0)
    {
      v4 = v4;
    }

    else
    {
      v4 = (v4 + 1);
    }

    LODWORD(v20) = v20 + 1;
  }

  while (v20 < a2);
  return v4;
}

unsigned __int8 *sub_1002A3E60(unsigned __int8 *result, unsigned __int8 *a2, int *a3, int *a4, uint64_t *a5, uint64_t *a6, int a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v12 = a7;
      do
      {
        v14 = *result++;
        v13 = v14;
        v16 = *a2++;
        v15 = v16;
        if (v8 <= v13)
        {
          v17 = v10;
        }

        else
        {
          v17 = a8;
        }

        if (v8 >= v13)
        {
          v18 = v13;
        }

        else
        {
          v18 = v8;
        }

        if (v9 >= v13)
        {
          v19 = v11;
        }

        else
        {
          v19 = a8;
        }

        if (v9 > v13)
        {
          v13 = v9;
        }

        if (v15)
        {
          v10 = v17;
          v8 = v18;
          v11 = v19;
          v9 = v13;
        }

        ++a8;
        --v12;
      }

      while (v12);
    }
  }

  else if (a7 >= 1)
  {
    v20 = a7;
    do
    {
      v22 = *result++;
      v21 = v22;
      v24 = __OFSUB__(v8, v22);
      v23 = v8 - v22 < 0;
      if (v8 > v22)
      {
        v10 = a8;
      }

      if (v23 == v24)
      {
        v8 = v21;
      }

      if (v9 < v21)
      {
        v11 = a8;
      }

      if (v9 <= v21)
      {
        v9 = v21;
      }

      ++a8;
      --v20;
    }

    while (v20);
  }

  *a5 = v10;
  *a6 = v11;
  *a3 = v8;
  *a4 = v9;
  return result;
}

char *sub_1002A3F08(char *result, unsigned __int8 *a2, int *a3, int *a4, uint64_t *a5, uint64_t *a6, int a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v12 = a7;
      do
      {
        v14 = *result++;
        v13 = v14;
        v16 = *a2++;
        v15 = v16;
        if (v8 <= v13)
        {
          v17 = v10;
        }

        else
        {
          v17 = a8;
        }

        if (v8 >= v13)
        {
          v18 = v13;
        }

        else
        {
          v18 = v8;
        }

        if (v9 >= v13)
        {
          v19 = v11;
        }

        else
        {
          v19 = a8;
        }

        if (v9 > v13)
        {
          v13 = v9;
        }

        if (v15)
        {
          v10 = v17;
          v8 = v18;
          v11 = v19;
          v9 = v13;
        }

        ++a8;
        --v12;
      }

      while (v12);
    }
  }

  else if (a7 >= 1)
  {
    v20 = a7;
    do
    {
      v22 = *result++;
      v21 = v22;
      v24 = __OFSUB__(v8, v22);
      v23 = v8 - v22 < 0;
      if (v8 > v22)
      {
        v10 = a8;
      }

      if (v23 == v24)
      {
        v8 = v21;
      }

      if (v9 < v21)
      {
        v11 = a8;
      }

      if (v9 <= v21)
      {
        v9 = v21;
      }

      ++a8;
      --v20;
    }

    while (v20);
  }

  *a5 = v10;
  *a6 = v11;
  *a3 = v8;
  *a4 = v9;
  return result;
}

unsigned __int16 *sub_1002A3FB0(unsigned __int16 *result, unsigned __int8 *a2, int *a3, int *a4, uint64_t *a5, uint64_t *a6, int a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v12 = a7;
      do
      {
        v14 = *result++;
        v13 = v14;
        v16 = *a2++;
        v15 = v16;
        if (v8 <= v13)
        {
          v17 = v10;
        }

        else
        {
          v17 = a8;
        }

        if (v8 >= v13)
        {
          v18 = v13;
        }

        else
        {
          v18 = v8;
        }

        if (v9 >= v13)
        {
          v19 = v11;
        }

        else
        {
          v19 = a8;
        }

        if (v9 > v13)
        {
          v13 = v9;
        }

        if (v15)
        {
          v10 = v17;
          v8 = v18;
          v11 = v19;
          v9 = v13;
        }

        ++a8;
        --v12;
      }

      while (v12);
    }
  }

  else if (a7 >= 1)
  {
    v20 = a7;
    do
    {
      v22 = *result++;
      v21 = v22;
      v24 = __OFSUB__(v8, v22);
      v23 = v8 - v22 < 0;
      if (v8 > v22)
      {
        v10 = a8;
      }

      if (v23 == v24)
      {
        v8 = v21;
      }

      if (v9 < v21)
      {
        v11 = a8;
      }

      if (v9 <= v21)
      {
        v9 = v21;
      }

      ++a8;
      --v20;
    }

    while (v20);
  }

  *a5 = v10;
  *a6 = v11;
  *a3 = v8;
  *a4 = v9;
  return result;
}

__int16 *sub_1002A4058(__int16 *result, unsigned __int8 *a2, int *a3, int *a4, uint64_t *a5, uint64_t *a6, int a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v12 = a7;
      do
      {
        v14 = *result++;
        v13 = v14;
        v16 = *a2++;
        v15 = v16;
        if (v8 <= v13)
        {
          v17 = v10;
        }

        else
        {
          v17 = a8;
        }

        if (v8 >= v13)
        {
          v18 = v13;
        }

        else
        {
          v18 = v8;
        }

        if (v9 >= v13)
        {
          v19 = v11;
        }

        else
        {
          v19 = a8;
        }

        if (v9 > v13)
        {
          v13 = v9;
        }

        if (v15)
        {
          v10 = v17;
          v8 = v18;
          v11 = v19;
          v9 = v13;
        }

        ++a8;
        --v12;
      }

      while (v12);
    }
  }

  else if (a7 >= 1)
  {
    v20 = a7;
    do
    {
      v22 = *result++;
      v21 = v22;
      v24 = __OFSUB__(v8, v22);
      v23 = v8 - v22 < 0;
      if (v8 > v22)
      {
        v10 = a8;
      }

      if (v23 == v24)
      {
        v8 = v21;
      }

      if (v9 < v21)
      {
        v11 = a8;
      }

      if (v9 <= v21)
      {
        v9 = v21;
      }

      ++a8;
      --v20;
    }

    while (v20);
  }

  *a5 = v10;
  *a6 = v11;
  *a3 = v8;
  *a4 = v9;
  return result;
}

int *sub_1002A4100(int *result, unsigned __int8 *a2, int *a3, int *a4, uint64_t *a5, uint64_t *a6, int a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v12 = a7;
      do
      {
        v14 = *result++;
        v13 = v14;
        v15 = *a2++;
        v16 = v15 != 0;
        if (v15 != 0 && v13 < v8)
        {
          v10 = a8;
          v8 = v13;
        }

        if (v16 && v13 > v9)
        {
          v11 = a8;
          v9 = v13;
        }

        ++a8;
        --v12;
      }

      while (v12);
    }
  }

  else if (a7 >= 1)
  {
    v17 = a7;
    do
    {
      v19 = *result++;
      v18 = v19;
      if (v19 < v8)
      {
        v10 = a8;
        v8 = v18;
      }

      if (v18 > v9)
      {
        v11 = a8;
        v9 = v18;
      }

      ++a8;
      --v17;
    }

    while (v17);
  }

  *a5 = v10;
  *a6 = v11;
  *a3 = v8;
  *a4 = v9;
  return result;
}

float *sub_1002A41AC(float *result, unsigned __int8 *a2, float *a3, float *a4, uint64_t *a5, uint64_t *a6, int a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v12 = a7;
      do
      {
        v13 = *result++;
        v14 = v13;
        v15 = *a2++;
        v16 = v15 != 0;
        if (v15 != 0 && v14 < v8)
        {
          v10 = a8;
          v8 = v14;
        }

        if (v16 && v14 > v9)
        {
          v11 = a8;
          v9 = v14;
        }

        ++a8;
        --v12;
      }

      while (v12);
    }
  }

  else if (a7 >= 1)
  {
    v17 = a7;
    do
    {
      v18 = *result++;
      v19 = v18;
      if (v18 < v8)
      {
        v10 = a8;
        v8 = v19;
      }

      if (v19 > v9)
      {
        v11 = a8;
        v9 = v19;
      }

      ++a8;
      --v17;
    }

    while (v17);
  }

  *a5 = v10;
  *a6 = v11;
  *a3 = v8;
  *a4 = v9;
  return result;
}

double *sub_1002A4258(double *result, unsigned __int8 *a2, double *a3, double *a4, uint64_t *a5, uint64_t *a6, int a7, uint64_t a8)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v12 = a7;
      do
      {
        v13 = *result++;
        v14 = v13;
        LODWORD(v13) = *a2++;
        v15 = LODWORD(v13) != 0;
        if (LODWORD(v13) != 0 && v14 < v8)
        {
          v10 = a8;
          v8 = v14;
        }

        if (v15 && v14 > v9)
        {
          v11 = a8;
          v9 = v14;
        }

        ++a8;
        --v12;
      }

      while (v12);
    }
  }

  else if (a7 >= 1)
  {
    v16 = a7;
    do
    {
      v17 = *result++;
      v18 = v17;
      if (v17 < v8)
      {
        v10 = a8;
        v8 = v18;
      }

      if (v18 > v9)
      {
        v11 = a8;
        v9 = v18;
      }

      ++a8;
      --v16;
    }

    while (v16);
  }

  *a5 = v10;
  *a6 = v11;
  *a3 = v8;
  *a4 = v9;
  return result;
}

uint64_t sub_1002A4304(int8x16_t *a1, unsigned __int8 *a2, signed int *a3, int a4, int a5, double a6, int32x4_t a7, double a8, double a9, double a10, int32x4_t a11)
{
  v11 = *a3;
  if (a2)
  {
    if (a4 < 1 || a5 < 1)
    {
      goto LABEL_51;
    }

    v12 = a4;
    if (a5 < 4)
    {
      v13 = &a1->u8[2];
      do
      {
        if (*a2++)
        {
          if (v11 <= *(v13 - 2))
          {
            v11 = *(v13 - 2);
          }

          if (a5 != 1)
          {
            if (v11 <= *(v13 - 1))
            {
              v11 = *(v13 - 1);
            }

            if (a5 != 2 && v11 <= *v13)
            {
              v11 = *v13;
            }
          }
        }

        v13 += a5;
        --v12;
      }

      while (v12);
      goto LABEL_51;
    }

    v18 = 0;
    v19 = a5 & 0x7FFFFFFC;
    v20 = a1 + 1;
    while (1)
    {
      if (a2[v18])
      {
        if (a5 >= 0x20)
        {
          v22 = a5 & 0x7FFFFFE0;
          v23 = vdupq_n_s32(v11);
          v24 = v20;
          v25 = v23;
          v26 = v23;
          v27 = v23;
          v28 = v23;
          v29 = v23;
          v30 = v23;
          v31 = v23;
          do
          {
            v32 = v24[-1];
            v26 = vmaxq_s32(v26, vqtbl1q_s8(v32, xmmword_1003E3700));
            v25 = vmaxq_s32(v25, vqtbl1q_s8(v32, xmmword_1003E3730));
            v23 = vmaxq_s32(v23, vqtbl1q_s8(v32, xmmword_1003E3720));
            v27 = vmaxq_s32(v27, vqtbl1q_s8(v32, xmmword_1003E3710));
            v30 = vmaxq_s32(v30, vqtbl1q_s8(*v24, xmmword_1003E3700));
            v29 = vmaxq_s32(v29, vqtbl1q_s8(*v24, xmmword_1003E3730));
            v28 = vmaxq_s32(v28, vqtbl1q_s8(*v24, xmmword_1003E3720));
            v31 = vmaxq_s32(v31, vqtbl1q_s8(*v24, xmmword_1003E3710));
            v24 += 2;
            v22 -= 32;
          }

          while (v22);
          v33 = vmaxq_s32(vmaxq_u32(v23, v28), vmaxq_u32(v26, v30));
          a11 = vmaxq_s32(vmaxq_u32(v25, v29), vmaxq_u32(v27, v31));
          v11 = vmaxvq_s32(vmaxq_s32(v33, a11));
          if ((a5 & 0x7FFFFFE0) == a5)
          {
            goto LABEL_21;
          }

          v21 = a5 & 0x7FFFFFE0;
          v34 = v21;
          if ((a5 & 0x1C) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v21 = 0;
        }

        v35 = vdupq_n_s32(v11);
        do
        {
          a11.i32[0] = *(a1->i32 + v21);
          a11 = vmovl_u16(*&vmovl_u8(*a11.i8));
          v35 = vmaxq_s32(v35, a11);
          v21 += 4;
        }

        while (v19 != v21);
        v11 = vmaxvq_s32(v35);
        v34 = a5 & 0x7FFFFFFC;
        if (v19 != a5)
        {
          do
          {
LABEL_32:
            if (v11 <= a1->u8[v34])
            {
              v11 = a1->u8[v34];
            }

            ++v34;
          }

          while (a5 != v34);
        }
      }

LABEL_21:
      ++v18;
      a1 = (a1 + a5);
      v20 = (v20 + a5);
      if (v18 == v12)
      {
        goto LABEL_51;
      }
    }
  }

  v15 = (a5 * a4);
  if (v15 < 1)
  {
    v17 = 0;
    goto LABEL_49;
  }

  if (v15 < 4)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_45;
  }

  if (v15 >= 0x20)
  {
    v16 = v15 & 0x7FFFFFE0;
    v36 = a1 + 1;
    v37 = 0uLL;
    v38 = 0uLL;
    v39 = v16;
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    do
    {
      v46 = v36[-1];
      v40 = vmaxq_s32(v40, vqtbl1q_s8(v46, xmmword_1003E3700));
      v38 = vmaxq_s32(v38, vqtbl1q_s8(v46, xmmword_1003E3730));
      v37 = vmaxq_s32(v37, vqtbl1q_s8(v46, xmmword_1003E3720));
      v41 = vmaxq_s32(v41, vqtbl1q_s8(v46, xmmword_1003E3710));
      v44 = vmaxq_s32(v44, vqtbl1q_s8(*v36, xmmword_1003E3700));
      v43 = vmaxq_s32(v43, vqtbl1q_s8(*v36, xmmword_1003E3730));
      v42 = vmaxq_s32(v42, vqtbl1q_s8(*v36, xmmword_1003E3720));
      v45 = vmaxq_s32(v45, vqtbl1q_s8(*v36, xmmword_1003E3710));
      v36 += 2;
      v39 -= 32;
    }

    while (v39);
    a7 = vmaxq_s32(vmaxq_u32(v38, v43), vmaxq_u32(v41, v45));
    v17 = vmaxvq_s32(vmaxq_s32(vmaxq_s32(vmaxq_u32(v37, v42), vmaxq_u32(v40, v44)), a7));
    if (v16 == v15)
    {
      goto LABEL_49;
    }

    if (((a5 * a4) & 0x1C) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v47 = v16;
  v16 = v15 & 0x7FFFFFFC;
  v48 = vdupq_n_s32(v17);
  v49 = (a1->u32 + v47);
  v50 = v47 - v16;
  do
  {
    v51 = *v49++;
    a7.i32[0] = v51;
    a7 = vmovl_u16(*&vmovl_u8(*a7.i8));
    v48 = vmaxq_s32(v48, a7);
    v50 += 4;
  }

  while (v50);
  v17 = vmaxvq_s32(v48);
  if (v16 != v15)
  {
LABEL_45:
    v52 = v15 - v16;
    v53 = &a1->u8[v16];
    do
    {
      v55 = *v53++;
      v54 = v55;
      if (v17 <= v55)
      {
        v17 = v54;
      }

      --v52;
    }

    while (v52);
  }

LABEL_49:
  if (v11 <= v17)
  {
    v11 = v17;
  }

LABEL_51:
  *a3 = v11;
  return 0;
}

uint64_t sub_1002A4660(int8x16_t *a1, unsigned __int8 *a2, signed int *a3, int a4, int a5, double a6, int32x4_t a7, double a8, double a9, double a10, int32x4_t a11)
{
  v11 = *a3;
  if (a2)
  {
    if (a4 < 1 || a5 < 1)
    {
      goto LABEL_61;
    }

    v12 = a4;
    if (a5 < 4)
    {
      v13 = &a1->i8[2];
      do
      {
        if (*a2++)
        {
          v15 = *(v13 - 2);
          if (v15 < 0)
          {
            v15 = -v15;
          }

          if (v11 <= v15)
          {
            v11 = v15;
          }

          if (a5 != 1)
          {
            v16 = *(v13 - 1);
            if (v16 < 0)
            {
              v16 = -v16;
            }

            if (v11 <= v16)
            {
              v11 = v16;
            }

            if (a5 != 2)
            {
              v17 = *v13;
              if (v17 < 0)
              {
                v17 = -v17;
              }

              if (v11 <= v17)
              {
                v11 = v17;
              }
            }
          }
        }

        v13 += a5;
        --v12;
      }

      while (v12);
      goto LABEL_61;
    }

    v21 = 0;
    v22 = a5 & 0x7FFFFFFC;
    v23 = a1 + 1;
    while (1)
    {
      if (a2[v21])
      {
        if (a5 >= 0x20)
        {
          v25 = a5 & 0x7FFFFFE0;
          v26 = vdupq_n_s32(v11);
          v27 = v23;
          v28 = v26;
          v29 = v26;
          v30 = v26;
          v31 = v26;
          v32 = v26;
          v33 = v26;
          v34 = v26;
          do
          {
            v35 = vabsq_s8(v27[-1]);
            v36 = vabsq_s8(*v27);
            v30 = vmaxq_s32(v30, vqtbl1q_s8(v35, xmmword_1003E3710));
            v29 = vmaxq_s32(v29, vqtbl1q_s8(v35, xmmword_1003E3700));
            v28 = vmaxq_s32(v28, vqtbl1q_s8(v35, xmmword_1003E3730));
            v26 = vmaxq_s32(v26, vqtbl1q_s8(v35, xmmword_1003E3720));
            v34 = vmaxq_s32(v34, vqtbl1q_s8(v36, xmmword_1003E3710));
            v33 = vmaxq_s32(v33, vqtbl1q_s8(v36, xmmword_1003E3700));
            v32 = vmaxq_s32(v32, vqtbl1q_s8(v36, xmmword_1003E3730));
            v31 = vmaxq_s32(v31, vqtbl1q_s8(v36, xmmword_1003E3720));
            v27 += 2;
            v25 -= 32;
          }

          while (v25);
          v37 = vmaxq_s32(vmaxq_u32(v26, v31), vmaxq_u32(v29, v33));
          a11 = vmaxq_s32(vmaxq_u32(v28, v32), vmaxq_u32(v30, v34));
          v11 = vmaxvq_s32(vmaxq_s32(v37, a11));
          if ((a5 & 0x7FFFFFE0) == a5)
          {
            goto LABEL_27;
          }

          v24 = a5 & 0x7FFFFFE0;
          v38 = v24;
          if ((a5 & 0x1C) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v24 = 0;
        }

        v39 = vdupq_n_s32(v11);
        do
        {
          a11.i32[0] = *(a1->i32 + v24);
          a11 = vmovl_u16(vabs_s16(*&vmovl_s8(*a11.i8)));
          v39 = vmaxq_s32(v39, a11);
          v24 += 4;
        }

        while (v22 != v24);
        v11 = vmaxvq_s32(v39);
        v38 = a5 & 0x7FFFFFFC;
        if (v22 != a5)
        {
          do
          {
LABEL_38:
            v40 = a1->i8[v38];
            if (v40 < 0)
            {
              v40 = -v40;
            }

            if (v11 <= v40)
            {
              v11 = v40;
            }

            ++v38;
          }

          while (a5 != v38);
        }
      }

LABEL_27:
      ++v21;
      a1 = (a1 + a5);
      v23 = (v23 + a5);
      if (v21 == v12)
      {
        goto LABEL_61;
      }
    }
  }

  v18 = (a5 * a4);
  if (v18 < 1)
  {
    v20 = 0;
    goto LABEL_59;
  }

  if (v18 < 4)
  {
    v19 = 0;
    v20 = 0;
    goto LABEL_53;
  }

  if (v18 >= 0x20)
  {
    v19 = v18 & 0x7FFFFFE0;
    v41 = a1 + 1;
    v42 = 0uLL;
    v43 = 0uLL;
    v44 = v19;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    do
    {
      v51 = vabsq_s8(v41[-1]);
      v52 = vabsq_s8(*v41);
      v46 = vmaxq_s32(v46, vqtbl1q_s8(v51, xmmword_1003E3710));
      v45 = vmaxq_s32(v45, vqtbl1q_s8(v51, xmmword_1003E3700));
      v43 = vmaxq_s32(v43, vqtbl1q_s8(v51, xmmword_1003E3730));
      v42 = vmaxq_s32(v42, vqtbl1q_s8(v51, xmmword_1003E3720));
      v50 = vmaxq_s32(v50, vqtbl1q_s8(v52, xmmword_1003E3710));
      v49 = vmaxq_s32(v49, vqtbl1q_s8(v52, xmmword_1003E3700));
      v48 = vmaxq_s32(v48, vqtbl1q_s8(v52, xmmword_1003E3730));
      v47 = vmaxq_s32(v47, vqtbl1q_s8(v52, xmmword_1003E3720));
      v41 += 2;
      v44 -= 32;
    }

    while (v44);
    a7 = vmaxq_s32(vmaxq_u32(v43, v48), vmaxq_u32(v46, v50));
    v20 = vmaxvq_s32(vmaxq_s32(vmaxq_s32(vmaxq_u32(v42, v47), vmaxq_u32(v45, v49)), a7));
    if (v19 == v18)
    {
      goto LABEL_59;
    }

    if (((a5 * a4) & 0x1C) == 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v53 = v19;
  v19 = v18 & 0x7FFFFFFC;
  v54 = vdupq_n_s32(v20);
  v55 = (a1->u32 + v53);
  v56 = v53 - v19;
  do
  {
    v57 = *v55++;
    a7.i32[0] = v57;
    a7 = vmovl_u16(vabs_s16(*&vmovl_s8(*a7.i8)));
    v54 = vmaxq_s32(v54, a7);
    v56 += 4;
  }

  while (v56);
  v20 = vmaxvq_s32(v54);
  if (v19 != v18)
  {
LABEL_53:
    v58 = v18 - v19;
    v59 = &a1->i8[v19];
    do
    {
      v61 = *v59++;
      v60 = v61;
      if (v61 < 0)
      {
        v60 = -v60;
      }

      if (v20 <= v60)
      {
        v20 = v60;
      }

      --v58;
    }

    while (v58);
  }

LABEL_59:
  if (v11 <= v20)
  {
    v11 = v20;
  }

LABEL_61:
  *a3 = v11;
  return 0;
}

uint64_t sub_1002A49FC(uint16x8_t *a1, unsigned __int8 *a2, signed int *a3, int a4, int a5)
{
  v5 = *a3;
  if (a2)
  {
    if (a4 < 1 || a5 < 1)
    {
      goto LABEL_51;
    }

    v6 = a4;
    if (a5 < 4)
    {
      v7 = &a1->u16[2];
      do
      {
        if (*a2++)
        {
          if (v5 <= *(v7 - 2))
          {
            v5 = *(v7 - 2);
          }

          if (a5 != 1)
          {
            if (v5 <= *(v7 - 1))
            {
              v5 = *(v7 - 1);
            }

            if (a5 != 2 && v5 <= *v7)
            {
              v5 = *v7;
            }
          }
        }

        v7 += a5;
        --v6;
      }

      while (v6);
      goto LABEL_51;
    }

    v12 = 0;
    v13 = a5 & 0x7FFFFFFC;
    v14 = a1 + 1;
    v15 = 2 * a5;
    while (1)
    {
      if (a2[v12])
      {
        if (a5 >= 0x10)
        {
          v17 = a5 & 0x7FFFFFF0;
          v18 = vdupq_n_s32(v5);
          v19 = v14;
          v20 = v18;
          v21 = v18;
          v22 = v18;
          do
          {
            v23 = v19[-1];
            v20 = vmaxq_s32(v20, vmovl_high_u16(v23));
            v18 = vmaxq_s32(v18, vmovl_u16(*v23.i8));
            v22 = vmaxq_s32(v22, vmovl_high_u16(*v19));
            v21 = vmaxq_s32(v21, vmovl_u16(*v19->i8));
            v19 += 2;
            v17 -= 16;
          }

          while (v17);
          v5 = vmaxvq_s32(vmaxq_s32(vmaxq_u32(v18, v21), vmaxq_u32(v20, v22)));
          if ((a5 & 0x7FFFFFF0) == a5)
          {
            goto LABEL_21;
          }

          v16 = a5 & 0x7FFFFFF0;
          v24 = v16;
          if ((a5 & 0xC) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v16 = 0;
        }

        v25 = vdupq_n_s32(v5);
        v26 = 2 * v16;
        v27 = v16 - v13;
        do
        {
          v25 = vmaxq_s32(v25, vmovl_u16(*&a1->i8[v26]));
          v26 += 8;
          v27 += 4;
        }

        while (v27);
        v5 = vmaxvq_s32(v25);
        v24 = a5 & 0x7FFFFFFC;
        if (v13 != a5)
        {
          do
          {
LABEL_32:
            if (v5 <= a1->u16[v24])
            {
              v5 = a1->u16[v24];
            }

            ++v24;
          }

          while (a5 != v24);
        }
      }

LABEL_21:
      ++v12;
      v14 = (v14 + v15);
      a1 = (a1 + v15);
      if (v12 == v6)
      {
        goto LABEL_51;
      }
    }
  }

  v9 = (a5 * a4);
  if (v9 < 1)
  {
    v11 = 0;
    goto LABEL_49;
  }

  if (v9 < 4)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_45;
  }

  if (v9 >= 0x10)
  {
    v10 = v9 & 0x7FFFFFF0;
    v28 = a1 + 1;
    v29 = 0uLL;
    v30 = v10;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    do
    {
      v34 = v28[-1];
      v31 = vmaxq_s32(v31, vmovl_high_u16(v34));
      v29 = vmaxq_s32(v29, vmovl_u16(*v34.i8));
      v33 = vmaxq_s32(v33, vmovl_high_u16(*v28));
      v32 = vmaxq_s32(v32, vmovl_u16(*v28->i8));
      v28 += 2;
      v30 -= 16;
    }

    while (v30);
    v11 = vmaxvq_s32(vmaxq_s32(vmaxq_u32(v29, v32), vmaxq_u32(v31, v33)));
    if (v10 == v9)
    {
      goto LABEL_49;
    }

    if (((a5 * a4) & 0xC) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v35 = v10;
  v10 = v9 & 0x7FFFFFFC;
  v36 = vdupq_n_s32(v11);
  v37 = (a1 + 2 * v35);
  v38 = v35 - v10;
  do
  {
    v39 = *v37++;
    v36 = vmaxq_s32(v36, vmovl_u16(v39));
    v38 += 4;
  }

  while (v38);
  v11 = vmaxvq_s32(v36);
  if (v10 != v9)
  {
LABEL_45:
    v40 = v9 - v10;
    v41 = a1 + v10;
    do
    {
      v43 = *v41++;
      v42 = v43;
      if (v11 <= v43)
      {
        v11 = v42;
      }

      --v40;
    }

    while (v40);
  }

LABEL_49:
  if (v5 <= v11)
  {
    v5 = v11;
  }

LABEL_51:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A4CA4(int16x8_t *a1, unsigned __int8 *a2, signed int *a3, int a4, int a5)
{
  v5 = *a3;
  if (a2)
  {
    if (a4 < 1 || a5 < 1)
    {
      goto LABEL_61;
    }

    v6 = a4;
    if (a5 < 4)
    {
      v7 = &a1->i16[2];
      do
      {
        if (*a2++)
        {
          v9 = *(v7 - 2);
          if (v9 < 0)
          {
            v9 = -v9;
          }

          if (v5 <= v9)
          {
            v5 = v9;
          }

          if (a5 != 1)
          {
            v10 = *(v7 - 1);
            if (v10 < 0)
            {
              v10 = -v10;
            }

            if (v5 <= v10)
            {
              v5 = v10;
            }

            if (a5 != 2)
            {
              v11 = *v7;
              if (v11 < 0)
              {
                v11 = -v11;
              }

              if (v5 <= v11)
              {
                v5 = v11;
              }
            }
          }
        }

        v7 += a5;
        --v6;
      }

      while (v6);
      goto LABEL_61;
    }

    v15 = 0;
    v16 = a5 & 0x7FFFFFFC;
    v17 = a1 + 1;
    v18 = 2 * a5;
    while (1)
    {
      if (a2[v15])
      {
        if (a5 >= 0x10)
        {
          v20 = a5 & 0x7FFFFFF0;
          v21 = vdupq_n_s32(v5);
          v22 = v17;
          v23 = v21;
          v24 = v21;
          v25 = v21;
          do
          {
            v26 = vabsq_s16(v22[-1]);
            v27 = vabsq_s16(*v22);
            v23 = vmaxq_s32(v23, vmovl_high_u16(v26));
            v21 = vmaxq_s32(v21, vmovl_u16(*v26.i8));
            v25 = vmaxq_s32(v25, vmovl_high_u16(v27));
            v24 = vmaxq_s32(v24, vmovl_u16(*v27.i8));
            v22 += 2;
            v20 -= 16;
          }

          while (v20);
          v5 = vmaxvq_s32(vmaxq_s32(vmaxq_u32(v21, v24), vmaxq_u32(v23, v25)));
          if ((a5 & 0x7FFFFFF0) == a5)
          {
            goto LABEL_27;
          }

          v19 = a5 & 0x7FFFFFF0;
          v28 = v19;
          if ((a5 & 0xC) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v19 = 0;
        }

        v29 = vdupq_n_s32(v5);
        v30 = 2 * v19;
        v31 = v19 - v16;
        do
        {
          v29 = vmaxq_s32(v29, vmovl_u16(vabs_s16(*&a1->i8[v30])));
          v30 += 8;
          v31 += 4;
        }

        while (v31);
        v5 = vmaxvq_s32(v29);
        v28 = a5 & 0x7FFFFFFC;
        if (v16 != a5)
        {
          do
          {
LABEL_38:
            v32 = a1->i16[v28];
            if (v32 < 0)
            {
              v32 = -v32;
            }

            if (v5 <= v32)
            {
              v5 = v32;
            }

            ++v28;
          }

          while (a5 != v28);
        }
      }

LABEL_27:
      ++v15;
      v17 = (v17 + v18);
      a1 = (a1 + v18);
      if (v15 == v6)
      {
        goto LABEL_61;
      }
    }
  }

  v12 = (a5 * a4);
  if (v12 < 1)
  {
    v14 = 0;
    goto LABEL_59;
  }

  if (v12 < 4)
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_53;
  }

  if (v12 >= 0x10)
  {
    v13 = v12 & 0x7FFFFFF0;
    v33 = a1 + 1;
    v34 = 0uLL;
    v35 = v13;
    v36 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    do
    {
      v39 = vabsq_s16(v33[-1]);
      v40 = vabsq_s16(*v33);
      v36 = vmaxq_s32(v36, vmovl_high_u16(v39));
      v34 = vmaxq_s32(v34, vmovl_u16(*v39.i8));
      v38 = vmaxq_s32(v38, vmovl_high_u16(v40));
      v37 = vmaxq_s32(v37, vmovl_u16(*v40.i8));
      v33 += 2;
      v35 -= 16;
    }

    while (v35);
    v14 = vmaxvq_s32(vmaxq_s32(vmaxq_u32(v34, v37), vmaxq_u32(v36, v38)));
    if (v13 == v12)
    {
      goto LABEL_59;
    }

    if (((a5 * a4) & 0xC) == 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v41 = v13;
  v13 = v12 & 0x7FFFFFFC;
  v42 = vdupq_n_s32(v14);
  v43 = (a1 + 2 * v41);
  v44 = v41 - v13;
  do
  {
    v45 = *v43++;
    v42 = vmaxq_s32(v42, vmovl_u16(vabs_s16(v45)));
    v44 += 4;
  }

  while (v44);
  v14 = vmaxvq_s32(v42);
  if (v13 != v12)
  {
LABEL_53:
    v46 = v12 - v13;
    v47 = &a1->i16[v13];
    do
    {
      v49 = *v47++;
      v48 = v49;
      if (v49 < 0)
      {
        v48 = -v48;
      }

      if (v14 <= v48)
      {
        v14 = v48;
      }

      --v46;
    }

    while (v46);
  }

LABEL_59:
  if (v5 <= v14)
  {
    v5 = v14;
  }

LABEL_61:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A4F8C(int32x4_t *a1, unsigned __int8 *a2, signed int *a3, int a4, int a5)
{
  v5 = *a3;
  if (a2)
  {
    if (a4 >= 1 && a5 >= 1)
    {
      v6 = a4;
      if (a5 >= 8)
      {
        v19 = 0;
        v20 = a1 + 1;
        v21 = 4 * a5;
        do
        {
          if (a2[v19])
          {
            v22 = vdupq_n_s32(v5);
            v23 = a5 & 0x7FFFFFF8;
            v24 = v20;
            v25 = v22;
            do
            {
              v22 = vmaxq_s32(v22, vabsq_s32(v24[-1]));
              v25 = vmaxq_s32(v25, vabsq_s32(*v24));
              v24 += 2;
              v23 -= 8;
            }

            while (v23);
            v5 = vmaxvq_s32(vmaxq_u32(v22, v25));
            if ((a5 & 0x7FFFFFF8) != a5)
            {
              v26 = a5 & 0x7FFFFFF8;
              do
              {
                v27 = a1->i32[v26];
                if (v27 < 0)
                {
                  v27 = -v27;
                }

                if (v5 <= v27)
                {
                  v5 = v27;
                }

                ++v26;
              }

              while (a5 != v26);
            }
          }

          ++v19;
          v20 = (v20 + v21);
          a1 = (a1 + v21);
        }

        while (v19 != a4);
      }

      else
      {
        v7 = &a1->i32[3];
        do
        {
          if (*a2++)
          {
            v9 = *(v7 - 3);
            if (v9 < 0)
            {
              v9 = -v9;
            }

            if (v5 <= v9)
            {
              v5 = v9;
            }

            if (a5 != 1)
            {
              v10 = *(v7 - 2);
              if (v10 < 0)
              {
                v10 = -v10;
              }

              if (v5 <= v10)
              {
                v5 = v10;
              }

              if (a5 != 2)
              {
                v11 = *(v7 - 1);
                if (v11 < 0)
                {
                  v11 = -v11;
                }

                if (v5 <= v11)
                {
                  v5 = v11;
                }

                if (a5 != 3)
                {
                  v12 = *v7;
                  if (*v7 < 0)
                  {
                    v12 = -v12;
                  }

                  if (v5 <= v12)
                  {
                    v5 = v12;
                  }

                  if (a5 != 4)
                  {
                    v13 = v7[1];
                    if (v13 < 0)
                    {
                      v13 = -v13;
                    }

                    if (v5 <= v13)
                    {
                      v5 = v13;
                    }

                    if (a5 != 5)
                    {
                      v14 = v7[2];
                      if (v14 < 0)
                      {
                        v14 = -v14;
                      }

                      if (v5 <= v14)
                      {
                        v5 = v14;
                      }

                      if (a5 != 6)
                      {
                        v15 = v7[3];
                        if (v15 < 0)
                        {
                          v15 = -v15;
                        }

                        if (v5 <= v15)
                        {
                          v5 = v15;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v7 += a5;
          --v6;
        }

        while (v6);
      }
    }

    goto LABEL_70;
  }

  v16 = (a5 * a4);
  if (v16 < 1)
  {
    v18 = 0;
  }

  else
  {
    if (v16 < 8)
    {
      v17 = 0;
      v18 = 0;
      goto LABEL_62;
    }

    v17 = v16 & 0x7FFFFFF8;
    v28 = a1 + 1;
    v29 = 0uLL;
    v30 = v17;
    v31 = 0uLL;
    do
    {
      v29 = vmaxq_s32(v29, vabsq_s32(v28[-1]));
      v31 = vmaxq_s32(v31, vabsq_s32(*v28));
      v28 += 2;
      v30 -= 8;
    }

    while (v30);
    v18 = vmaxvq_s32(vmaxq_u32(v29, v31));
    if (v17 != v16)
    {
LABEL_62:
      v32 = v16 - v17;
      v33 = &a1->i32[v17];
      do
      {
        v35 = *v33++;
        v34 = v35;
        if (v35 < 0)
        {
          v34 = -v34;
        }

        if (v18 <= v34)
        {
          v18 = v34;
        }

        --v32;
      }

      while (v32);
    }
  }

  if (v5 <= v18)
  {
    v5 = v18;
  }

LABEL_70:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A51DC(double *a1, uint64_t a2, double *a3, int a4, int a5)
{
  v5 = *a3;
  if (a2)
  {
    if (a4 >= 1 && a5 >= 1)
    {
      for (i = 0; i != a4; ++i)
      {
        if (*(a2 + i))
        {
          for (j = 0; j != a5; ++j)
          {
            v8 = fabs(a1[j]);
            if (v5 < v8)
            {
              v5 = v8;
            }
          }
        }

        a1 += a5;
      }
    }
  }

  else
  {
    v9 = (a5 * a4);
    v10 = 0.0;
    if (v9 >= 1)
    {
      do
      {
        v11 = *a1++;
        v12 = fabs(v11);
        if (v10 < v12)
        {
          v10 = v12;
        }

        --v9;
      }

      while (v9);
    }

    if (v5 < v10)
    {
      v5 = v10;
    }
  }

  *a3 = v5;
  return 0;
}

uint64_t sub_1002A5284(uint8x8_t *a1, unsigned __int8 *a2, unsigned int *a3, int a4, int a5, int32x4_t a6, int32x4_t a7)
{
  v7 = *a3;
  if (!a2)
  {
    v11 = a5 * a4;
    v12 = (a5 * a4 - 4);
    if (a5 * a4 < 4)
    {
      v13 = 0;
      v14 = 0;
      if (v11 <= 0)
      {
        goto LABEL_58;
      }

      goto LABEL_43;
    }

    if (v12 < 0x1C)
    {
      v15 = 0;
      v13 = 0;
      goto LABEL_41;
    }

    v37 = (v12 >> 2) + 1;
    if (v12 >= 0x3C)
    {
      v38 = v37 & 0x3FFFFFF0;
      v45 = 0uLL;
      v46 = v38;
      v47 = a1;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      do
      {
        v86 = vld4q_s8(v47);
        v47 += 64;
        v51 = vmovl_high_u8(v86.val[0]);
        v52 = vmovl_u8(*v86.val[0].i8);
        v53 = vmovl_u8(*v86.val[1].i8);
        v54 = vmovl_high_u8(v86.val[1]);
        v55 = vmovl_high_u8(v86.val[2]);
        v56 = vmovl_u8(*v86.val[2].i8);
        v57 = vmovl_u8(*v86.val[3].i8);
        v86.val[0] = vmovl_high_u8(v86.val[3]);
        v50 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v50, v51), v54), v55), v86.val[0]);
        v49 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v49, *v51.i8), *v54.i8), *v55.i8), *v86.val[0].i8);
        v48 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v48, v52), v53), v56), v57);
        v45 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v45, *v52.i8), *v53.i8), *v56.i8), *v57.i8);
        v46 -= 16;
      }

      while (v46);
      a7 = vaddq_s32(v48, v50);
      a6 = vaddq_s32(vaddq_s32(v45, v49), a7);
      v13 = vaddvq_s32(a6);
      if (v37 == v38)
      {
        goto LABEL_42;
      }

      if ((v37 & 8) == 0)
      {
        v15 = 4 * v38;
        do
        {
LABEL_41:
          a6.i32[0] = a1->i32[v15 / 4];
          a6 = vmovl_u16(*&vmovl_u8(*a6.i8));
          v13 += vaddvq_s32(a6);
          v15 += 4;
        }

        while (v15 <= v12);
        goto LABEL_42;
      }
    }

    else
    {
      v13 = 0;
      v38 = 0;
    }

    v15 = 4 * (v37 & 0x3FFFFFF8);
    v39 = 0uLL;
    a7 = v13;
    v40 = a1 + 4 * v38;
    v41 = v38 - (v37 & 0x3FFFFFF8);
    do
    {
      v85 = vld4_s8(v40);
      v40 += 32;
      v42 = vmovl_u8(v85.val[0]);
      v43 = vmovl_u8(v85.val[1]);
      v44 = vmovl_u8(v85.val[2]);
      *v85.val[0].i8 = vmovl_u8(v85.val[3]);
      v39 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v39, v42), v43), v44), *v85.val[0].i8);
      a7 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(a7, *v42.i8), *v43.i8), *v44.i8), v85.val[0]);
      v41 += 8;
    }

    while (v41);
    a6 = vaddq_s32(a7, v39);
    v13 = vaddvq_s32(a6);
    if (v37 != (v37 & 0x3FFFFFF8))
    {
      goto LABEL_41;
    }

LABEL_42:
    v14 = (v12 & 0xFFFFFFFC) + 4;
    if (v14 >= v11)
    {
LABEL_58:
      v7 += v13;
      goto LABEL_59;
    }

LABEL_43:
    v58 = v14;
    v59 = v11 + ~v14;
    if (v59 < 3)
    {
      v60 = v14;
      goto LABEL_56;
    }

    v61 = v59 + 1;
    if (v59 >= 0x1F)
    {
      v62 = v61 & 0x1FFFFFFE0;
      v63 = 0uLL;
      v64 = v13;
      v65 = (a1 + v58 + 16);
      v66 = v61 & 0x1FFFFFFE0;
      v67 = 0uLL;
      v68 = 0uLL;
      v69 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      do
      {
        v73 = *v65[-2].i8;
        v74 = vmovl_u8(*v73.i8);
        v75 = vmovl_high_u8(v73);
        v76 = vmovl_u8(*v65);
        v77 = vmovl_high_u8(*v65->i8);
        v68 = vaddw_high_u16(v68, v75);
        v67 = vaddw_u16(v67, *v75.i8);
        v63 = vaddw_high_u16(v63, v74);
        v64 = vaddw_u16(v64, *v74.i8);
        v72 = vaddw_high_u16(v72, v77);
        v71 = vaddw_u16(v71, *v77.i8);
        v70 = vaddw_high_u16(v70, v76);
        v69 = vaddw_u16(v69, *v76.i8);
        v65 += 4;
        v66 -= 32;
      }

      while (v66);
      a7 = vaddq_s32(vaddq_s32(v70, v63), vaddq_s32(v72, v68));
      v13 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v69, v64), vaddq_s32(v71, v67)), a7));
      if (v61 == v62)
      {
        goto LABEL_58;
      }

      if ((v61 & 0x1C) == 0)
      {
        v60 = v62 + v58;
LABEL_56:
        v82 = (a1 + v60);
        do
        {
          v83 = v82->u8[0];
          v82 = (v82 + 1);
          v13 += v83;
          LODWORD(v60) = v60 + 1;
        }

        while (v11 > v60);
        goto LABEL_58;
      }
    }

    else
    {
      v62 = 0;
    }

    v60 = (v61 & 0x1FFFFFFFCLL) + v58;
    v78 = v13;
    v79 = (a1 + v62 + v58);
    v80 = v62 - (v61 & 0x1FFFFFFFCLL);
    do
    {
      v81 = *v79++;
      a7.i32[0] = v81;
      a7.i64[0] = vmovl_u8(*a7.i8).u64[0];
      v78 = vaddw_u16(v78, *a7.i8);
      v80 += 4;
    }

    while (v80);
    v13 = vaddvq_s32(v78);
    if (v61 == (v61 & 0x1FFFFFFFCLL))
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (a4 < 1 || a5 < 1)
  {
    goto LABEL_59;
  }

  v8 = a4;
  if (a5 >= 4)
  {
    v16 = 0;
    v17 = a5 & 0x7FFFFFFC;
    v18 = a1 + 2;
    while (!a2[v16])
    {
LABEL_17:
      ++v16;
      a1 = (a1 + a5);
      v18 = (v18 + a5);
      if (v16 == v8)
      {
        goto LABEL_59;
      }
    }

    if (a5 >= 0x20)
    {
      v20 = 0uLL;
      v21 = v7;
      v22 = a5 & 0x7FFFFFE0;
      v23 = v18;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      do
      {
        v30 = *v23[-2].i8;
        v31 = vmovl_u8(*v30.i8);
        v32 = vmovl_high_u8(v30);
        v33 = vmovl_u8(*v23);
        v34 = vmovl_high_u8(*v23->i8);
        v25 = vaddw_high_u16(v25, v32);
        v24 = vaddw_u16(v24, *v32.i8);
        v20 = vaddw_high_u16(v20, v31);
        v21 = vaddw_u16(v21, *v31.i8);
        v29 = vaddw_high_u16(v29, v34);
        v28 = vaddw_u16(v28, *v34.i8);
        v27 = vaddw_high_u16(v27, v33);
        v26 = vaddw_u16(v26, *v33.i8);
        v23 += 4;
        v22 -= 32;
      }

      while (v22);
      a7 = vaddq_s32(vaddq_s32(v27, v20), vaddq_s32(v29, v25));
      v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v26, v21), vaddq_s32(v28, v24)), a7));
      if ((a5 & 0x7FFFFFE0) == a5)
      {
        goto LABEL_17;
      }

      v19 = a5 & 0x7FFFFFE0;
      v35 = v19;
      if ((a5 & 0x1C) == 0)
      {
        do
        {
LABEL_28:
          v7 += a1->u8[v35++];
        }

        while (a5 != v35);
        goto LABEL_17;
      }
    }

    else
    {
      v19 = 0;
    }

    v36 = v7;
    do
    {
      a7.i32[0] = *(a1->i32 + v19);
      a7.i64[0] = vmovl_u8(*a7.i8).u64[0];
      v36 = vaddw_u16(v36, *a7.i8);
      v19 += 4;
    }

    while (v17 != v19);
    v7 = vaddvq_s32(v36);
    v35 = a5 & 0x7FFFFFFC;
    if (v17 == a5)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  v9 = (a1 + 2);
  do
  {
    if (*a2++)
    {
      v7 += v9[-1].u8[6];
      if (a5 != 1)
      {
        v7 += v9[-1].u8[7];
        if (a5 != 2)
        {
          v7 += v9->u8[0];
        }
      }
    }

    v9 = (v9 + a5);
    --v8;
  }

  while (v8);
LABEL_59:
  *a3 = v7;
  return 0;
}

uint64_t sub_1002A5710(const char *a1, uint64_t a2, unsigned int *a3, int a4, int a5, int32x4_t a6, int32x4_t a7)
{
  v7 = *a3;
  if (!a2)
  {
    v32 = a5 * a4;
    v33 = (a5 * a4 - 4);
    if (a5 * a4 < 4)
    {
      v34 = 0;
      v35 = 0;
      if (v32 <= 0)
      {
        goto LABEL_57;
      }

      goto LABEL_40;
    }

    if (v33 < 0x1C)
    {
      v36 = 0;
      v34 = 0;
      goto LABEL_38;
    }

    v37 = (v33 >> 2) + 1;
    if (v33 >= 0x3C)
    {
      v38 = v37 & 0x3FFFFFF0;
      v45 = 0uLL;
      v46 = v38;
      v47 = a1;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      do
      {
        v90 = vld4q_s8(v47);
        v47 += 64;
        v51 = vabsq_s8(v90.val[0]);
        v52 = vmovl_high_u8(v51);
        v53 = vmovl_u8(*v51.i8);
        v54 = vabsq_s8(v90.val[1]);
        v55 = vmovl_u8(*v54.i8);
        v56 = vmovl_high_u8(v54);
        v57 = vabsq_s8(v90.val[2]);
        v58 = vmovl_high_u8(v57);
        v59 = vmovl_u8(*v57.i8);
        v90.val[0] = vabsq_s8(v90.val[3]);
        v90.val[1] = vmovl_u8(*v90.val[0].i8);
        v90.val[0] = vmovl_high_u8(v90.val[0]);
        v50 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v50, v52), v56), v58), v90.val[0]);
        v49 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v49, *v52.i8), *v56.i8), *v58.i8), *v90.val[0].i8);
        v48 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v48, v53), v55), v59), v90.val[1]);
        v45 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v45, *v53.i8), *v55.i8), *v59.i8), *v90.val[1].i8);
        v46 -= 16;
      }

      while (v46);
      a7 = vaddq_s32(v48, v50);
      a6 = vaddq_s32(vaddq_s32(v45, v49), a7);
      v34 = vaddvq_s32(a6);
      if (v37 == v38)
      {
        goto LABEL_39;
      }

      if ((v37 & 8) == 0)
      {
        v36 = 4 * v38;
        do
        {
LABEL_38:
          a6.i32[0] = *&a1[v36];
          a6 = vmovl_u16(vabs_s16(*&vmovl_s8(*a6.i8)));
          v34 += vaddvq_s32(a6);
          v36 += 4;
        }

        while (v36 <= v33);
        goto LABEL_39;
      }
    }

    else
    {
      v34 = 0;
      v38 = 0;
    }

    v36 = 4 * (v37 & 0x3FFFFFF8);
    v39 = 0uLL;
    a7 = v34;
    v40 = &a1[4 * v38];
    v41 = v38 - (v37 & 0x3FFFFFF8);
    do
    {
      v89 = vld4_s8(v40);
      v40 += 32;
      v42 = vmovl_u8(vabs_s8(v89.val[0]));
      v43 = vmovl_u8(vabs_s8(v89.val[1]));
      v44 = vmovl_u8(vabs_s8(v89.val[2]));
      *v89.val[0].i8 = vmovl_u8(vabs_s8(v89.val[3]));
      v39 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v39, v42), v43), v44), *v89.val[0].i8);
      a7 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(a7, *v42.i8), *v43.i8), *v44.i8), v89.val[0]);
      v41 += 8;
    }

    while (v41);
    a6 = vaddq_s32(a7, v39);
    v34 = vaddvq_s32(a6);
    if (v37 != (v37 & 0x3FFFFFF8))
    {
      goto LABEL_38;
    }

LABEL_39:
    v35 = (v33 & 0xFFFFFFFC) + 4;
    if (v35 >= v32)
    {
LABEL_57:
      v7 += v34;
      goto LABEL_58;
    }

LABEL_40:
    v60 = v35;
    v61 = v32 + ~v35;
    if (v61 < 3)
    {
      v62 = v35;
      goto LABEL_53;
    }

    v63 = v61 + 1;
    if (v61 >= 0x1F)
    {
      v64 = v63 & 0x1FFFFFFE0;
      v65 = 0uLL;
      v66 = v34;
      v67 = &a1[v60 + 16];
      v68 = v63 & 0x1FFFFFFE0;
      v69 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      do
      {
        v75 = vabsq_s8(v67[-1]);
        v76 = vabsq_s8(*v67);
        v77 = vmovl_u8(*v75.i8);
        v78 = vmovl_high_u8(v75);
        v79 = vmovl_u8(*v76.i8);
        v80 = vmovl_high_u8(v76);
        v70 = vaddw_high_u16(v70, v78);
        v69 = vaddw_u16(v69, *v78.i8);
        v65 = vaddw_high_u16(v65, v77);
        v66 = vaddw_u16(v66, *v77.i8);
        v74 = vaddw_high_u16(v74, v80);
        v73 = vaddw_u16(v73, *v80.i8);
        v72 = vaddw_high_u16(v72, v79);
        v71 = vaddw_u16(v71, *v79.i8);
        v67 += 2;
        v68 -= 32;
      }

      while (v68);
      a7 = vaddq_s32(vaddq_s32(v72, v65), vaddq_s32(v74, v70));
      v34 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v71, v66), vaddq_s32(v73, v69)), a7));
      if (v63 == v64)
      {
        goto LABEL_57;
      }

      if ((v63 & 0x1C) == 0)
      {
        v62 = v64 + v60;
        goto LABEL_53;
      }
    }

    else
    {
      v64 = 0;
    }

    v62 = (v63 & 0x1FFFFFFFCLL) + v60;
    v81 = v34;
    v82 = &a1[v64 + v60];
    v83 = v64 - (v63 & 0x1FFFFFFFCLL);
    do
    {
      v84 = *v82++;
      a7.i32[0] = v84;
      *a7.i8 = vabs_s16(*&vmovl_s8(*a7.i8));
      v81 = vaddw_u16(v81, *a7.i8);
      v83 += 4;
    }

    while (v83);
    v34 = vaddvq_s32(v81);
    if (v63 == (v63 & 0x1FFFFFFFCLL))
    {
      goto LABEL_57;
    }

LABEL_53:
    v85 = &a1[v62];
    do
    {
      v87 = *v85++;
      v86 = v87;
      if (v87 < 0)
      {
        v86 = -v86;
      }

      v34 += v86;
      LODWORD(v62) = v62 + 1;
    }

    while (v32 > v62);
    goto LABEL_57;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    v8 = 0;
    v9 = a4;
    v10 = a5 & 0x7FFFFFFC;
    v11 = (a1 + 16);
    do
    {
      if (*(a2 + v8))
      {
        if (a5 < 4)
        {
          for (i = 0; i != a5; ++i)
          {
LABEL_18:
            v31 = a1[i];
            if (v31 < 0)
            {
              v31 = -v31;
            }

            v7 += v31;
          }

          goto LABEL_5;
        }

        if (a5 >= 0x20)
        {
          v14 = 0uLL;
          v15 = v7;
          v16 = a5 & 0x7FFFFFE0;
          v17 = v11;
          v18 = 0uLL;
          v19 = 0uLL;
          v20 = 0uLL;
          v21 = 0uLL;
          v22 = 0uLL;
          v23 = 0uLL;
          do
          {
            v24 = vabsq_s8(v17[-1]);
            v25 = vabsq_s8(*v17);
            v26 = vmovl_u8(*v24.i8);
            v27 = vmovl_high_u8(v24);
            v28 = vmovl_u8(*v25.i8);
            v29 = vmovl_high_u8(v25);
            v19 = vaddw_high_u16(v19, v27);
            v18 = vaddw_u16(v18, *v27.i8);
            v14 = vaddw_high_u16(v14, v26);
            v15 = vaddw_u16(v15, *v26.i8);
            v23 = vaddw_high_u16(v23, v29);
            v22 = vaddw_u16(v22, *v29.i8);
            v21 = vaddw_high_u16(v21, v28);
            v20 = vaddw_u16(v20, *v28.i8);
            v17 += 2;
            v16 -= 32;
          }

          while (v16);
          a7 = vaddq_s32(vaddq_s32(v21, v14), vaddq_s32(v23, v19));
          v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v20, v15), vaddq_s32(v22, v18)), a7));
          if ((a5 & 0x7FFFFFE0) == a5)
          {
            goto LABEL_5;
          }

          v13 = a5 & 0x7FFFFFE0;
          i = v13;
          if ((a5 & 0x1C) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v13 = 0;
        }

        v30 = v7;
        do
        {
          a7.i32[0] = *&a1[v13];
          *a7.i8 = vabs_s16(*&vmovl_s8(*a7.i8));
          v30 = vaddw_u16(v30, *a7.i8);
          v13 += 4;
        }

        while (v10 != v13);
        v7 = vaddvq_s32(v30);
        i = a5 & 0x7FFFFFFC;
        if (v10 != a5)
        {
          goto LABEL_18;
        }
      }

LABEL_5:
      ++v8;
      a1 += a5;
      v11 = (v11 + a5);
    }

    while (v8 != v9);
  }

LABEL_58:
  *a3 = v7;
  return 0;
}

uint64_t sub_1002A5BA8(uint16x8_t *a1, unsigned __int8 *a2, unsigned int *a3, int a4, int a5)
{
  v5 = *a3;
  if (!a2)
  {
    v9 = a5 * a4;
    v10 = (a5 * a4 - 4);
    if (a5 * a4 < 4)
    {
      v11 = 0;
      v12 = 0;
      if (v9 <= 0)
      {
        goto LABEL_59;
      }

      goto LABEL_44;
    }

    if (v10 < 0xC)
    {
      v13 = 0;
      v11 = 0;
      goto LABEL_41;
    }

    v30 = (v10 >> 2) + 1;
    if (v10 >= 0x3C)
    {
      v31 = v30 & 0x3FFFFFF0;
      i16 = a1[4].i16;
      v33 = 0uLL;
      v34 = v31;
      v35 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      do
      {
        v38 = i16 - 32;
        v64 = vld4q_s16(v38);
        v65 = vld4q_s16(i16);
        v35 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v35, v64.val[0]), v64.val[1]), v64.val[2]), v64.val[3]);
        v33 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v33, *v64.val[0].i8), *v64.val[1].i8), *v64.val[2].i8), *v64.val[3].i8);
        v37 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v37, v65.val[0]), v65.val[1]), v65.val[2]), v65.val[3]);
        v36 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v36, *v65.val[0].i8), *v65.val[1].i8), *v65.val[2].i8), *v65.val[3].i8);
        i16 += 64;
        v34 -= 16;
      }

      while (v34);
      v11 = vaddvq_s32(vaddq_s32(vaddq_s32(v36, v33), vaddq_s32(v37, v35)));
      if (v30 == v31)
      {
        goto LABEL_43;
      }

      if ((v30 & 0xC) == 0)
      {
        v13 = 4 * v31;
LABEL_41:
        v42 = (a1 + 2 * v13);
        do
        {
          v43 = *v42++;
          v11 += vaddvq_s32(vmovl_u16(v43));
          v13 += 4;
        }

        while (v13 <= v10);
        goto LABEL_43;
      }
    }

    else
    {
      v11 = 0;
      v31 = 0;
    }

    v13 = 4 * (v30 & 0x3FFFFFFC);
    v39 = v11;
    v40 = &a1->i16[4 * v31];
    v41 = v31 - (v30 & 0x3FFFFFFC);
    do
    {
      v63 = vld4_s16(v40);
      v40 += 16;
      v39 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v39, v63.val[0]), v63.val[1]), v63.val[2]), v63.val[3]);
      v41 += 4;
    }

    while (v41);
    v11 = vaddvq_s32(v39);
    if (v30 != (v30 & 0x3FFFFFFC))
    {
      goto LABEL_41;
    }

LABEL_43:
    v12 = (v10 & 0xFFFFFFFC) + 4;
    if (v12 >= v9)
    {
LABEL_59:
      v5 += v11;
      goto LABEL_60;
    }

LABEL_44:
    v44 = v12;
    v45 = v9 + ~v12;
    if (v45 < 3)
    {
      v46 = v12;
      goto LABEL_57;
    }

    v47 = v45 + 1;
    if (v45 >= 0xF)
    {
      v48 = v47 & 0x1FFFFFFF0;
      v49 = v11;
      v50 = 0uLL;
      v51 = (a1 + 2 * v44 + 16);
      v52 = v47 & 0x1FFFFFFF0;
      v53 = 0uLL;
      v54 = 0uLL;
      do
      {
        v55 = v51[-1];
        v50 = vaddw_high_u16(v50, v55);
        v49 = vaddw_u16(v49, *v55.i8);
        v54 = vaddw_high_u16(v54, *v51);
        v53 = vaddw_u16(v53, *v51->i8);
        v51 += 2;
        v52 -= 16;
      }

      while (v52);
      v11 = vaddvq_s32(vaddq_s32(vaddq_s32(v53, v49), vaddq_s32(v54, v50)));
      if (v47 == v48)
      {
        goto LABEL_59;
      }

      if ((v47 & 0xC) == 0)
      {
        v46 = v48 + v44;
LABEL_57:
        v60 = a1 + v46;
        do
        {
          v61 = *v60++;
          v11 += v61;
          LODWORD(v46) = v46 + 1;
        }

        while (v9 > v46);
        goto LABEL_59;
      }
    }

    else
    {
      v48 = 0;
    }

    v46 = (v47 & 0x1FFFFFFFCLL) + v44;
    v56 = v11;
    v57 = (a1 + 2 * v48 + 2 * v44);
    v58 = v48 - (v47 & 0x1FFFFFFFCLL);
    do
    {
      v59 = *v57++;
      v56 = vaddw_u16(v56, v59);
      v58 += 4;
    }

    while (v58);
    v11 = vaddvq_s32(v56);
    if (v47 == (v47 & 0x1FFFFFFFCLL))
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  if (a4 < 1 || a5 < 1)
  {
    goto LABEL_60;
  }

  v6 = a4;
  if (a5 >= 4)
  {
    v14 = 0;
    v15 = a5 & 0x7FFFFFFC;
    v16 = a1 + 1;
    v17 = 2 * a5;
    while (!a2[v14])
    {
LABEL_17:
      ++v14;
      v16 = (v16 + v17);
      a1 = (a1 + v17);
      if (v14 == v6)
      {
        goto LABEL_60;
      }
    }

    if (a5 >= 0x10)
    {
      v19 = 0uLL;
      v20 = v5;
      v21 = a5 & 0x7FFFFFF0;
      v22 = v16;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v25 = v22[-1];
        v19 = vaddw_high_u16(v19, v25);
        v20 = vaddw_u16(v20, *v25.i8);
        v24 = vaddw_high_u16(v24, *v22);
        v23 = vaddw_u16(v23, *v22->i8);
        v22 += 2;
        v21 -= 16;
      }

      while (v21);
      v5 = vaddvq_s32(vaddq_s32(vaddq_s32(v23, v20), vaddq_s32(v24, v19)));
      if ((a5 & 0x7FFFFFF0) == a5)
      {
        goto LABEL_17;
      }

      v18 = a5 & 0x7FFFFFF0;
      v26 = v18;
      if ((a5 & 0xC) == 0)
      {
        do
        {
LABEL_28:
          v5 += a1->u16[v26++];
        }

        while (a5 != v26);
        goto LABEL_17;
      }
    }

    else
    {
      v18 = 0;
    }

    v27 = v5;
    v28 = 2 * v18;
    v29 = v18 - v15;
    do
    {
      v27 = vaddw_u16(v27, *&a1->i8[v28]);
      v28 += 8;
      v29 += 4;
    }

    while (v29);
    v5 = vaddvq_s32(v27);
    v26 = a5 & 0x7FFFFFFC;
    if (v15 == a5)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  v7 = &a1->u16[2];
  do
  {
    if (*a2++)
    {
      v5 += *(v7 - 2);
      if (a5 != 1)
      {
        v5 += *(v7 - 1);
        if (a5 != 2)
        {
          v5 += *v7;
        }
      }
    }

    v7 += a5;
    --v6;
  }

  while (v6);
LABEL_60:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A5F90(int16x8_t *a1, uint64_t a2, unsigned int *a3, int a4, int a5)
{
  v5 = *a3;
  if (!a2)
  {
    v25 = a5 * a4;
    v26 = (a5 * a4 - 4);
    if (a5 * a4 < 4)
    {
      v27 = 0;
      v28 = 0;
      if (v25 <= 0)
      {
        goto LABEL_58;
      }

      goto LABEL_41;
    }

    if (v26 < 0xC)
    {
      v29 = 0;
      v27 = 0;
      goto LABEL_38;
    }

    v30 = (v26 >> 2) + 1;
    if (v26 >= 0x3C)
    {
      v31 = v30 & 0x3FFFFFF0;
      i16 = a1[4].i16;
      v33 = 0uLL;
      v34 = v31;
      v35 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      do
      {
        v38 = i16 - 32;
        v72 = vld4q_s16(v38);
        v73 = vld4q_s16(i16);
        v39 = vabsq_s16(v72.val[0]);
        v40 = vabsq_s16(v73.val[0]);
        v41 = vabsq_s16(v72.val[1]);
        v42 = vabsq_s16(v73.val[1]);
        v43 = vabsq_s16(v72.val[2]);
        v44 = vabsq_s16(v73.val[2]);
        v72.val[0] = vabsq_s16(v72.val[3]);
        v72.val[1] = vabsq_s16(v73.val[3]);
        v35 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v35, v39), v41), v43), v72.val[0]);
        v33 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v33, *v39.i8), *v41.i8), *v43.i8), *v72.val[0].i8);
        v37 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v37, v40), v42), v44), v72.val[1]);
        v36 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v36, *v40.i8), *v42.i8), *v44.i8), *v72.val[1].i8);
        i16 += 64;
        v34 -= 16;
      }

      while (v34);
      v27 = vaddvq_s32(vaddq_s32(vaddq_s32(v36, v33), vaddq_s32(v37, v35)));
      if (v30 == v31)
      {
        goto LABEL_40;
      }

      if ((v30 & 0xC) == 0)
      {
        v29 = 4 * v31;
LABEL_38:
        v48 = (a1 + 2 * v29);
        do
        {
          v49 = *v48++;
          v27 += vaddvq_s32(vmovl_u16(vabs_s16(v49)));
          v29 += 4;
        }

        while (v29 <= v26);
        goto LABEL_40;
      }
    }

    else
    {
      v27 = 0;
      v31 = 0;
    }

    v29 = 4 * (v30 & 0x3FFFFFFC);
    v45 = v27;
    v46 = &a1->i16[4 * v31];
    v47 = v31 - (v30 & 0x3FFFFFFC);
    do
    {
      v71 = vld4_s16(v46);
      v46 += 16;
      v45 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v45, vabs_s16(v71.val[0])), vabs_s16(v71.val[1])), vabs_s16(v71.val[2])), vabs_s16(v71.val[3]));
      v47 += 4;
    }

    while (v47);
    v27 = vaddvq_s32(v45);
    if (v30 != (v30 & 0x3FFFFFFC))
    {
      goto LABEL_38;
    }

LABEL_40:
    v28 = (v26 & 0xFFFFFFFC) + 4;
    if (v28 >= v25)
    {
LABEL_58:
      v5 += v27;
      goto LABEL_59;
    }

LABEL_41:
    v50 = v28;
    v51 = v25 + ~v28;
    if (v51 < 3)
    {
      v52 = v28;
      goto LABEL_54;
    }

    v53 = v51 + 1;
    if (v51 >= 0xF)
    {
      v54 = v53 & 0x1FFFFFFF0;
      v55 = v27;
      v56 = 0uLL;
      v57 = (a1 + 2 * v50 + 16);
      v58 = v53 & 0x1FFFFFFF0;
      v59 = 0uLL;
      v60 = 0uLL;
      do
      {
        v61 = vabsq_s16(v57[-1]);
        v62 = vabsq_s16(*v57);
        v56 = vaddw_high_u16(v56, v61);
        v55 = vaddw_u16(v55, *v61.i8);
        v60 = vaddw_high_u16(v60, v62);
        v59 = vaddw_u16(v59, *v62.i8);
        v57 += 2;
        v58 -= 16;
      }

      while (v58);
      v27 = vaddvq_s32(vaddq_s32(vaddq_s32(v59, v55), vaddq_s32(v60, v56)));
      if (v53 == v54)
      {
        goto LABEL_58;
      }

      if ((v53 & 0xC) == 0)
      {
        v52 = v54 + v50;
        goto LABEL_54;
      }
    }

    else
    {
      v54 = 0;
    }

    v52 = (v53 & 0x1FFFFFFFCLL) + v50;
    v63 = v27;
    v64 = (a1 + 2 * v54 + 2 * v50);
    v65 = v54 - (v53 & 0x1FFFFFFFCLL);
    do
    {
      v66 = *v64++;
      v63 = vaddw_u16(v63, vabs_s16(v66));
      v65 += 4;
    }

    while (v65);
    v27 = vaddvq_s32(v63);
    if (v53 == (v53 & 0x1FFFFFFFCLL))
    {
      goto LABEL_58;
    }

LABEL_54:
    v67 = &a1->i16[v52];
    do
    {
      v69 = *v67++;
      v68 = v69;
      if (v69 < 0)
      {
        v68 = -v68;
      }

      v27 += v68;
      LODWORD(v52) = v52 + 1;
    }

    while (v25 > v52);
    goto LABEL_58;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    v6 = 0;
    v7 = a4;
    v8 = a5 & 0x7FFFFFFC;
    v9 = a1 + 1;
    v10 = 2 * a5;
    do
    {
      if (*(a2 + v6))
      {
        if (a5 < 4)
        {
          for (i = 0; i != a5; ++i)
          {
LABEL_18:
            v24 = a1->i16[i];
            if (v24 < 0)
            {
              v24 = -v24;
            }

            v5 += v24;
          }

          goto LABEL_5;
        }

        if (a5 >= 0x10)
        {
          v13 = 0uLL;
          v14 = v5;
          v15 = a5 & 0x7FFFFFF0;
          v16 = v9;
          v17 = 0uLL;
          v18 = 0uLL;
          do
          {
            v19 = vabsq_s16(v16[-1]);
            v20 = vabsq_s16(*v16);
            v13 = vaddw_high_u16(v13, v19);
            v14 = vaddw_u16(v14, *v19.i8);
            v18 = vaddw_high_u16(v18, v20);
            v17 = vaddw_u16(v17, *v20.i8);
            v16 += 2;
            v15 -= 16;
          }

          while (v15);
          v5 = vaddvq_s32(vaddq_s32(vaddq_s32(v17, v14), vaddq_s32(v18, v13)));
          if ((a5 & 0x7FFFFFF0) == a5)
          {
            goto LABEL_5;
          }

          v12 = a5 & 0x7FFFFFF0;
          i = v12;
          if ((a5 & 0xC) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v12 = 0;
        }

        v21 = v5;
        v22 = 2 * v12;
        v23 = v12 - v8;
        do
        {
          v21 = vaddw_u16(v21, vabs_s16(*&a1->i8[v22]));
          v22 += 8;
          v23 += 4;
        }

        while (v23);
        v5 = vaddvq_s32(v21);
        i = a5 & 0x7FFFFFFC;
        if (v8 != a5)
        {
          goto LABEL_18;
        }
      }

LABEL_5:
      ++v6;
      v9 = (v9 + v10);
      a1 = (a1 + v10);
    }

    while (v6 != v7);
  }

LABEL_59:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A6390(uint64_t a1, unsigned __int8 *a2, double *a3, int a4, int a5)
{
  v5 = *a3;
  if (!a2)
  {
    v16 = a5 * a4;
    v17 = (a5 * a4 - 4);
    if (a5 * a4 < 4)
    {
      v18 = 0;
      v19 = 0.0;
      if (v16 <= 0)
      {
        goto LABEL_64;
      }

      goto LABEL_55;
    }

    if (v17 > 0x1B)
    {
      v35 = (v17 >> 2) + 1;
      v20 = 4 * (v35 & 0x3FFFFFF8);
      v36 = (a1 + 64);
      v19 = 0.0;
      v37 = v35 & 0x3FFFFFF8;
      do
      {
        v38 = v36 - 16;
        v79 = vld4q_f32(v38);
        v80 = vld4q_f32(v36);
        v39 = vaddq_s32(vabsq_s32(v79.val[1]), vabsq_s32(v79.val[0]));
        v40 = vaddq_s32(vabsq_s32(v80.val[1]), vabsq_s32(v80.val[0]));
        v41.i64[0] = v39.u32[2];
        v41.i64[1] = v39.u32[3];
        v42 = vcvtq_f64_u64(v41);
        v41.i64[0] = v39.u32[0];
        v41.i64[1] = v39.u32[1];
        v43 = vcvtq_f64_u64(v41);
        v41.i64[0] = v40.u32[2];
        v41.i64[1] = v40.u32[3];
        v44 = vcvtq_f64_u64(v41);
        v41.i64[0] = v40.u32[0];
        v41.i64[1] = v40.u32[1];
        v45 = vcvtq_f64_u64(v41);
        v46 = vabsq_s32(v79.val[2]);
        v47 = vabsq_s32(v80.val[2]);
        v41.i64[0] = v46.u32[2];
        v41.i64[1] = v46.u32[3];
        v48 = vcvtq_f64_u64(v41);
        v41.i64[0] = v46.u32[0];
        v41.i64[1] = v46.u32[1];
        v49 = vcvtq_f64_u64(v41);
        v41.i64[0] = v47.u32[2];
        v41.i64[1] = v47.u32[3];
        v50 = vcvtq_f64_u64(v41);
        v41.i64[0] = v47.u32[0];
        v41.i64[1] = v47.u32[1];
        v51 = vaddq_f64(v45, vcvtq_f64_u64(v41));
        v79.val[0] = vabsq_s32(v79.val[3]);
        v79.val[1] = vabsq_s32(v80.val[3]);
        v41.i64[0] = v79.val[0].u32[0];
        v41.i64[1] = v79.val[0].u32[1];
        v79.val[2] = vcvtq_f64_u64(v41);
        v41.i64[0] = v79.val[0].u32[2];
        v41.i64[1] = v79.val[0].u32[3];
        v79.val[0] = vcvtq_f64_u64(v41);
        v41.i64[0] = v79.val[1].u32[0];
        v41.i64[1] = v79.val[1].u32[1];
        v79.val[3] = vcvtq_f64_u64(v41);
        v41.i64[0] = v79.val[1].u32[2];
        v41.i64[1] = v79.val[1].u32[3];
        v79.val[0] = vaddq_f64(vaddq_f64(v42, v48), v79.val[0]);
        v79.val[2] = vaddq_f64(vaddq_f64(v43, v49), v79.val[2]);
        v79.val[1] = vaddq_f64(vaddq_f64(v44, v50), vcvtq_f64_u64(v41));
        v79.val[3] = vaddq_f64(v51, v79.val[3]);
        v19 = v19 + *v79.val[2].i64 + *&v79.val[2].i64[1] + *v79.val[0].i64 + *&v79.val[0].i64[1] + *v79.val[3].i64 + *&v79.val[3].i64[1] + *v79.val[1].i64 + *&v79.val[1].i64[1];
        v36 += 32;
        v37 -= 8;
      }

      while (v37);
      if (v35 == (v35 & 0x3FFFFFF8))
      {
        goto LABEL_54;
      }
    }

    else
    {
      v20 = 0;
      v19 = 0.0;
    }

    v52 = v20 + 2;
    v53 = (a1 + 4 * v20 + 12);
    do
    {
      v54 = vabs_s32(*(v53 - 3));
      v55 = vadd_s32(vdup_lane_s32(v54, 1), v54).u32[0];
      v56 = *(v53 - 1);
      if (v56 < 0)
      {
        v56 = -v56;
      }

      v57 = v55 + v56;
      v59 = *v53;
      v53 += 4;
      v58 = v59;
      if (v59 < 0)
      {
        v58 = -v58;
      }

      v19 = v19 + v57 + v58;
      v60 = v52 + 2;
      v52 += 4;
    }

    while (v60 <= v17);
LABEL_54:
    v18 = (v17 & 0xFFFFFFFC) + 4;
    if (v18 >= v16)
    {
LABEL_64:
      v5 = v5 + v19;
      goto LABEL_65;
    }

LABEL_55:
    v61 = v18;
    v62 = (v16 + ~v18);
    if (v62 > 6)
    {
      v64 = v62 + 1;
      v65 = (v62 + 1) & 0x1FFFFFFF8;
      v63 = v65 + v61;
      v66 = (a1 + 4 * v61 + 16);
      v67 = v65;
      do
      {
        v68 = vabsq_s32(v66[-1]);
        v69 = vabsq_s32(*v66);
        v70.i64[0] = v68.u32[2];
        v70.i64[1] = v68.u32[3];
        v71 = vcvtq_f64_u64(v70);
        v70.i64[0] = v68.u32[0];
        v70.i64[1] = v68.u32[1];
        v72 = vcvtq_f64_u64(v70);
        v70.i64[0] = v69.u32[2];
        v70.i64[1] = v69.u32[3];
        v73 = vcvtq_f64_u64(v70);
        v70.i64[0] = v69.u32[0];
        v70.i64[1] = v69.u32[1];
        v74 = vcvtq_f64_u64(v70);
        v19 = v19 + v72.f64[0] + v72.f64[1] + v71.f64[0] + v71.f64[1] + v74.f64[0] + v74.f64[1] + v73.f64[0] + v73.f64[1];
        v66 += 2;
        v67 -= 8;
      }

      while (v67);
      if (v64 == v65)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v63 = v61;
    }

    v75 = (a1 + 4 * v63);
    do
    {
      v77 = *v75++;
      v76 = v77;
      if (v77 < 0)
      {
        v76 = -v76;
      }

      v19 = v19 + v76;
      LODWORD(v63) = v63 + 1;
    }

    while (v16 > v63);
    goto LABEL_64;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    v6 = a4;
    if (a5 >= 8)
    {
      v21 = 0;
      v22 = (a1 + 16);
      v23 = 4 * a5;
      do
      {
        if (a2[v21])
        {
          v24 = a5 & 0x7FFFFFF8;
          v25 = v22;
          do
          {
            v26 = vabsq_s32(v25[-1]);
            v27 = vabsq_s32(*v25);
            v28.i64[0] = v26.u32[2];
            v28.i64[1] = v26.u32[3];
            v29 = vcvtq_f64_u64(v28);
            v28.i64[0] = v26.u32[0];
            v28.i64[1] = v26.u32[1];
            v30 = vcvtq_f64_u64(v28);
            v28.i64[0] = v27.u32[2];
            v28.i64[1] = v27.u32[3];
            v31 = vcvtq_f64_u64(v28);
            v28.i64[0] = v27.u32[0];
            v28.i64[1] = v27.u32[1];
            v32 = vcvtq_f64_u64(v28);
            v5 = v5 + v30.f64[0] + v30.f64[1] + v29.f64[0] + v29.f64[1] + v32.f64[0] + v32.f64[1] + v31.f64[0] + v31.f64[1];
            v25 += 2;
            v24 -= 8;
          }

          while (v24);
          if ((a5 & 0x7FFFFFF8) != a5)
          {
            v33 = a5 & 0x7FFFFFF8;
            do
            {
              v34 = *(a1 + 4 * v33);
              if (v34 < 0)
              {
                v34 = -v34;
              }

              v5 = v5 + v34;
              ++v33;
            }

            while (a5 != v33);
          }
        }

        ++v21;
        v22 = (v22 + v23);
        a1 += v23;
      }

      while (v21 != a4);
    }

    else
    {
      v7 = (a1 + 12);
      do
      {
        if (*a2++)
        {
          v9 = *(v7 - 3);
          if (v9 < 0)
          {
            v9 = -v9;
          }

          v5 = v5 + v9;
          if (a5 != 1)
          {
            v10 = *(v7 - 2);
            if (v10 < 0)
            {
              v10 = -v10;
            }

            v5 = v5 + v10;
            if (a5 != 2)
            {
              v11 = *(v7 - 1);
              if (v11 < 0)
              {
                v11 = -v11;
              }

              v5 = v5 + v11;
              if (a5 != 3)
              {
                v12 = *v7;
                if ((*v7 & 0x80000000) != 0)
                {
                  v12 = -v12;
                }

                v5 = v5 + v12;
                if (a5 != 4)
                {
                  v13 = v7[1];
                  if (v13 < 0)
                  {
                    v13 = -v13;
                  }

                  v5 = v5 + v13;
                  if (a5 != 5)
                  {
                    v14 = v7[2];
                    if (v14 < 0)
                    {
                      v14 = -v14;
                    }

                    v5 = v5 + v14;
                    if (a5 != 6)
                    {
                      v15 = v7[3];
                      if (v15 < 0)
                      {
                        v15 = -v15;
                      }

                      v5 = v5 + v15;
                    }
                  }
                }
              }
            }
          }
        }

        v7 += a5;
        --v6;
      }

      while (v6);
    }
  }

LABEL_65:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A67FC(float64x2_t *a1, unsigned __int8 *a2, double *a3, int a4, int a5)
{
  v5 = *a3;
  if (!a2)
  {
    v9 = a5 * a4;
    v10 = (a5 * a4 - 4);
    if (a5 * a4 < 4)
    {
      v11 = 0;
      v12 = 0.0;
      if (v9 <= 0)
      {
        goto LABEL_38;
      }

LABEL_31:
      v30 = v11;
      v31 = (v9 + ~v11);
      if (v31 > 2)
      {
        v33 = v31 + 1;
        v34 = (v31 + 1) & 0x1FFFFFFFCLL;
        v32 = v34 + v30;
        v35 = (a1 + 8 * v30 + 16);
        v36 = v34;
        do
        {
          v37 = vabsq_f64(v35[-1]);
          v38 = vabsq_f64(*v35);
          v12 = v12 + v37.f64[0] + v37.f64[1] + v38.f64[0] + v38.f64[1];
          v35 += 2;
          v36 -= 4;
        }

        while (v36);
        if (v33 == v34)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v32 = v30;
      }

      v39 = &a1->f64[v32];
      do
      {
        v40 = *v39++;
        v12 = v12 + fabs(v40);
        LODWORD(v32) = v32 + 1;
      }

      while (v9 > v32);
LABEL_38:
      v5 = v5 + v12;
      goto LABEL_39;
    }

    if (v10 > 0xB)
    {
      v22 = (v10 >> 2) + 1;
      v13 = 4 * (v22 & 0x3FFFFFFC);
      f64 = a1[4].f64;
      v12 = 0.0;
      v24 = v22 & 0x3FFFFFFC;
      do
      {
        v25 = f64 - 8;
        v42 = vld4q_f64(v25);
        v43 = vld4q_f64(f64);
        v42.val[0] = vaddq_f64(vaddq_f64(vaddq_f64(vabsq_f64(v42.val[0]), vabsq_f64(v42.val[1])), vabsq_f64(v42.val[2])), vabsq_f64(v42.val[3]));
        v42.val[1] = vaddq_f64(vaddq_f64(vaddq_f64(vabsq_f64(v43.val[0]), vabsq_f64(v43.val[1])), vabsq_f64(v43.val[2])), vabsq_f64(v43.val[3]));
        v12 = v12 + v42.val[0].f64[0] + v42.val[0].f64[1] + v42.val[1].f64[0] + v42.val[1].f64[1];
        f64 += 16;
        v24 -= 4;
      }

      while (v24);
      if (v22 == (v22 & 0x3FFFFFFC))
      {
LABEL_30:
        v11 = (v10 & 0xFFFFFFFC) + 4;
        if (v11 >= v9)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0.0;
    }

    v26 = a1[v13 / 2 + 1].f64;
    do
    {
      v27 = fabs(*(v26 - 2)) + fabs(*(v26 - 1));
      v28 = *v26;
      v29 = v26[1];
      v26 += 4;
      v12 = v12 + v27 + fabs(v28) + fabs(v29);
      v13 += 4;
    }

    while (v13 <= v10);
    goto LABEL_30;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    v6 = a4;
    if (a5 >= 4)
    {
      v14 = 0;
      v15 = a1 + 1;
      v16 = 8 * a5;
      do
      {
        if (a2[v14])
        {
          v17 = a5 & 0x7FFFFFFC;
          v18 = v15;
          do
          {
            v19 = vabsq_f64(v18[-1]);
            v20 = vabsq_f64(*v18);
            v5 = v5 + v19.f64[0] + v19.f64[1] + v20.f64[0] + v20.f64[1];
            v18 += 2;
            v17 -= 4;
          }

          while (v17);
          if ((a5 & 0x7FFFFFFC) != a5)
          {
            v21 = a5 & 0x7FFFFFFC;
            do
            {
              v5 = v5 + fabs(a1->f64[v21++]);
            }

            while (a5 != v21);
          }
        }

        ++v14;
        v15 = (v15 + v16);
        a1 = (a1 + v16);
      }

      while (v14 != a4);
    }

    else
    {
      v7 = a1[1].f64;
      do
      {
        if (*a2++)
        {
          v5 = v5 + fabs(*(v7 - 2));
          if (a5 != 1)
          {
            v5 = v5 + fabs(*(v7 - 1));
            if (a5 != 2)
            {
              v5 = v5 + fabs(*v7);
            }
          }
        }

        v7 += a5;
        --v6;
      }

      while (v6);
    }
  }

LABEL_39:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A6AB4(uint8x16_t *a1, unsigned __int8 *a2, unsigned int *a3, int a4, int a5, int32x4_t a6, int32x4_t a7)
{
  v7 = *a3;
  if (!a2)
  {
    v11 = a5 * a4;
    v12 = (a5 * a4 - 4);
    if (a5 * a4 < 4)
    {
      v13 = 0;
      v14 = 0;
      if (v11 <= 0)
      {
        goto LABEL_58;
      }

      goto LABEL_43;
    }

    if (v12 < 0x1C)
    {
      v15 = 0;
      v14 = 0;
      goto LABEL_41;
    }

    v38 = (v12 >> 2) + 1;
    if (v12 >= 0x3C)
    {
      v39 = v38 & 0x3FFFFFF0;
      v46 = 0uLL;
      v47 = v39;
      v48 = a1;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      do
      {
        v89 = vld4q_s8(v48);
        v48 += 64;
        v52 = vmull_high_u8(v89.val[0], v89.val[0]);
        v53 = vmull_u8(*v89.val[0].i8, *v89.val[0].i8);
        v54 = vmull_u8(*v89.val[1].i8, *v89.val[1].i8);
        v55 = vmull_high_u8(v89.val[1], v89.val[1]);
        v56 = vmull_high_u8(v89.val[2], v89.val[2]);
        v57 = vmull_u8(*v89.val[2].i8, *v89.val[2].i8);
        v58 = vmull_u8(*v89.val[3].i8, *v89.val[3].i8);
        v89.val[0] = vmull_high_u8(v89.val[3], v89.val[3]);
        v51 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v51, v52), v55), v56), v89.val[0]);
        v50 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v50, *v52.i8), *v55.i8), *v56.i8), *v89.val[0].i8);
        v49 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v49, v53), v54), v57), v58);
        v46 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(v46, *v53.i8), *v54.i8), *v57.i8), *v58.i8);
        v47 -= 16;
      }

      while (v47);
      a7 = vaddq_s32(v49, v51);
      a6 = vaddq_s32(vaddq_s32(v46, v50), a7);
      v14 = vaddvq_s32(a6);
      if (v38 == v39)
      {
        goto LABEL_42;
      }

      if ((v38 & 8) == 0)
      {
        v15 = 4 * v39;
        do
        {
LABEL_41:
          a6.i32[0] = a1->i32[v15 / 4];
          v59 = vmovl_u8(*a6.i8).u64[0];
          a6 = vmull_u16(v59, v59);
          v14 += vaddvq_s32(a6);
          v15 += 4;
        }

        while (v15 <= v12);
        goto LABEL_42;
      }
    }

    else
    {
      v14 = 0;
      v39 = 0;
    }

    v15 = 4 * (v38 & 0x3FFFFFF8);
    v40 = 0uLL;
    a7 = v14;
    v41 = &a1->i8[4 * v39];
    v42 = v39 - (v38 & 0x3FFFFFF8);
    do
    {
      v88 = vld4_s8(v41);
      v41 += 32;
      v43 = vmull_u8(v88.val[0], v88.val[0]);
      v44 = vmull_u8(v88.val[1], v88.val[1]);
      v45 = vmull_u8(v88.val[2], v88.val[2]);
      *v88.val[0].i8 = vmull_u8(v88.val[3], v88.val[3]);
      v40 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v40, v43), v44), v45), *v88.val[0].i8);
      a7 = vaddw_u16(vaddw_u16(vaddw_u16(vaddw_u16(a7, *v43.i8), *v44.i8), *v45.i8), v88.val[0]);
      v42 += 8;
    }

    while (v42);
    a6 = vaddq_s32(a7, v40);
    v14 = vaddvq_s32(a6);
    if (v38 != (v38 & 0x3FFFFFF8))
    {
      goto LABEL_41;
    }

LABEL_42:
    v13 = (v12 & 0xFFFFFFFC) + 4;
    if (v13 >= v11)
    {
LABEL_58:
      v7 += v14;
      goto LABEL_59;
    }

LABEL_43:
    v60 = v13;
    v61 = v11 + ~v13;
    if (v61 < 3)
    {
      v62 = v13;
      goto LABEL_56;
    }

    v63 = v61 + 1;
    if (v61 >= 0x1F)
    {
      v64 = v63 & 0x1FFFFFFE0;
      v65 = 0uLL;
      v66 = v14;
      v67 = (a1 + v60 + 16);
      v68 = v63 & 0x1FFFFFFE0;
      v69 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      do
      {
        v75 = v67[-1];
        v76 = *v67;
        v77 = vmull_u8(*v75.i8, *v75.i8);
        v78 = vmull_high_u8(v75, v75);
        v79 = vmull_u8(*v76.i8, *v76.i8);
        v80 = vmull_high_u8(v76, v76);
        v70 = vaddw_high_u16(v70, v78);
        v69 = vaddw_u16(v69, *v78.i8);
        v65 = vaddw_high_u16(v65, v77);
        v66 = vaddw_u16(v66, *v77.i8);
        v74 = vaddw_high_u16(v74, v80);
        v73 = vaddw_u16(v73, *v80.i8);
        v72 = vaddw_high_u16(v72, v79);
        v71 = vaddw_u16(v71, *v79.i8);
        v67 += 2;
        v68 -= 32;
      }

      while (v68);
      a7 = vaddq_s32(vaddq_s32(v72, v65), vaddq_s32(v74, v70));
      v14 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v71, v66), vaddq_s32(v73, v69)), a7));
      if (v63 == v64)
      {
        goto LABEL_58;
      }

      if ((v63 & 0x1C) == 0)
      {
        v62 = v64 + v60;
LABEL_56:
        v85 = &a1->u8[v62];
        do
        {
          v86 = *v85++;
          v14 += v86 * v86;
          LODWORD(v62) = v62 + 1;
        }

        while (v11 > v62);
        goto LABEL_58;
      }
    }

    else
    {
      v64 = 0;
    }

    v62 = (v63 & 0x1FFFFFFFCLL) + v60;
    v81 = v14;
    v82 = (a1->u32 + v64 + v60);
    v83 = v64 - (v63 & 0x1FFFFFFFCLL);
    do
    {
      v84 = *v82++;
      a7.i32[0] = v84;
      a7.i64[0] = vmovl_u8(*a7.i8).u64[0];
      v81 = vmlal_u16(v81, *a7.i8, *a7.i8);
      v83 += 4;
    }

    while (v83);
    v14 = vaddvq_s32(v81);
    if (v63 == (v63 & 0x1FFFFFFFCLL))
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (a4 < 1 || a5 < 1)
  {
    goto LABEL_59;
  }

  v8 = a4;
  if (a5 >= 4)
  {
    v16 = 0;
    v17 = a5 & 0x7FFFFFFC;
    v18 = a1 + 1;
    while (!a2[v16])
    {
LABEL_17:
      ++v16;
      a1 = (a1 + a5);
      v18 = (v18 + a5);
      if (v16 == v8)
      {
        goto LABEL_59;
      }
    }

    if (a5 >= 0x20)
    {
      v20 = 0uLL;
      v21 = v7;
      v22 = a5 & 0x7FFFFFE0;
      v23 = v18;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      do
      {
        v30 = v23[-1];
        v31 = *v23;
        v32 = vmull_u8(*v30.i8, *v30.i8);
        v33 = vmull_high_u8(v30, v30);
        v34 = vmull_u8(*v31.i8, *v31.i8);
        v35 = vmull_high_u8(v31, v31);
        v25 = vaddw_high_u16(v25, v33);
        v24 = vaddw_u16(v24, *v33.i8);
        v20 = vaddw_high_u16(v20, v32);
        v21 = vaddw_u16(v21, *v32.i8);
        v29 = vaddw_high_u16(v29, v35);
        v28 = vaddw_u16(v28, *v35.i8);
        v27 = vaddw_high_u16(v27, v34);
        v26 = vaddw_u16(v26, *v34.i8);
        v23 += 2;
        v22 -= 32;
      }

      while (v22);
      a7 = vaddq_s32(vaddq_s32(v27, v20), vaddq_s32(v29, v25));
      v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v26, v21), vaddq_s32(v28, v24)), a7));
      if ((a5 & 0x7FFFFFE0) == a5)
      {
        goto LABEL_17;
      }

      v19 = a5 & 0x7FFFFFE0;
      v36 = v19;
      if ((a5 & 0x1C) == 0)
      {
        do
        {
LABEL_28:
          v7 += a1->u8[v36] * a1->u8[v36];
          ++v36;
        }

        while (a5 != v36);
        goto LABEL_17;
      }
    }

    else
    {
      v19 = 0;
    }

    v37 = v7;
    do
    {
      a7.i32[0] = *(a1->i32 + v19);
      a7.i64[0] = vmovl_u8(*a7.i8).u64[0];
      v37 = vmlal_u16(v37, *a7.i8, *a7.i8);
      v19 += 4;
    }

    while (v17 != v19);
    v7 = vaddvq_s32(v37);
    v36 = a5 & 0x7FFFFFFC;
    if (v17 == a5)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  v9 = &a1->u8[2];
  do
  {
    if (*a2++)
    {
      v7 += *(v9 - 2) * *(v9 - 2);
      if (a5 != 1)
      {
        v7 += *(v9 - 1) * *(v9 - 1);
        if (a5 != 2)
        {
          v7 += *v9 * *v9;
        }
      }
    }

    v9 += a5;
    --v8;
  }

  while (v8);
LABEL_59:
  *a3 = v7;
  return 0;
}

uint64_t sub_1002A6F40(int8x16_t *a1, unsigned __int8 *a2, unsigned int *a3, int a4, int a5, int32x4_t a6, int32x4_t a7)
{
  v7 = *a3;
  if (!a2)
  {
    v11 = a5 * a4;
    v12 = (a5 * a4 - 4);
    if (a5 * a4 < 4)
    {
      v13 = 0;
      v14 = 0;
      if (v11 <= 0)
      {
        goto LABEL_58;
      }

      goto LABEL_43;
    }

    if (v12 < 0x1C)
    {
      v15 = 0;
      v14 = 0;
      goto LABEL_41;
    }

    v38 = (v12 >> 2) + 1;
    if (v12 >= 0x3C)
    {
      v39 = v38 & 0x3FFFFFF0;
      v46 = 0uLL;
      v47 = v39;
      v48 = a1;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      do
      {
        v89 = vld4q_s8(v48);
        v48 += 64;
        v52 = vmull_high_s8(v89.val[0], v89.val[0]);
        v53 = vmull_s8(*v89.val[0].i8, *v89.val[0].i8);
        v54 = vmull_s8(*v89.val[1].i8, *v89.val[1].i8);
        v55 = vmull_high_s8(v89.val[1], v89.val[1]);
        v56 = vmull_high_s8(v89.val[2], v89.val[2]);
        v57 = vmull_s8(*v89.val[2].i8, *v89.val[2].i8);
        v58 = vmull_s8(*v89.val[3].i8, *v89.val[3].i8);
        v89.val[0] = vmull_high_s8(v89.val[3], v89.val[3]);
        v51 = vaddw_high_s16(vaddw_high_s16(vaddw_high_s16(vaddw_high_s16(v51, v52), v55), v56), v89.val[0]);
        v50 = vaddw_s16(vaddw_s16(vaddw_s16(vaddw_s16(v50, *v52.i8), *v55.i8), *v56.i8), *v89.val[0].i8);
        v49 = vaddw_high_s16(vaddw_high_s16(vaddw_high_s16(vaddw_high_s16(v49, v53), v54), v57), v58);
        v46 = vaddw_s16(vaddw_s16(vaddw_s16(vaddw_s16(v46, *v53.i8), *v54.i8), *v57.i8), *v58.i8);
        v47 -= 16;
      }

      while (v47);
      a7 = vaddq_s32(v49, v51);
      a6 = vaddq_s32(vaddq_s32(v46, v50), a7);
      v14 = vaddvq_s32(a6);
      if (v38 == v39)
      {
        goto LABEL_42;
      }

      if ((v38 & 8) == 0)
      {
        v15 = 4 * v39;
        do
        {
LABEL_41:
          a6.i32[0] = a1->i32[v15 / 4];
          v59 = vmovl_s8(*a6.i8).u64[0];
          a6 = vmull_s16(v59, v59);
          v14 += vaddvq_s32(a6);
          v15 += 4;
        }

        while (v15 <= v12);
        goto LABEL_42;
      }
    }

    else
    {
      v14 = 0;
      v39 = 0;
    }

    v15 = 4 * (v38 & 0x3FFFFFF8);
    v40 = 0uLL;
    a7 = v14;
    v41 = &a1->i8[4 * v39];
    v42 = v39 - (v38 & 0x3FFFFFF8);
    do
    {
      v88 = vld4_s8(v41);
      v41 += 32;
      v43 = vmull_s8(v88.val[0], v88.val[0]);
      v44 = vmull_s8(v88.val[1], v88.val[1]);
      v45 = vmull_s8(v88.val[2], v88.val[2]);
      *v88.val[0].i8 = vmull_s8(v88.val[3], v88.val[3]);
      v40 = vaddw_high_s16(vaddw_high_s16(vaddw_high_s16(vaddw_high_s16(v40, v43), v44), v45), *v88.val[0].i8);
      a7 = vaddw_s16(vaddw_s16(vaddw_s16(vaddw_s16(a7, *v43.i8), *v44.i8), *v45.i8), v88.val[0]);
      v42 += 8;
    }

    while (v42);
    a6 = vaddq_s32(a7, v40);
    v14 = vaddvq_s32(a6);
    if (v38 != (v38 & 0x3FFFFFF8))
    {
      goto LABEL_41;
    }

LABEL_42:
    v13 = (v12 & 0xFFFFFFFC) + 4;
    if (v13 >= v11)
    {
LABEL_58:
      v7 += v14;
      goto LABEL_59;
    }

LABEL_43:
    v60 = v13;
    v61 = v11 + ~v13;
    if (v61 < 3)
    {
      v62 = v13;
      goto LABEL_56;
    }

    v63 = v61 + 1;
    if (v61 >= 0x1F)
    {
      v64 = v63 & 0x1FFFFFFE0;
      v65 = 0uLL;
      v66 = v14;
      v67 = (a1 + v60 + 16);
      v68 = v63 & 0x1FFFFFFE0;
      v69 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      do
      {
        v75 = v67[-1];
        v76 = *v67;
        v77 = vmull_s8(*v75.i8, *v75.i8);
        v78 = vmull_high_s8(v75, v75);
        v79 = vmull_s8(*v76.i8, *v76.i8);
        v80 = vmull_high_s8(v76, v76);
        v70 = vaddw_high_s16(v70, v78);
        v69 = vaddw_s16(v69, *v78.i8);
        v65 = vaddw_high_s16(v65, v77);
        v66 = vaddw_s16(v66, *v77.i8);
        v74 = vaddw_high_s16(v74, v80);
        v73 = vaddw_s16(v73, *v80.i8);
        v72 = vaddw_high_s16(v72, v79);
        v71 = vaddw_s16(v71, *v79.i8);
        v67 += 2;
        v68 -= 32;
      }

      while (v68);
      a7 = vaddq_s32(vaddq_s32(v72, v65), vaddq_s32(v74, v70));
      v14 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v71, v66), vaddq_s32(v73, v69)), a7));
      if (v63 == v64)
      {
        goto LABEL_58;
      }

      if ((v63 & 0x1C) == 0)
      {
        v62 = v64 + v60;
LABEL_56:
        v85 = &a1->i8[v62];
        do
        {
          v86 = *v85++;
          v14 += v86 * v86;
          LODWORD(v62) = v62 + 1;
        }

        while (v11 > v62);
        goto LABEL_58;
      }
    }

    else
    {
      v64 = 0;
    }

    v62 = (v63 & 0x1FFFFFFFCLL) + v60;
    v81 = v14;
    v82 = (a1->u32 + v64 + v60);
    v83 = v64 - (v63 & 0x1FFFFFFFCLL);
    do
    {
      v84 = *v82++;
      a7.i32[0] = v84;
      a7.i64[0] = vmovl_s8(*a7.i8).u64[0];
      v81 = vmlal_s16(v81, *a7.i8, *a7.i8);
      v83 += 4;
    }

    while (v83);
    v14 = vaddvq_s32(v81);
    if (v63 == (v63 & 0x1FFFFFFFCLL))
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (a4 < 1 || a5 < 1)
  {
    goto LABEL_59;
  }

  v8 = a4;
  if (a5 >= 4)
  {
    v16 = 0;
    v17 = a5 & 0x7FFFFFFC;
    v18 = a1 + 1;
    while (!a2[v16])
    {
LABEL_17:
      ++v16;
      a1 = (a1 + a5);
      v18 = (v18 + a5);
      if (v16 == v8)
      {
        goto LABEL_59;
      }
    }

    if (a5 >= 0x20)
    {
      v20 = 0uLL;
      v21 = v7;
      v22 = a5 & 0x7FFFFFE0;
      v23 = v18;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      do
      {
        v30 = v23[-1];
        v31 = *v23;
        v32 = vmull_s8(*v30.i8, *v30.i8);
        v33 = vmull_high_s8(v30, v30);
        v34 = vmull_s8(*v31.i8, *v31.i8);
        v35 = vmull_high_s8(v31, v31);
        v25 = vaddw_high_s16(v25, v33);
        v24 = vaddw_s16(v24, *v33.i8);
        v20 = vaddw_high_s16(v20, v32);
        v21 = vaddw_s16(v21, *v32.i8);
        v29 = vaddw_high_s16(v29, v35);
        v28 = vaddw_s16(v28, *v35.i8);
        v27 = vaddw_high_s16(v27, v34);
        v26 = vaddw_s16(v26, *v34.i8);
        v23 += 2;
        v22 -= 32;
      }

      while (v22);
      a7 = vaddq_s32(vaddq_s32(v27, v20), vaddq_s32(v29, v25));
      v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v26, v21), vaddq_s32(v28, v24)), a7));
      if ((a5 & 0x7FFFFFE0) == a5)
      {
        goto LABEL_17;
      }

      v19 = a5 & 0x7FFFFFE0;
      v36 = v19;
      if ((a5 & 0x1C) == 0)
      {
        do
        {
LABEL_28:
          v7 += a1->i8[v36] * a1->i8[v36];
          ++v36;
        }

        while (a5 != v36);
        goto LABEL_17;
      }
    }

    else
    {
      v19 = 0;
    }

    v37 = v7;
    do
    {
      a7.i32[0] = *(a1->i32 + v19);
      a7.i64[0] = vmovl_s8(*a7.i8).u64[0];
      v37 = vmlal_s16(v37, *a7.i8, *a7.i8);
      v19 += 4;
    }

    while (v17 != v19);
    v7 = vaddvq_s32(v37);
    v36 = a5 & 0x7FFFFFFC;
    if (v17 == a5)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  v9 = &a1->i8[2];
  do
  {
    if (*a2++)
    {
      v7 += *(v9 - 2) * *(v9 - 2);
      if (a5 != 1)
      {
        v7 += *(v9 - 1) * *(v9 - 1);
        if (a5 != 2)
        {
          v7 += *v9 * *v9;
        }
      }
    }

    v9 += a5;
    --v8;
  }

  while (v8);
LABEL_59:
  *a3 = v7;
  return 0;
}

uint64_t sub_1002A73CC(const __int16 *a1, uint64_t a2, double *a3, int a4, int a5, double a6, double a7, double a8, double a9, float64x2_t a10, float64x2_t a11)
{
  v11 = *a3;
  if (!a2)
  {
    v14 = a5 * a4;
    v15 = (a5 * a4 - 4);
    if (a5 * a4 < 4)
    {
      v16 = 0;
      v17 = 0.0;
      if (v14 <= 0)
      {
        goto LABEL_29;
      }

LABEL_21:
      v47 = v16;
      v48 = (v14 + ~v16);
      if (v48)
      {
        v49 = v48 + 1;
        v50 = (v48 + 1) & 0x1FFFFFFFELL;
        v51 = v50 + v47;
        v52 = &a1[v47 + 1];
        v53 = v50;
        do
        {
          LOWORD(a8) = *(v52 - 1);
          LOWORD(a9) = *v52;
          a8 = *&a8 * *&a8;
          a9 = *&a9 * *&a9;
          v17 = v17 + a8 + a9;
          v52 += 2;
          v53 -= 2;
        }

        while (v53);
        if (v49 == v50)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v51 = v47;
      }

      v54 = &a1[v51];
      do
      {
        v55 = *v54++;
        v17 = v17 + v55 * v55;
        LODWORD(v51) = v51 + 1;
      }

      while (v14 > v51);
LABEL_29:
      v11 = v11 + v17;
      goto LABEL_30;
    }

    if (v15 > 0x1B)
    {
      v19 = (v15 >> 2) + 1;
      v18 = 4 * (v19 & 0x3FFFFFF8);
      v17 = 0.0;
      v20 = v19 & 0x3FFFFFF8;
      v21 = a1;
      do
      {
        v57 = vld4q_s16(v21);
        v21 += 32;
        v22 = vmovl_u16(*v57.val[0].i8);
        v23.i64[0] = v22.u32[0];
        v23.i64[1] = v22.u32[1];
        v24 = vcvtq_f64_u64(v23);
        v23.i64[0] = v22.u32[2];
        v23.i64[1] = v22.u32[3];
        v25 = vcvtq_f64_u64(v23);
        v26 = vmovl_high_u16(v57.val[0]);
        v23.i64[0] = v26.u32[0];
        v23.i64[1] = v26.u32[1];
        v27 = vcvtq_f64_u64(v23);
        v23.i64[0] = v26.u32[2];
        v23.i64[1] = v26.u32[3];
        v28 = vcvtq_f64_u64(v23);
        v29 = vmovl_high_u16(v57.val[1]);
        v23.i64[0] = v29.u32[2];
        v23.i64[1] = v29.u32[3];
        v30 = vcvtq_f64_u64(v23);
        v23.i64[0] = v29.u32[0];
        v23.i64[1] = v29.u32[1];
        v31 = vcvtq_f64_u64(v23);
        v32 = vmovl_u16(*v57.val[1].i8);
        v23.i64[0] = v32.u32[2];
        v23.i64[1] = v32.u32[3];
        v33 = vcvtq_f64_u64(v23);
        v23.i64[0] = v32.u32[0];
        v23.i64[1] = v32.u32[1];
        v34 = vcvtq_f64_u64(v23);
        v35 = vmovl_high_u16(v57.val[2]);
        v23.i64[0] = v35.u32[2];
        v23.i64[1] = v35.u32[3];
        v36 = vcvtq_f64_u64(v23);
        v23.i64[0] = v35.u32[0];
        v23.i64[1] = v35.u32[1];
        v37 = vcvtq_f64_u64(v23);
        v38 = vmovl_u16(*v57.val[2].i8);
        v23.i64[0] = v38.u32[2];
        v23.i64[1] = v38.u32[3];
        v39 = vcvtq_f64_u64(v23);
        v23.i64[0] = v38.u32[0];
        v23.i64[1] = v38.u32[1];
        v40 = vcvtq_f64_u64(v23);
        v41 = vmovl_u16(*v57.val[3].i8);
        v23.i64[0] = v41.u32[0];
        v23.i64[1] = v41.u32[1];
        v42 = vcvtq_f64_u64(v23);
        v23.i64[0] = v41.u32[2];
        v23.i64[1] = v41.u32[3];
        v43 = vcvtq_f64_u64(v23);
        v57.val[0] = vmovl_high_u16(v57.val[3]);
        v23.i64[0] = v57.val[0].u32[0];
        v23.i64[1] = v57.val[0].u32[1];
        v57.val[1] = vcvtq_f64_u64(v23);
        v23.i64[0] = v57.val[0].u32[2];
        v23.i64[1] = v57.val[0].u32[3];
        v57.val[0] = vcvtq_f64_u64(v23);
        v44 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v30, v30), v28, v28), v36, v36), v57.val[0], v57.val[0]);
        a8 = v44.f64[1];
        v45 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v31, v31), v27, v27), v37, v37), v57.val[1], v57.val[1]);
        a9 = v45.f64[1];
        a11 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v33, v33), v25, v25), v39, v39), v43, v43);
        a10 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v34, v34), v24, v24), v40, v40), v42, v42);
        v17 = v17 + a10.f64[0] + a10.f64[1] + a11.f64[0] + a11.f64[1] + v45.f64[0] + v45.f64[1] + v44.f64[0] + v44.f64[1];
        v20 -= 8;
      }

      while (v20);
      if (v19 == (v19 & 0x3FFFFFF8))
      {
LABEL_20:
        v16 = (v15 & 0xFFFFFFFC) + 4;
        if (v16 >= v14)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v18 = 0;
      v17 = 0.0;
    }

    v46 = &a1[v18 + 2];
    do
    {
      LOWORD(a8) = *(v46 - 2);
      LOWORD(a9) = *(v46 - 1);
      LOWORD(a10.f64[0]) = *v46;
      a10.f64[0] = *&a10.f64[0];
      LOWORD(a11.f64[0]) = v46[1];
      a11.f64[0] = *&a11.f64[0];
      a9 = *&a9 * *&a9;
      a8 = a9 + *&a8 * *&a8 + a10.f64[0] * a10.f64[0] + a11.f64[0] * a11.f64[0];
      v17 = v17 + a8;
      v18 += 4;
      v46 += 4;
    }

    while (v18 <= v15);
    goto LABEL_20;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      if (*(a2 + i))
      {
        for (j = 0; j != a5; ++j)
        {
          LOWORD(a7) = a1[j];
          a7 = *&a7;
          v11 = v11 + a7 * a7;
        }
      }

      a1 += a5;
    }
  }

LABEL_30:
  *a3 = v11;
  return 0;
}

uint64_t sub_1002A7694(const __int16 *a1, uint64_t a2, double *a3, int a4, int a5, double a6, int16x4_t a7, double a8, double a9, float64x2_t a10, float64x2_t a11)
{
  v11 = *a3;
  if (!a2)
  {
    v14 = a5 * a4;
    v15 = (a5 * a4 - 4);
    if (a5 * a4 < 4)
    {
      v16 = 0;
      v17 = 0.0;
      if (v14 <= 0)
      {
        goto LABEL_29;
      }

LABEL_21:
      v50 = v16;
      v51 = (v14 + ~v16);
      if (v51)
      {
        v52 = v51 + 1;
        v53 = (v51 + 1) & 0x1FFFFFFFELL;
        v54 = v53 + v50;
        v55 = &a1[v50 + 1];
        v56 = v53;
        do
        {
          LOWORD(a8) = *(v55 - 1);
          v57 = vmovl_s16(*&a8).u32[0];
          LOWORD(a9) = *v55;
          v58 = vmovl_s16(*&a9).u32[0];
          a8 = v57 * v57;
          a9 = v58 * v58;
          v17 = v17 + a8 + a9;
          v55 += 2;
          v56 -= 2;
        }

        while (v56);
        if (v52 == v53)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v54 = v50;
      }

      v59 = &a1[v54];
      do
      {
        v60 = *v59++;
        v17 = v17 + v60 * v60;
        LODWORD(v54) = v54 + 1;
      }

      while (v14 > v54);
LABEL_29:
      v11 = v11 + v17;
      goto LABEL_30;
    }

    if (v15 > 0x1B)
    {
      v19 = (v15 >> 2) + 1;
      v18 = 4 * (v19 & 0x3FFFFFF8);
      v17 = 0.0;
      v20 = v19 & 0x3FFFFFF8;
      v21 = a1;
      do
      {
        v62 = vld4q_s16(v21);
        v21 += 32;
        v22 = vmovl_s16(*v62.val[0].i8);
        v23.i64[0] = v22.i32[0];
        v23.i64[1] = v22.i32[1];
        v24 = vcvtq_f64_s64(v23);
        v23.i64[0] = v22.i32[2];
        v23.i64[1] = v22.i32[3];
        v25 = vcvtq_f64_s64(v23);
        v26 = vmovl_high_s16(v62.val[0]);
        v23.i64[0] = v26.i32[0];
        v23.i64[1] = v26.i32[1];
        v27 = vcvtq_f64_s64(v23);
        v23.i64[0] = v26.i32[2];
        v23.i64[1] = v26.i32[3];
        v28 = vcvtq_f64_s64(v23);
        v29 = vmovl_high_s16(v62.val[1]);
        v23.i64[0] = v29.i32[2];
        v23.i64[1] = v29.i32[3];
        v30 = vcvtq_f64_s64(v23);
        v23.i64[0] = v29.i32[0];
        v23.i64[1] = v29.i32[1];
        v31 = vcvtq_f64_s64(v23);
        v32 = vmovl_s16(*v62.val[1].i8);
        v23.i64[0] = v32.i32[2];
        v23.i64[1] = v32.i32[3];
        v33 = vcvtq_f64_s64(v23);
        v23.i64[0] = v32.i32[0];
        v23.i64[1] = v32.i32[1];
        v34 = vcvtq_f64_s64(v23);
        v35 = vmovl_high_s16(v62.val[2]);
        v23.i64[0] = v35.i32[2];
        v23.i64[1] = v35.i32[3];
        v36 = vcvtq_f64_s64(v23);
        v23.i64[0] = v35.i32[0];
        v23.i64[1] = v35.i32[1];
        v37 = vcvtq_f64_s64(v23);
        v38 = vmovl_s16(*v62.val[2].i8);
        v23.i64[0] = v38.i32[2];
        v23.i64[1] = v38.i32[3];
        v39 = vcvtq_f64_s64(v23);
        v23.i64[0] = v38.i32[0];
        v23.i64[1] = v38.i32[1];
        v40 = vcvtq_f64_s64(v23);
        v41 = vmovl_s16(*v62.val[3].i8);
        v23.i64[0] = v41.i32[0];
        v23.i64[1] = v41.i32[1];
        v42 = vcvtq_f64_s64(v23);
        v23.i64[0] = v41.i32[2];
        v23.i64[1] = v41.i32[3];
        v43 = vcvtq_f64_s64(v23);
        v62.val[0] = vmovl_high_s16(v62.val[3]);
        v23.i64[0] = v62.val[0].i32[0];
        v23.i64[1] = v62.val[0].i32[1];
        v62.val[1] = vcvtq_f64_s64(v23);
        v23.i64[0] = v62.val[0].i32[2];
        v23.i64[1] = v62.val[0].i32[3];
        v62.val[0] = vcvtq_f64_s64(v23);
        v44 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v30, v30), v28, v28), v36, v36), v62.val[0], v62.val[0]);
        a8 = v44.f64[1];
        v45 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v31, v31), v27, v27), v37, v37), v62.val[1], v62.val[1]);
        a9 = v45.f64[1];
        a11 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v33, v33), v25, v25), v39, v39), v43, v43);
        a10 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v34, v34), v24, v24), v40, v40), v42, v42);
        v17 = v17 + a10.f64[0] + a10.f64[1] + a11.f64[0] + a11.f64[1] + v45.f64[0] + v45.f64[1] + v44.f64[0] + v44.f64[1];
        v20 -= 8;
      }

      while (v20);
      if (v19 == (v19 & 0x3FFFFFF8))
      {
LABEL_20:
        v16 = (v15 & 0xFFFFFFFC) + 4;
        if (v16 >= v14)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v18 = 0;
      v17 = 0.0;
    }

    v46 = &a1[v18 + 2];
    do
    {
      LOWORD(a8) = *(v46 - 2);
      v47 = vmovl_s16(*&a8).u32[0];
      LOWORD(a9) = *(v46 - 1);
      v48 = vmovl_s16(*&a9).u32[0];
      LOWORD(a10.f64[0]) = *v46;
      a10.f64[0] = vmovl_s16(*&a10.f64[0]).i32[0];
      LOWORD(a11.f64[0]) = v46[1];
      *&a11.f64[0] = vmovl_s16(*&a11.f64[0]).i32[0];
      v49 = v48 * v48 + v47 * v47;
      a9 = *&a11.f64[0];
      a8 = v49 + a10.f64[0] * a10.f64[0] + a9 * a9;
      v17 = v17 + a8;
      v18 += 4;
      v46 += 4;
    }

    while (v18 <= v15);
    goto LABEL_20;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      if (*(a2 + i))
      {
        for (j = 0; j != a5; ++j)
        {
          a7.i16[0] = a1[j];
          *&a7 = vmovl_s16(a7).i32[0];
          v11 = v11 + *&a7 * *&a7;
        }
      }

      a1 += a5;
    }
  }

LABEL_30:
  *a3 = v11;
  return 0;
}

uint64_t sub_1002A7994(uint64_t a1, unsigned __int8 *a2, double *a3, int a4, int a5)
{
  v5 = *a3;
  if (!a2)
  {
    v9 = a5 * a4;
    v10 = (a5 * a4 - 4);
    if (a5 * a4 < 4)
    {
      v11 = 0;
      v12 = 0.0;
      if (v9 <= 0)
      {
        goto LABEL_42;
      }

LABEL_35:
      v49 = v11;
      v50 = (v9 + ~v11);
      if (v50 > 6)
      {
        v52 = v50 + 1;
        v53 = (v50 + 1) & 0x1FFFFFFF8;
        v51 = v53 + v49;
        v54 = a1 + 4 * v49 + 16;
        v55 = v53;
        do
        {
          v56 = *(v54 - 16);
          v57.i64[0] = v56;
          v57.i64[1] = SDWORD1(v56);
          v58 = vcvtq_f64_s64(v57);
          v57.i64[0] = SDWORD2(v56);
          v57.i64[1] = SHIDWORD(v56);
          v59 = vcvtq_f64_s64(v57);
          v57.i64[0] = *v54;
          v57.i64[1] = HIDWORD(*v54);
          v60 = vcvtq_f64_s64(v57);
          v57.i64[0] = *(v54 + 8);
          v57.i64[1] = HIDWORD(*v54);
          v61 = vcvtq_f64_s64(v57);
          v62 = vmulq_f64(v59, v59);
          v63 = vmulq_f64(v58, v58);
          v64 = vmulq_f64(v61, v61);
          v65 = vmulq_f64(v60, v60);
          v12 = v12 + v63.f64[0] + v63.f64[1] + v62.f64[0] + v62.f64[1] + v65.f64[0] + v65.f64[1] + v64.f64[0] + v64.f64[1];
          v54 += 32;
          v55 -= 8;
        }

        while (v55);
        if (v52 == v53)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v51 = v49;
      }

      v66 = (a1 + 4 * v51);
      do
      {
        v67 = *v66++;
        v12 = v12 + v67 * v67;
        LODWORD(v51) = v51 + 1;
      }

      while (v9 > v51);
LABEL_42:
      v5 = v5 + v12;
      goto LABEL_43;
    }

    if (v10 > 0xB)
    {
      v31 = (v10 >> 2) + 1;
      v13 = 4 * (v31 & 0x3FFFFFFC);
      v32 = (a1 + 32);
      v12 = 0.0;
      v33 = v31 & 0x3FFFFFFC;
      do
      {
        v34 = v32 - 8;
        v69 = vld4_f32(v34);
        v70 = vld4_f32(v32);
        v35.i64[0] = v69.val[0].i32[0];
        v35.i64[1] = v69.val[0].i32[1];
        v36 = vcvtq_f64_s64(v35);
        v35.i64[0] = v70.val[0].i32[0];
        v35.i64[1] = v70.val[0].i32[1];
        v37 = vcvtq_f64_s64(v35);
        v35.i64[0] = v69.val[1].i32[0];
        v35.i64[1] = v69.val[1].i32[1];
        v38 = vcvtq_f64_s64(v35);
        v35.i64[0] = v70.val[1].i32[0];
        v35.i64[1] = v70.val[1].i32[1];
        v39 = vcvtq_f64_s64(v35);
        v35.i64[0] = v69.val[2].i32[0];
        v35.i64[1] = v69.val[2].i32[1];
        v40 = vcvtq_f64_s64(v35);
        v35.i64[0] = v70.val[2].i32[0];
        v35.i64[1] = v70.val[2].i32[1];
        v41 = vcvtq_f64_s64(v35);
        v35.i64[0] = v69.val[3].i32[0];
        v35.i64[1] = v69.val[3].i32[1];
        *v69.val[0].f32 = vcvtq_f64_s64(v35);
        v35.i64[0] = v70.val[3].i32[0];
        v35.i64[1] = v70.val[3].i32[1];
        *v69.val[1].f32 = vcvtq_f64_s64(v35);
        *v69.val[2].f32 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v38, v38), v36, v36), v40, v40), *v69.val[0].f32, *v69.val[0].f32);
        *v69.val[3].f32 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v39, v39), v37, v37), v41, v41), *v69.val[1].f32, *v69.val[1].f32);
        v12 = v12 + *&v69.val[2] + v42 + *&v69.val[3] + v43;
        v32 += 16;
        v33 -= 4;
      }

      while (v33);
      if (v31 == (v31 & 0x3FFFFFFC))
      {
LABEL_34:
        v11 = (v10 & 0xFFFFFFFC) + 4;
        if (v11 >= v9)
        {
          goto LABEL_42;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0.0;
    }

    v44 = (a1 + 4 * v13 + 8);
    do
    {
      v45 = *(v44 - 2);
      v46 = *(v44 - 1);
      v47 = *v44;
      v48 = v44[1];
      v44 += 4;
      v12 = v12 + v46 * v46 + v45 * v45 + v47 * v47 + v48 * v48;
      v13 += 4;
    }

    while (v13 <= v10);
    goto LABEL_34;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    v6 = a4;
    if (a5 >= 8)
    {
      v14 = 0;
      v15 = a1 + 16;
      v16 = 4 * a5;
      do
      {
        if (a2[v14])
        {
          v17 = a5 & 0x7FFFFFF8;
          v18 = v15;
          do
          {
            v19 = *(v18 - 16);
            v20.i64[0] = v19;
            v20.i64[1] = SDWORD1(v19);
            v21 = vcvtq_f64_s64(v20);
            v20.i64[0] = SDWORD2(v19);
            v20.i64[1] = SHIDWORD(v19);
            v22 = vcvtq_f64_s64(v20);
            v20.i64[0] = *v18;
            v20.i64[1] = HIDWORD(*v18);
            v23 = vcvtq_f64_s64(v20);
            v20.i64[0] = *(v18 + 8);
            v20.i64[1] = HIDWORD(*v18);
            v24 = vcvtq_f64_s64(v20);
            v25 = vmulq_f64(v22, v22);
            v26 = vmulq_f64(v21, v21);
            v27 = vmulq_f64(v24, v24);
            v28 = vmulq_f64(v23, v23);
            v5 = v5 + v26.f64[0] + v26.f64[1] + v25.f64[0] + v25.f64[1] + v28.f64[0] + v28.f64[1] + v27.f64[0] + v27.f64[1];
            v18 += 32;
            v17 -= 8;
          }

          while (v17);
          if ((a5 & 0x7FFFFFF8) != a5)
          {
            v29 = a5 & 0x7FFFFFF8;
            do
            {
              v30 = *(a1 + 4 * v29);
              v5 = v5 + v30 * v30;
              ++v29;
            }

            while (a5 != v29);
          }
        }

        ++v14;
        v15 += v16;
        a1 += v16;
      }

      while (v14 != a4);
    }

    else
    {
      v7 = (a1 + 12);
      do
      {
        if (*a2++)
        {
          v5 = v5 + *(v7 - 3) * *(v7 - 3);
          if (a5 != 1)
          {
            v5 = v5 + *(v7 - 2) * *(v7 - 2);
            if (a5 != 2)
            {
              v5 = v5 + *(v7 - 1) * *(v7 - 1);
              if (a5 != 3)
              {
                v5 = v5 + *v7 * *v7;
                if (a5 != 4)
                {
                  v5 = v5 + v7[1] * v7[1];
                  if (a5 != 5)
                  {
                    v5 = v5 + v7[2] * v7[2];
                    if (a5 != 6)
                    {
                      v5 = v5 + v7[3] * v7[3];
                    }
                  }
                }
              }
            }
          }
        }

        v7 += a5;
        --v6;
      }

      while (v6);
    }
  }

LABEL_43:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A7D78(uint64_t a1, uint64_t a2, double *a3, int a4, int a5)
{
  v5 = *a3;
  if (!a2)
  {
    v8 = a5 * a4;
    v9 = (a5 * a4 - 4);
    if (a5 * a4 < 4)
    {
      v10 = 0;
      v11 = 0.0;
      if (v8 <= 0)
      {
        goto LABEL_29;
      }

LABEL_21:
      v24 = v10;
      v25 = (v8 + ~v10);
      if (v25)
      {
        v26 = v25 + 1;
        v27 = (v25 + 1) & 0x1FFFFFFFELL;
        v28 = v27 + v24;
        v29 = (a1 + 8 * v24 + 8);
        v30 = v27;
        do
        {
          v11 = v11 + *(v29 - 1) * *(v29 - 1) + *v29 * *v29;
          v29 += 2;
          v30 -= 2;
        }

        while (v30);
        if (v26 == v27)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v28 = v24;
      }

      v31 = (a1 + 8 * v28);
      do
      {
        v32 = *v31++;
        v11 = v11 + v32 * v32;
        LODWORD(v28) = v28 + 1;
      }

      while (v8 > v28);
LABEL_29:
      v5 = v5 + v11;
      goto LABEL_30;
    }

    if (v9 > 0xB)
    {
      v13 = (v9 >> 2) + 1;
      v12 = 4 * (v13 & 0x3FFFFFFC);
      v14 = (a1 + 64);
      v11 = 0.0;
      v15 = v13 & 0x3FFFFFFC;
      do
      {
        v16 = v14 - 8;
        v34 = vld4q_f64(v16);
        v35 = vld4q_f64(v14);
        v17 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v34.val[1], v34.val[1]), v34.val[0], v34.val[0]), v34.val[2], v34.val[2]), v34.val[3], v34.val[3]);
        v18 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v35.val[1], v35.val[1]), v35.val[0], v35.val[0]), v35.val[2], v35.val[2]), v35.val[3], v35.val[3]);
        v11 = v11 + v17.f64[0] + v17.f64[1] + v18.f64[0] + v18.f64[1];
        v14 += 16;
        v15 -= 4;
      }

      while (v15);
      if (v13 == (v13 & 0x3FFFFFFC))
      {
LABEL_20:
        v10 = (v9 & 0xFFFFFFFC) + 4;
        if (v10 >= v8)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v12 = 0;
      v11 = 0.0;
    }

    v19 = (a1 + 8 * v12 + 16);
    do
    {
      v20 = *(v19 - 2);
      v21 = *(v19 - 1);
      v22 = *v19;
      v23 = v19[1];
      v19 += 4;
      v11 = v11 + v21 * v21 + v20 * v20 + v22 * v22 + v23 * v23;
      v12 += 4;
    }

    while (v12 <= v9);
    goto LABEL_20;
  }

  if (a4 >= 1 && a5 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      if (*(a2 + i))
      {
        v7 = 0;
        do
        {
          v5 = v5 + *(a1 + v7) * *(a1 + v7);
          v7 += 8;
        }

        while (8 * a5 != v7);
      }

      a1 += 8 * a5;
    }
  }

LABEL_30:
  *a3 = v5;
  return 0;
}

uint64_t sub_1002A7F44(uint64_t a1, int a2)
{
  sub_1002ACE7C(v23, &off_100475538);
  v4 = (a2 - 16);
  if (a2 >= 16)
  {
    v7 = 0;
    v6 = 0uLL;
    do
    {
      v6 = vpadalq_u16(v6, vpaddlq_u8(vcntq_s8(*(a1 + v7))));
      v7 += 16;
    }

    while (v7 <= v4);
    v5 = (v4 & 0xFFFFFFF0) + 16;
  }

  else
  {
    v5 = 0;
    v6 = 0uLL;
  }

  v8 = vpadd_s32(*&vpaddq_s32(v6, v6), *&vextq_s8(v6, v6, 8uLL)).u32[0];
  if (v5 <= a2 - 4)
  {
    v9 = (a1 + v5 + 1);
    do
    {
      v8 = v8 + byte_1003E5068[*(v9 - 1)] + byte_1003E5068[*v9] + byte_1003E5068[v9[1]] + byte_1003E5068[v9[2]];
      v5 += 4;
      v9 += 4;
    }

    while (a2 - 4 >= v5);
  }

  if (v5 < a2)
  {
    v10 = v5;
    v11 = (~v5 + a2);
    if (v11)
    {
      v12 = 0;
      v13 = v11 + 1;
      v14 = (v11 + 1) & 0x1FFFFFFFELL;
      v15 = v14 + v10;
      v16 = (v10 + a1 + 1);
      v17 = v14;
      do
      {
        v18 = *(v16 - 1);
        v19 = *v16;
        v16 += 2;
        LODWORD(v8) = v8 + byte_1003E5068[v18];
        v12 += byte_1003E5068[v19];
        v17 -= 2;
      }

      while (v17);
      v8 = (v12 + v8);
      if (v13 == v14)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v15 = v10;
    }

    v20 = (a1 + v15);
    do
    {
      v21 = *v20++;
      v8 = v8 + byte_1003E5068[v21];
      LODWORD(v15) = v15 + 1;
    }

    while (v15 < a2);
  }

LABEL_18:
  if (v24)
  {
    sub_1002ACC1C(v23);
  }

  return v8;
}

uint64_t sub_1002A80E0(void *a1, uint64_t a2)
{
  v4 = sub_1001D8FE8((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  *v4++ = 1;
  *a1 = v4;
  a1[1] = a2;
  *(v4 + a2) = 0;
  return *a1;
}

void sub_1002A8124(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  a1[1] = 0;
  if (v1)
  {
    if (atomic_fetch_add((v1 - 4), 0xFFFFFFFF) == 1)
    {
      j__free((v1 - 4));
    }
  }
}

uint64_t sub_1002A814C()
{
  if (!qword_1004BD7F8)
  {
    operator new();
  }

  return qword_1004BD7F8;
}

uint64_t sub_1002A833C(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, int a6)
{
  *a1 = off_100475568;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  v7 = *a3;
  v8 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v8;
  if (v7)
  {
    atomic_fetch_add((v7 - 4), 1u);
  }

  v9 = *a4;
  v10 = a4[1];
  *(a1 + 48) = *a4;
  *(a1 + 56) = v10;
  if (v9)
  {
    atomic_fetch_add((v9 - 4), 1u);
  }

  v11 = *a5;
  v12 = a5[1];
  *(a1 + 64) = *a5;
  *(a1 + 72) = v12;
  if (v11)
  {
    atomic_fetch_add((v11 - 4), 1u);
  }

  *(a1 + 80) = a6;
  sub_1002A8448(a1);
  return a1;
}

void sub_1002A8400(_Unwind_Exception *a1)
{
  v6 = v5;
  sub_1002A8124(v6);
  sub_1002A8124(v4);
  sub_1002A8124(v3);
  sub_1002A8124(v2);
  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void sub_1002A8448(uint64_t *a1)
{
  if (a1[7])
  {
    sub_1002A8688(&v6, "%s:%d: error: (%d) %s in function %s\n");
    if (&v6 != a1 + 1)
    {
      sub_1002A8124(a1 + 1);
      v2 = v6;
      if (v6)
      {
        atomic_fetch_add((v6 - 4), 1u);
        v2 = v6;
      }

      v3 = v7;
      a1[1] = v2;
      a1[2] = v3;
    }
  }

  else
  {
    sub_1002A8688(&v6, "%s:%d: error: (%d) %s\n");
    if (&v6 != a1 + 1)
    {
      sub_1002A8124(a1 + 1);
      v4 = v6;
      if (v6)
      {
        atomic_fetch_add((v6 - 4), 1u);
        v4 = v6;
      }

      v5 = v7;
      a1[1] = v4;
      a1[2] = v5;
    }
  }

  sub_1002A8124(&v6);
}

void sub_1002A85B8(uint64_t a1)
{
  *a1 = off_100475568;
  sub_1002A8124((a1 + 64));
  sub_1002A8124((a1 + 48));
  sub_1002A8124((a1 + 32));
  sub_1002A8124((a1 + 8));

  std::exception::~exception(a1);
}

void sub_1002A8638(uint64_t a1)
{
  sub_1002A85B8(a1);

  operator delete();
}

const char *sub_1002A8670(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return *(a1 + 8);
  }

  else
  {
    return "";
  }
}

uint64_t *sub_1002A8688@<X0>(uint64_t *__return_ptr a1@<X8>, char *__format@<X0>, ...)
{
  va_start(va, __format);
  v4 = 1024;
  v17 = v19;
  v18 = 1024;
  va_copy(v16, va);
  result = vsnprintf(v19, 0x400uLL, __format, va);
  if ((result & 0x80000000) != 0)
  {
LABEL_26:
    v15[0] = 0;
    v15[1] = 0;
    qmemcpy(sub_1002A80E0(v15, 44), "len >= 0 && Check format string for errors", 44);
    sub_1002A8980(-215, v15, "format", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 809);
  }

  v6 = 0x40000000000;
  while (result >= v4)
  {
    v7 = (result + 1);
    v8 = v18;
    if (v18 >= v7)
    {
      v18 = (result + 1);
    }

    else
    {
      v9 = v17;
      if (result >= 0x400)
      {
        operator new[]();
      }

      v17 = v19;
      v18 = (result + 1);
      if (v8 && v19 != v9)
      {
        for (i = 0; i != v8; ++i)
        {
          v17[i] = v9[i];
        }
      }

      do
      {
        v17[v8++] = 0;
      }

      while (v7 != v8);
      if (v9 != v19)
      {
        if (v9)
        {
          operator delete[]();
        }
      }
    }

    va_copy(v16, va);
    v4 = v18;
    v6 = v18 << 32;
    result = vsnprintf(v17, v18, __format, va);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_26;
    }
  }

  v17[(v6 - 0x100000000) >> 32] = 0;
  v11 = v17;
  *a1 = 0;
  a1[1] = 0;
  if (result && v11)
  {
    v12 = result;
    v13 = sub_1002A80E0(a1, result);
    result = memcpy(v13, v11, v12);
    v11 = v17;
  }

  if (v11 != v19 && v11 != 0)
  {
    operator delete[]();
  }

  return result;
}

void sub_1002A88B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1002A8918()
{
  result = *&qword_1004BD800;
  if (*&qword_1004BD800 == 0.0)
  {
    mach_timebase_info(&info);
    LODWORD(v2) = info.numer;
    LODWORD(v1) = info.denom;
    result = v1 * 1000000000.0 / v2;
    qword_1004BD800 = *&result;
  }

  return result;
}

void sub_1002A8980(int a1, uint64_t *a2, char *__s, char *a4, int a5)
{
  v17[0] = 0;
  v17[1] = 0;
  if (__s)
  {
    v10 = strlen(__s);
    if (v10)
    {
      v11 = v10;
      v12 = sub_1002A80E0(v17, v10);
      memcpy(v12, __s, v11);
    }
  }

  v16[0] = 0;
  v16[1] = 0;
  if (a4)
  {
    v13 = strlen(a4);
    if (v13)
    {
      v14 = v13;
      v15 = sub_1002A80E0(v16, v13);
      memcpy(v15, a4, v14);
    }
  }

  sub_1002A833C(v18, a1, a2, v17, v16, a5);
  sub_1002A8AA4(v18);
}

void sub_1002A8A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_1002A8AA4(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2 = *(v1 + 24);
  if (off_1004BD938)
  {
    if (*(v1 + 48))
    {
      v9 = *(v1 + 48);
    }

    else
    {
      v9 = "";
    }

    if (*(v1 + 32))
    {
      v10 = *(v1 + 32);
    }

    else
    {
      v10 = "";
    }

    if (*(v1 + 64))
    {
      v11 = *(v1 + 64);
    }

    else
    {
      v11 = "";
    }

    off_1004BD938(v2, v9, v10, v11, *(v1 + 80), qword_1004BD940);
    if (byte_1004BD928 != 1)
    {
LABEL_15:
      exception = __cxa_allocate_exception(0x58uLL);
      sub_1002A91B8(exception, v1);
    }
  }

  else
  {
    v3 = sub_1002A8C3C(v2);
    sub_1002A8A74(v13, 4096, "OpenCV Error: %s (%s) in %s, file %s, line %d", v4, v5, v6, v7, v8, v3);
    fprintf(__stderrp, "%s\n", v13);
    fflush(__stderrp);
    if (byte_1004BD928 != 1)
    {
      goto LABEL_15;
    }
  }

  MEMORY[0] = 0;
  goto LABEL_15;
}

const char *sub_1002A8C3C(int a1)
{
  v2 = a1 + 219;
  result = "No Error";
  switch(v2)
  {
    case 0:
      result = "OpenGL API call";
      break;
    case 1:
      result = "No OpenGL support";
      break;
    case 2:
      result = "Gpu API call";
      break;
    case 3:
      result = "No CUDA support";
      break;
    case 4:
      result = "Assertion failed";
      break;
    case 5:
      result = "Memory block has been corrupted";
      break;
    case 6:
      result = "The function/feature is not implemented";
      break;
    case 7:
      result = "Parsing error";
      break;
    case 8:
      result = "One of arguments' values is out of range";
      break;
    case 9:
      result = "Unsupported format or combination of formats";
      break;
    case 10:
      result = "Sizes of input arguments do not match";
      break;
    case 11:
      result = "Bad type of mask argument";
      break;
    case 12:
      result = "Bad parameter of type CvPoint";
      break;
    case 13:
      result = "Bad flag (parameter or structure field)";
      break;
    case 14:
      result = "Formats of input arguments do not match";
      break;
    case 15:
      result = "Requested object was not found";
      break;
    case 16:
      result = "Inplace operation is not supported";
      break;
    case 17:
      result = "Division by zero occurred";
      break;
    case 18:
      result = "Incorrect size of input array";
      break;
    case 192:
      result = "Null pointer";
      break;
    case 195:
      result = "Input COI is not supported";
      break;
    case 202:
      result = "Input image depth is not supported by function";
      break;
    case 204:
      result = "Bad number of channels";
      break;
    case 206:
      result = "Image step is wrong";
      break;
    case 211:
      result = "Autotrace call";
      break;
    case 212:
      result = "Iterations do not converge";
      break;
    case 214:
      result = "Bad argument";
      break;
    case 215:
      result = "Insufficient memory";
      break;
    case 216:
      result = "Internal error";
      break;
    case 217:
      result = "Unspecified error";
      break;
    case 218:
      result = "Backtrace";
      break;
    case 219:
      return result;
    default:
      v4 = "error";
      if (a1 >= 0)
      {
        v4 = "status";
      }

      sprintf(byte_1004BD808, "Unknown %s code %d", v4, a1);
      result = byte_1004BD808;
      break;
  }

  return result;
}

uint64_t sub_1002A91B8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  *result = off_100475568;
  *(result + 8) = v2;
  *(result + 16) = v3;
  if (v2)
  {
    atomic_fetch_add((v2 - 4), 1u);
  }

  *(result + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  *(result + 32) = v4;
  *(result + 40) = v5;
  if (v4)
  {
    atomic_fetch_add((v4 - 4), 1u);
  }

  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  *(result + 48) = v6;
  *(result + 56) = v7;
  if (v6)
  {
    atomic_fetch_add((v6 - 4), 1u);
  }

  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  *(result + 64) = v8;
  *(result + 72) = v9;
  if (v8)
  {
    atomic_fetch_add((v8 - 4), 1u);
  }

  *(result + 80) = *(a2 + 80);
  return result;
}

void sub_1002A9248(int a1, char *__s, char *a3, char *a4, int a5)
{
  v21[0] = 0;
  v21[1] = 0;
  if (a3)
  {
    v10 = strlen(a3);
    if (v10)
    {
      v11 = v10;
      v12 = sub_1002A80E0(v21, v10);
      memcpy(v12, a3, v11);
    }
  }

  v20[0] = 0;
  v20[1] = 0;
  if (__s)
  {
    v13 = strlen(__s);
    if (v13)
    {
      v14 = v13;
      v15 = sub_1002A80E0(v20, v13);
      memcpy(v15, __s, v14);
    }
  }

  v19[0] = 0;
  v19[1] = 0;
  if (a4)
  {
    v16 = strlen(a4);
    if (v16)
    {
      v17 = v16;
      v18 = sub_1002A80E0(v19, v16);
      memcpy(v18, a4, v17);
    }
  }

  sub_1002A833C(v22, a1, v21, v20, v19, a5);
  sub_1002A8AA4(v22);
}

void sub_1002A9330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_1002A8124(va1);
  _Unwind_Resume(a1);
}

pthread_mutex_t **sub_1002A9380(pthread_mutex_t **result)
{
  if (atomic_fetch_add(&(*result)[1], 0xFFFFFFFF) == 1 && *result)
  {
    pthread_mutex_destroy(*result);
    operator delete();
  }

  *result = 0;
  return result;
}

pthread_key_t *sub_1002A93FC(pthread_key_t *a1)
{
  if (pthread_key_delete(*a1))
  {
    v3[0] = 0;
    v3[1] = 0;
    qmemcpy(sub_1002A80E0(v3, 31), "pthread_key_delete(tlsKey) == 0", 31);
    sub_1002A8980(-215, v3, "~TlsAbstraction", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1305);
  }

  return a1;
}

uint64_t sub_1002A9484(uint64_t a1)
{
  *a1 = off_1004755A8;
  v2 = sub_1002A94D0();
  *(a1 + 8) = sub_1002A9598(v2);
  return a1;
}

uint64_t sub_1002A94D0()
{
  if (!qword_1004BD910)
  {
    v0 = sub_1002A814C();
    pthread_mutex_lock(*v0);
    if (!qword_1004BD910)
    {
      operator new();
    }

    pthread_mutex_unlock(*v0);
  }

  return qword_1004BD910;
}

void sub_1002A9580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002AA158(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002A9598(void *a1)
{
  v3 = (a1 + 1);
  v2 = a1[1];
  v8[2] = v3;
  pthread_mutex_lock(v2);
  v4 = a1[3];
  v5 = a1[2];
  if (v5 != (a1[4] - v4) >> 2)
  {
    v8[0] = 0;
    v8[1] = 0;
    qmemcpy(sub_1002A80E0(v8, 31), "tlsSlotsSize == tlsSlots.size()", 31);
    sub_1002A8980(-215, v8, "reserveSlot", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1380);
  }

  if (v5)
  {
    v6 = 0;
    while (*(v4 + 4 * v6))
    {
      if (v5 == ++v6)
      {
        goto LABEL_6;
      }
    }

    *(v4 + 4 * v6) = 1;
  }

  else
  {
LABEL_6:
    LODWORD(v8[0]) = 1;
    sub_100282308((a1 + 3), v8);
    v6 = a1[2];
    a1[2] = v6 + 1;
  }

  pthread_mutex_unlock(*v3);
  return v6;
}

void sub_1002A9690(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_1002AA158(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002A96C0(uint64_t result)
{
  *result = off_1004755A8;
  if (*(result + 8) != -1)
  {
    v2[0] = 0;
    v2[1] = 0;
    v1 = sub_1002A80E0(v2, 10);
    *(v1 + 8) = 12589;
    *v1 = *"key_ == -1";
    sub_1002A8980(-215, v2, "~TLSDataContainer", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1503);
  }

  return result;
}

uint64_t sub_1002A975C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002A94D0();
  v5 = *(a1 + 8);

  return sub_1002A979C(v4, v5, a2);
}

uint64_t sub_1002A979C(void *a1, unint64_t a2, uint64_t a3)
{
  v7 = (a1 + 1);
  v6 = a1[1];
  v18 = v7;
  pthread_mutex_lock(v6);
  v8 = v7[1];
  if (v8 != (v7[3] - v7[2]) >> 2)
  {
    v16 = 0;
    v17 = 0;
    qmemcpy(sub_1002A80E0(&v16, 31), "tlsSlotsSize == tlsSlots.size()", 31);
    sub_1002A8980(-215, &v16, "gather", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1439);
  }

  if (v8 <= a2)
  {
    v16 = 0;
    v17 = 0;
    qmemcpy(sub_1002A80E0(&v16, 22), "tlsSlotsSize > slotIdx", 22);
    sub_1002A8980(-215, &v16, "gather", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1440);
  }

  v10 = a1[6];
  v9 = a1[7];
  if (v9 != v10)
  {
    v11 = 0;
    do
    {
      v12 = *(v10 + 8 * v11);
      if (v12)
      {
        v13 = *v12;
        if (a2 < (*(*(v10 + 8 * v11) + 8) - v13) >> 3)
        {
          v14 = (v13 + 8 * a2);
          if (*v14)
          {
            sub_1002AB17C(a3, v14);
            v10 = a1[6];
            v9 = a1[7];
          }
        }
      }

      ++v11;
    }

    while (v11 < (v9 - v10) >> 3);
  }

  return pthread_mutex_unlock(*v7);
}

void sub_1002A9900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_1002AA158(va1);
  _Unwind_Resume(a1);
}

void sub_1002A9948()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_1002A9A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A9A34(void *a1, unint64_t a2, uint64_t a3, char a4)
{
  v9 = (a1 + 1);
  v8 = a1[1];
  v19 = v9;
  pthread_mutex_lock(v8);
  v10 = v9[1];
  if (v10 != (v9[3] - v9[2]) >> 2)
  {
    v17 = 0;
    v18 = 0;
    qmemcpy(sub_1002A80E0(&v17, 31), "tlsSlotsSize == tlsSlots.size()", 31);
    sub_1002A8980(-215, &v17, "releaseSlot", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1401);
  }

  if (v10 <= a2)
  {
    v17 = 0;
    v18 = 0;
    qmemcpy(sub_1002A80E0(&v17, 22), "tlsSlotsSize > slotIdx", 22);
    sub_1002A8980(-215, &v17, "releaseSlot", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1402);
  }

  v12 = a1[6];
  v11 = a1[7];
  if (v11 != v12)
  {
    v13 = 0;
    do
    {
      v14 = *(v12 + 8 * v13);
      if (v14)
      {
        if (a2 < (v14[1] - *v14) >> 3)
        {
          v15 = (*v14 + 8 * a2);
          if (*v15)
          {
            sub_1002AB17C(a3, v15);
            *(*v14 + 8 * a2) = 0;
            v12 = a1[6];
            v11 = a1[7];
          }
        }
      }

      ++v13;
    }

    while (v13 < (v11 - v12) >> 3);
  }

  if ((a4 & 1) == 0)
  {
    *(a1[3] + 4 * a2) = 0;
  }

  return pthread_mutex_unlock(*v9);
}

void sub_1002A9BB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_1002AA158(va1);
  _Unwind_Resume(a1);
}

void *sub_1002A9C00(_DWORD *a1)
{
  if (a1[2] == -1)
  {
    v6[0] = 0;
    v6[1] = 0;
    qmemcpy(sub_1002A80E0(v6, 63), "key_ != -1 && Can't fetch data from terminated TLS container.", 63);
    sub_1002A8980(-215, v6, "getData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1532);
  }

  v2 = sub_1002A94D0();
  result = sub_1002A9D00(v2, a1[2]);
  if (!result)
  {
    v4 = (*(*a1 + 16))(a1);
    v5 = sub_1002A94D0();
    sub_1002A9DCC(v5, a1[2], v4);
    return v4;
  }

  return result;
}

void *sub_1002A9D00(pthread_key_t *a1, unint64_t a2)
{
  if (a1[2] <= a2)
  {
    v4[0] = 0;
    v4[1] = 0;
    qmemcpy(sub_1002A80E0(v4, 22), "tlsSlotsSize > slotIdx", 22);
    sub_1002A8980(-215, v4, "getData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1425);
  }

  result = pthread_getspecific(*a1);
  if (result)
  {
    if (a2 >= (result[1] - *result) >> 3)
    {
      return 0;
    }

    else
    {
      return *(*result + 8 * a2);
    }
  }

  return result;
}

uint64_t *sub_1002A9DCC(pthread_key_t *a1, unint64_t a2, uint64_t a3)
{
  if (a1[2] <= a2)
  {
    v14[0] = 0;
    v14[1] = 0;
    qmemcpy(sub_1002A80E0(v14, 22), "tlsSlotsSize > slotIdx", 22);
    sub_1002A8980(-215, v14, "setData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1457);
  }

  result = pthread_getspecific(*a1);
  v13 = result;
  if (!result)
  {
    operator new();
  }

  v7 = *result;
  if (a2 >= (result[1] - *result) >> 3)
  {
    v9 = a1[1];
    v8 = (a1 + 1);
    v14[0] = v8;
    pthread_mutex_lock(v9);
    v10 = a2 + 1;
    v12 = 0;
    v11 = (v13[1] - *v13) >> 3;
    if (v11 <= a2)
    {
      sub_1002AB3AC(v13, v10 - v11, &v12);
    }

    else if (v10 < v11)
    {
      v13[1] = *v13 + 8 * v10;
    }

    result = pthread_mutex_unlock(*v8);
    v7 = *v13;
  }

  *(v7 + 8 * a2) = a3;
  return result;
}

void sub_1002A9FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002AA158(va);
  _Unwind_Resume(a1);
}

void sub_1002A9FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002AA158(va);
  _Unwind_Resume(a1);
}

void sub_1002AA008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AA050()
{
  if (!qword_1004BD908)
  {
    v0 = sub_1002A814C();
    pthread_mutex_lock(*v0);
    if (!qword_1004BD908)
    {
      operator new();
    }

    pthread_mutex_unlock(*v0);
  }

  return qword_1004BD908;
}

void sub_1002AA114(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002AA158(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AA18C()
{
  if (!qword_1004BD918)
  {
    v0 = sub_1002A814C();
    pthread_mutex_lock(*v0);
    if (!qword_1004BD918)
    {
      operator new();
    }

    pthread_mutex_unlock(*v0);
  }

  return *sub_1002A9C00(qword_1004BD918);
}

void sub_1002AA258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002AA158(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AA29C(const char *a1, uint64_t a2)
{
  v4 = getenv(a1);
  if (v4)
  {
    v5 = v4;
    v20[0] = 0;
    v20[1] = 0;
    v6 = strlen(v4);
    if (v6)
    {
      v7 = v6;
      v8 = sub_1002A80E0(v20, v6);
      memcpy(v8, v5, v7);
      v9 = v20[0];
      if (v20[0] == "1")
      {
        a2 = 1;
        goto LABEL_31;
      }
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = "";
    }

    v11 = *v10;
    if (v11 == 49)
    {
      v12 = v10[1] == 0;
      a2 = 1;
      if (v9 == "True")
      {
        goto LABEL_31;
      }
    }

    else
    {
      v12 = 0;
      a2 = 1;
      if (v9 == "True")
      {
        goto LABEL_31;
      }
    }

    if (!v12)
    {
      v13 = strcmp(v10, "True");
      if (v9 != "true")
      {
        if (v13)
        {
          v14 = strcmp(v10, "true");
          if (v9 != "TRUE" && v14 && strcmp(v10, "TRUE"))
          {
            if (v9 != "0")
            {
              v15 = v11 == 48 && v10[1] == 0;
              a2 = 0;
              if (v9 == "False")
              {
                goto LABEL_31;
              }

              if (v15)
              {
                goto LABEL_31;
              }

              v16 = strcmp(v10, "False");
              a2 = 0;
              if (v9 == "false")
              {
                goto LABEL_31;
              }

              if (!v16)
              {
                goto LABEL_31;
              }

              v17 = strcmp(v10, "false");
              a2 = 0;
              if (v9 == "FALSE" || !v17)
              {
                goto LABEL_31;
              }

              if (strcmp(v10, "FALSE"))
              {
                sub_1002A8688(v19, "Invalid value for %s parameter: %s", a1, v10);
                sub_1002AA4FC(-5, v19, "getConfigurationParameterBool", 1619);
              }
            }

            a2 = 0;
          }
        }
      }
    }

LABEL_31:
    sub_1002A8124(v20);
  }

  return a2;
}

void sub_1002AA4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_1002A8124(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AA518(const char *a1, uint64_t a2)
{
  v4 = getenv(a1);
  if (v4)
  {
    v5 = v4;
    v32 = 0;
    v33 = 0;
    v6 = strlen(v4);
    if (v6)
    {
      v7 = sub_1002A80E0(&v32, v6);
      memcpy(v7, v5, v6);
      v8 = v33;
      if (v33)
      {
        v6 = 0;
        while (1)
        {
          v9 = v32[v6];
          if (v9 < 0 || (_DefaultRuneLocale.__runetype[v9] & 0x400) == 0)
          {
            break;
          }

          if (v33 == ++v6)
          {
            v6 = v33;
            break;
          }
        }

        v30 = 0;
        v31 = 0;
        if (v33 >= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v33;
        }

        if (v10)
        {
          if (v33 > v6)
          {
            v11 = sub_1002A80E0(&v30, v10);
            memcpy(v11, v32, v10);
            v8 = v33;
          }

          else
          {
            atomic_fetch_add(v32 - 1, 1u);
            v8 = v33;
            v30 = v32;
            v31 = v33;
          }
        }
      }

      else
      {
        v6 = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v8 = 0;
      v30 = 0;
      v31 = 0;
    }

    v12 = v8 - v6;
    v28 = 0;
    v29 = 0;
    if (v8 < v6)
    {
      v6 = v8;
    }

    if (v8 - v6 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v8 - v6;
    }

    if (v13)
    {
      if (v13 == v8)
      {
        atomic_fetch_add(v32 - 1, 1u);
        v14 = v33;
        v28 = v32;
        v29 = v33;
      }

      else
      {
        v15 = sub_1002A80E0(&v28, v13);
        memcpy(v15, &v32[v6], v13);
        v14 = v29;
      }
    }

    else
    {
      v14 = 0;
    }

    if (v30)
    {
      v16 = v30;
    }

    else
    {
      v16 = "";
    }

    v17 = atoi(v16);
    v18 = v17;
    if (!v14)
    {
      goto LABEL_56;
    }

    if (v28 == "MB")
    {
      goto LABEL_55;
    }

    if (v28)
    {
      v19 = v28;
    }

    else
    {
      v19 = "";
    }

    v20 = *v19;
    if (v20 != 77)
    {
      if (v28 == "Mb")
      {
        goto LABEL_55;
      }

      goto LABEL_47;
    }

    if (v19[1] == 66)
    {
      v21 = v19[2] == 0;
      if (v28 == "Mb")
      {
        goto LABEL_55;
      }
    }

    else
    {
      v21 = 0;
      if (v28 == "Mb")
      {
        goto LABEL_55;
      }
    }

    if (!v21)
    {
      if (v19[1] == 98)
      {
        v22 = v19[2] == 0;
LABEL_48:
        if (v28 == "mb" || v22)
        {
          goto LABEL_55;
        }

        if (v20 == 109)
        {
          if (v19[1] == 98 && !v19[2])
          {
            goto LABEL_55;
          }

          if (v28 == "KB")
          {
LABEL_76:
            v18 = v17 << 10;
            goto LABEL_56;
          }
        }

        else
        {
          if (v28 == "KB")
          {
            goto LABEL_76;
          }

          if (v20 == 75)
          {
            v24 = v19[1] == 66 && v19[2] == 0;
            v25 = 1;
            if (v28 == "Kb")
            {
              goto LABEL_76;
            }

            goto LABEL_66;
          }
        }

        v25 = 0;
        v24 = 0;
        if (v28 == "Kb")
        {
          goto LABEL_76;
        }

LABEL_66:
        if (!v24)
        {
          if (v25)
          {
            LOBYTE(v25) = v19[1] == 98 && v19[2] == 0;
          }

          if (v28 != "kb" && (v25 & 1) == 0 && (v20 != 107 || v19[1] != 98 || v19[2]))
          {
            v26 = v32;
            if (!v32)
            {
              v26 = "";
            }

            sub_1002A8688(v27, "Invalid value for %s parameter: %s", a1, v26);
            sub_1002AA4FC(-5, v27, "getConfigurationParameterSizeT", 1650);
          }
        }

        goto LABEL_76;
      }

LABEL_47:
      v22 = 0;
      goto LABEL_48;
    }

LABEL_55:
    v18 = v17 << 20;
LABEL_56:
    sub_1002A8124(&v28);
    sub_1002A8124(&v30);
    sub_1002A8124(&v32);
    return v18;
  }

  return a2;
}

void sub_1002AA8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  sub_1002A8124(va);
  sub_1002A8124(va1);
  sub_1002A8124(va2);
  sub_1002A8124((v3 - 48));
  _Unwind_Resume(a1);
}

const char *sub_1002AA910@<X0>(const char *a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  result = getenv(a1);
  if (result)
  {
    v6 = result;
    *a3 = 0;
    a3[1] = 0;
    result = strlen(result);
    if (!result)
    {
      return result;
    }

    v7 = result;
    v8 = sub_1002A80E0(a3, result);
    v9 = v6;
    v10 = v7;

    return memcpy(v8, v9, v10);
  }

  *a3 = 0;
  a3[1] = 0;
  if (a2)
  {
    result = strlen(a2);
    if (result)
    {
      v11 = result;
      v8 = sub_1002A80E0(a3, result);
      v9 = a2;
      v10 = v11;

      return memcpy(v8, v9, v10);
    }
  }

  return result;
}

void sub_1002AA9D8(_BYTE *a1)
{
  if (getenv("OPENCV_DUMP_CONFIG"))
  {
    v2 = __stderrp;
    if ((atomic_load_explicit(&qword_1004BD930, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004BD930))
    {
      sub_1001FA81C(&qword_1004BD948, aGeneralConfigu);
      __cxa_atexit(sub_1002422D0, &qword_1004BD948, &_mh_execute_header);
      __cxa_guard_release(&qword_1004BD930);
    }

    v3 = qword_1004BD948;
    if (!qword_1004BD948)
    {
      v3 = "";
    }

    fprintf(v2, "\nOpenCV build configuration is:\n%s\n", v3);
  }

  bzero(&unk_1004BDB58, 0x7F8uLL);
  qword_1004BDB60 = "MMX";
  unk_1004BDB68 = "SSE";
  qword_1004BDB70 = "SSE2";
  unk_1004BDB78 = "SSE3";
  qword_1004BDB80 = "SSSE3";
  unk_1004BDB88 = "SSE4.1";
  qword_1004BDB90 = "SSE4.2";
  unk_1004BDB98 = "POPCNT";
  qword_1004BDBA0 = "FP16";
  unk_1004BDBA8 = "AVX";
  qword_1004BDBB0 = "AVX2";
  unk_1004BDBB8 = "FMA3";
  qword_1004BDBC0 = "AVX512F";
  unk_1004BDBC8 = "AVX512BW";
  qword_1004BDBD0 = "AVX512CD";
  unk_1004BDBD8 = "AVX512DQ";
  qword_1004BDBE0 = "AVX512ER";
  unk_1004BDBE8 = "AVX512IFMA";
  qword_1004BDBF0 = "AVX512PF";
  unk_1004BDBF8 = "AVX512VBMI";
  qword_1004BDC00 = "AVX512VL";
  qword_1004BDE78 = "NEON";
  qword_1004BE198 = "VSX";
  a1[100] = 1;
  a1[9] = 1;
  a1[200] = 0;
  v5 = 100;
  v4 = 0x6400000000;
  sub_1002AAC2C(a1, &v4, 3u);
}

void sub_1002AAC2C(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  v6 = getenv("OPENCV_CPU_DISABLE");
  if (v6)
  {
    v7 = v6;
    if (*v6)
    {
      v24 = a3;
      while (1)
      {
        v8 = *v7;
        while (2)
        {
          if ((v8 - 44) < 2)
          {
            goto LABEL_4;
          }

          if (!*v7)
          {
            return;
          }

          if (v8 == 59)
          {
LABEL_4:
            ++v7;
          }

          else
          {
            v9 = 0;
              ;
            }

            if (!v9)
            {
              continue;
            }

            v25 = a1;
            v26 = a2;
            v27 = a3;
            v29 = 0;
            v30 = 0;
            v11 = sub_1002A80E0(&v29, v9);
            memcpy(v11, v7, v9);
            v12 = v30;
            if (!v30)
            {
              v28[0] = 0;
              v28[1] = 0;
              v23 = sub_1002A80E0(v28, 18);
              *(v23 + 16) = 12320;
              *v23 = *"feature.size() > 0";
              sub_1002A8980(-215, v28, "readSettings", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 606);
            }

            v13 = 0;
            v7 += v9;
            v14 = v29;
            if (v29)
            {
              v15 = v29;
            }

            else
            {
              v15 = "";
            }

            while (2)
            {
              v16 = &byte_1004BD928[8 * v13];
              v17 = *(v16 + 70);
              if (v17 && strlen(*(v16 + 70)) == v12 && (v14 == v17 || !strcmp(v15, v17)))
              {
                v18 = v24;
                a1 = v25;
                a2 = v26;
                v19 = v26;
                a3 = v27;
                if (v27 < 1)
                {
LABEL_26:
                  if ((*(v25 + v13) & 1) == 0)
                  {
                    goto LABEL_27;
                  }
                }

                else
                {
                  while (1)
                  {
                    v20 = *v19++;
                    if (v20 == v13)
                    {
                      break;
                    }

                    if (!--v18)
                    {
                      goto LABEL_26;
                    }
                  }

                  v22 = *(v16 + 70);
                  if (!v22)
                  {
                    v22 = "Unknown feature";
                  }

                  fprintf(__stderrp, "OPENCV: Trying to disable baseline CPU feature: '%s'. This has very limited effect, because code optimizations for this feature are executed unconditionally in the most cases.\n", v22);
                  if (*(v25 + v13))
                  {
                    goto LABEL_30;
                  }

LABEL_27:
                  v21 = *(v16 + 70);
                  if (!v21)
                  {
                    v21 = "Unknown feature";
                  }

                  fprintf(__stderrp, "OPENCV: Trying to disable unavailable CPU feature on the current platform: '%s'.\n", v21);
                }

LABEL_30:
                *(v25 + v13) = 0;
                goto LABEL_32;
              }

              if (++v13 != 255)
              {
                continue;
              }

              break;
            }

            fprintf(__stderrp, "OPENCV: Trying to disable unknown CPU feature: '%s'.\n", v15);
            a3 = v27;
            a1 = v25;
            a2 = v26;
LABEL_32:
            sub_1002A8124(&v29);
          }

          break;
        }
      }
    }
  }
}

void sub_1002AAECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_1002A8124(va1);
  _Unwind_Resume(a1);
}

void sub_1002AAEFC(pthread_key_t *a1)
{
  if (!pthread_key_create(a1, 0))
  {
    operator new();
  }

  v1.__sig = 0;
  *v1.__opaque = 0;
  qmemcpy(sub_1002A80E0(&v1, 40), "pthread_key_create(&tlsKey, __null) == 0", 40);
  sub_1002A8980(-215, &v1.__sig, "TlsAbstraction", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/system.cpp", 1301);
}

void sub_1002AB0D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_1002AB110(_Unwind_Exception *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    *(v1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_1002A9380((v1 + 8));
  sub_1002A93FC(v1);
  _Unwind_Resume(a1);
}

void sub_1002AB17C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_10000918C();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_10000927C();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_1002AB294(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_10000918C();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_10000927C();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_1002AB3AC(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      v10 = &v5[a2];
      v11 = *a3;
      v12 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = &v5[v13 & 0x3FFFFFFFFFFFFFFCLL];
      v15 = vdupq_n_s64(v11);
      v16 = (v5 + 2);
      v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      v5 = v14;
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_33:
        do
        {
          *v5++ = v11;
        }

        while (v5 != v10);
      }

      v5 = v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = (v5 - *a1) >> 3;
    v7 = v6 + a2;
    if ((v6 + a2) >> 61)
    {
      sub_10000918C();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_10000927C();
    }

    v18 = 8 * v6;
    v19 = 8 * v6 + 8 * a2;
    v20 = *a3;
    v21 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v22 = (8 * v6);
    if (v21 < 3)
    {
      goto LABEL_34;
    }

    v23 = v21 + 1;
    v22 = (v18 + 8 * (v23 & 0x3FFFFFFFFFFFFFFCLL));
    v24 = vdupq_n_s64(v20);
    v25 = (v18 + 16);
    v26 = v23 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 4;
    }

    while (v26);
    if (v23 != (v23 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_34:
      do
      {
        *v22++ = v20;
      }

      while (v22 != v19);
    }

    v27 = *a1;
    v28 = *(a1 + 8) - *a1;
    v29 = v18 - v28;
    memcpy((v18 - v28), *a1, v28);
    *a1 = v29;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v27)
    {

      operator delete(v27);
    }
  }
}

void sub_1002AB76C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

void sub_1002AB9C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100282298((a2 + 16));

    operator delete();
  }
}

double sub_1002ABA14()
{
  qword_1004D54B0 = sub_1002A814C();
  xmmword_1004BD958 = 0u;
  unk_1004BD968 = 0u;
  xmmword_1004BD978 = 0u;
  unk_1004BD988 = 0u;
  xmmword_1004BD998 = 0u;
  unk_1004BD9A8 = 0u;
  xmmword_1004BD9B8 = 0u;
  unk_1004BD9C8 = 0u;
  xmmword_1004BD9D8 = 0u;
  unk_1004BD9E8 = 0u;
  xmmword_1004BD9F8 = 0u;
  unk_1004BDA08 = 0u;
  xmmword_1004BDA18 = 0u;
  unk_1004BDA28 = 0u;
  xmmword_1004BDA38 = 0u;
  *(&xmmword_1004BDA38 + 15) = 0u;
  sub_1002AA9D8(&xmmword_1004BD958);
  result = 0.0;
  unk_1004BDB47 = 0u;
  xmmword_1004BDB28 = 0u;
  unk_1004BDB38 = 0u;
  xmmword_1004BDB08 = 0u;
  unk_1004BDB18 = 0u;
  xmmword_1004BDAE8 = 0u;
  unk_1004BDAF8 = 0u;
  xmmword_1004BDAC8 = 0u;
  unk_1004BDAD8 = 0u;
  xmmword_1004BDAA8 = 0u;
  unk_1004BDAB8 = 0u;
  xmmword_1004BDA88 = 0u;
  unk_1004BDA98 = 0u;
  xmmword_1004BDA68 = 0u;
  unk_1004BDA78 = 0u;
  xmmword_1004BDA58 = 0u;
  return result;
}

uint64_t sub_1002ABAA0(uint64_t **a1)
{
  v1 = *a1;
  result = **a1;
  if (!result)
  {
    v3 = sub_1002A814C();
    sub_1002A93EC(v3);
    if (!*v1)
    {
      operator new();
    }

    sub_1002A93F4(v3);
    return *v1;
  }

  return result;
}

uint64_t sub_1002ABC0C()
{
  if (!qword_1004BE370)
  {
    v0 = sub_1002A814C();
    sub_1002A93EC(v0);
    if (!qword_1004BE370)
    {
      if ((atomic_load_explicit(&qword_1004BE388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004BE388))
      {
        sub_1002ACF7C();
      }

      qword_1004BE370 = &unk_1004BE3A0;
    }

    sub_1002A93F4(v0);
  }

  return qword_1004BE370;
}

void sub_1002ABCC8(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1004BE388);
  sub_1002A93F4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002ABCF0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 16) = a1[1];
  v4 = *(v3 + 28);
  if (v4)
  {
    if ((v4 & 2) == 0)
    {
      ++*(a2 + 76);
    }

    ++*(a2 + 72);
  }

  result = sub_1002ABE44(a2);
  if (result)
  {
    v12 = result;
    v24 = 0;
    v25 = 0;
    v13 = a1[1];
    sub_1002ACEF0(v23, "b,%d,%lld,%lld,%lld", v6, v7, v8, v9, v10, v11, *(*v13 + 24));
    v20 = *(*v13 + 16);
    if (v20)
    {
      v21 = *v20;
      if (v21)
      {
        if (*(v21 + 24) != *(*v13 + 24))
        {
          sub_1002ACEF0(v23, ",parentThread=%d,parent=%lld", v14, v15, v16, v17, v18, v19, *(v21 + 24));
        }
      }
    }

    sub_1002ACEF0(v23, "\n", v14, v15, v16, v17, v18, v19, v22);
    return (*(*v12 + 16))(v12, v23);
  }

  return result;
}

uint64_t sub_1002ABE44(uint64_t a1)
{
  if (!*(a1 + 168))
  {
    v3 = *(sub_1002ABC0C() + 40);
    if (v3)
    {
      v4 = qword_1004BE390;
      if (!qword_1004BE390)
      {
        v4 = "";
      }

      sub_1002A8688(v19, "%s-%03d.txt", v4, *a1);
      if (v19[0])
      {
        v5 = v19[0];
      }

      else
      {
        v5 = "";
      }

      v6 = strlen(v5);
      if (v6 < 0x7FFFFFFFFFFFFFF8)
      {
        v7 = v6;
        if (v6 < 0x17)
        {
          v18 = v6;
          if (v6)
          {
            memmove(&__dst, v5, v6);
          }

          *(&__dst + v7) = 0;
          sub_1002A8124(v19);
          v19[128] = 0;
          v20 = 0;
          if (v18 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          v9 = strrchr(p_dst, 47);
          if (v9)
          {
            v16 = v9;
          }

          else
          {
            v16 = p_dst;
          }

          sub_1002ACEF0(v19, "#thread file: %s\n", v10, v11, v12, v13, v14, v15, v16);
          (*(*v3 + 16))(v3, v19);
          operator new();
        }

        operator new();
      }

      sub_100241528();
    }
  }

  return *(a1 + 168);
}

void sub_1002AC0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002AC128(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 8) += v4;
  result = sub_1002ABE44(a2);
  if (result)
  {
    v12 = result;
    v22 = 0;
    v23 = 0;
    sub_1002ACEF0(v21, "e,%d,%lld,%lld,%lld,%lld", v6, v7, v8, v9, v10, v11, *(**(a1 + 8) + 24));
    if (v4)
    {
      sub_1002ACEF0(v21, ",skip=%d", v13, v14, v15, v16, v17, v18, v4);
    }

    sub_1002ACEF0(v21, "\n", v13, v14, v15, v16, v17, v18, v20);
    result = (*(*v12 + 16))(v12, v21);
  }

  v19 = *(*a1 + 28);
  if (v19)
  {
    if ((v19 & 2) == 0)
    {
      --*(a2 + 76);
    }

    --*(a2 + 72);
  }

  *(a2 + 16) = *(a1 + 16);
  return result;
}

uint64_t sub_1002AC288(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  if (byte_1004D54B8 == 1)
  {
    byte_1004BE35A = 0;
    return result;
  }

  v3 = result;
  if ((byte_1004BE359 & 1) == 0)
  {
    sub_1002ABC0C();
    result = v3;
  }

  if (byte_1004BE35A == 1)
  {
    v4 = sub_1002ABC0C();
    v5 = sub_1002A9C00((v4 + 16));
    v6 = v5;
    if (!v5)
    {
      v39[0] = 0;
      v39[1] = 0;
      v7 = sub_1002A80E0(v39, 3);
      *v7 = 29808;
      *(v7 + 2) = 114;
      sub_1002A8980(-215, v39, "getRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/include/opencv2/core/utility.hpp", 701);
    }

    v8 = v5[8];
    if (v8)
    {
      v9 = (*(v5[4] + 8 * ((v8 + v5[7] - 1) / 0xAAuLL)) + 24 * ((v8 + v5[7] - 1) % 0xAAuLL));
      v10 = *v9;
      v11 = v9[1];
      if ((*(a2 + 28) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v10 = v5[13];
      v11 = v5[14];
      if ((*(a2 + 28) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v10)
    {
      if (!*v10)
      {
        goto LABEL_23;
      }

      sub_1002ACC1C(v10);
      *(v10 + 2) = 0;
      v12 = v6[8];
      if (v12)
      {
        v13 = (*(v6[4] + 8 * ((v12 + v6[7] - 1) / 0xAAuLL)) + 24 * ((v12 + v6[7] - 1) % 0xAAuLL));
        v14 = v13 + 1;
      }

      else
      {
        v13 = v6 + 13;
        v14 = v6 + 14;
      }

      v10 = *v13;
      v11 = *v14;
    }

LABEL_18:
    if (!v10)
    {
      v16 = 0;
      v17 = j__mach_absolute_time();
      if (atomic_load_explicit(&qword_1004BE380, memory_order_acquire))
      {
        goto LABEL_28;
      }

      goto LABEL_81;
    }

    v15 = *v10;
    if (*v10)
    {
      if (v11)
      {
        v16 = *(v15 + 48) + 1;
        *(v15 + 48) = v16;
        v17 = j__mach_absolute_time();
        if (atomic_load_explicit(&qword_1004BE380, memory_order_acquire))
        {
          goto LABEL_28;
        }
      }

      else
      {
        v16 = atomic_fetch_add((v15 + 48), 1u) + 1;
        v17 = j__mach_absolute_time();
        if (atomic_load_explicit(&qword_1004BE380, memory_order_acquire))
        {
          goto LABEL_28;
        }
      }

LABEL_81:
      if (__cxa_guard_acquire(&qword_1004BE380))
      {
        *&qword_1004BE378 = 1000000000.0 / sub_1002A8918();
        __cxa_guard_release(&qword_1004BE380);
      }

LABEL_28:
      v18 = v6[5];
      v19 = v6[4];
      if (v18 == v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = 170 * ((v18 - v19) >> 3) - 1;
      }

      v21 = (*&qword_1004BE378 * (v17 - qword_1004BE368));
      v22 = v6[8];
      v23 = v6[7] + v22;
      if (v20 == v23)
      {
        sub_1002ADE1C(v6 + 3);
        v19 = v6[4];
        v24 = v6[8];
        v23 = v24 + v6[7];
      }

      else
      {
        v24 = v6[8];
      }

      result = v3;
      v25 = (*(v19 + 8 * (v23 / 0xAA)) + 24 * (v23 % 0xAA));
      *v25 = v3;
      v25[1] = a2;
      v25[2] = v21;
      v6[8] = v24 + 1;
      *(v3 + 8) |= 1u;
      v26 = *(a2 + 28);
      if ((v26 & 0x40000000) == 0)
      {
        v27 = *(v6 + 24);
        if ((v27 & 0x80000000) == 0 && v27 <= v22)
        {
          ++*(v6 + 20);
          return result;
        }

        if (dword_1004BE360 >= 1 && (v26 & 2) == 0 && v11 && (*(v11 + 28) & 2) == 0 && v16 >= dword_1004BE360)
        {
          if (sub_100241540() >= 4)
          {
            sub_100241960(v39);
            v28 = sub_100241184(&v40, &asc_1003E5CDF[(4 * (v6[8] & 0xFLL)) ^ 0x3F], 4 * (v6[8] & 0xFLL));
            sub_100241184(v28, "OpenCV parent region exceeds children count. Bailout", 52);
            std::stringbuf::str();
            if (v38 >= 0)
            {
              v29 = __p;
            }

            else
            {
              v29 = __p[0];
            }

            sub_1002415C8(4, v29);
            if (v38 < 0)
            {
              operator delete(__p[0]);
            }

            sub_100241CC8(v39);
          }

LABEL_61:
          *(v6 + 24) = v22;
LABEL_79:
          ++*(v6 + 20);
          return v3;
        }

        if (dword_1004BE364 >= 1 && v16 >= dword_1004BE364)
        {
          if (sub_100241540() >= 4)
          {
            sub_100241960(v39);
            v30 = sub_100241184(&v40, &asc_1003E5CDF[(4 * (v6[8] & 0xFLL)) ^ 0x3F], 4 * (v6[8] & 0xFLL));
            sub_100241184(v30, "Parent region exceeds children count. Bailout", 45);
            std::stringbuf::str();
            if (v38 >= 0)
            {
              v31 = __p;
            }

            else
            {
              v31 = __p[0];
            }

            sub_1002415C8(4, v31);
            if (v38 < 0)
            {
              operator delete(__p[0]);
            }

            v40 = v32;
            if (v44 < 0)
            {
              operator delete(v43);
            }

            std::locale::~locale(v42);
            std::iostream::~basic_iostream();
            std::ios::~ios();
          }

          goto LABEL_61;
        }
      }

      v33 = v22 + 1;
      sub_1002ABAA0(a2);
      if (***a2)
      {
        if ((!v11 || (*(v11 + 28) & 4) == 0) && (!dword_1004BE35C || (*(a2 + 28) & 2) != 0 || *(v6 + 19) < dword_1004BE35C))
        {
          operator new();
        }
      }

      else if (sub_100241540() >= 4)
      {
        sub_100241960(v39);
        v34 = sub_100241184(&v40, &asc_1003E5CDF[(4 * (v6[8] & 0xFLL)) ^ 0x3F], 4 * (v6[8] & 0xFLL));
        sub_100241184(v34, "Region location is disabled. Bailout", 36);
        std::stringbuf::str();
        if (v38 >= 0)
        {
          v35 = __p;
        }

        else
        {
          v35 = __p[0];
        }

        sub_1002415C8(4, v35);
        if (v38 < 0)
        {
          operator delete(__p[0]);
        }

        v40 = v36;
        if (v44 < 0)
        {
          operator delete(v43);
        }

        std::locale::~locale(v42);
        std::iostream::~basic_iostream();
        std::ios::~ios();
      }

      *(v6 + 24) = v33;
      goto LABEL_79;
    }

LABEL_23:
    v16 = 0;
    v17 = j__mach_absolute_time();
    if (atomic_load_explicit(&qword_1004BE380, memory_order_acquire))
    {
      goto LABEL_28;
    }

    goto LABEL_81;
  }

  return result;
}

void sub_1002ACB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_100241CC8(&a16);
    _Unwind_Resume(a1);
  }

  sub_100241CC8(&a16);
  _Unwind_Resume(a1);
}

void sub_1002ACC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_1002ACC1C(_BYTE *a1)
{
  v2 = sub_1002ABC0C();
  v3 = sub_1002A9C00((v2 + 16));
  v4 = v3;
  if (!v3)
  {
    v18[0] = 0;
    v18[1] = 0;
    v5 = sub_1002A80E0(v18, 3);
    *v5 = 29808;
    *(v5 + 2) = 114;
    sub_1002A8980(-215, v18, "getRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/include/opencv2/core/utility.hpp", 701);
  }

  v6 = *(v3 + 16);
  v7 = j__mach_absolute_time();
  if ((atomic_load_explicit(&qword_1004BE380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004BE380))
  {
    *&qword_1004BE378 = 1000000000.0 / sub_1002A8918();
    __cxa_guard_release(&qword_1004BE380);
  }

  v8 = (*&qword_1004BE378 * (v7 - qword_1004BE368));
  v9 = *(v4 + 64);
  if (v9)
  {
    v10 = v8 - *(*(*(v4 + 32) + 8 * ((v9 + *(v4 + 56) - 1) / 0xAAuLL)) + 24 * ((v9 + *(v4 + 56) - 1) % 0xAAuLL) + 16);
    v11 = *a1;
    if (*a1)
    {
LABEL_6:
      *(v4 + 88) = v10;
      *(v11 + 40) = v8;
      sub_1002AC128(v11, v4);
      if (*a1)
      {
        **(*a1 + 8) = 0;
        operator delete();
      }

      *a1 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v10 = v8 - *(v4 + 120);
    v11 = *a1;
    if (*a1)
    {
      goto LABEL_6;
    }
  }

  if (v9 == *(v4 + 152) + 1)
  {
    *(v4 + 88) += v10;
  }

LABEL_12:
  if (a1[8])
  {
    v13 = *(v4 + 32);
    v12 = *(v4 + 40);
    v14 = 170 * ((v12 - v13) >> 3) - 1;
    v15 = v12 == v13;
    v17 = *(v4 + 56);
    v16 = *(v4 + 64);
    if (v15)
    {
      v14 = 0;
    }

    *(v4 + 64) = v16 - 1;
    if ((v14 - (v16 + v17) + 1) >= 0x154)
    {
      operator delete(*(v12 - 8));
      *(v4 + 40) -= 8;
    }

    if (*(v4 + 96) >= v6)
    {
      *(v4 + 96) = -1;
    }
  }
}

uint64_t sub_1002ACE80(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1002ACEF0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = *(a1 + 1024);
  v11 = 1024 - v10;
  v12 = sub_1002A8978((a1 + v10), 1024 - v10, a2, &a9);
  if ((v12 & 0x80000000) != 0 || v11 < v12)
  {
    result = 0;
    *(a1 + 1032) = 1;
  }

  else
  {
    *(a1 + 1024) += v12;
    return 1;
  }

  return result;
}

void sub_1002AD1C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}