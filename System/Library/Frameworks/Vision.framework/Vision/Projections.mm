@interface Projections
@end

@implementation Projections

void __Projections_projectionRows_planar8UtoF_block_invoke(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  STACK[0xFC18] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 32) + 48 * v2;
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v3;
  bzero(&v20, 0x3F00uLL);
  v7 = *(v3 + 12);
  v8 = *(v3 + 8);
  v9 = *(v3 + 8);
  if (v7 >= 1)
  {
    for (i = 0; i < v7; i += v4)
    {
      if (v8 < 17)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = &v20;
        do
        {
          v13 = *(v6 + v11);
          v14 = vmovl_u8(*v13.i8);
          v15 = vaddw_u16(*v12, *v14.i8);
          v16 = vaddw_high_u16(v12[1], v14);
          v17 = vmovl_high_u8(v13);
          *v12 = v15;
          v12[1] = v16;
          v18 = vaddw_u16(v12[2], *v17.i8);
          v19 = vaddw_high_u16(v12[3], v17);
          v12[2] = v18;
          v12[3] = v19;
          v11 += 16;
          v12 += 4;
        }

        while (v11 < v8 - 16);
        v11 = v11;
      }

      if (v11 < v9)
      {
        do
        {
          *(&v20 + v11) += *(v6 + v11);
          ++v11;
        }

        while (v8 != v11);
      }

      v6 += v5 * v4;
    }
  }

  vDSP_vflt32(&v20, 1, *(v3 + 32), 1, v9);
  *(v3 + 40) = 4736;
}

uint64_t __Projections_projectionCols_planar8UtoF_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32) + 48 * a2;
  v3 = *(v2 + 12);
  if (v3 >= 1)
  {
    v4 = *(v2 + 24);
    if (v4 <= 4 && ((1 << v4) & 0x16) != 0)
    {
      v6 = 0;
      v7 = *v2;
      v8 = *(v2 + 8);
      v9 = *(v2 + 32);
      v10 = *(v2 + 16);
      v11 = (v8 - 16);
      do
      {
        if (v4 == 1)
        {
          if (v8 < 17)
          {
            result = 0;
            v17 = 0uLL;
          }

          else
          {
            v16 = 0;
            v17 = 0uLL;
            do
            {
              v17 = vpadalq_s16(v17, vpaddlq_u8(*(v7 + v16)));
              v16 += 16;
            }

            while (v16 < v11);
            result = ((v8 - 17) & 0xFFFFFFF0) + 16;
          }

          v13 = vpaddq_s32(v17, v17).u64[0];
        }

        else
        {
          if (v4 != 2)
          {
            if (v8 < 17)
            {
              result = 0;
              v13.i32[0] = 0;
            }

            else
            {
              v18 = 0;
              v13 = 0;
              do
              {
                v13 = vpadal_s16(v13, vpaddl_u8(vqtbl1_s8(*(v7 + v18), 0xC0804000C080400)));
                v18 += 16;
              }

              while (v18 < v11);
              result = ((v8 - 17) & 0xFFFFFFF0) + 16;
            }

            goto LABEL_25;
          }

          if (v8 < 17)
          {
            result = 0;
            v13 = 0;
          }

          else
          {
            v12 = 0;
            v13 = 0;
            do
            {
              v14 = (v7 + v12);
              v15 = *vld2_s8(v14).val;
              v13 = vpadal_s16(v13, vpaddl_u8(v15));
              v12 += 16;
            }

            while (v12 < v11);
            result = ((v8 - 17) & 0xFFFFFFF0) + 16;
          }
        }

        v13.i32[0] = vpadd_s32(v13, v13).u32[0];
LABEL_25:
        v19 = v13.i32[0];
        if (result < v8)
        {
          result = result;
          do
          {
            v19 += *(v7 + result);
            result += v4;
          }

          while (result < v8);
        }

        *(v9 + 4 * v6) = v19;
        v7 += v10;
        ++v6;
      }

      while (v6 != v3);
    }
  }

  *(v2 + 40) = 4736;
  return result;
}

@end