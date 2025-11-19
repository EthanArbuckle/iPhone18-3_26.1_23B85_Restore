uint64_t sub_2367FF9A4(uint64_t result, int a2, float32x4_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float32x4_t *a8, double a9, int32x2_t a10)
{
  v45 = result;
  if (result >= 1)
  {
    v12 = 0;
    v13 = a4 + 1;
    v39 = a7 << 9;
    v44 = a4 << 9;
    v14 = 8 * a4;
    __asm { FMOV            V0.4S, #-1.0 }

    v20 = vnegq_f64(_Q0);
    v43 = v20;
    do
    {
      v40 = v12;
      v21 = v45 - v12;
      if (v45 - v12 >= 64)
      {
        v22 = 64;
      }

      else
      {
        v22 = v45 - v12;
      }

      if (a2 >= 1)
      {
        v23 = 0;
        v24 = a3;
        do
        {
          if (a2 - v23 >= 64)
          {
            v25 = 64;
          }

          else
          {
            v25 = a2 - v23;
          }

          if (a2 - v23 >= 1)
          {
            v26 = 0;
            v27 = a8;
            v28 = v24;
            do
            {
              v29 = a5 + 8 * v13 * v23 + 8 * v13 * v26;
              a10.i32[0] = *v29;
              v30 = vmulq_n_f32(v20, *(v29 + 4));
              if (v21 < 4)
              {
                v38 = 0;
              }

              else
              {
                v31 = 0;
                v32 = vdupq_lane_s32(a10, 0);
                v33 = v27;
                v34 = v28;
                do
                {
                  v36 = *v34;
                  v35 = v34[1];
                  v34 += 2;
                  v37 = v31 + 7;
                  *v33 = vmlaq_f32(vmulq_f32(v30, vrev64q_s32(v36)), v32, v36);
                  v33[1] = vmlaq_f32(vmulq_f32(v30, vrev64q_s32(v35)), v32, v35);
                  v33 += 2;
                  v31 += 4;
                }

                while (v37 < v22);
                v38 = v31;
              }

              if (v38 < v22)
              {
                a10 = vdup_lane_s32(a10, 0);
                do
                {
                  *&v27->f32[2 * v38] = vmla_f32(vmul_f32(*v30.f32, vrev64_s32(*&v28->f32[2 * v38])), a10, *&v28->f32[2 * v38]);
                  ++v38;
                }

                while (v38 < v22);
              }

              ++v26;
              v28 = (v28 + v14);
              v27 += 32;
            }

            while (v26 < v25);
          }

          result = cblas_cgemm_NEWLAPACK();
          v20 = v43;
          v23 += 64;
          v24 = (v24 + v44);
        }

        while (v23 < a2);
      }

      a6 += v39;
      v12 = v40 + 64;
      a3 += 32;
    }

    while (v40 + 64 < v45);
  }

  return result;
}

uint64_t sub_2367FFC20(uint64_t result, int a2, int8x16_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float64x2_t *a8)
{
  v40 = result;
  if (result >= 1)
  {
    v10 = 0;
    v11 = a4 + 1;
    v35 = a7 << 10;
    v39 = a4 << 10;
    v12 = 16 * a4;
    v13 = xmmword_23681FB50;
    do
    {
      v36 = v10;
      v14 = v40 - v10;
      if (v40 - v10 >= 64)
      {
        v15 = 64;
      }

      else
      {
        v15 = v40 - v10;
      }

      if (a2 >= 1)
      {
        v16 = 0;
        v17 = a3;
        do
        {
          if (a2 - v16 >= 64)
          {
            v18 = 64;
          }

          else
          {
            v18 = a2 - v16;
          }

          if (a2 - v16 >= 1)
          {
            v19 = 0;
            v20 = a8;
            v21 = v17;
            do
            {
              v22 = a5 + 16 * v11 * v16 + 16 * v11 * v19;
              v23 = *v22;
              v24 = vmulq_n_f64(v13, *(v22 + 8));
              if (v14 < 4)
              {
                v33 = 0;
              }

              else
              {
                v25 = 0;
                v26 = vdupq_lane_s64(v23, 0);
                v27 = v20;
                v28 = v21;
                do
                {
                  v29 = vmlaq_f64(vmulq_f64(v24, vextq_s8(v28[3], v28[3], 8uLL)), v26, v28[3]);
                  v30 = vmlaq_f64(vmulq_f64(v24, vextq_s8(v28[1], v28[1], 8uLL)), v26, v28[1]);
                  v31 = vmlaq_f64(vmulq_f64(v24, vextq_s8(v28[2], v28[2], 8uLL)), v26, v28[2]);
                  *v27 = vmlaq_f64(vmulq_f64(v24, vextq_s8(*v28, *v28, 8uLL)), v26, *v28);
                  v27[1] = v30;
                  v32 = v25 + 7;
                  v27[2] = v31;
                  v27[3] = v29;
                  v25 += 4;
                  v28 += 4;
                  v27 += 4;
                }

                while (v32 < v15);
                v33 = v25;
              }

              if (v33 < v15)
              {
                v34 = vdupq_lane_s64(v23, 0);
                do
                {
                  v20[v33] = vmlaq_f64(vmulq_f64(v24, vextq_s8(v21[v33], v21[v33], 8uLL)), v34, v21[v33]);
                  ++v33;
                }

                while (v33 < v15);
              }

              ++v19;
              v21 = (v21 + v12);
              v20 += 64;
            }

            while (v19 < v18);
          }

          result = cblas_zgemm_NEWLAPACK();
          v13 = xmmword_23681FB50;
          v16 += 64;
          v17 = (v17 + v39);
        }

        while (v16 < a2);
      }

      a6 += v35;
      v10 = v36 + 64;
      a3 += 64;
    }

    while (v36 + 64 < v40);
  }

  return result;
}

uint64_t sub_2367FFEC0(uint64_t result, int a2, float32x4_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float32x4_t *a8, double a9, int32x2_t a10)
{
  v51 = result;
  if (result >= 1)
  {
    v12 = 0;
    v13 = a4 + 1;
    v44 = a7 << 9;
    v50 = a4 << 9;
    v14 = 8 * a4;
    __asm { FMOV            V0.4S, #-1.0 }

    v20 = vnegq_f64(_Q0);
    __asm { FMOV            V0.4S, #1.0 }

    v48 = vnegq_f64(_Q0);
    __asm { FMOV            V0.2S, #1.0 }

    v22 = -_Q0.f64[0];
    v49 = v20;
    do
    {
      v45 = v12;
      v23 = v51 - v12;
      if (v51 - v12 >= 64)
      {
        v24 = 64;
      }

      else
      {
        v24 = v51 - v12;
      }

      if (a2 >= 1)
      {
        v25 = 0;
        v26 = a3;
        do
        {
          if (a2 - v25 >= 64)
          {
            v27 = 64;
          }

          else
          {
            v27 = a2 - v25;
          }

          if (a2 - v25 >= 1)
          {
            v28 = 0;
            v29 = a8;
            v30 = v26;
            do
            {
              v31 = a5 + 8 * v13 * v25 + 8 * v13 * v28;
              a10.i32[0] = *v31;
              v32 = vmulq_n_f32(v20, *(v31 + 4));
              if (v23 < 4)
              {
                v42 = 0;
              }

              else
              {
                v33 = 0;
                v34 = vdupq_lane_s32(a10, 0);
                v35 = v29;
                v36 = v30;
                do
                {
                  v37 = *v36;
                  v38 = v36[1];
                  v36 += 2;
                  v39 = vmulq_f32(v38, v48);
                  v40 = vmulq_f32(v37, v48);
                  v41 = v33 + 7;
                  *v35 = vmlaq_f32(vmulq_f32(v32, vrev64q_s32(v40)), v34, v40);
                  v35[1] = vmlaq_f32(vmulq_f32(v32, vrev64q_s32(v39)), v34, v39);
                  v35 += 2;
                  v33 += 4;
                }

                while (v41 < v24);
                v42 = v33;
              }

              if (v42 < v24)
              {
                a10 = vdup_lane_s32(a10, 0);
                do
                {
                  v43 = vmul_f32(*&v30->f32[2 * v42], *&v22);
                  *&v29->f32[2 * v42++] = vmla_f32(vmul_f32(*v32.f32, vrev64_s32(v43)), a10, v43);
                }

                while (v42 < v24);
              }

              ++v28;
              v30 = (v30 + v14);
              v29 += 32;
            }

            while (v28 < v27);
          }

          result = cblas_cgemm_NEWLAPACK();
          v20 = v49;
          v25 += 64;
          v26 = (v26 + v50);
        }

        while (v25 < a2);
      }

      a6 += v44;
      v12 = v45 + 64;
      a3 += 32;
    }

    while (v45 + 64 < v51);
  }

  return result;
}

uint64_t sub_23680015C(uint64_t result, int a2, float64x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float64x2_t *a8)
{
  v43 = result;
  if (result >= 1)
  {
    v10 = 0;
    v11 = a4 + 1;
    v38 = a7 << 10;
    v42 = a4 << 10;
    v12 = 16 * a4;
    v13 = xmmword_23681FB50;
    v14 = xmmword_23681FD30;
    do
    {
      v39 = v10;
      v15 = v43 - v10;
      if (v43 - v10 >= 64)
      {
        v16 = 64;
      }

      else
      {
        v16 = v43 - v10;
      }

      if (a2 >= 1)
      {
        v17 = 0;
        v18 = a3;
        do
        {
          if (a2 - v17 >= 64)
          {
            v19 = 64;
          }

          else
          {
            v19 = a2 - v17;
          }

          if (a2 - v17 >= 1)
          {
            v20 = 0;
            v21 = a8;
            v22 = v18;
            do
            {
              v23 = a5 + 16 * v11 * v17 + 16 * v11 * v20;
              v24 = *v23;
              v25 = vmulq_n_f64(v13, *(v23 + 8));
              if (v15 < 4)
              {
                v35 = 0;
              }

              else
              {
                v26 = 0;
                v27 = vdupq_lane_s64(v24, 0);
                v28 = v21;
                v29 = v22;
                do
                {
                  v30 = vmulq_f64(v29[2], v14);
                  v31 = vmulq_f64(v29[3], v14);
                  v32 = vmulq_f64(*v29, v14);
                  v33 = vmulq_f64(v29[1], v14);
                  v28[2] = vmlaq_f64(vmulq_f64(v25, vextq_s8(v30, v30, 8uLL)), v27, v30);
                  v28[3] = vmlaq_f64(vmulq_f64(v25, vextq_s8(v31, v31, 8uLL)), v27, v31);
                  v34 = v26 + 7;
                  *v28 = vmlaq_f64(vmulq_f64(v25, vextq_s8(v32, v32, 8uLL)), v27, v32);
                  v28[1] = vmlaq_f64(vmulq_f64(v25, vextq_s8(v33, v33, 8uLL)), v27, v33);
                  v28 += 4;
                  v26 += 4;
                  v29 += 4;
                }

                while (v34 < v16);
                v35 = v26;
              }

              if (v35 < v16)
              {
                v36 = vdupq_lane_s64(v24, 0);
                do
                {
                  v37 = vmulq_f64(v22[v35], v14);
                  v21[v35++] = vmlaq_f64(vmulq_f64(v25, vextq_s8(v37, v37, 8uLL)), v36, v37);
                }

                while (v35 < v16);
              }

              ++v20;
              v22 = (v22 + v12);
              v21 += 64;
            }

            while (v20 < v19);
          }

          result = cblas_zgemm_NEWLAPACK();
          v14 = xmmword_23681FD30;
          v13 = xmmword_23681FB50;
          v17 += 64;
          v18 = (v18 + v42);
        }

        while (v17 < a2);
      }

      a6 += v38;
      v10 = v39 + 64;
      a3 += 64;
    }

    while (v39 + 64 < v43);
  }

  return result;
}

uint64_t sub_23680041C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 >= 1)
  {
    v11 = 0;
    v12 = a6 + 1;
    v29 = a6 << 8;
    v13 = 4 * a6;
    v25 = a2;
    do
    {
      v26 = v11;
      v14 = a2 - v11;
      if (a2 - v11 >= 64)
      {
        v15 = 64;
      }

      else
      {
        v15 = a2 - v11;
      }

      if (a3 >= 1)
      {
        v16 = 0;
        v17 = a5;
        do
        {
          if (a3 - v16 >= 64)
          {
            v18 = 64;
          }

          else
          {
            v18 = a3 - v16;
          }

          if (a3 - v16 >= 1)
          {
            v19 = 0;
            v20 = a10;
            v21 = v17;
            do
            {
              if (v14 >= 1)
              {
                v22 = 0;
                v23 = *(a7 + 4 * v12 * v16 + 4 * v12 * v19);
                do
                {
                  *(v20 + 4 * v22) = v23 * *(v21 + 4 * v22);
                  ++v22;
                }

                while (v22 < v15);
              }

              ++v19;
              v21 += v13;
              v20 += 256;
            }

            while (v19 < v18);
          }

          result = cblas_sgemm_NEWLAPACK();
          v16 += 64;
          v17 += v29;
        }

        while (v16 < a3);
      }

      a5 += 256;
      a8 += a9 << 8;
      a2 = v25;
      v11 = v26 + 64;
    }

    while (v26 + 64 < v25);
  }

  return result;
}

uint64_t sub_2368005F0(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 >= 1)
  {
    v11 = 0;
    v12 = a6 + 1;
    v29 = a6 << 9;
    v13 = 8 * a6;
    v25 = a2;
    do
    {
      v26 = v11;
      v14 = a2 - v11;
      if (a2 - v11 >= 64)
      {
        v15 = 64;
      }

      else
      {
        v15 = a2 - v11;
      }

      if (a3 >= 1)
      {
        v16 = 0;
        v17 = a5;
        do
        {
          if (a3 - v16 >= 64)
          {
            v18 = 64;
          }

          else
          {
            v18 = a3 - v16;
          }

          if (a3 - v16 >= 1)
          {
            v19 = 0;
            v20 = a10;
            v21 = v17;
            do
            {
              if (v14 >= 1)
              {
                v22 = 0;
                v23 = *(a7 + 8 * v12 * v16 + 8 * v12 * v19);
                do
                {
                  *(v20 + 8 * v22) = v23 * *(v21 + 8 * v22);
                  ++v22;
                }

                while (v22 < v15);
              }

              ++v19;
              v21 += v13;
              v20 += 512;
            }

            while (v19 < v18);
          }

          result = cblas_dgemm_NEWLAPACK();
          v16 += 64;
          v17 += v29;
        }

        while (v16 < a3);
      }

      a5 += 512;
      a8 += a9 << 9;
      a2 = v25;
      v11 = v26 + 64;
    }

    while (v26 + 64 < v25);
  }

  return result;
}

uint64_t sub_2368007C4(double a1, int32x2_t a2, uint64_t a3, int a4, int a5, uint64_t a6, float32x4_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, float32x4_t *a12)
{
  if (a4 >= 1)
  {
    v13 = 0;
    v14 = a8 + 1;
    v46 = a8 << 9;
    v15 = 8 * a8;
    __asm { FMOV            V0.4S, #-1.0 }

    v21 = vnegq_f64(_Q0);
    v41 = a4;
    v45 = v21;
    do
    {
      v42 = v13;
      v22 = a4 - v13;
      if (a4 - v13 >= 64)
      {
        v23 = 64;
      }

      else
      {
        v23 = a4 - v13;
      }

      if (a5 >= 1)
      {
        v24 = 0;
        v25 = a7;
        do
        {
          if (a5 - v24 >= 64)
          {
            v26 = 64;
          }

          else
          {
            v26 = a5 - v24;
          }

          if (a5 - v24 >= 1)
          {
            v27 = 0;
            v28 = a12;
            v29 = v25;
            do
            {
              v30 = a9 + 8 * v14 * v24 + 8 * v14 * v27;
              a2.i32[0] = *v30;
              v31 = vmulq_n_f32(v21, *(v30 + 4));
              if (v22 < 4)
              {
                v39 = 0;
              }

              else
              {
                v32 = 0;
                v33 = vdupq_lane_s32(a2, 0);
                v34 = v28;
                v35 = v29;
                do
                {
                  v37 = *v35;
                  v36 = v35[1];
                  v35 += 2;
                  v38 = v32 + 7;
                  *v34 = vmlaq_f32(vmulq_f32(v31, vrev64q_s32(v37)), v33, v37);
                  v34[1] = vmlaq_f32(vmulq_f32(v31, vrev64q_s32(v36)), v33, v36);
                  v34 += 2;
                  v32 += 4;
                }

                while (v38 < v23);
                v39 = v32;
              }

              if (v39 < v23)
              {
                a2 = vdup_lane_s32(a2, 0);
                do
                {
                  *&v28->f32[2 * v39] = vmla_f32(vmul_f32(*v31.f32, vrev64_s32(*&v29->f32[2 * v39])), a2, *&v29->f32[2 * v39]);
                  ++v39;
                }

                while (v39 < v23);
              }

              ++v27;
              v29 = (v29 + v15);
              v28 += 32;
            }

            while (v27 < v26);
          }

          result = cblas_cgemm_NEWLAPACK();
          v21 = v45;
          v24 += 64;
          v25 = (v25 + v46);
        }

        while (v24 < a5);
      }

      a7 += 32;
      a10 += a11 << 9;
      a4 = v41;
      v13 = v42 + 64;
    }

    while (v42 + 64 < v41);
  }

  return result;
}

uint64_t sub_236800A2C(uint64_t a1, int a2, int a3, uint64_t a4, int8x16_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, float64x2_t *a10)
{
  if (a2 >= 1)
  {
    v11 = 0;
    v12 = a6 + 1;
    v41 = a6 << 10;
    v13 = 16 * a6;
    v14 = xmmword_23681FB50;
    v37 = a2;
    do
    {
      v38 = v11;
      v15 = a2 - v11;
      if (a2 - v11 >= 64)
      {
        v16 = 64;
      }

      else
      {
        v16 = a2 - v11;
      }

      if (a3 >= 1)
      {
        v17 = 0;
        v18 = a5;
        do
        {
          if (a3 - v17 >= 64)
          {
            v19 = 64;
          }

          else
          {
            v19 = a3 - v17;
          }

          if (a3 - v17 >= 1)
          {
            v20 = 0;
            v21 = a10;
            v22 = v18;
            do
            {
              v23 = a7 + 16 * v12 * v17 + 16 * v12 * v20;
              v24 = *v23;
              v25 = vmulq_n_f64(v14, *(v23 + 8));
              if (v15 < 4)
              {
                v34 = 0;
              }

              else
              {
                v26 = 0;
                v27 = vdupq_lane_s64(v24, 0);
                v28 = v21;
                v29 = v22;
                do
                {
                  v30 = vmlaq_f64(vmulq_f64(v25, vextq_s8(v29[3], v29[3], 8uLL)), v27, v29[3]);
                  v31 = vmlaq_f64(vmulq_f64(v25, vextq_s8(v29[1], v29[1], 8uLL)), v27, v29[1]);
                  v32 = vmlaq_f64(vmulq_f64(v25, vextq_s8(v29[2], v29[2], 8uLL)), v27, v29[2]);
                  *v28 = vmlaq_f64(vmulq_f64(v25, vextq_s8(*v29, *v29, 8uLL)), v27, *v29);
                  v28[1] = v31;
                  v33 = v26 + 7;
                  v28[2] = v32;
                  v28[3] = v30;
                  v26 += 4;
                  v29 += 4;
                  v28 += 4;
                }

                while (v33 < v16);
                v34 = v26;
              }

              if (v34 < v16)
              {
                v35 = vdupq_lane_s64(v24, 0);
                do
                {
                  v21[v34] = vmlaq_f64(vmulq_f64(v25, vextq_s8(v22[v34], v22[v34], 8uLL)), v35, v22[v34]);
                  ++v34;
                }

                while (v34 < v16);
              }

              ++v20;
              v22 = (v22 + v13);
              v21 += 64;
            }

            while (v20 < v19);
          }

          result = cblas_zgemm_NEWLAPACK();
          v14 = xmmword_23681FB50;
          v17 += 64;
          v18 = (v18 + v41);
        }

        while (v17 < a3);
      }

      a5 += 64;
      a8 += a9 << 10;
      a2 = v37;
      v11 = v38 + 64;
    }

    while (v38 + 64 < v37);
  }

  return result;
}

uint64_t sub_236800CB8(double a1, int32x2_t a2, uint64_t a3, int a4, int a5, uint64_t a6, float32x4_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, float32x4_t *a12)
{
  if (a4 >= 1)
  {
    v13 = 0;
    v14 = a8 + 1;
    v52 = a8 << 9;
    v15 = 8 * a8;
    __asm { FMOV            V0.4S, #-1.0 }

    v21 = vnegq_f64(_Q0);
    __asm { FMOV            V0.4S, #1.0 }

    v50 = vnegq_f64(_Q0);
    __asm { FMOV            V0.2S, #1.0 }

    v23 = -_Q0.f64[0];
    v46 = a4;
    v51 = v21;
    do
    {
      v47 = v13;
      v24 = a4 - v13;
      if (a4 - v13 >= 64)
      {
        v25 = 64;
      }

      else
      {
        v25 = a4 - v13;
      }

      if (a5 >= 1)
      {
        v26 = 0;
        v27 = a7;
        do
        {
          if (a5 - v26 >= 64)
          {
            v28 = 64;
          }

          else
          {
            v28 = a5 - v26;
          }

          if (a5 - v26 >= 1)
          {
            v29 = 0;
            v30 = a12;
            v31 = v27;
            do
            {
              v32 = a9 + 8 * v14 * v26 + 8 * v14 * v29;
              a2.i32[0] = *v32;
              v33 = vmulq_n_f32(v21, *(v32 + 4));
              if (v24 < 4)
              {
                v43 = 0;
              }

              else
              {
                v34 = 0;
                v35 = vdupq_lane_s32(a2, 0);
                v36 = v30;
                v37 = v31;
                do
                {
                  v38 = *v37;
                  v39 = v37[1];
                  v37 += 2;
                  v40 = vmulq_f32(v39, v50);
                  v41 = vmulq_f32(v38, v50);
                  v42 = v34 + 7;
                  *v36 = vmlaq_f32(vmulq_f32(v33, vrev64q_s32(v41)), v35, v41);
                  v36[1] = vmlaq_f32(vmulq_f32(v33, vrev64q_s32(v40)), v35, v40);
                  v36 += 2;
                  v34 += 4;
                }

                while (v42 < v25);
                v43 = v34;
              }

              if (v43 < v25)
              {
                a2 = vdup_lane_s32(a2, 0);
                do
                {
                  v44 = vmul_f32(*&v31->f32[2 * v43], *&v23);
                  *&v30->f32[2 * v43++] = vmla_f32(vmul_f32(*v33.f32, vrev64_s32(v44)), a2, v44);
                }

                while (v43 < v25);
              }

              ++v29;
              v31 = (v31 + v15);
              v30 += 32;
            }

            while (v29 < v28);
          }

          result = cblas_cgemm_NEWLAPACK();
          v21 = v51;
          v26 += 64;
          v27 = (v27 + v52);
        }

        while (v26 < a5);
      }

      a7 += 32;
      a10 += a11 << 9;
      a4 = v46;
      v13 = v47 + 64;
    }

    while (v47 + 64 < v46);
  }

  return result;
}

uint64_t sub_236800F48(uint64_t a1, int a2, int a3, uint64_t a4, float64x2_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, float64x2_t *a10)
{
  if (a2 >= 1)
  {
    v11 = 0;
    v12 = a6 + 1;
    v44 = a6 << 10;
    v13 = 16 * a6;
    v14 = xmmword_23681FB50;
    v15 = xmmword_23681FD30;
    v40 = a2;
    do
    {
      v41 = v11;
      v16 = a2 - v11;
      if (a2 - v11 >= 64)
      {
        v17 = 64;
      }

      else
      {
        v17 = a2 - v11;
      }

      if (a3 >= 1)
      {
        v18 = 0;
        v19 = a5;
        do
        {
          if (a3 - v18 >= 64)
          {
            v20 = 64;
          }

          else
          {
            v20 = a3 - v18;
          }

          if (a3 - v18 >= 1)
          {
            v21 = 0;
            v22 = a10;
            v23 = v19;
            do
            {
              v24 = a7 + 16 * v12 * v18 + 16 * v12 * v21;
              v25 = *v24;
              v26 = vmulq_n_f64(v14, *(v24 + 8));
              if (v16 < 4)
              {
                v36 = 0;
              }

              else
              {
                v27 = 0;
                v28 = vdupq_lane_s64(v25, 0);
                v29 = v22;
                v30 = v23;
                do
                {
                  v31 = vmulq_f64(v30[2], v15);
                  v32 = vmulq_f64(v30[3], v15);
                  v33 = vmulq_f64(*v30, v15);
                  v34 = vmulq_f64(v30[1], v15);
                  v29[2] = vmlaq_f64(vmulq_f64(v26, vextq_s8(v31, v31, 8uLL)), v28, v31);
                  v29[3] = vmlaq_f64(vmulq_f64(v26, vextq_s8(v32, v32, 8uLL)), v28, v32);
                  v35 = v27 + 7;
                  *v29 = vmlaq_f64(vmulq_f64(v26, vextq_s8(v33, v33, 8uLL)), v28, v33);
                  v29[1] = vmlaq_f64(vmulq_f64(v26, vextq_s8(v34, v34, 8uLL)), v28, v34);
                  v29 += 4;
                  v27 += 4;
                  v30 += 4;
                }

                while (v35 < v17);
                v36 = v27;
              }

              if (v36 < v17)
              {
                v37 = vdupq_lane_s64(v25, 0);
                do
                {
                  v38 = vmulq_f64(v23[v36], v15);
                  v22[v36++] = vmlaq_f64(vmulq_f64(v26, vextq_s8(v38, v38, 8uLL)), v37, v38);
                }

                while (v36 < v17);
              }

              ++v21;
              v23 = (v23 + v13);
              v22 += 64;
            }

            while (v21 < v20);
          }

          result = cblas_zgemm_NEWLAPACK();
          v15 = xmmword_23681FD30;
          v14 = xmmword_23681FB50;
          v18 += 64;
          v19 = (v19 + v44);
        }

        while (v18 < a3);
      }

      a5 += 64;
      a8 += a9 << 10;
      a2 = v40;
      v11 = v41 + 64;
    }

    while (v41 + 64 < v40);
  }

  return result;
}

uint64_t sub_2368011EC(uint64_t result, int a2, float32x4_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float32x4_t *a8)
{
  v33 = result;
  if (result >= 1)
  {
    v10 = 0;
    v11 = a4 + 1;
    v31 = a4 << 8;
    v12 = 4 * a4;
    do
    {
      v28 = v10;
      v13 = v33 - v10;
      if (v33 - v10 >= 64)
      {
        v14 = 64;
      }

      else
      {
        v14 = v33 - v10;
      }

      if (a2 >= 1)
      {
        v15 = 0;
        v16 = a3;
        do
        {
          if (a2 - v15 >= 64)
          {
            v17 = 64;
          }

          else
          {
            v17 = a2 - v15;
          }

          if (a2 - v15 >= 1)
          {
            v18 = 0;
            v19 = a8;
            v20 = v16;
            do
            {
              v21 = *(a5 + 4 * v11 * v15 + 4 * v11 * v18);
              if (v13 < 4)
              {
                v27 = 0;
              }

              else
              {
                v22 = 0;
                v23 = v19;
                v24 = v20;
                do
                {
                  v25 = *v24++;
                  *v23++ = vmulq_n_f32(v25, v21);
                  v26 = v22 + 7;
                  v22 += 4;
                }

                while (v26 < v14);
                v27 = v22;
              }

              if (v27 < v14)
              {
                do
                {
                  v19->f32[v27] = v21 * v20->f32[v27];
                  ++v27;
                }

                while (v27 < v14);
              }

              ++v18;
              v20 = (v20 + v12);
              v19 += 16;
            }

            while (v18 < v17);
          }

          result = cblas_sgemm_NEWLAPACK();
          v15 += 64;
          v16 = (v16 + v31);
        }

        while (v15 < a2);
      }

      a6 += a7 << 8;
      v10 = v28 + 64;
      a3 += 16;
    }

    while (v28 + 64 < v33);
  }

  return result;
}

uint64_t sub_2368013F4(uint64_t result, int a2, float64x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float64x2_t *a8)
{
  v34 = result;
  if (result >= 1)
  {
    v10 = 0;
    v11 = a4 + 1;
    v32 = a4 << 9;
    v12 = 8 * a4;
    do
    {
      v29 = v10;
      v13 = v34 - v10;
      if (v34 - v10 >= 64)
      {
        v14 = 64;
      }

      else
      {
        v14 = v34 - v10;
      }

      if (a2 >= 1)
      {
        v15 = 0;
        v16 = a3;
        do
        {
          if (a2 - v15 >= 64)
          {
            v17 = 64;
          }

          else
          {
            v17 = a2 - v15;
          }

          if (a2 - v15 >= 1)
          {
            v18 = 0;
            v19 = a8;
            v20 = v16;
            do
            {
              v21 = *(a5 + 8 * v11 * v15 + 8 * v11 * v18);
              if (v13 < 4)
              {
                v28 = 0;
              }

              else
              {
                v22 = 0;
                v23 = v19;
                v24 = v20;
                do
                {
                  v26 = *v24;
                  v25 = v24[1];
                  v24 += 2;
                  v27 = v22 + 7;
                  *v23 = vmulq_n_f64(v26, v21);
                  v23[1] = vmulq_n_f64(v25, v21);
                  v23 += 2;
                  v22 += 4;
                }

                while (v27 < v14);
                v28 = v22;
              }

              if (v28 < v14)
              {
                do
                {
                  v19->f64[v28] = v21 * v20->f64[v28];
                  ++v28;
                }

                while (v28 < v14);
              }

              ++v18;
              v20 = (v20 + v12);
              v19 += 32;
            }

            while (v18 < v17);
          }

          result = cblas_dgemm_NEWLAPACK();
          v15 += 64;
          v16 = (v16 + v32);
        }

        while (v15 < a2);
      }

      a6 += a7 << 9;
      v10 = v29 + 64;
      a3 += 32;
    }

    while (v29 + 64 < v34);
  }

  return result;
}

uint64_t sub_236801600(uint64_t result, int a2, float32x4_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float32x4_t *a8, double a9, int32x2_t a10)
{
  v45 = result;
  if (result >= 1)
  {
    v12 = 0;
    v13 = a4 + 1;
    v43 = a4 << 9;
    v14 = 8 * a4;
    __asm { FMOV            V0.4S, #-1.0 }

    v20 = vnegq_f64(_Q0);
    v42 = v20;
    do
    {
      v39 = v12;
      v21 = v45 - v12;
      if (v45 - v12 >= 64)
      {
        v22 = 64;
      }

      else
      {
        v22 = v45 - v12;
      }

      if (a2 >= 1)
      {
        v23 = 0;
        v24 = a3;
        do
        {
          if (a2 - v23 >= 64)
          {
            v25 = 64;
          }

          else
          {
            v25 = a2 - v23;
          }

          if (a2 - v23 >= 1)
          {
            v26 = 0;
            v27 = a8;
            v28 = v24;
            do
            {
              v29 = a5 + 8 * v13 * v23 + 8 * v13 * v26;
              a10.i32[0] = *v29;
              v30 = vmulq_n_f32(v20, *(v29 + 4));
              if (v21 < 4)
              {
                v38 = 0;
              }

              else
              {
                v31 = 0;
                v32 = vdupq_lane_s32(a10, 0);
                v33 = v27;
                v34 = v28;
                do
                {
                  v36 = *v34;
                  v35 = v34[1];
                  v34 += 2;
                  v37 = v31 + 7;
                  *v33 = vmlaq_f32(vmulq_f32(v30, vrev64q_s32(v36)), v32, v36);
                  v33[1] = vmlaq_f32(vmulq_f32(v30, vrev64q_s32(v35)), v32, v35);
                  v33 += 2;
                  v31 += 4;
                }

                while (v37 < v22);
                v38 = v31;
              }

              if (v38 < v22)
              {
                a10 = vdup_lane_s32(a10, 0);
                do
                {
                  *&v27->f32[2 * v38] = vmla_f32(vmul_f32(*v30.f32, vrev64_s32(*&v28->f32[2 * v38])), a10, *&v28->f32[2 * v38]);
                  ++v38;
                }

                while (v38 < v22);
              }

              ++v26;
              v28 = (v28 + v14);
              v27 += 32;
            }

            while (v26 < v25);
          }

          result = cblas_cgemm_NEWLAPACK();
          v20 = v42;
          v23 += 64;
          v24 = (v24 + v43);
        }

        while (v23 < a2);
      }

      a6 += a7 << 9;
      v12 = v39 + 64;
      a3 += 32;
    }

    while (v39 + 64 < v45);
  }

  return result;
}

uint64_t sub_236801860(uint64_t result, int a2, int8x16_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float64x2_t *a8)
{
  v40 = result;
  if (result >= 1)
  {
    v10 = 0;
    v11 = a4 + 1;
    v38 = a4 << 10;
    v12 = 16 * a4;
    v13 = xmmword_23681FB50;
    do
    {
      v35 = v10;
      v14 = v40 - v10;
      if (v40 - v10 >= 64)
      {
        v15 = 64;
      }

      else
      {
        v15 = v40 - v10;
      }

      if (a2 >= 1)
      {
        v16 = 0;
        v17 = a3;
        do
        {
          if (a2 - v16 >= 64)
          {
            v18 = 64;
          }

          else
          {
            v18 = a2 - v16;
          }

          if (a2 - v16 >= 1)
          {
            v19 = 0;
            v20 = a8;
            v21 = v17;
            do
            {
              v22 = a5 + 16 * v11 * v16 + 16 * v11 * v19;
              v23 = *v22;
              v24 = vmulq_n_f64(v13, *(v22 + 8));
              if (v14 < 4)
              {
                v33 = 0;
              }

              else
              {
                v25 = 0;
                v26 = vdupq_lane_s64(v23, 0);
                v27 = v20;
                v28 = v21;
                do
                {
                  v29 = vmlaq_f64(vmulq_f64(v24, vextq_s8(v28[3], v28[3], 8uLL)), v26, v28[3]);
                  v30 = vmlaq_f64(vmulq_f64(v24, vextq_s8(v28[1], v28[1], 8uLL)), v26, v28[1]);
                  v31 = vmlaq_f64(vmulq_f64(v24, vextq_s8(v28[2], v28[2], 8uLL)), v26, v28[2]);
                  *v27 = vmlaq_f64(vmulq_f64(v24, vextq_s8(*v28, *v28, 8uLL)), v26, *v28);
                  v27[1] = v30;
                  v32 = v25 + 7;
                  v27[2] = v31;
                  v27[3] = v29;
                  v25 += 4;
                  v28 += 4;
                  v27 += 4;
                }

                while (v32 < v15);
                v33 = v25;
              }

              if (v33 < v15)
              {
                v34 = vdupq_lane_s64(v23, 0);
                do
                {
                  v20[v33] = vmlaq_f64(vmulq_f64(v24, vextq_s8(v21[v33], v21[v33], 8uLL)), v34, v21[v33]);
                  ++v33;
                }

                while (v33 < v15);
              }

              ++v19;
              v21 = (v21 + v12);
              v20 += 64;
            }

            while (v19 < v18);
          }

          result = cblas_zgemm_NEWLAPACK();
          v13 = xmmword_23681FB50;
          v16 += 64;
          v17 = (v17 + v38);
        }

        while (v16 < a2);
      }

      a6 += a7 << 10;
      v10 = v35 + 64;
      a3 += 64;
    }

    while (v35 + 64 < v40);
  }

  return result;
}

uint64_t sub_236801AF0(uint64_t result, int a2, float32x4_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float32x4_t *a8, double a9, int32x2_t a10)
{
  v51 = result;
  if (result >= 1)
  {
    v12 = 0;
    v13 = a4 + 1;
    v49 = a4 << 9;
    v14 = 8 * a4;
    __asm { FMOV            V0.4S, #-1.0 }

    v20 = vnegq_f64(_Q0);
    __asm { FMOV            V0.4S, #1.0 }

    v47 = vnegq_f64(_Q0);
    __asm { FMOV            V0.2S, #1.0 }

    v22 = -_Q0.f64[0];
    v48 = v20;
    do
    {
      v44 = v12;
      v23 = v51 - v12;
      if (v51 - v12 >= 64)
      {
        v24 = 64;
      }

      else
      {
        v24 = v51 - v12;
      }

      if (a2 >= 1)
      {
        v25 = 0;
        v26 = a3;
        do
        {
          if (a2 - v25 >= 64)
          {
            v27 = 64;
          }

          else
          {
            v27 = a2 - v25;
          }

          if (a2 - v25 >= 1)
          {
            v28 = 0;
            v29 = a8;
            v30 = v26;
            do
            {
              v31 = a5 + 8 * v13 * v25 + 8 * v13 * v28;
              a10.i32[0] = *v31;
              v32 = vmulq_n_f32(v20, *(v31 + 4));
              if (v23 < 4)
              {
                v42 = 0;
              }

              else
              {
                v33 = 0;
                v34 = vdupq_lane_s32(a10, 0);
                v35 = v29;
                v36 = v30;
                do
                {
                  v37 = *v36;
                  v38 = v36[1];
                  v36 += 2;
                  v39 = vmulq_f32(v38, v47);
                  v40 = vmulq_f32(v37, v47);
                  v41 = v33 + 7;
                  *v35 = vmlaq_f32(vmulq_f32(v32, vrev64q_s32(v40)), v34, v40);
                  v35[1] = vmlaq_f32(vmulq_f32(v32, vrev64q_s32(v39)), v34, v39);
                  v35 += 2;
                  v33 += 4;
                }

                while (v41 < v24);
                v42 = v33;
              }

              if (v42 < v24)
              {
                a10 = vdup_lane_s32(a10, 0);
                do
                {
                  v43 = vmul_f32(*&v30->f32[2 * v42], *&v22);
                  *&v29->f32[2 * v42++] = vmla_f32(vmul_f32(*v32.f32, vrev64_s32(v43)), a10, v43);
                }

                while (v42 < v24);
              }

              ++v28;
              v30 = (v30 + v14);
              v29 += 32;
            }

            while (v28 < v27);
          }

          result = cblas_cgemm_NEWLAPACK();
          v20 = v48;
          v25 += 64;
          v26 = (v26 + v49);
        }

        while (v25 < a2);
      }

      a6 += a7 << 9;
      v12 = v44 + 64;
      a3 += 32;
    }

    while (v44 + 64 < v51);
  }

  return result;
}

uint64_t sub_236801D7C(uint64_t result, int a2, float64x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float64x2_t *a8)
{
  v43 = result;
  if (result >= 1)
  {
    v10 = 0;
    v11 = a4 + 1;
    v41 = a4 << 10;
    v12 = 16 * a4;
    v13 = xmmword_23681FB50;
    v14 = xmmword_23681FD30;
    do
    {
      v38 = v10;
      v15 = v43 - v10;
      if (v43 - v10 >= 64)
      {
        v16 = 64;
      }

      else
      {
        v16 = v43 - v10;
      }

      if (a2 >= 1)
      {
        v17 = 0;
        v18 = a3;
        do
        {
          if (a2 - v17 >= 64)
          {
            v19 = 64;
          }

          else
          {
            v19 = a2 - v17;
          }

          if (a2 - v17 >= 1)
          {
            v20 = 0;
            v21 = a8;
            v22 = v18;
            do
            {
              v23 = a5 + 16 * v11 * v17 + 16 * v11 * v20;
              v24 = *v23;
              v25 = vmulq_n_f64(v13, *(v23 + 8));
              if (v15 < 4)
              {
                v35 = 0;
              }

              else
              {
                v26 = 0;
                v27 = vdupq_lane_s64(v24, 0);
                v28 = v21;
                v29 = v22;
                do
                {
                  v30 = vmulq_f64(v29[2], v14);
                  v31 = vmulq_f64(v29[3], v14);
                  v32 = vmulq_f64(*v29, v14);
                  v33 = vmulq_f64(v29[1], v14);
                  v28[2] = vmlaq_f64(vmulq_f64(v25, vextq_s8(v30, v30, 8uLL)), v27, v30);
                  v28[3] = vmlaq_f64(vmulq_f64(v25, vextq_s8(v31, v31, 8uLL)), v27, v31);
                  v34 = v26 + 7;
                  *v28 = vmlaq_f64(vmulq_f64(v25, vextq_s8(v32, v32, 8uLL)), v27, v32);
                  v28[1] = vmlaq_f64(vmulq_f64(v25, vextq_s8(v33, v33, 8uLL)), v27, v33);
                  v28 += 4;
                  v26 += 4;
                  v29 += 4;
                }

                while (v34 < v16);
                v35 = v26;
              }

              if (v35 < v16)
              {
                v36 = vdupq_lane_s64(v24, 0);
                do
                {
                  v37 = vmulq_f64(v22[v35], v14);
                  v21[v35++] = vmlaq_f64(vmulq_f64(v25, vextq_s8(v37, v37, 8uLL)), v36, v37);
                }

                while (v35 < v16);
              }

              ++v20;
              v22 = (v22 + v12);
              v21 += 64;
            }

            while (v20 < v19);
          }

          result = cblas_zgemm_NEWLAPACK();
          v14 = xmmword_23681FD30;
          v13 = xmmword_23681FB50;
          v17 += 64;
          v18 = (v18 + v41);
        }

        while (v17 < a2);
      }

      a6 += a7 << 10;
      v10 = v38 + 64;
      a3 += 64;
    }

    while (v38 + 64 < v43);
  }

  return result;
}

uint64_t sub_23680202C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 >= 1)
  {
    v11 = 0;
    v12 = a6 + 1;
    v29 = a6 << 8;
    v13 = 4 * a6;
    v25 = a2;
    do
    {
      v26 = v11;
      v14 = a2 - v11;
      if (a2 - v11 >= 64)
      {
        v15 = 64;
      }

      else
      {
        v15 = a2 - v11;
      }

      if (a3 >= 1)
      {
        v16 = 0;
        v17 = a5;
        do
        {
          if (a3 - v16 >= 64)
          {
            v18 = 64;
          }

          else
          {
            v18 = a3 - v16;
          }

          if (a3 - v16 >= 1)
          {
            v19 = 0;
            v20 = a10;
            v21 = v17;
            do
            {
              if (v14 >= 1)
              {
                v22 = 0;
                v23 = *(a7 + 4 * v12 * v16 + 4 * v12 * v19);
                do
                {
                  *(v20 + 4 * v22) = v23 * *(v21 + 4 * v22);
                  ++v22;
                }

                while (v22 < v15);
              }

              ++v19;
              v21 += v13;
              v20 += 256;
            }

            while (v19 < v18);
          }

          result = cblas_sgemm_NEWLAPACK();
          v16 += 64;
          v17 += v29;
        }

        while (v16 < a3);
      }

      a5 += 256;
      a8 += a9 << 8;
      a2 = v25;
      v11 = v26 + 64;
    }

    while (v26 + 64 < v25);
  }

  return result;
}

uint64_t sub_2368021F0(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 >= 1)
  {
    v11 = 0;
    v12 = a6 + 1;
    v29 = a6 << 9;
    v13 = 8 * a6;
    v25 = a2;
    do
    {
      v26 = v11;
      v14 = a2 - v11;
      if (a2 - v11 >= 64)
      {
        v15 = 64;
      }

      else
      {
        v15 = a2 - v11;
      }

      if (a3 >= 1)
      {
        v16 = 0;
        v17 = a5;
        do
        {
          if (a3 - v16 >= 64)
          {
            v18 = 64;
          }

          else
          {
            v18 = a3 - v16;
          }

          if (a3 - v16 >= 1)
          {
            v19 = 0;
            v20 = a10;
            v21 = v17;
            do
            {
              if (v14 >= 1)
              {
                v22 = 0;
                v23 = *(a7 + 8 * v12 * v16 + 8 * v12 * v19);
                do
                {
                  *(v20 + 8 * v22) = v23 * *(v21 + 8 * v22);
                  ++v22;
                }

                while (v22 < v15);
              }

              ++v19;
              v21 += v13;
              v20 += 512;
            }

            while (v19 < v18);
          }

          result = cblas_dgemm_NEWLAPACK();
          v16 += 64;
          v17 += v29;
        }

        while (v16 < a3);
      }

      a5 += 512;
      a8 += a9 << 9;
      a2 = v25;
      v11 = v26 + 64;
    }

    while (v26 + 64 < v25);
  }

  return result;
}

uint64_t sub_2368023B4(double a1, int32x2_t a2, uint64_t a3, int a4, int a5, uint64_t a6, float32x4_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, float32x4_t *a12)
{
  if (a4 >= 1)
  {
    v13 = 0;
    v14 = a8 + 1;
    v46 = a8 << 9;
    v15 = 8 * a8;
    __asm { FMOV            V0.4S, #-1.0 }

    v21 = vnegq_f64(_Q0);
    v41 = a4;
    v45 = v21;
    do
    {
      v42 = v13;
      v22 = a4 - v13;
      if (a4 - v13 >= 64)
      {
        v23 = 64;
      }

      else
      {
        v23 = a4 - v13;
      }

      if (a5 >= 1)
      {
        v24 = 0;
        v25 = a7;
        do
        {
          if (a5 - v24 >= 64)
          {
            v26 = 64;
          }

          else
          {
            v26 = a5 - v24;
          }

          if (a5 - v24 >= 1)
          {
            v27 = 0;
            v28 = a12;
            v29 = v25;
            do
            {
              v30 = a9 + 8 * v14 * v24 + 8 * v14 * v27;
              a2.i32[0] = *v30;
              v31 = vmulq_n_f32(v21, *(v30 + 4));
              if (v22 < 4)
              {
                v39 = 0;
              }

              else
              {
                v32 = 0;
                v33 = vdupq_lane_s32(a2, 0);
                v34 = v28;
                v35 = v29;
                do
                {
                  v37 = *v35;
                  v36 = v35[1];
                  v35 += 2;
                  v38 = v32 + 7;
                  *v34 = vmlaq_f32(vmulq_f32(v31, vrev64q_s32(v37)), v33, v37);
                  v34[1] = vmlaq_f32(vmulq_f32(v31, vrev64q_s32(v36)), v33, v36);
                  v34 += 2;
                  v32 += 4;
                }

                while (v38 < v23);
                v39 = v32;
              }

              if (v39 < v23)
              {
                a2 = vdup_lane_s32(a2, 0);
                do
                {
                  *&v28->f32[2 * v39] = vmla_f32(vmul_f32(*v31.f32, vrev64_s32(*&v29->f32[2 * v39])), a2, *&v29->f32[2 * v39]);
                  ++v39;
                }

                while (v39 < v23);
              }

              ++v27;
              v29 = (v29 + v15);
              v28 += 32;
            }

            while (v27 < v26);
          }

          result = cblas_cgemm_NEWLAPACK();
          v21 = v45;
          v24 += 64;
          v25 = (v25 + v46);
        }

        while (v24 < a5);
      }

      a7 += 32;
      a10 += a11 << 9;
      a4 = v41;
      v13 = v42 + 64;
    }

    while (v42 + 64 < v41);
  }

  return result;
}

uint64_t sub_236802608(uint64_t a1, int a2, int a3, uint64_t a4, int8x16_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, float64x2_t *a10)
{
  if (a2 >= 1)
  {
    v11 = 0;
    v12 = a6 + 1;
    v41 = a6 << 10;
    v13 = 16 * a6;
    v14 = xmmword_23681FB50;
    v37 = a2;
    do
    {
      v38 = v11;
      v15 = a2 - v11;
      if (a2 - v11 >= 64)
      {
        v16 = 64;
      }

      else
      {
        v16 = a2 - v11;
      }

      if (a3 >= 1)
      {
        v17 = 0;
        v18 = a5;
        do
        {
          if (a3 - v17 >= 64)
          {
            v19 = 64;
          }

          else
          {
            v19 = a3 - v17;
          }

          if (a3 - v17 >= 1)
          {
            v20 = 0;
            v21 = a10;
            v22 = v18;
            do
            {
              v23 = a7 + 16 * v12 * v17 + 16 * v12 * v20;
              v24 = *v23;
              v25 = vmulq_n_f64(v14, *(v23 + 8));
              if (v15 < 4)
              {
                v34 = 0;
              }

              else
              {
                v26 = 0;
                v27 = vdupq_lane_s64(v24, 0);
                v28 = v21;
                v29 = v22;
                do
                {
                  v30 = vmlaq_f64(vmulq_f64(v25, vextq_s8(v29[3], v29[3], 8uLL)), v27, v29[3]);
                  v31 = vmlaq_f64(vmulq_f64(v25, vextq_s8(v29[1], v29[1], 8uLL)), v27, v29[1]);
                  v32 = vmlaq_f64(vmulq_f64(v25, vextq_s8(v29[2], v29[2], 8uLL)), v27, v29[2]);
                  *v28 = vmlaq_f64(vmulq_f64(v25, vextq_s8(*v29, *v29, 8uLL)), v27, *v29);
                  v28[1] = v31;
                  v33 = v26 + 7;
                  v28[2] = v32;
                  v28[3] = v30;
                  v26 += 4;
                  v29 += 4;
                  v28 += 4;
                }

                while (v33 < v16);
                v34 = v26;
              }

              if (v34 < v16)
              {
                v35 = vdupq_lane_s64(v24, 0);
                do
                {
                  v21[v34] = vmlaq_f64(vmulq_f64(v25, vextq_s8(v22[v34], v22[v34], 8uLL)), v35, v22[v34]);
                  ++v34;
                }

                while (v34 < v16);
              }

              ++v20;
              v22 = (v22 + v13);
              v21 += 64;
            }

            while (v20 < v19);
          }

          result = cblas_zgemm_NEWLAPACK();
          v14 = xmmword_23681FB50;
          v17 += 64;
          v18 = (v18 + v41);
        }

        while (v17 < a3);
      }

      a5 += 64;
      a8 += a9 << 10;
      a2 = v37;
      v11 = v38 + 64;
    }

    while (v38 + 64 < v37);
  }

  return result;
}

uint64_t sub_236802884(double a1, int32x2_t a2, uint64_t a3, int a4, int a5, uint64_t a6, float32x4_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, float32x4_t *a12)
{
  if (a4 >= 1)
  {
    v13 = 0;
    v14 = a8 + 1;
    v52 = a8 << 9;
    v15 = 8 * a8;
    __asm { FMOV            V0.4S, #-1.0 }

    v21 = vnegq_f64(_Q0);
    __asm { FMOV            V0.4S, #1.0 }

    v50 = vnegq_f64(_Q0);
    __asm { FMOV            V0.2S, #1.0 }

    v23 = -_Q0.f64[0];
    v46 = a4;
    v51 = v21;
    do
    {
      v47 = v13;
      v24 = a4 - v13;
      if (a4 - v13 >= 64)
      {
        v25 = 64;
      }

      else
      {
        v25 = a4 - v13;
      }

      if (a5 >= 1)
      {
        v26 = 0;
        v27 = a7;
        do
        {
          if (a5 - v26 >= 64)
          {
            v28 = 64;
          }

          else
          {
            v28 = a5 - v26;
          }

          if (a5 - v26 >= 1)
          {
            v29 = 0;
            v30 = a12;
            v31 = v27;
            do
            {
              v32 = a9 + 8 * v14 * v26 + 8 * v14 * v29;
              a2.i32[0] = *v32;
              v33 = vmulq_n_f32(v21, *(v32 + 4));
              if (v24 < 4)
              {
                v43 = 0;
              }

              else
              {
                v34 = 0;
                v35 = vdupq_lane_s32(a2, 0);
                v36 = v30;
                v37 = v31;
                do
                {
                  v38 = *v37;
                  v39 = v37[1];
                  v37 += 2;
                  v40 = vmulq_f32(v39, v50);
                  v41 = vmulq_f32(v38, v50);
                  v42 = v34 + 7;
                  *v36 = vmlaq_f32(vmulq_f32(v33, vrev64q_s32(v41)), v35, v41);
                  v36[1] = vmlaq_f32(vmulq_f32(v33, vrev64q_s32(v40)), v35, v40);
                  v36 += 2;
                  v34 += 4;
                }

                while (v42 < v25);
                v43 = v34;
              }

              if (v43 < v25)
              {
                a2 = vdup_lane_s32(a2, 0);
                do
                {
                  v44 = vmul_f32(*&v31->f32[2 * v43], *&v23);
                  *&v30->f32[2 * v43++] = vmla_f32(vmul_f32(*v33.f32, vrev64_s32(v44)), a2, v44);
                }

                while (v43 < v25);
              }

              ++v29;
              v31 = (v31 + v15);
              v30 += 32;
            }

            while (v29 < v28);
          }

          result = cblas_cgemm_NEWLAPACK();
          v21 = v51;
          v26 += 64;
          v27 = (v27 + v52);
        }

        while (v26 < a5);
      }

      a7 += 32;
      a10 += a11 << 9;
      a4 = v46;
      v13 = v47 + 64;
    }

    while (v47 + 64 < v46);
  }

  return result;
}

uint64_t sub_236802B04(uint64_t a1, int a2, int a3, uint64_t a4, float64x2_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, float64x2_t *a10)
{
  if (a2 >= 1)
  {
    v11 = 0;
    v12 = a6 + 1;
    v44 = a6 << 10;
    v13 = 16 * a6;
    v14 = xmmword_23681FB50;
    v15 = xmmword_23681FD30;
    v40 = a2;
    do
    {
      v41 = v11;
      v16 = a2 - v11;
      if (a2 - v11 >= 64)
      {
        v17 = 64;
      }

      else
      {
        v17 = a2 - v11;
      }

      if (a3 >= 1)
      {
        v18 = 0;
        v19 = a5;
        do
        {
          if (a3 - v18 >= 64)
          {
            v20 = 64;
          }

          else
          {
            v20 = a3 - v18;
          }

          if (a3 - v18 >= 1)
          {
            v21 = 0;
            v22 = a10;
            v23 = v19;
            do
            {
              v24 = a7 + 16 * v12 * v18 + 16 * v12 * v21;
              v25 = *v24;
              v26 = vmulq_n_f64(v14, *(v24 + 8));
              if (v16 < 4)
              {
                v36 = 0;
              }

              else
              {
                v27 = 0;
                v28 = vdupq_lane_s64(v25, 0);
                v29 = v22;
                v30 = v23;
                do
                {
                  v31 = vmulq_f64(v30[2], v15);
                  v32 = vmulq_f64(v30[3], v15);
                  v33 = vmulq_f64(*v30, v15);
                  v34 = vmulq_f64(v30[1], v15);
                  v29[2] = vmlaq_f64(vmulq_f64(v26, vextq_s8(v31, v31, 8uLL)), v28, v31);
                  v29[3] = vmlaq_f64(vmulq_f64(v26, vextq_s8(v32, v32, 8uLL)), v28, v32);
                  v35 = v27 + 7;
                  *v29 = vmlaq_f64(vmulq_f64(v26, vextq_s8(v33, v33, 8uLL)), v28, v33);
                  v29[1] = vmlaq_f64(vmulq_f64(v26, vextq_s8(v34, v34, 8uLL)), v28, v34);
                  v29 += 4;
                  v27 += 4;
                  v30 += 4;
                }

                while (v35 < v17);
                v36 = v27;
              }

              if (v36 < v17)
              {
                v37 = vdupq_lane_s64(v25, 0);
                do
                {
                  v38 = vmulq_f64(v23[v36], v15);
                  v22[v36++] = vmlaq_f64(vmulq_f64(v26, vextq_s8(v38, v38, 8uLL)), v37, v38);
                }

                while (v36 < v17);
              }

              ++v21;
              v23 = (v23 + v13);
              v22 += 64;
            }

            while (v21 < v20);
          }

          result = cblas_zgemm_NEWLAPACK();
          v15 = xmmword_23681FD30;
          v14 = xmmword_23681FB50;
          v18 += 64;
          v19 = (v19 + v44);
        }

        while (v18 < a3);
      }

      a5 += 64;
      a8 += a9 << 10;
      a2 = v40;
      v11 = v41 + 64;
    }

    while (v41 + 64 < v40);
  }

  return result;
}

uint64_t _SparseNumericFactorSymmetric_Complex_Float@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *a6 = 0u;
  v10 = a1[2];
  *(a6 + 56) = a1[3];
  *(a6 + 40) = v10;
  v11 = *a1;
  *(a6 + 24) = a1[1];
  v12 = *(a1 + 17);
  v13 = *(a1 + 3);
  *a6 = -3;
  *(a6 + 8) = v11;
  *(a6 + 72) = 1;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = 8 * *(a2 + 4) * *(a2 + 28);
  atomic_fetch_add((v13 + 48), 1u);
  *(a6 + 80) = sub_236802E5C(v12, v13, 2 * *(a1 + 6), a3, a4);

  return _SparseRefactorSymmetric_Complex_Float(a2, a6, a3, a5);
}

uint64_t sub_236802E5C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    a5 = (*(a2 + 24))(a3);
    if (!a5)
    {
      if (*(a2 + 40))
      {
        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Allocation of size %zd failed in SparseFactorSymmetric.", a3);
        v10 = *(a2 + 40);
        goto LABEL_31;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F726C();
      }

LABEL_36:
      _SparseTrap();
    }
  }

  v9 = 4 * *(a2 + 60);
  if (*(a4 + 4) <= 1u)
  {
    if (*(a4 + 4))
    {
      v11 = *(a4 + 8) == 0;
    }

    else
    {
      v11 = a1 == 0;
    }

    if (v11)
    {
      v9 = 0;
    }
  }

  else if (*(a4 + 4) - 2 >= 2)
  {
    v10 = *(a2 + 40);
    if (v10)
    {
      memset(&__str[88], 0, 168);
      strcpy(__str, "SparseScalingHungarianScalingAndOrdering is not supported for symmetric factorizations.");
LABEL_31:
      v10(__str, a2, a3, a4, a5);
      a5 = 0;
      goto LABEL_37;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F7228();
    }

    goto LABEL_36;
  }

  v12 = a5 + a3;
  v13 = ((a5 + 103) & 0xFFFFFFFFFFFFFFF8);
  if (a5 + a3 < v13 || (v14 = &v13[*(a2 + 64)], v14 > v12))
  {
LABEL_38:
    __break(1u);
  }

  if (v9)
  {
    v15 = (v14 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v15)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v15 = &v13[*(a2 + 64)];
    v14 = 0;
  }

  v16 = *(a4 + 16);
  *a5 = *a4;
  *(a5 + 16) = v16;
  *(a5 + 48) = 0;
  *(a5 + 32) = 1;
  *(a5 + 56) = 0;
  *(a5 + 64) = v14;
  *(a5 + 72) = 0;
  *(a5 + 40) = v13;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 92) = 1;
  v17 = *(a2 + 64);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = v15;
    do
    {
      v20 = *(*(a2 + 88) + 4 * v18 + 4) - *(*(a2 + 88) + 4 * v18);
      v21 = (16 * v20) | 8;
      if ((a1 - 3) >= 2)
      {
        v21 = 8;
      }

      v15 = (v19 + v21 + ((8 * (*(*(a2 + 120) + 8 * v18 + 8) - *(*(a2 + 120) + 8 * v18))) | 4) * v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v12 < v15)
      {
        goto LABEL_38;
      }

      v13[v18] = v19;
      v13 = *(a5 + 40);
      *v13[v18++] = 0;
      v19 = v15;
    }

    while (v17 != v18);
  }

  if (a1 == 4)
  {
    v22 = (v15 + 4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v22)
    {
      goto LABEL_38;
    }

    *(a5 + 48) = v15;
    v15 = (v22 + 4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v15)
    {
      goto LABEL_38;
    }

    *(a5 + 56) = v22;
  }

  *(a5 + 72) = v15 - *v13;
LABEL_37:
  v23 = *MEMORY[0x277D85DE8];
  return a5;
}

uint64_t _SparseRefactorSymmetric_Complex_Float(int *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a2;
  v99 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 32);
  if ((a1[6] & 0x1C) == 0xC)
  {
    v6 = *(a2 + 25);
    if (*(a2 + 25))
    {
      v10 = *a1;
      v11 = *(a1 + 28);
      v12 = *(a2 + 80);
      v13 = *(a3 + 4);
      if (v13 <= 1)
      {
        if (*(a3 + 4))
        {
          v25 = *(a3 + 8);
          if (v25)
          {
            v26 = (v10 * v11);
            if (v26 >= 1)
            {
              v27 = *(v12 + 64);
              do
              {
                v28 = *v25++;
                *v27++ = v28;
                --v26;
              }

              while (v26);
            }
          }

LABEL_18:
          v21 = *(a3 + 8);
          if (v21 && *(a3 + 4) != 1)
          {
            v22 = *(v12 + 64);
            v23 = (v10 * v11);
            if (v22)
            {
              if (v23 >= 1)
              {
                do
                {
                  v24 = *v22++;
                  *v21++ = v24;
                  --v23;
                }

                while (v23);
              }
            }

            else if (v23 >= 1)
            {
              memset_pattern16(v21, &unk_23681FB80, 4 * (v10 * v11));
            }
          }

          v90 = a1;
          v29 = *(a1 + 28);
          if (0x100 / v29 * v29 <= v29)
          {
            v30 = *(a1 + 28);
          }

          else
          {
            v30 = 0x100 / v29 * v29;
          }

          v31 = &a4[2 * *(v4 + 40)];
          v32 = *(v5 + 60);
          v92 = &a4[4 * v32 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (v31 >= v92)
          {
            if (v32 >= 1)
            {
              v33 = 0;
              v34 = *(v5 + 80);
              do
              {
                *&a4[4 * *(v34 + 4 * v33)] = v33;
                ++v33;
              }

              while (v33 < *(v5 + 60));
            }

            bzero(**(v12 + 40), *(v12 + 72));
            v35 = *(v5 + 64);
            if (v35 < 1)
            {
              v40 = 0;
            }

            else
            {
              v36 = 0;
              v37 = *(v12 + 40);
              do
              {
                v38 = *(v37 + 8 * v36);
                v39 = *v38;
                if (*v38)
                {
                  bzero(v38, *v38);
                  v37 = *(v12 + 40);
                  v35 = *(v5 + 64);
                  v38 = *(v37 + 8 * v36);
                }

                *v38 = v39;
                ++v36;
              }

              while (v36 < v35);
              v40 = v35 > 0;
            }

            v41 = *(v5 + 60);
            v89 = v4;
            if (*(v5 + 52) <= 1)
            {
              v45 = ((v92 + 4 * v41 + 7) & 0xFFFFFFFFFFFFFFF8);
              if (v31 >= v45)
              {
                v46 = (&v45[v30 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
                if (v31 >= v46)
                {
                  v47 = v31;
                  v48 = (v46 + 4 * v30 + 7) & 0xFFFFFFFFFFFFFFF8;
                  if (v47 >= v48 && v48 + 8 * v30 * v30 <= v47)
                  {
                    if (v40)
                    {
                      v49 = 0;
                      while (1)
                      {
                        result = sub_236804D34(0, v49, v6, v90, v5, v12, v30, a4, v92, v45, ((&v45[v30 + 1] + 3) & 0xFFFFFFFFFFFFFFF8), (v46 + 4 * v30 + 7) & 0xFFFFFFFFFFFFFFF8, v48 + 8 * v30 * v30, 0);
                        if (result)
                        {
                          break;
                        }

                        v49 = (v49 + 1);
                        if (v49 >= *(v5 + 64))
                        {
                          goto LABEL_63;
                        }
                      }
                    }

                    else
                    {
LABEL_63:
                      result = 0;
                    }

                    goto LABEL_87;
                  }
                }
              }
            }

            else
            {
              v42 = 8 * v30 * v30 + 56 + 4 * (v41 + 2 * v30);
              if ((v6 - 3) >= 2)
              {
                v43 = v6;
                if (v6 == 2)
                {
                  v50 = *(v5 + 176);
                  v51 = 8 * v50;
                  v52 = v50 <= 4160;
                  v53 = 33280;
                  if (!v52)
                  {
                    v53 = v51;
                  }

                  v42 += v53;
                }
              }

              else
              {
                v43 = v6;
                v44 = 16 * v41;
                if (*(v5 + 60) <= 2080)
                {
                  v44 = 33280;
                }

                v42 += v44;
              }

              v54 = v42;
              v55 = v42 + 16;
              v56 = sub_2366FCCD0(0);
              v97 = 0u;
              v98 = 0u;
              v95 = 0u;
              v96 = 0u;
              v94 = 0u;
              v57 = (v92 + v55 * v56 + 7) & 0xFFFFFFFFFFFFFFF8;
              if (v31 >= v57)
              {
                v58 = sub_2366FCCD0(0);
                _X2 = 0;
                LODWORD(v94) = v58;
                atomic_store(0, &v94 + 1);
                atomic_store(0, (&v94 | 0xC));
                atomic_store(0, &v95);
                v60 = v96;
                do
                {
                  _X5 = *(&v96 + 1);
                  __asm { CASPAL          X4, X5, X2, X3, [X26] }

                  _ZF = _X4 == v60;
                  v60 = _X4;
                }

                while (!_ZF);
                *&v97 = v54;
                *(&v97 + 1) = v92;
                *v93 = v43;
                *&v93[8] = v90;
                *&v93[16] = v5;
                *&v93[24] = v12;
                *&v93[32] = v30;
                *&v93[40] = a4;
                v67 = *(v5 + 64);
                v68 = v57 + 40 * v67;
                if (v68 <= v31)
                {
                  *&v93[48] = v57;
                  v69 = (v68 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
                  if (v31 >= v69)
                  {
                    *&v93[56] = v68;
                    v70 = v69 + 19200;
                    if (v69 + 19200 <= v31)
                    {
                      *&v93[64] = sub_2367921D4(100, (v69 + 15) & 0xFFFFFFFFFFFFFFF0);
                      *&v93[72] = v71;
                      if (v70 + 48 * *(v5 + 168) <= v31)
                      {
                        *&v93[80] = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
                        *&v93[88] = 0;
                        *&v98 = v93;
                        if (*(v5 + 64) >= 1)
                        {
                          _X22 = 0;
                          v73 = 0;
                          do
                          {
                            v74 = v73 + 1;
                            v75 = *&v93[48] + 40 * v73;
                            _ZF = *(*(v5 + 96) + 4 * (v73 + 1)) == *(*(v5 + 96) + 4 * v73);
                            atomic_store(*(*(v5 + 96) + 4 * (v73 + 1)) - *(*(v5 + 96) + 4 * v73), v75);
                            *(v75 + 8) = v73;
                            *(v75 + 16) = sub_236804ADC;
                            *(*&v93[56] + v73) = 0;
                            if (_ZF)
                            {
                              v76 = *&v93[48] + 40 * v73;
                              _X0 = 0;
                              _X1 = 0;
                              __asm { CASP            X0, X1, X0, X1, [X25] }

                              *(v76 + 24) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                              *(v76 + 32) = 0;
                              v80 = _X0 & 1;
                              _X2 = v80 | v76;
                              _X5 = 0;
                              __asm { CASPL           X4, X5, X2, X3, [X25] }

                              while (_X4 != _X0)
                              {
                                _X1 = 0;
                                __asm { CASP            X0, X1, X22, X23, [X10] }

                                *(v76 + 24) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                                *(v76 + 32) = 0;
                                v80 = _X0 & 1;
                                _X2 = v80 | v76;
                                _X5 = 0;
                                __asm { CASPL           X4, X5, X2, X3, [X10] }
                              }

                              if (v80)
                              {
                                __ulock_wake();
                              }
                            }

                            v73 = v74;
                          }

                          while (v74 < *(v5 + 64));
                        }

                        result = sub_2366FCD2C(&v94, 0);
LABEL_87:
                        v4 = v89;
                        goto LABEL_91;
                      }
                    }
                  }
                }
              }
            }
          }

          __break(1u);
        }
      }

      else if (v13 != 2)
      {
        if (v13 == 3)
        {
          v91 = *(a2 + 25);
          v14 = sub_2366FE684(v10, *(*(a1 + 1) + 8 * v10), v11);
          v15 = a4;
          if (v14 + 4 * v10 > (2 * *(v4 + 40)))
          {
            v15 = (*(v5 + 24))();
          }

          v16 = *(v12 + 64);
          v17 = *(a1 + 1);
          *v93 = *a1;
          *&v93[16] = v17;
          *&v93[32] = *(a1 + 4);
          sub_236794CB4(v93, v15, v16, &v15[4 * v10], v14);
          v6 = v91;
          if (v15 != a4)
          {
            (*(v5 + 32))(v15);
          }

          goto LABEL_18;
        }

        v18 = *(v5 + 40);
        if (v18)
        {
          memset(&v93[88], 0, 168);
          strcpy(v93, "SparseScalingHungarianScalingAndOrdering is not supported for symmetric factorizations.");
          goto LABEL_28;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2366F7228();
        }

LABEL_90:
        _SparseTrap();
      }

      v19 = *(v12 + 64);
      v20 = *(a1 + 1);
      *v93 = *a1;
      *&v93[16] = v20;
      *&v93[32] = *(a1 + 4);
      sub_236806094(v93, v19, a4);
      goto LABEL_18;
    }

    v18 = *(v5 + 40);
    if (!v18)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_236805D20();
      }

      goto LABEL_90;
    }

    memset(&v93[72], 0, 184);
    strcpy(v93, "Cannot use SparseFactorizationCholesky for Complex symmetric matrices.\n");
  }

  else
  {
    v18 = *(v5 + 40);
    if (!v18)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_236805CDC();
      }

      goto LABEL_90;
    }

    memset(&v93[66], 0, 190);
    strcpy(v93, "_SparseRefactorSymmetric only applies to SparseSymmetric matrices");
  }

LABEL_28:
  v18(v93);
  result = 4294967292;
LABEL_91:
  *v4 = result;
  v88 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _SparseFactorSymmetric_Complex_Float@<X0>(int a1@<W0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v228 = *MEMORY[0x277D85DE8];
  if (a1 == 1)
  {
    v7 = 4;
  }

  else
  {
    v7 = a1;
  }

  v9 = *a2;
  v8 = a2[1];
  v10 = *(*(a2 + 1) + 8 * v9);
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 32) = 0u;
  *a5 = -3;
  *(a5 + 8) = -3;
  *(a5 + 12) = v9;
  *(a5 + 16) = v9;
  *(a5 + 20) = a2[6] & 1;
  v11 = *(a2 + 28);
  *(a5 + 24) = v11;
  *(a5 + 25) = v7;
  *(a5 + 57) = 0u;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 8 * v11 * v8;
  v12 = 8;
  if (*(a3 + 16))
  {
    v12 = 9;
  }

  v13 = v12 + v11;
  v14 = !is_mul_ok(v13, v9);
  v15 = v13 * v9;
  v16 = __CFADD__(v15, 2);
  v17 = v15 + 2;
  v18 = v16;
  v19 = v18 << 63 >> 63 != v18;
  if (v14 || v19)
  {
    goto LABEL_17;
  }

  v16 = __CFADD__(v17, 2 * v10);
  v20 = v17 + 2 * v10;
  v21 = v16;
  if (v10 < 0 || v21 || v20 >> 62 || (v25 = 2 * v9 + 2, (v9 & 0x80000000) != 0) || 2 * v9 >= 0xFFFFFFFFFFFFFFFELL || (v26 = 2 * v10, v16 = __CFADD__(v25, v26), v27 = v25 + v26, v16) || ((v28 = 4 * v20 + 8 * v27, !__CFADD__(4 * v20, 8 * v27)) ? (v29 = 0) : (v29 = 1), v27 >> 61 || (v29 & 1) != 0 || (v30 = v28 + 88, v28 >= 0xFFFFFFFFFFFFFFA8)))
  {
LABEL_17:
    v22 = *(a3 + 40);
    if (!v22)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F71E4();
      }

      _SparseTrap();
    }

    memset(&__str[69], 0, 187);
    strcpy(__str, "Computation of workspace required for symbolic analysis overflowed.\n");
    result = v22(__str);
    goto LABEL_19;
  }

  v33 = (*(a3 + 24))(v30);
  if (!v33)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v30);
LABEL_48:
      result = (*(a3 + 40))(__str);
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F716C();
    }

LABEL_113:
    _SparseTrap();
  }

  __b = v33;
  v34 = *(a2 + 1);
  *__str = *a2;
  *&__str[16] = v34;
  v35 = _SparseFromStructureComplex(__str, &v219);
  v36 = BYTE12(v220);
  v216 = v219;
  v215 = v219 * BYTE12(v220);
  v37 = v215 + 224;
  if (!*(a3 + 16))
  {
    v37 = 224;
  }

  v38 = v37 + 4 * (BYTE12(v220) + 2) * v219;
  v39 = (*(a3 + 24))(v38, v35);
  if (!v39)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v38);
LABEL_51:
      (*(a3 + 40))(__str);
LABEL_117:
      result = (*(a3 + 32))(__b);
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_115;
    }

    goto LABEL_116;
  }

  v40 = v39;
  v208 = v30;
  v41 = v39 + v38;
  v42 = (v39 + 191) & 0xFFFFFFFFFFFFFFF8;
  if (v41 < v42)
  {
    goto LABEL_307;
  }

  v43 = v216;
  v44 = *(a3 + 16);
  v45 = *(a3 + 32);
  v224 = *a3;
  v225 = v44;
  v226 = v45;
  v46 = 1;
  v217 = v40;
  if ((*(a3 + 3) & 0x40) == 0)
  {
    v46 = sub_2366FCCD0(0);
    v43 = v216;
    v40 = v217;
  }

  v47 = v225;
  *v40 = v224;
  v40[1] = v47;
  v40[2] = v226;
  *(v40 + 12) = 1;
  *(v40 + 13) = v46;
  *(v40 + 14) = v43;
  *(v40 + 15) = v215;
  *(v40 + 16) = 0;
  *(v40 + 72) = 0u;
  v48 = (v42 + 4 * v216 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v40 + 88) = 0u;
  *(v40 + 104) = 0u;
  *(v40 + 120) = 0u;
  *(v40 + 136) = 0u;
  *(v40 + 152) = 0u;
  *(v40 + 164) = 0u;
  if (v41 < v48)
  {
    goto LABEL_307;
  }

  *(v40 + 9) = v42;
  v49 = (v48 + 4 * v215 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v41 < v49)
  {
    goto LABEL_307;
  }

  v50 = 4 * v216;
  *(v40 + 10) = v48;
  v51 = ((v49 + v50 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v41 < v51)
  {
    goto LABEL_307;
  }

  *(v40 + 14) = v49;
  v52 = *(a3 + 16);
  if (v52)
  {
    if (v41 < ((v51 + v215 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_307;
    }

    *(v40 + 17) = v51;
    v53 = 9;
  }

  else
  {
    v51 = 0;
    v53 = 8;
  }

  v54 = 0;
  v55 = v53 + BYTE12(v220);
  v56 = !is_mul_ok(v55, v216);
  v57 = v55 * v216;
  v16 = __CFADD__(v57, 2);
  v58 = v57 + 2;
  v59 = v16;
  v60 = v59 << 63 >> 63 != v59;
  if (v56 || v60)
  {
    goto LABEL_65;
  }

  v54 = 0;
  v61 = *(*(&v219 + 1) + 8 * v216);
  v16 = __CFADD__(v58, 2 * v61);
  v62 = v58 + 2 * v61;
  v63 = v16;
  if (v61 < 0 || v63)
  {
    goto LABEL_65;
  }

  v54 = v62 >> 62;
  if (v62 >> 62)
  {
    goto LABEL_64;
  }

  v119 = 2 * v216 + 2;
  if (v43 < 0 || (2 * v216) >= 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_65;
  }

  v16 = __CFADD__(v119, 2 * v61);
  v120 = v119 + 2 * v61;
  if (v16)
  {
LABEL_64:
    v54 = 0;
  }

  else
  {
    v54 = 0;
    v121 = 4 * v62;
    v16 = __CFADD__(v121, 8 * v120);
    v122 = v121 + 8 * v120;
    v123 = v16;
    if (!(v120 >> 61) && (v123 & 1) == 0)
    {
      v54 = v122 + 88;
    }
  }

LABEL_65:
  v64 = &__b[v54];
  v65 = (v36 + 3) * v43;
  if (v65 <= 6 * v43 + 12)
  {
    v66 = 24 * v43 + 48;
  }

  else
  {
    v66 = 4 * v65;
  }

  v67 = (&__b[v66 + 7] & 0xFFFFFFFFFFFFFFF8);
  if (v64 < v67)
  {
    goto LABEL_307;
  }

  v68 = (&v67[v50 / 4 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v64 < v68)
  {
    goto LABEL_307;
  }

  v41 = (v68 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v64 < v41)
  {
    goto LABEL_307;
  }

  v212 = v42;
  v69 = *(*(&v219 + 1) + 8 * SDWORD1(v219));
  v70 = v41 + 8 * (v216 + v69) + 16;
  if (v70 > v64)
  {
    goto LABEL_307;
  }

  v213 = v49;
  v71 = v70 + 16 * v69;
  if (v71 > v64)
  {
    goto LABEL_307;
  }

  v72 = ((v71 + 8 * v216) & 0xFFFFFFFFFFFFFFF8);
  if (v64 < v72)
  {
    goto LABEL_307;
  }

  v209 = v70 + 16 * v69;
  v210 = v41 + 8 * (v216 + v69) + 16;
  v211 = (&v67[v50 / 4 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (!v52)
  {
    v72 = 0;
    goto LABEL_90;
  }

  if (v64 < (&v72[v50 + 7] & 0xFFFFFFFFFFFFFFF8))
  {
LABEL_307:
    __break(1u);
LABEL_308:
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v41);
      goto LABEL_48;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F716C();
    }

    goto LABEL_113;
  }

  bzero(v51, v215);
  if (v216 >= 1)
  {
    v73 = BYTE12(v220);
    v74 = (v216 + 3) & 0xFFFFFFFC;
    v75 = vdupq_n_s64(v216 - 1);
    v76 = xmmword_23681F910;
    v77 = xmmword_23681F920;
    v78 = v72 + 8;
    v79 = vdupq_n_s64(4uLL);
    do
    {
      v80 = vmovn_s64(vcgeq_u64(v75, v77));
      if (vuzp1_s16(v80, *v75.i8).u8[0])
      {
        *(v78 - 2) = v73;
      }

      if (vuzp1_s16(v80, *&v75).i8[2])
      {
        *(v78 - 1) = v73;
      }

      if (vuzp1_s16(*&v75, vmovn_s64(vcgeq_u64(v75, *&v76))).i32[1])
      {
        *v78 = v73;
        v78[1] = v73;
      }

      v76 = vaddq_s64(v76, v79);
      v77 = vaddq_s64(v77, v79);
      v78 += 4;
      v74 -= 4;
    }

    while (v74);
  }

  v81 = *(a3 + 16);
  v82 = *v81;
  v71 = v209;
  if ((*v81 & 0x80000000) == 0)
  {
    v83 = BYTE12(v220);
    v84 = *(v217 + 17);
    v85 = (v81 + 1);
    do
    {
      --*&v72[4 * (v82 / v83)];
      *(v84 + *(v85 - 1)) = 1;
      v86 = *v85++;
      v82 = v86;
    }

    while ((v86 & 0x80000000) == 0);
  }

  v70 = v210;
LABEL_90:
  v222 = 0u;
  v223 = 0u;
  if ((BYTE8(v220) & 2) != 0)
  {
    *__str = v219;
    *&__str[16] = v220;
    sub_2367861D0(__str, v72, v41, v70, v71, &v222);
  }

  else
  {
    v221[0] = v219;
    v221[1] = v220;
    sub_236785FB0(v221, v72, v41, v70, v71, __str);
    v222 = *__str;
    v223 = *&__str[16];
  }

  *__str = v222;
  *&__str[16] = v223;
  if (sub_2367E3E64(v7, __str, v72, v212, v67, a3))
  {
    free(v217);
    goto LABEL_117;
  }

  *__str = v222;
  *&__str[16] = v223;
  sub_236768978(__str, 0, v72, v212, v67, v213, __b, 0);
  sub_236750DDC(v216, v213, v212, v67, __b);
  *__str = v222;
  *&__str[16] = v223;
  sub_2366EE0E8(__str, 0, v72, v212, v67, v213, v211, __b, 0);
  v87 = sub_236767CA0(v216, BYTE12(v220), v72, v212, v67, *(v217 + 14), v211, __b, a3, &__b[4 * v216 + 4]);
  v217[16] = v87;
  *(v217 + 20) = 0;
  *(v217 + 21) = 0;
  v217[44] = 0;
  if (v87 < 1)
  {
    v41 = 0;
  }

  else
  {
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v41 = 0;
    v92 = BYTE12(v220);
    do
    {
      v93 = *(v211 + 4 * v89);
      v94 = &__b[4 * v89];
      if (v72)
      {
        v96 = *v94;
        v95 = *(v94 + 1);
        if (v96 >= v95)
        {
          v97 = 0;
        }

        else
        {
          v97 = 0;
          v98 = v95 - v96;
          v99 = &v67[v96];
          do
          {
            v100 = *v99++;
            v97 += *&v72[4 * v100];
            --v98;
          }

          while (v98);
        }
      }

      else
      {
        v93 = v92 * v93;
        v97 = (*(v94 + 1) - *v94) * v92;
      }

      if (v97 > v91)
      {
        v217[44] = v97;
        v91 = v97;
      }

      if (v93 > 192 || v97 >= 97)
      {
        v88 += ((v97 - 1) / 96 + 1) * ((v93 - 1) / 96) + (v97 - 1) / 96 + 1;
        *(v217 + 21) = v88;
      }

      v90 += v93 * v97;
      v41 += v93;
      ++v89;
    }

    while (v89 != v87);
    *(v217 + 20) = v90;
  }

  *v214 = 4 * (v41 + 3 * v87 + 3) + 16 * v87 + 16 * *(*(&v219 + 1) + 8 * v216) + 72;
  v101 = (*(a3 + 24))();
  if (!v101)
  {
    free(v217);
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", *v214);
      goto LABEL_51;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_115:
      sub_2366F716C();
    }

LABEL_116:
    _SparseTrap();
  }

  v102 = v101 + *v214;
  v103 = v217;
  v104 = v217[16];
  v105 = v104 + 1;
  v106 = (v101 + 4 * (v104 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v101 + *v214 < v106)
  {
    goto LABEL_307;
  }

  *(v217 + 11) = v101;
  v107 = (v106 + 4 * v104 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v102 < v107)
  {
    goto LABEL_307;
  }

  *(v217 + 12) = v106;
  v108 = (v107 + 4 * v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v102 < v108)
  {
    goto LABEL_307;
  }

  *(v217 + 13) = v107;
  v109 = v108 + 8 * v105;
  if (v109 > v102)
  {
    goto LABEL_307;
  }

  *(v217 + 15) = v108;
  v110 = (v109 + 4 * v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v102 < v110)
  {
    goto LABEL_307;
  }

  *(v217 + 16) = v109;
  v111 = v110 + 8 * v105;
  if (v111 > v102)
  {
    goto LABEL_307;
  }

  *(v217 + 18) = v110;
  if (v111 + 16 * *(*(&v219 + 1) + 8 * v216) > v102)
  {
    goto LABEL_307;
  }

  *(v217 + 19) = v111;
  if (v72)
  {
    if (v104 < 1)
    {
      v113 = 0;
    }

    else
    {
      v112 = 0;
      v113 = 0;
      do
      {
        *(v101 + 4 * v112) = v113;
        v114 = *&__b[4 * v112++];
        v115 = *&__b[4 * v112];
        if (v114 < v115)
        {
          v116 = v115 - v114;
          v117 = &v67[v114];
          do
          {
            v118 = *v117++;
            v113 += *&v72[4 * v118];
            --v116;
          }

          while (v116);
        }

        v104 = v217[16];
      }

      while (v112 < v104);
    }

    *(v101 + 4 * v104) = v113;
  }

  else if ((v104 & 0x80000000) == 0)
  {
    v124 = 0;
    v125 = BYTE12(v220);
    do
    {
      *(v101 + 4 * v124) = *&__b[4 * v124] * v125;
      v182 = v124++ < v217[16];
    }

    while (v182);
  }

  if (*(a3 + 16))
  {
    bzero(*(v217 + 10), 4 * v215);
    v103 = v217;
    v126 = *(a3 + 16);
    v127 = *v126;
    if ((v127 & 0x80000000) == 0)
    {
      v128 = *(v217 + 10);
      v129 = v215 - 1;
      v130 = v126 + 1;
      do
      {
        *(v128 + 4 * v127) = v129;
        v131 = *v130++;
        v127 = v131;
        --v129;
      }

      while ((v131 & 0x80000000) == 0);
    }

    if (v216 >= 1)
    {
      v132 = 0;
      v133 = 0;
      v134 = BYTE12(v220);
      do
      {
        if (v134)
        {
          v135 = 0;
          v136 = *(v217 + 10);
          do
          {
            v137 = v135 + v67[v132] * v134;
            if (!*(v136 + 4 * v137))
            {
              *(v136 + 4 * v137) = v133++;
            }

            ++v135;
          }

          while (v134 != v135);
        }

        ++v132;
      }

      while (v132 != v216);
    }
  }

  else if (v216 >= 1)
  {
    v138 = 0;
    v139 = 0;
    v140 = BYTE12(v220);
    v141 = 4 * BYTE12(v220);
    do
    {
      if (v140)
      {
        v142 = 0;
        v143 = *(v217 + 9);
        v144 = *(v217 + 10) + v138;
        do
        {
          *(v144 + 4 * v142) = v142 + *(v143 + 4 * v139) * v140;
          ++v142;
        }

        while (v140 != v142);
      }

      ++v139;
      v138 += v141;
    }

    while (v139 != v216);
  }

  sub_236812888(v103[16], *(v103 + 14), *(v103 + 12), *(v103 + 13));
  sub_23679A71C(&v222, v217, __b, *(a3 + 16), v67, &__b[4 * v217[16] + 4]);
  sub_23678A440(&v222, v217, v210, v209, __b);
  v146 = v217[15];
  v145 = v217[16];
  v147 = 8 * v145;
  v148 = *(v217 + 20);
  v149 = v146 < 0;
  v150 = 16 * v145 + 4 * v146;
  if (__CFADD__(16 * v145, 4 * v146))
  {
    v149 = 1;
  }

  if (v145 >= 0)
  {
    v151 = v149;
  }

  else
  {
    v150 = 8 * v145;
    v151 = 1;
  }

  if (v7 == 4)
  {
    if (v151)
    {
      goto LABEL_200;
    }

    v16 = __CFADD__(v148, 2 * v146);
    v148 += 2 * v146;
    v153 = v16;
    v16 = __CFADD__(v150, v147);
    v150 += v147;
    v152 = v16;
    if ((v146 & 0x80000000) != 0 || v153 || (v145 & 0x80000000) != 0)
    {
      goto LABEL_200;
    }

    goto LABEL_195;
  }

  if (v7 == 3)
  {
    if (v151)
    {
      goto LABEL_200;
    }

    v16 = __CFADD__(v148, 2 * v146);
    v148 += 2 * v146;
    v152 = v16;
    if ((v146 & 0x80000000) != 0)
    {
      goto LABEL_200;
    }

LABEL_195:
    if (v152)
    {
      goto LABEL_200;
    }

LABEL_198:
    v16 = __CFADD__(v146, v148);
    v154 = v146 + v148;
    if (v16)
    {
      goto LABEL_200;
    }

    v156 = v145 + 5;
    if (v145 < -5)
    {
      v156 = -5 - v145;
    }

    v157 = 8 * v156;
    if (v145 < -5)
    {
      v157 = -8 * v156;
    }

    v16 = __CFADD__(v150, v157);
    v158 = v150 + v157;
    v159 = v16;
    if (v145 < -5)
    {
      goto LABEL_200;
    }

    if (v156 >> 61)
    {
      goto LABEL_200;
    }

    if (v159)
    {
      goto LABEL_200;
    }

    v160 = v158 + 96;
    if (v158 >= 0xFFFFFFFFFFFFFFA0)
    {
      goto LABEL_200;
    }

    v161 = v160 + 4 * v154;
    v162 = __CFADD__(v160, 4 * v154);
    *(a5 + 56) = v161;
    if (v154 >> 62 || v162)
    {
      goto LABEL_200;
    }

    v163 = v160 + 8 * v154;
    v164 = __CFADD__(v160, 8 * v154);
    *(a5 + 64) = v163;
    if (v154 >> 61 || v164)
    {
      goto LABEL_200;
    }

    if ((*(a3 + 3) & 0x40) != 0)
    {
      v165 = 1;
    }

    else
    {
      v165 = sub_2366FCCD0(0);
    }

    v166 = *(a2 + 28);
    if (0x100 / v166 * v166 <= v166)
    {
      v167 = *(a2 + 28);
    }

    else
    {
      v167 = 0x100 / v166 * v166;
    }

    v168 = *(a2 + 28) * v9;
    v169 = v168 + 2 * v167;
    v170 = v169 >> 62;
    if (v169 >> 62)
    {
      v171 = 0;
LABEL_236:
      v170 = 0;
      v172 = 0;
      v173 = 0;
      v174 = 1;
      goto LABEL_262;
    }

    v171 = 4 * v169 + 72;
    v175 = v217[16];
    if (v175 >= 0)
    {
      v176 = v217[16];
    }

    else
    {
      v176 = -v175;
    }

    v177 = 41 * v176;
    if (v175 < 0)
    {
      v177 = -v177;
    }

    v178 = v177 + 32;
    v179 = v177 >= 0xFFFFFFFFFFFFFFE0;
    v174 = 1;
    if (v175 < 0 || v179)
    {
      goto LABEL_261;
    }

    v180 = v178 + 19200;
    if (v178 >= 0xFFFFFFFFFFFFB500)
    {
      goto LABEL_236;
    }

    v170 = 0;
    v181 = *(v217 + 21);
    v182 = v181 < 0;
    v183 = v181 < 0;
    if (v181 < 0)
    {
      v181 = -v181;
    }

    v184 = (v181 * 0x30uLL) >> 64;
    v185 = 48 * v181;
    if (v182)
    {
      v186 = -v185;
    }

    else
    {
      v186 = v185;
    }

    v187 = v184 != 0;
    if (!v185)
    {
      v183 = 0;
    }

    v188 = v180 + v186;
    v189 = __CFADD__(v180, v186);
    v174 = 1;
    if (v187 || v183 || v189)
    {
LABEL_261:
      v172 = 0;
      v173 = 0;
    }

    else
    {
      v16 = __CFADD__(v188, 4 * v168);
      v173 = v188 + 4 * v168;
      if (v16)
      {
        v170 = 0;
        v172 = 0;
      }

      else
      {
        v174 = 0;
        v172 = (v166 * v166) * v9;
        v170 = v167 * v167;
      }
    }

LABEL_262:
    if ((v7 - 3) >= 2)
    {
      if (v7 == 2)
      {
        if ((v174 & 1) == 0)
        {
          LODWORD(v193) = v217[44];
          if (v193 <= 4160)
          {
            v193 = 4160;
          }

          else
          {
            v193 = v193;
          }

          v192 = v170 + v193;
          goto LABEL_277;
        }
      }

      else if ((v174 & 1) == 0)
      {
        v16 = __CFADD__(v172, 2 * v170);
        v192 = v172 + 2 * v170;
        if (!v16)
        {
          goto LABEL_277;
        }
      }
    }

    else if ((v174 & 1) == 0)
    {
      v190 = 4160;
      if (2 * v9 > 0x1040)
      {
        v190 = 2 * v9;
      }

      v191 = v170 + v190;
      v16 = __CFADD__(v172, v191);
      v192 = v172 + v191;
      if (!v16)
      {
LABEL_277:
        v194 = !is_mul_ok(v171, v165);
        v195 = v171 * v165;
        v16 = __CFADD__(v173, v195);
        v196 = v173 + v195;
        v197 = v16;
        if (!v194 && (v197 & 1) == 0)
        {
          v198 = !is_mul_ok(v192, v165);
          v199 = v192 * v165;
          v16 = __CFADD__(v172, v199);
          v200 = v172 + v199;
          v201 = v16;
          if (!v198 && !v201)
          {
            v202 = v196 + 4 * v200;
            v203 = __CFADD__(v196, 4 * v200);
            *(a5 + 40) = v202;
            if (!(v200 >> 62) && !v203)
            {
              v204 = v196 + 8 * v200;
              v205 = __CFADD__(v196, 8 * v200);
              *(a5 + 48) = v204;
              if (!(v200 >> 61) && !v205)
              {
                v41 = 2 * v202;
                if (2 * v202 <= v208 || ((*(a3 + 32))(__b), (__b = (*(a3 + 24))(v41)) != 0))
                {
                  *(a5 + 8) = 0;
                  *(a5 + 32) = v217;
                  v206 = sub_236802E5C(v7, v217, 2 * v161, a4, 0);
                  if (v206)
                  {
                    *(a5 + 80) = v206;
                    _SparseRefactorSymmetric_Complex_Float(a2, a5, a4, __b);
                    result = (*(a3 + 32))(__b);
                    goto LABEL_23;
                  }

                  goto LABEL_117;
                }

                goto LABEL_308;
              }
            }
          }
        }
      }
    }

    v207 = *(a3 + 40);
    if (!v207)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F7128();
      }

      _SparseTrap();
    }

    memset(&__str[73], 0, 183);
    strcpy(__str, "Computation of workspace required for numeric factorization overflowed.\n");
    v207(__str);
    result = (*(a3 + 32))(__b);
LABEL_19:
    *a5 = -4;
    goto LABEL_23;
  }

  if ((v151 & 1) == 0)
  {
    goto LABEL_198;
  }

LABEL_200:
  v155 = *(a3 + 40);
  if (!v155)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F72E4();
    }

    _SparseTrap();
  }

  memset(&__str[40], 0, 216);
  strcpy(__str, "Computation of factor size overflowed.\n");
  v155(__str);
  (*(a3 + 32))(__b);
  result = sub_23680EEA8(v217, a3);
LABEL_23:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_236804ADC(void *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[1];
  v5 = *(v4 + 64);
  v6 = *v5;
  if ((v6 - 3) >= 2)
  {
    if (v6 != 2)
    {
      v9 = 0;
      v7 = *(v5 + 2);
      goto LABEL_9;
    }

    v7 = *(v5 + 2);
    v11 = *(v7 + 176);
    v9 = 8 * v11;
    v10 = v11 <= 4160;
  }

  else
  {
    v7 = *(v5 + 2);
    v8 = *(v7 + 60);
    v9 = 16 * v8;
    v10 = v8 <= 2080;
  }

  if (v10)
  {
    v9 = 33280;
  }

LABEL_9:
  v12 = result[5];
  v13 = v12 + *(v4 + 48);
  v14 = ((v12 + 4 * *(v7 + 60) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v14 || (v15 = *(v5 + 8), v16 = (&v14[v15 + 1] + 3) & 0xFFFFFFFFFFFFFFF8, v13 < v16) || (v17 = (v16 + 4 * v15 + 7) & 0xFFFFFFFFFFFFFFF8, v13 < v17) || (v18 = v17 + 8 * v15 * v15, v18 > v13) || v13 < ((v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8))
  {
    __break(1u);
  }

  else
  {
    result = sub_236804D34(result, a2, v6, *(v5 + 1), v7, *(v5 + 3), v15, *(v5 + 5), v12, v14, ((&v14[v15 + 1] + 3) & 0xFFFFFFFFFFFFFFF8), (v16 + 4 * v15 + 7) & 0xFFFFFFFFFFFFFFF8, v17 + 8 * v15 * v15, v5);
    if (result)
    {
      _X2 = 0;
      v20 = v3[1];
      atomic_store(result, (v20 + 16));
      atomic_store(1u, (v20 + 12));
      _X3 = 0;
      __asm { CASPAL          X2, X3, X2, X3, [X1] }

      if (_X2)
      {

        return __ulock_wake();
      }
    }

    else
    {
      v27 = *(*(*(v5 + 2) + 112) + 4 * v2);
      if (v27 != -1)
      {
        v28 = (*(v5 + 6) + 40 * v27);
        if (atomic_fetch_add_explicit(v28, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v29 = v3[2];
          if (v29)
          {
            _X4 = 0;
            _X5 = 0;
            v32 = v3[1] + 32;
            v33 = v3[3];
            __asm { CASP            X4, X5, X4, X5, [X1] }

            *(v29 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
            *(v29 + 32) = 0;
            v35 = _X4 & 1;
            _X2 = v35 | v29;
            _X7 = 0;
            __asm { CASPL           X6, X7, X2, X3, [X1] }

            if (_X6 != _X4)
            {
              _X4 = 0;
              do
              {
                _X7 = 0;
                __asm { CASP            X6, X7, X4, X5, [X1] }

                *(v29 + 24) = _X6 & 0xFFFFFFFFFFFFFFFELL;
                *(v29 + 32) = 0;
                v35 = _X6 & 1;
                _X2 = v35 | v29;
                _X11 = 0;
                __asm { CASPL           X10, X11, X2, X3, [X1] }
              }

              while (_X10 != _X6);
            }

            if (v35)
            {
              result = __ulock_wake();
            }
          }

          v3[2] = v28;
          v3[3] = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_236804D34(void *a1, uint64_t a2, int a3, uint64_t a4, void *a5, void *a6, signed int a7, uint64_t a8, uint64_t a9, int *a10, int *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v184 = a1;
  v190 = a13;
  v191 = a2;
  v195 = *MEMORY[0x277D85DE8];
  v187 = a4;
  v16 = *(a4 + 28);
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v17 = sub_2367769B0;
    }

    else
    {
      v17 = sub_236777388;
    }
  }

  else
  {
    if (!a3)
    {
      v181 = sub_236771FF4;
      v190 = 0;
      goto LABEL_9;
    }

    v17 = sub_236777640;
  }

  v181 = v17;
LABEL_9:
  LODWORD(v189) = a3;
  v18 = a3 - 3;
  v19 = a5[15];
  v20 = v191;
  v21 = *(v19 + 8 * v191);
  v22 = *(v19 + 8 * (v191 + 1)) - v21;
  v23 = a5[11];
  v180 = v191 + 1;
  v24 = *(v23 + 4 * (v20 + 1)) - *(v23 + 4 * v20);
  v25 = *(a6[5] + 8 * v191) + 8;
  v26 = v22;
  if ((v18 & 0xFE) != 0)
  {
    v27 = 0;
  }

  else
  {
    v27 = 2 * v24;
  }

  v28 = v25 + 8 * v22 * v24 + 8 * v27;
  _CF = *(v23 + 4 * (v191 + 1)) != *(v23 + 4 * v191);
  if (v24 >= 1)
  {
    v30 = 0;
    do
    {
      *(v28 + 4 * v30) = *(a8 + 4 * (v30 + *(v23 + 4 * v20)));
      ++v30;
    }

    while (v24 != v30);
  }

  v182 = v24;
  v183 = v22;
  v31 = a5[18];
  v186 = a5[19];
  v33 = a5[16];
  v32 = a5[17];
  v188 = a5;
  v34 = v33 + 4 * v21;
  v36 = a6[8];
  v37 = (v31 + 8 * v20);
  v38 = *v37;
  v39 = v37[1];
  if (v36)
  {
    if (*v37 < v39)
    {
      v185 = 8 * (v16 * v16);
      if (v16 <= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = v16;
      }

      v41 = 8 * v16;
      v42 = 8 * v26;
      do
      {
        v43 = &v186[v38];
        v45 = *v43;
        v44 = v43[1];
        v46 = v44 % v26;
        v47 = *(v187 + 32);
        v48 = (v44 / v26);
        v49 = v25 + 8 * v48 * v26 + 8 * v46;
        v50 = *(v34 + 4 * v46);
        if (v32)
        {
          v51 = v50 / v16 * v16;
          v52 = (v36 + 4 * v51);
          v53 = *(v34 + 4 * v48) / v16 * v16;
          v54 = v36 + 4 * v53;
          v55 = (v32 + v51);
          v56 = v32 + v53;
          v57 = 0;
          if (((v45 & 0x4000000000000000) != 0) ^ __OFSUB__(v45, -v45) | (v45 == -v45))
          {
            v58 = -v45;
          }

          else
          {
            v58 = v45;
          }

          v59 = v58 - 1;
          if (v45 < 0)
          {
            v79 = (v47 + v185 * v59);
            do
            {
              if ((*(v56 + v57) & 1) == 0)
              {
                v80 = 0;
                v81 = v55;
                v82 = v52;
                v83 = v79;
                v84 = v40;
                do
                {
                  v85 = *v81++;
                  if ((v85 & 1) == 0)
                  {
                    *(v49 + 8 * v80) = vadd_f32(*(v49 + 8 * v80), vmul_n_f32(vmul_n_f32(*v83, *v82), *(v54 + 4 * v57)));
                    ++v80;
                  }

                  v83 = (v83 + v41);
                  ++v82;
                  --v84;
                }

                while (v84);
                v49 += 8 * v26;
              }

              ++v57;
              ++v79;
            }

            while (v57 != v40);
          }

          else
          {
            v60 = (v47 + v185 * v59);
            do
            {
              if ((*(v56 + v57) & 1) == 0)
              {
                v61 = 0;
                v62 = v55;
                v63 = v52;
                v64 = v60;
                v65 = v40;
                do
                {
                  v66 = *v62++;
                  if ((v66 & 1) == 0)
                  {
                    *(v49 + 8 * v61) = vadd_f32(*(v49 + 8 * v61), vmul_n_f32(vmul_n_f32(*v64, *v63), *(v54 + 4 * v57)));
                    ++v61;
                  }

                  ++v64;
                  ++v63;
                  --v65;
                }

                while (v65);
                v49 += 8 * v26;
              }

              ++v57;
              v60 = (v60 + v41);
            }

            while (v57 != v40);
          }
        }

        else
        {
          v67 = (v36 + 4 * v50);
          v68 = v36 + 4 * *(v34 + 4 * v48);
          if (v45 < 0)
          {
            if (v16)
            {
              v86 = 0;
              if (((v45 & 0x4000000000000000) != 0) ^ __OFSUB__(v45, -v45) | (v45 == -v45))
              {
                v87 = -v45;
              }

              else
              {
                v87 = v45;
              }

              v88 = (v47 + v185 * (v87 - 1));
              do
              {
                v89 = 0;
                v90 = v67;
                v91 = v88;
                do
                {
                  v92 = *v90++;
                  *(v49 + v89) = vadd_f32(*(v49 + v89), vmul_n_f32(vmul_n_f32(*v91, v92), *(v68 + 4 * v86)));
                  v89 += 8;
                  v91 = (v91 + v41);
                }

                while (v41 != v89);
                ++v86;
                v49 += v42;
                ++v88;
              }

              while (v86 != v16);
            }
          }

          else if (v16)
          {
            v69 = 0;
            if (((v45 & 0x4000000000000000) != 0) ^ __OFSUB__(v45, -v45) | (v45 == -v45))
            {
              v70 = -v45;
            }

            else
            {
              v70 = v45;
            }

            v71 = (v47 + v185 * (v70 - 1));
            do
            {
              v72 = v67;
              v73 = v71;
              v74 = v49;
              v75 = v16;
              do
              {
                v76 = *v72++;
                v77 = v76;
                v78 = *v73++;
                *v74 = vadd_f32(*v74, vmul_n_f32(vmul_n_f32(v78, v77), *(v68 + 4 * v69)));
                ++v74;
                --v75;
              }

              while (v75);
              ++v69;
              v49 += v42;
              v71 = (v71 + v41);
            }

            while (v69 != v16);
          }
        }

        v38 += 2;
      }

      while (v38 < v37[1]);
    }
  }

  else if (*v37 < v39)
  {
    v93 = 8 * (v16 * v16);
    if (v16 <= 1)
    {
      v94 = 1;
    }

    else
    {
      v94 = v16;
    }

    v95 = 8 * v16;
    v96 = 8 * v26;
    do
    {
      v97 = &v186[v38];
      v99 = *v97;
      v98 = v97[1];
      v100 = *(v187 + 32);
      v101 = (v98 / v26);
      v102 = v25 + 8 * v101 * v26 + 8 * (v98 % v26);
      if (v32)
      {
        v103 = *(v34 + 4 * v101);
        v104 = (v32 + *(v34 + 4 * (v98 % v26)) / v16 * v16);
        v105 = v32 + v103 / v16 * v16;
        v106 = 0;
        if (((v99 & 0x4000000000000000) != 0) ^ __OFSUB__(v99, -v99) | (v99 == -v99))
        {
          v107 = -v99;
        }

        else
        {
          v107 = v99;
        }

        v108 = (v100 + v93 * (v107 - 1));
        if (v99 < 0)
        {
          do
          {
            if ((*(v105 + v106) & 1) == 0)
            {
              v114 = 0;
              v115 = v104;
              v116 = v108;
              v117 = v94;
              do
              {
                v118 = *v115++;
                if ((v118 & 1) == 0)
                {
                  *(v102 + 8 * v114) = vadd_f32(*v116, *(v102 + 8 * v114));
                  ++v114;
                }

                v116 = (v116 + v95);
                --v117;
              }

              while (v117);
              v102 += 8 * v26;
            }

            ++v106;
            ++v108;
          }

          while (v106 != v94);
        }

        else
        {
          do
          {
            if ((*(v105 + v106) & 1) == 0)
            {
              v109 = 0;
              v110 = v104;
              v111 = v108;
              v112 = v94;
              do
              {
                v113 = *v110++;
                if ((v113 & 1) == 0)
                {
                  *(v102 + 8 * v109) = vadd_f32(*v111, *(v102 + 8 * v109));
                  ++v109;
                }

                ++v111;
                --v112;
              }

              while (v112);
              v102 += 8 * v26;
            }

            ++v106;
            v108 = (v108 + v95);
          }

          while (v106 != v94);
        }
      }

      else if (v99 < 0)
      {
        if (v16)
        {
          v126 = 0;
          if (((v99 & 0x4000000000000000) != 0) ^ __OFSUB__(v99, -v99) | (v99 == -v99))
          {
            v127 = -v99;
          }

          else
          {
            v127 = v99;
          }

          v128 = (v100 + v93 * (v127 - 1));
          do
          {
            v129 = 0;
            v130 = v128;
            do
            {
              *(v102 + v129) = vadd_f32(*v130, *(v102 + v129));
              v129 += 8;
              v130 = (v130 + v95);
            }

            while (v95 != v129);
            ++v126;
            v102 += v96;
            ++v128;
          }

          while (v126 != v16);
        }
      }

      else if (v16)
      {
        v119 = 0;
        if (((v99 & 0x4000000000000000) != 0) ^ __OFSUB__(v99, -v99) | (v99 == -v99))
        {
          v120 = -v99;
        }

        else
        {
          v120 = v99;
        }

        v121 = (v100 + v93 * (v120 - 1));
        do
        {
          v122 = v121;
          v123 = v102;
          v124 = v16;
          do
          {
            v125 = *v122++;
            *v123 = vadd_f32(v125, *v123);
            ++v123;
            --v124;
          }

          while (v124);
          ++v119;
          v102 += v96;
          v121 = (v121 + v95);
        }

        while (v119 != v16);
      }

      v38 += 2;
    }

    while (v38 < v37[1]);
  }

  if (v189 == 4)
  {
    v131 = a6;
    v132 = atomic_load((a6[6] + 4 * v20));
    v133 = v188;
    if (v132 >= 1)
    {
      sub_2367777C8(4, v188, a6, v191, a9);
      v134 = atomic_load((a6[6] + 4 * v20));
      v135 = v134 + *(*(v188 + 120) + 8 * v180) - *(*(v188 + 120) + 8 * v20);
      v136 = *(a6[5] + 8 * v20) + 8;
      v182 = *(*(v188 + 88) + 4 * v180) - *(*(v188 + 88) + 4 * v20) + v134;
      v183 = v135;
    }

    v137 = v182;
    v138 = (v181)(v183, v182);
    *(a6[7] + 4 * v20) = v138;
    v139 = *(*(v133 + 112) + 4 * v20);
    if (v139 != -1)
    {
      atomic_fetch_add((a6[6] + 4 * v139), v137 - v138);
    }

    v140 = v183;
  }

  else
  {
    v137 = v182;
    v140 = v183;
    v131 = a6;
    v138 = v181(v183, v182, v25, v26, v28, a6, v190, v184, a14);
    if (v138 != v182)
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_145;
    }
  }

  v141 = v140 - v137;
  if (v140 > v137)
  {
    if (v141 >= a7)
    {
      if (v184)
      {
        v144 = ((v141 - 1) / a7 + 2 + ((v141 - 1) / a7 + 2) * ((v141 - 1) / a7)) / 2;
        if (v144 >= 0x40)
        {
          v145 = 64;
        }

        else
        {
          v145 = v144;
        }

        v146 = MEMORY[0x28223BE20](v138);
        v190 = &v180 - v147;
        MEMORY[0x28223BE20](v146);
        v189 = &v180 - v148;
        v194 = 0;
        if (v141 >= 1)
        {
          v186 = &v180;
          _X26 = 0;
          v150 = 0;
          v151 = 0;
          v152 = 0;
          v188 = 8 * v191;
          while (1)
          {
            v153 = v152;
            LODWORD(v187) = v152;
            do
            {
              v154 = &v189[24 * v150];
              v155 = v190;
              *v154 = v191;
              *(v154 + 1) = v153;
              *(v154 + 2) = v152;
              *(v154 + 2) = &v194;
              v156 = v155 + 40 * v150;
              *v156 = 0;
              *(v156 + 24) = 0;
              *(v156 + 32) = 0;
              *(v156 + 8) = v154;
              *(v156 + 16) = sub_236805BF0;
              v157 = v184[2];
              if (v157)
              {
                v158 = v184[1] + 32;
                v159 = v184[3];
                _X4 = 0;
                _X5 = 0;
                __asm { CASP            X4, X5, X4, X5, [X1] }

                while (1)
                {
                  *(v157 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
                  *(v157 + 32) = 0;
                  _X2 = _X4 & 1 | v157;
                  _X7 = 0;
                  __asm { CASPL           X6, X7, X2, X3, [X1] }

                  if (_X6 == _X4)
                  {
                    break;
                  }

                  _X5 = 0;
                  __asm { CASP            X4, X5, X26, X27, [X1] }
                }

                if (_X4)
                {
                  __ulock_wake();
                  v152 = v187;
                }
              }

              v170 = (v151 / v145 + v188);
              v171 = v184;
              v184[2] = v156;
              v171[3] = v170;
              if (++v150 >= v145)
              {
                while (1)
                {
                  v172 = atomic_load(&v194);
                  if (v172 >= v150 + v151)
                  {
                    break;
                  }

                  v193 = 0;
                  sub_2366FCDE4(v184, &v193);
                  if (v193)
                  {
                    goto LABEL_137;
                  }
                }

                v150 = 0;
                v151 += v145;
                v152 = v187;
              }

              v153 += a7;
            }

            while (v153 < v141);
            v152 += a7;
            if (v152 >= v141)
            {
              v173 = v150 + v151;
              goto LABEL_156;
            }
          }
        }

        v173 = 0;
LABEL_156:
        while (1)
        {
          v179 = atomic_load(&v194);
          if (v179 >= v173)
          {
            break;
          }

          v192 = 0;
          sub_2366FCDE4(v184, &v192);
          if (v192)
          {
LABEL_137:
            v174 = v184;
            sub_2366FCEC8(v184);
            result = atomic_load((v174[1] + 16));
            goto LABEL_145;
          }
        }
      }

      else if (v141 >= 1)
      {
        for (i = 0; i < v141; i += a7)
        {
          v177 = i;
          do
          {
            if (a14)
            {
              v178 = *(a14 + 56);
            }

            else
            {
              v178 = 0;
            }

            sub_2368057F4(v191, v177, i, v189, v188, a6, a7, a12, a10, a11, a9, v178, v190);
            v177 += a7;
          }

          while (v177 < v141);
        }
      }
    }

    else
    {
      if (a14)
      {
        v142 = *(a14 + 56);
      }

      else
      {
        v142 = 0;
      }

      sub_2368057F4(v191, 0, 0, v189, v188, v131, a7, a12, a10, a11, a9, v142, v190);
    }
  }

  result = 0;
LABEL_145:
  v175 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2368057F4(uint64_t a1, int a2, int a3, unsigned int a4, void *a5, void *a6, signed int a7, uint64_t a8, int *a9, int *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = sub_236771F34;
  v15 = sub_236771F84;
  if (a4 <= 2)
  {
    if (a4)
    {
      v14 = sub_2367FF9A0;
      v15 = sub_2368007B8;
    }

    goto LABEL_6;
  }

  if (a4 == 3)
  {
    v14 = sub_23673C4A0;
    v15 = sub_236740BE4;
LABEL_6:
    v16 = v15;
    v17 = 0;
    v18 = 0;
    v19 = a5[10];
    v20 = a4 - 3 < 2;
    v21 = a1;
    goto LABEL_8;
  }

  v19 = a5[10];
  v21 = a1;
  v18 = atomic_load((a6[6] + 4 * a1));
  v16 = sub_236740BE4;
  v14 = sub_23673C4A0;
  v20 = 1;
  v17 = 1;
LABEL_8:
  v22 = a5[15];
  v23 = a1;
  v24 = a1 + 1;
  v25 = a5[11];
  v26 = *(v25 + 4 * v24);
  v27 = v18 + *(v22 + 8 * v24) - *(v22 + 8 * v21);
  v28 = v26 - *(v25 + 4 * v21) + v18;
  v29 = v28;
  if (v17)
  {
    v29 = *(a6[7] + 4 * v21);
  }

  v30 = v28 * v27;
  if (!v20)
  {
    v30 = 0;
  }

  if (v29)
  {
    v31 = *(a6[5] + 8 * v21) + 8;
    v32 = v27;
    v33 = v31 + 8 * v30;
    v34 = v28 + a3;
    v35 = v27 - (v28 + a3);
    if (v35 >= a7)
    {
      v36 = a7;
    }

    else
    {
      v36 = v35;
    }

    v37 = v27 - v28;
    if ((v27 - v28) >= a7)
    {
      v38 = a7;
    }

    else
    {
      v38 = v27 - v28;
    }

    v39 = v38;
    v40 = *(v22 + 8 * v23) + v26 - *(v25 + 4 * v23);
    v41 = v40 + a3;
    v42 = v41 + v36;
    if (a2 == a3)
    {
      (v14)(v36, v29, v31 + 8 * v34, v32, v33, a8, v38, a13);
      v61[0] = v41;
      for (i = *(a5[14] + 4 * v23); i != -1; i = *(a5[14] + 4 * v45))
      {
        v44 = a5[16];
        v45 = i;
        v46 = (a5[11] + 4 * i);
        if (*(v19 + 4 * *(v44 + 4 * v61[0])) < v46[1])
        {
          if (v42 < *(a5[15] + 8 * v24) && *(v19 + 4 * *(v44 + 4 * v42)) < *v46)
          {
            return;
          }

          v47 = (a8 + 8 * (v61[0] - v41) * (v39 + 1));
          if (a12)
          {
            sub_2367F605C(a1, v45, v61, v41 + v36, a4, a5, a6, v47, v39, v19, a11, a10, (a12 + v45));
          }

          else
          {
            sub_2367F605C(a1, v45, v61, v41 + v36, a4, a5, a6, v47, v39, v19, a11, a10, 0);
          }
        }
      }
    }

    else
    {
      if (v37 - a2 >= a7)
      {
        v48 = a7;
      }

      else
      {
        v48 = (v37 - a2);
      }

      (v16)(v48, v36, v29, v31 + 8 * (v28 + a2), v31 + 8 * v34, v32, v33, a8, v38, a13);
      v61[0] = v41;
      v49 = *(a5[14] + 4 * v23);
      if (v49 != -1)
      {
        v50 = v40 + a2;
        v51 = v50 + v48;
        do
        {
          v52 = a5[16];
          v53 = v49;
          v54 = (a5[11] + 4 * v49);
          if (*(v19 + 4 * *(v52 + 4 * v61[0])) < v54[1])
          {
            if (v42 < *(a5[15] + 8 * v24) && *(v19 + 4 * *(v52 + 4 * v42)) < *v54)
            {
              return;
            }

            v55 = (a8 + 8 * (v61[0] - v41) * v39);
            if (a12)
            {
              sub_2367F6248(a1, v53, v50, v61, v51, v41 + v36, a4, a5, a6, v55, v39, v19, a11, a9, a10, (a12 + v53));
            }

            else
            {
              sub_2367F6248(a1, v53, v50, v61, v51, v41 + v36, a4, a5, a6, v55, v39, v19, a11, a9, a10, 0);
            }
          }

          v49 = *(a5[14] + 4 * v53);
        }

        while (v49 != -1);
      }
    }
  }
}

void sub_236805BF0(uint64_t a1, atomic_uint *volatile *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v10 = *(a1 + 8);
  v11 = *(v10 + 64);
  v12 = *(a1 + 40);
  v13 = v12 + *(v10 + 48);
  v14 = *(v11 + 2);
  v15 = ((v12 + 4 * *(v14 + 60) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v15)
  {
    goto LABEL_7;
  }

  a7 = *(v11 + 8);
  v8 = ((&v15[a7 + 1] + 3) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v8)
  {
    goto LABEL_7;
  }

  a8 = (&v8[a7 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v13 < a8)
  {
    goto LABEL_7;
  }

  v16 = a8 + 8 * a7 * a7;
  if (v16 > v13)
  {
    goto LABEL_7;
  }

  v9 = a2;
  a4 = *v11;
  if (a4 - 2 > 2)
  {
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  if (v16 + 33280 > v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  sub_2368057F4(*v9, *(v9 + 1), *(v9 + 2), a4, v14, *(v11 + 3), a7, a8, v15, v8, v12, *(v11 + 7), v16);
  atomic_fetch_add(v9[2], 1u);
}

__n128 _SparseGetOptionsFromNumericFactor_Complex_Float@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 80);
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

int *sub_236805D74(int *result, uint64_t a2)
{
  v3 = result;
  if ((*(a2 + 12) ^ *(result + 6)))
  {
    v8 = *(a2 + 4);
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = *a2;
      do
      {
        if (v10 >= 1)
        {
          v11 = 0;
          do
          {
            *(*(a2 + 16) + 8 * (v11 + *(a2 + 8) * v9)) = *(*(result + 2) + 8 * (v9 + result[2] * v11));
            v10 = *a2;
            ++v11;
          }

          while (v11 < *a2);
          v8 = *(a2 + 4);
        }

        ++v9;
      }

      while (v9 < v8);
    }
  }

  else
  {
    v4 = result[2];
    if (v4 == *result && *(a2 + 8) == v4)
    {
      v5 = *(a2 + 16);
      v6 = *(v3 + 2);
      v7 = 8 * v3[1] * v4;

      return memcpy(v5, v6, v7);
    }

    else if (result[1] >= 1)
    {
      v12 = 0;
      do
      {
        result = memcpy((*(a2 + 16) + 8 * *(a2 + 8) * v12), (*(v3 + 2) + 8 * v3[2] * v12), 8 * *v3);
        ++v12;
      }

      while (v12 < v3[1]);
    }
  }

  return result;
}

void _SparseRetainNumeric_Complex_Float(uint64_t a1)
{
  _SparseRetainSymbolic((a1 + 8));
  v2 = *(a1 + 25);
  v3 = v2 > 0x29 || ((1 << v2) & 0x3000000001DLL) == 0;
  if (!v3 || v2 - 81 < 3)
  {
    atomic_fetch_add((*(a1 + 80) + 32), 1u);
  }
}

void _SparseDestroyOpaqueNumeric_Complex_Float(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 25);
    if (v3 <= 0x29)
    {
      if (((1 << v3) & 0x1D) != 0)
      {
        v4 = *(a1 + 32);
        v5 = *(a1 + 72);
        if (atomic_fetch_add((v2 + 32), 0xFFFFFFFF) != 1)
        {
          goto LABEL_24;
        }

        v6 = *(v4 + 64);
        if (v6 >= 1)
        {
          for (i = 0; i < v6; ++i)
          {
            if (**(*(v2 + 40) + 8 * i))
            {
              (*(v4 + 32))();
              v6 = *(v4 + 64);
            }
          }
        }

LABEL_22:
        if ((v5 & 1) == 0)
        {
LABEL_23:
          (*(v4 + 32))(v2);
        }

LABEL_24:
        *(a1 + 80) = 0;
        goto LABEL_25;
      }

      if (((1 << v3) & 0x30000000000) != 0)
      {
        v4 = *(a1 + 32);
        v8 = *(a1 + 72);
        if (atomic_fetch_add((v2 + 32), 0xFFFFFFFF) != 1 || (v8 & 1) != 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 72);
    if (atomic_fetch_add((v2 + 32), 0xFFFFFFFF) != 1)
    {
      goto LABEL_24;
    }

    if (*(v2 + 72))
    {
      v9 = *(v4 + 168);
      if (v9 >= 1)
      {
        for (j = 0; j < v9; ++j)
        {
          if (**(*(v2 + 112) + 8 * j))
          {
            (*(v4 + 32))();
            v9 = *(v4 + 168);
          }
        }
      }
    }

    goto LABEL_22;
  }

LABEL_25:
  _SparseDestroyOpaqueSymbolic((a1 + 8));
  *a1 = -2147483647;
}

void _SparseReleaseOpaquePreconditioner_Complex_Float(uint64_t a1)
{
  if ((*a1 & 0xFFFFFFFE) == 2)
  {
    free(*(a1 + 8));
  }
}

void sub_236806094(uint64_t a1, float *__b, char *a3)
{
  v4 = __b;
  v5 = *(a1 + 4);
  v6 = *(a1 + 28);
  v62 = (v6 * v6);
  v60 = v5;
  v7 = (v5 * v6);
  v8 = 4 * v7;
  v78 = v6;
  if (v7 >= 1)
  {
    memset_pattern16(__b, &unk_23681FB80, 4 * (v5 * v6));
    v6 = v78;
  }

  v9 = 0;
  v74 = v6 + 1;
  v58 = v6 - 1;
  v64 = 8 * v62;
  v77 = 8 * v6;
  v55 = 4 * v7;
  v56 = v7;
  do
  {
    while (1)
    {
      v57 = v9;
      if (v7 >= 1)
      {
        bzero(a3, v8);
        v6 = v78;
      }

      if (v60 >= 1)
      {
        v10 = 0;
        v59 = *(a1 + 8);
        v11 = *v59;
        while (1)
        {
          v61 = v10 + 1;
          v65 = v59[v10 + 1];
          if (v11 < v65)
          {
            break;
          }

LABEL_51:
          v11 = v65;
          v10 = v61;
          if (v61 == v60)
          {
            goto LABEL_52;
          }
        }

        v63 = *(a1 + 16);
        v79 = v10 * v6;
        v68 = v64 * v11 + 12;
        v69 = v64 * v11 + 4;
        v66 = v10;
        while (1)
        {
          v70 = v11;
          v12 = *(v63 + 4 * v11);
          if ((*(a1 + 24) & 2) != 0)
          {
            if (v10 <= v12 && v12 < *a1)
            {
              v26 = *(a1 + 32);
              v75 = v26 + 8 * v70 * v62;
              if (v66 == v12)
              {
                if (v6)
                {
                  v27 = 0;
                  v28 = (v26 + v68);
                  v29 = &v4[v12 * v6 + 1];
                  v30 = &a3[4 * v12 * v6 + 4];
                  v31 = v58;
                  do
                  {
                    v32 = v27 + v79;
                    v33 = v30;
                    v72 = v29;
                    v73 = v28;
                    v34 = v31;
                    v71 = v27 + 1;
                    if (v27 + 1 < v6)
                    {
                      do
                      {
                        v35 = *v29++;
                        v36 = (v35 * hypotf(*(v28 - 1), *v28)) * v4[v32];
                        v37 = *v33;
                        if (v36 > *v33)
                        {
                          v37 = v36;
                        }

                        *v33++ = v37;
                        if (v36 <= *&a3[4 * v32])
                        {
                          v36 = *&a3[4 * v32];
                        }

                        *&a3[4 * v32] = v36;
                        v28 += 2;
                        --v34;
                      }

                      while (v34);
                    }

                    v38 = v4[v32];
                    v39 = v38 * (v38 * hypotf(*(v75 + 8 * v27 * v74), *(v75 + 8 * v27 * v74 + 4)));
                    if (v39 <= *&a3[4 * v32])
                    {
                      v39 = *&a3[4 * v32];
                    }

                    *&a3[4 * v32] = v39;
                    --v31;
                    v28 = &v73[v77 / 4 + 2];
                    v29 = v72 + 1;
                    ++v30;
                    ++v27;
                    v6 = v78;
                  }

                  while (v71 != v78);
                }

                goto LABEL_50;
              }

LABEL_41:
              if (v6)
              {
                v40 = 0;
                v41 = (v75 + 4);
                v76 = &v4[v12 * v6];
                v42 = &a3[4 * v12 * v6];
                do
                {
                  v43 = v40 + v79;
                  v44 = v6;
                  v45 = v42;
                  v46 = v76;
                  v47 = v41;
                  do
                  {
                    v48 = *v46++;
                    v49 = (v48 * hypotf(*(v47 - 1), *v47)) * v4[v43];
                    v50 = *v45;
                    if (v49 > *v45)
                    {
                      v50 = v49;
                    }

                    *v45++ = v50;
                    if (v49 <= *&a3[4 * v43])
                    {
                      v49 = *&a3[4 * v43];
                    }

                    *&a3[4 * v43] = v49;
                    v47 += 2;
                    --v44;
                  }

                  while (v44);
                  ++v40;
                  v6 = v78;
                  v41 = (v41 + v77);
                }

                while (v40 != v78);
              }
            }
          }

          else if (v10 >= v12)
          {
            v13 = *(a1 + 32);
            v75 = v13 + 8 * v70 * v62;
            if (v66 != v12)
            {
              goto LABEL_41;
            }

            if (v6)
            {
              v14 = 0;
              v15 = (v13 + v69);
              v16 = &v4[v12 * v6];
              v17 = &a3[4 * v12 * v6];
              do
              {
                v18 = v79;
                if (v14)
                {
                  v19 = 0;
                  v18 = v14 + v79;
                  v20 = v15;
                  do
                  {
                    v21 = v16[v19];
                    v22 = (v21 * hypotf(*(v20 - 1), *v20)) * v4[v18];
                    v23 = *&v17[4 * v19];
                    if (v22 > v23)
                    {
                      v23 = v22;
                    }

                    *&v17[4 * v19] = v23;
                    if (v22 <= *&a3[4 * v18])
                    {
                      v22 = *&a3[4 * v18];
                    }

                    *&a3[4 * v18] = v22;
                    ++v19;
                    v20 += 2;
                  }

                  while (v14 != v19);
                }

                v24 = v4[v18];
                v25 = v24 * (v24 * hypotf(*(v75 + 8 * v14 * v74), *(v75 + 8 * v14 * v74 + 4)));
                if (v25 <= *&a3[4 * v18])
                {
                  v25 = *&a3[4 * v18];
                }

                *&a3[4 * v18] = v25;
                ++v14;
                v6 = v78;
                v15 = (v15 + v77);
              }

              while (v14 != v78);
            }
          }

LABEL_50:
          v11 = v70 + 1;
          v68 += v64;
          v69 += v64;
          v10 = v66;
          if (v70 + 1 == v65)
          {
            goto LABEL_51;
          }
        }
      }

LABEL_52:
      v8 = v55;
      v7 = v56;
      v51 = v56;
      v52 = a3;
      v53 = v4;
      if (v56 >= 1)
      {
        break;
      }

      v9 = v57 + 1;
      if (v57 == 2)
      {
        return;
      }
    }

    do
    {
      if (*v52 == 0.0)
      {
        *v53 = INFINITY;
      }

      else
      {
        v54 = *v53 / sqrt(*v52);
        *v53 = v54;
      }

      ++v53;
      ++v52;
      --v51;
    }

    while (v51);
    v9 = v57 + 1;
  }

  while (v57 != 2);
  do
  {
    if (fabsf(*v4) == INFINITY)
    {
      *v4 = 1.0;
    }

    ++v4;
    --v7;
  }

  while (v7);
}

void sub_2368065BC(int *a1, uint64_t a2, uint64_t a3, void *__b, char *a5, char *a6)
{
  v43 = a1[1];
  v9 = *(a1 + 28);
  v49 = *a1;
  if (v49 * v9 >= 1)
  {
    memset_pattern16(__b, &unk_23681FB80, 4 * (v49 * v9));
  }

  v45 = __b;
  v40 = (v43 * v9);
  if (v40 >= 1)
  {
    memset_pattern16(a5, &unk_23681FB80, 4 * (v43 * v9));
  }

  v10 = 0;
  v39 = (v49 * v9);
  v37 = 4 * (v43 * v9);
  v51 = 8 * (v9 * v9);
  v55 = 8 * v9;
  v41 = a3;
  v11 = &a6[4 * v49];
  do
  {
    v38 = v10;
    if (v39 >= 1)
    {
      bzero(a6, 4 * v39);
    }

    if (v40 >= 1)
    {
      bzero(v11, v37);
    }

    if (v43 >= 1)
    {
      v12 = 0;
      v42 = *(a1 + 1);
      do
      {
        if (a3)
        {
          v13 = *(a3 + 4 * v12);
        }

        else
        {
          v13 = v12;
        }

        v14 = *(v42 + 8 * v12);
        v44 = v12 + 1;
        v52 = *(v42 + 8 * (v12 + 1));
        if (v14 < v52)
        {
          v50 = *(a1 + 2);
          v56 = v9 * v13;
          v54 = v51 * v14 + 4;
          do
          {
            v53 = v14;
            v15 = *(v50 + 4 * v14);
            if ((v15 & 0x80000000) == 0 && v15 < v49)
            {
              if (a2)
              {
                v15 = *(a2 + 4 * v15);
              }

              if (v9)
              {
                v16 = 0;
                v17 = v15 * v9;
                v18 = (*(a1 + 4) + v54);
                v58 = &v45[v17];
                v57 = &a6[4 * v17];
                do
                {
                  v19 = v57;
                  v20 = v16 + v56;
                  v21 = v58;
                  v22 = v18;
                  v23 = v9;
                  do
                  {
                    v24 = *v21++;
                    v25 = (v24 * hypotf(*(v22 - 1), *v22)) * *&a5[4 * v20];
                    v26 = *v19;
                    if (v25 > *v19)
                    {
                      v26 = v25;
                    }

                    *v19++ = v26;
                    if (v25 <= *&v11[4 * v20])
                    {
                      v25 = *&v11[4 * v20];
                    }

                    *&v11[4 * v20] = v25;
                    v22 += 2;
                    --v9;
                  }

                  while (v9);
                  ++v16;
                  v18 = (v18 + v55);
                  v9 = v23;
                }

                while (v16 != v23);
              }
            }

            v14 = v53 + 1;
            v54 += v51;
          }

          while (v53 + 1 != v52);
        }

        v12 = v44;
        a3 = v41;
      }

      while (v44 != v43);
    }

    v27 = v39;
    v29 = v45;
    v28 = a6;
    if (v39 >= 1)
    {
      do
      {
        if (*v28 == 0.0)
        {
          *v29 = INFINITY;
        }

        else
        {
          v30 = *v29 / sqrt(*v28);
          *v29 = v30;
        }

        ++v29;
        ++v28;
        --v27;
      }

      while (v27);
    }

    v31 = v40;
    v32 = &a6[4 * v49];
    v33 = a5;
    if (v40 >= 1)
    {
      do
      {
        if (*v32 == 0.0)
        {
          *v33 = INFINITY;
        }

        else
        {
          v34 = *v33 / sqrt(*v32);
          *v33 = v34;
        }

        ++v33;
        ++v32;
        --v31;
      }

      while (v31);
    }

    v10 = v38 + 1;
  }

  while (v38 != 2);
  v35 = v39;
  v36 = v45;
  if (v39 >= 1)
  {
    do
    {
      if (fabsf(*v36) == INFINITY)
      {
        *v36 = 1.0;
      }

      ++v36;
      --v35;
    }

    while (v35);
  }

  if (v40 >= 1)
  {
    do
    {
      if (fabsf(*a5) == INFINITY)
      {
        *a5 = 1065353216;
      }

      a5 += 4;
      --v40;
    }

    while (v40);
  }
}

void sub_236806998(uint64_t a1, int *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v9 = a3;
  v574 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 25);
  v537 = v11;
  if (v11 <= 0x27)
  {
    v24 = *(a1 + 32);
    v25 = *(a1 + 80);
    sub_23680944C(*(v25 + 64), *(v24 + 136), a2, a3);
    sub_23680953C(v537, v24, v25, a3, a4);
    sub_2368099C4(v537, v24, v25, 0, a3);
    if (*(v25 + 92) == 1)
    {
      sub_23680A0F0(v537, v24, v25, a3, a4);
    }

    else
    {
      sub_23680A444(v537, v24, v25, a3, a4);
    }

    v43 = *(v25 + 64);
    v44 = *(v24 + 136);
    v45 = *MEMORY[0x277D85DE8];

    sub_23680944C(v43, v44, 0, a3);
  }

  else
  {
    v534 = a4 + a5;
    if (v11 - 81 < 3)
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 80);
      v540 = v13;
      if (a2)
      {
        sub_236805D74(a2, a3);
        v13 = v540;
        v9 = a3;
      }

      v14 = *(a1 + 24);
      v527 = v14 * v14;
      if (*(a1 + 4))
      {
        v15 = 4;
        if (*(v9 + 12))
        {
          v15 = 0;
        }

        v16 = *(v9 + v15);
        LODWORD(v569) = v16;
        v17 = *(v12 + 56);
        v554 = v17;
        LODWORD(v556) = v14;
        v18 = (&a4[v17 * v16] + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v534 >= v18)
        {
          v538 = v18 + 8 * v17 * v16;
          if (v538 <= v534)
          {
            if (*(v13 + 104))
            {
              if (v16 >= 1)
              {
                v19 = 0;
                do
                {
                  if (v17 >= 1)
                  {
                    v20 = 0;
                    do
                    {
                      if (*(v9 + 12))
                      {
                        v22 = v20;
                      }

                      else
                      {
                        v22 = v19;
                      }

                      if (*(v9 + 12))
                      {
                        v23 = v19;
                      }

                      else
                      {
                        v23 = v20;
                      }

                      v21 = v20 % v14 + *(*(v12 + 144) + 4 * (v20 / v14)) * v14;
                      a4[v21 + v19 * v17] = vmul_n_f32(*(*(v9 + 16) + 8 * (v23 + v22 * *(v9 + 8))), *(*(v13 + 104) + 4 * v21));
                      ++v20;
                    }

                    while (v17 != v20);
                  }

                  ++v19;
                }

                while (v19 != v16);
              }
            }

            else if (v16 >= 1)
            {
              v58 = 0;
              do
              {
                if (v17 >= 1)
                {
                  v59 = 0;
                  do
                  {
                    if (*(v9 + 12))
                    {
                      v60 = v59;
                    }

                    else
                    {
                      v60 = v58;
                    }

                    if (*(v9 + 12))
                    {
                      v61 = v58;
                    }

                    else
                    {
                      v61 = v59;
                    }

                    a4[(v59 % v14 + v58 * v17 + *(*(v12 + 144) + 4 * (v59 / v14)) * v14)] = *(*(v9 + 16) + 8 * (v61 + v60 * *(v9 + 8)));
                    ++v59;
                  }

                  while (v17 != v59);
                }

                ++v58;
              }

              while (v58 != v16);
            }

            v62 = *(v12 + 100);
            v543 = v17;
            v548 = (&a4[v17 * v16] + 7) & 0xFFFFFFFFFFFFFFF8;
            if (v14 == 1)
            {
              v63 = 1;
              if (v62 >= 1)
              {
                v64 = *(v12 + 60);
                v65 = 8 * v17;
                v66 = &a4[v64 - 1] + 4;
                do
                {
                  v67 = v64--;
                  v68 = *(v12 + 120);
                  v69 = *(v68 + 8 * v64);
                  v70 = v69 + 1;
                  if (v69 + 1 < *(v68 + 8 * v67))
                  {
                    do
                    {
                      if (v16 >= 1)
                      {
                        v71 = (*(v13 + 40) + 8 * v70);
                        v72 = *v71;
                        v73 = v71[1];
                        v74 = &a4[*(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v70))] + 1;
                        v75 = v66;
                        v76 = v16;
                        do
                        {
                          v77 = *(v74 - 1);
                          v78 = *v75 - ((v73 * v77) + (v72 * *v74));
                          *(v75 - 1) = *(v75 - 1) - ((v72 * v77) - (v73 * *v74));
                          *v75 = v78;
                          v74 = (v74 + v65);
                          v75 = (v75 + v65);
                          --v76;
                        }

                        while (v76);
                        v68 = *(v12 + 120);
                      }

                      ++v70;
                    }

                    while (v70 < *(v68 + 8 * v67));
                    v69 = *(v68 + 8 * v64);
                  }

                  if (v16 >= 1)
                  {
                    v79 = (*(v13 + 40) + 8 * v69);
                    v81 = *v79;
                    v80 = v79[1];
                    v82 = v66;
                    v83 = v16;
                    do
                    {
                      v84 = *(v82 - 1);
                      v85 = (v80 * v84) + (v81 * *v82);
                      *(v82 - 1) = (v81 * v84) - (v80 * *v82);
                      *v82 = v85;
                      v82 = (v82 + v65);
                      --v83;
                    }

                    while (v83);
                  }

                  v66 -= 8;
                }

                while (v64 > *(v12 + 60) - *(v12 + 100));
              }
            }

            else
            {
              v63 = v14 * v14;
              if (v62 >= 1)
              {
                v86 = *(v12 + 60);
                v87 = *(v12 + 96) + v62;
                do
                {
                  v546 = v87;
                  v88 = v86 - 1;
                  v89 = *(v12 + 120);
                  v90 = *(v89 + 8 * (v86 - 1)) + 1;
                  v91 = v556;
                  if (v90 < *(v89 + 8 * v86))
                  {
                    v92 = v569;
                    do
                    {
                      if (v92 >= 1)
                      {
                        v93 = 0;
                        v94 = *(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v90)) * v91;
                        v95 = *(v13 + 40) + 8 * v90 * v63;
                        do
                        {
                          if (v91 >= 1)
                          {
                            for (i = 0; i < v91; ++i)
                            {
                              v97 = 0;
                              do
                              {
                                v98 = (v95 + 8 * (v97 + i * v91));
                                v99 = *v98;
                                v100 = v98[1];
                                v101 = &a4[v94 + v97 + v554 * v93];
                                v102 = v101[1];
                                v103 = &a4[v554 * v93 + i + v91 * v88];
                                v104 = v103[1] - ((v100 * *v101) + (v99 * v102));
                                *v103 = *v103 - ((v99 * *v101) - (v100 * v102));
                                v103[1] = v104;
                                ++v97;
                              }

                              while (v97 < v91);
                            }

                            v92 = v569;
                          }

                          ++v93;
                        }

                        while (v93 < v92);
                        v89 = *(v12 + 120);
                      }

                      ++v90;
                    }

                    while (v90 < *(v89 + 8 * v86));
                    v105 = *(v89 + 8 * v88);
                  }

                  v87 = v546 - 1;
                  v106 = *(v13 + 40);
                  v107 = *(v13 + 48) + 4 * v91 * (v546 - 1);
                  cgetrs_NEWLAPACK();
                  --v86;
                  v9 = a3;
                  v13 = v540;
                  v63 = v527;
                  v17 = v543;
                  v18 = v548;
                }

                while (v88 > *(v12 + 60) - *(v12 + 100));
              }
            }

            v522 = *(v12 + 104);
            if (v522 > 0)
            {
              v547 = 8 * v17;
              while (1)
              {
                v108 = v522;
                v109 = *(v12 + 112);
                v521 = v522--;
                v110 = *(v109 + 4 * v522);
                if (v110 >= *(v109 + 4 * v521))
                {
                  v113 = v537;
                }

                else
                {
                  v111 = v110;
                  v112 = *(v12 + 120);
                  v113 = v537;
                  do
                  {
                    v114 = v111;
                    v115 = *(v112 + 8 * v111++);
                    if (v115 < *(v112 + 8 * v111))
                    {
                      v116 = v556;
                      v117 = v569;
                      do
                      {
                        if (v117 >= 1)
                        {
                          v118 = 0;
                          v119 = *(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v115)) * v116;
                          v120 = *(v13 + 40) + 8 * v115 * v63;
                          do
                          {
                            if (v116 >= 1)
                            {
                              for (j = 0; j < v116; ++j)
                              {
                                v122 = 0;
                                do
                                {
                                  v123 = (v120 + 8 * (v122 + j * v116));
                                  v124 = *v123;
                                  v125 = v123[1];
                                  v126 = &a4[v119 + v122 + v554 * v118];
                                  v127 = v126[1];
                                  v128 = &a4[v554 * v118 + j + v116 * v114];
                                  v129 = v128[1] - ((v125 * *v126) + (v124 * v127));
                                  *v128 = *v128 - ((v124 * *v126) - (v125 * v127));
                                  v128[1] = v129;
                                  ++v122;
                                }

                                while (v122 < v116);
                              }

                              v117 = v569;
                            }

                            ++v118;
                          }

                          while (v118 < v117);
                          v112 = *(v12 + 120);
                        }

                        ++v115;
                      }

                      while (v115 < *(v112 + 8 * v111));
                      v109 = *(v12 + 112);
                    }
                  }

                  while (v111 < *(v109 + 4 * v108));
                  v110 = *(v109 + 4 * v522);
                }

                v130 = v556;
                v131 = v569;
                if (*(v12 + 168) >= 1)
                {
                  break;
                }

LABEL_274:
                if (v131 >= 1)
                {
                  v256 = 8 * (*(v109 + 4 * v521) - v110) * v130;
                  v257 = v131;
                  v258 = v110 * v130;
                  do
                  {
                    memcpy(&a4[v258], (v18 + v258 * 8), v256);
                    v18 = v548;
                    v258 += v554;
                    --v257;
                  }

                  while (v257);
                }

                v9 = a3;
                v13 = v540;
                v63 = v527;
                LODWORD(v17) = v543;
                if (v521 <= 1)
                {
                  goto LABEL_459;
                }
              }

              v132 = 0;
              v133 = v554;
              v134 = *(v109 + 4 * v522 + 4);
              v135 = 8 * v554;
              v524 = v134;
              v535 = v110;
              while (1)
              {
                v136 = *(v12 + 176);
                v137 = *(v136 + 4 * v132);
                v138 = v137 >= v110 && v137 < v134;
                if (v138)
                {
                  break;
                }

                v139 = v132 + 1;
LABEL_206:
                v202 = *(v12 + 168);
                v132 = v139;
                if (v139 >= v202)
                {
                  v130 = v556;
                  v131 = v569;
                  v109 = *(v12 + 112);
                  v203 = (v109 + 4 * v522);
                  v110 = *v203;
                  if (v202 >= 1)
                  {
                    v536 = *v203;
                    v204 = v203[1];
                    v526 = v204;
                    do
                    {
                      v205 = v202--;
                      v206 = *(v12 + 176);
                      v207 = *(v206 + 4 * v202);
                      if (v207 >= v536 && v207 < v204)
                      {
                        if (v113 == 83)
                        {
                          v209 = *(*(v13 + 80) + 4 * v202);
                          v210 = *(*(v13 + 88) + 4 * v202);
                          v211 = *(*(v13 + 72) + 4 * v202) + (*(v206 + 4 * v205) - v207) * v130;
                          v212 = *(*(v13 + 64) + 4 * v202);
                        }

                        else
                        {
                          v210 = 0;
                          v209 = 0;
                          v211 = (*(v206 + 4 * v205) - v207) * v130;
                          v212 = v211;
                        }

                        v213 = v210 + v211 + v130 * (*(*(v12 + 200) + 8 * v205) - *(*(v12 + 200) + 8 * v202));
                        if (v113 == 81)
                        {
                          v214 = 0;
                          v215 = 0;
                        }

                        else
                        {
                          v214 = *(*(v13 + 112) + 8 * v202) + 8 + 8 * v211 * (v209 + v211 + v130 * (*(*(v12 + 184) + 8 * v205) - *(*(v12 + 184) + 8 * v202))) + 8 * v211 * (v210 + v130 * (*(*(v12 + 200) + 8 * v205) - *(*(v12 + 200) + 8 * v202)));
                          v215 = v214 + 4 * v211 + 4 * v209;
                        }

                        v216 = (v214 + 4 * v211);
                        if (v209 <= 0)
                        {
                          v216 = 0;
                        }

                        if (v212)
                        {
                          v530 = v209 + v211 + v130 * (*(*(v12 + 184) + 8 * v205) - *(*(v12 + 184) + 8 * v202));
                          v528 = *(*(v13 + 112) + 8 * v202) + 8;
                          v531 = v213;
                          if (v131 >= 1)
                          {
                            v217 = 0;
                            v218 = 8 * v213;
                            v219 = v548;
                            v220 = a4;
                            v221 = v538;
                            do
                            {
                              if (v214)
                              {
                                if (v212 < 1)
                                {
                                  LODWORD(v227) = 0;
                                }

                                else
                                {
                                  v222 = v215;
                                  v223 = v221;
                                  v224 = v212;
                                  do
                                  {
                                    v226 = *v222++;
                                    v225 = v226;
                                    if (v226 < 0)
                                    {
                                      v225 = -v225;
                                    }

                                    *v223++ = a4[v217 * v554 + v225];
                                    --v224;
                                  }

                                  while (v224);
                                  LODWORD(v227) = v212;
                                }

                                if (v227 < v211)
                                {
                                  v227 = v227;
                                  do
                                  {
                                    v231 = *(v214 + 4 * v227);
                                    if (v231 < 0)
                                    {
                                      v231 = -v231;
                                    }

                                    v221[v227++] = *(v548 + 8 * v217 * v543 + 8 * v231);
                                  }

                                  while (v211 != v227);
                                  LODWORD(v227) = v211;
                                }
                              }

                              else
                              {
                                v228 = *(v12 + 176);
                                v229 = *(v228 + 4 * v202) * v130;
                                if (v229 >= *(v228 + 4 * v205) * v130)
                                {
                                  LODWORD(v227) = 0;
                                }

                                else
                                {
                                  v230 = 0;
                                  do
                                  {
                                    v221[v230] = v220[v229 + v230];
                                    ++v230;
                                  }

                                  while (v229 + v230 < *(*(v12 + 176) + 4 * v205) * v130);
                                  LODWORD(v227) = v230;
                                }
                              }

                              v232 = *(v12 + 184);
                              for (k = *(v232 + 8 * v202); k < *(v232 + 8 * v205); ++k)
                              {
                                if (v130 >= 1)
                                {
                                  v234 = v227;
                                  LODWORD(v227) = v130 + v227;
                                  v235 = v219;
                                  v236 = v130;
                                  do
                                  {
                                    v221[v234++] = *(v235 + 8 * *(*(v12 + 192) + 4 * k) * v130);
                                    v235 += 8;
                                    --v236;
                                  }

                                  while (v236);
                                  v232 = *(v12 + 184);
                                }
                              }

                              if (v209 >= 1)
                              {
                                v237 = v227;
                                v238 = v216;
                                v239 = v209;
                                do
                                {
                                  v240 = *v238++;
                                  v221[v237++] = *(v548 + 8 * v217 * v543 + 8 * v240);
                                  --v239;
                                }

                                while (v239);
                              }

                              ++v217;
                              v221 = (v221 + v218);
                              v220 += v554;
                              v219 += v547;
                            }

                            while (v217 != v131);
                          }

                          if (v530 > v212)
                          {
                            cblas_cgemm_NEWLAPACK();
                            v113 = v537;
                            v13 = v540;
                          }

                          if (v212 >= 2)
                          {
                            cblas_ctrsm_NEWLAPACK();
                            v113 = v537;
                            v13 = v540;
                          }

                          if (v214)
                          {
                            v18 = v548;
                            v204 = v526;
                            if (v131 >= 1)
                            {
                              v241 = 0;
                              v242 = v538;
                              do
                              {
                                if (v212 >= 1)
                                {
                                  v243 = v242;
                                  v244 = v214;
                                  v245 = v212;
                                  do
                                  {
                                    v247 = *v244++;
                                    v246 = v247;
                                    v248 = *v243++;
                                    *(v548 + 8 * v241 * v543 + 8 * v246) = v248;
                                    --v245;
                                  }

                                  while (v245);
                                }

                                ++v241;
                                v242 += v531;
                              }

                              while (v241 != v131);
                            }
                          }

                          else
                          {
                            v18 = v548;
                            v204 = v526;
                            if (v131 >= 1)
                            {
                              v249 = 0;
                              v250 = *(v12 + 176);
                              v251 = v548;
                              v252 = v538;
                              do
                              {
                                v253 = *(v250 + 4 * v202) * v130;
                                v254 = v252;
                                if (v253 < *(v250 + 4 * v205) * v130)
                                {
                                  do
                                  {
                                    v255 = *v254++;
                                    *(v251 + 8 * v253++) = v255;
                                    v250 = *(v12 + 176);
                                  }

                                  while (v253 < *(v250 + 4 * v205) * v130);
                                }

                                ++v249;
                                v252 += v531;
                                v251 += v547;
                              }

                              while (v249 != v131);
                            }
                          }
                        }
                      }
                    }

                    while (v205 > 1);
                    v109 = *(v12 + 112);
                    v110 = *(v109 + 4 * v522);
                    LODWORD(v130) = v556;
                    LODWORD(v131) = v569;
                  }

                  goto LABEL_274;
                }
              }

              if (v113 == 83)
              {
                v140 = *(*(v13 + 72) + 4 * v132);
                v141 = *(*(v13 + 80) + 4 * v132);
                v142 = *(*(v13 + 88) + 4 * v132);
              }

              else
              {
                v140 = 0;
                v141 = 0;
                v142 = 0;
              }

              v139 = v132 + 1;
              v143 = v140 + (*(v136 + 4 * (v132 + 1)) - v137) * v130;
              v144 = v143;
              if (v113 == 83)
              {
                v144 = *(*(v13 + 64) + 4 * v132);
              }

              v145 = v130 * (*(*(v12 + 200) + 8 * v139) - *(*(v12 + 200) + 8 * v132));
              v146 = *(*(v13 + 112) + 8 * v132) + 8 + 8 * (v143 + v141 + v130 * (*(*(v12 + 184) + 8 * v139) - *(*(v12 + 184) + 8 * v132))) * v143 + 8 * (v145 + v142) * v143 + 4 * v143 + 4 * v141;
              if (v113 == 81)
              {
                v147 = 0;
              }

              else
              {
                v147 = v146;
              }

              if (v142 <= 0)
              {
                v148 = 0;
              }

              else
              {
                v148 = &v147[v143];
              }

              if (!v144)
              {
                goto LABEL_206;
              }

              v541 = v142;
              v529 = v147;
              v525 = v148;
              if (v113 == 81)
              {
                if (v131 >= 1)
                {
                  v149 = 0;
                  v150 = a4;
                  v151 = v538;
                  do
                  {
                    v152 = v150;
                    v153 = v151;
                    v154 = v144;
                    if (v144 >= 1)
                    {
                      do
                      {
                        *v153++ = v152[*(*(v12 + 176) + 4 * v132) * v130];
                        ++v152;
                        --v154;
                      }

                      while (v154);
                    }

                    ++v149;
                    v151 += v144;
                    v150 = (v150 + v135);
                  }

                  while (v149 != v131);
LABEL_166:
                  cblas_ctrsm_NEWLAPACK();
                  v113 = v537;
                  if (v537 == 81)
                  {
                    v13 = v540;
                    v18 = v548;
                    v133 = v554;
                    v161 = v541;
                    v162 = 0;
                    v163 = v538;
                    v164 = a4;
                    do
                    {
                      v165 = v163;
                      v166 = v164;
                      v167 = v144;
                      if (v144 >= 1)
                      {
                        do
                        {
                          v168 = *v165++;
                          v166[*(*(v12 + 176) + 4 * v132) * v130] = v168;
                          ++v166;
                          --v167;
                        }

                        while (v167);
                      }

                      ++v162;
                      v164 = (v164 + v135);
                      v163 += v144;
                    }

                    while (v162 != v131);
                  }

                  else
                  {
                    v13 = v540;
                    v18 = v548;
                    v133 = v554;
                    v161 = v541;
                    v169 = 0;
                    v170 = v538;
                    do
                    {
                      if (v144 >= 1)
                      {
                        v171 = v170;
                        v172 = v529;
                        v173 = v144;
                        do
                        {
                          v175 = *v172++;
                          v174 = v175;
                          v176 = *v171++;
                          a4[v169 * v554 + v174] = v176;
                          --v173;
                        }

                        while (v173);
                      }

                      ++v169;
                      v170 += v144;
                    }

                    while (v169 != v131);
                  }

                  goto LABEL_178;
                }
              }

              else if (v131 >= 1)
              {
                v155 = 0;
                v156 = v538;
                do
                {
                  if (v144 >= 1)
                  {
                    v157 = v147;
                    v158 = v156;
                    v159 = v144;
                    do
                    {
                      v160 = *v157++;
                      *v158++ = a4[v155 * v133 + v160];
                      --v159;
                    }

                    while (v159);
                  }

                  ++v155;
                  v156 += v144;
                }

                while (v155 != v131);
                goto LABEL_166;
              }

              cblas_ctrsm_NEWLAPACK();
              v161 = v541;
              v133 = v554;
              v18 = v548;
              v113 = v537;
              v13 = v540;
LABEL_178:
              v177 = v143 + v161 + v145;
              if (v177 > v144)
              {
                v178 = (v538 + 8 * v144 * v131);
                v523 = v143 + v161 + v145;
                if (v143 > v144)
                {
                  cblas_cgemm_NEWLAPACK();
                  v177 = v523;
                  v161 = v541;
                  v133 = v554;
                  v18 = v548;
                  v113 = v537;
                  v13 = v540;
                }

                if (v177 > v143)
                {
                  cblas_cgemm_NEWLAPACK();
                  v177 = v523;
                  v161 = v541;
                  v133 = v554;
                  v18 = v548;
                  v113 = v537;
                  v13 = v540;
                }

                if (v131 >= 1)
                {
                  v179 = 0;
                  v180 = 8 * v177 - 8 * v144;
                  v181 = a4;
                  do
                  {
                    v182 = v179 * v133;
                    if (v143 <= v144)
                    {
                      v189 = 0;
                    }

                    else
                    {
                      v183 = &v529[v144];
                      v184 = v178;
                      v185 = (v143 - v144);
                      do
                      {
                        v187 = *v183++;
                        v186 = v187;
                        if (v187 < 0)
                        {
                          v186 = -v186;
                        }

                        v188 = *v184++;
                        a4[v182 + v186] = vadd_f32(v188, a4[v182 + v186]);
                        --v185;
                      }

                      while (v185);
                      v189 = v143 - v144;
                    }

                    v190 = *(v12 + 200);
                    v191 = (v190 + 8 * v132);
                    for (m = *v191; m < v191[1]; ++m)
                    {
                      if (v130 >= 1)
                      {
                        v193 = v189;
                        v189 += v130;
                        v194 = v181;
                        v195 = v130;
                        do
                        {
                          v196 = *(*(v12 + 208) + 4 * m) * v130;
                          v194[v196] = vadd_f32(v178[v193++], v194[v196]);
                          ++v194;
                          --v195;
                        }

                        while (v195);
                        v190 = *(v12 + 200);
                      }

                      v191 = (v190 + 8 * v132);
                    }

                    if (v161 >= 1)
                    {
                      v197 = &a4[v182];
                      v198 = v189;
                      v199 = v525;
                      v200 = v161;
                      do
                      {
                        v201 = *v199++;
                        v197[v201] = vadd_f32(v178[v198++], v197[v201]);
                        --v200;
                      }

                      while (v200);
                    }

                    ++v179;
                    v178 = (v178 + v180);
                    v181 = (v181 + v135);
                  }

                  while (v179 != v131);
                  v18 = v548;
                }

                v110 = v535;
              }

              v134 = v524;
              v139 = v132 + 1;
              goto LABEL_206;
            }

            LODWORD(v130) = v556;
LABEL_459:
            v455 = *(v12 + 96);
            if (v130 == 1)
            {
              if (v455 >= 1)
              {
                v456 = v569;
                do
                {
                  v457 = v455--;
                  v458 = *(v12 + 120);
                  v459 = *(v458 + 8 * v455);
                  v460 = v459 + 1;
                  v461 = &a4[v455];
                  if (v459 + 1 < *(v458 + 8 * v457))
                  {
                    do
                    {
                      if (v456 >= 1)
                      {
                        v462 = 0;
                        v463 = *(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v460));
                        v464 = (*(v13 + 40) + 8 * v460);
                        v465 = *v464;
                        v466 = v464[1];
                        do
                        {
                          v467 = &a4[v462 * v554 + v463];
                          v468 = v467[1];
                          v469 = &v461[v462 * v554];
                          v470 = v469[1] - ((v466 * *v467) + (v465 * v468));
                          *v469 = *v469 - ((v465 * *v467) - (v466 * v468));
                          v469[1] = v470;
                          ++v462;
                        }

                        while (v462 < v456);
                        v458 = *(v12 + 120);
                      }

                      ++v460;
                    }

                    while (v460 < *(v458 + 8 * v457));
                    v459 = *(v458 + 8 * v455);
                  }

                  if (v456 >= 1)
                  {
                    v471 = 0;
                    v472 = (*(v13 + 40) + 8 * v459);
                    v474 = *v472;
                    v473 = v472[1];
                    do
                    {
                      v475 = &v461[v554 * v471];
                      v476 = v475[1];
                      v477 = (v473 * *v475) + (v474 * v476);
                      *v475 = (v474 * *v475) - (v473 * v476);
                      v475[1] = v477;
                      ++v471;
                    }

                    while (v471 < v456);
                  }
                }

                while (v457 >= 2);
              }
            }

            else if (v455 >= 1)
            {
              do
              {
                v478 = v455 - 1;
                v479 = *(v12 + 120);
                v480 = *(v479 + 8 * (v455 - 1)) + 1;
                v481 = v556;
                if (v480 < *(v479 + 8 * v455))
                {
                  v482 = v569;
                  do
                  {
                    if (v482 >= 1)
                    {
                      v483 = 0;
                      v484 = *(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v480)) * v481;
                      v485 = *(v13 + 40) + 8 * v480 * v63;
                      do
                      {
                        if (v481 >= 1)
                        {
                          for (n = 0; n < v481; ++n)
                          {
                            v487 = 0;
                            do
                            {
                              v488 = (v485 + 8 * (v487 + n * v481));
                              v489 = *v488;
                              v490 = v488[1];
                              v491 = &a4[v484 + v487 + v554 * v483];
                              v492 = v491[1];
                              v493 = &a4[v554 * v483 + n + v481 * v478];
                              v494 = v493[1] - ((v490 * *v491) + (v489 * v492));
                              *v493 = *v493 - ((v489 * *v491) - (v490 * v492));
                              v493[1] = v494;
                              ++v487;
                            }

                            while (v487 < v481);
                          }

                          v482 = v569;
                        }

                        ++v483;
                      }

                      while (v483 < v482);
                      v479 = *(v12 + 120);
                    }

                    ++v480;
                  }

                  while (v480 < *(v479 + 8 * v455));
                  v495 = *(v479 + 8 * v478);
                }

                v496 = *(v13 + 40);
                v497 = *(v13 + 48) + 4 * v478 * v481;
                cgetrs_NEWLAPACK();
                v138 = v455-- <= 1;
                v9 = a3;
                v13 = v540;
                v63 = v527;
                LODWORD(v17) = v543;
              }

              while (!v138);
            }

            v498 = v569;
            if (*(v13 + 96))
            {
              if (v569 >= 1)
              {
                v499 = 0;
                v500 = 0;
                v501 = v556;
                v502 = v569;
                do
                {
                  if (v17 >= 1)
                  {
                    v503 = 0;
                    do
                    {
                      if (*(v9 + 12))
                      {
                        v505 = v503;
                      }

                      else
                      {
                        v505 = v500;
                      }

                      if (*(v9 + 12))
                      {
                        v506 = v500;
                      }

                      else
                      {
                        v506 = v503;
                      }

                      v504 = v503 + *(*(v12 + 136) + 4 * (v503 / v501)) * v501 - v503 / v501 * v501;
                      *(*(v9 + 16) + 8 * (v506 + v505 * *(v9 + 8))) = vmul_n_f32(a4[v504 + v499], *(*(v13 + 96) + 4 * v504));
                      ++v503;
                    }

                    while (v17 != v503);
                    v498 = v502;
                  }

                  ++v500;
                  v499 += v554;
                }

                while (v500 < v498);
              }
            }

            else if (v569 >= 1)
            {
              v507 = 0;
              v508 = 0;
              v509 = v556;
              v510 = v569;
              do
              {
                if (v17 >= 1)
                {
                  v511 = 0;
                  do
                  {
                    if (*(v9 + 12))
                    {
                      v512 = v511;
                    }

                    else
                    {
                      v512 = v508;
                    }

                    if (*(v9 + 12))
                    {
                      v513 = v508;
                    }

                    else
                    {
                      v513 = v511;
                    }

                    *(*(v9 + 16) + 8 * (v513 + v512 * *(v9 + 8))) = a4[v507 + v511 + *(*(v12 + 136) + 4 * (v511 / v509)) * v509 - v511 / v509 * v509];
                    ++v511;
                  }

                  while (v17 != v511);
                  v498 = v510;
                }

                ++v508;
                v507 += v554;
              }

              while (v508 < v498);
            }

            goto LABEL_535;
          }
        }

LABEL_536:
        __break(1u);
      }

      v46 = 4;
      if (*(v9 + 12))
      {
        v46 = 0;
      }

      v47 = *(v9 + v46);
      v553 = v47;
      v555 = *(a1 + 24);
      v48 = *(v12 + 56);
      v552 = v48;
      v49 = (&a4[v48 * v47] + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v534 < v49)
      {
        goto LABEL_536;
      }

      v545 = (v49 + 8 * v48 * v47);
      if (v545 > v534)
      {
        goto LABEL_536;
      }

      if (*(v13 + 96))
      {
        if (v47 >= 1)
        {
          v50 = 0;
          do
          {
            if (v48 >= 1)
            {
              v51 = 0;
              do
              {
                if (*(v9 + 12))
                {
                  v53 = v51;
                }

                else
                {
                  v53 = v50;
                }

                if (*(v9 + 12))
                {
                  v54 = v50;
                }

                else
                {
                  v54 = v51;
                }

                v52 = v51 % v14 + *(*(v12 + 136) + 4 * (v51 / v14)) * v14;
                a4[v52 + v50 * v48] = vmul_n_f32(*(*(v9 + 16) + 8 * (v54 + v53 * *(v9 + 8))), *(*(v13 + 96) + 4 * v52));
                ++v51;
              }

              while (v48 != v51);
            }

            ++v50;
          }

          while (v50 != v47);
        }
      }

      else if (v47 >= 1)
      {
        v259 = 0;
        do
        {
          v260 = 0;
          do
          {
            if (v48 >= 1)
            {
              v261 = 0;
              do
              {
                if (*(v9 + 12))
                {
                  v262 = v261;
                }

                else
                {
                  v262 = v260;
                }

                if (*(v9 + 12))
                {
                  v263 = v260;
                }

                else
                {
                  v263 = v261;
                }

                a4[(v261 % v14 + v260 * v48 + *(*(v12 + 136) + 4 * (v261 / v14)) * v14)] = *(*(v9 + 16) + 8 * (v263 + v262 * *(v9 + 8)));
                ++v261;
              }

              while (v48 != v261);
            }

            ++v260;
          }

          while (v260 != v47);
          ++v259;
        }

        while (v259 != v47);
      }

      v264 = *(v12 + 96);
      v544 = v48;
      v539 = (&a4[v48 * v47] + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v14 == 1)
      {
        if (v264 >= 1)
        {
          v265 = 0;
          v266 = *(v12 + 120);
          v267 = 8 * v48;
          v268 = a4 + 1;
          do
          {
            v269 = *(v266 + 8 * v265);
            if (v47 >= 1)
            {
              v270 = (*(v13 + 40) + 8 * v269);
              v272 = *v270;
              v271 = v270[1];
              v273 = v268;
              v274 = v47;
              do
              {
                v275 = *(v273 - 1);
                v276 = (v271 * v275) + (v272 * *v273);
                *(v273 - 1) = (v272 * v275) - (v271 * *v273);
                *v273 = v276;
                v273 = (v273 + v267);
                --v274;
              }

              while (v274);
              v266 = *(v12 + 120);
            }

            ++v265;
            while (++v269 < *(v266 + 8 * v265))
            {
              if (v47 >= 1)
              {
                v277 = (*(v13 + 40) + 8 * v269);
                v278 = *v277;
                v279 = v277[1];
                v280 = &a4[*(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v269))] + 1;
                v281 = v268;
                v282 = v47;
                do
                {
                  v283 = *(v281 - 1);
                  v284 = *v280 - ((v279 * v283) + (v278 * *v281));
                  *(v280 - 1) = *(v280 - 1) - ((v278 * v283) - (v279 * *v281));
                  *v280 = v284;
                  v280 = (v280 + v267);
                  v281 = (v281 + v267);
                  --v282;
                }

                while (v282);
                v266 = *(v12 + 120);
              }
            }

            v268 += 2;
          }

          while (v265 < *(v12 + 96));
        }

        v14 = 1;
      }

      else if (v264 >= 1)
      {
        v285 = 0;
        v286 = *(v12 + 120);
        do
        {
          v287 = *(v286 + 8 * v285);
          v288 = *(v13 + 40);
          v289 = *(v13 + 48) + 4 * v555 * v285;
          LODWORD(v556) = 0;
          cgetrs_NEWLAPACK();
          v290 = v285 + 1;
          v291 = v287 + 1;
          v286 = *(v12 + 120);
          if (v287 + 1 >= *(v286 + 8 * (v285 + 1)))
          {
            v13 = v540;
          }

          else
          {
            v292 = v553;
            v13 = v540;
            do
            {
              if (v292 >= 1)
              {
                v293 = 0;
                v294 = *(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v291)) * v555;
                v295 = *(v540 + 40) + 8 * v291 * v527;
                do
                {
                  if (v555 >= 1)
                  {
                    for (ii = 0; ii < v555; ++ii)
                    {
                      v297 = 0;
                      do
                      {
                        v298 = (v295 + 8 * (v297 + ii * v555));
                        v299 = *v298;
                        v300 = v298[1];
                        v301 = &a4[ii + v555 * v285 + v552 * v293];
                        v302 = v301[1];
                        v303 = &a4[v294 + v297 + v552 * v293];
                        v304 = v303[1] - ((v300 * *v301) + (v299 * v302));
                        *v303 = *v303 - ((v299 * *v301) - (v300 * v302));
                        v303[1] = v304;
                        ++v297;
                      }

                      while (v297 < v555);
                    }

                    v292 = v553;
                  }

                  ++v293;
                }

                while (v293 < v292);
                v286 = *(v12 + 120);
              }

              ++v291;
            }

            while (v291 < *(v286 + 8 * v290));
          }

          ++v285;
        }

        while (v290 < *(v12 + 96));
        v14 = v555;
        v9 = a3;
        LODWORD(v48) = v544;
      }

      if (*(v12 + 104) >= 1)
      {
        v305 = 0;
        v306 = v553;
        v307 = *(v12 + 112);
        v308 = 0;
        do
        {
          v549 = v305;
          v551 = a8;
          v309 = *(v12 + 168);
          v310 = &v545[8 * v309];
          if (v534 < v310)
          {
            goto LABEL_536;
          }

          v532 = v308;
          v311 = (v307 + 4 * v308);
          v312 = *v311;
          v313 = v311[1];
          bzero(v545, 8 * v309);
          v314 = (v310 + 4 * *(v12 + 168) + 7) & 0xFFFFFFFFFFFFFFF8;
          if (v534 < v314)
          {
            goto LABEL_536;
          }

          v315 = v314 + 40 * *(v12 + 336);
          v13 = v540;
          _X14 = v549;
          v317 = v551;
          if (v315 > v534)
          {
            goto LABEL_536;
          }

          v318 = (v315 + *MEMORY[0x277D85FA0] - 1) & &v549[-*MEMORY[0x277D85FA0]];
          v319 = atomic_load((v540 + 136));
          v320 = *(v12 + 52);
          v321 = 4 * *(v12 + 56);
          v9 = a3;
          if (v320 < 2)
          {
            v347 = ((v318 + v321 + 7) & 0xFFFFFFFFFFFFFFF8);
            if (v534 < v347)
            {
              goto LABEL_536;
            }

            v348 = atomic_load((v540 + 136));
            if (&v347[v348 * v306] > v534)
            {
              goto LABEL_536;
            }

            v349 = *(v12 + 168);
            if (v349 >= 1)
            {
              for (jj = 0; jj < v349; ++jj)
              {
                v351 = *(*(v12 + 176) + 4 * jj);
                if (v351 >= v312 && v351 < v313)
                {
                  sub_23680DC34(jj, v537, v14, v12, v13, v306, a4, v552, v545, v310, v347, v318);
                  v13 = v540;
                  v9 = a3;
                  v349 = *(v12 + 168);
                }
              }
            }
          }

          else
          {
            v322 = (v321 + 8 * (v319 * v306) + *MEMORY[0x277D85FA0] + 7) & &v549[-*MEMORY[0x277D85FA0]];
            v572 = 0u;
            v573 = 0u;
            v571 = 0u;
            v569 = 0u;
            v570 = 0u;
            LODWORD(v569) = v320;
            atomic_store(0, &v569 + 1);
            atomic_store(0, (&v569 | 0xC));
            atomic_store(0, &v570);
            v323 = v571;
            do
            {
              _X2 = v549;
              _X7 = *(&v571 + 1);
              __asm { CASPAL          X6, X7, X2, X3, [X10] }

              _ZF = _X6 == v323;
              v323 = _X6;
            }

            while (!_ZF);
            *&v572 = v322;
            *(&v572 + 1) = v318;
            v563 = HIDWORD(v549);
            v564 = v549;
            v556 = v537;
            v557 = v12;
            v558 = v14;
            v559 = v540;
            v560 = v545;
            v561 = v310;
            v562 = v306;
            v565 = a4;
            v566 = v549;
            v567 = v552;
            v568 = v314;
            *&v573 = &v556;
            if (*(v12 + 336) >= 1)
            {
              v331 = 0;
              do
              {
                v332 = *(*(v12 + 176) + 4 * *(*(v12 + 344) + 4 * v331));
                if (v332 >= v312 && v332 < v313)
                {
                  v334 = *(v12 + 368) + 8 * v331;
                  v335 = *(v334 + 8);
                  v336 = *v334;
                  v337 = &v568[40 * v331];
                  v338 = v335 - v336;
                  atomic_store(v338, v337);
                  *(v337 + 2) = v331;
                  *(v337 + 2) = sub_23680DA78;
                  if (!v338)
                  {
                    _X0 = _X14;
                    _X1 = _X14;
                    __asm { CASP            X0, X1, X0, X1, [X10] }

                    while (1)
                    {
                      *(v337 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                      *(v337 + 4) = _X1;
                      _X2 = _X0 & 1 | v337;
                      _X5 = _X1;
                      __asm { CASPL           X4, X5, X2, X3, [X10] }

                      if (_X4 == _X0)
                      {
                        break;
                      }

                      v317 = _X14;
                      _X1 = _X14;
                      __asm { CASP            X0, X1, X14, X15, [X10] }
                    }

                    if (_X0)
                    {
                      v345 = _X14;
                      v346 = v317;
                      __ulock_wake();
                      _X14 = v345;
                      v317 = v346;
                    }
                  }
                }

                ++v331;
              }

              while (v331 < *(v12 + 336));
            }

            v549 = _X14;
            v551 = v317;
            sub_2366FCD2C(&v569, 1);
            v13 = v540;
            v9 = a3;
          }

          v353 = &v545[40 * *(v12 + 336)];
          if (v534 < v353)
          {
            goto LABEL_536;
          }

          v354 = (*(v12 + 112) + 4 * v532);
          v355 = *v354;
          v356 = v354[1];
          v357 = (&v353[*MEMORY[0x277D85FA0] - 1] & -*MEMORY[0x277D85FA0]);
          v358 = atomic_load((v13 + 140));
          if (*(v12 + 52) < 2)
          {
            v381 = atomic_load((v13 + 140));
            v380 = v527;
            if (v534 < ((&v357[v381 * v553] + 7) & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_536;
            }

            v382 = *(v12 + 168);
            v383 = v537;
            v48 = v544;
            v305 = v549;
            a8 = v551;
            if (v382 >= 1)
            {
              do
              {
                v384 = *(*(v12 + 176) + 4 * v382 - 4);
                if (v384 >= v355 && v384 < v356)
                {
                  sub_23680E994((v382 - 1), v383, v555, v12, v13, v553, a4, v552, v539, v48, v357);
                  v305 = v549;
                  a8 = v551;
                  v48 = v544;
                  v383 = v537;
                  v380 = v527;
                  v13 = v540;
                  v9 = a3;
                }

                --v382;
              }

              while ((v382 + 1) > 1);
            }
          }

          else
          {
            v359 = v358 * v553;
            v360 = *MEMORY[0x277D85FA0];
            v572 = 0u;
            v573 = 0u;
            v542 = (v360 + 8 * v359 - 1) & -v360;
            v571 = 0u;
            v569 = 0u;
            v570 = 0u;
            LODWORD(v569) = sub_2366FCCD0(0);
            atomic_store(0, &v569 + 1);
            atomic_store(0, (&v569 | 0xC));
            atomic_store(0, &v570);
            v361 = v571;
            v362 = v549;
            do
            {
              _X2 = v549;
              _X5 = *(&v571 + 1);
              __asm { CASPAL          X4, X5, X2, X3, [X8] }

              _ZF = _X4 == v361;
              v361 = _X4;
            }

            while (!_ZF);
            *&v572 = v542;
            *(&v572 + 1) = v357;
            v563 = HIDWORD(v549);
            v556 = v537;
            v557 = v12;
            v558 = v555;
            v559 = v540;
            v560 = v549;
            v561 = v549;
            v562 = v553;
            v564 = v539;
            v565 = a4;
            v566 = v544;
            v567 = v552;
            v568 = v545;
            *&v573 = &v556;
            v366 = *(v12 + 336);
            if (v366 >= 1)
            {
              do
              {
                v367 = v366--;
                v368 = *(*(v12 + 176) + 4 * *(*(v12 + 344) + 4 * v366));
                if (v368 >= v355 && v368 < v356)
                {
                  v370 = *(v12 + 352);
                  v371 = *(v370 + 8 * v367);
                  v372 = *(v370 + 8 * v366);
                  v373 = &v568[40 * v366];
                  LODWORD(v371) = v371 - v372;
                  atomic_store(v371, v373);
                  *(v373 + 2) = v366;
                  *(v373 + 2) = sub_23680E7F8;
                  if (!v371)
                  {
                    do
                    {
                      _X0 = v362;
                      _X1 = v362;
                      __asm { CASP            X0, X1, X0, X1, [X10] }

                      *(v373 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                      *(v373 + 4) = v362;
                      _X2 = _X0 & 1 | v373;
                      _X5 = v362;
                      __asm { CASPL           X4, X5, X2, X3, [X10] }
                    }

                    while (_X4 != _X0);
                    if (_X0)
                    {
                      __ulock_wake();
                      v362 = v549;
                    }
                  }
                }
              }

              while (v367 > 1);
            }

            sub_2366FCD2C(&v569, 1);
            v305 = v549;
            a8 = v551;
            LODWORD(v48) = v544;
            v13 = v540;
            v9 = a3;
            v380 = v527;
          }

          v307 = *(v12 + 112);
          v386 = *(v307 + 4 * v532);
          v306 = v553;
          v14 = v555;
          v308 = v532 + 1;
          if (v553 >= 1)
          {
            v387 = 8 * (*(v307 + 4 * v308) - v386) * v555;
            v388 = v555 * v386;
            v389 = v553;
            do
            {
              memcpy(&a4[v388], (v539 + v388 * 8), v387);
              v388 += v552;
              --v389;
            }

            while (v389);
            v307 = *(v12 + 112);
            v386 = *(v307 + 4 * v532);
            v9 = a3;
            v13 = v540;
            v308 = v532 + 1;
            v380 = v527;
            LODWORD(v48) = v544;
            v305 = v549;
            a8 = v551;
          }

          if (v386 < *(v307 + 4 * v308))
          {
            v390 = v386;
            v391 = *(v12 + 120);
            do
            {
              v392 = v390;
              v393 = *(v391 + 8 * v390++);
              if (v393 < *(v391 + 8 * v390))
              {
                do
                {
                  if (v306 >= 1)
                  {
                    v394 = 0;
                    v395 = *(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v393)) * v555;
                    v396 = *(v13 + 40) + 8 * v393 * v380;
                    do
                    {
                      if (v555 >= 1)
                      {
                        for (kk = 0; kk < v555; ++kk)
                        {
                          v398 = 0;
                          do
                          {
                            v399 = (v396 + 8 * (v398 + kk * v555));
                            v400 = *v399;
                            v401 = v399[1];
                            v402 = &a4[kk + v555 * v392 + v552 * v394];
                            v403 = v402[1];
                            v404 = &a4[v395 + v398 + v552 * v394];
                            v405 = v404[1] - ((v401 * *v402) + (v400 * v403));
                            *v404 = *v404 - ((v400 * *v402) - (v401 * v403));
                            v404[1] = v405;
                            ++v398;
                          }

                          while (v398 < v555);
                        }

                        v306 = v553;
                      }

                      ++v394;
                    }

                    while (v394 < v306);
                    v391 = *(v12 + 120);
                  }

                  ++v393;
                }

                while (v393 < *(v391 + 8 * v390));
                v307 = *(v12 + 112);
              }
            }

            while (v390 < *(v307 + 4 * v308));
          }
        }

        while (v308 < *(v12 + 104));
      }

      v406 = *(v12 + 100);
      if (v14 == 1)
      {
        if (v406 >= 1)
        {
          v407 = *(v12 + 60) - v406;
          v408 = *(v12 + 120);
          do
          {
            v409 = *(v408 + 8 * v407);
            v410 = &a4[v407];
            if (v553 >= 1)
            {
              v411 = 0;
              v412 = (*(v13 + 40) + 8 * v409);
              v414 = *v412;
              v413 = v412[1];
              do
              {
                v415 = &v410[v552 * v411];
                v416 = v415[1];
                v417 = (v413 * *v415) + (v414 * v416);
                *v415 = (v414 * *v415) - (v413 * v416);
                v415[1] = v417;
                ++v411;
              }

              while (v411 < v553);
              v408 = *(v12 + 120);
            }

            ++v407;
            while (++v409 < *(v408 + 8 * v407))
            {
              if (v553 >= 1)
              {
                v418 = 0;
                v419 = *(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v409));
                v420 = (*(v13 + 40) + 8 * v409);
                v421 = *v420;
                v422 = v420[1];
                do
                {
                  v423 = &v410[v418 * v552];
                  v424 = v423[1];
                  v425 = &a4[v418 * v552 + v419];
                  v426 = v425[1] - ((v422 * *v423) + (v421 * v424));
                  *v425 = *v425 - ((v421 * *v423) - (v422 * v424));
                  v425[1] = v426;
                  ++v418;
                }

                while (v418 < v553);
                v408 = *(v12 + 120);
              }
            }
          }

          while (v407 < *(v12 + 60));
        }
      }

      else if (v406 >= 1)
      {
        v427 = *(v12 + 96);
        v428 = *(v12 + 60) - v406;
        v429 = *(v12 + 120);
        do
        {
          v430 = *(v429 + 8 * v428);
          v550 = v427;
          v431 = *(v13 + 40);
          v432 = *(v13 + 48) + 4 * v555 * v427;
          LODWORD(v556) = 0;
          cgetrs_NEWLAPACK();
          if (v556)
          {
            goto LABEL_536;
          }

          v433 = v428 + 1;
          v434 = v430 + 1;
          v429 = *(v12 + 120);
          if (v430 + 1 >= *(v429 + 8 * (v428 + 1)))
          {
            v9 = a3;
            v13 = v540;
            LODWORD(v48) = v544;
          }

          else
          {
            v435 = v553;
            v9 = a3;
            v13 = v540;
            LODWORD(v48) = v544;
            do
            {
              if (v435 >= 1)
              {
                v436 = 0;
                v437 = *(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v434)) * v555;
                v438 = *(v540 + 40) + 8 * v434 * v527;
                do
                {
                  if (v555 >= 1)
                  {
                    for (mm = 0; mm < v555; ++mm)
                    {
                      v440 = 0;
                      do
                      {
                        v441 = (v438 + 8 * (v440 + mm * v555));
                        v442 = *v441;
                        v443 = v441[1];
                        v444 = &a4[mm + v555 * v428 + v552 * v436];
                        v445 = v444[1];
                        v446 = &a4[v437 + v440 + v552 * v436];
                        v447 = v446[1] - ((v443 * *v444) + (v442 * v445));
                        *v446 = *v446 - ((v442 * *v444) - (v443 * v445));
                        v446[1] = v447;
                        ++v440;
                      }

                      while (v440 < v555);
                    }

                    v435 = v553;
                  }

                  ++v436;
                }

                while (v436 < v435);
                v429 = *(v12 + 120);
              }

              ++v434;
            }

            while (v434 < *(v429 + 8 * v433));
          }

          v427 = v550 + 1;
          ++v428;
        }

        while (v433 < *(v12 + 60));
      }

      v448 = v553;
      if (*(v13 + 104))
      {
        if (v553 >= 1)
        {
          v449 = 0;
          v450 = 0;
          do
          {
            if (v48 >= 1)
            {
              v451 = 0;
              do
              {
                if (*(v9 + 12))
                {
                  v453 = v451;
                }

                else
                {
                  v453 = v450;
                }

                if (*(v9 + 12))
                {
                  v454 = v450;
                }

                else
                {
                  v454 = v451;
                }

                v452 = v451 + *(*(v12 + 144) + 4 * (v451 / v555)) * v555 - v451 / v555 * v555;
                *(*(v9 + 16) + 8 * (v454 + v453 * *(v9 + 8))) = vmul_n_f32(a4[v452 + v449], *(*(v13 + 104) + 4 * v452));
                ++v451;
              }

              while (v48 != v451);
              v448 = v553;
            }

            ++v450;
            v449 += v552;
          }

          while (v450 < v448);
        }
      }

      else if (v553 >= 1)
      {
        v514 = 0;
        v515 = 0;
        do
        {
          if (v48 >= 1)
          {
            v516 = 0;
            do
            {
              if (*(v9 + 12))
              {
                v517 = v516;
              }

              else
              {
                v517 = v515;
              }

              if (*(v9 + 12))
              {
                v518 = v515;
              }

              else
              {
                v518 = v516;
              }

              *(*(v9 + 16) + 8 * (v518 + v517 * *(v9 + 8))) = a4[v514 + v516 + *(*(v12 + 144) + 4 * (v516 / v555)) * v555 - v516 / v555 * v555];
              ++v516;
            }

            while (v48 != v516);
            v448 = v553;
          }

          ++v515;
          v514 += v552;
        }

        while (v515 < v448);
      }

LABEL_535:
      v520 = *MEMORY[0x277D85DE8];
      return;
    }

    if (v11 == 40)
    {
      v27 = *(a1 + 24);
      v28 = *(a1 + 4);
      v29 = *(a1 + 20);
      v30 = 12;
      if ((v29 ^ v28))
      {
        v31 = 16;
      }

      else
      {
        v31 = 12;
      }

      if (((v29 ^ v28) & 1) == 0)
      {
        v30 = 16;
      }

      v32 = *(a1 + v31) * v27;
      v33 = *(a1 + v30) * v27;
      if (v32 <= v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = v32;
      }

      v35 = 4;
      if (*(a3 + 12))
      {
        v35 = 0;
      }

      v36 = *(a3 + v35);
      v37 = *(a1 + 32);
      v38 = *(a1 + 80);
      v556 = __PAIR64__(v36, v34);
      v558 = a4;
      v557 = v34;
      v39 = v29 & 1 ^ *(v37 + 52);
      v40 = v28 & 1;
      if (a2)
      {
        v41 = a2;
      }

      else
      {
        v41 = a3;
      }

      sub_236805D74(v41, &v556);
      if (v39 == v40)
      {
        sub_23680A798(*(v37 + 56), v37, v38, &v556, a3, &a4[v36 * v34], v534);
        sub_23680AC58(v37, v38, a3, a4);
      }

      else
      {
        v519 = &a4[v36 * v34];
        sub_23680AE98(v37, v38, &v556, v519);
        sub_23680B1A4(*(v37 + 56), v37, v38, &v556, a3, v519);
      }

      goto LABEL_535;
    }

    v55 = *(a1 + 32);
    v56 = *(a1 + 80);
    if (a2)
    {
      sub_236805D74(a2, a3);
      v9 = a3;
    }

    sub_23680AE98(v55, v56, v9, a4);
    v57 = *MEMORY[0x277D85DE8];

    sub_23680AC58(v55, v56, a3, a4);
  }
}

int *sub_23680944C(int *result, uint64_t a2, int *a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  if (*(a4 + 12))
  {
    v5 = 0;
  }

  else
  {
    v5 = 4;
  }

  if (*(a4 + 12))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (result)
  {
    v7 = *(a4 + v5);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = *(a4 + v6);
      while (v9 < 1)
      {
LABEL_29:
        if (++v8 == v7)
        {
          return result;
        }
      }

      v10 = 0;
      while (a2 && *(a2 + v10) == 1)
      {
        v11 = *(v4 + 8);
        v12 = v8 + v11 * v10;
        v13 = v10 + v8 * v11;
        if (*(v4 + 12))
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        v15 = *(*(v4 + 16) + 8 * v14);
        v16 = *(a4 + 16);
        v17 = *(a4 + 8);
        if (*(a4 + 12))
        {
          goto LABEL_26;
        }

        v18 = v10 + v17 * v8;
LABEL_28:
        *(v16 + 8 * v18) = v15;
        if (v9 == ++v10)
        {
          goto LABEL_29;
        }
      }

      v19 = *(v4 + 8);
      v20 = v8 + v19 * v10;
      v21 = v10 + v8 * v19;
      if (*(v4 + 12))
      {
        v22 = v20;
      }

      else
      {
        v22 = v21;
      }

      v15 = vmul_n_f32(*(*(v4 + 16) + 8 * v22), *&result[v10]);
      v16 = *(a4 + 16);
      v17 = *(a4 + 8);
      if ((*(a4 + 12) & 1) == 0)
      {
        v18 = v10 + v8 * v17;
        goto LABEL_28;
      }

LABEL_26:
      v18 = v8 + v17 * v10;
      goto LABEL_28;
    }
  }

  else if (a3)
  {
    return sub_236805D74(a3, a4);
  }

  return result;
}

uint64_t sub_23680953C(uint64_t result, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v5 = 4;
  if (*(a4 + 12))
  {
    v5 = 0;
  }

  if (*(a2 + 64) >= 1)
  {
    v8 = 0;
    v9 = *(a4 + v5);
    v52 = result;
    v53 = result - 3;
    do
    {
      v10 = v8;
      if (result == 4)
      {
        v11 = atomic_load((a3[6] + 4 * v8));
      }

      else
      {
        v11 = 0;
      }

      v12 = *(a2 + 120);
      ++v8;
      v13 = *(v12 + 8 * (v10 + 1));
      v14 = *(v12 + 8 * v10);
      v15 = *(*(a2 + 88) + 4 * (v10 + 1)) - *(*(a2 + 88) + 4 * v10) + v11;
      v16 = v15;
      if (result == 4)
      {
        v16 = *(a3[7] + 4 * v10);
      }

      v17 = 2 * v15;
      if (v53 >= 2)
      {
        v17 = 0;
      }

      v57 = v17;
      if (v16)
      {
        v18 = v11 + v13 - v14;
        v19 = v15;
        v51 = *(*(a2 + 88) + 4 * (v10 + 1)) - *(*(a2 + 88) + 4 * v10) + v11;
        v54 = *(a3[5] + 8 * v10);
        v55 = v18;
        v50 = v18;
        if (v9 <= 0)
        {
          cblas_ctrsm_NEWLAPACK();
          result = v52;
        }

        else
        {
          v20 = 0;
          v21 = 8 * v16;
          v49 = 8 * v15 * v18;
          v22 = *(a3[5] + 8 * v10) + v49 + 8 * v17 + 8;
          v23 = a5;
          do
          {
            if (v16 >= 1)
            {
              v24 = v16;
              v25 = v22;
              v26 = v23;
              do
              {
                if (*(a4 + 12))
                {
                  v27 = v20 + *(a4 + 8) * *v25;
                }

                else
                {
                  v27 = *v25 + *(a4 + 8) * v20;
                }

                *v26++ = *(*(a4 + 16) + 8 * v27);
                ++v25;
                --v24;
              }

              while (v24);
            }

            ++v20;
            v23 = (v23 + v21);
          }

          while (v20 != v9);
          v28 = a5;
          cblas_ctrsm_NEWLAPACK();
          v29 = 0;
          result = v52;
          do
          {
            if (v16 >= 1)
            {
              v30 = v16;
              v31 = (v54 + v49 + 8 * v57 + 8);
              v32 = v28;
              do
              {
                if (*(a4 + 12))
                {
                  v33 = v29 + *(a4 + 8) * *v31;
                }

                else
                {
                  v33 = *v31 + *(a4 + 8) * v29;
                }

                v34 = *v32++;
                *(*(a4 + 16) + 8 * v33) = v34;
                ++v31;
                --v30;
              }

              while (v30);
            }

            ++v29;
            v28 = (v28 + v21);
          }

          while (v29 != v9);
        }

        v35 = v55 - v16;
        if (v55 > v16)
        {
          cblas_cgemm_NEWLAPACK();
          result = v52;
          if (v9 >= 1)
          {
            v36 = 0;
            v37 = 0;
            v38 = *(*(a2 + 88) + 4 * v8) - *(*(a2 + 88) + 4 * v10);
            v39 = v51 - v16;
            do
            {
              if (v51 > v16)
              {
                v40 = v36;
                v41 = (v54 + 8 * v19 * v50 + 8 * v57 + 4 * v16 + 8);
                v42 = v16;
                do
                {
                  if (*(a4 + 12))
                  {
                    v43 = v37 + *(a4 + 8) * *v41;
                  }

                  else
                  {
                    v43 = *v41 + *(a4 + 8) * v37;
                  }

                  *(*(a4 + 16) + 8 * v43) = vadd_f32(a5[v16 * v9 + v40], *(*(a4 + 16) + 8 * v43));
                  ++v42;
                  ++v41;
                  ++v40;
                }

                while (v42 < v19);
              }

              v44 = *(a2 + 120);
              v45 = *(v44 + 8 * v10) + v38;
              if (v45 < *(v44 + 8 * v8))
              {
                v46 = &a5[v16 * v9 + v39];
                do
                {
                  if (*(a4 + 12))
                  {
                    v47 = v37 + *(a4 + 8) * *(*(a2 + 128) + 4 * v45);
                  }

                  else
                  {
                    v47 = *(*(a2 + 128) + 4 * v45) + *(a4 + 8) * v37;
                  }

                  v48 = *v46++;
                  *(*(a4 + 16) + 8 * v47) = vadd_f32(v48, *(*(a4 + 16) + 8 * v47));
                  ++v45;
                }

                while (v45 < *(*(a2 + 120) + 8 * v8));
              }

              ++v37;
              v36 += v35;
              v39 += v35;
            }

            while (v37 != v9);
          }
        }
      }
    }

    while (v8 < *(a2 + 64));
  }

  return result;
}

void sub_2368099C4(int a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v53 = a2;
  v6 = 4;
  if (*(a5 + 12))
  {
    v6 = 0;
  }

  v57 = *(a5 + v6);
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a5;
  }

  if ((a1 - 3) >= 2)
  {
    if (a1)
    {
      v31 = *(a2 + 64);
      if (v31 >= 1)
      {
        v32 = 0;
        do
        {
          v33 = v32 + 1;
          if (v57 >= 1)
          {
            v34 = 0;
            v35 = *(*(a2 + 120) + 8 * v33) - *(*(a2 + 120) + 8 * v32);
            v52 = v32 + 1;
            v36 = *(*(a2 + 88) + 4 * v33) - *(*(a2 + 88) + 4 * v32);
            v37 = *(a3[5] + 8 * v32);
            v38 = v36;
            v56 = v37 + 8 * v35 * v36 + 8;
            if (v36 <= 1)
            {
              v39 = 1;
            }

            else
            {
              v39 = v36;
            }

            v40 = (v37 + 12);
            v41 = 8 * v35 + 8;
            do
            {
              v42 = v40;
              v43 = v39;
              v44 = v56;
              if (v38 >= 1)
              {
                do
                {
                  if (*(v7 + 12))
                  {
                    v45 = v34 + *(v7 + 8) * *v44;
                  }

                  else
                  {
                    v45 = *v44 + *(v7 + 8) * v34;
                  }

                  v46 = (*(v7 + 16) + 8 * v45);
                  v47 = sub_23681E680(*v46, v46[1], *(v42 - 1), *v42);
                  if (*(a5 + 12))
                  {
                    v49 = v34 + *(a5 + 8) * *v44;
                  }

                  else
                  {
                    v49 = *v44 + *(a5 + 8) * v34;
                  }

                  v50 = *(a5 + 16) + 8 * v49;
                  *v50 = v47;
                  *(v50 + 4) = v48;
                  ++v44;
                  v42 = (v42 + v41);
                  --v43;
                }

                while (v43);
              }

              ++v34;
            }

            while (v34 != v57);
            v33 = v52;
            a2 = v53;
            v31 = *(v53 + 64);
          }

          v32 = v33;
        }

        while (v33 < v31);
      }
    }

    else if (a4)
    {

      sub_236805D74(a4, a5);
    }
  }

  else if (*(a2 + 64) >= 1)
  {
    v8 = 0;
    v51 = a1;
    do
    {
      if (a1 == 4)
      {
        v9 = atomic_load((a3[6] + 4 * v8));
      }

      else
      {
        v9 = 0;
      }

      v10 = *(a2 + 120);
      v11 = *(v10 + 8 * (v8 + 1));
      v12 = *(v10 + 8 * v8);
      v55 = v8 + 1;
      v13 = *(*(a2 + 88) + 4 * (v8 + 1)) - *(*(a2 + 88) + 4 * v8) + v9;
      v14 = v13;
      if (a1 == 4)
      {
        v14 = *(a3[7] + 4 * v8);
      }

      if (v57 >= 1)
      {
        v15 = 0;
        v16 = *(a3[5] + 8 * v8) + 8 * (v9 + v11 - v12) * v13 + 8;
        v17 = v16 + 16 * v13;
        do
        {
          if (v14 >= 1)
          {
            v18 = 0;
            do
            {
              v19 = v18;
              v20 = v18 + 1;
              if (v18 + 1 < v14)
              {
                v21 = *(v16 + 16 * v18 + 16);
              }

              v22 = *(v17 + 4 * v18);
              if (*(v7 + 12))
              {
                v23 = *(v17 + 4 * v18);
              }

              else
              {
                v23 = v15;
              }

              if (*(v7 + 12))
              {
                v24 = v15;
              }

              else
              {
                v24 = *(v17 + 4 * v18);
              }

              v25 = (*(v7 + 16) + 8 * (v24 + *(v7 + 8) * v23));
              v26 = sub_23681E680(*v25, v25[1], *(v16 + 16 * v19), *(v16 + 16 * v19 + 4));
              if (*(a5 + 12))
              {
                v28 = v22;
              }

              else
              {
                v28 = v15;
              }

              if (*(a5 + 12))
              {
                v29 = v15;
              }

              else
              {
                v29 = v22;
              }

              v30 = *(a5 + 16) + 8 * (v29 + *(a5 + 8) * v28);
              *v30 = v26;
              *(v30 + 4) = v27;
              v18 = v20;
            }

            while (v20 < v14);
          }

          ++v15;
        }

        while (v15 != v57);
      }

      a2 = v53;
      v8 = v55;
      a1 = v51;
    }

    while (v55 < *(v53 + 64));
  }
}

uint64_t sub_23680A0F0(uint64_t result, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v5 = 4;
  if (*(a4 + 12))
  {
    v5 = 0;
  }

  v6 = *(a2 + 64);
  if (v6 >= 1)
  {
    v10 = *(a4 + v5);
    v42 = result - 3;
    v39 = result;
    do
    {
      v11 = v6--;
      if (result == 4)
      {
        v12 = atomic_load((a3[6] + 4 * v6));
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a2 + 120);
      v14 = *(*(a2 + 88) + 4 * v11) - *(*(a2 + 88) + 4 * v6);
      v15 = (v14 + v12);
      v16 = v14 + v12;
      if (result == 4)
      {
        v16 = *(a3[7] + 4 * v6);
      }

      if (v42 >= 2)
      {
        v17 = 0;
      }

      else
      {
        v17 = 2 * v15;
      }

      if (v16)
      {
        v18 = v12 + *(v13 + 8 * v11) - *(v13 + 8 * v6);
        v19 = *(a3[5] + 8 * v6);
        v20 = 8 * v18;
        if (v10 >= 1)
        {
          v21 = 0;
          v22 = v14;
          v23 = 8 * v12 + 8 * v14;
          v24 = a5;
          do
          {
            if (v15 >= 1)
            {
              v25 = v15;
              v26 = (v19 + 8 * v15 * v18 + 8 * v17 + 8);
              v27 = v24;
              do
              {
                if (*(a4 + 12))
                {
                  v28 = v21 + *(a4 + 8) * *v26;
                }

                else
                {
                  v28 = *v26 + *(a4 + 8) * v21;
                }

                *v27++ = *(*(a4 + 16) + 8 * v28);
                ++v26;
                --v25;
              }

              while (v25);
              v13 = *(a2 + 120);
            }

            v29 = *(v13 + 8 * v6) + v22;
            if (v29 < *(v13 + 8 * v11))
            {
              v30 = v23;
              do
              {
                if (*(a4 + 12))
                {
                  v31 = v21 + *(a4 + 8) * *(*(a2 + 128) + 4 * v29);
                }

                else
                {
                  v31 = *(*(a2 + 128) + 4 * v29) + *(a4 + 8) * v21;
                }

                *(v24 + v30) = *(*(a4 + 16) + 8 * v31);
                ++v29;
                v13 = *(a2 + 120);
                v30 += 8;
              }

              while (v29 < *(v13 + 8 * v11));
            }

            ++v21;
            v24 = (v24 + v20);
          }

          while (v21 != v10);
        }

        v40 = v15;
        v43 = v17;
        v41 = v19;
        if (v18 > v16)
        {
          cblas_cgemm_NEWLAPACK();
        }

        cblas_ctrsm_NEWLAPACK();
        result = v39;
        if (v10 >= 1)
        {
          v32 = 0;
          v33 = a5;
          do
          {
            if (v16 >= 1)
            {
              v34 = v16;
              v35 = (v41 + 8 * v40 * v18 + 8 * v43 + 8);
              v36 = v33;
              do
              {
                if (*(a4 + 12))
                {
                  v37 = v32 + *(a4 + 8) * *v35;
                }

                else
                {
                  v37 = *v35 + *(a4 + 8) * v32;
                }

                v38 = *v36++;
                *(*(a4 + 16) + 8 * v37) = v38;
                ++v35;
                --v34;
              }

              while (v34);
            }

            ++v32;
            v33 = (v33 + v20);
          }

          while (v32 != v10);
        }
      }
    }

    while (v11 > 1);
  }

  return result;
}

uint64_t sub_23680A444(uint64_t result, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v5 = 4;
  if (*(a4 + 12))
  {
    v5 = 0;
  }

  v6 = *(a2 + 64);
  if (v6 >= 1)
  {
    v10 = *(a4 + v5);
    v42 = result - 3;
    v39 = result;
    do
    {
      v11 = v6--;
      if (result == 4)
      {
        v12 = atomic_load((a3[6] + 4 * v6));
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a2 + 120);
      v14 = *(*(a2 + 88) + 4 * v11) - *(*(a2 + 88) + 4 * v6);
      v15 = (v14 + v12);
      v16 = v14 + v12;
      if (result == 4)
      {
        v16 = *(a3[7] + 4 * v6);
      }

      if (v42 >= 2)
      {
        v17 = 0;
      }

      else
      {
        v17 = 2 * v15;
      }

      if (v16)
      {
        v18 = v12 + *(v13 + 8 * v11) - *(v13 + 8 * v6);
        v19 = *(a3[5] + 8 * v6);
        v20 = 8 * v18;
        if (v10 >= 1)
        {
          v21 = 0;
          v22 = v14;
          v23 = 8 * v12 + 8 * v14;
          v24 = a5;
          do
          {
            if (v15 >= 1)
            {
              v25 = v15;
              v26 = (v19 + 8 * v15 * v18 + 8 * v17 + 8);
              v27 = v24;
              do
              {
                if (*(a4 + 12))
                {
                  v28 = v21 + *(a4 + 8) * *v26;
                }

                else
                {
                  v28 = *v26 + *(a4 + 8) * v21;
                }

                *v27++ = *(*(a4 + 16) + 8 * v28);
                ++v26;
                --v25;
              }

              while (v25);
              v13 = *(a2 + 120);
            }

            v29 = *(v13 + 8 * v6) + v22;
            if (v29 < *(v13 + 8 * v11))
            {
              v30 = v23;
              do
              {
                if (*(a4 + 12))
                {
                  v31 = v21 + *(a4 + 8) * *(*(a2 + 128) + 4 * v29);
                }

                else
                {
                  v31 = *(*(a2 + 128) + 4 * v29) + *(a4 + 8) * v21;
                }

                *(v24 + v30) = *(*(a4 + 16) + 8 * v31);
                ++v29;
                v13 = *(a2 + 120);
                v30 += 8;
              }

              while (v29 < *(v13 + 8 * v11));
            }

            ++v21;
            v24 = (v24 + v20);
          }

          while (v21 != v10);
        }

        v40 = v15;
        v43 = v17;
        v41 = v19;
        if (v18 > v16)
        {
          cblas_cgemm_NEWLAPACK();
        }

        cblas_ctrsm_NEWLAPACK();
        result = v39;
        if (v10 >= 1)
        {
          v32 = 0;
          v33 = a5;
          do
          {
            if (v16 >= 1)
            {
              v34 = v16;
              v35 = (v41 + 8 * v40 * v18 + 8 * v43 + 8);
              v36 = v33;
              do
              {
                if (*(a4 + 12))
                {
                  v37 = v32 + *(a4 + 8) * *v35;
                }

                else
                {
                  v37 = *v35 + *(a4 + 8) * v32;
                }

                v38 = *v36++;
                *(*(a4 + 16) + 8 * v37) = v38;
                ++v35;
                --v34;
              }

              while (v34);
            }

            ++v32;
            v33 = (v33 + v20);
          }

          while (v32 != v10);
        }
      }
    }

    while (v11 > 1);
  }

  return result;
}

uint64_t sub_23680A798(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unint64_t a7)
{
  v13 = 4;
  if (*(a4 + 12))
  {
    v13 = 0;
  }

  v14 = *(a4 + v13);
  v86 = 0;
  v85 = 0;
  result = sub_23678B078(a1, a2, &v86, &v85);
  v16 = (&a6[v14 * a1] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v16 > a7)
  {
    goto LABEL_56;
  }

  v17 = v14;
  v18 = v16 + 8 * v14 * *(a2 + 192);
  if (v18 > a7 || (v81 = a6, v19 = v18 + 8 * *(a2 + 88), v19 > a7) || (v89 = -1, v90 = 1, v87 = 10000, v88 = 8, result = ilaenv_NEWLAPACK(), ((v19 + 8 * result * v14) & 0xFFFFFFFFFFFFFFF8) > a7))
  {
LABEL_56:
    __break(1u);
  }

  else
  {
    v20 = *(a2 + 88);
    v21 = v81;
    if (v20 >= 1)
    {
      v22 = 0;
      do
      {
        v23 = *(a2 + 120);
        v24 = (v23 + 8 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = v22 + 1;
        v28 = v26 - *v24;
        v29 = *(*(a2 + 104) + 8 * (v22 + 1)) - *(*(a2 + 104) + 8 * v22);
        if (v28)
        {
          v30 = *(*(a2 + 104) + 8 * (v22 + 1)) == *(*(a2 + 104) + 8 * v22);
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          v31 = *(a2 + 96);
          v83 = *(v31 + 4 * v27);
          v84 = *(v31 + 4 * v22);
          v32 = *(*(a3 + 40) + 8 * v22);
          v33 = *(a3 + 56);
          v82 = *(a2 + 64);
          v34 = 8 * v28;
          if (v26 > v25)
          {
            v35 = v21;
            do
            {
              v36 = *(a2 + 136);
              v37 = *(*(a2 + 128) + 8 * v25);
              v38 = v37 / v36;
              v39 = v37 % v36;
              if (v38 <= 0)
              {
                if (v14 >= 1)
                {
                  v49 = 0;
                  v50 = v35;
                  do
                  {
                    v51 = *(a4 + 8);
                    v52 = v49 + v51 * v39;
                    v53 = v39 + v51 * v49;
                    if (*(a4 + 12))
                    {
                      v54 = v52;
                    }

                    else
                    {
                      v54 = v53;
                    }

                    *v50 = *(*(a4 + 16) + 8 * v54);
                    ++v49;
                    v50 = (v50 + v34);
                  }

                  while (v14 != v49);
                }
              }

              else
              {
                v40 = v38 - 1;
                v41 = *(v23 + 8 * v40 + 8) - *(v23 + 8 * v40);
                v42 = v38 & 0x7FFFFFFF;
                v43 = *(*(a2 + 104) + 8 * v42) - *(*(a2 + 104) + 8 * (v38 - 1));
                if (v43 >= v41)
                {
                  v43 = v41;
                }

                if (v14 >= 1)
                {
                  v44 = *(*(a2 + 96) + 4 * v40) - *(*(a2 + 96) + 4 * v42) + v43;
                  v45 = (*(v18 + 8 * v40) + 8 * v39);
                  v46 = 8 * v44;
                  v47 = v14;
                  v48 = v35;
                  do
                  {
                    *v48 = *v45;
                    v48 = (v48 + v34);
                    v45 = (v45 + v46);
                    --v47;
                  }

                  while (v47);
                }
              }

              ++v25;
              v23 = *(a2 + 120);
              ++v35;
            }

            while (v25 < *(v23 + 8 * v27));
          }

          v55 = *(a2 + 152);
          v56 = *(v55 + 4 * v22);
          if (v56 < *(v55 + 4 * v27))
          {
            do
            {
              v57 = *(*(a2 + 160) + 4 * v56);
              v58 = *(*(a2 + 120) + 8 * v57 + 8) - *(*(a2 + 120) + 8 * v57);
              v59 = *(*(a2 + 96) + 4 * (v57 + 1)) - *(*(a2 + 96) + 4 * v57);
              if (v58 >= (*(*(a2 + 104) + 8 * (v57 + 1)) - *(*(a2 + 104) + 8 * v57)))
              {
                v58 = *(*(a2 + 104) + 8 * (v57 + 1)) - *(*(a2 + 104) + 8 * v57);
              }

              *(v18 + 8 * v57) = 0;
              v16 += 8 * (v59 - v58) * v17;
              ++v56;
            }

            while (v56 < *(*(a2 + 152) + 4 * v27));
          }

          v89 = v14;
          v90 = v28;
          if (v28 >= v29)
          {
            v60 = v29;
          }

          else
          {
            v60 = v28;
          }

          v87 = v29;
          v88 = v60;
          result = cunmlq_NEWLAPACK();
          v61 = v83 - v84;
          if (v14 <= 0)
          {
            LODWORD(v71) = v60 - v61;
            *(v18 + 8 * v22) = v16;
            v79 = v16;
            v21 = v81;
          }

          else
          {
            v62 = 0;
            v21 = v81;
            v63 = *(a2 + 96);
            v64 = v81;
            do
            {
              v65 = *(v63 + 4 * v22);
              if (v65 < *(v63 + 4 * v27))
              {
                v66 = v64;
                v67 = (v82 + 4 * v84);
                do
                {
                  if (*(a5 + 12))
                  {
                    v68 = v62 + *(a5 + 8) * *v67;
                  }

                  else
                  {
                    v68 = *v67 + *(a5 + 8) * v62;
                  }

                  v69 = *v66++;
                  *(*(a5 + 16) + 8 * v68) = v69;
                  ++v65;
                  v63 = *(a2 + 96);
                  ++v67;
                }

                while (v65 < *(v63 + 4 * v27));
              }

              ++v62;
              v64 = (v64 + v34);
            }

            while (v62 != v14);
            v70 = 0;
            v71 = (v60 - v61);
            *(v18 + 8 * v22) = v16;
            v72 = &v81[v61];
            v73 = v16;
            do
            {
              v74 = -v71;
              v75 = v73;
              v76 = v72;
              if (v60 > v61)
              {
                do
                {
                  v77 = *v76++;
                  *v75++ = v77;
                }

                while (!__CFADD__(v74++, 1));
              }

              ++v70;
              v72 = (v72 + v34);
              v73 += v71;
            }

            while (v70 != v14);
            v79 = *(v18 + 8 * v22);
          }

          v17 = v14;
          if (v16 != v79)
          {
            goto LABEL_56;
          }

          v16 += 8 * v71 * v14;
          v20 = *(a2 + 88);
        }

        ++v22;
      }

      while (v27 < v20);
    }
  }

  return result;
}

uint64_t sub_23680AC58(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 4;
  if (*(a3 + 12))
  {
    v4 = 0;
  }

  v5 = *(result + 88);
  if (v5 >= 1)
  {
    v7 = result;
    v8 = *(a3 + v4);
    do
    {
      v9 = v5--;
      v10 = v7[12];
      v11 = v7[13];
      v12 = *(v11 + 8 * v9) - *(v11 + 8 * v5);
      v13 = *(v10 + 4 * v9);
      v14 = *(v10 + 4 * v5);
      v15 = *(*(a2 + 40) + 8 * v5);
      v30 = v7[8];
      if (v8 >= 1)
      {
        v16 = 0;
        v17 = a4;
        do
        {
          v18 = *(v11 + 8 * v5);
          if (v18 < *(v11 + 8 * v9))
          {
            v19 = v17;
            do
            {
              if (*(a3 + 12))
              {
                v20 = v16 + *(a3 + 8) * *(v7[14] + 4 * v18);
              }

              else
              {
                v20 = *(v7[14] + 4 * v18) + *(a3 + 8) * v16;
              }

              *v19++ = *(*(a3 + 16) + 8 * v20);
              ++v18;
              v11 = v7[13];
            }

            while (v18 < *(v11 + 8 * v9));
          }

          ++v16;
          v17 += v12;
        }

        while (v16 != v8);
      }

      v21 = (v13 - v14);
      if (v12 > v21)
      {
        cblas_cgemm_NEWLAPACK();
      }

      result = cblas_ctrsm_NEWLAPACK();
      if (v8 >= 1)
      {
        v22 = 0;
        v23 = a4;
        do
        {
          if (v21 >= 1)
          {
            v24 = v21;
            v25 = (v30 + 4 * v14);
            v26 = v23;
            do
            {
              if (*(a3 + 12))
              {
                v27 = v22 + *(a3 + 8) * *v25;
              }

              else
              {
                v27 = *v25 + *(a3 + 8) * v22;
              }

              v28 = *v26++;
              *(*(a3 + 16) + 8 * v27) = v28;
              ++v25;
              --v24;
            }

            while (v24);
          }

          ++v22;
          v23 += v12;
        }

        while (v22 != v8);
      }
    }

    while (v9 > 1);
  }

  return result;
}

uint64_t sub_23680AE98(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 4;
  if (*(a3 + 12))
  {
    v4 = 0;
  }

  if (*(result + 88) >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = *(a3 + v4);
    do
    {
      v9 = v7 + 1;
      v10 = *(v6 + 96);
      v11 = *(v10 + 4 * (v7 + 1));
      v12 = *(v10 + 4 * v7);
      v13 = *(*(v6 + 104) + 8 * (v7 + 1)) - *(*(v6 + 104) + 8 * v7);
      v14 = (v11 - v12);
      v15 = *(*(a2 + 40) + 8 * v7);
      if (v8 <= 0)
      {
        v41 = *(*(v6 + 104) + 8 * (v7 + 1)) - *(*(v6 + 104) + 8 * v7);
        v40 = *(*(a2 + 40) + 8 * v7);
        result = cblas_ctrsm_NEWLAPACK();
      }

      else
      {
        v16 = 0;
        v17 = *(v6 + 64) + 4 * v12;
        v18 = 8 * (v11 - v12);
        v19 = a4;
        do
        {
          if (v14 >= 1)
          {
            v20 = v14;
            v21 = v17;
            v22 = v19;
            do
            {
              if (*(a3 + 12))
              {
                v23 = v16 + *(a3 + 8) * *v21;
              }

              else
              {
                v23 = *v21 + *(a3 + 8) * v16;
              }

              *v22++ = *(*(a3 + 16) + 8 * v23);
              ++v21;
              --v20;
            }

            while (v20);
          }

          ++v16;
          v19 = (v19 + v18);
        }

        while (v16 != v8);
        v24 = a4;
        result = cblas_ctrsm_NEWLAPACK();
        for (i = 0; i != v8; ++i)
        {
          if (v14 >= 1)
          {
            v26 = v14;
            v27 = v17;
            v28 = v24;
            do
            {
              if (*(a3 + 12))
              {
                v29 = i + *(a3 + 8) * *v27;
              }

              else
              {
                v29 = *v27 + *(a3 + 8) * i;
              }

              v30 = *v28++;
              *(*(a3 + 16) + 8 * v29) = v30;
              ++v27;
              --v26;
            }

            while (v26);
          }

          v24 = (v24 + v18);
        }
      }

      if (v13 > v14)
      {
        v31 = &a4[v14 * v8];
        result = cblas_cgemm_NEWLAPACK();
        if (v8 >= 1)
        {
          v32 = 0;
          v33 = *(v6 + 104);
          do
          {
            v34 = (v33 + 8 * v7);
            v35 = v34[1];
            v36 = *v34 + v14;
            if (v36 < v35)
            {
              v37 = v31;
              do
              {
                if (*(a3 + 12))
                {
                  v38 = v32 + *(a3 + 8) * *(*(v6 + 112) + 4 * v36);
                }

                else
                {
                  v38 = *(*(v6 + 112) + 4 * v36) + *(a3 + 8) * v32;
                }

                v39 = *v37++;
                *(*(a3 + 16) + 8 * v38) = vadd_f32(v39, *(*(a3 + 16) + 8 * v38));
                ++v36;
                v33 = *(v6 + 104);
              }

              while (v36 < *(v33 + 8 * v7 + 8));
            }

            ++v32;
            v31 = (v31 + 8 * v13 - 8 * v14);
          }

          while (v32 != v8);
        }
      }

      ++v7;
    }

    while (v9 < *(v6 + 88));
  }

  return result;
}

void sub_23680B1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, void *a6)
{
  v11 = 4;
  if (*(a4 + 12))
  {
    v11 = 0;
  }

  v12 = *(a4 + v11);
  ilaenv_NEWLAPACK();
  if (a5[1] >= 1)
  {
    v13 = 0;
    do
    {
      bzero((*(a5 + 2) + 8 * a5[2] * v13++), 8 * *a5);
    }

    while (v13 < a5[1]);
  }

  v14 = *(a2 + 88);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = *(a2 + 96);
    do
    {
      v17 = *(v16 + 4 * v15);
      v18 = v15 + 1;
      if (v17 < *(v16 + 4 * (v15 + 1)))
      {
        v19 = 0;
        do
        {
          v20 = *(a2 + 120);
          v21 = *(v20 + 8 * v15) + v19;
          if (v21 >= *(v20 + 8 * v18))
          {
            break;
          }

          v22 = *(a2 + 128);
          v23 = *(a2 + 136);
            ;
          }

          if (v12 >= 1)
          {
            v25 = 0;
            do
            {
              if (*(a4 + 12))
              {
                v26 = v25 + *(a4 + 8) * *(*(a2 + 64) + 4 * v17);
              }

              else
              {
                v26 = *(*(a2 + 64) + 4 * v17) + *(a4 + 8) * v25;
              }

              if (a5[3])
              {
                v27 = i;
              }

              else
              {
                v27 = v25;
              }

              if (a5[3])
              {
                v28 = v25;
              }

              else
              {
                v28 = i;
              }

              *(*(a5 + 2) + 8 * (v28 + a5[2] * v27)) = *(*(a4 + 16) + 8 * v26);
              ++v25;
            }

            while (v12 != v25);
            v16 = *(a2 + 96);
          }

          ++v17;
          ++v19;
        }

        while (v17 < *(v16 + 4 * v18));
        v14 = *(a2 + 88);
      }

      ++v15;
    }

    while (v18 < v14);
    if (v14 >= 1)
    {
      v29 = v14;
      v30 = *(a2 + 120);
      do
      {
        v31 = v29 - 1;
        v32 = (v30 + 8 * (v29 - 1));
        v33 = *v32;
        v34 = v32[1];
        v35 = v34 - *v32;
        v36 = *(*(a2 + 104) + 8 * v29) - *(*(a2 + 104) + 8 * (v29 - 1));
        if (v35)
        {
          v37 = *(*(a2 + 104) + 8 * v29) == *(*(a2 + 104) + 8 * (v29 - 1));
        }

        else
        {
          v37 = 1;
        }

        if (!v37)
        {
          v38 = *(*(a3 + 40) + 8 * v31);
          v39 = *(a3 + 56);
          v40 = v35;
          if (v34 > v33)
          {
            v41 = a6;
            do
            {
              v43 = *(a2 + 128);
              v42 = *(a2 + 136);
                ;
              }

              if (v12 >= 1)
              {
                v45 = 0;
                v46 = v41;
                do
                {
                  v47 = a5[2];
                  if (a5[3])
                  {
                    v48 = v45 + j * v47;
                  }

                  else
                  {
                    v48 = j + (v47 * v45);
                  }

                  *v46 = *(*(a5 + 2) + 8 * v48);
                  ++v45;
                  v46 += v35;
                }

                while (v12 != v45);
                v30 = *(a2 + 120);
              }

              ++v33;
              ++v41;
            }

            while (v33 < *(v30 + 8 * v29));
          }

          cunmlq_NEWLAPACK();
          v30 = *(a2 + 120);
          v49 = *(v30 + 8 * v31);
          if (v49 < *(v30 + 8 * v29))
          {
            v50 = a6;
            do
            {
              v51 = *(a2 + 128);
              v52 = *(a2 + 136);
                ;
              }

              if (v12 >= 1)
              {
                v54 = 0;
                v55 = v50;
                do
                {
                  v56 = a5[2];
                  if (a5[3])
                  {
                    v57 = v54 + k * v56;
                  }

                  else
                  {
                    v57 = k + (v56 * v54);
                  }

                  *(*(a5 + 2) + 8 * v57) = *v55;
                  ++v54;
                  v55 += v40;
                }

                while (v12 != v54);
                v30 = *(a2 + 120);
              }

              ++v49;
              ++v50;
            }

            while (v49 < *(v30 + 8 * v29));
          }
        }
      }

      while (v29-- > 1);
    }
  }
}