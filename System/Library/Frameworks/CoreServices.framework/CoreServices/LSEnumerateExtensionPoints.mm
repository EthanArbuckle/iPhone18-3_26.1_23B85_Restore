@interface LSEnumerateExtensionPoints
@end

@implementation LSEnumerateExtensionPoints

void ___LSEnumerateExtensionPoints_block_invoke(uint64_t a1)
{
  [(_LSDatabase *)*(a1 + 32) store];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  _CSArrayEnumerateAllValues();
}

_DWORD *___LSEnumerateExtensionPoints_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  result = _LSGetExtensionPointData(*(a1 + 32), a3);
  if (result)
  {
    v5 = *(*(a1 + 40) + 8);
    v6 = result[1];
    v7 = result[11];
    v8 = result[14];
    v9 = v7 ^ v6 ^ v8;
    v10 = v5[7];
    if (v10)
    {
      v11 = vcnt_s8(v10);
      v11.i16[0] = vaddlv_u8(v11);
      if (v11.u32[0] > 1uLL)
      {
        v12 = v7 ^ v6 ^ v8;
        if (*&v10 <= v9)
        {
          v12 = v9 % v10.i32[0];
        }
      }

      else
      {
        v12 = (v10.i32[0] - 1) & v9;
      }

      v13 = v5[6];
      v14 = *(*&v13 + 8 * v12);
      if (v14)
      {
        for (i = *v14; i; i = *i)
        {
          v16 = i[1];
          if (v16 == v9)
          {
            v17 = i[2];
            if (v17[1] == v6 && v17[11] == v7 && v17[14] == v8)
            {
              return result;
            }
          }

          else
          {
            if (v11.u32[0] > 1uLL)
            {
              if (v16 >= *&v10)
              {
                v16 %= *&v10;
              }
            }

            else
            {
              v16 &= *&v10 - 1;
            }

            if (v16 != v12)
            {
              break;
            }
          }
        }
      }

      if (v11.u32[0] > 1uLL)
      {
        v18 = v7 ^ v6 ^ v8;
        if (*&v10 <= v9)
        {
          v18 = v9 % v10.i32[0];
        }
      }

      else
      {
        v18 = (v10.i32[0] - 1) & v9;
      }

      v19 = *(*&v13 + 8 * v18);
      if (v19)
      {
        for (j = *v19; j; j = *j)
        {
          v21 = j[1];
          if (v21 == v9)
          {
            v22 = j[2];
            if (v22[1] == v6 && v22[11] == v7 && v22[14] == v8)
            {
              return result;
            }
          }

          else
          {
            if (v11.u32[0] > 1uLL)
            {
              if (v21 >= *&v10)
              {
                v21 %= *&v10;
              }
            }

            else
            {
              v21 &= *&v10 - 1;
            }

            if (v21 != v18)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  return result;
}

@end