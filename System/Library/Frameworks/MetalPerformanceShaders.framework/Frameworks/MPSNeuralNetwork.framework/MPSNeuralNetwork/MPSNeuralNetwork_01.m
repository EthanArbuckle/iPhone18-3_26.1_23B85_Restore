void sub_239BCC518(_Unwind_Exception *a1)
{
  MPSAutoCache::~MPSAutoCache((v1 - 128));
  sub_239BACD2C((v1 - 104), v3, v4, v5, v6, v7, v8, v9);
  _Unwind_Resume(a1);
}

uint64_t sub_239BCC788(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 268435488 && (a2 & 0xFFFFFFFFFFFFFE00) == 512)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_239BCC7AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 0x81)
  {
    return 8;
  }

  else
  {
    return 16;
  }
}

double sub_239BCC7C0(uint64_t a1, int a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  *a5 = xmmword_239D7D3E0;
  v5 = *(a1 + 24);
  if (v5 <= 0xF)
  {
    *a5 = v5;
  }

  if (a2 == 536870920 || a2 == 268435472)
  {
    *a5 = xmmword_239D7D3F0;
  }

  if (a4 >= 2 && (a4 & 1) == 0)
  {
    *(a5 + 16) = 2;
  }

  if (a4 < 8)
  {
    *(a5 + 16) = a4;
    *&result = 0x200000001;
  }

  else if (a3 > 0x200 || a4 > 0xF)
  {
    *a5 = xmmword_239D7D400;
    *&result = 0x200000008;
  }

  else
  {
    *a5 = xmmword_239D7D410;
    *&result = 0x200000008;
  }

  return result;
}

void sub_239BCC874(uint64_t a1, int a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = xmmword_239D7D410;
  *a5 = xmmword_239D7D410;
  if (a2 == 268435472)
  {
    *a5 = xmmword_239D7D3F0;
    if (a3 <= 0x3FF && (a3 < 0x200 || a6 <= 3))
    {
      goto LABEL_11;
    }

LABEL_10:
    *a5 = v6;
    goto LABEL_11;
  }

  if (a2 != 536870920)
  {
    if (a2 != 268435488)
    {
      if (a4 < 2)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    v7 = vdup_n_s32(a3 < 0x201);
    v8.i64[0] = v7.u32[0];
    v8.i64[1] = v7.u32[1];
    v6 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v8, 0x3FuLL)), xmmword_239D7D410, xmmword_239D7D3F0);
    goto LABEL_10;
  }

  *a5 = xmmword_239D7D3F0;
  if (a3 >= 0x400)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a4 < 2)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((a4 & 1) == 0)
  {
    *(a5 + 16) = 2;
  }

LABEL_14:
  if (a4 < 8)
  {
    *(a5 + 16) = a4;
  }

  else if (a3 > 0x200 || a4 > 0xF)
  {
    *a5 = xmmword_239D7D400;
  }

  else
  {
    *a5 = xmmword_239D7D410;
  }
}

uint64_t sub_239BCC9C0(uint64_t result, int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  *a5 = xmmword_239D7D3E0;
  v5 = *(result + 24);
  if (v5 <= 0xF)
  {
    *a5 = v5;
  }

  if (a2 == 536870920 || a2 == 268435472)
  {
    *a5 = xmmword_239D7D3F0;
    v6 = 8;
    if (a4 < 2)
    {
LABEL_11:
      *(a5 + 8) = v6;
      if (a4 > 8)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v6 = 4;
    if (a4 < 2)
    {
      goto LABEL_11;
    }
  }

  if (a4)
  {
    goto LABEL_11;
  }

  *(a5 + 16) = 2;
  if (a4 > 8)
  {
    return result;
  }

LABEL_12:
  *(a5 + 16) = a4;
  if (a4 >= 5 && (a4 & 1) == 0)
  {
    *a5 = xmmword_239D7D410;
  }

  return result;
}

void sub_239BCCA74(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  *a5 = xmmword_239D7D460;
  if (a4 <= 4)
  {
    *(a5 + 16) = a4;
    return;
  }

  if (a4 < 0x80)
  {
    if (a4 >= 0x20)
    {
      *(a5 + 8) = xmmword_239D7D400;
      return;
    }

    if (a4 >= 0x10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a5 + 8) = xmmword_239D7D410;
    if (a3 >= 0x100)
    {
      *(a5 + 8) = 8;
      if (a3 >= 0x200 && a4 >= 0x200)
      {
        *a5 = xmmword_239D7D490;
LABEL_11:
        *(a5 + 16) = 4;
      }
    }
  }
}

double sub_239BCCBA4(uint64x2_t a1, double a2, uint64x2_t a3, uint64_t a4, int a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = xmmword_239D7D410;
  *a8 = xmmword_239D7D410;
  if (a7 >= 2)
  {
    switch(a5)
    {
      case 268435472:
        *a8 = xmmword_239D7D3F0;
        a3.i64[0] = 0x100000001;
        if (a6 <= 0x3FF)
        {
          a3.i64[0] = 0x100000001;
          if (a6 < 0x200 || a9 <= 3)
          {
            goto LABEL_20;
          }

          a3.i64[0] = 0x100000001;
        }

        break;
      case 536870920:
        *a8 = xmmword_239D7D3F0;
        a3.i64[0] = 0x100000001;
        if (a6 < 0x400)
        {
LABEL_20:
          if (a7)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        break;
      case 268435488:
        a1.i64[0] = a6;
        a3.i64[0] = 513;
        v10.i64[0] = 0x100000001;
        v10.i64[1] = 0x100000001;
        a3.i64[0] = vbslq_s8(vdupq_lane_s64(vcgtq_u64(a3, a1).i64[0], 0), xmmword_239D7D420, v10).u64[0];
        v11 = vdup_n_s32(a6 < 0x201);
        v12.i64[0] = v11.u32[0];
        v12.i64[1] = v11.u32[1];
        v9 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v12, 0x3FuLL)), xmmword_239D7D410, xmmword_239D7D3F0);
        break;
      default:
        a3.i64[0] = 0x100000001;
        if (a7)
        {
LABEL_22:
          if (a7 < 8)
          {
            *(a8 + 16) = a7;
            return *a3.i64;
          }

          else
          {
            *&result = 0x200000004;
            if (a6 > 0x200 || a7 > 0xF)
            {
              *a8 = xmmword_239D7D400;
            }

            else
            {
              *a8 = xmmword_239D7D410;
            }
          }

          return result;
        }

LABEL_21:
        *(a8 + 16) = 2;
        goto LABEL_22;
    }

    *a8 = v9;
    goto LABEL_20;
  }

  *&result = 0x100000001;
  if (a5 != 268435472)
  {
    if (a5 == 536870920)
    {
      *a8 = xmmword_239D7D3F0;
      *&result = 0x100000001;
      if (a6 < 0x100)
      {
        return result;
      }
    }

    else
    {
      if (a5 != 268435488)
      {
        return result;
      }

      *a8 = xmmword_239D7D3F0;
      *&result = 0x100000001;
      if (a6 >= 0x201)
      {
        return result;
      }
    }

    *a8 = xmmword_239D7D410;
    return result;
  }

  *a8 = xmmword_239D7D3F0;
  if (a6 > 0xFF)
  {
    *&result = 0x100000001;
    *a8 = xmmword_239D7D410;
  }

  return result;
}

void sub_239BCCDA0(uint64_t a1, int a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = xmmword_239D7D410;
  *a5 = xmmword_239D7D410;
  if (a2 == 268435472 || a4 >= 2)
  {
    switch(a2)
    {
      case 268435472:
        *a5 = xmmword_239D7D3F0;
        if (a3 <= 0x3FF && (a3 < 0x200 || a6 <= 3))
        {
          goto LABEL_23;
        }

        break;
      case 536870920:
        *a5 = xmmword_239D7D3F0;
        if (a3 < 0x400)
        {
LABEL_23:
          if (a4 >= 2)
          {
            goto LABEL_24;
          }

          goto LABEL_26;
        }

        break;
      case 268435488:
        v8 = vdup_n_s32(a3 < 0x201);
        v9.i64[0] = v8.u32[0];
        v9.i64[1] = v8.u32[1];
        v6 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL)), xmmword_239D7D410, xmmword_239D7D3F0);
        break;
      default:
        if (a4 >= 2)
        {
LABEL_24:
          if ((a4 & 1) == 0)
          {
            *(a5 + 16) = 2;
          }
        }

LABEL_26:
        if (a4 < 8)
        {
          *(a5 + 16) = a4;
        }

        else if (a3 > 0x200 || a4 > 0xF)
        {
          *a5 = xmmword_239D7D400;
        }

        else
        {
          *a5 = xmmword_239D7D410;
        }

        return;
    }

    *a5 = v6;
    goto LABEL_23;
  }

  if (a2 != 536870920)
  {
    if (a2 != 268435488 || a3 <= 0x3FF)
    {
      return;
    }

LABEL_16:
    *a5 = xmmword_239D7D3F0;
    return;
  }

  *a5 = xmmword_239D7D3F0;
  if (a3 >= 0x200)
  {
    *a5 = xmmword_239D7D410;
    if (a3 >= 0x400)
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_239BCCF90(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 0x100)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_239BCCFA8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 268435488 && (a2 & 0xFFFFFFFFFFFFFE00) == 512)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_239BCCFCC(uint64_t a1, unint64_t a2, int a3)
{
  v3 = 1;
  v4 = 4;
  v5 = 1;
  if (a2 >= 0x201)
  {
    v5 = 2;
  }

  if (a2 >= 0x101)
  {
    v4 = v5;
  }

  if (a2 >= 0x81)
  {
    v3 = v4;
  }

  v6 = 4;
  if (a2 < 0x81)
  {
    v6 = 1;
  }

  if (a3 == 268435472)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  if (a3 == 536870920)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_239BCD020(uint64_t a1, int a2, unint64_t a3)
{
  v3 = 8;
  v4 = 4;
  v5 = 16;
  if (a3 < 0x201)
  {
    v5 = 8;
  }

  if (a3 >= 0x101)
  {
    v4 = v5;
  }

  if (a3 >= 0x81)
  {
    v3 = v4;
  }

  v6 = 8;
  v7 = 16;
  v8 = 16;
  if (a3 < 0x201)
  {
    v8 = 2;
  }

  if (a3 >= 0x101)
  {
    v7 = v8;
  }

  if (a3 >= 0x81)
  {
    v6 = v7;
  }

  v9 = 8;
  v10 = 1;
  if (a3 < 0x400)
  {
    v10 = 2;
  }

  if (a3 >= 0x81)
  {
    v9 = v10;
  }

  if (a2 == 536870920)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (a2 == 268435472)
  {
    return v3;
  }

  else
  {
    return v11;
  }
}

void sub_239BCD0AC(uint64_t a1, int a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  *a5 = xmmword_239D7D460;
  *(a5 + 16) = a4;
  if (a2 == 268435472)
  {
    v5 = 8;
  }

  else
  {
    if (a2 != 536870920)
    {
      goto LABEL_8;
    }

    *a5 = 16;
    v5 = 2;
    if (a3 > 0x1FF)
    {
      v5 = 4;
    }
  }

  *(a5 + 8) = v5;
LABEL_8:
  if (a4 >= 8)
  {
    *a5 = xmmword_239D7D400;
    *(a5 + 16) = 2;
    if ((a4 & 0x1F) == 0)
    {
      *(a5 + 8) = xmmword_239D7D3F0;
    }
  }
}

void sub_239BCD14C(uint64_t a1, int a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  *a5 = xmmword_239D7D410;
  if (a4 > 8)
  {
    if ((a4 & 1) == 0)
    {
      *(a5 + 16) = 2;
    }
  }

  else
  {
    *(a5 + 16) = a4;
    if (a2 != 268435472)
    {
      if (a2 == 268435488)
      {
        if (a3 >= 0x200)
        {
          if (a6 > 7)
          {
            if (a6 >= 0x20)
            {
              v6 = 4;
              if (a3 > 0x3FF)
              {
                v6 = 8;
              }

              *a5 = 8;
              *(a5 + 8) = v6;
            }
          }

          else
          {
            *(a5 + 8) = 16;
          }
        }
      }

      else if (a2 == 536870920 && a3 >= 0x200)
      {
        *a5 = xmmword_239D7D400;
      }
    }
  }
}

uint64_t sub_239BCD294(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 1;
  if (a4 > 0xD)
  {
    v4 = 2;
  }

  if (a2 <= 0x3FF)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_239BCD2B8(uint64_t a1, unint64_t a2)
{
  if (a2 <= 0x3FF)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_239BCD2C8(uint64_t a1, unint64_t a2, int a3)
{
  if (a3 == 536870920)
  {
    v4 = 1;
    v5 = 1;
    if (a2 < 0x401)
    {
      v5 = 2;
    }

    if (a2 >= 0x201)
    {
      v4 = v5;
    }

    if (a2 >= 0x101)
    {
      return v4;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    if (a3 != 268435488)
    {
      goto LABEL_14;
    }

    if (a2 < 0x101)
    {
      return 1;
    }

    if (a2 < 0x201)
    {
      return 4;
    }

    else
    {
LABEL_14:
      if (a3 == 268435488 && (a2 & 0xFFFFFFFFFFFFFE00) == 512)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }
}

uint64_t sub_239BCD34C(uint64_t a1, int a2, unint64_t a3)
{
  if (a2 == 536870920)
  {
    v4 = 8;
    if (a3 < 0x401)
    {
      v4 = 16;
    }

    if (a3 >= 0x101)
    {
      return v4;
    }

    else
    {
      return 8;
    }
  }

  else
  {
    if (a2 != 268435488)
    {
      goto LABEL_14;
    }

    if (a3 < 0x81)
    {
      return 32;
    }

    if (a3 < 0x101)
    {
      return 16;
    }

    if (a3 < 0x201)
    {
      return 4;
    }

    else
    {
LABEL_14:
      if (a3 >= 0x81)
      {
        return 8;
      }

      else
      {
        return 16;
      }
    }
  }
}

void sub_239BCD3D0(uint64_t a1, int a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  *a5 = xmmword_239D7D4D0;
  switch(a2)
  {
    case 268435472:
      *a5 = 8;
      if (a3 < 0x400)
      {
        if (a3 >= 0x200 && a6 >= 4)
        {
          *a5 = xmmword_239D7D410;
        }
      }

      else
      {
        *a5 = xmmword_239D7D410;
      }

      break;
    case 536870920:
      *a5 = 8;
      break;
    case 268435488:
      if (a3 > 0x100)
      {
        if (a3 <= 0x200)
        {
          *a5 = xmmword_239D7D460;
          if (a6 <= 4)
          {
            *a5 = 2;
          }
        }
      }

      else
      {
        *(a5 + 8) = 2;
      }

      break;
  }

  if (a4 >= 2 && (a4 & 1) == 0)
  {
    *(a5 + 16) = 2;
  }

  if (a4 < 8)
  {
    *(a5 + 16) = a4;
  }

  else if (a3 > 0x200 || a4 > 0xF)
  {
    *a5 = xmmword_239D7D400;
  }

  else
  {
    *a5 = xmmword_239D7D410;
  }
}

unint64_t sub_239BCD554(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 16;
  v5 = 64;
  if (a4 >= 3)
  {
    v5 = 32;
  }

  else
  {
    v4 = 64;
  }

  if (a2 >= 0x101)
  {
    v4 = v5;
  }

  if (v4 >= *(a1 + 24))
  {
    return *(a1 + 24);
  }

  else
  {
    return v4;
  }
}

uint64_t sub_239BCD594(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x81)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

void sub_239BCD5B0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int64x2_t *a5)
{
  *a5 = vdupq_n_s64(8uLL);
  if (a4 <= 4)
  {
    if (a3 >= 0x400 && (a3 & 0x3FF) == 0)
    {
      v5 = xmmword_239D7D4E0;
LABEL_11:
      *a5 = v5;
      goto LABEL_12;
    }

    if (a3 >= 0x200 && (a3 & 0x1FF) == 0)
    {
      v5 = xmmword_239D7D4F0;
      goto LABEL_11;
    }

    if (a3 >= 0x100 && !a3)
    {
      v5 = xmmword_239D7D4D0;
      goto LABEL_11;
    }
  }

LABEL_12:
  if (a4 >= 4 && (a4 & 1) == 0)
  {
    a5[1].i64[0] = 2;
  }

  if (a4 >= 8)
  {
    if (a4 > 0xF)
    {
      return;
    }

    a4 = 1;
  }

  a5[1].i64[0] = a4;
}

uint64_t sub_239BCD65C(uint64_t result, int a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = 8;
  *a5 = vdupq_n_s64(8uLL);
  if (a4 <= 4)
  {
    if (a2 == 268435488)
    {
      if ((a3 & 0x3FF) == 0 && a3 >= 0x400 && a6 >= 2)
      {
        v6 = 64;
        *a5 = 64;
        goto LABEL_16;
      }

      if (a3 < 0x200 || (a3 & 0x1FF) != 0)
      {
        if (a3 < 0x100 || a3)
        {
          *a5 = xmmword_239D7D4D0;
          v6 = 16;
        }

        else
        {
          *a5 = xmmword_239D7D500;
          v6 = 64;
        }

        goto LABEL_16;
      }

      *a5 = xmmword_239D7D510;
LABEL_15:
      v6 = 32;
      goto LABEL_16;
    }

    if (a3 >= 0x200)
    {
      *a5 = xmmword_239D7D500;
      v6 = 64;
      goto LABEL_16;
    }

    v6 = 8;
    if (a3 >= 0x100 && !a3)
    {
      *a5 = xmmword_239D7D4F0;
      goto LABEL_15;
    }
  }

LABEL_16:
  if (a4 >= 4 && (a4 & 1) == 0)
  {
    *(a5 + 16) = 2;
  }

  if (a4 >= 0x80)
  {
    v6 = 4;
    *a5 = vdupq_n_s64(4uLL);
    *(a5 + 16) = 8;
    if (a3 >= 0x100)
    {
      *(a5 + 16) = 16;
      v6 = 4;
    }

LABEL_31:
    v7 = *(result + 24);
    if (v7 >= v6)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (a4 >= 0x20)
  {
    v6 = 8;
    *a5 = vdupq_n_s64(8uLL);
    *(a5 + 16) = 1;
    if (a3 < 0x200)
    {
      goto LABEL_31;
    }

    *(a5 + 8) = vdupq_n_s64(4uLL);
    v7 = *(result + 24);
    if (v7 >= 8)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (a4 < 8)
  {
    *(a5 + 16) = a4;
    goto LABEL_31;
  }

  *a5 = xmmword_239D7D4D0;
  if (a4 <= 0xF)
  {
    *(a5 + 16) = 1;
    v7 = *(result + 24);
    if (v7 >= 0x10)
    {
      return result;
    }

    goto LABEL_32;
  }

  v7 = *(result + 24);
  if (v7 < 0x10)
  {
LABEL_32:
    *a5 = v7;
  }

  return result;
}

void *sub_239BCD898(void *a1, const char *a2, uint64_t *a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a4 = 0;
  *a3 = 0;
  if (objc_msgSend_decodeBoolForKey_(a1, a2, a2, a4, a5, a6, a7, a8))
  {
    v43 = 0;
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = objc_msgSend_initWithFormat_(v12, v13, @"%@%@", v14, v15, v16, v17, v18, a2, @".length");
    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    v27 = objc_msgSend_initWithFormat_(v20, v21, @"%@%@", v22, v23, v24, v25, v26, a2, @".data");
    v34 = objc_msgSend_decodeInt64ForKey_(a1, v28, v19, v29, v30, v31, v32, v33);
    v40 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, v35, v27, &v43, v36, v37, v38, v39);

    if (v40 && 4 * v34 == v43)
    {
      result = malloc_type_malloc(4 * v34, 0x100004052888210uLL);
      if (result)
      {
        v42 = result;
        MPSCopyToFromNetworkByteOrder32();
        result = v42;
        *a4 = 1;
        *a3 = v34;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *a4 = 1;
  }

  return result;
}

void sub_239BCD9D8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_encodeBool_forKey_(a1, a2, a2 != 0, a3, a5, a6, a7, a8);
  if (a2)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = objc_msgSend_initWithFormat_(v12, v13, @"%@%@", v14, v15, v16, v17, v18, a3, @".length");
    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    v38 = objc_msgSend_initWithFormat_(v20, v21, @"%@%@", v22, v23, v24, v25, v26, a3, @".data");
    objc_msgSend_encodeInt64_forKey_(a1, v27, a4, v19, v28, v29, v30, v31);

    v32 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
    if (v32)
    {
      v33 = v32;
      MPSCopyToFromNetworkByteOrder32();
      objc_msgSend_encodeBytes_length_forKey_(a1, v34, v33, 4 * a4, v38, v35, v36, v37);
      free(v33);
    }
  }
}

uint64_t sub_239BCDB24(uint64_t a1, void *a2, MPSDevice *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = objc_msgSend_numberOfImages(a2, a2, a3, a4, a5, a6, a7, a8);
  v11 = objc_alloc_init(MEMORY[0x277CD7058]);
  if (((objc_msgSend_featureChannels(a2, v12, v13, v14, v15, v16, v17, v18) + 3) >> 2) * v10 < 2)
  {
    objc_msgSend_setTextureType_(v11, v19, 2, v20, v21, v22, v23, v24);
  }

  else
  {
    objc_msgSend_setTextureType_(v11, v19, 3, v20, v21, v22, v23, v24);
  }

  v32 = objc_msgSend_pixelFormat(a2, v25, v26, v27, v28, v29, v30, v31);
  objc_msgSend_setPixelFormat_(v11, v33, v32, v34, v35, v36, v37, v38);
  v46 = objc_msgSend_width(a2, v39, v40, v41, v42, v43, v44, v45);
  objc_msgSend_setWidth_(v11, v47, v46, v48, v49, v50, v51, v52);
  v60 = objc_msgSend_height(a2, v53, v54, v55, v56, v57, v58, v59);
  objc_msgSend_setHeight_(v11, v61, v60, v62, v63, v64, v65, v66);
  v74 = objc_msgSend_featureChannels(a2, v67, v68, v69, v70, v71, v72, v73);
  objc_msgSend_setArrayLength_(v11, v75, ((v74 + 3) >> 2) * v10, v76, v77, v78, v79, v80);
  objc_msgSend_setUsage_(v11, v81, 3, v82, v83, v84, v85, v86);
  objc_msgSend_setStorageMode_(v11, v87, 2, v88, v89, v90, v91, v92);
  objc_msgSend_width(a2, v93, v94, v95, v96, v97, v98, v99);
  objc_msgSend_height(a2, v100, v101, v102, v103, v104, v105, v106);
  objc_msgSend_arrayLength(v11, v107, v108, v109, v110, v111, v112, v113);
  v121 = objc_msgSend_pixelFormat(a2, v114, v115, v116, v117, v118, v119, v120);
  v129 = objc_msgSend_channelFormat(a2, v122, v123, v124, v125, v126, v127, v128);
  PixelInfo = MPSDevice::GetPixelInfo(a3, v121, v129);
  TempTexture = MPSAutoCache::GetTempTexture();
  v131 = objc_alloc(MEMORY[0x277CD7218]);
  v139 = objc_msgSend_featureChannels(a2, v132, v133, v134, v135, v136, v137, v138, PixelInfo);
  v145 = objc_msgSend_initWithTexture_featureChannels_(v131, v140, TempTexture, v139, v141, v142, v143, v144);

  return v145;
}

uint64_t sub_239BCDCC0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9)
{
  v59 = a6;
  v15 = MEMORY[0x277CD7318];
  v16 = *MEMORY[0x277CD7318];
  v17 = *(a4 + v16);
  v80 = *(a5 + v16);
  v81 = v17;
  v67 = 0;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62[0] = a4;
  v62[1] = &v81;
  v18 = MEMORY[0x277CD7320];
  v19 = a4 + *MEMORY[0x277CD7320];
  explicit = atomic_load_explicit(v19, memory_order_acquire);
  if ((*(v19 + 56) & 2) != 0)
  {
    if (*(v19 + 52) < 2u)
    {
      v22 = 2;
    }

    else
    {
      v22 = 3;
    }
  }

  else
  {
    v21 = v15;
    if (!explicit)
    {
      explicit = *(v19 + 40);
    }

    v22 = objc_msgSend_textureType(explicit, a2, a3, a4, a5, a6, a7, a8, a6);
    v15 = v21;
  }

  v23 = MEMORY[0x277CD72F0];
  v24 = *(a4 + *MEMORY[0x277CD72F0]) - 1;
  v60 = a3;
  if (v24 > 4)
  {
    v25 = 0;
  }

  else
  {
    v25 = dword_239D7D5D0[v24];
  }

  if (v22 == 3)
  {
    ++v25;
  }

  v26 = MEMORY[0x277CD7310];
  if (*(a4 + *MEMORY[0x277CD7310]) > 1uLL)
  {
    v25 |= 2u;
  }

  v27 = MEMORY[0x277CD72F8];
  v28 = *(a4 + *MEMORY[0x277CD72F8]);
  if ((*(a4 + *v15) & 0x3000000) != 0)
  {
    v25 |= 4u;
  }

  v29 = MEMORY[0x277CD7328];
  v30 = *(a4 + *MEMORY[0x277CD7328]);
  LODWORD(v63) = v25;
  *(&v63 + 1) = v28;
  v64 = v30;
  v31 = MEMORY[0x277CD7300];
  v65 = *(a4 + *MEMORY[0x277CD7300]);
  *&v66 = a5;
  *(&v66 + 1) = &v80;
  v32 = a5 + *v18;
  v33 = atomic_load_explicit(v32, memory_order_acquire);
  if ((*(v32 + 56) & 2) != 0)
  {
    if (*(v32 + 52) < 2u)
    {
      v36 = 2;
    }

    else
    {
      v36 = 3;
    }
  }

  else
  {
    v34 = a1;
    v35 = v15;
    if (!v33)
    {
      v33 = *(v32 + 40);
    }

    v36 = objc_msgSend_textureType(v33, a2, a3, a4, a5, a6, a7, a8, v59);
    v15 = v35;
    a1 = v34;
    v23 = MEMORY[0x277CD72F0];
    v26 = MEMORY[0x277CD7310];
  }

  v37 = *(a5 + *v23) - 1;
  if (v37 > 4)
  {
    v38 = 0;
  }

  else
  {
    v38 = dword_239D7D5D0[v37];
  }

  if (v36 == 3)
  {
    ++v38;
  }

  if (*(a5 + *v26) > 1uLL)
  {
    v38 |= 2u;
  }

  if ((*(a5 + *v15) & 0x3000000) != 0)
  {
    v38 |= 4u;
  }

  LODWORD(v67) = v38;
  v39 = *(a5 + *v29);
  v68 = *(a5 + *v27);
  v69 = v39;
  v40 = *(a5 + *v31);
  v70 = 0;
  v71 = v40;
  v41 = *a8;
  v42 = a8[1];
  v74 = a8[2];
  v73 = v42;
  v72 = v41;
  v75 = *a7;
  v76 = *(a7 + 16);
  v77 = a9;
  v78 = 0;
  v79 = *(v59 + 208);
  v43 = (a4 + *v18);
  v44 = atomic_load_explicit(v43, memory_order_acquire);
  if (v44)
  {
    *(&v64 + 1) = v44;
    v45 = (a5 + *v18);
    v46 = atomic_load_explicit(v45, memory_order_acquire);
    v47 = v60;
    if (v46)
    {
      goto LABEL_35;
    }

LABEL_41:
    MPSAutoTexture::AllocateTexture(v45, 0);
    v70 = atomic_load_explicit(v45, memory_order_acquire);
    if ((*(a1 + *MEMORY[0x277CD7378]) & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_42;
  }

  MPSAutoTexture::AllocateTexture(v43, 0);
  *(&v64 + 1) = atomic_load_explicit(v43, memory_order_acquire);
  v45 = (a5 + *v18);
  v46 = atomic_load_explicit(v45, memory_order_acquire);
  v47 = v60;
  if (!v46)
  {
    goto LABEL_41;
  }

LABEL_35:
  v70 = v46;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 8) == 0)
  {
LABEL_36:
    v48 = 0;
    goto LABEL_37;
  }

LABEL_42:
  v57 = *(a1 + *MEMORY[0x277CD7360]);
  if (!v57)
  {
    v58 = objc_opt_class();
    v57 = NSStringFromClass(v58);
  }

  objc_msgSend_pushDebugGroup_(v47, a2, v57, a4, a5, a6, a7, a8, v59);
  v48 = v47;
LABEL_37:
  result = (*(a1 + 288))(*(a1 + 304), v47, a2, v62);
  if (v48)
  {
    return objc_msgSend_popDebugGroup(v48, v50, v51, v52, v53, v54, v55, v56);
  }

  return result;
}

void sub_239BCE06C(_Unwind_Exception *exception_object, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (v8)
  {
    objc_msgSend_popDebugGroup(v8, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239BCE08C(MPSDevice *a1, const char *a2, uint64_t a3, const char *a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int64x2_t *a12, uint64_t *a13)
{
  v13 = a8;
  v19 = *a13;
  v18 = a13[1];
  v20 = a13[2];
  v100 = *(a13 + 3);
  v21 = a13[4];
  v101 = a13[5];
  v22 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_(MEMORY[0x277CD7220], a2, 3, v100, v21, 1, a7, a8);
  v30 = v22;
  if (a6)
  {
    objc_msgSend_setFeatureChannels_(v22, v23, *&v13[*MEMORY[0x277CD72F8]], v25, v26, v27, v28, v29);
  }

  else
  {
    if (*a7)
    {
      v31 = objc_msgSend_outputFeatureChannels(*a7, v23, v24, v25, v26, v27, v28, v29);
      objc_msgSend_setFeatureChannels_(v30, v32, v31, v33, v34, v35, v36, v37);
      v43 = sub_239BCDB24(a2, v30, a1, v38, v39, v40, v41, v42);
      v44 = *a7;
      v98 = *a12;
      v99 = a12[1].i64[0];
      v94 = 0uLL;
      v95 = 0;
      v96 = v100;
      v97 = v101;
      sub_239BCDCC0(v44, a4, a5, v13, v43, a11, &v98, &v94, 0);
      v19 = 0;
      v18 = 0;
      v20 = 0;
      v88 = 1;
      v13 = v43;
      goto LABEL_7;
    }

    v13 = 0;
  }

  v88 = 0;
LABEL_7:
  v45 = *(a7 + 8);
  if (a10)
  {
    v46 = v45 == 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = !v46;
  v89 = v47;
  v91 = a1;
  if (!v46)
  {
    v48 = objc_msgSend_outputFeatureChannels(v45, v23, v24, v25, v26, v27, v28, v29);
    objc_msgSend_setFeatureChannels_(v30, v49, v48, v50, v51, v52, v53, v54);
    v60 = sub_239BCDB24(a2, v30, a1, v55, v56, v57, v58, v59);
    v98 = 0uLL;
    v99 = 0;
    v61 = *(a7 + 8);
    v94 = 0uLL;
    v95 = 0;
    v96 = v100;
    v97 = v101;
    sub_239BCDCC0(v61, a4, a5, a10, v60, a11, &v98, &v94, 0);
    v19 = 0;
    v18 = 0;
    v20 = 0;
    v62 = *(a7 + 16);
    if (a9)
    {
      v63 = v62 == 0;
    }

    else
    {
      v63 = 1;
    }

    v64 = !v63;
    v90 = v64;
    if (!v63)
    {
      goto LABEL_36;
    }

LABEL_22:
    v65 = 0;
    if (a9)
    {
      if (*(a7 + 24))
      {
        v66 = a9;
      }

      else
      {
        v66 = 0;
      }

      v67 = v89;
      if (v13)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v66 = 0;
      v67 = v89;
      if (v13)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_27;
  }

  v60 = 0;
  v62 = *(a7 + 16);
  if (a9)
  {
    v69 = v62 == 0;
  }

  else
  {
    v69 = 1;
  }

  v70 = !v69;
  v90 = v70;
  if (v69)
  {
    goto LABEL_22;
  }

LABEL_36:
  v71 = objc_msgSend_outputFeatureChannels(v62, v23, v24, v25, v26, v27, v28, v29);
  objc_msgSend_setFeatureChannels_(v30, v72, v71, v73, v74, v75, v76, v77);
  v65 = sub_239BCDB24(a2, v30, v91, v78, v79, v80, v81, v82);
  v98 = 0uLL;
  v99 = 0;
  v83 = *(a7 + 16);
  v94 = 0uLL;
  v95 = 0;
  v96 = v100;
  v97 = v101;
  sub_239BCDCC0(v83, a4, a5, a9, v65, a11, &v98, &v94, 0);
  v19 = 0;
  v18 = 0;
  v20 = 0;
  v66 = v65;
  v67 = v89;
  if (v13)
  {
LABEL_37:
    v84 = 0;
    v68 = v13;
    goto LABEL_46;
  }

LABEL_27:
  if (v60)
  {
    v67 = 0;
    v68 = v60;
  }

  else
  {
    v85 = v90;
    if (v66)
    {
      v85 = 0;
    }

    v90 = v85;
    if (v66)
    {
      v68 = v65;
    }

    else
    {
      v68 = 0;
    }
  }

  v84 = v88;
LABEL_46:
  v86 = *(a7 + 24);
  v98 = *a12;
  v99 = a12[1].i64[0];
  *&v94 = v19;
  *(&v94 + 1) = v18;
  v95 = v20;
  v96 = v100;
  v97 = v101;
  sub_239BC1CF8(v68, 0, a4, a5, v13, v60, v66, v86, &v98, &v94, 0, a7 + 40);
  if (v84)
  {

    if (!v67)
    {
      goto LABEL_48;
    }

LABEL_52:

    if (!v90)
    {
      return v68;
    }

    goto LABEL_49;
  }

  if (v67)
  {
    goto LABEL_52;
  }

LABEL_48:
  if (v90)
  {
LABEL_49:
  }

  return v68;
}

uint64_t sub_239BCE434(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, char *a5, char *a6, char *a7, uint64_t a8, int64x2_t *a9, uint64_t a10, int a11, uint64_t a12)
{
  v146 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v12 = result;
  }

  else
  {
    v12 = a2;
  }

  if (a7)
  {
    v13 = a7;
  }

  else
  {
    v13 = a8;
  }

  if (a6)
  {
    v13 = a6;
  }

  if (a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = v13;
  }

  if (v12 && v14)
  {
    if (result)
    {
      v18 = a2;
    }

    else
    {
      v18 = 0;
    }

    v19 = vmovn_s64(*a9);
    v128 = v19.i16[2];
    v127 = v19.i16[0];
    v20 = vmovn_s64(*(a10 + 24));
    v132 = v20.i16[2];
    v131 = v20.i16[0];
    v21 = vmovn_s64(*a10);
    v130 = v21.i16[2];
    v129 = v21.i16[0];
    v22 = *MEMORY[0x277CD72F8];
    v23 = *&v14[v22] + 3;
    v24 = v23 >> 2;
    v25 = *&v12[v22] + 3;
    v120 = v25 >> 2;
    if (v18)
    {
      v26 = ((*&v18[v22] + 3) >> 2);
      v119 = a8;
      v121 = a4;
      if (a12)
      {
LABEL_19:
        v27 = *(a12 + 4);
        v28 = *(a12 + 12);
        goto LABEL_22;
      }
    }

    else
    {
      v26 = 0;
      v119 = a8;
      v121 = a4;
      if (a12)
      {
        goto LABEL_19;
      }
    }

    v27 = 0;
    v28 = 0;
LABEL_22:
    v125 = v27;
    v126 = v28;
    v136 = (a9[1].i64[0] & ~(a9[1].i64[0] >> 63)) * v24;
    v29 = v120 * (*(a10 + 16) & ~(*(a10 + 16) >> 31));
    v137 = v29 + ((a11 + 3) >> 2);
    v138 = v29;
    v30 = 1.0 / v24;
    v124 = v30;
    v133 = (v23 >> 2);
    v134 = (v25 >> 2);
    v135 = v26;
    v140 = objc_msgSend_numberOfImages(v14, a2, a3, a4, a5, a6, a7, a8) * v24;
    v139 = objc_msgSend_numberOfImages(v12, v31, v32, v33, v34, v35, v36, v37) * v120;
    v38 = 256;
    MPSLibrary::CreateUberShaderKey();
    PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
    objc_msgSend_setComputePipelineState_(v121, v40, PipelineStateForMPSKey, v41, v42, v43, v44, v45, 0, 0, 0, 0, 0);
    v53 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v46, v47, v48, v49, v50, v51, v52);
    v61 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v54, v55, v56, v57, v58, v59, v60);
    v62 = v61;
    if (v61 < 0x100)
    {
      v38 = v61;
    }

    MPSLibrary::ReleaseMPSKey();
    objc_msgSend_texture(v12, v63, v64, v65, v66, v67, v68, v69);
    v70 = MPSIsTextureTwiddled();
    v71 = 4;
    if (v70)
    {
      v72 = 4;
    }

    else
    {
      v72 = 1;
    }

    if (v70)
    {
      v73 = v53 >> 2;
    }

    else
    {
      v73 = v53;
    }

    v74 = 2;
    if (v70)
    {
      v74 = 4;
    }

    if (v73 <= 1)
    {
      v73 = 1;
    }

    v75 = v73 << v74;
    if (v62 >= 2 && v75 > v38)
    {
      v71 = 4;
      do
      {
        v77 = v71 >> 1;
        if (v71 <= 1)
        {
          v77 = 1;
        }

        v78 = v73 >> 1;
        if (v73 < 2)
        {
          v78 = 1;
        }

        else
        {
          v77 = v71;
        }

        v79 = v72 >= 2;
        if (v72 >= 2)
        {
          v72 >>= 1;
        }

        else
        {
          v71 = v77;
          v72 = 1;
        }

        if (!v79)
        {
          v73 = v78;
        }
      }

      while (v72 * v71 * v73 > v38);
    }

    if (v73 <= 1)
    {
      v80 = 1;
    }

    else
    {
      v80 = v73;
    }

    if (v71 <= 1)
    {
      v81 = 1;
    }

    else
    {
      v81 = v71;
    }

    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(v121, v83, Sampler, 0, v84, v85, v86, v87);
    if (a5)
    {
      v142 = objc_msgSend_texture(a5, v88, v89, v90, v91, v92, v93, v94);
      if (a6)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v142 = 0;
      if (a6)
      {
LABEL_59:
        v143 = objc_msgSend_texture(a6, v88, v89, v90, v91, v92, v93, v94);
        if (a7)
        {
          goto LABEL_60;
        }

        goto LABEL_66;
      }
    }

    v143 = 0;
    if (a7)
    {
LABEL_60:
      v144 = objc_msgSend_texture(a7, v88, v89, v90, v91, v92, v93, v94);
      v95 = v119;
      if (!v119)
      {
LABEL_62:
        v145 = v95;
        v141[0] = objc_msgSend_texture(v12, v88, v89, v90, v91, v92, v93, v94);
        if (v18)
        {
          v103 = objc_msgSend_texture(v18, v96, v97, v98, v99, v100, v101, v102);
        }

        else
        {
          v103 = 0;
        }

        v141[1] = v103;
        objc_msgSend_setTextures_withRange_(v121, v96, &v142, 0, 4, v100, v101, v102);
        objc_msgSend_setTextures_withRange_(v121, v104, v141, 4, 2, v105, v106, v107);
        objc_msgSend_setBytes_length_atIndex_(v121, v108, &v124, 52, 0, v109, v110, v111);
        v112 = (v72 + *(a10 + 32) - 1) / v72;
        v113 = v81 + *(a10 + 40) * v120 - 1;
        v123[0] = (v80 + *(a10 + 24) - 1) / v80;
        v123[1] = v112;
        v123[2] = v113 / v81;
        v122[0] = v80;
        v122[1] = v72;
        v122[2] = v81;
        return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v121, v114, v123, v122, v115, v116, v117, v118);
      }

LABEL_61:
      v95 = objc_msgSend_texture(v95, v88, v89, v90, v91, v92, v93, v94);
      goto LABEL_62;
    }

LABEL_66:
    v144 = 0;
    v95 = v119;
    if (!v119)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  return result;
}

uint64_t sub_239BCE954(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  v3 = MPSCreateFunctionConstantValues();
  v8 = v3;
  v9 = v2 & 0x3F;
  if ((v2 & 0x3F) - 1 >= 0xF)
  {
    v9 = 0;
  }

  v37 = v9;
  objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v37, 41, 2, v5, v6, v7);
  v36 = (v2 & 0x40) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v8, v10, &v36, 53, 3, v11, v12, v13);
  v35 = (v2 & 0x80) != 0;
  v34 = BYTE1(v2) & 1;
  v33 = (v2 & 0x200) != 0;
  v32 = (v2 & 0x400) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v8, v14, &v35, 53, 4, v15, v16, v17);
  objc_msgSend_setConstantValue_type_atIndex_(v8, v18, &v34, 53, 5, v19, v20, v21);
  objc_msgSend_setConstantValue_type_atIndex_(v8, v22, &v33, 53, 6, v23, v24, v25);
  objc_msgSend_setConstantValue_type_atIndex_(v8, v26, &v32, 53, 7, v27, v28, v29);
  v30 = _MPSNewSpecializedFunction();

  return v30;
}

void sub_239BCEA78(uint64_t a1, const char *a2, void **a3, uint64_t a4, uint64_t a5, void *a6, void **a7, void **a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v1520 = *MEMORY[0x277D85DE8];
  if (a9 < a10)
  {
    v13 = a3;
    v16 = *(a11 + 8 * a9);
    v17 = *(a12 + 4 * a9);
    v1437 = a2;
    v1410 = v16;
    if (v17 != 2)
    {
      if (v17 != 1)
      {
        if (v17)
        {
          return;
        }

        v18 = v16[7];
        v1396 = *(a1 + 16);
        v1400 = (4 * v18 + 12) & 0x3FFFFFFF0;
        v26 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], a2, 1, v18, v1400, 268435488, a7, a8);
        v27 = 0;
        v28 = 0;
        do
        {
          v27 += objc_msgSend_rows(v13[v28++], v19, v20, v21, v22, v23, v24, v25);
        }

        while (a2 != v28);
        TempBuffer = MPSAutoCache::GetTempBuffer(*(a1 + 72), v27 * v1400, 0);
        objc_msgSend_setRows_(v26, v30, v27, v31, v32, v33, v34, v35);
        v36 = objc_alloc(MEMORY[0x277CD7250]);
        *v1484 = objc_msgSend_initWithBuffer_descriptor_(v36, v37, TempBuffer, v26, v38, v39, v40, v41);
        v49 = v1410[12];
        v50 = v1410[13];
        v51 = *(a1 + 88);
        if (v51)
        {
          v52 = v1410[11];
          if (*v52)
          {
            v49 = objc_msgSend_objectAtIndexedSubscript_(v51, v42, 0, v44, v45, v46, v47, v48);
            v52 = v1410[11];
            v43 = 1;
            if (v52[8])
            {
              goto LABEL_10;
            }
          }

          else
          {
            v43 = 0;
            if (v52[8])
            {
LABEL_10:
              v53 = v43 + 1;
              v54 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v42, v43, v44, v45, v46, v47, v48);
              v43 = v53;
              if (!*(v1410[11] + 16))
              {
                goto LABEL_295;
              }

              goto LABEL_294;
            }
          }

          v54 = 0;
          if (v52[4])
          {
LABEL_294:
            v50 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v42, v43, v44, v45, v46, v47, v48);
          }
        }

        else
        {
          v54 = 0;
        }

LABEL_295:
        if (v49 && (v1410[9] & 1) == 0)
        {
          v1372 = v1484;
          sub_239BD2E40(a1, v49, v54, v13, v1484, a2, *(v1410 + 144), 0, 0, 0, 1uLL, 0, 0, *(a1 + 112));
          v1389 = 0;
        }

        else
        {
          v1389 = 1;
          v1372 = v13;
        }

        WORD2(v1452) = *(v1410 + 28);
        v1449 = *(v1410 + 116);
        v1450 = *(v1410 + 31);
        if (v50)
        {
          v1425 = objc_msgSend_data(v50, v42, v43, v44, v45, v46, v47, v48);
          v545 = objc_msgSend_rowBytes(v50, v538, v539, v540, v541, v542, v543, v544);
          if (objc_msgSend_dataType(v50, v546, v547, v548, v549, v550, v551, v552) == 268435472)
          {
LABEL_301:
            v560 = 1;
LABEL_304:
            DWORD2(v1448) = v545 >> v560;
            v561 = objc_msgSend_columns(v50, v553, v554, v555, v556, v557, v558, v559);
            v1392 = v50;
            v569 = 0;
            v570 = 0;
            *&v1448 = __PAIR64__(objc_msgSend_rows(v50, v562, v563, v564, v565, v566, v567, v568), v561);
            do
            {
              v578 = objc_msgSend_rows(v13[v570], v571, v572, v573, v574, v575, v576, v577);
              if (v578 > v569)
              {
                v569 = v578;
              }

              ++v570;
            }

            while (a2 != v570);
            if (a7)
            {
              v579 = 0;
              if (a2 == 1)
              {
                v581 = 0;
                v582 = *(a1 + 96);
                v583 = a1;
                if (!v582)
                {
                  goto LABEL_564;
                }

                goto LABEL_317;
              }

              v580 = a1;
              v581 = 0;
              if (*(a1 + 80))
              {
LABEL_316:
                v582 = *(v580 + 96);
                v583 = v580;
                if (!v582)
                {
                  goto LABEL_564;
                }

LABEL_317:
                if (objc_msgSend_count(v582, v571, v572, v573, v574, v575, v576, v577) > a2)
                {
                  v604 = objc_msgSend_count(*(v583 + 96), v571, v572, v573, v574, v575, v576, v577) - a2;
                  v605 = MEMORY[0x277CD73B8];
                  v606 = a5;
                  if (!a5)
                  {
LABEL_319:
                    v607 = 0;
LABEL_566:
                    v1003 = 0;
                    v1434 = 0;
                    v1370 = v581;
                    v1004 = v581;
                    v1366 = v579;
                    v1005 = v579;
                    while (1)
                    {
                      v1417 = v1005;
                      v1421 = v604;
                      v1038 = *(*v583 + 32);
                      *v1492 = xmmword_239D7D5B8;
                      *&v1492[16] = 1;
                      v1046 = objc_msgSend_rows(v13[v1003 / 8], v571, v572, v573, v574, v575, v576, v577);
                      v1445 = v1046;
                      if (a4)
                      {
                        v1445 = objc_msgSend_rows(*(a4 + v1003), v1039, v1040, v1041, v1042, v1043, v1044, v1045);
                      }

                      if (v1046 >= v607)
                      {
                        v1047 = v607;
                      }

                      else
                      {
                        v1047 = v1046;
                      }

                      v1048 = objc_msgSend_dataType(v1392, v1039, v1040, v1041, v1042, v1043, v1044, v1045);
                      v1056 = objc_msgSend_columns(v1392, v1049, v1050, v1051, v1052, v1053, v1054, v1055);
                      if (v1047 <= 1)
                      {
                        v1057 = 1;
                      }

                      else
                      {
                        v1057 = v1047;
                      }

                      v1413 = (*(*v1038 + 72))(v1038, v1048, v1056, v1057, v1492);
                      if (objc_msgSend_dataType(v1392, v1058, v1059, v1060, v1061, v1062, v1063, v1064) == 536870920)
                      {
                        if (!a7)
                        {
LABEL_587:
                          v1005 = v1004;
                          goto LABEL_590;
                        }
                      }

                      else if (!a7)
                      {
                        goto LABEL_587;
                      }

                      if (*(v583 + 80) == 1)
                      {
                        v1072 = &a7[v1003 / 8];
LABEL_589:
                        v1005 = *v1072;
                        goto LABEL_590;
                      }

                      v1072 = a7;
                      v1005 = v1004;
                      if (v1437 == 1)
                      {
                        goto LABEL_589;
                      }

LABEL_590:
                      if (!a4 || (v1073 = *(a4 + v1003)) == 0)
                      {
                        if (!v1005)
                        {
                          goto LABEL_596;
                        }

LABEL_595:
                        objc_msgSend_columns(v1005, v1065, v1066, v1067, v1068, v1069, v1070, v1071);
                        goto LABEL_596;
                      }

                      objc_msgSend_columns(v1073, v1065, v1066, v1067, v1068, v1069, v1070, v1071);
                      if (v1005)
                      {
                        goto LABEL_595;
                      }

LABEL_596:
                      v583 = a1;
                      MPSLibrary::CreateUberShaderKey();
                      PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
                      v1082 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v1075, v1076, v1077, v1078, v1079, v1080, v1081, 0, 0, 0, 0, 0);
                      if (v1082 <= 1)
                      {
                        v1090 = 1;
                      }

                      else
                      {
                        v1090 = v1082;
                      }

                      v1091 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v1083, v1084, v1085, v1086, v1087, v1088, v1089);
                      if (v1091 <= 1)
                      {
                        v1098 = 1;
                      }

                      else
                      {
                        v1098 = v1091;
                      }

                      if (v1098 >= 0x100)
                      {
                        v1098 = 256;
                      }

                      v1099 = *v1492;
                      if (*v1492 > v1090)
                      {
                        *v1492 = v1090;
                        v1099 = v1090;
                      }

                      if (*&v1492[8] * v1099 * *&v1492[16] > v1098)
                      {
                        *v1492 = v1090;
                        *&v1492[8] = vdupq_n_s64(1uLL);
                      }

                      objc_msgSend_setComputePipelineState_(*(a1 + 16), v1092, PipelineStateForMPSKey, v1093, v1094, v1095, v1096, v1097);
                      MPSLibrary::ReleaseMPSKey();
                      HIWORD(v1452) = 0;
                      v1451 = v1046;
                      LODWORD(v1452) = objc_msgSend_rowBytes(*v1484, v1100, v1101, v1102, v1103, v1104, v1105, v1106) >> 2;
                      HIDWORD(v1453) = v1445;
                      if (a4)
                      {
                        HIDWORD(v1454) = objc_msgSend_rowBytes(*(a4 + v1003), v1107, v1108, v1109, v1110, v1111, v1112, v1113) >> 2;
                        v1114 = *(a4 + v1003);
                        v1115 = *(a1 + 120);
                        if (v1115)
                        {
                          v1116 = *(v1115 + v1003) + 4 * a13;
                          v1117 = v606;
                          if (!v606)
                          {
                            goto LABEL_612;
                          }

LABEL_611:
                          v1117 = objc_msgSend_data(v1117, v1107, v1108, v1109, v1110, v1111, v1112, v1113);
                          goto LABEL_612;
                        }

                        v1116 = 4 * a13;
                        v1117 = v606;
                        if (v606)
                        {
                          goto LABEL_611;
                        }
                      }

                      else
                      {
                        v1114 = 0;
                        HIDWORD(v1454) = 0;
                        v1116 = 4 * a13;
                        v1117 = v606;
                        if (v606)
                        {
                          goto LABEL_611;
                        }
                      }

LABEL_612:
                      v1503 = v1117;
                      if (v1114)
                      {
                        v1504 = objc_msgSend_data(v1114, v1107, v1108, v1109, v1110, v1111, v1112, v1113);
                        if (v1005)
                        {
                          goto LABEL_614;
                        }
                      }

                      else
                      {
                        v1504 = 0;
                        if (v1005)
                        {
LABEL_614:
                          v1505 = objc_msgSend_data(v1005, v1107, v1108, v1109, v1110, v1111, v1112, v1113);
                          v1118 = *v1484;
                          if (!*v1484)
                          {
                            goto LABEL_616;
                          }

LABEL_615:
                          v1118 = objc_msgSend_data(v1118, v1107, v1108, v1109, v1110, v1111, v1112, v1113);
                          goto LABEL_616;
                        }
                      }

                      v1505 = 0;
                      v1118 = *v1484;
                      if (*v1484)
                      {
                        goto LABEL_615;
                      }

LABEL_616:
                      v1506 = v1118;
                      LODWORD(v1453) = v1047;
                      if (v606)
                      {
                        v1119 = objc_msgSend_rowBytes(v606, v1107, v1108, v1109, v1110, v1111, v1112, v1113) >> 2;
                        DWORD1(v1454) = v1119;
                        if (a4)
                        {
                          goto LABEL_619;
                        }

LABEL_618:
                        HIDWORD(v1454) = v1119;
                        goto LABEL_619;
                      }

                      LODWORD(v1119) = 0;
                      DWORD1(v1454) = 0;
                      if (!a4)
                      {
                        goto LABEL_618;
                      }

LABEL_619:
                      LODWORD(v1454) = objc_msgSend_rows(v1005, v1107, v1108, v1109, v1110, v1111, v1112, v1113);
                      DWORD2(v1454) = objc_msgSend_rowBytes(v1005, v1120, v1121, v1122, v1123, v1124, v1125, v1126) >> 2;
                      *&v1496 = 0;
                      *(&v1496 + 1) = v1116;
                      *&v1497 = 0;
                      *(&v1497 + 1) = v1434 * v1400;
                      if (v1389)
                      {
                        if (v1372)
                        {
                          v1134 = v1372[v1003 / 8];
                          if (v1134)
                          {
                            v1134 = objc_msgSend_data(v1134, v1127, v1128, v1129, v1130, v1131, v1132, v1133);
                          }
                        }

                        else
                        {
                          v1134 = 0;
                        }

                        v1506 = v1134;
                        *(&v1497 + 1) = 0;
                      }

                      v1135 = *&v1492[8] * SHIDWORD(v1413);
                      if (v1135)
                      {
                        v1136 = (v1135 + DWORD1(v1448) - 1) / v1135;
                        v1137 = *&v1492[16] * SLODWORD(v1413);
                        if (v1137)
                        {
                          goto LABEL_636;
                        }
                      }

                      else
                      {
                        v1136 = 0;
                        v1137 = *&v1492[16] * SLODWORD(v1413);
                        if (v1137)
                        {
LABEL_636:
                          v1138 = (v1046 + v1137 - 1) / v1137;
                          v1139 = objc_msgSend_data(*v1484, v1127, v1128, v1129, v1130, v1131, v1132, v1133);
                          if (v1425)
                          {
                            goto LABEL_637;
                          }

                          goto LABEL_645;
                        }
                      }

                      v1138 = 0;
                      v1139 = objc_msgSend_data(*v1484, v1127, v1128, v1129, v1130, v1131, v1132, v1133);
                      if (v1425)
                      {
LABEL_637:
                        if (v1503)
                        {
                          goto LABEL_638;
                        }

                        goto LABEL_646;
                      }

LABEL_645:
                      HIWORD(v1452) = 1;
                      v1425 = v1139;
                      if (v1503)
                      {
LABEL_638:
                        if (v1504)
                        {
                          goto LABEL_639;
                        }

                        goto LABEL_647;
                      }

LABEL_646:
                      v1503 = v1139;
                      HIWORD(v1452) = 1;
                      if (v1504)
                      {
LABEL_639:
                        if (v1505)
                        {
                          goto LABEL_640;
                        }

                        goto LABEL_648;
                      }

LABEL_647:
                      v1504 = v1139;
                      if (v1505)
                      {
LABEL_640:
                        if (v1506)
                        {
                          goto LABEL_641;
                        }

                        goto LABEL_649;
                      }

LABEL_648:
                      v1505 = v1139;
                      *&v1497 = v1116;
                      if (v1506)
                      {
LABEL_641:
                        v1147 = *(a1 + 96);
                        if (v1147)
                        {
                          goto LABEL_650;
                        }

                        goto LABEL_567;
                      }

LABEL_649:
                      v1506 = v1139;
                      v1147 = *(a1 + 96);
                      if (v1147)
                      {
LABEL_650:
                        v1007 = v1421;
                        v1006 = *(objc_msgSend_objectAtIndexedSubscript_(v1147, v1140, v1421, v1142, v1143, v1144, v1145, v1146) + 48);
                        LODWORD(v1147) = objc_msgSend_rowBytes(v1006, v1148, v1149, v1150, v1151, v1152, v1153, v1154);
                        goto LABEL_568;
                      }

LABEL_567:
                      v1006 = *v1484;
                      v1007 = v1421;
LABEL_568:
                      v1455 = v1147;
                      v1008 = *(a1 + 16);
                      v1009 = objc_msgSend_data(v1006, v1140, v1141, v1142, v1143, v1144, v1145, v1146);
                      objc_msgSend_setBuffer_offset_atIndex_(v1008, v1010, v1009, 0, 6, v1011, v1012, v1013);
                      objc_msgSend_setBytes_length_atIndex_(v1396, v1014, &v1448, 72, 0, v1015, v1016, v1017);
                      objc_msgSend_setBuffers_offsets_withRange_(v1396, v1018, &v1503, &v1496, 2, 4, v1019, v1020);
                      objc_msgSend_setBuffer_offset_atIndex_(v1396, v1021, v1425, 0, 1, v1022, v1023, v1024);
                      if (*&v1492[8] <= *&v1492[16])
                      {
                        v1030 = *&v1492[16];
                      }

                      else
                      {
                        v1030 = *&v1492[8];
                      }

                      v1031 = 4 * *v1492 * v1030;
                      v1032 = *&v1492[8] * *v1492 * *&v1492[16];
                      if (v1031 > v1032)
                      {
                        v1032 = v1031;
                      }

                      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v1396, v1025, 4 * v1032, 0, v1026, v1027, v1028, v1029);
                      *&v1489[0] = 1;
                      *(&v1489[0] + 1) = v1136;
                      *&v1489[1] = v1138;
                      *v1485 = *v1492;
                      *&v1485[16] = *&v1492[16];
                      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v1396, v1033, v1489, v1485, v1034, v1035, v1036, v1037);
                      v1434 += v1046;
                      MPSLibrary::ReleaseComputeState();
                      v604 = v1007 + 1;
                      v1003 += 8;
                      v606 = v1005;
                      v1004 = v1417;
                      v607 = v1445;
                      v671 = v1437-- == 1;
                      v13 = a3;
                      if (v671)
                      {

                        return;
                      }
                    }
                  }

LABEL_565:
                  v607 = *&v606[*v605];
                  goto LABEL_566;
                }

LABEL_564:
                v604 = 0;
                v605 = MEMORY[0x277CD73B8];
                v606 = a5;
                if (!a5)
                {
                  goto LABEL_319;
                }

                goto LABEL_565;
              }
            }

            else
            {
              v580 = a1;
              if (a2 == 1)
              {
                v579 = 0;
                v581 = 0;
                v582 = *(a1 + 96);
                v583 = a1;
                if (!v582)
                {
                  goto LABEL_564;
                }

                goto LABEL_317;
              }
            }

            v584 = MPSAutoCache::GetTempBuffer(*(v580 + 72), v569 * v1400, 0);
            objc_msgSend_setRows_(v26, v585, v569, v586, v587, v588, v589, v590);
            v591 = objc_alloc(MEMORY[0x277CD7250]);
            v581 = objc_msgSend_initWithBuffer_descriptor_(v591, v592, v584, v26, v593, v594, v595, v596);
            v597 = MPSAutoCache::GetTempBuffer(*(v580 + 72), v569 * v1400, 0);
            v598 = objc_alloc(MEMORY[0x277CD7250]);
            v579 = objc_msgSend_initWithBuffer_descriptor_(v598, v599, v597, v26, v600, v601, v602, v603);
            goto LABEL_316;
          }
        }

        else
        {
          v1425 = 0;
          v545 = 0;
          if (objc_msgSend_dataType(0, v42, v43, v44, v45, v46, v47, v48) == 268435472)
          {
            goto LABEL_301;
          }
        }

        v560 = 2 * (objc_msgSend_dataType(v50, v553, v554, v555, v556, v557, v558, v559) != 536870920);
        goto LABEL_304;
      }

      v1431 = *(a1 + 16);
      v55 = v16[12];
      v1397 = v16[13];
      v56 = v16[14];
      v1405 = v16[15];
      v57 = v16[17];
      v1422 = v16[18];
      v1415 = v16[16];
      v58 = *(a1 + 88);
      if (!v58)
      {
        v1378 = 0;
        v1373 = 0;
        v60 = 0;
        goto LABEL_69;
      }

      v59 = v16[11];
      if (*(v59 + 304))
      {
        v55 = objc_msgSend_objectAtIndexedSubscript_(v58, a2, *(v59 + 312), a4, a5, a6, a7, a8);
        v59 = v16[11];
      }

      if (*(v59 + 320))
      {
        v1397 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), a2, *(v59 + 328), a4, a5, a6, a7, a8);
        v59 = v16[11];
      }

      if (*(v59 + 336))
      {
        v60 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), a2, *(v59 + 344), a4, a5, a6, a7, a8);
        v59 = v16[11];
        if (!*(v59 + 352))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v60 = 0;
        if (!*(v59 + 352))
        {
LABEL_20:
          if (*(v59 + 368))
          {
            v1405 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), a2, *(v59 + 376), a4, a5, a6, a7, a8);
            v59 = v16[11];
          }

          if (*(v59 + 384))
          {
            v1373 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), a2, *(v59 + 392), a4, a5, a6, a7, a8);
            v59 = v16[11];
            if (!*(v59 + 400))
            {
LABEL_25:
              if (*(v59 + 416))
              {
                v1422 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), a2, *(v59 + 424), a4, a5, a6, a7, a8);
                v59 = v16[11];
              }

              if (*(v59 + 432))
              {
                v57 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), a2, *(v59 + 440), a4, a5, a6, a7, a8);
                v59 = v16[11];
              }

              if (*(v59 + 448))
              {
                v1378 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), a2, *(v59 + 456), a4, a5, a6, a7, a8);
              }

              else
              {
                v1378 = 0;
              }

LABEL_69:
              v75 = v16[7];
              v76 = v75 + 3;
              v1402 = (v75 + 3) & 0xFFFFFFFCLL;
              v1385 = 268435472;
              v1419 = v75;
              v1387 = 4 * v1402;
              v84 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], a2, 1, v75, 4 * v1402, 268435488, a7, a8);
              v85 = 0;
              v86 = 0;
              do
              {
                v85 += objc_msgSend_rows(v13[v86++], v77, v78, v79, v80, v81, v82, v83);
              }

              while (a2 != v86);
              v87 = MPSAutoCache::GetTempBuffer(*(a1 + 72), 12 * v1402 * v85, 0);
              objc_msgSend_setRows_(v84, v88, 3 * v85, v89, v90, v91, v92, v93);
              v94 = objc_alloc(MEMORY[0x277CD7250]);
              v1362 = v84;
              v107 = objc_msgSend_initWithBuffer_descriptor_(v94, v95, v87, v84, v96, v97, v98, v99);
              v1486 = v107;
              if (!v55 || (v1410[9] & 1) != 0)
              {
                if (v55 || (v1410[9] & 1) != 0)
                {
                  v108 = a3;
                  v109 = v1437;
                  do
                  {
                    v110 = objc_msgSend_data(v107, v100, v101, v102, v103, v104, v105, v106);
                    v111 = *v108++;
                    v119 = objc_msgSend_data(v111, v112, v113, v114, v115, v116, v117, v118);
                    sub_239BCA7FC(v110, v119, v1387, v1431, *a1, 0, 0);
                    --v109;
                  }

                  while (v109);
                }
              }

              else
              {
                sub_239BD2E40(a1, v55, v60, v13, &v1486, v1437, *(v1410 + 248), 0, 0, 0, 1uLL, 0, 0, *(a1 + 112));
              }

              if (v56 && (v1410[9] & 1) == 0 && v1422)
              {
                sub_239BD2E40(a1, v56, v1373, a3, &v1486, v1437, *(v1410 + 249), 0, 0, 0, 1uLL, 0, v85, *(a1 + 112));
              }

              else if (v1410[9])
              {
                v120 = v1486;
                v121 = a4;
                v122 = v1437;
                v123 = 16 * v1437 * (v76 >> 2);
                do
                {
                  v124 = *v121++;
                  v125 = objc_msgSend_data(v124, v100, v101, v102, v103, v104, v105, v106);
                  v133 = objc_msgSend_data(v120, v126, v127, v128, v129, v130, v131, v132);
                  sub_239BCA7FC(v125, v133, v1387, v1431, *a1, v123, 0);
                  v123 += v1387;
                  --v122;
                }

                while (v122);
              }

              v134 = v1415;
              if (!v1415 || (v1410[9] & 1) != 0)
              {
                v136 = v1437;
                v135 = v57;
                if (v1415 || (v1410[9] & 1) != 0)
                {
                  v137 = v1486;
                  v138 = 32 * v1437 * (v76 >> 2);
                  v139 = a4;
                  do
                  {
                    v140 = *v139++;
                    v141 = objc_msgSend_data(v140, v134, v101, v102, v103, v104, v105, v106);
                    v149 = objc_msgSend_data(v137, v142, v143, v144, v145, v146, v147, v148);
                    sub_239BCA7FC(v141, v149, v1387, v1431, *a1, v138, 0);
                    v138 += v1387;
                    --v136;
                  }

                  while (v136);
                }
              }

              else
              {
                sub_239BD2E40(a1, v1415, v1378, a3, &v1486, v1437, *(v1410 + 250), 0, 0, 0, 1uLL, 0, 2 * v85, *(a1 + 112));
                v135 = v57;
              }

              v1457 = v1419;
              v1511 = v1419;
              v150 = v1397;
              if (v1397)
              {
                v1368 = objc_msgSend_data(v1397, v134, v101, v102, v103, v104, v105, v106);
                objc_msgSend_rowBytes(v1397, v151, v152, v153, v154, v155, v156, v157);
                v158 = v1422;
                v159 = v1405;
                if (v1405)
                {
                  goto LABEL_94;
                }
              }

              else
              {
                v1368 = 0;
                v158 = v1422;
                v159 = v1405;
                if (v1405)
                {
LABEL_94:
                  v1365 = objc_msgSend_data(v159, v134, v101, v102, v103, v104, v105, v106);
                  objc_msgSend_rowBytes(v159, v160, v161, v162, v163, v164, v165, v166);
                  if (v158)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_99;
                }
              }

              v1365 = 0;
              if (v158)
              {
LABEL_95:
                v167 = objc_msgSend_data(v158, v134, v101, v102, v103, v104, v105, v106);
                objc_msgSend_rowBytes(v158, v168, v169, v170, v171, v172, v173, v174);
                if (v135)
                {
LABEL_96:
                  v175 = objc_msgSend_data(v135, v134, v101, v102, v103, v104, v105, v106);
                  objc_msgSend_rowBytes(v135, v176, v177, v178, v179, v180, v181, v182);
LABEL_101:
                  v1391 = objc_msgSend_data(v1486, v134, v101, v102, v103, v104, v105, v106);
                  v190 = 0;
                  v191 = 1;
                  do
                  {
                    v192 = objc_msgSend_rows(a3[v190], v183, v184, v185, v186, v187, v188, v189);
                    if (v192 > v191)
                    {
                      v191 = v192;
                    }

                    ++v190;
                  }

                  while (v1437 != v190);
                  v193 = *(v1410 + 44);
                  v194 = *(v1410 + 180);
                  v195 = *(v1410 + 47);
                  if (v1397)
                  {
                    v196 = objc_msgSend_dataType(v1397, v183, v184, v185, v186, v187, v188, v189);
                    if (((v196 >> 3) & 0x1FFC) != 0)
                    {
                      v204 = 2;
                    }

                    else
                    {
                      v204 = v196 >> 3 == 2;
                    }

                    v205 = objc_msgSend_rowBytes(v1397, v197, v198, v199, v200, v201, v202, v203) >> v204;
                    v213 = objc_msgSend_columns(v1397, v206, v207, v208, v209, v210, v211, v212);
                    v221 = __PAIR64__(objc_msgSend_rows(v1397, v214, v215, v216, v217, v218, v219, v220), v213);
                    v222 = 288;
                  }

                  else
                  {
                    LODWORD(v205) = 0;
                    v221 = 0;
                    v222 = 256;
                  }

                  v1375 = v222 | v193;
                  LODWORD(v1452) = v222 | v193;
                  *&v1448 = v221;
                  *(&v1448 + 1) = v205;
                  v1453 = v194;
                  LODWORD(v1454) = v195;
                  v223 = *(v1410 + 50);
                  v224 = *(v1410 + 204);
                  v225 = *(v1410 + 53);
                  if (v1422 && v1405)
                  {
                    v226 = objc_msgSend_dataType(v1405, v183, v184, v185, v186, v187, v188, v189);
                    if (((v226 >> 3) & 0x1FFC) != 0)
                    {
                      v234 = 2;
                    }

                    else
                    {
                      v234 = v226 >> 3 == 2;
                    }

                    v235 = objc_msgSend_rowBytes(v1405, v227, v228, v229, v230, v231, v232, v233) >> v234;
                    v1380 = objc_msgSend_columns(v1405, v236, v237, v238, v239, v240, v241, v242);
                    v150 = v1397;
                    v250 = objc_msgSend_rows(v1405, v243, v244, v245, v246, v247, v248, v249);
                    LODWORD(v251) = v1380;
                    v252 = 288;
                  }

                  else
                  {
                    LODWORD(v235) = 0;
                    v250 = 0;
                    LODWORD(v251) = 0;
                    v252 = 256;
                  }

                  HIDWORD(v251) = v250;
                  v1371 = v252 | v223;
                  HIDWORD(v1452) = v252 | v223;
                  v1449 = v251;
                  v1450 = v235;
                  v1451 = 0;
                  *(&v1454 + 4) = v224;
                  HIDWORD(v1454) = v225;
                  v253 = *(v1410 + 56);
                  v254 = *(v1410 + 228);
                  v255 = *(v1410 + 59);
                  HIDWORD(v1504) = 0;
                  HIDWORD(v1506) = 0;
                  if (v1422)
                  {
                    v256 = objc_msgSend_dataType(v1422, v183, v184, v185, v186, v187, v188, v189) >> 3;
                    if (v135)
                    {
                      goto LABEL_120;
                    }
                  }

                  else
                  {
                    v256 = 4;
                    if (v135)
                    {
LABEL_120:
                      v257 = objc_msgSend_dataType(v135, v183, v184, v185, v186, v187, v188, v189);
                      if (v256 == 2)
                      {
                        v258 = 3;
                      }

                      else
                      {
                        v258 = 2;
                      }

                      if (v256 >= 4)
                      {
                        v258 = 4;
                      }

                      if (((v257 >> 3) & 0x1FFC) != 0)
                      {
                        v259 = 2;
                      }

                      else
                      {
                        v259 = v257 >> 3 == 2;
                      }

                      if (v1422)
                      {
                        goto LABEL_129;
                      }

                      goto LABEL_140;
                    }
                  }

                  v259 = 2;
                  if (v256 == 2)
                  {
                    v258 = 3;
                  }

                  else
                  {
                    v258 = 2;
                  }

                  if (v256 >= 4)
                  {
                    v258 = 4;
                  }

                  if (v1422)
                  {
LABEL_129:
                    LODWORD(v1504) = objc_msgSend_rowBytes(v1422, v183, v184, v185, v186, v187, v188, v189) >> (v258 - 2);
                    v267 = v1410;
                    LODWORD(v1503) = objc_msgSend_columns(v1422, v260, v261, v262, v263, v264, v265, v266);
                    if (v135)
                    {
                      goto LABEL_130;
                    }

                    goto LABEL_141;
                  }

LABEL_140:
                  LODWORD(v1504) = 0;
                  v267 = v1410;
                  LODWORD(v1503) = 0;
                  if (v135)
                  {
LABEL_130:
                    LODWORD(v1506) = objc_msgSend_rowBytes(v135, v183, v184, v185, v186, v187, v188, v189) >> v259;
                    LODWORD(v1505) = objc_msgSend_columns(v135, v268, v269, v270, v271, v272, v273, v274);
                    if (v1422)
                    {
                      goto LABEL_131;
                    }

                    goto LABEL_142;
                  }

LABEL_141:
                  LODWORD(v1506) = 0;
                  LODWORD(v1505) = 0;
                  if (v1422)
                  {
LABEL_131:
                    HIDWORD(v1503) = objc_msgSend_rows(v1422, v183, v184, v185, v186, v187, v188, v189);
                    if (v135)
                    {
LABEL_132:
                      v275 = objc_msgSend_rows(v135, v183, v184, v185, v186, v187, v188, v189);
                      goto LABEL_144;
                    }

LABEL_143:
                    v275 = 0;
LABEL_144:
                    HIDWORD(v1505) = v275;
                    if (v135)
                    {
                      v276 = (32 * (v1422 != 0)) | 0x40;
                    }

                    else
                    {
                      v276 = 32 * (v1422 != 0);
                    }

                    v277 = v253 | v276;
                    v1507 = v254;
                    v278 = v253 | v276 | 0x100;
                    v1508 = __PAIR64__(v278, v255);
                    if (!v150 || (v1381 = 268435472, objc_msgSend_dataType(v150, v183, v184, v185, v186, v187, v188, v189) != 268435472))
                    {
                      if (!v1405 || (v1381 = 268435472, objc_msgSend_dataType(v1405, v183, v184, v185, v186, v187, v188, v189) != 268435472))
                      {
                        if ((!v150 || objc_msgSend_dataType(v150, v183, v184, v185, v186, v187, v188, v189) != 536870920) && (!v1405 || objc_msgSend_dataType(v1405, v183, v184, v185, v186, v187, v188, v189) != 536870920))
                        {
                          v1381 = 268435488;
                          v279 = v1422;
                          if (v1422)
                          {
LABEL_157:
                            if (objc_msgSend_dataType(v279, v183, v184, v185, v186, v187, v188, v189) == 268435472)
                            {
                              goto LABEL_328;
                            }
                          }

LABEL_321:
                          if (!v135 || objc_msgSend_dataType(v135, v183, v184, v185, v186, v187, v188, v189) != 268435472)
                          {
                            if (v1422 && objc_msgSend_dataType(v1422, v183, v184, v185, v186, v187, v188, v189) == 536870920 || (v1385 = 268435488, v135) && objc_msgSend_dataType(v135, v183, v184, v185, v186, v187, v188, v189) == 536870920)
                            {
                              v1385 = 536870920;
                            }
                          }

LABEL_328:
                          v608 = *(v267 + 256);
                          v1456 = v85 * v1402;
                          v1455 = v1402;
                          LODWORD(v1509) = v1402;
                          HIDWORD(v1509) = v85 * v1402;
                          v609 = v267[63];
                          if (v609 == 0.0)
                          {
                            v609 = 1.0;
                          }

                          *&v1510 = v609;
                          *(&v1510 + 1) = 1.0 / v609;
                          *&v1487 = v1368;
                          *(&v1487 + 1) = v1365;
                          v1502[0] = 0;
                          v1502[1] = 0;
                          v1500 = v167;
                          v1501 = v175;
                          if (v1368)
                          {
                            v610 = a4;
                            if (v167)
                            {
                              goto LABEL_332;
                            }
                          }

                          else
                          {
                            *&v1487 = v1391;
                            v610 = a4;
                            if (v167)
                            {
LABEL_332:
                              if (v1365)
                              {
                                goto LABEL_333;
                              }

                              goto LABEL_343;
                            }
                          }

                          v1500 = v1391;
                          if (v1365)
                          {
LABEL_333:
                            v611 = v277 | 0x300;
                            if (v175)
                            {
                              goto LABEL_334;
                            }

LABEL_344:
                            v1501 = v1391;
LABEL_334:
                            if (v608)
                            {
                              v612 = v611;
                            }

                            else
                            {
                              v612 = v278;
                            }

                            v1369 = v612;
                            v613 = a1;
                            if (a7)
                            {
                              v614 = 0;
                              v615 = v1437;
                              v616 = 4 * v1402;
                              if (v1437 < 2)
                              {
                                v617 = 0;
                                goto LABEL_459;
                              }

                              v617 = 0;
                              if (*(a1 + 80))
                              {
LABEL_459:
                                v1412 = *(*v613 + 4);
                                v796 = v613[12];
                                if (v796)
                                {
                                  v797 = v614;
                                  v798 = a3;
                                  if (objc_msgSend_count(v796, v183, v184, v185, v186, v187, v188, v189) > v615)
                                  {
                                    v1426 = objc_msgSend_count(v613[12], v183, v184, v185, v186, v187, v188, v189) - v615;
                                    v614 = v797;
                                    v799 = a5;
                                    if (!a5)
                                    {
                                      goto LABEL_466;
                                    }

LABEL_464:
                                    v800 = *&v799[*MEMORY[0x277CD73B8]];
LABEL_467:
                                    v801 = 0;
                                    v802 = 0;
                                    v1355 = v614;
                                    v1358 = v617;
                                    v803 = v614;
                                    while (1)
                                    {
                                      v1407 = v803;
                                      v1444 = v799;
                                      v823 = objc_msgSend_rows(v798[v801 / 8], v183, v184, v185, v186, v187, v188, v189);
                                      v831 = v823;
                                      if (v610)
                                      {
                                        v823 = objc_msgSend_rows(*(v610 + v801), v824, v825, v826, v827, v828, v829, v830);
                                      }

                                      if (v800 >= v831)
                                      {
                                        v832 = v831;
                                      }

                                      else
                                      {
                                        v832 = v800;
                                      }

                                      v1489[0] = xmmword_239D7D4E0;
                                      *&v1489[1] = 1;
                                      v1461 = v823;
                                      v1459 = v831;
                                      v1460 = v832;
                                      v1403 = v823;
                                      v1513 = v832;
                                      v1514 = v823;
                                      v1512 = v831;
                                      if (v832 <= 1)
                                      {
                                        v833 = 1;
                                      }

                                      else
                                      {
                                        v833 = v832;
                                      }

                                      v841 = (*(*v1412 + 88))(v1412, v1381, v1419, v833, v1489);
                                      v1398 = HIDWORD(v841);
                                      v842 = LODWORD(v841);
                                      v1438 = v615;
                                      v843 = *(v610 + v801);
                                      if (v843)
                                      {
                                        objc_msgSend_columns(v843, v834, v835, v836, v837, v838, v839, v840);
                                        if (!v617)
                                        {
                                          goto LABEL_484;
                                        }
                                      }

                                      else if (!v617)
                                      {
                                        goto LABEL_484;
                                      }

                                      objc_msgSend_columns(v617, v834, v835, v836, v837, v838, v839, v840);
LABEL_484:
                                      MPSLibrary::CreateUberShaderKey();
                                      v844 = MPSLibrary::GetPipelineStateForMPSKey();
                                      objc_msgSend_setComputePipelineState_(v1431, v845, v844, v846, v847, v848, v849, v850, 0, 0, 0, 0, 0);
                                      MPSLibrary::ReleaseMPSKey();
                                      v858 = objc_msgSend_threadExecutionWidth(v844, v851, v852, v853, v854, v855, v856, v857);
                                      if (v858 <= 1)
                                      {
                                        v866 = 1;
                                      }

                                      else
                                      {
                                        v866 = v858;
                                      }

                                      v867 = objc_msgSend_maxTotalThreadsPerThreadgroup(v844, v859, v860, v861, v862, v863, v864, v865);
                                      if (v867 <= 1)
                                      {
                                        v873 = 1;
                                      }

                                      else
                                      {
                                        v873 = v867;
                                      }

                                      if (v873 >= 0x100)
                                      {
                                        v874 = 256;
                                      }

                                      else
                                      {
                                        v874 = v873;
                                      }

                                      v875 = *(&v1489[0] + 1);
                                      v876 = *&v1489[1];
                                      if (*(&v1489[0] + 1) * *&v1489[0] * *&v1489[1] <= v874)
                                      {
                                        v877 = v1438;
                                        if (*&v1489[0] <= v866)
                                        {
                                          v866 = *&v1489[0];
                                        }

                                        else
                                        {
                                          *&v1489[0] = v866;
                                        }
                                      }

                                      else
                                      {
                                        *&v1489[0] = v866;
                                        *(v1489 + 8) = vdupq_n_s64(1uLL);
                                        v875 = 1;
                                        v876 = 1;
                                        v877 = v1438;
                                      }

                                      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v1431, v868, 4 * v875 * v876 * v866, 0, v869, v870, v871, v872);
                                      objc_msgSend_setBuffers_offsets_withRange_(v1431, v878, &v1487, v1502, 1, 2, v879, v880);
                                      v1452 = __PAIR64__(v1371, v1375);
                                      HIDWORD(v1508) = v1369;
                                      if (!a7)
                                      {
                                        v803 = v617;
                                        v888 = v1444;
                                        v889 = 4 * a13;
                                        goto LABEL_504;
                                      }

                                      v888 = v1444;
                                      v889 = 4 * a13;
                                      if (*(a1 + 80) == 1)
                                      {
                                        v890 = &a7[v801 / 8];
                                      }

                                      else
                                      {
                                        v890 = a7;
                                        v803 = v617;
                                        if (v877 != 1)
                                        {
                                          goto LABEL_504;
                                        }
                                      }

                                      v803 = *v890;
LABEL_504:
                                      v891 = *(v610 + v801);
                                      v892 = *(a1 + 120);
                                      v893 = v889;
                                      if (v892)
                                      {
                                        v893 = *(v892 + v801) + v889;
                                      }

                                      if (v888)
                                      {
                                        v1462 = objc_msgSend_rowBytes(v888, v881, v882, v883, v884, v885, v886, v887) >> 2;
                                        if (v803)
                                        {
                                          goto LABEL_508;
                                        }
                                      }

                                      else
                                      {
                                        v1462 = 0;
                                        if (v803)
                                        {
LABEL_508:
                                          LODWORD(v1463[0]) = objc_msgSend_rowBytes(v803, v881, v882, v883, v884, v885, v886, v887) >> 2;
                                          if (v891)
                                          {
                                            goto LABEL_509;
                                          }

                                          goto LABEL_521;
                                        }
                                      }

                                      LODWORD(v1463[0]) = 0;
                                      if (v891)
                                      {
LABEL_509:
                                        DWORD1(v1463[0]) = objc_msgSend_rowBytes(v891, v881, v882, v883, v884, v885, v886, v887) >> 2;
                                        v894 = v1444;
                                        if (v1444)
                                        {
                                          goto LABEL_510;
                                        }

                                        goto LABEL_522;
                                      }

LABEL_521:
                                      DWORD1(v1463[0]) = 0;
                                      v894 = v1444;
                                      if (v1444)
                                      {
LABEL_510:
                                        v1516 = objc_msgSend_rowBytes(v894, v881, v882, v883, v884, v885, v886, v887) >> 2;
                                        if (v803)
                                        {
                                          goto LABEL_511;
                                        }

                                        goto LABEL_523;
                                      }

LABEL_522:
                                      v1516 = 0;
                                      if (v803)
                                      {
LABEL_511:
                                        v1517 = objc_msgSend_rowBytes(v803, v881, v882, v883, v884, v885, v886, v887) >> 2;
                                        if (v891)
                                        {
                                          goto LABEL_512;
                                        }

                                        goto LABEL_524;
                                      }

LABEL_523:
                                      v1517 = 0;
                                      if (v891)
                                      {
LABEL_512:
                                        v1518 = objc_msgSend_rowBytes(v891, v881, v882, v883, v884, v885, v886, v887) >> 2;
                                        if (v803)
                                        {
                                          goto LABEL_513;
                                        }

                                        goto LABEL_525;
                                      }

LABEL_524:
                                      v1518 = 0;
                                      if (v803)
                                      {
LABEL_513:
                                        v1515 = objc_msgSend_rows(v803, v881, v882, v883, v884, v885, v886, v887);
                                        v895 = v1444;
                                        if (!v1444)
                                        {
                                          goto LABEL_515;
                                        }

LABEL_514:
                                        v895 = objc_msgSend_data(v895, v881, v882, v883, v884, v885, v886, v887);
                                        goto LABEL_515;
                                      }

LABEL_525:
                                      v1515 = 0;
                                      v895 = v1444;
                                      if (v1444)
                                      {
                                        goto LABEL_514;
                                      }

LABEL_515:
                                      *&v1496 = v895;
                                      v896 = v1391;
                                      if (v891)
                                      {
                                        v896 = objc_msgSend_data(v891, v881, v882, v883, v884, v885, v886, v887);
                                      }

                                      *(&v1496 + 1) = v896;
                                      if (v803)
                                      {
                                        v897 = objc_msgSend_data(v803, v881, v882, v883, v884, v885, v886, v887);
                                      }

                                      else
                                      {
                                        v897 = 0;
                                      }

                                      *&v1497 = v897;
                                      *(&v1497 + 1) = objc_msgSend_data(v1486, v881, v882, v883, v884, v885, v886, v887);
                                      *v1492 = 0;
                                      *&v1492[8] = v893;
                                      *&v1492[16] = 0;
                                      v1493 = v802 * v1387;
                                      if (!v1497)
                                      {
                                        *&v1497 = *(&v1496 + 1);
                                        *&v1492[16] = v893;
                                      }

                                      v905 = objc_msgSend_columns(v891, v898, v899, v900, v901, v902, v903, v904);
                                      v912 = *(&v1489[0] + 1) * v1398;
                                      if (v912)
                                      {
                                        v913 = (v905 + v912 - 1) / v912;
                                        v914 = *&v1489[1] * v842;
                                        if (v914)
                                        {
                                          goto LABEL_532;
                                        }
                                      }

                                      else
                                      {
                                        v913 = 0;
                                        v914 = *&v1489[1] * v842;
                                        if (v914)
                                        {
LABEL_532:
                                          v915 = (v831 + v914 - 1) / v914;
                                          if (v1496)
                                          {
                                            goto LABEL_533;
                                          }

                                          goto LABEL_537;
                                        }
                                      }

                                      v915 = 0;
                                      if (v1496)
                                      {
LABEL_533:
                                        HIDWORD(v1508) |= 0x400u;
                                        v916 = *(a1 + 96);
                                        if (v916)
                                        {
                                          goto LABEL_534;
                                        }

                                        goto LABEL_538;
                                      }

LABEL_537:
                                      *&v1496 = v1391;
                                      v1452 &= 0xFFFFFFDFFFFFFFDFLL;
                                      HIDWORD(v1508) &= 0xFFFFFF9F;
                                      v916 = *(a1 + 96);
                                      if (v916)
                                      {
LABEL_534:
                                        v917 = v802;
                                        v918 = *(objc_msgSend_objectAtIndexedSubscript_(v916, v906, v1426, v907, v908, v909, v910, v911) + 48);
                                        v1458 = objc_msgSend_rowBytes(v918, v919, v920, v921, v922, v923, v924, v925);
                                        v1519 = v1458;
                                        v933 = objc_msgSend_data(v918, v926, v927, v928, v929, v930, v931, v932);
                                        objc_msgSend_setBuffer_offset_atIndex_(*(a1 + 16), v934, v933, 0, 7, v935, v936, v937);
                                        goto LABEL_539;
                                      }

LABEL_538:
                                      v917 = v802;
                                      v1458 = 0;
                                      v1519 = 0;
                                      objc_msgSend_setBuffer_offset_atIndex_(*(a1 + 16), v906, v1391, 0, 7, v909, v910, v911);
LABEL_539:
                                      objc_msgSend_setBytes_length_atIndex_(v1431, v938, &v1448, 104, 0, v939, v940, v941);
                                      objc_msgSend_setBuffers_offsets_withRange_(v1431, v942, &v1496, v1492, 3, 4, v943, v944);
                                      *v1485 = 1;
                                      *&v1485[8] = v913;
                                      *&v1485[16] = v915;
                                      *v1484 = v1489[0];
                                      *&v1484[16] = *&v1489[1];
                                      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v1431, v945, v1485, v1484, v946, v947, v948, v949);
                                      v1489[0] = xmmword_239D7D4E0;
                                      *&v1489[1] = 1;
                                      if (v1513 <= 1)
                                      {
                                        v950 = 1;
                                      }

                                      else
                                      {
                                        v950 = v1513;
                                      }

                                      v958 = (*(*v1412 + 88))(v1412, v1385, v1419, v950, v1489);
                                      v1399 = HIDWORD(v958);
                                      v959 = LODWORD(v958);
                                      v960 = *(a4 + v801);
                                      if (v960)
                                      {
                                        objc_msgSend_columns(v960, v951, v952, v953, v954, v955, v956, v957);
                                        if (!v803)
                                        {
                                          goto LABEL_547;
                                        }
                                      }

                                      else if (!v803)
                                      {
                                        goto LABEL_547;
                                      }

                                      objc_msgSend_columns(v803, v951, v952, v953, v954, v955, v956, v957);
LABEL_547:
                                      MPSLibrary::CreateUberShaderKey();
                                      v961 = MPSLibrary::GetPipelineStateForMPSKey();
                                      objc_msgSend_setComputePipelineState_(v1431, v962, v961, v963, v964, v965, v966, v967, 0, 0, 0, 0, 0);
                                      MPSLibrary::ReleaseMPSKey();
                                      v975 = objc_msgSend_threadExecutionWidth(v961, v968, v969, v970, v971, v972, v973, v974);
                                      if (v975 <= 1)
                                      {
                                        v983 = 1;
                                      }

                                      else
                                      {
                                        v983 = v975;
                                      }

                                      v984 = objc_msgSend_maxTotalThreadsPerThreadgroup(v961, v976, v977, v978, v979, v980, v981, v982);
                                      if (v984 <= 1)
                                      {
                                        v992 = 1;
                                      }

                                      else
                                      {
                                        v992 = v984;
                                      }

                                      v993 = 256;
                                      if (v992 < 0x100)
                                      {
                                        v993 = v992;
                                      }

                                      if (*(&v1489[0] + 1) * *&v1489[0] * *&v1489[1] <= v993)
                                      {
                                        v994 = v1438;
                                        if (*&v1489[0] > v983)
                                        {
                                          *&v1489[0] = v983;
                                        }
                                      }

                                      else
                                      {
                                        *&v1489[0] = v983;
                                        *(v1489 + 8) = vdupq_n_s64(1uLL);
                                        v994 = v1438;
                                      }

                                      v995 = objc_msgSend_columns(v891, v985, v986, v987, v988, v989, v990, v991);
                                      v1001 = *(&v1489[0] + 1) * v1399;
                                      if (v1001)
                                      {
                                        v804 = (v995 + v1001 - 1) / v1001;
                                        v610 = a4;
                                        v805 = *&v1489[1];
                                        v806 = *&v1489[1] * v959;
                                        if (!v806)
                                        {
LABEL_561:
                                          v807 = 0;
                                          goto LABEL_470;
                                        }
                                      }

                                      else
                                      {
                                        v804 = 0;
                                        v610 = a4;
                                        v805 = *&v1489[1];
                                        v806 = *&v1489[1] * v959;
                                        if (!v806)
                                        {
                                          goto LABEL_561;
                                        }
                                      }

                                      v807 = (v831 + v806 - 1) / v806;
LABEL_470:
                                      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v1431, v996, 4 * *(&v1489[0] + 1) * v805 * *&v1489[0], 0, v997, v998, v999, v1000);
                                      objc_msgSend_setBuffers_offsets_withRange_(v1431, v808, &v1500, v1502, 1, 2, v809, v810);
                                      objc_msgSend_setBytes_length_atIndex_(v1431, v811, &v1503, 104, 0, v812, v813, v814);
                                      objc_msgSend_setBuffers_offsets_withRange_(v1431, v815, &v1496, v1492, 3, 4, v816, v817);
                                      *v1485 = 1;
                                      *&v1485[8] = v804;
                                      *&v1485[16] = v807;
                                      *v1484 = v1489[0];
                                      *&v1484[16] = *&v1489[1];
                                      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v1431, v818, v1485, v1484, v819, v820, v821, v822);
                                      v802 = v831 + v917;
                                      v798 = a3;
                                      ++v1426;
                                      v801 += 8;
                                      v799 = v803;
                                      v800 = v1403;
                                      v617 = v1407;
                                      v615 = v994 - 1;
                                      if (!v615)
                                      {
                                        v1002 = v1486;

                                        return;
                                      }
                                    }
                                  }

                                  v1426 = 0;
                                  v614 = v797;
                                  v799 = a5;
                                  if (a5)
                                  {
                                    goto LABEL_464;
                                  }
                                }

                                else
                                {
                                  v1426 = 0;
                                  v798 = a3;
                                  v799 = a5;
                                  if (a5)
                                  {
                                    goto LABEL_464;
                                  }
                                }

LABEL_466:
                                v800 = 0;
                                goto LABEL_467;
                              }
                            }

                            else
                            {
                              v615 = v1437;
                              v616 = 4 * v1402;
                              if (v1437 < 2)
                              {
                                v614 = 0;
                                v617 = 0;
                                goto LABEL_459;
                              }
                            }

                            v618 = v191 * v616;
                            v619 = MPSAutoCache::GetTempBuffer(*(a1 + 72), v191 * v616, 0);
                            objc_msgSend_setRows_(v1362, v620, v191, v621, v622, v623, v624, v625);
                            v626 = objc_alloc(MEMORY[0x277CD7250]);
                            v613 = a1;
                            v617 = objc_msgSend_initWithBuffer_descriptor_(v626, v627, v619, v1362, v628, v629, v630, v631);
                            v632 = MPSAutoCache::GetTempBuffer(*(a1 + 72), v618, 0);
                            v633 = objc_alloc(MEMORY[0x277CD7250]);
                            v614 = objc_msgSend_initWithBuffer_descriptor_(v633, v634, v632, v1362, v635, v636, v637, v638);
                            goto LABEL_459;
                          }

LABEL_343:
                          *(&v1487 + 1) = v1391;
                          v611 = v277 | 0x300;
                          if (v175)
                          {
                            goto LABEL_334;
                          }

                          goto LABEL_344;
                        }

                        v1381 = 536870920;
                      }
                    }

                    v279 = v1422;
                    if (v1422)
                    {
                      goto LABEL_157;
                    }

                    goto LABEL_321;
                  }

LABEL_142:
                  HIDWORD(v1503) = 0;
                  if (v135)
                  {
                    goto LABEL_132;
                  }

                  goto LABEL_143;
                }

LABEL_100:
                v175 = 0;
                goto LABEL_101;
              }

LABEL_99:
              v167 = 0;
              if (v135)
              {
                goto LABEL_96;
              }

              goto LABEL_100;
            }
          }

          else
          {
            v1373 = 0;
            if (!*(v59 + 400))
            {
              goto LABEL_25;
            }
          }

          v1415 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), a2, *(v59 + 408), a4, a5, a6, a7, a8);
          v59 = v16[11];
          goto LABEL_25;
        }
      }

      v56 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), a2, *(v59 + 360), a4, a5, a6, a7, a8);
      v59 = v16[11];
      goto LABEL_20;
    }

    v1416 = *(a1 + 16);
    v1406 = v16[7];
    v1384 = 268435472;
    v1432 = 4 * v1406;
    v68 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], a2, 1, 4 * v1406, 16 * v1406, 268435488, a7, a8);
    v1379 = v16[12];
    v1344 = (v16 + 12);
    v69 = v16[13];
    v1359 = v16[14];
    v1352 = v16[21];
    v1353 = v16[30];
    v1346 = (v16 + 21);
    v1347 = (v16 + 30);
    v1390 = v16[22];
    v70 = v16[32];
    v1361 = v16[23];
    v1364 = v16[31];
    v1356 = v16[39];
    v1401 = v16[41];
    v71 = *(a1 + 88);
    v1367 = v16[40];
    if (!v71)
    {
      v1423 = 0;
      v1374 = 0;
      v74 = 0;
      v73 = 0;
      goto LABEL_166;
    }

    v72 = v16[11];
    if (*(v72 + 48))
    {
      v1379 = objc_msgSend_objectAtIndexedSubscript_(v71, v61, *(v72 + 56), v63, v64, v65, v66, v67);
      v72 = v16[11];
    }

    if (*(v72 + 64))
    {
      v69 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v61, *(v72 + 72), v63, v64, v65, v66, v67);
      v72 = v16[11];
    }

    if (*(v72 + 80))
    {
      v1359 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v61, *(v72 + 88), v63, v64, v65, v66, v67);
      v72 = v16[11];
    }

    if (*(v72 + 96))
    {
      v73 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v61, *(v72 + 104), v63, v64, v65, v66, v67);
      v72 = v16[11];
      if (!*(v72 + 112))
      {
        goto LABEL_41;
      }
    }

    else
    {
      v73 = 0;
      if (!*(v72 + 112))
      {
LABEL_41:
        if (*(v72 + 128))
        {
          v1390 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v61, *(v72 + 136), v63, v64, v65, v66, v67);
          v72 = v16[11];
        }

        if (*(v72 + 144))
        {
          v1361 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v61, *(v72 + 152), v63, v64, v65, v66, v67);
          v72 = v16[11];
        }

        if (*(v72 + 160))
        {
          v74 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v61, *(v72 + 168), v63, v64, v65, v66, v67);
          v72 = v1410[11];
          if (!*(v72 + 176))
          {
            goto LABEL_48;
          }
        }

        else
        {
          v74 = 0;
          if (!*(v72 + 176))
          {
LABEL_48:
            if (*(v72 + 192))
            {
              v1364 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v61, *(v72 + 200), v63, v64, v65, v66, v67);
              v72 = v1410[11];
            }

            if (*(v72 + 208))
            {
              v70 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v61, *(v72 + 216), v63, v64, v65, v66, v67);
              v72 = v1410[11];
            }

            if (*(v72 + 224))
            {
              v1374 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v61, *(v72 + 232), v63, v64, v65, v66, v67);
              v72 = v1410[11];
              if (!*(v72 + 240))
              {
LABEL_55:
                if (*(v72 + 256))
                {
                  v1367 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v61, *(v72 + 264), v63, v64, v65, v66, v67);
                  v72 = v1410[11];
                }

                if (*(v72 + 272))
                {
                  v1401 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v61, *(v72 + 280), v63, v64, v65, v66, v67);
                  v72 = v1410[11];
                }

                if (*(v72 + 288))
                {
                  v1423 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v61, *(v72 + 296), v63, v64, v65, v66, v67);
                }

                else
                {
                  v1423 = 0;
                }

LABEL_166:
                v1350 = v69;
                v1351 = v70;
                v280 = 0;
                v281 = 0;
                do
                {
                  v280 += objc_msgSend_rows(v13[v281++], v61, v62, v63, v64, v65, v66, v67);
                }

                while (a2 != v281);
                v282 = a1;
                v1388 = 16 * v1406;
                v283 = MPSAutoCache::GetTempBuffer(*(a1 + 72), v280 * 16 * v1406, 0);
                objc_msgSend_setRows_(v68, v284, v280, v285, v286, v287, v288, v289);
                v290 = objc_alloc(MEMORY[0x277CD7250]);
                v296 = objc_msgSend_initWithBuffer_descriptor_(v290, v291, v283, v68, v292, v293, v294, v295);
                v1502[0] = v296;
                objc_msgSend_setRows_(v68, v297, 4 * v280, v298, v299, v300, v301, v302);
                objc_msgSend_setColumns_(v68, v303, v1406, v304, v305, v306, v307, v308);
                objc_msgSend_setRowBytes_(v68, v309, v1432, v310, v311, v312, v313, v314);
                v1342 = v68;
                if (v1410[52])
                {
                  sub_239BD2E40(a1, v1379, v73, a3, v1502, v1437, *(v1410 + 160), *(v1410 + 232), *(v1410 + 304), *(v1410 + 376), 4uLL, 0, 0, *(a1 + 112));
                }

                else
                {
                  if (!v1379 || (v1410[9] & 1) != 0)
                  {
                    if (v1379 || (v1410[9] & 1) != 0)
                    {
                      v322 = 0;
                      v323 = a3;
                      v324 = v1437;
                      do
                      {
                        v325 = objc_msgSend_data(v296, v315, v316, v317, v318, v319, v320, v321);
                        v326 = *v323++;
                        v334 = objc_msgSend_data(v326, v327, v328, v329, v330, v331, v332, v333);
                        sub_239BCA7FC(v325, v334, v1432, *(a1 + 16), *a1, v322, 0);
                        v322 += v1388;
                        --v324;
                      }

                      while (v324);
                    }
                  }

                  else
                  {
                    sub_239BD2E40(a1, v1379, v73, a3, v1502, v1437, *(v1410 + 160), 0, 0, 0, 1uLL, 0, 0, *(a1 + 112));
                  }

                  if (!v1352 || (v1410[9] & 1) != 0)
                  {
                    v335 = 16 * v1406;
                    v336 = 4 * v1406;
                    if (v1352 || (v1410[9] & 1) != 0)
                    {
                      v337 = v1502[0];
                      v338 = a3;
                      v339 = 4 * v1406;
                      v340 = v1437;
                      do
                      {
                        v341 = objc_msgSend_data(v337, v315, v316, v317, v318, v319, v320, v321);
                        v342 = *v338++;
                        v350 = objc_msgSend_data(v342, v343, v344, v345, v346, v347, v348, v349);
                        sub_239BCA7FC(v341, v350, v1432, *(a1 + 16), *a1, v339, 0);
                        v339 += v1388;
                        --v340;
                      }

                      while (v340);
                    }
                  }

                  else
                  {
                    sub_239BD2E40(a1, v1352, v74, a3, v1502, v1437, *(v1410 + 232), 0, 0, 0, 1uLL, v1406, 0, *(a1 + 112));
                    v335 = 16 * v1406;
                    v336 = 4 * v1406;
                  }

                  if (!v1353 || (v1410[9] & 1) != 0)
                  {
                    v351 = a3;
                    if (v1353 || (v1410[9] & 1) != 0)
                    {
                      v352 = v1502[0];
                      v353 = 8 * v1406;
                      v354 = v1437;
                      do
                      {
                        v355 = objc_msgSend_data(v352, v315, v316, v317, v318, v319, v320, v321);
                        v356 = *v351++;
                        v364 = objc_msgSend_data(v356, v357, v358, v359, v360, v361, v362, v363);
                        sub_239BCA7FC(v355, v364, v336, *(a1 + 16), *a1, v353, 0);
                        v353 += v335;
                        --v354;
                      }

                      while (v354);
                    }
                  }

                  else
                  {
                    sub_239BD2E40(a1, v1353, v1374, a3, v1502, v1437, *(v1410 + 304), 0, 0, 0, 1uLL, 2 * v1406, 0, *(a1 + 112));
                  }

                  if (!v1356 || (v1410[9] & 1) != 0)
                  {
                    v282 = a1;
                    v365 = v1401;
                    if (v1356 || (v1410[9] & 1) != 0)
                    {
                      v443 = v1502[0];
                      v444 = 12 * v1406;
                      v445 = a3;
                      v446 = v1437;
                      do
                      {
                        v447 = objc_msgSend_data(v443, v315, v316, v317, v318, v319, v320, v321);
                        v448 = *v445++;
                        v456 = objc_msgSend_data(v448, v449, v450, v451, v452, v453, v454, v455);
                        sub_239BCA7FC(v447, v456, v1432, *(a1 + 16), *a1, v444, 0);
                        v444 += v335;
                        --v446;
                      }

                      while (v446);
                    }

LABEL_195:
                    v366 = *(*v282 + 32);
                    v367 = v1437;
                    if (v280 <= v1437)
                    {
                      v369 = v1410;
                      v368 = (*(*v366 + 24))(*(*v282 + 32), v1410[7]);
                      v371 = v1350;
                      v370 = v1351;
                      v372 = v1359;
                      v373 = v1361;
                      if (v1410[15])
                      {
                        goto LABEL_204;
                      }
                    }

                    else
                    {
                      v368 = 1;
                      v369 = v1410;
                      v371 = v1350;
                      v370 = v1351;
                      v372 = v1359;
                      v373 = v1361;
                      if (v1410[15])
                      {
                        goto LABEL_204;
                      }
                    }

                    if (v369[24] || v369[33] || ((v369[42] | v372 | v373 | v370 | v365 | v282[15] | v282[12]) != 0) | v368 & 1 || *(v369 + 417) != 1 || (v369[7] & 0xF) != 0)
                    {
LABEL_204:
                      v1470 = *(v369 + 98);
                      *&v374 = *(v369 + 396);
                      DWORD2(v374) = *(v369 + 101);
                      HIDWORD(v374) = *(v369 + 105);
                      v1467 = v374;
                      v1473 = *(v369 + 419);
                      if (v371)
                      {
                        v1349 = objc_msgSend_data(v371, v315, v367, v317, v318, v319, v320, v321);
                        objc_msgSend_rowBytes(v371, v375, v376, v377, v378, v379, v380, v381);
                        v382 = v1364;
                        v383 = v1390;
                        if (v372)
                        {
                          goto LABEL_206;
                        }
                      }

                      else
                      {
                        v1349 = 0;
                        v382 = v1364;
                        v383 = v1390;
                        if (v372)
                        {
LABEL_206:
                          v1340 = objc_msgSend_data(v372, v315, v367, v317, v318, v319, v320, v321);
                          objc_msgSend_rowBytes(v372, v384, v385, v386, v387, v388, v389, v390);
                          if (v383)
                          {
                            goto LABEL_207;
                          }

                          goto LABEL_215;
                        }
                      }

                      v1340 = 0;
                      if (v383)
                      {
LABEL_207:
                        v1348 = objc_msgSend_data(v383, v315, v367, v317, v318, v319, v320, v321);
                        objc_msgSend_rowBytes(v383, v391, v392, v393, v394, v395, v396, v397);
                        if (v373)
                        {
                          goto LABEL_208;
                        }

                        goto LABEL_216;
                      }

LABEL_215:
                      v1348 = 0;
                      if (v373)
                      {
LABEL_208:
                        v1338 = objc_msgSend_data(v373, v315, v367, v317, v318, v319, v320, v321);
                        objc_msgSend_rowBytes(v373, v398, v399, v400, v401, v402, v403, v404);
                        if (v382)
                        {
                          goto LABEL_209;
                        }

                        goto LABEL_217;
                      }

LABEL_216:
                      v1338 = 0;
                      if (v382)
                      {
LABEL_209:
                        v405 = objc_msgSend_data(v382, v315, v367, v317, v318, v319, v320, v321);
                        objc_msgSend_rowBytes(v382, v406, v407, v408, v409, v410, v411, v412);
                        if (v370)
                        {
                          goto LABEL_210;
                        }

                        goto LABEL_218;
                      }

LABEL_217:
                      v405 = 0;
                      if (v370)
                      {
LABEL_210:
                        v1337 = objc_msgSend_data(v370, v315, v367, v317, v318, v319, v320, v321);
                        objc_msgSend_rowBytes(v370, v413, v414, v415, v416, v417, v418, v419);
                        v1376 = v366;
                        v420 = v1367;
                        if (v1367)
                        {
                          goto LABEL_211;
                        }

                        goto LABEL_219;
                      }

LABEL_218:
                      v1337 = 0;
                      v1376 = v366;
                      v420 = v1367;
                      if (v1367)
                      {
LABEL_211:
                        v421 = objc_msgSend_data(v420, v315, v367, v317, v318, v319, v320, v321);
                        objc_msgSend_rowBytes(v420, v422, v423, v424, v425, v426, v427, v428);
                        v429 = v1401;
                        if (v1401)
                        {
LABEL_212:
                          v1336 = objc_msgSend_data(v429, v315, v367, v317, v318, v319, v320, v321);
                          objc_msgSend_rowBytes(v429, v430, v431, v432, v433, v434, v435, v436);
                          goto LABEL_221;
                        }

LABEL_220:
                        v1336 = 0;
LABEL_221:
                        v1424 = objc_msgSend_data(v1502[0], v315, v367, v317, v318, v319, v320, v321);
                        v437 = 1;
                        if (v1410[52])
                        {
                          v438 = a1;
                          v439 = v1401;
                          v440 = v1350;
                          v441 = v1364;
                          v442 = v1359;
                        }

                        else
                        {
                          v438 = a1;
                          v439 = v1401;
                          v440 = v1350;
                          v441 = v1364;
                          v442 = v1359;
                          if (!v1379)
                          {
                            v437 = *(v1410 + 72);
                          }
                        }

                        v457 = 1;
                        sub_239BD3DF8(&v1448, v1344, 1, v437 & 1, 1, v440, v442, *(v1410 + 418), *(v1410 + 417));
                        if ((v1410[52] & 1) == 0 && !v1352)
                        {
                          v457 = *(v1410 + 72);
                        }

                        v458 = 1;
                        sub_239BD3DF8(&v1454, v1346, 1, v457 & 1, 1, v1390, v1361, *(v1410 + 418), *(v1410 + 417));
                        if ((v1410[52] & 1) == 0 && !v1353)
                        {
                          v458 = *(v1410 + 72);
                        }

                        v459 = 1;
                        sub_239BD3DF8(v1463, v1347, 1, v458 & 1, 1, v441, v1351, *(v1410 + 418), *(v1410 + 417));
                        if ((v1410[52] & 1) == 0 && !v1356)
                        {
                          v459 = *(v1410 + 72);
                        }

                        *&v467 = sub_239BD3DF8(v1465, v1347 + 72, 1, v459 & 1, 1, v1367, v439, *(v1410 + 418), *(v1410 + 417));
                        if ((!v440 || objc_msgSend_dataType(v440, v460, v461, v462, v463, v464, v465, v466, v467) != 268435472) && (!v1390 || objc_msgSend_dataType(v1390, v460, v461, v462, v463, v464, v465, v466, v467) != 268435472) && (!v441 || objc_msgSend_dataType(v441, v460, v461, v462, v463, v464, v465, v466, v467) != 268435472) && (!v1367 || objc_msgSend_dataType(v1367, v460, v461, v462, v463, v464, v465, v466, v467) != 268435472))
                        {
                          if (v440 && objc_msgSend_dataType(v440, v460, v461, v462, v463, v464, v465, v466, v467) == 536870920 || v1390 && objc_msgSend_dataType(v1390, v460, v461, v462, v463, v464, v465, v466, v467) == 536870920 || v441 && objc_msgSend_dataType(v441, v460, v461, v462, v463, v464, v465, v466, v467) == 536870920 || (v1384 = 268435488, v1367) && objc_msgSend_dataType(v1367, v460, v461, v462, v463, v464, v465, v466, v467) == 536870920)
                          {
                            v1384 = 536870920;
                          }
                        }

                        if (v1410[15])
                        {
                          v468 = v1410[15];
                        }

                        else
                        {
                          v468 = v1340;
                        }

                        v1503 = v1349;
                        v1504 = v468;
                        if (v1410[24])
                        {
                          v469 = v1410[24];
                        }

                        else
                        {
                          v469 = v1338;
                        }

                        v1505 = v1348;
                        v1506 = v469;
                        if (v1410[33])
                        {
                          v470 = v1410[33];
                        }

                        else
                        {
                          v470 = v1337;
                        }

                        v1507 = v405;
                        v1508 = v470;
                        if (v1410[42])
                        {
                          v471 = v1410[42];
                        }

                        else
                        {
                          v471 = v1336;
                        }

                        v1509 = v421;
                        v1510 = v471;
                        v1498 = 0u;
                        v1499 = 0u;
                        v1496 = 0u;
                        v1497 = 0u;
                        if (*(v1410 + 417) == 1)
                        {
                          v472 = objc_msgSend_rowBytes(v440, v460, v461, v462, v463, v464, v465, v466);
                          *&v1497 = (objc_msgSend_rows(v440, v473, v474, v475, v476, v477, v478, v479) >> 2) * v472;
                          *&v1498 = 2 * v1497;
                          *&v1499 = 3 * v1497;
                          v480 = v1437;
                          if (!v1349)
                          {
                            goto LABEL_261;
                          }
                        }

                        else
                        {
                          v480 = v1437;
                          if (!v1349)
                          {
LABEL_261:
                            v1503 = v1424;
                            if (!v468)
                            {
                              goto LABEL_262;
                            }

                            goto LABEL_271;
                          }
                        }

                        if (!v468)
                        {
LABEL_262:
                          v1504 = v1424;
                          if (!v1348)
                          {
                            goto LABEL_263;
                          }

                          goto LABEL_272;
                        }

LABEL_271:
                        if (!v1348)
                        {
LABEL_263:
                          v1505 = v1424;
                          if (!v469)
                          {
                            goto LABEL_264;
                          }

                          goto LABEL_273;
                        }

LABEL_272:
                        if (!v469)
                        {
LABEL_264:
                          v1506 = v1424;
                          if (!v405)
                          {
                            goto LABEL_265;
                          }

                          goto LABEL_274;
                        }

LABEL_273:
                        if (!v405)
                        {
LABEL_265:
                          v1507 = v1424;
                          if (!v470)
                          {
                            goto LABEL_266;
                          }

                          goto LABEL_275;
                        }

LABEL_274:
                        if (!v470)
                        {
LABEL_266:
                          v481 = a3;
                          v1508 = v1424;
                          v482 = 0x277CD7000;
                          if (!v421)
                          {
                            goto LABEL_267;
                          }

                          goto LABEL_276;
                        }

LABEL_275:
                        v481 = a3;
                        v482 = 0x277CD7000uLL;
                        if (!v421)
                        {
LABEL_267:
                          v1509 = v1424;
                          if (v471)
                          {
LABEL_277:
                            v483 = 0;
                            v484 = 1;
                            do
                            {
                              v485 = objc_msgSend_rows(v481[v483], v460, v461, v462, v463, v464, v465, v466);
                              if (v485 > v484)
                              {
                                v484 = v485;
                              }

                              ++v483;
                            }

                            while (v480 != v483);
                            if (a8 && (*(v438 + 80) & 1) != 0)
                            {
                              v486 = 0;
                              v487 = 0;
                              v488 = v1342;
                              v489 = 4 * v1406;
                              v490 = a7 == 0;
                              v491 = a6;
                              if (!a7)
                              {
                                goto LABEL_284;
                              }
                            }

                            else
                            {
                              v492 = v438;
                              v493 = MPSAutoCache::GetTempBuffer(*(v438 + 72), v484 * v1432, 0);
                              v488 = v1342;
                              objc_msgSend_setRows_(v1342, v494, v484, v495, v496, v497, v498, v499);
                              v500 = objc_alloc(*(v482 + 592));
                              v486 = objc_msgSend_initWithBuffer_descriptor_(v500, v501, v493, v1342, v502, v503, v504, v505);
                              if (v480 < 2)
                              {
                                v487 = 0;
                                v1343 = 0;
                                v1345 = 0;
                                v1382 = a7 == 0;
                                v491 = a6;
                                goto LABEL_357;
                              }

                              v506 = MPSAutoCache::GetTempBuffer(*(v438 + 72), v484 * v1432, 0);
                              v507 = objc_alloc(*(v482 + 592));
                              v487 = objc_msgSend_initWithBuffer_descriptor_(v507, v508, v506, v1342, v509, v510, v511, v512);
                              v489 = 4 * v1406;
                              v490 = a7 == 0;
                              v491 = a6;
                              if (!a7)
                              {
LABEL_284:
                                v492 = a1;
                                if (v480 < 2)
                                {
                                  v1343 = 0;
                                  v1345 = 0;
                                  v1382 = 1;
                                  goto LABEL_357;
                                }

                                goto LABEL_290;
                              }
                            }

                            v1345 = 0;
                            v1382 = 0;
                            v492 = a1;
                            if (v480 >= 2 && (*(a1 + 80) & 1) == 0)
                            {
LABEL_290:
                              v513 = v484 * v489;
                              v514 = MPSAutoCache::GetTempBuffer(*(v492 + 72), v484 * v489, 0);
                              v515 = v487;
                              v516 = v514;
                              objc_msgSend_setRows_(v488, v517, v484, v518, v519, v520, v521, v522);
                              v523 = objc_alloc(*(v482 + 592));
                              v524 = v516;
                              v487 = v515;
                              v1345 = objc_msgSend_initWithBuffer_descriptor_(v523, v525, v524, v488, v526, v527, v528, v529);
                              v492 = a1;
                              v530 = MPSAutoCache::GetTempBuffer(*(a1 + 72), v513, 0);
                              v531 = objc_alloc(*(v482 + 592));
                              v537 = objc_msgSend_initWithBuffer_descriptor_(v531, v532, v530, v488, v533, v534, v535, v536);
                              v491 = a6;
                              v1343 = v537;
                              v1382 = v490;
                              goto LABEL_357;
                            }

                            v1343 = 0;
LABEL_357:
                            v1363 = HIDWORD(v1453);
                            v1360 = v1462;
                            v1357 = v1464;
                            v1354 = v1466;
                            v1469 = v1406;
                            v639 = *(v492 + 96);
                            if (v639)
                            {
                              if (objc_msgSend_count(v639, v460, v461, v462, v463, v464, v465, v466) > v480)
                              {
                                v1411 = objc_msgSend_count(*(v492 + 96), v460, v461, v462, v463, v464, v465, v466) - v480;
                                v491 = a6;
                                v640 = a5;
                                if (!a5)
                                {
                                  goto LABEL_364;
                                }

LABEL_362:
                                v641 = *&v640[*MEMORY[0x277CD73B8]];
LABEL_365:
                                v642 = 0;
                                v643 = 0;
                                v644 = v480;
                                v1339 = v487;
                                v1341 = v486;
                                v645 = v487;
                                v646 = v486;
                                v648 = v1343;
                                v647 = v1345;
                                while (1)
                                {
                                  v1420 = v491;
                                  v1442 = v640;
                                  v649 = v645;
                                  *v1485 = xmmword_239D7D5B8;
                                  *&v1485[16] = 1;
                                  v657 = objc_msgSend_rows(*(a3 + v642), v460, v461, v462, v463, v464, v465, v466);
                                  v658 = v657;
                                  if (a4)
                                  {
                                    v658 = objc_msgSend_rows(*(a4 + v642), v650, v651, v652, v653, v654, v655, v656);
                                  }

                                  if (v641 >= v657)
                                  {
                                    v641 = v657;
                                  }

                                  v1468 = v657;
                                  v659 = objc_msgSend_rowBytes(v1502[0], v650, v651, v652, v653, v654, v655, v656);
                                  v1475 = v658;
                                  v1469 = v659 >> 2;
                                  v1474 = v641;
                                  if (v1420)
                                  {
                                    v667 = objc_msgSend_rowBytes(v1420, v660, v661, v662, v663, v664, v665, v666) >> 2;
                                  }

                                  else
                                  {
                                    LODWORD(v667) = 0;
                                  }

                                  v1477 = v667;
                                  v1483 = 0;
                                  if (v641 <= 1)
                                  {
                                    v668 = 1;
                                  }

                                  else
                                  {
                                    v668 = v641;
                                  }

                                  v669 = (*(*v1376 + 80))(v1376, v1384, v1406, v668, v1485, v1437);
                                  v670 = HIDWORD(v669);
                                  v671 = LODWORD(v669) == 1 && HIDWORD(v669) == 1;
                                  v1393 = v649;
                                  if (v671)
                                  {
                                    v673 = v648;
                                    v672 = v1442;
                                  }

                                  else
                                  {
                                    v672 = v1442;
                                    v673 = v648;
                                  }

                                  v674 = SLODWORD(v669);
                                  if (*&v1485[16] * SLODWORD(v669))
                                  {
                                    if (v672)
                                    {
                                      goto LABEL_385;
                                    }
                                  }

                                  else if (v672)
                                  {
LABEL_385:
                                    if (v1382)
                                    {
                                      goto LABEL_386;
                                    }

                                    goto LABEL_389;
                                  }

                                  if (v1382)
                                  {
LABEL_386:
                                    v676 = v1401;
                                    goto LABEL_393;
                                  }

LABEL_389:
                                  if (*(a1 + 80) == 1)
                                  {
                                    v677 = (a7 + v642);
                                    v676 = v1401;
                                  }

                                  else
                                  {
                                    v677 = a7;
                                    v676 = v1401;
                                    if (v644 != 1)
                                    {
                                      goto LABEL_393;
                                    }
                                  }

                                  v647 = *v677;
LABEL_393:
                                  v1409 = v657;
                                  if (!a8)
                                  {
                                    v645 = v646;
                                    goto LABEL_399;
                                  }

                                  if (*(a1 + 80) == 1)
                                  {
                                    v678 = (a8 + v642);
                                  }

                                  else
                                  {
                                    v678 = a8;
                                    v645 = v646;
                                    if (v644 != 1)
                                    {
                                      goto LABEL_399;
                                    }
                                  }

                                  v645 = *v678;
LABEL_399:
                                  v1433 = v647;
                                  if (v645 && v676 || v676)
                                  {
                                    v1483 = 1;
                                  }

                                  MPSLibrary::CreateUberShaderKey();
                                  v679 = MPSLibrary::GetPipelineStateForMPSKey();
                                  if (!v679)
                                  {
                                    goto LABEL_682;
                                  }

                                  v686 = v679;
                                  objc_msgSend_setComputePipelineState_(v1416, v680, v679, v681, v682, v683, v684, v685, 0, 0, 0, 0, 0);
                                  MPSLibrary::ReleaseMPSKey();
                                  v694 = objc_msgSend_threadExecutionWidth(v686, v687, v688, v689, v690, v691, v692, v693);
                                  if (v694 <= 1)
                                  {
                                    v702 = 1;
                                  }

                                  else
                                  {
                                    v702 = v694;
                                  }

                                  v703 = objc_msgSend_maxTotalThreadsPerThreadgroup(v686, v695, v696, v697, v698, v699, v700, v701);
                                  if (v703 <= 1)
                                  {
                                    v709 = 1;
                                  }

                                  else
                                  {
                                    v709 = v703;
                                  }

                                  if (v709 >= 0x100)
                                  {
                                    v710 = 256;
                                  }

                                  else
                                  {
                                    v710 = v709;
                                  }

                                  v711 = *v1485;
                                  if (*v1485 > v702)
                                  {
                                    *v1485 = v702;
                                    v711 = v702;
                                  }

                                  v712 = *&v1485[8];
                                  v713 = *&v1485[16];
                                  if (*&v1485[8] * v711 * *&v1485[16] > v710)
                                  {
                                    *v1485 = v702;
                                    *&v1485[8] = vdupq_n_s64(1uLL);
                                    v713 = 1;
                                    v712 = 1;
                                    v711 = v702;
                                  }

                                  objc_msgSend_setThreadgroupMemoryLength_atIndex_(v1416, v704, 4 * v713 * v712 * v711, 0, v705, v706, v707, v708);
                                  objc_msgSend_setBuffers_offsets_withRange_(v1416, v714, &v1503, &v1496, 1, 8, v715, v716);
                                  LOWORD(v1471) = 1;
                                  HIDWORD(v1453) = v1363;
                                  v1462 = v1360;
                                  v1464 = v1357;
                                  v1466 = v1354;
                                  v724 = *(a4 + v642);
                                  v725 = 4 * a13;
                                  v726 = *(a1 + 120);
                                  if (v726)
                                  {
                                    v725 = *(v726 + v642) + 4 * a13;
                                  }

                                  if (v1442)
                                  {
                                    v1479 = objc_msgSend_rowBytes(v1442, v717, v718, v719, v720, v721, v722, v723) >> 2;
                                    if (v645)
                                    {
                                      goto LABEL_421;
                                    }
                                  }

                                  else
                                  {
                                    v1479 = 0;
                                    if (v645)
                                    {
LABEL_421:
                                      v1478 = objc_msgSend_rowBytes(v645, v717, v718, v719, v720, v721, v722, v723) >> 2;
                                      v727 = v647;
                                      if (v647)
                                      {
                                        goto LABEL_422;
                                      }

                                      goto LABEL_443;
                                    }
                                  }

                                  v1478 = 0;
                                  v727 = v647;
                                  if (v647)
                                  {
LABEL_422:
                                    v1480 = objc_msgSend_rowBytes(v727, v717, v718, v719, v720, v721, v722, v723) >> 2;
                                    if (v724)
                                    {
                                      goto LABEL_423;
                                    }

                                    goto LABEL_444;
                                  }

LABEL_443:
                                  v1480 = 0;
                                  if (v724)
                                  {
LABEL_423:
                                    v1481 = objc_msgSend_rowBytes(v724, v717, v718, v719, v720, v721, v722, v723) >> 2;
                                    if (v645)
                                    {
                                      goto LABEL_424;
                                    }

                                    goto LABEL_445;
                                  }

LABEL_444:
                                  v1481 = 0;
                                  if (v645)
                                  {
LABEL_424:
                                    v1476 = objc_msgSend_rows(v645, v717, v718, v719, v720, v721, v722, v723);
                                    v728 = v1442;
                                    if (!v1442)
                                    {
                                      goto LABEL_426;
                                    }

LABEL_425:
                                    v728 = objc_msgSend_data(v728, v717, v718, v719, v720, v721, v722, v723);
                                    goto LABEL_426;
                                  }

LABEL_445:
                                  v1476 = 0;
                                  v728 = v1442;
                                  if (v1442)
                                  {
                                    goto LABEL_425;
                                  }

LABEL_426:
                                  *v1492 = v728;
                                  v729 = v1424;
                                  if (v724)
                                  {
                                    v729 = objc_msgSend_data(v724, v717, v718, v719, v720, v721, v722, v723);
                                  }

                                  *&v1492[8] = v729;
                                  v730 = v647;
                                  if (v647)
                                  {
                                    v730 = objc_msgSend_data(v647, v717, v718, v719, v720, v721, v722, v723);
                                  }

                                  *&v1492[16] = v730;
                                  v1493 = objc_msgSend_data(v1502[0], v717, v718, v719, v720, v721, v722, v723);
                                  v738 = v1420;
                                  if (v1420)
                                  {
                                    v738 = objc_msgSend_data(v1420, v731, v732, v733, v734, v735, v736, v737);
                                  }

                                  v1494 = v738;
                                  v739 = v1424;
                                  if (v645)
                                  {
                                    v739 = objc_msgSend_data(v645, v731, v732, v733, v734, v735, v736, v737);
                                  }

                                  v1495 = v739;
                                  *&v1489[0] = 0;
                                  *(&v1489[0] + 1) = v725;
                                  *&v1489[1] = 0;
                                  *(&v1489[1] + 1) = v643 * v1388;
                                  v1490 = 0;
                                  v1491 = 0;
                                  if (*&v1492[16])
                                  {
                                    v740 = objc_msgSend_columns(v724, v731, v732, v733, v734, v735, v736, v737);
                                    v747 = *&v1485[8] * v670;
                                    if (v747)
                                    {
                                      goto LABEL_436;
                                    }
                                  }

                                  else
                                  {
                                    *&v1492[16] = *&v1492[8];
                                    *&v1489[1] = v725;
                                    v740 = objc_msgSend_columns(v724, v731, v732, v733, v734, v735, v736, v737);
                                    v747 = *&v1485[8] * v670;
                                    if (v747)
                                    {
LABEL_436:
                                      v748 = (v740 + v747 - 1) / v747;
                                      v749 = *&v1485[16] * v674;
                                      if (*&v1485[16] * v674)
                                      {
                                        goto LABEL_437;
                                      }

                                      goto LABEL_449;
                                    }
                                  }

                                  v748 = 0;
                                  v749 = *&v1485[16] * v674;
                                  if (*&v1485[16] * v674)
                                  {
LABEL_437:
                                    v750 = (v1409 + v749 - 1) / v749;
                                    v1443 = v642;
                                    v751 = v1393;
                                    if (*v1492)
                                    {
                                      goto LABEL_438;
                                    }

                                    goto LABEL_450;
                                  }

LABEL_449:
                                  v750 = 0;
                                  v1443 = v642;
                                  v751 = v1393;
                                  if (*v1492)
                                  {
LABEL_438:
                                    v752 = v673;
                                    if (v1494)
                                    {
                                      goto LABEL_439;
                                    }

                                    goto LABEL_451;
                                  }

LABEL_450:
                                  *v1492 = v1424;
                                  HIDWORD(v1453) &= ~0x20u;
                                  v1462 &= ~0x20u;
                                  v1464 &= ~0x20u;
                                  v1466 &= ~0x20u;
                                  v752 = v673;
                                  if (v1494)
                                  {
LABEL_439:
                                    v753 = v644;
                                    v754 = a1;
                                    v755 = *(a1 + 96);
                                    if (!v755)
                                    {
                                      goto LABEL_452;
                                    }

                                    goto LABEL_440;
                                  }

LABEL_451:
                                  v1494 = v1424;
                                  HIDWORD(v1453) &= 0xFFFFFF3F;
                                  v1462 &= 0xFFFFFF3F;
                                  v1464 &= 0xFFFFFF3F;
                                  LOWORD(v1471) = 0;
                                  v753 = v644;
                                  v754 = a1;
                                  v755 = *(a1 + 96);
                                  if (!v755)
                                  {
LABEL_452:
                                    v756 = v643;
                                    v1482 = 0;
                                    objc_msgSend_setBuffer_offset_atIndex_(*(v754 + 16), v741, v1424, 0, 15, v744, v745, v746);
                                    goto LABEL_453;
                                  }

LABEL_440:
                                  v756 = v643;
                                  v757 = *(objc_msgSend_objectAtIndexedSubscript_(v755, v741, v1411, v742, v743, v744, v745, v746) + 48);
                                  v1482 = objc_msgSend_rowBytes(v757, v758, v759, v760, v761, v762, v763, v764);
                                  v765 = *(v754 + 16);
                                  v773 = objc_msgSend_data(v757, v766, v767, v768, v769, v770, v771, v772);
                                  objc_msgSend_setBuffer_offset_atIndex_(v765, v774, v773, 0, 15, v775, v776, v777);
LABEL_453:
                                  objc_msgSend_setBytes_length_atIndex_(v1416, v778, &v1448, 280, 0, v779, v780, v781);
                                  objc_msgSend_setBuffers_offsets_withRange_(v1416, v782, v1492, v1489, 9, 6, v783, v784);
                                  *v1484 = 1;
                                  *&v1484[8] = v748;
                                  *&v1484[16] = v750;
                                  v1487 = *v1485;
                                  v1488 = *&v1485[16];
                                  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v1416, v785, v1484, &v1487, v786, v787, v788, v789);
                                  if (v1401)
                                  {
                                    v1483 = 2;
                                    objc_msgSend_setBytes_length_atIndex_(v1416, v460, &v1448, 280, 0, v464, v465, v466);
                                    *v1484 = 1;
                                    *&v1484[8] = v748;
                                    *&v1484[16] = v750;
                                    v1487 = *v1485;
                                    v1488 = *&v1485[16];
                                    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v1416, v790, v1484, &v1487, v791, v792, v793, v794);
                                  }

                                  v641 = v1409;
                                  v643 = v1409 + v756;
                                  ++v1411;
                                  v646 = v751;
                                  v642 = v1443 + 8;
                                  v647 = v752;
                                  v648 = v1433;
                                  v640 = v1433;
                                  v491 = v645;
                                  v644 = v753 - 1;
                                  if (v753 == 1)
                                  {

                                    v795 = v1339;
LABEL_456:

                                    return;
                                  }
                                }
                              }

                              v1411 = 0;
                              v491 = a6;
                              v640 = a5;
                              if (a5)
                              {
                                goto LABEL_362;
                              }
                            }

                            else
                            {
                              v1411 = 0;
                              v640 = a5;
                              if (a5)
                              {
                                goto LABEL_362;
                              }
                            }

LABEL_364:
                            v641 = 0;
                            goto LABEL_365;
                          }

LABEL_268:
                          v1510 = v1424;
                          goto LABEL_277;
                        }

LABEL_276:
                        if (v471)
                        {
                          goto LABEL_277;
                        }

                        goto LABEL_268;
                      }

LABEL_219:
                      v421 = 0;
                      v429 = v1401;
                      if (v1401)
                      {
                        goto LABEL_212;
                      }

                      goto LABEL_220;
                    }

                    v1470 = *(v369 + 98);
                    *&v1155 = *(v369 + 396);
                    DWORD2(v1155) = *(v369 + 101);
                    HIDWORD(v1155) = *(v369 + 105);
                    v1467 = v1155;
                    v1473 = *(v369 + 419);
                    v1156 = objc_msgSend_data(v1502[0], v315, v367, v317, v318, v319, v320, v321);
                    v1157 = 1;
                    if (v369[52])
                    {
                      v1158 = v1364;
                    }

                    else
                    {
                      v1158 = v1364;
                      if (!v1379)
                      {
                        v1157 = *(v1410 + 72);
                      }
                    }

                    sub_239BD3DF8(&v1448, v1344, 0, v1157 & 1, 0, v371, 0, *(v1410 + 418), *(v1410 + 417));
                    v1159 = 1;
                    if ((v1410[52] & 1) == 0 && !v1352)
                    {
                      v1159 = *(v1410 + 72);
                    }

                    sub_239BD3DF8(&v1454, v1346, 0, v1159 & 1, 0, v1390, 0, *(v1410 + 418), *(v1410 + 417));
                    v1160 = 1;
                    if ((v1410[52] & 1) == 0 && !v1353)
                    {
                      v1160 = *(v1410 + 72);
                    }

                    sub_239BD3DF8(v1463, v1347, 0, v1160 & 1, 0, v1158, 0, *(v1410 + 418), *(v1410 + 417));
                    v1161 = 1;
                    v1427 = v1156;
                    if (v1410[52])
                    {
                      v1162 = v1367;
                    }

                    else
                    {
                      v1162 = v1367;
                      if (!v1356)
                      {
                        v1161 = *(v1410 + 72);
                      }
                    }

                    *&v1163 = sub_239BD3DF8(v1465, v1347 + 72, 0, v1161 & 1, 0, v1162, 0, *(v1410 + 418), *(v1410 + 417));
                    v1171 = objc_msgSend_columns(v1410[13], v1164, v1165, v1166, v1167, v1168, v1169, v1170, v1163);
                    *&v1448 = vand_s8(__PAIR64__(objc_msgSend_rows(v1410[13], v1172, v1173, v1174, v1175, v1176, v1177, v1178), v1171), 0xFFFF0000FFFFLL);
                    v1454 = v1448;
                    v1463[0] = v1448;
                    v1465[0] = v1448;
                    HIDWORD(v1453) |= 0x20u;
                    v1462 |= 0x20u;
                    v1466 |= 0x20u;
                    v1464 |= 0x20u;
                    objc_msgSend_dataType(v371, v1172, v1173, v1174, v1175, v1176, v1177, v1178);
                    ComputeState = MPSLibrary::GetComputeState();
                    if (!ComputeState)
                    {
LABEL_682:

                      return;
                    }

                    v1186 = ComputeState;
                    objc_msgSend_setComputePipelineState_(v1416, v1180, ComputeState, v1181, v1182, v1183, v1184, v1185);
                    v1194 = objc_msgSend_threadExecutionWidth(v1186, v1187, v1188, v1189, v1190, v1191, v1192, v1193);
                    if (v1194 <= 1)
                    {
                      v1202 = 1;
                    }

                    else
                    {
                      v1202 = v1194;
                    }

                    v1203 = objc_msgSend_maxTotalThreadsPerThreadgroup(v1186, v1195, v1196, v1197, v1198, v1199, v1200, v1201);
                    MPSLibrary::ReleaseComputeState();
                    v1204 = v1410[7];
                    v1212 = objc_msgSend_dataType(v371, v1205, v1206, v1207, v1208, v1209, v1210, v1211);
                    v1216 = (*(*v366 + 48))(v366, v1204, v1212) * v1202;
                    if (v1216 > v1203 || v1216 > v1410[7])
                    {
                      v1216 = v1202;
                    }

                    v1217 = v1410[24];
                    *v1492 = v1410[15];
                    *&v1492[8] = v1217;
                    v1218 = v1410[33];
                    v1219 = v1410[42];
                    *&v1492[16] = v1218;
                    v1493 = v1219;
                    memset(v1489, 0, sizeof(v1489));
                    if (*v1492)
                    {
                      v1220 = a4;
                      v1221 = a1;
                      if (v1217)
                      {
                        goto LABEL_677;
                      }
                    }

                    else
                    {
                      *v1492 = v1156;
                      v1220 = a4;
                      v1221 = a1;
                      if (v1217)
                      {
LABEL_677:
                        if (v1218)
                        {
                          goto LABEL_678;
                        }

                        goto LABEL_687;
                      }
                    }

                    *&v1492[8] = v1156;
                    if (v1218)
                    {
LABEL_678:
                      if (v1219)
                      {
                        goto LABEL_679;
                      }

LABEL_688:
                      v1493 = v1156;
LABEL_679:
                      objc_msgSend_setBuffers_offsets_withRange_(v1416, v1213, v1492, v1489, 1, 4, v1214, v1215);
                      v1229 = objc_msgSend_data(v371, v1222, v1223, v1224, v1225, v1226, v1227, v1228);
                      objc_msgSend_setBuffer_offset_atIndex_(v1416, v1230, v1229, 0, 11, v1231, v1232, v1233);
                      if (a8 && (*(v1221 + 80) & 1) != 0)
                      {
                        v1241 = 0;
                        v1383 = 0;
                        v1243 = v1437;
                        v1242 = a5;
                      }

                      else
                      {
                        v1244 = MPSAutoCache::GetTempBuffer(*(v1221 + 72), v1432, 0);
                        objc_msgSend_setRows_(v1342, v1245, 1, v1246, v1247, v1248, v1249, v1250);
                        v1251 = objc_alloc(MEMORY[0x277CD7250]);
                        v1241 = objc_msgSend_initWithBuffer_descriptor_(v1251, v1252, v1244, v1342, v1253, v1254, v1255, v1256);
                        v1243 = v1437;
                        if (v1437 >= 2)
                        {
                          v1257 = MPSAutoCache::GetTempBuffer(*(v1221 + 72), v1432, 0);
                          v1258 = objc_alloc(MEMORY[0x277CD7250]);
                          v1259 = v1257;
                          v1243 = v1437;
                          v1383 = objc_msgSend_initWithBuffer_descriptor_(v1258, v1260, v1259, v1342, v1261, v1262, v1263, v1264);
                        }

                        else
                        {
                          v1383 = 0;
                        }

                        v1242 = a5;
                      }

                      v1414 = HIDWORD(v1453);
                      v1404 = v1462;
                      v1394 = v1464;
                      v1386 = v1466;
                      v1469 = v1406;
                      v1265 = 16;
                      if (v1243 < 0x10)
                      {
                        v1265 = v1243;
                      }

                      v1408 = v1265;
                      v1472 = v1265;
                      v1471 = 65537;
                      if (a7 && (v1243 < 2 || (*(v1221 + 80) & 1) != 0))
                      {
                        v1429 = *a7;
                      }

                      else
                      {
                        v1429 = 0;
                      }

                      v1435 = v1216;
                      v1266 = v1241;
                      if (a8)
                      {
                        if (v1243 < 2 || (v1266 = v1241, (*(v1221 + 80) & 1) != 0))
                        {
                          v1266 = *a8;
                        }
                      }

                      v1377 = v1241;
                      v1267 = *v1220;
                      if (v1242)
                      {
                        v1242 = objc_msgSend_data(v1242, v1234, v1235, v1236, v1237, v1238, v1239, v1240);
                      }

                      v1503 = v1242;
                      v1268 = v1156;
                      if (v1267)
                      {
                        v1268 = objc_msgSend_data(v1267, v1234, v1235, v1236, v1237, v1238, v1239, v1240);
                      }

                      v1504 = v1268;
                      v1269 = v1429;
                      if (v1429)
                      {
                        v1269 = objc_msgSend_data(v1429, v1234, v1235, v1236, v1237, v1238, v1239, v1240);
                      }

                      v1505 = v1269;
                      v1506 = objc_msgSend_data(v1502[0], v1234, v1235, v1236, v1237, v1238, v1239, v1240);
                      v1277 = a6;
                      if (a6)
                      {
                        v1277 = objc_msgSend_data(a6, v1270, v1271, v1272, v1273, v1274, v1275, v1276);
                      }

                      v1507 = v1277;
                      v1278 = v1156;
                      if (v1266)
                      {
                        v1278 = objc_msgSend_data(v1266, v1270, v1271, v1272, v1273, v1274, v1275, v1276);
                      }

                      v1508 = v1278;
                      *&v1496 = 0;
                      *(&v1496 + 1) = 4 * a13;
                      v1497 = 0u;
                      v1498 = 0u;
                      if (!v1505)
                      {
                        v1505 = v1504;
                        *&v1497 = 4 * a13;
                      }

                      v1279 = v1216;
                      v1280 = objc_msgSend_columns(v1267, v1270, v1271, v1272, v1273, v1274, v1275, v1276);
                      if (v1216)
                      {
                        v1279 = (v1280 + v1216 - 1) / v1216;
                      }

                      if (!v1503)
                      {
                        v1503 = v1156;
                        HIDWORD(v1453) &= ~0x20u;
                        v1462 &= ~0x20u;
                        v1464 &= ~0x20u;
                        v1466 &= ~0x20u;
                        HIWORD(v1471) = 0;
                      }

                      if (!v1507)
                      {
                        v1507 = v1156;
                        HIDWORD(v1453) &= 0xFFFFFF3F;
                        v1462 &= 0xFFFFFF3F;
                        v1464 &= 0xFFFFFF3F;
                        v1466 &= 0xFFFFFF3F;
                        LOWORD(v1471) = 0;
                      }

                      objc_msgSend_setBytes_length_atIndex_(v1416, v1281, &v1448, 280, 0, v1282, v1283, v1284);
                      objc_msgSend_setBuffers_offsets_withRange_(v1416, v1285, &v1503, &v1496, 5, 6, v1286, v1287);
                      *v1485 = v1279;
                      *&v1485[8] = vdupq_n_s64(1uLL);
                      *v1484 = v1216;
                      *&v1484[8] = *&v1485[8];
                      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v1416, v1288, v1485, v1484, v1289, v1290, v1291, v1292);
                      v1300 = v1437 - 1;
                      if (v1437 == 1)
                      {
LABEL_721:

                        v795 = v1383;
                        goto LABEL_456;
                      }

                      v1301 = 1;
                      v1302 = 2;
                      v1446 = vdupq_n_s64(1uLL);
                      v1303 = v1388;
                      v1304 = v1383;
                      while (1)
                      {
                        v1313 = v1266;
                        v1472 = v1408;
                        v1471 = 65537;
                        HIDWORD(v1453) = v1414;
                        v1462 = v1404;
                        v1464 = v1394;
                        v1466 = v1386;
                        if (!a7)
                        {
                          v1314 = v1427;
                          goto LABEL_730;
                        }

                        v1314 = v1427;
                        if (*(a1 + 80) == 1)
                        {
                          v1315 = &a7[v1301];
                        }

                        else
                        {
                          v1315 = a7;
                          if (v1302 < v1437)
                          {
                            goto LABEL_730;
                          }
                        }

                        v1429 = *v1315;
LABEL_730:
                        if (a8)
                        {
                          if (*(a1 + 80) == 1)
                          {
                            v1316 = &a8[v1301];
LABEL_735:
                            v1266 = *v1316;
                            goto LABEL_736;
                          }

                          v1316 = a8;
                          v1266 = v1304;
                          if (v1302 >= v1437)
                          {
                            goto LABEL_735;
                          }
                        }

                        else
                        {
                          v1266 = v1304;
                        }

LABEL_736:
                        v1317 = *(a4 + v1301 * 8);
                        if (v1267)
                        {
                          v1318 = objc_msgSend_data(v1267, v1293, v1294, v1295, v1296, v1297, v1298, v1299);
                        }

                        else
                        {
                          v1318 = 0;
                        }

                        v1319 = v1435;
                        v1503 = v1318;
                        v1320 = v1314;
                        if (v1317)
                        {
                          v1320 = objc_msgSend_data(v1317, v1293, v1294, v1295, v1296, v1297, v1298, v1299);
                        }

                        v1504 = v1320;
                        v1321 = v1429;
                        if (v1429)
                        {
                          v1321 = objc_msgSend_data(v1429, v1293, v1294, v1295, v1296, v1297, v1298, v1299);
                        }

                        v1505 = v1321;
                        v1506 = objc_msgSend_data(v1502[0], v1293, v1294, v1295, v1296, v1297, v1298, v1299);
                        if (v1313)
                        {
                          v1329 = objc_msgSend_data(v1313, v1322, v1323, v1324, v1325, v1326, v1327, v1328);
                        }

                        else
                        {
                          v1329 = 0;
                        }

                        v1507 = v1329;
                        v1330 = v1314;
                        if (v1266)
                        {
                          v1330 = objc_msgSend_data(v1266, v1322, v1323, v1324, v1325, v1326, v1327, v1328);
                        }

                        v1508 = v1330;
                        *&v1496 = 4 * a13;
                        *(&v1496 + 1) = 4 * a13;
                        *&v1497 = 0;
                        *(&v1497 + 1) = v1303;
                        v1498 = 0uLL;
                        if (!v1505)
                        {
                          v1505 = v1504;
                          *&v1497 = 4 * a13;
                        }

                        v1331 = objc_msgSend_columns(v1317, v1322, v1323, v1324, v1325, v1326, v1327, v1328);
                        if (v1435)
                        {
                          v1319 = (v1331 + v1435 - 1) / v1435;
                        }

                        if (!v1503)
                        {
                          v1503 = v1314;
                          HIDWORD(v1453) &= ~0x20u;
                          v1462 &= ~0x20u;
                          v1464 &= ~0x20u;
                          v1466 &= ~0x20u;
                          HIWORD(v1471) = 0;
                        }

                        if (!v1507)
                        {
                          v1507 = v1314;
                          HIDWORD(v1453) &= 0xFFFFFF3F;
                          v1462 &= 0xFFFFFF3F;
                          v1464 &= 0xFFFFFF3F;
                          v1466 &= 0xFFFFFF3F;
                          LOWORD(v1471) = 0;
                        }

                        objc_msgSend_setBytes_length_atIndex_(v1416, v1332, &v1448, 280, 0, v1333, v1334, v1335);
                        objc_msgSend_setBuffers_offsets_withRange_(v1416, v1305, &v1503, &v1496, 5, 6, v1306, v1307);
                        *v1485 = v1319;
                        *&v1485[8] = v1446;
                        *v1484 = v1435;
                        *&v1484[8] = v1446;
                        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v1416, v1308, v1485, v1484, v1309, v1310, v1311, v1312);
                        ++v1301;
                        v1303 += v1388;
                        ++v1302;
                        v1267 = v1317;
                        v1304 = v1313;
                        if (!--v1300)
                        {
                          goto LABEL_721;
                        }
                      }
                    }

LABEL_687:
                    *&v1492[16] = v1156;
                    if (v1219)
                    {
                      goto LABEL_679;
                    }

                    goto LABEL_688;
                  }

                  v282 = a1;
                  sub_239BD2E40(a1, v1356, v1423, a3, v1502, v1437, *(v1410 + 376), 0, 0, 0, 1uLL, 3 * v1406, 0, *(a1 + 112));
                }

                v365 = v1401;
                goto LABEL_195;
              }
            }

            else
            {
              v1374 = 0;
              if (!*(v72 + 240))
              {
                goto LABEL_55;
              }
            }

            v1356 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v61, *(v72 + 248), v63, v64, v65, v66, v67);
            v72 = v1410[11];
            goto LABEL_55;
          }
        }

        v1353 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v61, *(v72 + 184), v63, v64, v65, v66, v67);
        v72 = v1410[11];
        goto LABEL_48;
      }
    }

    v1352 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v61, *(v72 + 120), v63, v64, v65, v66, v67);
    v72 = v16[11];
    goto LABEL_41;
  }
}

uint64_t sub_239BD2D0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  v3 = MPSCreateFunctionConstantValues();
  v40 = v2 & 1;
  v39 = (v2 & 2) != 0;
  v38 = (v2 & 4) != 0;
  v37 = (v2 & 0x10) != 0;
  v36 = (v2 & 0x20) != 0;
  v35 = (v2 & 8) != 0;
  v34 = (v2 & 0x40) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v40, 53, 10, v5, v6, v7);
  objc_msgSend_setConstantValue_type_atIndex_(v3, v8, &v39, 53, 11, v9, v10, v11);
  objc_msgSend_setConstantValue_type_atIndex_(v3, v12, &v38, 53, 12, v13, v14, v15);
  objc_msgSend_setConstantValue_type_atIndex_(v3, v16, &v37, 53, 13, v17, v18, v19);
  objc_msgSend_setConstantValue_type_atIndex_(v3, v20, &v36, 53, 14, v21, v22, v23);
  objc_msgSend_setConstantValue_type_atIndex_(v3, v24, &v35, 53, 15, v25, v26, v27);
  objc_msgSend_setConstantValue_type_atIndex_(v3, v28, &v34, 53, 16, v29, v30, v31);
  v32 = _MPSNewSpecializedFunction();

  return v32;
}

void sub_239BD2E40(void *a1, void *a2, void *a3, void **a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = a8;
  v482 = a7;
  v15 = a6;
  v501 = *MEMORY[0x277D85DE8];
  v18 = objc_msgSend_dataType(a2, a2, a3, a4, a5, a6, a7, a8);
  v481 = a1[2];
  v470 = *(*a1 + 32);
  v19 = (*(*v470 + 40))();
  v27 = malloc_type_malloc(8 * v15, 0x100004000313F17uLL);
  v28 = 0;
  v29 = 0;
  do
  {
    v28 += objc_msgSend_rows(a4[v29], v20, v21, v22, v23, v24, v25, v26);
    *&v27[8 * v29++] = v28;
  }

  while (v15 != v29);
  v474 = v27;
  v30 = v28 >= v19 || v18 == 268435472;
  v472 = a1;
  if (!v30)
  {
    v485 = 0;
    v31 = 0;
    v101 = v27;
    v100 = a2;
    if (!v28)
    {
LABEL_76:
      v186 = v101;
      goto LABEL_77;
    }

    goto LABEL_34;
  }

  v477 = v18;
  v31 = v28;
  v32 = v15;
  if (!v19 || v477 == 268435472)
  {
    goto LABEL_14;
  }

  v32 = 0;
  v31 = v28 & -v19;
  if (v31)
  {
    for (i = 0; i < v31; i += v34)
    {
      v34 = objc_msgSend_rows(a4[v32++], v20, v21, v22, v23, v24, v25, v26);
      if (v32 >= v15)
      {
        break;
      }
    }

LABEL_14:
    v35 = *&v27[8 * v32 - 8];
    goto LABEL_15;
  }

  v35 = 0;
LABEL_15:
  v484 = v35 > v31;
  v36 = objc_msgSend_rowBytes(*a4, v20, v21, v22, v23, v24, v25, v26) + 15;
  v37 = MEMORY[0x277CD7258];
  v45 = objc_msgSend_columns(*a4, v38, v39, v40, v41, v42, v43, v44);
  v53 = objc_msgSend_dataType(*a4, v46, v47, v48, v49, v50, v51, v52);
  v57 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(v37, v54, v31, v45, v36 & 0xFFFFFFFFFFFFFFF0, v53, v55, v56);
  v58 = a1[9];
  v66 = objc_msgSend_rowBytes(v57, v59, v60, v61, v62, v63, v64, v65);
  TempBuffer = MPSAutoCache::GetTempBuffer(v58, v66 * v31, 0);
  v68 = objc_alloc(MEMORY[0x277CD7250]);
  v74 = objc_msgSend_initWithBuffer_descriptor_(v68, v69, TempBuffer, v57, v70, v71, v72, v73);
  sub_239BD38CC(a1, a4, v74, v31, v32, a14, v75, v76);
  v77.i16[0] = v482;
  v77.i16[1] = v14;
  v77.i16[2] = a9;
  v77.i16[3] = a10;
  LODWORD(v494) = vmovn_s16(v77).u32[0];
  *&v493 = __PAIR64__(v31, objc_msgSend_columns(*a5, v78, v79, v80, v81, v82, v83, v84));
  DWORD2(v493) = objc_msgSend_rowBytes(*a5, v85, v86, v87, v88, v89, v90, v91) >> 2;
  if (v477 == 268435472)
  {
    v99 = objc_msgSend_columns(a2, v92, v93, v94, v95, v96, v97, v98);
  }

  else
  {
    v99 = objc_msgSend_rows(a2, v92, v93, v94, v95, v96, v97, v98);
  }

  v102 = v99 / a11;
  DWORD1(v494) = v102;
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    v110 = ComputeState;
    v468 = v74;
    v476 = v14;
    objc_msgSend_setComputePipelineState_(v481, v104, ComputeState, v105, v106, v107, v108, v109);
    v118 = objc_msgSend_threadExecutionWidth(v110, v111, v112, v113, v114, v115, v116, v117);
    if (v118 <= 1)
    {
      v119 = 1;
    }

    else
    {
      v119 = v118;
    }

    MPSLibrary::ReleaseComputeState();
    v120 = (v102 + v119 - 1) / v119;
    objc_msgSend_setBytes_length_atIndex_(v481, v121, &v493, 32, 0, v122, v123, v124);
    v132 = objc_msgSend_rowBytes(*a5, v125, v126, v127, v128, v129, v130, v131) * a13;
    v140 = v132 + (objc_msgSend_dataType(*a5, v133, v134, v135, v136, v137, v138, v139) >> 3) * a12;
    v148 = objc_msgSend_data(*a5, v141, v142, v143, v144, v145, v146, v147);
    objc_msgSend_setBuffer_offset_atIndex_(v481, v149, v148, v140, 1, v150, v151, v152);
    v160 = objc_msgSend_rowBytes(a2, v153, v154, v155, v156, v157, v158, v159);
    v168 = objc_msgSend_rows(a2, v161, v162, v163, v164, v165, v166, v167);
    if (a3)
    {
      v176 = objc_msgSend_data(a3, v169, v170, v171, v172, v173, v174, v175);
      objc_msgSend_setBuffer_offset_atIndex_(v481, v177, v176, 0, 2, v178, v179, v180);
    }

    else
    {
      v187 = v168 * v160;
      v188 = objc_msgSend_data(a2, v169, v170, v171, v172, v173, v174, v175);
      objc_msgSend_setBuffer_offset_atIndex_(v481, v189, v188, v187, 2, v190, v191, v192);
    }

    v485 = v32 - v484;
    v492[0] = v120;
    v492[1] = a11;
    v492[2] = v31;
    v488 = v119;
    v489 = vdupq_n_s64(1uLL);
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v481, v181, v492, &v488, v182, v183, v184, v185);
    v193 = MEMORY[0x277CD7258];
    v201 = objc_msgSend_rows(a2, v194, v195, v196, v197, v198, v199, v200);
    v209 = objc_msgSend_columns(a2, v202, v203, v204, v205, v206, v207, v208);
    v217 = objc_msgSend_rowBytes(a2, v210, v211, v212, v213, v214, v215, v216);
    v225 = objc_msgSend_dataType(a2, v218, v219, v220, v221, v222, v223, v224);
    v229 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(v193, v226, v201, v209, v217, v225, v227, v228);
    v230 = objc_alloc(MEMORY[0x277CD7250]);
    v238 = objc_msgSend_data(a2, v231, v232, v233, v234, v235, v236, v237);
    v251 = objc_msgSend_initWithBuffer_descriptor_(v230, v239, v238, v229, v240, v241, v242, v243);
    v252 = 3;
    if (v477 == 268435472)
    {
      v252 = 4;
    }

    v253 = a1[v252];
    if (v477 == 268435472)
    {
      v254 = objc_msgSend_rows(v229, v244, v245, v246, v247, v248, v249, v250);
      objc_msgSend_setK_(v253, v255, v254, v256, v257, v258, v259, v260);
      v282 = objc_msgSend_columns(v229, v261, v262, v263, v264, v265, v266, v267);
    }

    else
    {
      v268 = objc_msgSend_columns(v229, v244, v245, v246, v247, v248, v249, v250);
      objc_msgSend_setK_(v253, v269, v268, v270, v271, v272, v273, v274);
      v282 = objc_msgSend_rows(v229, v275, v276, v277, v278, v279, v280, v281);
    }

    v101 = v474;
    v14 = v476;
    objc_msgSend_setN_(v253, v283, v282, v284, v285, v286, v287, v288);
    objc_msgSend_setM_(v253, v289, v31, v290, v291, v292, v293, v294);
    *&v493 = a13;
    *(&v493 + 1) = a12;
    *&v494 = 0;
    objc_msgSend_setResultMatrixOrigin_(v253, v295, &v493, v296, v297, v298, v299, v300);
    objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v253, v301, v472[1], v481, v468, v251, *a5, v302);

    v100 = a2;
    if (v31 >= v28)
    {
      goto LABEL_76;
    }

LABEL_34:
    v303.i16[0] = v482;
    v303.i16[1] = v14;
    v303.i16[2] = a9;
    v303.i16[3] = a10;
    v469 = vuzp1_s8(v303, v303).u32[0];
    v467 = v15;
    while (1)
    {
      v340 = objc_msgSend_data(v100, v20, v21, v22, v23, v24, v25, v26);
      v478 = objc_msgSend_rowBytes(v100, v341, v342, v343, v344, v345, v346, v347);
      v489.i32[0] = v478;
      if (objc_msgSend_dataType(v100, v348, v349, v350, v351, v352, v353, v354) == 268435488)
      {
        break;
      }

      if (objc_msgSend_dataType(v100, v355, v356, v357, v358, v359, v360, v361) == 268435472)
      {
        v362 = 1;
        goto LABEL_40;
      }

LABEL_41:
      LODWORD(v488) = objc_msgSend_columns(v100, v355, v356, v357, v358, v359, v360, v361);
      HIDWORD(v488) = objc_msgSend_rows(v100, v363, v364, v365, v366, v367, v368, v369) / a11;
      objc_msgSend_dataType(v100, v370, v371, v372, v373, v374, v375, v376);
      if (v28 - v31 >= 0x10)
      {
        v377 = 16;
      }

      else
      {
        v377 = v28 - v31;
      }

      v480 = v377;
      v385 = (*(*v470 + 32))(v470, v488, HIDWORD(v488));
      v386 = 0;
      do
      {
        if (objc_msgSend_rows(a4[v386], v378, v379, v380, v381, v382, v383, v384) < 2)
        {
          v387 = 0;
          if (++v386 >= v15)
          {
            break;
          }
        }

        else
        {
          v387 = (objc_msgSend_rowBytes(a4[v386++], v378, v379, v380, v381, v382, v383, v384) & 0xF) != 0;
          if (v386 >= v15)
          {
            break;
          }
        }
      }

      while (!v387);
      MPSLibrary::CreateUberShaderKey();
      PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
      if (!PipelineStateForMPSKey)
      {
        goto LABEL_76;
      }

      v395 = PipelineStateForMPSKey;
      v396 = v340;
      v397 = v385;
      objc_msgSend_setComputePipelineState_(v481, v389, PipelineStateForMPSKey, v390, v391, v392, v393, v394, 0, 0);
      v405 = objc_msgSend_threadExecutionWidth(v395, v398, v399, v400, v401, v402, v403, v404);
      if (v405 <= 1)
      {
        v406 = 1;
      }

      else
      {
        v406 = v405;
      }

      MPSLibrary::ReleaseMPSKey();
      v411 = v406 / v397;
      if (v406 / v397 <= 1)
      {
        v411 = 1;
      }

      v483 = v411;
      objc_msgSend_setBuffer_offset_atIndex_(v481, v407, v396, 0, 1, v408, v409, v410);
      if (a3)
      {
        v419 = objc_msgSend_data(a3, v412, v413, v414, v415, v416, v417, v418);
        objc_msgSend_setBuffer_offset_atIndex_(v481, v420, v419, 0, 30, v421, v422, v423);
      }

      else
      {
        objc_msgSend_setBuffer_offset_atIndex_(v481, v412, v396, v478 * a11 * HIDWORD(v488), 30, v416, v417, v418);
      }

      v431 = a14;
      v489.i32[2] = v469;
      v432 = *a5;
      v489.i32[3] = objc_msgSend_rowBytes(*a5, v424, v425, v426, v427, v428, v429, v430) >> 2;
      v101 = v474;
      v15 = v467;
      if (objc_msgSend_dataType(v432, v433, v434, v435, v436, v437, v438, v439) == 268435488)
      {
        v447 = 2;
LABEL_63:
        v489.i32[3] = v489.i32[3] >> v447;
        goto LABEL_64;
      }

      if (objc_msgSend_dataType(v432, v440, v441, v442, v443, v444, v445, v446) == 268435472)
      {
        v447 = 1;
        goto LABEL_63;
      }

LABEL_64:
      v491 = a11;
      v479 = HIDWORD(v488);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v481, v440, 4 * v397 * v483 + ((4 * v397 * v483) >> 1), 0, v443, v444, v445, v446);
      v455 = 0;
      v499 = 0u;
      v500 = 0u;
      v497 = 0u;
      v498 = 0u;
      v495 = 0u;
      v496 = 0u;
      v493 = 0u;
      v494 = 0u;
      v456 = v485;
      v490 = 0;
      do
      {
        if (v31 + v455 >= v28)
        {
          v492[v455] = objc_msgSend_data(*a4, v448, v449, v450, v451, v452, v453, v454);
          goto LABEL_66;
        }

        ++v490;
        v457 = &v474[8 * v456];
        if (v31 + v455 == *v457)
        {
          ++v456;
          ++v485;
          *(&v493 + v455) = 0;
          v492[v455] = objc_msgSend_data(a4[v456], v448, v449, v450, v451, v452, v453, v454);
          if (v431)
          {
            goto LABEL_75;
          }
        }

        else
        {
          if (v456)
          {
            v458 = *(v457 - 1);
          }

          else
          {
            v458 = 0;
          }

          v459 = objc_msgSend_rowBytes(a4[v456], v448, v449, v450, v451, v452, v453, v454) * (v31 + v455 - v458);
          v431 = a14;
          *(&v493 + v455) = v459;
          v492[v455] = objc_msgSend_data(a4[v456], v460, v461, v462, v463, v464, v465, v466);
          if (a14)
          {
LABEL_75:
            *(&v493 + v455) += *(v431 + 8 * v456);
          }
        }

LABEL_66:
        ++v455;
      }

      while (v455 != 16);
      objc_msgSend_setBytes_length_atIndex_(v481, v448, &v488, 32, 0, v452, v453, v454);
      v311 = objc_msgSend_rowBytes(v432, v304, v305, v306, v307, v308, v309, v310) * (v31 + a13);
      v319 = v311 + (objc_msgSend_dataType(v432, v312, v313, v314, v315, v316, v317, v318) >> 3) * a12;
      v327 = objc_msgSend_data(v432, v320, v321, v322, v323, v324, v325, v326);
      objc_msgSend_setBuffer_offset_atIndex_(v481, v328, v327, v319, 2, v329, v330, v331);
      objc_msgSend_setBuffers_offsets_withRange_(v481, v332, v492, &v493, 3, v480, v333, v334);
      v487[0] = (v483 - 1 + v479) / v483;
      v487[1] = a11;
      v487[2] = 1;
      v486[0] = v397;
      v486[1] = v483;
      v486[2] = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v481, v335, v487, v486, v336, v337, v338, v339);
      v31 += 16;
      v100 = a2;
      if (v31 >= v28)
      {
        goto LABEL_76;
      }
    }

    v362 = 2;
LABEL_40:
    v489.i32[0] >>= v362;
    goto LABEL_41;
  }

  v186 = v474;
LABEL_77:
  free(v186);
}

uint64_t sub_239BD38CC(uint64_t a1, const char *a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v119 = a4;
  v131 = *MEMORY[0x277D85DE8];
  v112 = objc_msgSend_rowBytes(a3, a2, a3, a4, a5, a6, a7, a8);
  v125[0] = objc_msgSend_columns(a3, v11, v12, v13, v14, v15, v16, v17);
  v125[1] = v112 >> 2;
  v121 = a2;
  v125[2] = objc_msgSend_rowBytes(*a2, v18, v19, v20, v21, v22, v23, v24) >> 2;
  v115 = *(a1 + 16);
  result = MPSLibrary::GetComputeState();
  if (result)
  {
    v32 = result;
    objc_msgSend_setComputePipelineState_(v115, v26, result, v27, v28, v29, v30, v31);
    v40 = objc_msgSend_threadExecutionWidth(v32, v33, v34, v35, v36, v37, v38, v39);
    v41 = v40;
    v42 = v40 <= 1 ? 1 : v40;
    v111 = v42;
    result = MPSLibrary::ReleaseComputeState();
    if (a5)
    {
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v122 = a5 - 1;
      v54 = v111 >> 2;
      if (v41 < 4)
      {
        v54 = 1;
      }

      v110 = v54;
      v120 = a6;
      v55 = a2;
      v56 = v111;
      v116 = 1;
      do
      {
        v117 = v56;
        v118 = v51;
        memset(v130, 0, sizeof(v130));
        LODWORD(v78) = 0;
        if (a6)
        {
          v79 = 0;
          v80 = 0;
          v81 = 1;
          v82 = v128;
          do
          {
            while (v53 + v80 >= a5)
            {
              v129[v80] = objc_msgSend_data(*v121, v43, v44, v45, v46, v47, v48, v49);
              *(v82 - 28) = 0;
              *(v130 + v80++) = 0;
              ++v82;
              if (v80 == 28)
              {
                goto LABEL_22;
              }
            }

            v129[v80] = objc_msgSend_data(*&v55[8 * v80], v43, v44, v45, v46, v47, v48, v49);
            v90 = objc_msgSend_rows(*&v55[8 * v80], v83, v84, v85, v86, v87, v88, v89);
            v91 = v90;
            *(v82 - 28) = v90;
            if (v90 > v50)
            {
              v50 = v90;
            }

            *v82 = v79;
            if (v122 == v80)
            {
              v91 = (v119 - v52);
              *(v82 - 28) = v119 - v52;
            }

            LODWORD(v78) = v78 + 1;
            v52 += v91;
            v79 += v91;
            v92 = *(v120 + 8 * v80);
            *(v130 + v80) = v92;
            if ((v92 & 0xF) != 0)
            {
              v81 = 0;
            }

            ++v80;
            ++v82;
          }

          while (v80 != 28);
LABEL_22:
          v56 = v117;
          if (v50 <= 0x1F)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v98 = 0;
          v99 = 0;
          v100 = v128;
          do
          {
            while (v53 + v99 >= a5)
            {
              v129[v99] = objc_msgSend_data(*v121, v43, v44, v45, v46, v47, v48, v49);
              *(v100 - 28) = 0;
              *(v130 + v99++) = 0;
              ++v100;
              if (v99 == 28)
              {
                goto LABEL_43;
              }
            }

            v129[v99] = objc_msgSend_data(*&v55[8 * v99], v43, v44, v45, v46, v47, v48, v49);
            v108 = objc_msgSend_rows(*&v55[8 * v99], v101, v102, v103, v104, v105, v106, v107);
            v109 = v108;
            *(v100 - 28) = v108;
            if (v108 > v50)
            {
              v50 = v108;
            }

            *v100 = v98;
            if (v122 == v99)
            {
              v109 = (v119 - v52);
              *(v100 - 28) = v119 - v52;
            }

            LODWORD(v78) = v78 + 1;
            v52 += v109;
            v98 += v109;
            ++v99;
            ++v100;
          }

          while (v99 != 28);
LABEL_43:
          v81 = 1;
          if (v50 <= 0x1F)
          {
LABEL_44:
            v97 = 1;
            v78 = v78;
            if (v78 <= 0xF)
            {
              goto LABEL_45;
            }

            goto LABEL_9;
          }
        }

        v93 = v125[0] < 0x200u;
        v94 = 1;
        if (v125[0] >= 0x200u)
        {
          v95 = 1;
        }

        else
        {
          v95 = 2;
        }

        if (v125[0] >= 0x200u)
        {
          v94 = 2;
        }

        v96 = v111 << v94;
        if (v125[0] >= 0x80u)
        {
          v56 = v96;
        }

        else
        {
          v95 = 4;
          v56 = v110;
        }

        v116 = v95;
        if (v125[0] < 0x80u)
        {
          v93 = 2;
        }

        v97 = (v95 + (v50 >> 3) - 1) >> v93;
        v78 = v78;
        if (v78 <= 0xF)
        {
LABEL_45:
          if (4 * v56)
          {
            v57 = (4 * v56 + v125[0] - 1) / (4 * v56);
          }

          else
          {
            v57 = 0;
          }

          goto LABEL_10;
        }

LABEL_9:
        v57 = 1;
LABEL_10:
        v126 = v78;
        v127 = v81;
        objc_msgSend_setBytes_length_atIndex_(v115, v43, v125, 128, 0, v47, v48, v49, v110);
        v65 = objc_msgSend_data(a3, v58, v59, v60, v61, v62, v63, v64);
        objc_msgSend_setBuffer_offset_atIndex_(v115, v66, v65, v118, 1, v67, v68, v69);
        objc_msgSend_setBuffers_offsets_withRange_(v115, v70, v129, v130, 2, 28, v71, v72);
        v124[0] = v57;
        v124[1] = v97;
        v124[2] = v78;
        v123[0] = v56;
        v123[1] = v116;
        v123[2] = 1;
        result = objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v115, v73, v124, v123, v74, v75, v76, v77);
        v51 = v52 * v112;
        v53 += 28;
        v55 += 224;
        v122 -= 28;
        v120 += 224;
      }

      while (v53 < a5);
    }
  }

  return result;
}

uint64_t sub_239BD3D54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  v3 = MPSCreateFunctionConstantValues();
  v15 = v2;
  objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v15, 41, 8, v5, v6, v7);
  v14 = BYTE4(v2) & 1;
  objc_msgSend_setConstantValue_type_atIndex_(v3, v8, &v14, 53, 9, v9, v10, v11);
  v12 = _MPSNewSpecializedFunction();

  return v12;
}

float sub_239BD3DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  if (a6)
  {
    if (!a7)
    {
      goto LABEL_5;
    }

LABEL_7:
    v15 = a8;
    if (a8)
    {
      v16 = 0;
    }

    else
    {
      v16 = a7;
    }

    *(a1 + 12) = 0;
    *(a1 + 28) = 0;
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

  v9 = *(a2 + 8);
  if (a7)
  {
    goto LABEL_7;
  }

LABEL_5:
  a7 = *(a2 + 16);
  if (a7 || *(a2 + 24))
  {
    goto LABEL_7;
  }

  v15 = 0;
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(a2 + 16);
  }

  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  if (v9)
  {
LABEL_11:
    v17 = objc_msgSend_dataType(v9, a2, a3, a4, a5, a6, a7, a8) >> 3;
    if (v16)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = 4;
  if (v16)
  {
LABEL_12:
    v18 = objc_msgSend_dataType(v16, a2, a3, a4, a5, a6, a7, a8);
    if (v17 == 2)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    if (v17 >= 4)
    {
      v19 = 4;
    }

    if (v18 >> 3 == 2)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    if (((v18 >> 3) & 0x1FFC) != 0)
    {
      v20 = 4;
    }

    if (v10)
    {
      v21 = v19 - 2;
    }

    else
    {
      v21 = v19;
    }

    if (v10)
    {
      v22 = v20 - 2;
    }

    else
    {
      v22 = v20;
    }

    if (!v12)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

LABEL_35:
  v23 = 2;
  if (v17 == 2)
  {
    v23 = 3;
  }

  if (v17 >= 4)
  {
    v23 = 4;
  }

  if (v10)
  {
    v21 = v23 - 2;
  }

  else
  {
    v21 = v23;
  }

  if (v10)
  {
    v22 = 2;
  }

  else
  {
    v22 = 4;
  }

  if (!v12)
  {
    goto LABEL_50;
  }

LABEL_46:
  if ((v10 & 1) == 0)
  {
    if (v9)
    {
      *(a1 + 8) = objc_msgSend_rowBytes(v9, a2, a3, a4, a5, a6, a7, a8);
      *a1 = objc_msgSend_columns(v9, v24, v25, v26, v27, v28, v29, v30);
      if (!v16)
      {
        goto LABEL_62;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      *a1 = 0;
      if (!v16)
      {
        goto LABEL_62;
      }
    }

    *(a1 + 24) = objc_msgSend_rowBytes(v16, a2, a3, a4, a5, a6, a7, a8);
    v47 = a9;
    *(a1 + 16) = objc_msgSend_columns(v16, v48, v49, v50, v51, v52, v53, v54);
    if (!v9)
    {
      goto LABEL_61;
    }

    goto LABEL_63;
  }

LABEL_50:
  if (v10)
  {
    v31 = 0;
  }

  else
  {
    v31 = 2;
  }

  if (v9)
  {
    *(a1 + 8) = objc_msgSend_rowBytes(v9, a2, a3, a4, a5, a6, a7, a8) >> v21;
    *a1 = objc_msgSend_columns(v9, v32, v33, v34, v35, v36, v37, v38) >> v31;
    if (!v16)
    {
LABEL_62:
      *(a1 + 24) = 0;
      v47 = a9;
      *(a1 + 16) = 0;
      if (v9)
      {
        goto LABEL_63;
      }

LABEL_61:
      v55 = 0;
      goto LABEL_64;
    }
  }

  else
  {
    *(a1 + 8) = 0;
    *a1 = 0;
    if (!v16)
    {
      goto LABEL_62;
    }
  }

  *(a1 + 24) = objc_msgSend_rowBytes(v16, a2, a3, a4, a5, a6, a7, a8) >> v22;
  v46 = objc_msgSend_columns(v16, v39, v40, v41, v42, v43, v44, v45) >> v31;
  v47 = a9;
  *(a1 + 16) = v46;
  if (!v9)
  {
    goto LABEL_61;
  }

LABEL_63:
  v55 = objc_msgSend_rows(v9, a2, a3, a4, a5, a6, a7, a8);
LABEL_64:
  v56 = *a1;
  v56.i32[1] = v55;
  if (((v9 != 0) & v47) != 0)
  {
    v58 = -1;
  }

  else
  {
    v58 = 0;
  }

  v57.i32[1] = v55 >> 2;
  v57.i32[0] = *a1;
  *a1 = vbsl_s8(vdup_n_s32(v58), v57, v56);
  if (v16)
  {
    v59 = objc_msgSend_rows(v16, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v59 = 0;
  }

  *(a1 + 20) = v59;
  if (v16)
  {
    v60 = (32 * (v9 != 0)) | 0x40;
  }

  else
  {
    v60 = 32 * (v9 != 0);
  }

  if (v15)
  {
    v60 |= 0x80u;
  }

  if (v11)
  {
    v60 |= 0x100u;
  }

  v61 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 44);
  result = *(a2 + 52);
  *(a1 + 40) = result;
  *(a1 + 44) = v61 | v60;
  return result;
}

void sub_239BD40C4(unint64_t a1, unint64_t a2, const char *a3, uint64_t a4, void **a5, uint64_t *a6, void *a7, uint64_t a8, void **a9, void **a10, uint64_t a11, int a12, unsigned __int8 a13)
{
  v15 = a2;
  v2376 = *MEMORY[0x277D85DE8];
  if (a12 == 2)
  {
    v2250 = a8;
    v2201 = 268435472;
    v120 = *(a11 + 56);
    v121 = v120 + 3;
    v2257 = *(a1 + 16);
    v2217 = v120;
    v2157 = 4 * v120;
    v2206 = 16 * v120;
    v129 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], a2, 1, 4 * v120, 16 * v120, 268435488, a7, a8);
    v130 = 0;
    v131 = 0;
    do
    {
      v130 += objc_msgSend_rows(*&a3[8 * v131++], v122, v123, v124, v125, v126, v127, v128);
    }

    while (v15 != v131);
    v2192 = v121 & 0xFFFFFFFFFFFFFFFCLL;
    TempBuffer = MPSAutoCache::GetTempBuffer(*(a1 + 72), v130 * v2206, 0);
    objc_msgSend_setRows_(v129, v133, v130, v134, v135, v136, v137, v138);
    v139 = objc_alloc(MEMORY[0x277CD7250]);
    v2254 = objc_msgSend_initWithBuffer_descriptor_(v139, v140, TempBuffer, v129, v141, v142, v143, v144);
    v2147 = *(a11 + 168);
    v2148 = *(a11 + 240);
    v2276 = *(a11 + 104);
    v2261 = *(a11 + 176);
    v2263 = *(a11 + 248);
    v2149 = *(a11 + 312);
    v2189 = v129;
    v2269 = *(a11 + 320);
    v151 = *(a1 + 88);
    if (!v151)
    {
      v2146 = *(a11 + 96);
      v2161 = v130;
      v2128 = 0;
      v2129 = 0;
      v2171 = 0;
      v2131 = 0;
      v2132 = 0;
      v2133 = 0;
      v2134 = 0;
      v2142 = 0;
      v2143 = 0;
      v2135 = 0;
      v2136 = 0;
      v2130 = 0;
      v2140 = 0;
      v2141 = 0;
      v2144 = 0;
      v2139 = 0;
      v157 = 0;
      v155 = 0;
      v154 = 0;
      goto LABEL_108;
    }

    v152 = *(a11 + 88);
    if (*(v152 + 48))
    {
      v153 = objc_msgSend_objectAtIndexedSubscript_(v151, v145, *(v152 + 56), v146, v147, v148, v149, v150);
      v152 = *(a11 + 88);
      v2139 = a6[*(v152 + 56)];
      v2146 = v153;
      if (*(v152 + 64))
      {
        goto LABEL_36;
      }
    }

    else
    {
      v2139 = 0;
      v2146 = *(a11 + 96);
      if (*(v152 + 64))
      {
LABEL_36:
        v2276 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v145, *(v152 + 72), v146, v147, v148, v149, v150);
        v152 = *(a11 + 88);
        v2141 = a6[*(v152 + 72)];
        if (*(v152 + 80))
        {
          goto LABEL_37;
        }

        goto LABEL_93;
      }
    }

    v2141 = 0;
    if (*(v152 + 80))
    {
LABEL_37:
      v154 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v145, *(v152 + 88), v146, v147, v148, v149, v150);
      v152 = *(a11 + 88);
      v2144 = a6[*(v152 + 88)];
      if (*(v152 + 96))
      {
        goto LABEL_38;
      }

      goto LABEL_94;
    }

LABEL_93:
    v2144 = 0;
    v154 = 0;
    if (*(v152 + 96))
    {
LABEL_38:
      v2140 = a6[*(v152 + 104)];
      if (*(v152 + 112))
      {
        goto LABEL_39;
      }

      goto LABEL_95;
    }

LABEL_94:
    v2140 = 0;
    if (*(v152 + 112))
    {
LABEL_39:
      v2147 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v145, *(v152 + 120), v146, v147, v148, v149, v150);
      v152 = *(a11 + 88);
      v2136 = a6[*(v152 + 120)];
      if (*(v152 + 128))
      {
        goto LABEL_40;
      }

      goto LABEL_96;
    }

LABEL_95:
    v2136 = 0;
    if (*(v152 + 128))
    {
LABEL_40:
      v2261 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v145, *(v152 + 136), v146, v147, v148, v149, v150);
      v152 = *(a11 + 88);
      v2133 = a6[*(v152 + 136)];
      if (*(v152 + 144))
      {
        goto LABEL_41;
      }

      goto LABEL_97;
    }

LABEL_96:
    v2133 = 0;
    if (*(v152 + 144))
    {
LABEL_41:
      v155 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v145, *(v152 + 152), v146, v147, v148, v149, v150);
      v152 = *(a11 + 88);
      v2142 = a6[*(v152 + 152)];
      if (*(v152 + 160))
      {
        goto LABEL_42;
      }

      goto LABEL_98;
    }

LABEL_97:
    v2142 = 0;
    v155 = 0;
    if (*(v152 + 160))
    {
LABEL_42:
      v2130 = a6[*(v152 + 168)];
      if (*(v152 + 176))
      {
        goto LABEL_43;
      }

      goto LABEL_99;
    }

LABEL_98:
    v2130 = 0;
    if (*(v152 + 176))
    {
LABEL_43:
      v2148 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v145, *(v152 + 184), v146, v147, v148, v149, v150);
      v152 = *(a11 + 88);
      v2135 = a6[*(v152 + 184)];
      if (*(v152 + 192))
      {
        goto LABEL_44;
      }

      goto LABEL_100;
    }

LABEL_99:
    v2135 = 0;
    if (*(v152 + 192))
    {
LABEL_44:
      v2263 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v145, *(v152 + 200), v146, v147, v148, v149, v150);
      v152 = *(a11 + 88);
      v2132 = a6[*(v152 + 200)];
      if (*(v152 + 208))
      {
        goto LABEL_45;
      }

      goto LABEL_101;
    }

LABEL_100:
    v2132 = 0;
    if (*(v152 + 208))
    {
LABEL_45:
      v156 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v145, *(v152 + 216), v146, v147, v148, v149, v150);
      v152 = *(a11 + 88);
      v2143 = a6[*(v152 + 216)];
      if (*(v152 + 224))
      {
        goto LABEL_46;
      }

      goto LABEL_102;
    }

LABEL_101:
    v2143 = 0;
    v156 = 0;
    if (*(v152 + 224))
    {
LABEL_46:
      v2129 = a6[*(v152 + 232)];
      if (*(v152 + 240))
      {
        goto LABEL_47;
      }

      goto LABEL_103;
    }

LABEL_102:
    v2129 = 0;
    if (*(v152 + 240))
    {
LABEL_47:
      v2149 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v145, *(v152 + 248), v146, v147, v148, v149, v150);
      v152 = *(a11 + 88);
      v2134 = a6[*(v152 + 248)];
      if (*(v152 + 256))
      {
        goto LABEL_48;
      }

      goto LABEL_104;
    }

LABEL_103:
    v2134 = 0;
    if (*(v152 + 256))
    {
LABEL_48:
      v2269 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v145, *(v152 + 264), v146, v147, v148, v149, v150);
      v152 = *(a11 + 88);
      v2131 = a6[*(v152 + 264)];
      v2161 = v130;
      if (*(v152 + 272))
      {
        goto LABEL_49;
      }

      goto LABEL_105;
    }

LABEL_104:
    v2131 = 0;
    v2161 = v130;
    if (*(v152 + 272))
    {
LABEL_49:
      v151 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v145, *(v152 + 280), v146, v147, v148, v149, v150);
      v152 = *(a11 + 88);
      v2171 = a6[*(v152 + 280)];
      if (*(v152 + 288))
      {
LABEL_50:
        v2128 = a6[*(v152 + 296)];
LABEL_107:
        v157 = v156;
LABEL_108:
        v2168 = a3;
        v2235 = v151;
        if (*(a11 + 418))
        {
          v282 = 1;
        }

        else
        {
          v282 = v151 == 0;
        }

        v283 = !v282;
        v2204 = v283;
        v284 = v154;
        v2244 = v155;
        v2240 = v157;
        v285 = v154 | v155 | v157;
        v2175 = v285 != 0;
        if (v285)
        {
          v286 = 2 * v2192;
        }

        else
        {
          v286 = v2192;
        }

        v2145 = 2 * v2217;
        if (v285)
        {
          v287 = 2 * v2217;
        }

        else
        {
          v287 = v2217;
        }

        v2179 = 8 * v15;
        v288 = malloc_type_malloc(8 * v15, 0x100004000313F17uLL);
        v296 = v288;
        v297 = v15 - 1;
        v2159 = v15 - 1;
        v298 = 0;
        if (v15 != 1)
        {
          v299 = (a4 + 8);
          v300 = v288;
          do
          {
            v301 = *v299++;
            v302 = objc_msgSend_rows(v301, v289, v290, v291, v292, v293, v294, v295);
            *v300++ = v302;
            v298 += v302;
            --v297;
          }

          while (v297);
        }

        v303 = a7;
        if (a7)
        {
          v303 = objc_msgSend_rows(a7, v289, v290, v291, v292, v293, v294, v295);
        }

        *&v296[8 * v2159] = v303;
        v304 = 4 * v286;
        v305 = v303 + v298;
        if (v305)
        {
          v306 = MPSAutoCache::GetTempBuffer(*(a1 + 72), v305 * v304, 0);
          objc_msgSend_setColumns_(v2189, v307, v287, v308, v309, v310, v311, v312);
          objc_msgSend_setRows_(v2189, v313, v305, v314, v315, v316, v317, v318);
          objc_msgSend_setRowBytes_(v2189, v319, v304, v320, v321, v322, v323, v324);
          v325 = objc_alloc(MEMORY[0x277CD7250]);
          v331 = objc_msgSend_initWithBuffer_descriptor_(v325, v326, v306, v2189, v327, v328, v329, v330);
        }

        else
        {
          v331 = 0;
        }

        v2328 = *(a11 + 392);
        *&v332 = *(a11 + 396);
        v2338 = v2217;
        DWORD2(v332) = *(a11 + 404);
        HIDWORD(v332) = *(a11 + 420);
        v2325 = v332;
        v2330 = *(a11 + 419);
        v2212 = v331;
        if (v331)
        {
          LODWORD(v331) = objc_msgSend_rowBytes(v331, v289, v290, v291, v292, v293, v294, v295);
        }

        v2248 = v305;
        v2340 = v331;
        if (v2276)
        {
          v2231 = objc_msgSend_data(v2276, v289, v290, v291, v292, v293, v294, v295);
          objc_msgSend_rowBytes(v2276, v333, v334, v335, v336, v337, v338, v339);
          v2198 = v304;
          if (v284)
          {
            goto LABEL_132;
          }
        }

        else
        {
          v2231 = 0;
          v2198 = v304;
          if (v284)
          {
LABEL_132:
            v2154 = objc_msgSend_data(v284, v289, v290, v291, v292, v293, v294, v295);
            objc_msgSend_rowBytes(v284, v340, v341, v342, v343, v344, v345, v346);
            v347 = v2261;
            if (v2261)
            {
              goto LABEL_133;
            }

            goto LABEL_141;
          }
        }

        v2154 = 0;
        v347 = v2261;
        if (v2261)
        {
LABEL_133:
          v2228 = objc_msgSend_data(v347, v289, v290, v291, v292, v293, v294, v295);
          objc_msgSend_rowBytes(v347, v348, v349, v350, v351, v352, v353, v354);
          v2210 = v296;
          v355 = v2244;
          if (v2244)
          {
            goto LABEL_134;
          }

          goto LABEL_142;
        }

LABEL_141:
        v2228 = 0;
        v2210 = v296;
        v355 = v2244;
        if (v2244)
        {
LABEL_134:
          v2151 = objc_msgSend_data(v355, v289, v290, v291, v292, v293, v294, v295);
          objc_msgSend_rowBytes(v355, v356, v357, v358, v359, v360, v361, v362);
          v363 = v2263;
          if (v2263)
          {
            goto LABEL_135;
          }

          goto LABEL_143;
        }

LABEL_142:
        v2151 = 0;
        v363 = v2263;
        if (v2263)
        {
LABEL_135:
          v2223 = objc_msgSend_data(v363, v289, v290, v291, v292, v293, v294, v295);
          objc_msgSend_rowBytes(v363, v364, v365, v366, v367, v368, v369, v370);
          v2164 = a5;
          v371 = v2240;
          if (v2240)
          {
            goto LABEL_136;
          }

          goto LABEL_144;
        }

LABEL_143:
        v2223 = 0;
        v2164 = a5;
        v371 = v2240;
        if (v2240)
        {
LABEL_136:
          v2138 = objc_msgSend_data(v371, v289, v290, v291, v292, v293, v294, v295);
          objc_msgSend_rowBytes(v371, v372, v373, v374, v375, v376, v377, v378);
          v379 = v2269;
          if (v2269)
          {
            goto LABEL_137;
          }

          goto LABEL_145;
        }

LABEL_144:
        v2138 = 0;
        v379 = v2269;
        if (v2269)
        {
LABEL_137:
          v2214 = objc_msgSend_data(v379, v289, v290, v291, v292, v293, v294, v295);
          objc_msgSend_rowBytes(v379, v380, v381, v382, v383, v384, v385, v386);
          v387 = v2235;
          if (v2235)
          {
LABEL_138:
            v2137 = objc_msgSend_data(v387, v289, v290, v291, v292, v293, v294, v295);
            objc_msgSend_rowBytes(v387, v388, v389, v390, v391, v392, v393, v394);
            goto LABEL_147;
          }

LABEL_146:
          v2137 = 0;
LABEL_147:
          v2284 = objc_msgSend_data(v2254, v289, v290, v291, v292, v293, v294, v295);
          if ((!v2276 || (objc_msgSend_columns(v2276, v395, v396, v397, v398, v399, v400, v401) & 3) == 0) && (!v284 || (objc_msgSend_columns(v284, v395, v396, v397, v398, v399, v400, v401) & 3) == 0) && (!v2261 || (objc_msgSend_columns(v2261, v395, v396, v397, v398, v399, v400, v401) & 3) == 0) && (!v2244 || (objc_msgSend_columns(v2244, v395, v396, v397, v398, v399, v400, v401) & 3) == 0) && (!v2263 || (objc_msgSend_columns(v2263, v395, v396, v397, v398, v399, v400, v401) & 3) == 0) && (!v2240 || (objc_msgSend_columns(v2240, v395, v396, v397, v398, v399, v400, v401) & 3) == 0) && (!v2269 || (objc_msgSend_columns(v2269, v395, v396, v397, v398, v399, v400, v401) & 3) == 0) && v2235)
          {
            objc_msgSend_columns(v2235, v395, v396, v397, v398, v399, v400, v401);
          }

          v402 = 1;
          if ((*(a11 + 416) & 1) == 0 && !v2146)
          {
            v402 = *(a11 + 72);
          }

          v403 = 1;
          sub_239BD3DF8(&v2289, a11 + 96, 1, v402 & 1, 1, v2276, v284, *(a11 + 418), *(a11 + 417));
          if ((*(a11 + 416) & 1) == 0 && !v2147)
          {
            v403 = *(a11 + 72);
          }

          v404 = 1;
          sub_239BD3DF8(&v2296, a11 + 168, 1, v403 & 1, 1, v2261, v2244, *(a11 + 418), *(a11 + 417));
          if ((*(a11 + 416) & 1) == 0 && !v2148)
          {
            v404 = *(a11 + 72);
          }

          v405 = 1;
          sub_239BD3DF8(&v2307, a11 + 240, 1, v404 & 1, 1, v2263, v2240, *(a11 + 418), *(a11 + 417));
          if ((*(a11 + 416) & 1) == 0 && !v2149)
          {
            v405 = *(a11 + 72);
          }

          *&v413 = sub_239BD3DF8(&v2318, a11 + 312, 1, v405 & 1, 1, v2269, v2235, *(a11 + 418), *(a11 + 417));
          if ((!v2276 || objc_msgSend_dataType(v2276, v406, v407, v408, v409, v410, v411, v412, v413) != 268435472) && (!v2261 || objc_msgSend_dataType(v2261, v406, v407, v408, v409, v410, v411, v412, v413) != 268435472) && (!v2263 || objc_msgSend_dataType(v2263, v406, v407, v408, v409, v410, v411, v412, v413) != 268435472) && (!v2269 || objc_msgSend_dataType(v2269, v406, v407, v408, v409, v410, v411, v412, v413) != 268435472))
          {
            v2201 = 536870920;
            if ((!v2276 || objc_msgSend_dataType(v2276, v406, v407, v408, v409, v410, v411, v412, v413) != 536870920) && (!v2261 || objc_msgSend_dataType(v2261, v406, v407, v408, v409, v410, v411, v412, v413) != 536870920) && (!v2263 || objc_msgSend_dataType(v2263, v406, v407, v408, v409, v410, v411, v412, v413) != 536870920) && (!v2269 || objc_msgSend_dataType(v2269, v406, v407, v408, v409, v410, v411, v412, v413) != 536870920))
            {
              v2201 = 268435488;
            }
          }

          v414 = 0;
          v415 = 0;
          if (*(a11 + 120))
          {
            v416 = *(a11 + 120);
          }

          else
          {
            v416 = v2154;
          }

          v2366 = v2231;
          v2367 = v416;
          if (*(a11 + 192))
          {
            v417 = *(a11 + 192);
          }

          else
          {
            v417 = v2151;
          }

          v2368 = v2228;
          v2369 = v417;
          if (*(a11 + 264))
          {
            v418 = *(a11 + 264);
          }

          else
          {
            v418 = v2138;
          }

          v2370 = v2223;
          v2371 = v418;
          if (*(a11 + 336))
          {
            v419 = *(a11 + 336);
          }

          else
          {
            v419 = v2137;
          }

          v2372 = v2214;
          v2373 = v419;
          v2364 = 0u;
          v2365 = 0u;
          v2362 = 0u;
          v2363 = 0u;
          do
          {
            v420 = objc_msgSend_rows(*(a4 + 8 * v415), v406, v407, v408, v409, v410, v411, v412);
            if (v420 > v414)
            {
              v414 = v420;
            }

            ++v415;
          }

          while (a2 != v415);
          if ((*(a11 + 417) & 1) != 0 && ((v421 = objc_msgSend_rowBytes(v2276, v406, v407, v408, v409, v410, v411, v412), *&v2363 = (objc_msgSend_rows(v2276, v422, v423, v424, v425, v426, v427, v428) >> 2) * v421, *&v2364 = 2 * v2363, *&v2365 = 3 * v2363, v2217 < 0x200) || v414 <= 0x3F))
          {
            HIDWORD(v2289) *= 4;
            if (v2231)
            {
LABEL_212:
              if (v416)
              {
                goto LABEL_213;
              }

              goto LABEL_223;
            }
          }

          else if (v2231)
          {
            goto LABEL_212;
          }

          v2366 = v2284;
          if (v416)
          {
LABEL_213:
            if (v2228)
            {
              goto LABEL_214;
            }

            goto LABEL_224;
          }

LABEL_223:
          v2367 = v2284;
          if (v2228)
          {
LABEL_214:
            if (v417)
            {
              goto LABEL_215;
            }

            goto LABEL_225;
          }

LABEL_224:
          v2368 = v2284;
          if (v417)
          {
LABEL_215:
            if (v2223)
            {
              goto LABEL_216;
            }

            goto LABEL_226;
          }

LABEL_225:
          v2369 = v2284;
          if (v2223)
          {
LABEL_216:
            if (v418)
            {
              goto LABEL_217;
            }

            goto LABEL_227;
          }

LABEL_226:
          v2370 = v2284;
          if (v418)
          {
LABEL_217:
            if (v2214)
            {
              goto LABEL_218;
            }

            goto LABEL_228;
          }

LABEL_227:
          v2371 = v2284;
          if (v2214)
          {
LABEL_218:
            v429 = a1;
            v430 = a4;
            if (v419)
            {
              goto LABEL_219;
            }

            goto LABEL_229;
          }

LABEL_228:
          v2372 = v2284;
          v429 = a1;
          v430 = a4;
          if (v419)
          {
LABEL_219:
            if (!a10)
            {
              goto LABEL_232;
            }

LABEL_230:
            if (*(v429 + 80))
            {
              v2152 = 0;
              v2155 = 0;
              goto LABEL_236;
            }

LABEL_232:
            v431 = MPSAutoCache::GetTempBuffer(*(v429 + 72), v414 * 8 * v2192, 0);
            objc_msgSend_setColumns_(v2189, v432, 2 * v2192, v433, v434, v435, v436, v437);
            objc_msgSend_setRows_(v2189, v438, v414, v439, v440, v441, v442, v443);
            objc_msgSend_setRowBytes_(v2189, v444, 8 * v2192, v445, v446, v447, v448, v449);
            v450 = objc_alloc(MEMORY[0x277CD7250]);
            v2155 = objc_msgSend_initWithBuffer_descriptor_(v450, v451, v431, v2189, v452, v453, v454, v455);
            if (a2 < 2)
            {
              v2152 = 0;
            }

            else
            {
              v456 = MPSAutoCache::GetTempBuffer(*(v429 + 72), v414 * 8 * v2192, 0);
              v457 = objc_alloc(MEMORY[0x277CD7250]);
              v2152 = objc_msgSend_initWithBuffer_descriptor_(v457, v458, v456, v2189, v459, v460, v461, v462);
            }

            v430 = a4;
LABEL_236:
            v2195 = HIDWORD(v2295);
            v2193 = v2306;
            v2190 = HIDWORD(v2317);
            v2186 = v2324;
            if (v2254)
            {
              v2337 = objc_msgSend_rowBytes(v2254, v406, v407, v408, v409, v410, v411, v412) >> 2;
              v463 = a7;
              if (a7)
              {
LABEL_238:
                v464 = objc_msgSend_rows(v463, v406, v407, v408, v409, v410, v411, v412);
LABEL_241:
                v465 = 0;
                v466 = 0;
                if (v2175)
                {
                  v467 = 4;
                }

                else
                {
                  v467 = 0;
                }

                v2341 = v467;
                v2182 = *(*v429 + 32);
                v2176 = v467 | 1;
                v2173 = v467 | 2;
                v2262 = &v2210[v2179 - 8];
                v2215 = v2179 - 8;
                v2277 = v430 + v2179 - 8;
                v2270 = a9;
                v2265 = a10;
                v468 = v463;
                v469 = v2152;
                v470 = v2155;
                v2245 = v2161;
                while (1)
                {
                  v2236 = v466;
                  v2347 = xmmword_239D7D5B8;
                  v2348 = 1;
                  v471 = objc_msgSend_rows(*(v2277 + 8 * v465), v406, v407, v408, v409, v410, v411, v412);
                  v472 = v471;
                  if (v464 >= v471)
                  {
                    v473 = v471;
                  }

                  else
                  {
                    v473 = v464;
                  }

                  v2241 = v469;
                  v474 = v429;
                  if (v2210)
                  {
                    v2224 = *&v2262[8 * v465];
                  }

                  else
                  {
                    v2224 = 0;
                  }

                  if (v473 <= 1)
                  {
                    v475 = 1;
                  }

                  else
                  {
                    v475 = v473;
                  }

                  v476 = (*(*v2182 + 104))(v2182, v2201, v2217, v475, &v2347, a2);
                  v2232 = LODWORD(v476);
                  v2229 = HIDWORD(v476);
                  MPSLibrary::CreateUberShaderKey();
                  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
                  v485 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v478, v479, v480, v481, v482, v483, v484, 0, 0, 0, 0, 0);
                  if (v485 <= 1)
                  {
                    v493 = 1;
                  }

                  else
                  {
                    v493 = v485;
                  }

                  v494 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v486, v487, v488, v489, v490, v491, v492);
                  if (v494 <= 1)
                  {
                    v501 = 1;
                  }

                  else
                  {
                    v501 = v494;
                  }

                  if (v501 >= 0x100)
                  {
                    v501 = 256;
                  }

                  v502 = *(&v2347 + 1);
                  if ((v493 & (v493 - 1)) != 0)
                  {
                    if (*(&v2347 + 1) > v493 || (v503 = v2348, v504 = v2347, v2348 * *(&v2347 + 1) < v493) && v2348 * *(&v2347 + 1) * v2347 % v493)
                    {
LABEL_267:
                      *&v2347 = 1;
                      *(&v2347 + 1) = v493;
                      v503 = 1;
                      v502 = v493;
                      v504 = 1;
                      v2348 = 1;
                    }
                  }

                  else
                  {
                    if (*(&v2347 + 1) > v493)
                    {
                      goto LABEL_267;
                    }

                    v503 = v2348;
                    v504 = v2347;
                    if (v2348 * *(&v2347 + 1) < v493 && ((v2348 * *(&v2347 + 1) * v2347) & (v493 - 1)) != 0)
                    {
                      goto LABEL_267;
                    }
                  }

                  if (v502 * v503 * v504 > v501)
                  {
                    *&v2347 = 1;
                    *(&v2347 + 1) = v493;
                    v2348 = 1;
                  }

                  objc_msgSend_setComputePipelineState_(*(v474 + 16), v495, PipelineStateForMPSKey, v496, v497, v498, v499, v500);
                  MPSLibrary::ReleaseMPSKey();
                  v2326 = v472;
                  v2332 = v472;
                  v2327 = objc_msgSend_rowBytes(*(v2277 + 8 * v465), v505, v506, v507, v508, v509, v510, v511) >> 2;
                  if (v2210)
                  {
                    v515 = *&v2262[8 * v465];
                  }

                  else
                  {
                    LODWORD(v515) = 0;
                  }

                  v2332 = v515;
                  objc_msgSend_setBuffers_offsets_withRange_(v2257, v512, &v2366, &v2362, 1, 8, v513, v514);
                  v2329 = 1;
                  HIDWORD(v2295) = v2195;
                  v2306 = v2193;
                  HIDWORD(v2317) = v2190;
                  v2324 = v2186;
                  if (!a9)
                  {
                    v524 = 0;
                    v522 = v2224;
                    if (!a10)
                    {
                      goto LABEL_277;
                    }

                    goto LABEL_282;
                  }

                  v522 = v2224;
                  if (*(a1 + 80) == 1)
                  {
                    v523 = (v2270 + v2215);
                  }

                  else
                  {
                    v523 = a9;
                    if (a2 + v465 != 1)
                    {
                      v524 = 0;
                      if (!a10)
                      {
                        goto LABEL_277;
                      }

                      goto LABEL_282;
                    }
                  }

                  v524 = *v523;
                  if (!a10)
                  {
LABEL_277:
                    v469 = v470;
                    goto LABEL_286;
                  }

LABEL_282:
                  if (*(a1 + 80) == 1)
                  {
                    v525 = (v2265 + v2215);
                  }

                  else
                  {
                    v525 = a10;
                    v469 = v470;
                    if (v465)
                    {
                      goto LABEL_286;
                    }
                  }

                  v469 = *v525;
LABEL_286:
                  v2248 -= v522;
                  if (*&v2262[8 * v465])
                  {
                    v526 = v2198 * v2248;
                  }

                  else
                  {
                    v526 = 0;
                  }

                  v527 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 104), v516, a2 + v465 - 1, v517, v518, v519, v520, v521);
                  v2339 = objc_msgSend_rowBytes(*(v527 + 48), v528, v529, v530, v531, v532, v533, v534);
                  if (v468)
                  {
                    *&v2355 = objc_msgSend_data(v468, v535, v536, v537, v538, v539, v540, v541);
                    *(&v2355 + 1) = objc_msgSend_data(v2254, v542, v543, v544, v545, v546, v547, v548);
                    v556 = v2284;
                    if (!v524)
                    {
                      goto LABEL_292;
                    }

LABEL_291:
                    v556 = objc_msgSend_data(v524, v549, v550, v551, v552, v553, v554, v555);
                    goto LABEL_292;
                  }

                  *&v2355 = 0;
                  *(&v2355 + 1) = objc_msgSend_data(v2254, v535, v536, v537, v538, v539, v540, v541);
                  v556 = v2284;
                  if (v524)
                  {
                    goto LABEL_291;
                  }

LABEL_292:
                  v2356 = v556;
                  v2357 = objc_msgSend_data(*(v2277 + 8 * v465), v549, v550, v551, v552, v553, v554, v555);
                  v2358 = objc_msgSend_data(*(v527 + 48), v557, v558, v559, v560, v561, v562, v563);
                  v571 = v2284;
                  if (v2212)
                  {
                    v571 = objc_msgSend_data(v2212, v564, v565, v566, v567, v568, v569, v570);
                  }

                  v2359 = v571;
                  if (v2250)
                  {
                    v2360 = objc_msgSend_data(v2250, v564, v565, v566, v567, v568, v569, v570);
                    v572 = v2284;
                    if (!v469)
                    {
                      goto LABEL_297;
                    }

LABEL_296:
                    v572 = objc_msgSend_data(v469, v564, v565, v566, v567, v568, v569, v570);
                    goto LABEL_297;
                  }

                  v2360 = 0;
                  v572 = v2284;
                  if (v469)
                  {
                    goto LABEL_296;
                  }

LABEL_297:
                  v2361 = v572;
                  v2331 = v473;
                  if (v468)
                  {
                    v573 = objc_msgSend_rowBytes(v468, v564, v565, v566, v567, v568, v569, v570) >> 2;
                    v574 = v2257;
                    v2335 = v573;
                    if (v524)
                    {
                      goto LABEL_299;
                    }
                  }

                  else
                  {
                    v574 = v2257;
                    v2335 = 0;
                    if (v524)
                    {
LABEL_299:
                      v575 = a1;
                      v2336 = objc_msgSend_rowBytes(v524, v564, v565, v566, v567, v568, v569, v570) >> 2;
                      if (v469)
                      {
                        goto LABEL_300;
                      }

                      goto LABEL_308;
                    }
                  }

                  v575 = a1;
                  v2336 = 0;
                  if (v469)
                  {
LABEL_300:
                    v2334 = objc_msgSend_rowBytes(v469, v564, v565, v566, v567, v568, v569, v570) >> 2;
                    if (v2250)
                    {
                      goto LABEL_301;
                    }

                    goto LABEL_309;
                  }

LABEL_308:
                  v2334 = 0;
                  if (v2250)
                  {
LABEL_301:
                    v576 = objc_msgSend_rowBytes(v2250, v564, v565, v566, v567, v568, v569, v570) >> 2;
                    goto LABEL_310;
                  }

LABEL_309:
                  LODWORD(v576) = 0;
LABEL_310:
                  v2333 = v576;
                  v577 = *(v575 + 128);
                  if (v577)
                  {
                    v577 = *(v577 + v2215 + 8 * v465);
                  }

                  v578 = (v2245 - v472) * v2206;
                  *&v2349 = v2236;
                  *(&v2349 + 1) = v578;
                  *&v2350 = 0;
                  *(&v2350 + 1) = v577;
                  v2351 = 0;
                  v2352 = v526;
                  v2353 = 0;
                  v2354 = 0;
                  if (v2355)
                  {
                    if (v2360)
                    {
                      goto LABEL_314;
                    }
                  }

                  else
                  {
                    *&v2355 = v2284;
                    HIDWORD(v2295) &= ~0x20u;
                    v2306 &= ~0x20u;
                    HIDWORD(v2317) &= ~0x20u;
                    v2324 &= ~0x20u;
                    if (v2360)
                    {
LABEL_314:
                      v579 = *(&v2347 + 1) * v2229;
                      if (v579)
                      {
                        goto LABEL_315;
                      }

                      goto LABEL_322;
                    }
                  }

                  v2360 = v2284;
                  HIDWORD(v2295) &= 0xFFFFFF3F;
                  v2306 &= 0xFFFFFF3F;
                  HIDWORD(v2317) &= 0xFFFFFF3F;
                  v2329 = 0;
                  v579 = *(&v2347 + 1) * v2229;
                  if (v579)
                  {
LABEL_315:
                    v580 = (v2217 - 1 + v579) / v579;
                    v581 = v2348 * v2232;
                    if (!v581)
                    {
                      goto LABEL_323;
                    }

                    goto LABEL_316;
                  }

LABEL_322:
                  v580 = 0;
                  v581 = v2348 * v2232;
                  if (!v581)
                  {
LABEL_323:
                    v582 = 0;
                    v2245 -= v472;
                    if (!v2204)
                    {
                      goto LABEL_318;
                    }

LABEL_317:
                    v2341 = v2176;
                    goto LABEL_318;
                  }

LABEL_316:
                  v582 = (v472 + v581 - 1) / v581;
                  v2245 -= v472;
                  if (v2204)
                  {
                    goto LABEL_317;
                  }

LABEL_318:
                  objc_msgSend_setBytes_length_atIndex_(v574, v564, &v2289, 280, 0, v568, v569, v570);
                  objc_msgSend_setBuffers_offsets_withRange_(v574, v583, &v2355, &v2349, 9, 8, v584, v585);
                  objc_msgSend_setThreadgroupMemoryLength_atIndex_(v574, v586, 4 * v2347 * *(&v2347 + 1) * v2348, 0, v587, v588, v589, v590);
                  v2347 = vextq_s8(v2347, v2347, 8uLL);
                  v2344 = v580;
                  v2345 = 1;
                  v2346 = v582;
                  v2342 = v2347;
                  v2343 = v2348;
                  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v574, v591, &v2344, &v2342, v592, v593, v594, v595);
                  if (v2204)
                  {
                    v2341 = v2173;
                    objc_msgSend_setBytes_length_atIndex_(v574, v596, &v2289, 280, 0, v597, v598, v599);
                    v2344 = v580;
                    v2345 = 1;
                    v2346 = v582;
                    v2342 = v2347;
                    v2343 = v2348;
                    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v574, v600, &v2344, &v2342, v601, v602, v603, v604);
                  }

                  v429 = a1;
                  MPSLibrary::ReleaseComputeState();
                  --v465;
                  --v2265;
                  --v2270;
                  v468 = v2254;
                  v2250 = v469;
                  v470 = v2241;
                  v466 = v578;
                  v464 = v472;
                  if (!(a2 + v465))
                  {

                    if (*(a11 + 416))
                    {
                      v611 = a13;
                      v612 = v2161;
                      v613 = v2254;
                      v614 = v2141;
                      if (v2139)
                      {
                        v615 = *(a11 + 32);
                        v616 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v605, v2161, v615, (4 * v615 + 12) & 0x3FFFFFFF0, 268435488, v609, v610);
                        v617 = MPSAutoCache::GetTempBuffer(*(a1 + 72), ((4 * v615 + 12) & 0x3FFFFFFF0) * v2161, 0);
                        v618 = objc_alloc(MEMORY[0x277CD7250]);
                        v624 = objc_msgSend_initWithBuffer_descriptor_(v618, v619, v617, v616, v620, v621, v622, v623);
                        sub_239BD38CC(a1, v2168, v624, v2161, a2, *(a1 + 112), v625, v626);
                        v633 = 56;
                        if (a13)
                        {
                          v633 = 64;
                        }

                        v634 = *(a1 + v633);
                        objc_msgSend_setK_(v634, v627, v2161, v628, v629, v630, v631, v632);
                        objc_msgSend_setN_(v634, v635, v615, v636, v637, v638, v639, v640);
                        objc_msgSend_setM_(v634, v641, v2157, v642, v643, v644, v645, v646);
                        objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v634, v647, *(a1 + 8), v2257, v2254, v624, v2139, v648);
                      }

                      v649 = a7;
                      v650 = v2217;
                      v651 = v2140;
                      if (v2140)
                      {
                        sub_239BD9310(a1, v2254, v2140, v2157, v2161, 0, a13, 0, 0);
                      }
                    }

                    else
                    {
                      v611 = a13;
                      v612 = v2161;
                      v613 = v2254;
                      v650 = v2217;
                      v614 = v2141;
                      if (v2139 || v2136 || v2135 || v2134)
                      {
                        v652 = *(a11 + 32);
                        v653 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v605, v2161, v652, (4 * v652 + 12) & 0x3FFFFFFF0, 268435488, v609, v610);
                        v654 = MPSAutoCache::GetTempBuffer(*(a1 + 72), ((4 * v652 + 12) & 0x3FFFFFFF0) * v2161, 0);
                        v655 = objc_alloc(MEMORY[0x277CD7250]);
                        v661 = objc_msgSend_initWithBuffer_descriptor_(v655, v656, v654, v653, v657, v658, v659, v660);
                        sub_239BD38CC(a1, v2168, v661, v2161, a2, *(a1 + 112), v662, v663);
                        v670 = 56;
                        if (a13)
                        {
                          v670 = 64;
                        }

                        v671 = *(a1 + v670);
                        objc_msgSend_setK_(v671, v664, v2161, v665, v666, v667, v668, v669);
                        v672 = v652;
                        v650 = v2217;
                        objc_msgSend_setN_(v671, v673, v672, v674, v675, v676, v677, v678);
                        objc_msgSend_setM_(v671, v679, v2217, v680, v681, v682, v683, v684);
                        if (v2139)
                        {
                          v2290 = 0;
                          v2289 = 0;
                          v2291 = 0;
                          objc_msgSend_setLeftMatrixOrigin_(v671, v685, &v2289, v686, v687, v688, v689, v690);
                          objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v671, v691, *(a1 + 8), v2257, v2254, v661, v2139, v692);
                        }

                        if (v2136)
                        {
                          v2289 = 0;
                          v2290 = v2217;
                          v2291 = 0;
                          objc_msgSend_setLeftMatrixOrigin_(v671, v685, &v2289, v686, v687, v688, v689, v690);
                          objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v671, v693, *(a1 + 8), v2257, v2254, v661, v2136, v694);
                        }

                        if (v2135)
                        {
                          v2289 = 0;
                          v2290 = 2 * v2217;
                          v2291 = 0;
                          objc_msgSend_setLeftMatrixOrigin_(v671, v685, &v2289, v686, v687, v688, v689, v690);
                          objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v671, v695, *(a1 + 8), v2257, v2254, v661, v2135, v696);
                        }

                        v429 = a1;
                        if (v2134)
                        {
                          v2289 = 0;
                          v2290 = 3 * v2217;
                          v2291 = 0;
                          objc_msgSend_setLeftMatrixOrigin_(v671, v685, &v2289, v686, v687, v688, v689, v690);
                          objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v671, v697, *(a1 + 8), v2257, v2254, v661, v2134, v698);
                        }

                        v2290 = 0;
                        v2289 = 0;
                        v2291 = 0;
                        objc_msgSend_setLeftMatrixOrigin_(v671, v685, &v2289, v686, v687, v688, v689, v690);
                      }

                      if (v2140)
                      {
                        sub_239BD9310(v429, v2254, v2140, v650, v2161, 0, a13, 0, 0);
                      }

                      v649 = a7;
                      if (v2130)
                      {
                        sub_239BD9310(v429, v2254, v2130, v650, v2161, v2157, a13, 0, 0);
                      }

                      if (v2129)
                      {
                        sub_239BD9310(v429, v2254, v2129, v650, v2161, 8 * v650, a13, 0, 0);
                      }

                      v651 = v2128;
                      if (v2128)
                      {
                        sub_239BD9310(v429, v2254, v2128, v650, v2161, 12 * v650, a13, 0, 0);
                      }
                    }

                    v699 = *(a11 + 417);
                    v700 = v2168;
                    v701 = objc_msgSend_rows(*v2168, v605, v651, v606, v607, v608, v609, v610);
                    v709 = objc_msgSend_rows(*&v2168[8 * v2159], v702, v703, v704, v705, v706, v707, v708);
                    sub_239BD9B3C(v429, v701, v709, v612, v650, v613, 0, v2212, 0, v649, v614, v611);
                    v717 = v613;
                    if ((v699 & 1) == 0)
                    {
                      v718 = objc_msgSend_rows(*v2168, v710, v711, v712, v713, v714, v715, v716);
                      v726 = objc_msgSend_rows(*&v2168[8 * v2159], v719, v720, v721, v722, v723, v724, v725);
                      sub_239BD9B3C(a1, v718, v726, v612, v650, v613, v650, v2212, 0, v649, v2133, a13);
                      v734 = objc_msgSend_rows(*v2168, v727, v728, v729, v730, v731, v732, v733);
                      v742 = objc_msgSend_rows(*&v2168[8 * v2159], v735, v736, v737, v738, v739, v740, v741);
                      sub_239BD9B3C(a1, v734, v742, v612, v650, v613, v2145, v2212, 0, v649, v2132, a13);
                      v750 = objc_msgSend_rows(*v2168, v743, v744, v745, v746, v747, v748, v749);
                      v429 = a1;
                      v758 = objc_msgSend_rows(*&v2168[8 * v2159], v751, v752, v753, v754, v755, v756, v757);
                      sub_239BD9B3C(a1, v750, v758, v612, v650, v613, 3 * v650, v2212, 0, v649, v2131, a13);
                    }

                    v759 = *(a11 + 418);
                    v760 = objc_msgSend_rows(*v2168, v710, v711, v712, v713, v714, v715, v716);
                    v768 = v760;
                    v2162 = v612;
                    if (v759 == 1)
                    {
                      if (v760 >= v612)
                      {
                        v769 = v612;
                      }

                      else
                      {
                        v769 = v760;
                      }

                      v770 = v612 - v769;
                      if (v2144)
                      {
                        if (v612 <= v760)
                        {
                          v772 = a13;
                          if (v649)
                          {
LABEL_437:
                            v993 = objc_msgSend_rows(v649, v761, v762, v763, v764, v765, v766, v767);
                            if (v769 >= v993)
                            {
                              v994 = v993;
                            }

                            else
                            {
                              v994 = v769;
                            }

                            sub_239BD9310(v429, v649, v2144, v2217, v994, 0, v772, v2212, v2157);
                          }

                          else if ((a13 & 1) == 0)
                          {
                            sub_239BD9574(v429, v2144, v762, v763, v764, v765, v766, v767);
                          }
                        }

                        else
                        {
                          v771 = objc_msgSend_rowBytes(v613, v761, v762, v763, v764, v765, v766, v767);
                          sub_239BD9310(v429, v613, v2144, v650, v770, v771 * v769, a13, v2212, v2157);
                          if (v649)
                          {
                            v772 = 1;
                            goto LABEL_437;
                          }
                        }
                      }

                      if (v2142)
                      {
                        if (v612 <= v768)
                        {
                          v996 = a13;
                          if (v649)
                          {
LABEL_446:
                            v997 = objc_msgSend_rows(v649, v761, v762, v763, v764, v765, v766, v767);
                            if (v769 >= v997)
                            {
                              v998 = v997;
                            }

                            else
                            {
                              v998 = v769;
                            }

                            sub_239BD9310(v429, v649, v2142, v2217, v998, v2157, v996, v2212, v2157);
                          }

                          else if ((a13 & 1) == 0)
                          {
                            sub_239BD9574(v429, v2142, v762, v763, v764, v765, v766, v767);
                          }
                        }

                        else
                        {
                          v995 = objc_msgSend_rowBytes(v613, v761, v762, v763, v764, v765, v766, v767);
                          sub_239BD9310(v429, v613, v2142, v2217, v770, v2157 + v995 * v769, a13, v2212, v2157);
                          if (v649)
                          {
                            v996 = 1;
                            goto LABEL_446;
                          }
                        }
                      }

                      if (v2143)
                      {
                        if (v612 <= v768)
                        {
                          v1002 = v2217;
                          if (v649)
                          {
                            v1000 = 8 * v2217;
                            v1001 = a13;
LABEL_456:
                            v1003 = objc_msgSend_rows(v649, v761, v762, v763, v764, v765, v766, v767);
                            if (v769 >= v1003)
                            {
                              v1004 = v1003;
                            }

                            else
                            {
                              v1004 = v769;
                            }

                            sub_239BD9310(v429, v649, v2143, v1002, v1004, v1000, v1001, v2212, v2157);
                          }

                          else if ((a13 & 1) == 0)
                          {
                            sub_239BD9574(v429, v2143, v762, v763, v764, v765, v766, v767);
                          }
                        }

                        else
                        {
                          v999 = objc_msgSend_rowBytes(v613, v761, v762, v763, v764, v765, v766, v767);
                          v1000 = 8 * v2217;
                          sub_239BD9310(v429, v613, v2143, v2217, v770, 8 * v2217 + v999 * v769, a13, v2212, v2157);
                          if (v649)
                          {
                            v1001 = 1;
                            v1002 = v2217;
                            goto LABEL_456;
                          }
                        }
                      }

                      v1005 = v2168;
                      if (v2171)
                      {
                        v1006 = objc_msgSend_rows(*v2168, v761, v762, v763, v764, v765, v766, v767);
                        v1013 = objc_msgSend_objectAtIndexedSubscript_(*(v429 + 104), v1007, 0, v1008, v1009, v1010, v1011, v1012);
                        objc_msgSend_rowBytes(v613, v1014, v1015, v1016, v1017, v1018, v1019, v1020);
                        sub_239BD9310(v429, v613, v2171, v2217, v1006, 12 * v2217, a13, *(v1013 + 48), 20 * v2217);
                        if (a2 != 1)
                        {
                          v1025 = 1;
                          do
                          {
                            v1026 = v1005;
                            v1027 = objc_msgSend_rows(*&v1005[8 * v1025], v761, v1021, v1022, v1023, v1024, v766, v767);
                            v1034 = objc_msgSend_objectAtIndexedSubscript_(*(v429 + 104), v1028, v1025, v1029, v1030, v1031, v1032, v1033);
                            v1042 = objc_msgSend_rowBytes(v613, v1035, v1036, v1037, v1038, v1039, v1040, v1041);
                            sub_239BD9310(v429, v613, v2171, v2217, v1027, 12 * v2217 + v1042 * v1006, 1, *(v1034 + 48), 20 * v2217);
                            v1006 += v1027;
                            v1005 = v1026;
                            ++v1025;
                          }

                          while (a2 != v1025);
                        }
                      }
                    }

                    else
                    {
                      v773 = objc_msgSend_rows(*&v2168[8 * v2159], v761, v762, v763, v764, v765, v766, v767);
                      sub_239BD9B3C(a1, v768, v773, v612, v650, v613, 0, v2212, v650, v649, v2144, a13);
                      v781 = objc_msgSend_rows(*v2168, v774, v775, v776, v777, v778, v779, v780);
                      v789 = objc_msgSend_rows(*&v2168[8 * v2159], v782, v783, v784, v785, v786, v787, v788);
                      sub_239BD9B3C(a1, v781, v789, v612, v650, v613, v650, v2212, v650, v649, v2142, a13);
                      v797 = objc_msgSend_rows(*v2168, v790, v791, v792, v793, v794, v795, v796);
                      v429 = a1;
                      v805 = objc_msgSend_rows(*&v2168[8 * v2159], v798, v799, v800, v801, v802, v803, v804);
                      sub_239BD9B3C(a1, v797, v805, v612, v650, v613, v2145, v2212, v650, v649, v2143, a13);
                      v810 = a2;
                      if (v2171)
                      {
                        v811 = 56;
                        if (a13)
                        {
                          v811 = 64;
                        }

                        v812 = *(a1 + v811);
                        v813 = objc_msgSend_rows(*v2168, v761, v806, v807, v808, v809, v766, v767);
                        v2278 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 104), v814, 0, v815, v816, v817, v818, v819);
                        objc_msgSend_setK_(v812, v820, v813, v821, v822, v823, v824, v825);
                        objc_msgSend_setN_(v812, v826, v650, v827, v828, v829, v830, v831);
                        objc_msgSend_setM_(v812, v832, v650, v833, v834, v835, v836, v837);
                        v2289 = 0;
                        v2285 = 3 * v650;
                        v2290 = 3 * v650;
                        v2291 = 0;
                        objc_msgSend_setLeftMatrixOrigin_(v812, v838, &v2289, v839, v840, v841, v842, v843);
                        v2289 = 0;
                        v2281 = 5 * v650;
                        v2290 = 5 * v650;
                        v2291 = 0;
                        objc_msgSend_setRightMatrixOrigin_(v812, v844, &v2289, v845, v846, v847, v848, v849);
                        v850 = v613;
                        objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v812, v851, *(a1 + 8), v2257, v613, *(v2278 + 48), v2171, v852);
                        if (a2 != 1)
                        {
                          v860 = 1;
                          do
                          {
                            v861 = *(a1 + 64);
                            v862 = objc_msgSend_rows(*&v700[8 * v860], v853, v854, v855, v856, v857, v858, v859);
                            v869 = v700;
                            v870 = v850;
                            v871 = v810;
                            v872 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 104), v863, v860, v864, v865, v866, v867, v868);
                            objc_msgSend_setK_(v861, v873, v862, v874, v875, v876, v877, v878);
                            objc_msgSend_setN_(v861, v879, v2217, v880, v881, v882, v883, v884);
                            objc_msgSend_setM_(v861, v885, v2217, v886, v887, v888, v889, v890);
                            v2289 = v813;
                            v2290 = v2285;
                            v2291 = 0;
                            objc_msgSend_setLeftMatrixOrigin_(v861, v891, &v2289, v892, v893, v894, v895, v896);
                            v2289 = 0;
                            v2290 = v2281;
                            v2291 = 0;
                            objc_msgSend_setRightMatrixOrigin_(v861, v897, &v2289, v898, v899, v900, v901, v902);
                            v903 = *(v872 + 48);
                            v810 = v871;
                            v850 = v870;
                            v700 = v869;
                            objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v861, v904, *(a1 + 8), v2257, v850, v903, v2171, v905);
                            v813 += v862;
                            ++v860;
                          }

                          while (v810 != v860);
                        }

                        v906 = *(a1 + 64);
                        v2290 = 0;
                        v2289 = 0;
                        v2291 = 0;
                        objc_msgSend_setLeftMatrixOrigin_(v906, v853, &v2289, v855, v856, v857, v858, v859);
                        v907 = *(a1 + 64);
                        v2290 = 0;
                        v2289 = 0;
                        v2291 = 0;
                        objc_msgSend_setRightMatrixOrigin_(v907, v908, &v2289, v909, v910, v911, v912, v913);
                        v914 = *(a1 + 56);
                        v2290 = 0;
                        v2289 = 0;
                        v2291 = 0;
                        objc_msgSend_setLeftMatrixOrigin_(v914, v915, &v2289, v916, v917, v918, v919, v920);
                        v921 = *(a1 + 56);
                        v2290 = 0;
                        v2289 = 0;
                        v2291 = 0;
                        objc_msgSend_setRightMatrixOrigin_(v921, v922, &v2289, v923, v924, v925, v926, v927);
                        v717 = v850;
                      }
                    }

                    if (v2164)
                    {
                      v1043 = *(a11 + 32);
                      v1044 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v761, v2162, v1043, (4 * v1043 + 12) & 0x3FFFFFFF0, 268435488, v766, v767);
                      v1045 = MPSAutoCache::GetTempBuffer(*(v429 + 72), ((4 * v1043 + 12) & 0x3FFFFFFF0) * v2162, 0);
                      v1046 = objc_alloc(MEMORY[0x277CD7250]);
                      v1059 = objc_msgSend_initWithBuffer_descriptor_(v1046, v1047, v1045, v1044, v1048, v1049, v1050, v1051);
                      if (*(a11 + 416) == 1)
                      {
                        if (v2146)
                        {
                          v1060 = objc_msgSend_dataType(v2146, v1052, v1053, v1054, v1055, v1056, v1057, v1058);
                          v1067 = 48;
                          if (v1060 == 268435472)
                          {
                            v1067 = 40;
                          }

                          v1068 = *(v429 + v1067);
                          objc_msgSend_setK_(v1068, v1061, v2157, v1062, v1063, v1064, v1065, v1066);
                          objc_msgSend_setN_(v1068, v1069, v1043, v1070, v1071, v1072, v1073, v1074);
                          objc_msgSend_setM_(v1068, v1075, v2162, v1076, v1077, v1078, v1079, v1080);
                          v2290 = 0;
                          v2289 = 0;
                          v2291 = 0;
                          objc_msgSend_setResultMatrixOrigin_(v1068, v1081, &v2289, v1082, v1083, v1084, v1085, v1086);
                          objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v1068, v1087, *(v429 + 8), v2257, v717, v2146, v1059, v1088);
                        }
                      }

                      else
                      {
                        v1089 = v2146;
                        if (v2146)
                        {
                          if (*(a11 + 72))
                          {
                            v1089 = 0;
                          }

                          else
                          {
                            v1608 = objc_msgSend_dataType(v2146, v1052, v1053, v1054, v1055, v1056, v1057, v1058);
                            v1615 = 48;
                            if (v1608 == 268435472)
                            {
                              v1615 = 40;
                            }

                            v1616 = *(v429 + v1615);
                            objc_msgSend_setK_(v1616, v1609, v2217, v1610, v1611, v1612, v1613, v1614);
                            objc_msgSend_setN_(v1616, v1617, v1043, v1618, v1619, v1620, v1621, v1622);
                            objc_msgSend_setM_(v1616, v1623, v2162, v1624, v1625, v1626, v1627, v1628);
                            v2290 = 0;
                            v2289 = 0;
                            v2291 = 0;
                            objc_msgSend_setResultMatrixOrigin_(v1616, v1629, &v2289, v1630, v1631, v1632, v1633, v1634);
                            objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v1616, v1635, *(v429 + 8), v2257, v717, v2146, v1059, v1636);
                            v1089 = 1;
                          }
                        }

                        if (v2147 && (*(a11 + 72) & 1) == 0)
                        {
                          v1637 = objc_msgSend_dataType(v2147, v1052, v1053, v1054, v1055, v1056, v1057, v1058);
                          v1644 = 48;
                          if (v1637 == 268435472)
                          {
                            v1644 = 40;
                          }

                          v1645 = 32;
                          if (v1637 == 268435472)
                          {
                            v1645 = 24;
                          }

                          if (v1089)
                          {
                            v1644 = v1645;
                          }

                          v1646 = *(v429 + v1644);
                          objc_msgSend_setK_(v1646, v1638, v2217, v1639, v1640, v1641, v1642, v1643);
                          objc_msgSend_setN_(v1646, v1647, v1043, v1648, v1649, v1650, v1651, v1652);
                          objc_msgSend_setM_(v1646, v1653, v2162, v1654, v1655, v1656, v1657, v1658);
                          v2290 = 0;
                          v2289 = 0;
                          v2291 = 0;
                          objc_msgSend_setResultMatrixOrigin_(v1646, v1659, &v2289, v1660, v1661, v1662, v1663, v1664);
                          v2289 = 0;
                          v2290 = v2217;
                          v2291 = 0;
                          objc_msgSend_setLeftMatrixOrigin_(v1646, v1665, &v2289, v1666, v1667, v1668, v1669, v1670);
                          objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v1646, v1671, *(v429 + 8), v2257, v717, v2147, v1059, v1672);
                          v2290 = 0;
                          v2289 = 0;
                          v2291 = 0;
                          objc_msgSend_setLeftMatrixOrigin_(v1646, v1673, &v2289, v1674, v1675, v1676, v1677, v1678);
                          v1089 = 1;
                        }

                        if (v2148 && (*(a11 + 72) & 1) == 0)
                        {
                          v1679 = objc_msgSend_dataType(v2148, v1052, v1053, v1054, v1055, v1056, v1057, v1058);
                          v1686 = 48;
                          if (v1679 == 268435472)
                          {
                            v1686 = 40;
                          }

                          v1687 = 32;
                          if (v1679 == 268435472)
                          {
                            v1687 = 24;
                          }

                          if (v1089)
                          {
                            v1686 = v1687;
                          }

                          v1688 = *(v429 + v1686);
                          objc_msgSend_setK_(v1688, v1680, v2217, v1681, v1682, v1683, v1684, v1685);
                          objc_msgSend_setN_(v1688, v1689, v1043, v1690, v1691, v1692, v1693, v1694);
                          objc_msgSend_setM_(v1688, v1695, v2162, v1696, v1697, v1698, v1699, v1700);
                          v2290 = 0;
                          v2289 = 0;
                          v2291 = 0;
                          objc_msgSend_setResultMatrixOrigin_(v1688, v1701, &v2289, v1702, v1703, v1704, v1705, v1706);
                          v2289 = 0;
                          v2290 = 2 * v2217;
                          v2291 = 0;
                          objc_msgSend_setLeftMatrixOrigin_(v1688, v1707, &v2289, v1708, v1709, v1710, v1711, v1712);
                          objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v1688, v1713, *(v429 + 8), v2257, v717, v2148, v1059, v1714);
                          v2290 = 0;
                          v2289 = 0;
                          v2291 = 0;
                          objc_msgSend_setLeftMatrixOrigin_(v1688, v1715, &v2289, v1716, v1717, v1718, v1719, v1720);
                          v1089 = 1;
                        }

                        if (v2149 && (*(a11 + 72) & 1) == 0)
                        {
                          v1721 = objc_msgSend_dataType(v2149, v1052, v1053, v1054, v1055, v1056, v1057, v1058);
                          v1728 = 48;
                          if (v1721 == 268435472)
                          {
                            v1728 = 40;
                          }

                          v1729 = 32;
                          if (v1721 == 268435472)
                          {
                            v1729 = 24;
                          }

                          if (v1089)
                          {
                            v1728 = v1729;
                          }

                          v1730 = *(v429 + v1728);
                          objc_msgSend_setK_(v1730, v1722, v2217, v1723, v1724, v1725, v1726, v1727);
                          objc_msgSend_setN_(v1730, v1731, v1043, v1732, v1733, v1734, v1735, v1736);
                          objc_msgSend_setM_(v1730, v1737, v2162, v1738, v1739, v1740, v1741, v1742);
                          v2290 = 0;
                          v2289 = 0;
                          v2291 = 0;
                          objc_msgSend_setResultMatrixOrigin_(v1730, v1743, &v2289, v1744, v1745, v1746, v1747, v1748);
                          v2289 = 0;
                          v2290 = 3 * v2217;
                          v2291 = 0;
                          objc_msgSend_setLeftMatrixOrigin_(v1730, v1749, &v2289, v1750, v1751, v1752, v1753, v1754);
                          objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v1730, v1755, *(v429 + 8), v2257, v717, v2149, v1059, v1756);
                          v2290 = 0;
                          v2289 = 0;
                          v2291 = 0;
                          objc_msgSend_setLeftMatrixOrigin_(v1730, v1757, &v2289, v1758, v1759, v1760, v1761, v1762);
                        }
                      }

                      sub_239BD96C4(v429, v1059, v2164, v2162, a2, *(v429 + 136), v1057, v1058);
                    }

                    v1104 = v2210;
                    if (!v2210)
                    {
                      return;
                    }

                    goto LABEL_800;
                  }
                }
              }
            }

            else
            {
              v2337 = 0;
              v463 = a7;
              if (a7)
              {
                goto LABEL_238;
              }
            }

            v464 = 0;
            goto LABEL_241;
          }

LABEL_229:
          v2373 = v2284;
          if (!a10)
          {
            goto LABEL_232;
          }

          goto LABEL_230;
        }

LABEL_145:
        v2214 = 0;
        v387 = v2235;
        if (v2235)
        {
          goto LABEL_138;
        }

        goto LABEL_146;
      }

LABEL_106:
      v2128 = 0;
      goto LABEL_107;
    }

LABEL_105:
    v2171 = 0;
    v151 = 0;
    if (*(v152 + 288))
    {
      goto LABEL_50;
    }

    goto LABEL_106;
  }

  if (a12 == 1)
  {
    v2247 = *(a1 + 16);
    v2260 = *(a11 + 56);
    v2243 = (v2260 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v88 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], a2, 1, 8 * v2260, 32 * v2243, 268435488, a7, a8);
    v89 = 0;
    v90 = 0;
    do
    {
      v89 += objc_msgSend_rows(*&a3[8 * v90++], v81, v82, v83, v84, v85, v86, v87);
    }

    while (v15 != v90);
    v91 = MPSAutoCache::GetTempBuffer(*(a1 + 72), v89 * 32 * v2243, 0);
    objc_msgSend_setRows_(v88, v92, v89, v93, v94, v95, v96, v97);
    v98 = objc_alloc(MEMORY[0x277CD7250]);
    v2253 = objc_msgSend_initWithBuffer_descriptor_(v98, v99, v91, v88, v100, v101, v102, v103);
    v110 = *(a11 + 136);
    v111 = *(a11 + 144);
    v2185 = *(a11 + 112);
    v2188 = *(a11 + 128);
    v112 = *(a1 + 88);
    v2167 = a3;
    v2283 = *(a11 + 104);
    if (!v112)
    {
      v2180 = 0;
      v2181 = *(a11 + 96);
      v2153 = 0;
      v2156 = 0;
      v2172 = 0;
      v2174 = 0;
      v2177 = 0;
      v2178 = 0;
      v2170 = 0;
      v2158 = 0;
      v2160 = 0;
      v2275 = *(a11 + 104);
      v118 = a4;
      goto LABEL_64;
    }

    v113 = *(a11 + 88);
    if (*(v113 + 304))
    {
      v114 = objc_msgSend_objectAtIndexedSubscript_(v112, v104, *(v113 + 312), v105, v106, v107, v108, v109);
      v113 = *(a11 + 88);
      v2160 = a6[*(v113 + 312)];
      v2181 = v114;
      if (*(v113 + 320))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v2160 = 0;
      v2181 = *(a11 + 96);
      if (*(v113 + 320))
      {
LABEL_22:
        v115 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v104, *(v113 + 328), v105, v106, v107, v108, v109);
        v113 = *(a11 + 88);
        v2180 = a6[*(v113 + 328)];
        if (*(v113 + 336))
        {
          goto LABEL_23;
        }

        goto LABEL_56;
      }
    }

    v2180 = 0;
    v115 = v2283;
    if (*(v113 + 336))
    {
LABEL_23:
      v2172 = a6[*(v113 + 344)];
      if (*(v113 + 352))
      {
        goto LABEL_24;
      }

      goto LABEL_57;
    }

LABEL_56:
    v2172 = 0;
    if (*(v113 + 352))
    {
LABEL_24:
      v2185 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v104, *(v113 + 360), v105, v106, v107, v108, v109);
      v113 = *(a11 + 88);
      v116 = a6[*(v113 + 360)];
      if (*(v113 + 368))
      {
        goto LABEL_25;
      }

      goto LABEL_58;
    }

LABEL_57:
    v116 = 0;
    if (*(v113 + 368))
    {
LABEL_25:
      v2283 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v104, *(v113 + 376), v105, v106, v107, v108, v109);
      v113 = *(a11 + 88);
      v2177 = a6[*(v113 + 376)];
      if (*(v113 + 384))
      {
        goto LABEL_26;
      }

      goto LABEL_59;
    }

LABEL_58:
    v2177 = 0;
    if (*(v113 + 384))
    {
LABEL_26:
      v2275 = v115;
      v2170 = a6[*(v113 + 392)];
      if (*(v113 + 400))
      {
        goto LABEL_27;
      }

      goto LABEL_60;
    }

LABEL_59:
    v2275 = v115;
    v2170 = 0;
    if (*(v113 + 400))
    {
LABEL_27:
      v2188 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v104, *(v113 + 408), v105, v106, v107, v108, v109);
      v113 = *(a11 + 88);
      v117 = a6[*(v113 + 408)];
      if (*(v113 + 416))
      {
        goto LABEL_28;
      }

      goto LABEL_61;
    }

LABEL_60:
    v117 = 0;
    if (*(v113 + 416))
    {
LABEL_28:
      v111 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v104, *(v113 + 424), v105, v106, v107, v108, v109);
      v113 = *(a11 + 88);
      v2178 = a6[*(v113 + 424)];
      v2156 = v117;
      v2158 = v116;
      if (*(v113 + 432))
      {
        goto LABEL_29;
      }

      goto LABEL_62;
    }

LABEL_61:
    v2178 = 0;
    v2156 = v117;
    v2158 = v116;
    if (*(v113 + 432))
    {
LABEL_29:
      v110 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v104, *(v113 + 440), v105, v106, v107, v108, v109);
      v113 = *(a11 + 88);
      v2174 = a6[*(v113 + 440)];
      v118 = a4;
      if (*(v113 + 448))
      {
LABEL_30:
        v2153 = a6[*(v113 + 456)];
        goto LABEL_64;
      }

      goto LABEL_63;
    }

LABEL_62:
    v2174 = 0;
    v118 = a4;
    if (*(v113 + 448))
    {
      goto LABEL_30;
    }

LABEL_63:
    v2153 = 0;
LABEL_64:
    v2211 = v89;
    v158 = malloc_type_malloc(8 * v15, 0x100004000313F17uLL);
    v166 = v15 - 1;
    v2209 = v158;
    v167 = 0;
    if (v15 != 1)
    {
      v168 = (v118 + 8);
      v169 = v15 - 1;
      v170 = v158;
      do
      {
        v171 = *v168++;
        v172 = objc_msgSend_rows(v171, v159, v160, v161, v162, v163, v164, v165);
        *v170++ = v172;
        v167 += v172;
        --v169;
      }

      while (v169);
    }

    v173 = a7;
    if (a7)
    {
      v173 = objc_msgSend_rows(a7, v159, v160, v161, v162, v163, v164, v165);
    }

    v2209[v166] = v173;
    v174 = v173 + v167;
    if (v173 + v167)
    {
      v175 = MPSAutoCache::GetTempBuffer(*(a1 + 72), v174 * 4 * v2243, 0);
      objc_msgSend_setColumns_(v88, v176, v2260, v177, v178, v179, v180, v181);
      objc_msgSend_setRows_(v88, v182, v174, v183, v184, v185, v186, v187);
      objc_msgSend_setRowBytes_(v88, v188, 4 * v2243, v189, v190, v191, v192, v193);
      v194 = objc_alloc(MEMORY[0x277CD7250]);
      v2258 = objc_msgSend_initWithBuffer_descriptor_(v194, v195, v175, v88, v196, v197, v198, v199);
      v2239 = v174;
      v2301 = v2260;
      v2323 = (v2260 + 3) & 0xFFFFFFFC;
      v200 = v2275;
      if (v2275)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v2258 = 0;
      v2239 = 0;
      v2301 = v2260;
      v2323 = (v2260 + 3) & 0xFFFFFFFC;
      v200 = v2275;
      if (v2275)
      {
LABEL_71:
        v2264 = objc_msgSend_data(v200, v159, v160, v161, v162, v163, v164, v165);
        objc_msgSend_rowBytes(v200, v201, v202, v203, v204, v205, v206, v207);
        v208 = v111;
        v209 = v2283;
        if (v2283)
        {
          goto LABEL_72;
        }

        goto LABEL_85;
      }
    }

    v2264 = 0;
    v208 = v111;
    v209 = v2283;
    if (v2283)
    {
LABEL_72:
      v2234 = objc_msgSend_data(v209, v159, v160, v161, v162, v163, v164, v165);
      objc_msgSend_rowBytes(v209, v210, v211, v212, v213, v214, v215, v216);
      if (v208)
      {
        goto LABEL_73;
      }

      goto LABEL_86;
    }

LABEL_85:
    v2234 = 0;
    if (v208)
    {
LABEL_73:
      v217 = objc_msgSend_data(v208, v159, v160, v161, v162, v163, v164, v165);
      objc_msgSend_rowBytes(v208, v218, v219, v220, v221, v222, v223, v224);
      v225 = v110;
      if (v110)
      {
        goto LABEL_74;
      }

      goto LABEL_87;
    }

LABEL_86:
    v217 = 0;
    v225 = v110;
    if (v110)
    {
LABEL_74:
      v226 = objc_msgSend_data(v225, v159, v160, v161, v162, v163, v164, v165);
      objc_msgSend_rowBytes(v225, v227, v228, v229, v230, v231, v232, v233);
      v2207 = objc_msgSend_data(v2253, v234, v235, v236, v237, v238, v239, v240);
      v248 = v2258;
      v2150 = v166;
      if (!v2258)
      {
LABEL_76:
        v249 = 0;
        v2213 = v2260 - 1;
        v2322 = v248;
        do
        {
          objc_msgSend_rows(*(a4 + 8 * v249++), v241, v242, v243, v244, v245, v246, v247);
        }

        while (a2 != v249);
        v250 = *(a11 + 176);
        v251 = *(a11 + 180);
        v252 = *(a11 + 188);
        if (v2275)
        {
          v253 = objc_msgSend_dataType(v2275, v241, v242, v243, v244, v245, v246, v247);
          if (((v253 >> 3) & 0x1FFC) != 0)
          {
            v261 = 2;
          }

          else
          {
            v261 = v253 >> 3 == 2;
          }

          v262 = objc_msgSend_rowBytes(v2275, v254, v255, v256, v257, v258, v259, v260) >> v261;
          v270 = objc_msgSend_columns(v2275, v263, v264, v265, v266, v267, v268, v269);
          v278 = __PAIR64__(objc_msgSend_rows(v2275, v271, v272, v273, v274, v275, v276, v277), v270);
          v279 = 288;
          v280 = a1;
          v281 = v2283;
        }

        else
        {
          LODWORD(v262) = 0;
          v278 = 0;
          v280 = a1;
          v281 = v2283;
          if (*(a11 + 72) == 1)
          {
            v279 = 256;
          }

          else
          {
            v279 = 0;
          }
        }

        v2202 = v279 | v250;
        LODWORD(v2294) = v279 | v250;
        v2289 = v278;
        v2290 = v262;
        v2295 = v251;
        if (v208)
        {
          v928 = v281;
        }

        else
        {
          v928 = 0;
        }

        v2296 = v252;
        if (v2185)
        {
          v929 = 1;
          v930 = *(a11 + 200);
          v931 = *(a11 + 204);
          v932 = *(a11 + 212);
          if (v928)
          {
LABEL_385:
            v933 = objc_msgSend_dataType(v928, v241, v242, v243, v244, v245, v246, v247);
            if (((v933 >> 3) & 0x1FFC) != 0)
            {
              v941 = 2;
            }

            else
            {
              v941 = v933 >> 3 == 2;
            }

            v942 = objc_msgSend_rowBytes(v928, v934, v935, v936, v937, v938, v939, v940) >> v941;
            v2271 = objc_msgSend_columns(v928, v943, v944, v945, v946, v947, v948, v949);
            v957 = objc_msgSend_rows(v928, v950, v951, v952, v953, v954, v955, v956);
            LODWORD(v958) = v2271;
            v959 = 32;
LABEL_391:
            HIDWORD(v958) = v957;
            if (v929)
            {
              v959 |= 0x100u;
            }

            v2199 = v959 | v930;
            HIDWORD(v2294) = v959 | v930;
            v2291 = v958;
            v2292 = v942;
            v2293 = 0;
            v2297 = v931;
            v2298 = v932;
            if (v2188)
            {
              v960 = 1;
              v961 = *(a11 + 224);
              v962 = *(a11 + 228);
              v963 = *(a11 + 236);
              v2312 = 0;
              v2316 = 0;
              if (v208)
              {
                goto LABEL_395;
              }
            }

            else
            {
              v960 = *(a11 + 72);
              v961 = *(a11 + 224);
              v962 = *(a11 + 228);
              v963 = *(a11 + 236);
              v2312 = 0;
              v2316 = 0;
              if (v208)
              {
LABEL_395:
                v964 = objc_msgSend_dataType(v208, v241, v242, v243, v244, v245, v246, v247) >> 3;
                if (v110)
                {
                  goto LABEL_396;
                }

                goto LABEL_411;
              }
            }

            v964 = 4;
            if (v110)
            {
LABEL_396:
              v965 = objc_msgSend_dataType(v110, v241, v242, v243, v244, v245, v246, v247);
              if (v964 == 2)
              {
                v966 = 3;
              }

              else
              {
                v966 = 2;
              }

              if (v964 >= 4)
              {
                v966 = 4;
              }

              if (((v965 >> 3) & 0x1FFC) != 0)
              {
                v967 = 2;
              }

              else
              {
                v967 = v965 >> 3 == 2;
              }

              if (v208)
              {
                goto LABEL_405;
              }

              goto LABEL_417;
            }

LABEL_411:
            v967 = 2;
            if (v964 == 2)
            {
              v966 = 3;
            }

            else
            {
              v966 = 2;
            }

            if (v964 >= 4)
            {
              v966 = 4;
            }

            if (v208)
            {
LABEL_405:
              v2311 = objc_msgSend_rowBytes(v208, v241, v242, v243, v244, v245, v246, v247) >> (v966 - 2);
              v975 = a11;
              v2309 = objc_msgSend_columns(v208, v968, v969, v970, v971, v972, v973, v974);
              v976 = v110;
              if (v110)
              {
                goto LABEL_406;
              }

              goto LABEL_418;
            }

LABEL_417:
            v2311 = 0;
            v975 = a11;
            v2309 = 0;
            v976 = v110;
            if (v110)
            {
LABEL_406:
              v977 = v976;
              v2315 = objc_msgSend_rowBytes(v976, v241, v242, v243, v244, v245, v246, v247) >> v967;
              v978 = v977;
              v208 = v111;
              v986 = a4;
              v2313 = objc_msgSend_columns(v978, v979, v980, v981, v982, v983, v984, v985);
              if (v111)
              {
                goto LABEL_407;
              }

              goto LABEL_419;
            }

LABEL_418:
            v2315 = 0;
            v986 = a4;
            v2313 = v976;
            if (v208)
            {
LABEL_407:
              v2310 = objc_msgSend_rows(v208, v241, v242, v243, v244, v245, v246, v247);
              v987 = v110;
              if (v110)
              {
LABEL_408:
                v988 = v987;
                v989 = objc_msgSend_rows(v987, v241, v242, v243, v244, v245, v246, v247);
                goto LABEL_421;
              }

LABEL_420:
              v989 = 0;
              v988 = v987;
LABEL_421:
              v2314 = v989;
              if (v988)
              {
                v990 = (32 * (v111 != 0)) | 0x40;
              }

              else
              {
                v990 = 32 * (v111 != 0);
              }

              if (v960)
              {
                v990 |= 0x100u;
              }

              v2317 = v962;
              v991 = v990 | v961;
              v2318 = v963;
              v2319 = v990 | v961;
              v992 = 268435472;
              if (!v2275 || (v2251 = 268435472, objc_msgSend_dataType(v2275, v241, v242, v243, v244, v245, v246, v247) != 268435472))
              {
                if (!v2283 || (v2251 = 268435472, objc_msgSend_dataType(v2283, v241, v242, v243, v244, v245, v246, v247) != 268435472))
                {
                  if (v2275 && objc_msgSend_dataType(v2275, v241, v242, v243, v244, v245, v246, v247) == 536870920)
                  {
                    goto LABEL_434;
                  }

                  if (v2283)
                  {
                    if (objc_msgSend_dataType(v2283, v241, v242, v243, v244, v245, v246, v247) != 536870920)
                    {
                      v2251 = 268435488;
                      if (!v111)
                      {
LABEL_477:
                        v1090 = v2207;
                        v1091 = v110;
                        if (v110)
                        {
                          v1092 = objc_msgSend_dataType(v110, v241, v242, v243, v244, v245, v246, v247);
                          v1091 = v110;
                          if (v1092 == 268435472)
                          {
LABEL_485:
                            if (v2251 != v992)
                            {

                              v1104 = v2209;
                              if (v2209)
                              {
                                goto LABEL_800;
                              }

                              return;
                            }

                            v1094 = *(v975 + 256);
                            v1095 = *(v975 + 252);
                            if (v1095 == 0.0)
                            {
                              v1095 = 1.0;
                            }

                            v2320 = v1095;
                            v2321 = 1.0 / v1095;
                            *&v2355 = v2264;
                            *(&v2355 + 1) = v2234;
                            v2356 = v217;
                            v2357 = v226;
                            v2349 = 0u;
                            v2350 = 0u;
                            v2374 = v217;
                            v2375 = v226;
                            if (v2264)
                            {
                              v1096 = a7;
                              if (v217)
                              {
                                goto LABEL_490;
                              }
                            }

                            else
                            {
                              *&v2355 = v1090;
                              v1096 = a7;
                              if (v217)
                              {
LABEL_490:
                                v1097 = v2211;
                                v1098 = v2253;
                                if (v2234)
                                {
                                  goto LABEL_491;
                                }

                                goto LABEL_502;
                              }
                            }

                            v2356 = v2207;
                            v2374 = v2207;
                            v1097 = v2211;
                            v1098 = v2253;
                            if (v2234)
                            {
LABEL_491:
                              v1099 = v991 | 0x200;
                              if (v226)
                              {
                                goto LABEL_492;
                              }

LABEL_503:
                              v2357 = v2207;
                              v2375 = v2207;
LABEL_492:
                              if (v1094)
                              {
                                v1100 = v1099;
                              }

                              else
                              {
                                v1100 = v991;
                              }

                              v2196 = v1100;
                              v2237 = *(*v280 + 32);
                              v1101 = a2;
                              if (v1098)
                              {
                                v1102 = v1098;
                                v2308 = objc_msgSend_rowBytes(v1098, v241, v242, v243, v244, v245, v246, v247) >> 2;
                                if (v1096)
                                {
LABEL_497:
                                  v1103 = objc_msgSend_rows(v1096, v241, v242, v243, v244, v245, v246, v247);
LABEL_506:
                                  v1105 = 0;
                                  v2230 = a5 - 1;
                                  v2266 = (v2209 - 1);
                                  v2272 = &a9[a2 - 1];
                                  v2279 = v986 - 8;
                                  v1106 = v1096;
                                  v2225 = v1097;
                                  while (1)
                                  {
                                    v2218 = v1105;
                                    v1107 = objc_msgSend_rows(*(v2279 + 8 * v1101), v241, v242, v243, v244, v245, v246, v247);
                                    v1115 = v1107;
                                    if (v1103 >= v1107)
                                    {
                                      v1116 = v1107;
                                    }

                                    else
                                    {
                                      v1116 = v1103;
                                    }

                                    v2286 = v1116;
                                    v2347 = xmmword_239D7D4E0;
                                    v2348 = 1;
                                    if (v2209)
                                    {
                                      v1117 = *&v2266[8 * v1101];
                                    }

                                    else
                                    {
                                      v1117 = 0;
                                    }

                                    v2303 = v1107;
                                    v2299 = objc_msgSend_rowBytes(*(v2279 + 8 * v1101), v1108, v1109, v1110, v1111, v1112, v1113, v1114) >> 2;
                                    if (v2209)
                                    {
                                      v1125 = *&v2266[8 * v1101];
                                    }

                                    else
                                    {
                                      LODWORD(v1125) = 0;
                                    }

                                    v2294 = __PAIR64__(v2199, v2202);
                                    v2305 = v1125;
                                    v2319 = v2196;
                                    if (a9 && ((v1126 = v2272, (*(a1 + 80) & 1) != 0) || (v1126 = a9, v1101 == 1)))
                                    {
                                      v1127 = *v1126;
                                    }

                                    else
                                    {
                                      v1127 = 0;
                                    }

                                    v1128 = v2239 - v1117;
                                    v1129 = objc_msgSend_rowBytes(v1102, v1118, v1119, v1120, v1121, v1122, v1123, v1124);
                                    v1137 = objc_msgSend_rowBytes(v2258, v1130, v1131, v1132, v1133, v1134, v1135, v1136);
                                    v2239 -= v1117;
                                    if (*&v2266[8 * v1101])
                                    {
                                      v1144 = v1137 * v1128;
                                    }

                                    else
                                    {
                                      v1144 = 0;
                                    }

                                    v2222 = v1101 - 1;
                                    v1145 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 104), v1138, v1101 - 1, v1139, v1140, v1141, v1142, v1143);
                                    v2302 = objc_msgSend_rowBytes(*(v1145 + 48), v1146, v1147, v1148, v1149, v1150, v1151, v1152);
                                    if (v1106)
                                    {
                                      v1160 = objc_msgSend_data(v1106, v1153, v1154, v1155, v1156, v1157, v1158, v1159);
                                    }

                                    else
                                    {
                                      v1160 = 0;
                                    }

                                    v2366 = v1160;
                                    v2367 = objc_msgSend_data(v2253, v1153, v1154, v1155, v1156, v1157, v1158, v1159);
                                    v1168 = v2207;
                                    if (v1127)
                                    {
                                      v1168 = objc_msgSend_data(v1127, v1161, v1162, v1163, v1164, v1165, v1166, v1167);
                                    }

                                    v2368 = v1168;
                                    v2369 = objc_msgSend_data(*(v2279 + 8 * v1101), v1161, v1162, v1163, v1164, v1165, v1166, v1167);
                                    v2370 = objc_msgSend_data(*(v1145 + 48), v1169, v1170, v1171, v1172, v1173, v1174, v1175);
                                    v1183 = v2207;
                                    v1103 = v1115;
                                    if (v2258)
                                    {
                                      v1183 = objc_msgSend_data(v2258, v1176, v1177, v1178, v1179, v1180, v1181, v1182);
                                    }

                                    v2371 = v1183;
                                    v2304 = v2286;
                                    if (v1106)
                                    {
                                      v2306 = objc_msgSend_rowBytes(v1106, v1176, v1177, v1178, v1179, v1180, v1181, v1182) >> 2;
                                      if (v1127)
                                      {
                                        goto LABEL_534;
                                      }
                                    }

                                    else
                                    {
                                      v2306 = 0;
                                      if (v1127)
                                      {
LABEL_534:
                                        v1184 = objc_msgSend_rowBytes(v1127, v1176, v1177, v1178, v1179, v1180, v1181, v1182);
                                        v1185 = v2225;
                                        v1186 = v2218;
                                        v2307 = v1184 >> 2;
                                        v1187 = *(a1 + 128);
                                        if (!v1187)
                                        {
                                          goto LABEL_536;
                                        }

LABEL_535:
                                        v1187 = *(v1187 + 8 * v1101 - 8);
                                        goto LABEL_536;
                                      }
                                    }

                                    v1185 = v2225;
                                    v1186 = v2218;
                                    v2307 = 0;
                                    v1187 = *(a1 + 128);
                                    if (v1187)
                                    {
                                      goto LABEL_535;
                                    }

LABEL_536:
                                    v1188 = v1185 - v1115;
                                    v1189 = v1129 * v1188;
                                    *&v2362 = v1186;
                                    *(&v2362 + 1) = v1129 * v1188;
                                    *&v2363 = 0;
                                    *(&v2363 + 1) = v1187;
                                    *&v2364 = 0;
                                    *(&v2364 + 1) = v1144;
                                    v2225 = v1188;
                                    if (v2366)
                                    {
                                      v2319 |= 0x400u;
                                    }

                                    else
                                    {
                                      v2366 = v2207;
                                      v2294 &= 0xFFFFFFDFFFFFFFDFLL;
                                    }

                                    if (v2286 <= 1)
                                    {
                                      v1190 = 1;
                                    }

                                    else
                                    {
                                      v1190 = v2286;
                                    }

                                    v1198 = (*(*v2237 + 112))(v2237, v2251, v2260, v1190, &v2347, a2);
                                    v2220 = HIDWORD(v1198);
                                    v1199 = LODWORD(v1198);
                                    v1200 = v2230[v1101];
                                    if (v1200)
                                    {
                                      objc_msgSend_columns(v1200, v1191, v1192, v1193, v1194, v1195, v1196, v1197);
                                    }

                                    MPSLibrary::CreateUberShaderKey();
                                    v1201 = MPSLibrary::GetPipelineStateForMPSKey();
                                    v1209 = objc_msgSend_threadExecutionWidth(v1201, v1202, v1203, v1204, v1205, v1206, v1207, v1208, 0, 0, 0, 0, 0);
                                    if (v1209 <= 1)
                                    {
                                      v1217 = 1;
                                    }

                                    else
                                    {
                                      v1217 = v1209;
                                    }

                                    v1218 = objc_msgSend_maxTotalThreadsPerThreadgroup(v1201, v1210, v1211, v1212, v1213, v1214, v1215, v1216);
                                    if (v1218 <= 1)
                                    {
                                      v1225 = 1;
                                    }

                                    else
                                    {
                                      v1225 = v1218;
                                    }

                                    if (v1225 >= 0x100)
                                    {
                                      v1225 = 256;
                                    }

                                    v1226 = *(&v2347 + 1);
                                    if ((v1217 & (v1217 - 1)) != 0)
                                    {
                                      if (*(&v2347 + 1) > v1217 || (v1227 = v2348, v1228 = v2347, v2348 * *(&v2347 + 1) < v1217) && v2348 * *(&v2347 + 1) * v2347 % v1217)
                                      {
LABEL_559:
                                        *&v2347 = 1;
                                        *(&v2347 + 1) = v1217;
                                        v1227 = 1;
                                        v1226 = v1217;
                                        v1228 = 1;
                                        v2348 = 1;
                                      }
                                    }

                                    else
                                    {
                                      if (*(&v2347 + 1) > v1217)
                                      {
                                        goto LABEL_559;
                                      }

                                      v1227 = v2348;
                                      v1228 = v2347;
                                      if (v2348 * *(&v2347 + 1) < v1217 && ((v2348 * *(&v2347 + 1) * v2347) & (v1217 - 1)) != 0)
                                      {
                                        goto LABEL_559;
                                      }
                                    }

                                    if (v1226 * v1227 * v1228 > v1225)
                                    {
                                      *&v2347 = 1;
                                      *(&v2347 + 1) = v1217;
                                      v2348 = 1;
                                    }

                                    objc_msgSend_setComputePipelineState_(*(a1 + 16), v1219, v1201, v1220, v1221, v1222, v1223, v1224);
                                    MPSLibrary::ReleaseMPSKey();
                                    objc_msgSend_setBytes_length_atIndex_(v2247, v1229, &v2289, 168, 0, v1230, v1231, v1232);
                                    objc_msgSend_setBuffers_offsets_withRange_(v2247, v1233, &v2366, &v2362, 5, 6, v1234, v1235);
                                    objc_msgSend_setBuffers_offsets_withRange_(v2247, v1236, &v2355, &v2349, 1, 4, v1237, v1238);
                                    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v2247, v1239, 4 * v2347 * *(&v2347 + 1) * v2348, 0, v1240, v1241, v1242, v1243);
                                    v1249 = *(&v2347 + 1) * v2220;
                                    if (v1249)
                                    {
                                      v1249 = (v1249 + v2213) / v1249;
                                    }

                                    v1250 = v2348 * v1199;
                                    if (v1250)
                                    {
                                      v1250 = (v1103 + v1250 - 1) / v1250;
                                    }

                                    v2344 = 1;
                                    v2345 = v1249;
                                    v2346 = v1250;
                                    v2342 = v2347;
                                    v2343 = v2348;
                                    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v2247, v1244, &v2344, &v2342, v1245, v1246, v1247, v1248);
                                    MPSLibrary::ReleaseComputeState();
                                    v1258 = (*(*v2237 + 120))(v2237, v2251, v2260, v1190, &v2347, a2);
                                    v2221 = HIDWORD(v1258);
                                    v1259 = LODWORD(v1258);
                                    v1260 = v2230[v1101];
                                    if (v1260)
                                    {
                                      objc_msgSend_columns(v1260, v1251, v1252, v1253, v1254, v1255, v1256, v1257);
                                    }

                                    MPSLibrary::CreateUberShaderKey();
                                    v1261 = MPSLibrary::GetPipelineStateForMPSKey();
                                    v1269 = objc_msgSend_threadExecutionWidth(v1261, v1262, v1263, v1264, v1265, v1266, v1267, v1268, 0, 0, 0, 0, 0);
                                    if (v1269 <= 1)
                                    {
                                      v1277 = 1;
                                    }

                                    else
                                    {
                                      v1277 = v1269;
                                    }

                                    v1278 = objc_msgSend_maxTotalThreadsPerThreadgroup(v1261, v1270, v1271, v1272, v1273, v1274, v1275, v1276);
                                    if (v1278 <= 1)
                                    {
                                      v1285 = 1;
                                    }

                                    else
                                    {
                                      v1285 = v1278;
                                    }

                                    if (v1285 >= 0x100)
                                    {
                                      v1285 = 256;
                                    }

                                    v1286 = *(&v2347 + 1);
                                    if ((v1277 & (v1277 - 1)) != 0)
                                    {
                                      if (*(&v2347 + 1) <= v1277)
                                      {
                                        v1287 = v2348;
                                        v1288 = v2347;
                                        if (v2348 * *(&v2347 + 1) >= v1277 || !(v2348 * *(&v2347 + 1) * v2347 % v1277))
                                        {
                                          goto LABEL_581;
                                        }
                                      }
                                    }

                                    else if (*(&v2347 + 1) <= v1277)
                                    {
                                      v1287 = v2348;
                                      v1288 = v2347;
                                      if (v2348 * *(&v2347 + 1) >= v1277 || ((v2348 * *(&v2347 + 1) * v2347) & (v1277 - 1)) == 0)
                                      {
                                        goto LABEL_581;
                                      }
                                    }

                                    *&v2347 = 1;
                                    *(&v2347 + 1) = v1277;
                                    v1287 = 1;
                                    v1286 = v1277;
                                    v1288 = 1;
                                    v2348 = 1;
LABEL_581:
                                    if (v1286 * v1287 * v1288 > v1285)
                                    {
                                      *&v2347 = 1;
                                      *(&v2347 + 1) = v1277;
                                      v2348 = 1;
                                    }

                                    objc_msgSend_setComputePipelineState_(*(a1 + 16), v1279, v1261, v1280, v1281, v1282, v1283, v1284);
                                    MPSLibrary::ReleaseMPSKey();
                                    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v2247, v1289, 4 * v2347 * *(&v2347 + 1) * v2348, 0, v1290, v1291, v1292, v1293);
                                    objc_msgSend_setBuffers_offsets_withRange_(v2247, v1294, &v2374, &v2349, 1, 2, v1295, v1296);
                                    objc_msgSend_setBytes_length_atIndex_(v2247, v1297, &v2289, 168, 0, v1298, v1299, v1300);
                                    objc_msgSend_setBuffers_offsets_withRange_(v2247, v1301, &v2366, &v2362, 3, 6, v1302, v1303);
                                    v1309 = *(&v2347 + 1) * v2221;
                                    if (v1309)
                                    {
                                      v1309 = (v1309 + v2213) / v1309;
                                    }

                                    v1310 = v2348 * v1259;
                                    if (v1310)
                                    {
                                      v1310 = (v1103 + v1310 - 1) / v1310;
                                    }

                                    v2344 = 1;
                                    v2345 = v1309;
                                    v2346 = v1310;
                                    v2342 = v2347;
                                    v2343 = v2348;
                                    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v2247, v1304, &v2344, &v2342, v1305, v1306, v1307, v1308);
                                    MPSLibrary::ReleaseComputeState();
                                    v2272 -= 8;
                                    --v1101;
                                    v1106 = v2253;
                                    v1102 = v2253;
                                    v1105 = v1189;
                                    if (!v2222)
                                    {
                                      v1311 = *(a11 + 32);
                                      v1312 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v241, v2211, v1311, (4 * v1311 + 12) & 0x3FFFFFFF0, 268435488, v246, v247);
                                      v1313 = MPSAutoCache::GetTempBuffer(*(a1 + 72), ((4 * v1311 + 12) & 0x3FFFFFFF0) * v2211, 0);
                                      v1314 = objc_alloc(MEMORY[0x277CD7250]);
                                      v1320 = objc_msgSend_initWithBuffer_descriptor_(v1314, v1315, v1313, v1312, v1316, v1317, v1318, v1319);
                                      sub_239BD38CC(a1, v2167, v1320, v2211, a2, *(a1 + 112), v1321, v1322);
                                      if (v2160)
                                      {
                                        v1329 = 56;
                                        if (a13)
                                        {
                                          v1329 = 64;
                                        }

                                        v1330 = *(a1 + v1329);
                                        objc_msgSend_setK_(v1330, v1323, v2211, v1324, v1325, v1326, v1327, v1328);
                                        objc_msgSend_setN_(v1330, v1331, v1311, v1332, v1333, v1334, v1335, v1336);
                                        objc_msgSend_setM_(v1330, v1337, v2260, v1338, v1339, v1340, v1341, v1342);
                                        objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v1330, v1343, *(a1 + 8), v2247, v2253, v1320, v2160, v1344);
                                      }

                                      if (v2158)
                                      {
                                        v1345 = 56;
                                        if (a13)
                                        {
                                          v1345 = 64;
                                        }

                                        v1346 = *(a1 + v1345);
                                        objc_msgSend_setK_(v1346, v1323, v2211, v1324, v1325, v1326, v1327, v1328);
                                        objc_msgSend_setN_(v1346, v1347, v1311, v1348, v1349, v1350, v1351, v1352);
                                        objc_msgSend_setM_(v1346, v1353, v2260, v1354, v1355, v1356, v1357, v1358);
                                        v2289 = 0;
                                        v2290 = v2260;
                                        v2291 = 0;
                                        objc_msgSend_setLeftMatrixOrigin_(v1346, v1359, &v2289, v1360, v1361, v1362, v1363, v1364);
                                        objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v1346, v1365, *(a1 + 8), v2247, v2253, v1320, v2158, v1366);
                                        v2290 = 0;
                                        v2289 = 0;
                                        v2291 = 0;
                                        objc_msgSend_setLeftMatrixOrigin_(v1346, v1367, &v2289, v1368, v1369, v1370, v1371, v1372);
                                      }

                                      if (v2156)
                                      {
                                        v1373 = 56;
                                        if (a13)
                                        {
                                          v1373 = 64;
                                        }

                                        v1374 = *(a1 + v1373);
                                        objc_msgSend_setK_(v1374, v1323, v2211, v1324, v1325, v1326, v1327, v1328);
                                        objc_msgSend_setN_(v1374, v1375, v1311, v1376, v1377, v1378, v1379, v1380);
                                        objc_msgSend_setM_(v1374, v1381, v2260, v1382, v1383, v1384, v1385, v1386);
                                        v2289 = 0;
                                        v2290 = 2 * v2260;
                                        v2291 = 0;
                                        objc_msgSend_setLeftMatrixOrigin_(v1374, v1387, &v2289, v1388, v1389, v1390, v1391, v1392);
                                        objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v1374, v1393, *(a1 + 8), v2247, v2253, v1320, v2156, v1394);
                                        v2290 = 0;
                                        v2289 = 0;
                                        v2291 = 0;
                                        objc_msgSend_setLeftMatrixOrigin_(v1374, v1395, &v2289, v1396, v1397, v1398, v1399, v1400);
                                      }

                                      if (v2172)
                                      {
                                        sub_239BD9310(a1, v2253, v2172, v2260, v2211, 0, a13, 0, 0);
                                      }

                                      if (v2170)
                                      {
                                        sub_239BD9310(a1, v2253, v2170, v2260, v2211, 4 * v2260, a13, 0, 0);
                                      }

                                      v1407 = v2211;
                                      v1408 = v2153;
                                      if (v2153)
                                      {
                                        sub_239BD9310(a1, v2253, v2153, v2260, v2211, 8 * v2260, a13, 0, 0);
                                      }

                                      v1409 = objc_msgSend_rows(*v2167, v1401, v1408, v1402, v1403, v1404, v1405, v1406);
                                      v1417 = objc_msgSend_rows(*&v2167[8 * v2150], v1410, v1411, v1412, v1413, v1414, v1415, v1416);
                                      sub_239BD9B3C(a1, v1409, v1417, v2211, v2260, v2253, 0, v2258, 0, a7, v2180, a13);
                                      v1425 = objc_msgSend_rows(*v2167, v1418, v1419, v1420, v1421, v1422, v1423, v1424);
                                      v1433 = objc_msgSend_rows(*&v2167[8 * v2150], v1426, v1427, v1428, v1429, v1430, v1431, v1432);
                                      sub_239BD9B3C(a1, v1425, v1433, v2211, v2260, v2253, v2260, v2258, 0, a7, v2177, a13);
                                      if (v2178 | v2174)
                                      {
                                        v1440 = 56;
                                        if (a13)
                                        {
                                          v1440 = 64;
                                        }

                                        v1441 = *(a1 + v1440);
                                        objc_msgSend_setK_(v1441, v1434, v2211, v1435, v1436, v1437, v1438, v1439);
                                        objc_msgSend_setN_(v1441, v1442, v2260, v1443, v1444, v1445, v1446, v1447);
                                        objc_msgSend_setM_(v1441, v1448, v2260, v1449, v1450, v1451, v1452, v1453);
                                        v2289 = 0;
                                        v2290 = 2 * v2260;
                                        v2291 = 0;
                                        objc_msgSend_setLeftMatrixOrigin_(v1441, v1454, &v2289, v1455, v1456, v1457, v1458, v1459);
                                        if (v2178)
                                        {
                                          v2289 = 0;
                                          v2290 = 7 * v2260;
                                          v2291 = 0;
                                          objc_msgSend_setRightMatrixOrigin_(v1441, v1460, &v2289, v1461, v1462, v1463, v1464, v1465);
                                          objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v1441, v1466, *(a1 + 8), v2247, v2253, v2253, v2178, v1467);
                                        }

                                        if (v2174)
                                        {
                                          v2289 = 0;
                                          v2290 = 6 * v2260;
                                          v2291 = 0;
                                          objc_msgSend_setRightMatrixOrigin_(v1441, v1460, &v2289, v1461, v1462, v1463, v1464, v1465);
                                          objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v1441, v1468, *(a1 + 8), v2247, v2253, v2253, v2174, v1469);
                                        }

                                        v2290 = 0;
                                        v2289 = 0;
                                        v2291 = 0;
                                        objc_msgSend_setRightMatrixOrigin_(v1441, v1460, &v2289, v1461, v1462, v1463, v1464, v1465);
                                        v2290 = 0;
                                        v2289 = 0;
                                        v2291 = 0;
                                        objc_msgSend_setLeftMatrixOrigin_(v1441, v1470, &v2289, v1471, v1472, v1473, v1474, v1475);
                                        v1407 = v2211;
                                      }

                                      v1476 = *(a11 + 32);
                                      v1477 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v1434, v1407, v1476, (4 * v1476 + 12) & 0x3FFFFFFF0, 268435488, v1438, v1439);
                                      v1478 = MPSAutoCache::GetTempBuffer(*(a1 + 72), ((4 * v1476 + 12) & 0x3FFFFFFF0) * v1407, 0);
                                      v1479 = objc_alloc(MEMORY[0x277CD7250]);
                                      v1492 = objc_msgSend_initWithBuffer_descriptor_(v1479, v1480, v1478, v1477, v1481, v1482, v1483, v1484);
                                      if (!v2181)
                                      {
                                        v1494 = 0;
                                        v1493 = v2260;
                                        if (!v2185)
                                        {
                                          goto LABEL_638;
                                        }

                                        goto LABEL_630;
                                      }

                                      v1493 = v2260;
                                      if (*(a11 + 72))
                                      {
                                        v1494 = 0;
                                        if (!v2185)
                                        {
                                          goto LABEL_638;
                                        }

LABEL_630:
                                        if ((*(a11 + 72) & 1) == 0)
                                        {
                                          v1524 = objc_msgSend_dataType(v2185, v1485, v1486, v1487, v1488, v1489, v1490, v1491);
                                          v1531 = 48;
                                          if (v1524 == 268435472)
                                          {
                                            v1531 = 40;
                                          }

                                          v1532 = 32;
                                          if (v1524 == 268435472)
                                          {
                                            v1532 = 24;
                                          }

                                          if (v1494)
                                          {
                                            v1531 = v1532;
                                          }

                                          v1533 = *(a1 + v1531);
                                          objc_msgSend_setK_(v1533, v1525, v1493, v1526, v1527, v1528, v1529, v1530);
                                          objc_msgSend_setN_(v1533, v1534, v1476, v1535, v1536, v1537, v1538, v1539);
                                          objc_msgSend_setM_(v1533, v1540, v2211, v1541, v1542, v1543, v1544, v1545);
                                          v2290 = 0;
                                          v2289 = 0;
                                          v2291 = 0;
                                          objc_msgSend_setResultMatrixOrigin_(v1533, v1546, &v2289, v1547, v1548, v1549, v1550, v1551);
                                          v2289 = 0;
                                          v2290 = v1493;
                                          v2291 = 0;
                                          objc_msgSend_setLeftMatrixOrigin_(v1533, v1552, &v2289, v1553, v1554, v1555, v1556, v1557);
                                          objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v1533, v1558, *(a1 + 8), v2247, v2253, v2185, v1492, v1559);
                                          v2290 = 0;
                                          v2289 = 0;
                                          v2291 = 0;
                                          objc_msgSend_setLeftMatrixOrigin_(v1533, v1560, &v2289, v1561, v1562, v1563, v1564, v1565);
                                          v1494 = 1;
                                        }
                                      }

                                      else
                                      {
                                        v1495 = objc_msgSend_dataType(v2181, v1485, v1486, v1487, v1488, v1489, v1490, v1491);
                                        v1502 = 48;
                                        if (v1495 == 268435472)
                                        {
                                          v1502 = 40;
                                        }

                                        v1503 = *(a1 + v1502);
                                        objc_msgSend_setK_(v1503, v1496, v2260, v1497, v1498, v1499, v1500, v1501);
                                        objc_msgSend_setN_(v1503, v1504, v1476, v1505, v1506, v1507, v1508, v1509);
                                        objc_msgSend_setM_(v1503, v1510, v2211, v1511, v1512, v1513, v1514, v1515);
                                        v2290 = 0;
                                        v2289 = 0;
                                        v2291 = 0;
                                        objc_msgSend_setResultMatrixOrigin_(v1503, v1516, &v2289, v1517, v1518, v1519, v1520, v1521);
                                        objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v1503, v1522, *(a1 + 8), v2247, v2253, v2181, v1492, v1523);
                                        v1494 = 1;
                                        if (v2185)
                                        {
                                          goto LABEL_630;
                                        }
                                      }

LABEL_638:
                                      if (v2188 && (*(a11 + 72) & 1) == 0)
                                      {
                                        v1566 = objc_msgSend_dataType(v2188, v1485, v1486, v1487, v1488, v1489, v1490, v1491);
                                        v1573 = 48;
                                        if (v1566 == 268435472)
                                        {
                                          v1573 = 40;
                                        }

                                        v1574 = 32;
                                        if (v1566 == 268435472)
                                        {
                                          v1574 = 24;
                                        }

                                        if (v1494)
                                        {
                                          v1573 = v1574;
                                        }

                                        v1575 = *(a1 + v1573);
                                        objc_msgSend_setK_(v1575, v1567, v1493, v1568, v1569, v1570, v1571, v1572);
                                        objc_msgSend_setN_(v1575, v1576, v1476, v1577, v1578, v1579, v1580, v1581);
                                        objc_msgSend_setM_(v1575, v1582, v2211, v1583, v1584, v1585, v1586, v1587);
                                        v2290 = 0;
                                        v2289 = 0;
                                        v2291 = 0;
                                        objc_msgSend_setResultMatrixOrigin_(v1575, v1588, &v2289, v1589, v1590, v1591, v1592, v1593);
                                        v2289 = 0;
                                        v2290 = 2 * v2260;
                                        v2291 = 0;
                                        objc_msgSend_setLeftMatrixOrigin_(v1575, v1594, &v2289, v1595, v1596, v1597, v1598, v1599);
                                        objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v1575, v1600, *(a1 + 8), v2247, v2253, v2188, v1492, v1601);
                                        v2290 = 0;
                                        v2289 = 0;
                                        v2291 = 0;
                                        objc_msgSend_setLeftMatrixOrigin_(v1575, v1602, &v2289, v1603, v1604, v1605, v1606, v1607);
                                      }

                                      sub_239BD96C4(a1, v1492, a5, v2211, a2, *(a1 + 136), v1490, v1491);

                                      v1104 = v2209;
LABEL_800:
                                      free(v1104);
                                      return;
                                    }
                                  }
                                }
                              }

                              else
                              {
                                v1102 = 0;
                                v2308 = 0;
                                if (v1096)
                                {
                                  goto LABEL_497;
                                }
                              }

                              v1103 = 0;
                              goto LABEL_506;
                            }

LABEL_502:
                            *(&v2355 + 1) = v2207;
                            v1099 = v991 | 0x200;
                            if (v226)
                            {
                              goto LABEL_492;
                            }

                            goto LABEL_503;
                          }
                        }

                        v992 = 536870920;
                        if (!v111 || (v1093 = objc_msgSend_dataType(v111, v241, v242, v243, v244, v245, v246, v247), v1091 = v110, v1093 != 536870920))
                        {
                          if (!v1091 || objc_msgSend_dataType(v1091, v241, v242, v243, v244, v245, v246, v247) != 536870920)
                          {
                            v992 = 268435488;
                          }
                        }

LABEL_484:
                        v1090 = v2207;
                        goto LABEL_485;
                      }

LABEL_476:
                      if (objc_msgSend_dataType(v111, v241, v242, v243, v244, v245, v246, v247) == 268435472)
                      {
                        goto LABEL_484;
                      }

                      goto LABEL_477;
                    }

LABEL_434:
                    v2251 = 536870920;
                    if (!v111)
                    {
                      goto LABEL_477;
                    }

                    goto LABEL_476;
                  }

                  v2251 = 268435488;
                }
              }

              if (!v111)
              {
                goto LABEL_477;
              }

              goto LABEL_476;
            }

LABEL_419:
            v2310 = 0;
            v987 = v110;
            if (v110)
            {
              goto LABEL_408;
            }

            goto LABEL_420;
          }
        }

        else
        {
          v929 = *(a11 + 72);
          v930 = *(a11 + 200);
          v931 = *(a11 + 204);
          v932 = *(a11 + 212);
          if (v928)
          {
            goto LABEL_385;
          }
        }

        v959 = 0;
        LODWORD(v942) = 0;
        v957 = 0;
        LODWORD(v958) = 0;
        goto LABEL_391;
      }

LABEL_75:
      LODWORD(v248) = objc_msgSend_rowBytes(v248, v241, v242, v243, v244, v245, v246, v247);
      goto LABEL_76;
    }

LABEL_87:
    v226 = 0;
    v2207 = objc_msgSend_data(v2253, v159, v160, v161, v162, v163, v164, v165);
    v248 = v2258;
    v2150 = v166;
    if (!v2258)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  if (a12)
  {
    return;
  }

  v16 = a7;
  v18 = *(a11 + 56);
  v2227 = *(a1 + 16);
  v2256 = (v18 + 3) & 0xFFFFFFFC;
  v2205 = v18;
  v2208 = 4 * v2256;
  v2274 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], a2, 1, v18, 4 * v2256, 268435488, a7, a8);
  v26 = 0;
  v27 = 0;
  do
  {
    v26 += objc_msgSend_rows(*&a3[8 * v27++], v19, v20, v21, v22, v23, v24, v25);
  }

  while (v15 != v27);
  v28 = MPSAutoCache::GetTempBuffer(*(a1 + 72), v26 * v2208, 0);
  v2203 = v26;
  objc_msgSend_setRows_(v2274, v29, v26, v30, v31, v32, v33, v34);
  v35 = objc_alloc(MEMORY[0x277CD7250]);
  v2282 = objc_msgSend_initWithBuffer_descriptor_(v35, v36, v28, v2274, v37, v38, v39, v40);
  v48 = *(a11 + 104);
  v2200 = *(a11 + 96);
  v49 = *(a1 + 88);
  v2166 = a3;
  if (!v49)
  {
    v2197 = 0;
    v2184 = 0;
    v2191 = 0;
    v67 = 0;
    v2259 = 0;
    v2187 = 1;
    v55 = a1;
    v53 = a4;
    v51 = a5;
    goto LABEL_686;
  }

  v50 = *(a11 + 88);
  v51 = a5;
  if (*v50)
  {
    v52 = a6;
    v2197 = *a6;
    v2200 = objc_msgSend_objectAtIndexedSubscript_(v49, v41, 0, v43, v44, v45, v46, v47);
    v50 = *(a11 + 88);
    v42 = 1;
    v53 = a4;
    if (v50[8])
    {
      goto LABEL_9;
    }
  }

  else
  {
    v42 = 0;
    v2197 = 0;
    v52 = a6;
    v53 = a4;
    if (v50[8])
    {
LABEL_9:
      v2191 = v52[v42++];
      if (v50[4])
      {
        goto LABEL_10;
      }

LABEL_378:
      v2184 = 0;
      v67 = 0;
      v2259 = 0;
      v49 = 0;
      v2187 = 1;
      v55 = a1;
      goto LABEL_686;
    }
  }

  v2191 = 0;
  if (!v50[4])
  {
    goto LABEL_378;
  }

LABEL_10:
  v54 = v52[v42];
  v55 = a1;
  v56 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v41, v42, v43, v44, v45, v46, v47);
  v48 = v56;
  v2184 = v54;
  if (!v54)
  {
    v2184 = 0;
    v67 = 0;
    v2259 = 0;
    v49 = 0;
    v2187 = 1;
    goto LABEL_686;
  }

  v57 = v56;
  v58 = malloc_type_malloc(8 * v15, 0x100004000313F17uLL);
  v59 = v15 - 1;
  v2259 = v58;
  v60 = 0;
  if (v15 != 1)
  {
    v61 = (v53 + 8);
    v62 = v15 - 1;
    v63 = v58;
    do
    {
      v64 = *v61++;
      v65 = objc_msgSend_rows(v64, v41, v42, v43, v44, v45, v46, v47);
      *v63++ = v65;
      v60 += v65;
      --v62;
    }

    while (v62);
  }

  v16 = a7;
  if (!a7)
  {
    v53 = a4;
    v2259[v59] = 0;
    v67 = v60;
    if (v60)
    {
      goto LABEL_16;
    }

LABEL_684:
    v2187 = 0;
    v49 = 0;
    goto LABEL_685;
  }

  v66 = objc_msgSend_rows(a7, v41, v42, v43, v44, v45, v46, v47);
  v53 = a4;
  v2259[v59] = v66;
  v67 = v66 + v60;
  if (!(v66 + v60))
  {
    goto LABEL_684;
  }

LABEL_16:
  v68 = MPSAutoCache::GetTempBuffer(*(a1 + 72), v67 * v2208, 0);
  objc_msgSend_setRows_(v2274, v69, v67, v70, v71, v72, v73, v74);
  v75 = objc_alloc(MEMORY[0x277CD7250]);
  v49 = objc_msgSend_initWithBuffer_descriptor_(v75, v76, v68, v2274, v77, v78, v79, v80);
  v2187 = 0;
LABEL_685:
  v48 = v57;
LABEL_686:
  WORD2(v2294) = *(a11 + 112);
  v2291 = *(a11 + 116);
  v2292 = *(a11 + 124);
  v2233 = v49;
  if (v49)
  {
    LODWORD(v49) = objc_msgSend_rowBytes(v49, v41, v42, v43, v44, v45, v46, v47);
  }

  v2300 = v49;
  if (v48)
  {
    v2267 = objc_msgSend_data(v48, v41, v42, v43, v44, v45, v46, v47);
    v1770 = objc_msgSend_rowBytes(v48, v1763, v1764, v1765, v1766, v1767, v1768, v1769);
    if (objc_msgSend_dataType(v48, v1771, v1772, v1773, v1774, v1775, v1776, v1777) == 268435472)
    {
LABEL_690:
      v1785 = 1;
      goto LABEL_693;
    }
  }

  else
  {
    v2267 = 0;
    v1770 = 0;
    if (objc_msgSend_dataType(0, v41, v42, v43, v44, v45, v46, v47) == 268435472)
    {
      goto LABEL_690;
    }
  }

  v1785 = 2 * (objc_msgSend_dataType(v48, v1778, v1779, v1780, v1781, v1782, v1783, v1784) != 536870920);
LABEL_693:
  LODWORD(v2290) = v1770 >> v1785;
  v1786 = objc_msgSend_columns(v48, v1778, v1779, v1780, v1781, v1782, v1783, v1784);
  v2226 = v48;
  v1794 = objc_msgSend_rows(v48, v1787, v1788, v1789, v1790, v1791, v1792, v1793);
  v1802 = 0;
  v2289 = __PAIR64__(v1794, v1786);
  do
  {
    objc_msgSend_rows(*(v53 + 8 * v1802++), v1795, v1796, v1797, v1798, v1799, v1800, v1801);
  }

  while (v15 != v1802);
  if (v16)
  {
    v1803 = objc_msgSend_rows(v16, v1795, v1796, v1797, v1798, v1799, v1800, v1801);
  }

  else
  {
    v1803 = 0;
  }

  v1804 = 0;
  v2238 = v2259 - 1;
  v1805 = &a9[v15 - 1];
  v2165 = v51;
  v2216 = v51 - 1;
  v2219 = *(*v55 + 32);
  v2280 = v53 - 8;
  v1806 = v15;
  v2255 = v2203;
  v2183 = v67;
  v2252 = v67;
  do
  {
    v2249 = v1804;
    v2355 = xmmword_239D7D5B8;
    v2356 = 1;
    v1824 = objc_msgSend_rows(*(v2280 + 8 * v1806), v1795, v1796, v1797, v1798, v1799, v1800, v1801);
    v1832 = v1824;
    if (v1803 >= v1824)
    {
      v1833 = v1824;
    }

    else
    {
      v1833 = v1803;
    }

    if (v2259)
    {
      v2242 = v2238[v1806];
    }

    else
    {
      v2242 = 0;
    }

    v1834 = objc_msgSend_dataType(v2226, v1825, v1826, v1827, v1828, v1829, v1830, v1831);
    v1842 = objc_msgSend_columns(v2226, v1835, v1836, v1837, v1838, v1839, v1840, v1841);
    if (v1833 <= 1)
    {
      v1843 = 1;
    }

    else
    {
      v1843 = v1833;
    }

    v1844 = (*(*v2219 + 96))(v2219, v1834, v1842, v1843, &v2355, v15);
    v2246 = HIDWORD(v1844);
    v1845 = LODWORD(v1844);
    objc_msgSend_dataType(v2226, v1846, v1847, v1848, v1849, v1850, v1851, v1852);
    v2273 = v1845;
    v1860 = v2216[v1806];
    if (v1860)
    {
      objc_msgSend_columns(v1860, v1853, v1854, v1855, v1856, v1857, v1858, v1859);
    }

    objc_msgSend_columns(v2282, v1853, v1854, v1855, v1856, v1857, v1858, v1859);
    MPSLibrary::CreateUberShaderKey();
    v1861 = MPSLibrary::GetPipelineStateForMPSKey();
    v1869 = objc_msgSend_threadExecutionWidth(v1861, v1862, v1863, v1864, v1865, v1866, v1867, v1868, 0, 0, 0, 0, 0);
    if (v1869 <= 1)
    {
      v1877 = 1;
    }

    else
    {
      v1877 = v1869;
    }

    v1878 = objc_msgSend_maxTotalThreadsPerThreadgroup(v1861, v1870, v1871, v1872, v1873, v1874, v1875, v1876);
    if (v1878 <= 1)
    {
      v1885 = 1;
    }

    else
    {
      v1885 = v1878;
    }

    if (v1885 >= 0x100)
    {
      v1885 = 256;
    }

    v1886 = *(&v2355 + 1);
    if ((v1877 & (v1877 - 1)) != 0)
    {
      if (*(&v2355 + 1) > v1877 || (v1887 = v2356, v1888 = v2355, v2356 * *(&v2355 + 1) < v1877) && v2356 * *(&v2355 + 1) * v2355 % v1877)
      {
LABEL_724:
        *&v2355 = 1;
        *(&v2355 + 1) = v1877;
        v1887 = 1;
        v1886 = v1877;
        v1888 = 1;
        v2356 = 1;
      }
    }

    else
    {
      if (*(&v2355 + 1) > v1877)
      {
        goto LABEL_724;
      }

      v1887 = v2356;
      v1888 = v2355;
      if (v2356 * *(&v2355 + 1) < v1877 && ((v2356 * *(&v2355 + 1) * v2355) & (v1877 - 1)) != 0)
      {
        goto LABEL_724;
      }
    }

    if (v1886 * v1887 * v1888 > v1885)
    {
      *&v2355 = 1;
      *(&v2355 + 1) = v1877;
      v2356 = 1;
    }

    objc_msgSend_setComputePipelineState_(*(a1 + 16), v1879, v1861, v1880, v1881, v1882, v1883, v1884);
    MPSLibrary::ReleaseMPSKey();
    HIWORD(v2294) = 0;
    v2293 = v1832;
    LODWORD(v2294) = objc_msgSend_rowBytes(*(v2280 + 8 * v1806), v1889, v1890, v1891, v1892, v1893, v1894, v1895) >> 2;
    if (v2259)
    {
      v1902 = v2238[v1806];
    }

    else
    {
      LODWORD(v1902) = 0;
    }

    HIDWORD(v2295) = v1902;
    v2298 = v2256;
    if (a9 && ((v1903 = v1805, (*(a1 + 80) & 1) != 0) || (v1903 = a9, v1806 == 1)))
    {
      v1904 = *v1903;
      v1905 = v2252 - v2242;
      v2252 -= v2242;
      if (!v2259)
      {
        goto LABEL_738;
      }
    }

    else
    {
      v1904 = 0;
      v1905 = v2252 - v2242;
      v2252 -= v2242;
      if (!v2259)
      {
        goto LABEL_738;
      }
    }

    if (v2238[v1806])
    {
      v1906 = v1905 * v2208;
      goto LABEL_739;
    }

LABEL_738:
    v1906 = 0;
LABEL_739:
    v1907 = v1806 - 1;
    v1908 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 104), v1896, v1806 - 1, v1897, v1898, v1899, v1900, v1901);
    v2299 = objc_msgSend_rowBytes(*(v1908 + 48), v1909, v1910, v1911, v1912, v1913, v1914, v1915);
    if (v16)
    {
      v2366 = objc_msgSend_data(v16, v1916, v1917, v1918, v1919, v1920, v1921, v1922);
      v2367 = objc_msgSend_data(v2282, v1923, v1924, v1925, v1926, v1927, v1928, v1929);
      if (v1904)
      {
        goto LABEL_741;
      }
    }

    else
    {
      v2366 = 0;
      v2367 = objc_msgSend_data(v2282, v1916, v1917, v1918, v1919, v1920, v1921, v1922);
      if (v1904)
      {
LABEL_741:
        v1937 = objc_msgSend_data(v1904, v1930, v1931, v1932, v1933, v1934, v1935, v1936);
        goto LABEL_744;
      }
    }

    v1937 = 0;
LABEL_744:
    v2368 = v1937;
    v2369 = objc_msgSend_data(*(v2280 + 8 * v1806), v1930, v1931, v1932, v1933, v1934, v1935, v1936);
    v2370 = objc_msgSend_data(*(v1908 + 48), v1938, v1939, v1940, v1941, v1942, v1943, v1944);
    v1952 = v2233;
    if (v2233)
    {
      v1952 = objc_msgSend_data(v2233, v1945, v1946, v1947, v1948, v1949, v1950, v1951);
    }

    v2371 = v1952;
    LODWORD(v2295) = v1833;
    if (v16)
    {
      v1953 = a1;
      LODWORD(v2297) = objc_msgSend_rowBytes(v16, v1945, v1946, v1947, v1948, v1949, v1950, v1951) >> 2;
      if (v1904)
      {
        goto LABEL_748;
      }
    }

    else
    {
      v1953 = a1;
      LODWORD(v2297) = 0;
      if (v1904)
      {
LABEL_748:
        v2296 = objc_msgSend_rows(v1904, v1945, v1946, v1947, v1948, v1949, v1950, v1951);
        v1961 = objc_msgSend_rowBytes(v1904, v1954, v1955, v1956, v1957, v1958, v1959, v1960) >> 2;
        goto LABEL_751;
      }
    }

    LODWORD(v1961) = 0;
    v2296 = 0;
LABEL_751:
    v15 = a2;
    HIDWORD(v2297) = v1961;
    v1962 = *(v1953 + 128);
    if (v1962)
    {
      v1962 = *(v1962 + 8 * v1806 - 8);
    }

    v1963 = 4 * (v2255 - v1832) * v2256;
    *&v2362 = v2249;
    *(&v2362 + 1) = v1963;
    *&v2363 = 0;
    *(&v2363 + 1) = v1962;
    *&v2364 = 0;
    *(&v2364 + 1) = v1906;
    v1964 = *(&v2355 + 1) * v2246;
    if (v1964)
    {
      v1965 = (v1964 + HIDWORD(v2289) - 1) / v1964;
      v1966 = v2356 * v2273;
      if (v1966)
      {
        goto LABEL_755;
      }
    }

    else
    {
      v1965 = 0;
      v1966 = v2356 * v2273;
      if (v1966)
      {
LABEL_755:
        v1967 = (v1832 + v1966 - 1) / v1966;
        v1968 = v2367;
        if (v2267)
        {
          goto LABEL_756;
        }

        goto LABEL_761;
      }
    }

    v1967 = 0;
    v1968 = v2367;
    if (v2267)
    {
LABEL_756:
      if (v2366)
      {
        goto LABEL_757;
      }

      goto LABEL_762;
    }

LABEL_761:
    HIWORD(v2294) = 1;
    v2267 = v1968;
    if (v2366)
    {
LABEL_757:
      if (v2368)
      {
        goto LABEL_763;
      }

      goto LABEL_699;
    }

LABEL_762:
    v2366 = v1968;
    HIWORD(v2294) = 1;
    if (v2368)
    {
LABEL_763:
      v2255 -= v1832;
      if (v2371)
      {
        goto LABEL_700;
      }

      goto LABEL_764;
    }

LABEL_699:
    v2368 = v1968;
    *&v2363 = 4 * (v2255 - v1832) * v2256;
    v2255 -= v1832;
    if (v2371)
    {
      goto LABEL_700;
    }

LABEL_764:
    v2371 = v1968;
    *(&v2364 + 1) = 0;
LABEL_700:
    objc_msgSend_setBytes_length_atIndex_(v2227, v1945, &v2289, 72, 0, v1949, v1950, v1951);
    objc_msgSend_setBuffers_offsets_withRange_(v2227, v1807, &v2366, &v2362, 2, 6, v1808, v1809);
    objc_msgSend_setBuffer_offset_atIndex_(v2227, v1810, v2267, 0, 1, v1811, v1812, v1813);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v2227, v1814, 4 * v2355 * *(&v2355 + 1) * v2356, 0, v1815, v1816, v1817, v1818);
    *&v2349 = 1;
    *(&v2349 + 1) = v1965;
    *&v2350 = v1967;
    v2347 = v2355;
    v2348 = v2356;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v2227, v1819, &v2349, &v2347, v1820, v1821, v1822, v1823);
    MPSLibrary::ReleaseComputeState();
    v1805 -= 8;
    --v1806;
    v16 = v2282;
    v1804 = v1963;
    v1803 = v1832;
  }

  while (v1907);
  v1969 = v2205;
  if (v2197)
  {
    v1970 = *(a11 + 32);
    v1971 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v1795, v2203, v1970, (4 * v1970 + 12) & 0x3FFFFFFF0, 268435488, v1800, v1801);
    v1972 = MPSAutoCache::GetTempBuffer(*(v1953 + 72), ((4 * v1970 + 12) & 0x3FFFFFFF0) * v2203, 0);
    v1973 = objc_alloc(MEMORY[0x277CD7250]);
    v1979 = objc_msgSend_initWithBuffer_descriptor_(v1973, v1974, v1972, v1971, v1975, v1976, v1977, v1978);
    sub_239BD38CC(v1953, v2166, v1979, v2203, a2, *(v1953 + 112), v1980, v1981);
    v1988 = 56;
    if (a13)
    {
      v1988 = 64;
    }

    v1989 = *(v1953 + v1988);
    objc_msgSend_setK_(v1989, v1982, v2203, v1983, v1984, v1985, v1986, v1987);
    v1990 = v1970;
    v1969 = v2205;
    objc_msgSend_setN_(v1989, v1991, v1990, v1992, v1993, v1994, v1995, v1996);
    objc_msgSend_setM_(v1989, v1997, v2205, v1998, v1999, v2000, v2001, v2002);
    objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v1989, v2003, *(v1953 + 8), v2227, v2282, v1979, v2197, v2004);
  }

  v2005 = v2191;
  if (v2191)
  {
    sub_239BD9310(v1953, v2282, v2191, v1969, v2203, 0, a13, 0, 0);
  }

  if ((v2187 & 1) == 0)
  {
    v2006 = objc_msgSend_rows(*v2166, v1795, v2005, v1797, v1798, v1799, v1800, v1801);
    v2007 = 56;
    if (a13)
    {
      v2007 = 64;
    }

    v2008 = *(v1953 + v2007);
    v2005 = v2203 - v2006;
    if (v2203 <= v2006)
    {
      if (a7)
      {
        if (a13)
        {
          goto LABEL_783;
        }

        goto LABEL_784;
      }

      if ((a13 & 1) == 0)
      {
        sub_239BD9574(v1953, v2184, v2005, v1797, v1798, v1799, v1800, v1801);
      }
    }

    else
    {
      v2009 = v2006;
      objc_msgSend_setK_(v2008, v1795, v2005, v1797, v1798, v1799, v1800, v1801);
      objc_msgSend_setN_(v2008, v2010, v2205, v2011, v2012, v2013, v2014, v2015);
      objc_msgSend_setM_(v2008, v2016, v2205, v2017, v2018, v2019, v2020, v2021);
      v2291 = 0;
      v2289 = v2009;
      v2290 = 0;
      objc_msgSend_setLeftMatrixOrigin_(v2008, v2022, &v2289, v2023, v2024, v2025, v2026, v2027);
      objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v2008, v2028, *(v1953 + 8), v2227, v2282, v2233, v2184, v2029);
      v2290 = 0;
      v2289 = 0;
      v2291 = 0;
      objc_msgSend_setLeftMatrixOrigin_(v2008, v2030, &v2289, v2031, v2032, v2033, v2034, v2035);
      if (!a7)
      {
        goto LABEL_788;
      }

LABEL_783:
      v2008 = *(v1953 + 64);
LABEL_784:
      v2036 = objc_msgSend_rows(a7, v1795, v2005, v1797, v1798, v1799, v1800, v1801);
      v2043 = v2183 - v2036;
      v2044 = *MEMORY[0x277CD73B8];
      if (v2036 >= *(*&v2166[8 * a2 - 8] + v2044))
      {
        objc_msgSend_setK_(v2008, v2037, *(*&v2166[8 * a2 - 8] + v2044), v2038, v2039, v2040, v2041, v2042);
      }

      else
      {
        objc_msgSend_setK_(v2008, v2037, v2036, v2038, v2039, v2040, v2041, v2042);
      }

      objc_msgSend_setN_(v2008, v2045, v2205, v2046, v2047, v2048, v2049, v2050);
      objc_msgSend_setM_(v2008, v2051, v2205, v2052, v2053, v2054, v2055, v2056);
      v2291 = 0;
      v2289 = v2043;
      v2290 = 0;
      objc_msgSend_setRightMatrixOrigin_(v2008, v2057, &v2289, v2058, v2059, v2060, v2061, v2062);
      objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v2008, v2063, *(v1953 + 8), v2227, a7, v2233, v2184, v2064);
      v2290 = 0;
      v2289 = 0;
      v2291 = 0;
      objc_msgSend_setRightMatrixOrigin_(v2008, v2065, &v2289, v2066, v2067, v2068, v2069, v2070);
    }
  }

LABEL_788:
  if (v2200 && *(a11 + 72) != 1)
  {
    v2080 = *(a11 + 32);
    v2081 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v1795, v2203, v2080, (4 * v2080 + 12) & 0x3FFFFFFF0, 268435488, v1800, v1801);
    v2082 = MPSAutoCache::GetTempBuffer(*(v1953 + 72), ((4 * v2080 + 12) & 0x3FFFFFFF0) * v2203, 0);
    v2083 = objc_alloc(MEMORY[0x277CD7250]);
    v2089 = objc_msgSend_initWithBuffer_descriptor_(v2083, v2084, v2082, v2081, v2085, v2086, v2087, v2088);
    v2097 = objc_msgSend_dataType(v2200, v2090, v2091, v2092, v2093, v2094, v2095, v2096);
    v2104 = 48;
    if (v2097 == 268435472)
    {
      v2104 = 40;
    }

    v2105 = *(v1953 + v2104);
    objc_msgSend_setK_(v2105, v2098, v2205, v2099, v2100, v2101, v2102, v2103);
    objc_msgSend_setN_(v2105, v2106, v2080, v2107, v2108, v2109, v2110, v2111);
    objc_msgSend_setM_(v2105, v2112, v2203, v2113, v2114, v2115, v2116, v2117);
    v2290 = 0;
    v2289 = 0;
    v2291 = 0;
    objc_msgSend_setResultMatrixOrigin_(v2105, v2118, &v2289, v2119, v2120, v2121, v2122, v2123);
    objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v2105, v2124, *(v1953 + 8), v2227, v2282, v2200, v2089, v2125);
    sub_239BD96C4(v1953, v2089, v2165, v2203, a2, *(v1953 + 136), v2126, v2127);

    v2072 = v2259;
  }

  else
  {
    v2071 = 0;
    v2072 = v2259;
    do
    {
      v2073 = objc_msgSend_rows(*(a4 + 8 * v2071), v1795, v2005, v1797, v1798, v1799, v1800, v1801);
      objc_msgSend_objectAtIndexedSubscript_(*(v1953 + 104), v2074, v2071, v2075, v2076, v2077, v2078, v2079);
      for (; v2073; --v2073)
      {
        objc_msgSend_rowBytes(v2165[v2071], v1795, v2005, v1797, v1798, v1799, v1800, v1801);
      }

      ++v2071;
    }

    while (v2071 != a2);
  }

  if (v2072)
  {
    v1104 = v2072;
    goto LABEL_800;
  }
}