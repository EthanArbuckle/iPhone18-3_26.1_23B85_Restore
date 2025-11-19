@interface IPDetector
@end

@implementation IPDetector

uint64_t __IPDetector_response_block_invoke(uint64_t result, int a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = *(result + 48) * a2;
    v5 = *(*(*(result + 32) + 8) + 24) + 2 * v4;
    v6 = (*(result + 40) + v4);
    v7 = *(result + 64);
    do
    {
      v9 = *(result + 56);
      v8 = *(result + 60);
      if (v7 < 1)
      {
        v22 = v6 - 3;
        v23 = v6 + 3;
        v24 = &v6[-v9];
        v25 = &v6[v9];
        v26 = &v6[v8 - 2];
        v27 = &v6[v8 + 2];
        v30 = &v6[-v8];
        v29 = &v6[-v8 + 2];
        v28 = v30 - 2;
        v12 = v5;
        v11 = v6;
      }

      else
      {
        v10 = 0;
        v11 = v6;
        v12 = v5;
        do
        {
          v13 = vmovl_u8(*v11);
          v14 = vextq_s8(v13, v13, 8uLL).u64[0];
          *v13.i8 = vadd_s16(*v13.i8, *v13.i8);
          v15 = vaddl_u8(*(v11 + 3), *(v11 - 3));
          v16 = vsub_s16(*v13.i8, *v15.i8);
          v17 = vaddl_u8(*&v11[v9], *&v11[-v9]);
          *v13.i8 = vsub_s16(*v13.i8, *v17.i8);
          v18 = vmull_s16(v16, *v13.i8);
          *v13.i8 = vadd_s16(*v13.i8, v16);
          v19 = vsubq_s16(vaddl_u8(*&v11[-v8 + 2], *&v11[v8 - 2]), vaddl_u8(*&v11[v8 + 2], *&v11[-v8 - 2]));
          v20 = vadd_s16(v14, v14);
          *v13.i8 = vshr_n_s16(*v13.i8, 4uLL);
          *v15.i8 = vsub_s16(v20, *&vextq_s8(v15, v15, 8uLL));
          *v17.i8 = vsub_s16(v20, *&vextq_s8(v17, v17, 8uLL));
          v21 = vmull_s16(*v15.i8, *v17.i8);
          *v15.i8 = vshr_n_s16(vadd_s16(*v17.i8, *v15.i8), 4uLL);
          v11 += 8;
          *v12++ = vshrn_high_n_s32(vshrn_n_s32(vmlsl_s16(vmlsl_s16(v18, *v13.i8, *v13.i8), *v19.i8, *v19.i8), 9uLL), vmlsl_high_s16(vmlsl_s16(v21, *v15.i8, *v15.i8), v19, v19), 9uLL);
          ++v10;
          v7 = *(result + 64);
        }

        while (v10 < v7);
        v22 = v11 - 3;
        v23 = v11 + 3;
        v24 = &v11[-v9];
        v25 = &v11[v9];
        v26 = &v11[v8 - 2];
        v27 = &v11[v8 + 2];
        v28 = &v11[-v8 - 2];
        v29 = &v11[-v8 + 2];
      }

      v31 = *(result + 68);
      if (v31 >= 1)
      {
        do
        {
          v32 = *v11++;
          v33 = 2 * v32;
          v35 = *v22++;
          v34 = v35;
          v36 = *v23++;
          v37 = v33 - (v34 + v36);
          v39 = *v24++;
          v38 = v39;
          v40 = *v25++;
          v41 = v33 - (v38 + v40);
          v42 = v41 * v37;
          v43 = (v41 + v37) >> 4;
          v45 = *v26++;
          v44 = v45;
          v46 = *v27++;
          v47 = v44 - v46;
          v49 = *v29++;
          v48 = v49;
          v50 = *v28++;
          v12->i16[0] = (v42 - (v47 - v50 + v48) * (v47 - v50 + v48) - v43 * v43) >> 9;
          v12 = (v12 + 2);
          --v31;
        }

        while (v31);
      }

      v51 = *(result + 48);
      v6 += v51;
      v5 += 2 * v51;
      ++v3;
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t __IPDetector_cornerDetect_block_invoke(uint64_t result, int a2, int a3)
{
  v3 = a2 + a3 - 1;
  if (a2 + 1 < v3)
  {
    v5 = *(result + 40);
    v4 = *(result + 48);
    v6 = *(result + 32);
    v7 = v6[4];
    v8 = a2;
    v9 = v5 + a2;
    v10 = v6[8];
    v11 = *(result + 56);
    v12 = v8 + 1;
    v13 = v4 * (2 * v9 + 4) + 2 * v5 + v7 + 2;
    v14 = 2 * v4;
    result = v4 * (2 * v9 + 2) + 2 * v5 + v7 + 4;
    v15 = 2 * v4 * v9 + 2 * v5 + v7 + 4;
    do
    {
      if (v11 >= 3)
      {
        v16 = 20 * *(v10 + 2 * v12);
        v17 = (v11 - 1) - 1;
        v18 = 2;
        v19 = v5 + 1;
        do
        {
          v20 = result + v18;
          v21 = *(result + v18 - 4);
          if (v21 >= 1 && v21 >= *(v20 - 6) && v21 >= *(v20 - 2))
          {
            v22 = v15 + v18;
            if (v21 >= *(v15 + v18 - 4))
            {
              v23 = (v13 + v18);
              if (v21 >= *(v13 + v18 - 2) && v21 >= *(v22 - 6) && v21 >= *(v22 - 2) && v21 >= *(v23 - 2) && v21 >= *v23)
              {
                v24 = v6[6];
                v25 = v16 + *(v6[7] + v18);
                v26 = v24 + 6 * v25;
                v28 = *(v26 + 4);
                v27 = (v26 + 4);
                if (v28 < v21)
                {
                  *v27 = v21;
                  v29 = (v24 + 6 * v25);
                  *v29 = v19;
                  v29[1] = v12 + v5;
                }
              }
            }
          }

          ++v19;
          v18 += 2;
          --v17;
        }

        while (v17);
      }

      ++v12;
      v13 += v14;
      result += v14;
      v15 += v14;
    }

    while (v3 != v12);
  }

  return result;
}

@end