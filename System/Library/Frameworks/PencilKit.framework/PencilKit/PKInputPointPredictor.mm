@interface PKInputPointPredictor
- (double)predictedPointAtTimestamp:(uint64_t)timestamp@<X8> defaultPoint:(double)point@<D0>;
- (void)predictedPointForPoint:(uint64_t)point@<X8> timestamp:(double)timestamp@<D0>;
@end

@implementation PKInputPointPredictor

- (void)predictedPointForPoint:(uint64_t)point@<X8> timestamp:(double)timestamp@<D0>
{
  if (self)
  {
    v8 = *(self + 552);
    v9 = (self + 8);
    if (v8 == 4)
    {
      memmove(v9, (self + 144), 0x198uLL);
      v10 = (self + 416);
    }

    else
    {
      *(self + 552) = v8 + 1;
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
    [(PKInputPointPredictor *)self predictedPointAtTimestamp:v21 defaultPoint:point, timestamp];
  }

  else
  {
    *(point + 128) = 0;
    *(point + 96) = 0u;
    *(point + 112) = 0u;
    *(point + 64) = 0u;
    *(point + 80) = 0u;
    *(point + 32) = 0u;
    *(point + 48) = 0u;
    *point = 0u;
    *(point + 16) = 0u;
  }
}

- (double)predictedPointAtTimestamp:(uint64_t)timestamp@<X8> defaultPoint:(double)point@<D0>
{
  if (self)
  {
    if (*(self + 552) > 3)
    {
      v4 = point - *(self + 480);
      if (v4 > 0.0)
      {
        v5 = *MEMORY[0x1E695EFF8];
        v6 = *(self + 72);
        v7 = (self + 208);
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
            v19 = *(self + 8);
            v18 = *(self + 16);
            v20 = (self + 144);
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

            *a2 = vaddq_f64(*(self + 416), vmulq_n_f64(vmulq_n_f64(v17, v4), v30 * v29));
            *(a2 + 64) = point;
            break;
          }
        }
      }
    }

    v32 = *(a2 + 112);
    *(timestamp + 96) = *(a2 + 96);
    *(timestamp + 112) = v32;
    *(timestamp + 128) = *(a2 + 128);
    v33 = *(a2 + 48);
    *(timestamp + 32) = *(a2 + 32);
    *(timestamp + 48) = v33;
    v34 = *(a2 + 80);
    *(timestamp + 64) = *(a2 + 64);
    *(timestamp + 80) = v34;
    v35 = *(a2 + 16);
    *timestamp = *a2;
    *(timestamp + 16) = v35;
  }

  else
  {
    *(timestamp + 128) = 0;
    *&v35 = 0;
    *(timestamp + 96) = 0u;
    *(timestamp + 112) = 0u;
    *(timestamp + 64) = 0u;
    *(timestamp + 80) = 0u;
    *(timestamp + 32) = 0u;
    *(timestamp + 48) = 0u;
    *timestamp = 0u;
    *(timestamp + 16) = 0u;
  }

  return *&v35;
}

@end