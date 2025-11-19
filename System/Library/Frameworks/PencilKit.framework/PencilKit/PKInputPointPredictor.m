@interface PKInputPointPredictor
- (double)predictedPointAtTimestamp:(uint64_t)a3@<X8> defaultPoint:(double)a4@<D0>;
- (void)predictedPointForPoint:(uint64_t)a3@<X8> timestamp:(double)a4@<D0>;
@end

@implementation PKInputPointPredictor

- (void)predictedPointForPoint:(uint64_t)a3@<X8> timestamp:(double)a4@<D0>
{
  if (a1)
  {
    v8 = *(a1 + 552);
    v9 = (a1 + 8);
    if (v8 == 4)
    {
      memmove(v9, (a1 + 144), 0x198uLL);
      v10 = (a1 + 416);
    }

    else
    {
      *(a1 + 552) = v8 + 1;
      v10 = &v9[136 * v8];
    }

    *v10 = *a2;
    v11 = *(a2 + 16);
    v12 = *(a2 + 32);
    v13 = *(a2 + 64);
    *(v10 + 3) = *(a2 + 48);
    *(v10 + 4) = v13;
    *(v10 + 1) = v11;
    *(v10 + 2) = v12;
    v14 = *(a2 + 80);
    v15 = *(a2 + 96);
    v16 = *(a2 + 112);
    *(v10 + 16) = *(a2 + 128);
    *(v10 + 6) = v15;
    *(v10 + 7) = v16;
    *(v10 + 5) = v14;
    v17 = *(a2 + 112);
    v21[6] = *(a2 + 96);
    v21[7] = v17;
    v22 = *(a2 + 128);
    v18 = *(a2 + 48);
    v21[2] = *(a2 + 32);
    v21[3] = v18;
    v19 = *(a2 + 80);
    v21[4] = *(a2 + 64);
    v21[5] = v19;
    v20 = *(a2 + 16);
    v21[0] = *a2;
    v21[1] = v20;
    [(PKInputPointPredictor *)a1 predictedPointAtTimestamp:v21 defaultPoint:a3, a4];
  }

  else
  {
    *(a3 + 128) = 0;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

- (double)predictedPointAtTimestamp:(uint64_t)a3@<X8> defaultPoint:(double)a4@<D0>
{
  if (a1)
  {
    if (*(a1 + 552) > 3)
    {
      v4 = a4 - *(a1 + 480);
      if (v4 > 0.0)
      {
        v5 = *MEMORY[0x1E695EFF8];
        v6 = *(a1 + 72);
        v7 = (a1 + 208);
        v8 = 3;
        v9 = v6;
        while (1)
        {
          v10 = v9;
          v9 = v7->f64[0];
          v11 = v7->f64[0] - v10;
          if (v11 <= 0.0)
          {
            break;
          }

          v5 = vaddq_f64(v5, vdivq_f64(vsubq_f64(v7[-4], *(v7 - 200)), vdupq_lane_s64(*&v11, 0)));
          v7 = (v7 + 136);
          if (!--v8)
          {
            __asm { FMOV            V4.2D, #3.0 }

            v17 = vdivq_f64(v5, _Q4);
            v19 = *(a1 + 8);
            v18 = *(a1 + 16);
            v20 = (a1 + 144);
            v21 = 0.0;
            v22 = 3;
            do
            {
              v23 = v20[8];
              v24 = *v20;
              v25 = v20[1];
              v20 += 17;
              v21 = v21 + ((v25 - v18) / (v23 - v6) - v17.f64[1]) * ((v25 - v18) / (v23 - v6) - v17.f64[1]) + ((v24 - v19) / (v23 - v6) - v17.f64[0]) * ((v24 - v19) / (v23 - v6) - v17.f64[0]);
              v18 = v25;
              v19 = v24;
              v6 = v23;
              --v22;
            }

            while (v22);
            v26 = v21 / 3.0;
            v27 = sqrt(v17.f64[1] * v17.f64[1] + v17.f64[0] * v17.f64[0]);
            v28 = (sqrt(v26) + -3558.22611) / -3487.80326;
            v29 = 0.0;
            v30 = 0.0;
            if (v28 >= 0.0)
            {
              v30 = v28;
              if (v28 > 1.0)
              {
                v30 = 1.0;
              }
            }

            v31 = (v27 + -25.262576) / 556.741905;
            if (v31 >= 0.0)
            {
              v29 = v31;
              if (v31 > 1.0)
              {
                v29 = 1.0;
              }
            }

            *a2 = vaddq_f64(*(a1 + 416), vmulq_n_f64(vmulq_n_f64(v17, v4), v30 * v29));
            *(a2 + 64) = a4;
            break;
          }
        }
      }
    }

    v32 = *(a2 + 112);
    *(a3 + 96) = *(a2 + 96);
    *(a3 + 112) = v32;
    *(a3 + 128) = *(a2 + 128);
    v33 = *(a2 + 48);
    *(a3 + 32) = *(a2 + 32);
    *(a3 + 48) = v33;
    v34 = *(a2 + 80);
    *(a3 + 64) = *(a2 + 64);
    *(a3 + 80) = v34;
    v35 = *(a2 + 16);
    *a3 = *a2;
    *(a3 + 16) = v35;
  }

  else
  {
    *(a3 + 128) = 0;
    *&v35 = 0;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return *&v35;
}

@end