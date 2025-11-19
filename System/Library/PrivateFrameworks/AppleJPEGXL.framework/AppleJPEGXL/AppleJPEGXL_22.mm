void sub_240BD26E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t JxlEncoderSetFrameBitDepth(uint64_t a1, uint64_t *a2)
{
  if (*a2 >= 2u)
  {
    sub_240BC6954("%s:%d: Only JXL_BIT_DEPTH_FROM_PIXEL_FORMAT and JXL_BIT_DEPTH_FROM_CODESTREAM is implemented for input buffers.\n", "/Library/Caches/com.apple.xbs/Sources/AppleJPEGXL/lib/jxl/encode.cc", 2598);
    return 1;
  }

  else
  {
    result = 0;
    v4 = *a2;
    *(a1 + 768) = *(a2 + 2);
    *(a1 + 760) = v4;
  }

  return result;
}

__n128 JxlColorEncodingSetToSRGB(uint64_t a1, int a2)
{
  v3 = sub_240B29F18(a2 != 0);
  sub_240B250A4(v7, (v3 + 16));
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

__n128 JxlColorEncodingSetToLinearSRGB(uint64_t a1, int a2)
{
  v3 = sub_240B29FC8(a2 != 0);
  sub_240B250A4(v7, (v3 + 16));
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t JxlEncoderSetDebugImageCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 640) = a2;
  *(result + 648) = a3;
  return result;
}

uint64_t JxlEncoderStatsDestroy(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x245CCE590);
  }

  return result;
}

uint64_t JxlEncoderCollectStats(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *(result + 776) = a2;
  }

  return result;
}

uint64_t JxlEncoderStatsGet(uint64_t result, int a2)
{
  if (result)
  {
    switch(a2)
    {
      case 0:
        result = *(result + 24);
        break;
      case 1:
        result = *(result + 64);
        break;
      case 2:
        result = *(result + 104);
        break;
      case 3:
        result = *(result + 144);
        break;
      case 4:
        result = *(result + 184);
        break;
      case 5:
        result = *(result + 224);
        break;
      case 6:
        result = *(result + 264);
        break;
      case 7:
        result = *(result + 304);
        break;
      case 8:
        result = *(result + 344);
        break;
      case 9:
        result = *(result + 384);
        break;
      case 10:
        result = *(result + 424);
        break;
      case 11:
        result = *(result + 464);
        break;
      case 12:
        result = *(result + 504);
        break;
      case 13:
        result = *(result + 544);
        break;
      case 14:
        result = *(result + 584);
        break;
      case 15:
        result = *(result + 608);
        break;
      case 16:
        result = *(result + 616);
        break;
      case 17:
        result = *(result + 624);
        break;
      case 18:
        result = *(result + 632);
        break;
      case 19:
        result = *(result + 656);
        break;
      case 20:
        result = *(result + 664);
        break;
      case 21:
        result = *(result + 672);
        break;
      case 22:
      case 23:
        result = *(result + 680);
        break;
      case 24:
        result = *(result + 688);
        break;
      case 25:
        result = *(result + 696);
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

double JxlEncoderStatsMerge(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      *&result = sub_240C0DCF8(a1, a2).u64[0];
    }
  }

  return result;
}

void sub_240BD29E0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v4 != v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0uLL;
    v12 = 0x464F52505F434349;
    v13 = 1;
    while (1)
    {
      v15 = *v4;
      v14 = v4[1];
      if (*v4 != v14 && *v15 == 226 && (v16 = v14 - v15, v18 = (v14 - v15) >= 3, v17 = v14 - v15 - 3, v18) && (__rev16(*(v15 + 1)) == v16 - 1 ? (v18 = v17 >= 0xC) : (v18 = 0), v18 && (*(v15 + 3) == v12 ? (v19 = *(v15 + 11) == 4541513) : (v19 = 0), v19)))
      {
        if ((v16 - 15) < 2 || (v21 = v15[15], ++v10, v10 != v21))
        {
          v40 = 0;
          goto LABEL_69;
        }

        v62 = v3;
        v22 = v15[16];
        if (!v22)
        {
          goto LABEL_67;
        }

        v20 = v15[16];
        if (v13)
        {
          v23 = v20 + 1;
          v24 = (v7 - v6) >> 4;
          v60 = v15[15];
          __src = v6;
          if (v24 <= v20)
          {
            v58 = v11;
            v52 = v23 - v24;
            if (v23 - v24 > (v8 - v7) >> 4)
            {
              v25 = (v8 - v6) >> 3;
              if (v25 <= v23)
              {
                v25 = v20 + 1;
              }

              if ((v8 - v6) >= 0x7FFFFFFFFFFFFFF0)
              {
                v25 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (!(v25 >> 60))
              {
                operator new();
              }

              sub_240B2291C();
            }

            v26 = v12;
            v54 = v7;
            v56 = v8;
            bzero(v7, 16 * (v23 - v24));
            v23 = v20 + 1;
            LOBYTE(v21) = v60;
            v11 = v58;
            v8 = v56;
            v12 = v26;
            v7 = &v54[2 * v52];
          }

          else if (v23 < v24)
          {
            v7 = &v6[2 * v23];
          }

          v27 = v11;
          if (v11 <= v20)
          {
            v28 = v23 - v11;
            v55 = v7;
            v57 = v8;
            if (*(&v11 + 1) << 6 < v23 - v11 || v11 > (*(&v11 + 1) << 6) - (v23 - v11))
            {
              v53 = v23 - v11;
              if (*(&v11 + 1) << 6 > 0x3FFFFFFFFFFFFFFEuLL)
              {
                v31 = 0x7FFFFFFFFFFFFFFFLL;
                goto LABEL_49;
              }

              v31 = *(&v11 + 1) << 7;
              if (*(&v11 + 1) << 7 <= ((v20 + 64) & 0x1C0))
              {
                v31 = (v20 + 64) & 0x1C0;
              }

              if (v31)
              {
                if (v31 < 0)
                {
                  sub_240B228BC();
                }

LABEL_49:
                sub_240B299F4(((v31 - 1) >> 6) + 1);
              }

              *(&v36 + 1) = 0;
              *&v36 = v23;
              v29 = 0;
              v59 = v36;
              if (v27 < 1)
              {
                goto LABEL_55;
              }

              v32 = v27 >> 6;
              if (v27 >= 0x40)
              {
                memmove(0, 0, 8 * v32);
                v32 = v27 >> 6;
                v28 = v53;
              }

              v29 = (8 * v32);
              v30 = v27 & 0x3F;
              if (v30)
              {
                *v29 = *v29 & ~(0xFFFFFFFFFFFFFFFFLL >> -v30) | *(8 * v32) & (0xFFFFFFFFFFFFFFFFLL >> -v30);
                v33 = 8 * v32;
                operator delete(0);
                v29 = v33;
                v28 = v53;
              }

              else
              {
LABEL_55:
                LODWORD(v30) = 0;
              }
            }

            else
            {
              v29 = (8 * (v11 >> 6));
              LODWORD(v30) = v11 & 0x3F;
              *&v11 = v23;
              v59 = v11;
            }

            v66 = v29;
            v67 = v30;
            sub_240B31560(&v66, v28);
            LOBYTE(v21) = v60;
            v6 = __src;
            v12 = 0x464F52505F434349;
            v7 = v55;
            v8 = v57;
            v11 = v59;
          }

          else
          {
            *&v11 = v23;
            v6 = __src;
          }
        }

        else
        {
          if (v9 != v20)
          {
            goto LABEL_67;
          }

          v20 = v9;
        }

        if ((v21 - 1) >= v22)
        {
LABEL_67:
          v40 = 0;
          v3 = v62;
          goto LABEL_69;
        }

        v34 = *(8 * (v10 >> 6));
        v3 = v62;
        if ((v34 & (1 << v10)) != 0)
        {
LABEL_66:
          v40 = 0;
          operator delete(0);
          goto LABEL_69;
        }

        v13 = 0;
        *(8 * (v10 >> 6)) = v34 | (1 << v10);
        v35 = &v6[2 * v10];
        *v35 = (v15 + 17);
        v35[1] = v16 - 17;
      }

      else
      {
        v20 = v9;
      }

      v4 += 3;
      v9 = v20;
      if (v4 == v5)
      {
        goto LABEL_62;
      }
    }
  }

  v6 = 0;
  v20 = 0;
LABEL_62:
  v37 = v6 + 3;
  v38 = -v20;
  for (i = 1; ; ++i)
  {
    v40 = v38 + i == 1;
    if (v38 + i == 1)
    {
      break;
    }

    if (((*((i >> 3) & 0x1FFFFFFFFFFFFFF8) >> i) & 1) == 0)
    {
      goto LABEL_66;
    }

    v41 = *(v37 - 1);
    v42 = *v37;
    v37 += 2;
    sub_240B28B3C(&v63, v64, v41, &v41[v42], v42);
  }

LABEL_69:
  v43 = v63;
  if (!v40 || (v44 = v64, v63 == v64))
  {
    v46 = sub_240B29F18(*(v3 + 152) - *(v3 + 144) == 48);
    v47 = v46;
    *(a2 + 8) = *(v46 + 4);
    v48 = *(v46 + 2);
    *(a2 + 21) = *(v46 + 21);
    *(a2 + 16) = v48;
    if (v46 != a2)
    {
      sub_240B28A14((a2 + 32), *(v46 + 4), *(v46 + 5), *(v46 + 5) - *(v46 + 4));
    }

    v49 = *(v47 + 56);
    v50 = *(v47 + 72);
    v51 = *(v47 + 88);
    *(a2 + 104) = *(v47 + 26);
    *(a2 + 88) = v51;
    *(a2 + 72) = v50;
    *(a2 + 56) = v49;
    *(a2 + 120) = *(v47 + 15);
    *(a2 + 136) = *(v47 + 136);
    *(a2 + 160) = *(v47 + 20);
    *(a2 + 176) = *(v47 + 22);
    *(a2 + 192) = *(v47 + 24);
    if (v43)
    {

      operator delete(v43);
    }
  }

  else
  {
    v45 = *(a2 + 32);
    if (v45)
    {
      *(a2 + 40) = v45;
      operator delete(v45);
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
    }

    *(a2 + 32) = v43;
    *(a2 + 40) = v44;
    *(a2 + 48) = v65;
    *(a2 + 28) = 0;
    *(a2 + 9) = 1;
  }
}

void sub_240BD3058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, void *a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240BD30B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if ((v3 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    return 1;
  }

  if (v3 == 1)
  {
    v11 = 0;
    v12 = *(a1 + 4);
    v13 = *(a1 + 8);
    do
    {
      v15[v11] = v12;
      v14[v11++] = v13;
    }

    while (v11 != 3);
    v8 = v15;
    v9 = v14;
    return sub_240BD317C(a3, v8, v9);
  }

  if (v3 == 3)
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      v7 = *v6;
      v17[v5] = *(v6 - 1);
      v16[v5++] = v7;
      v6 += 12;
    }

    while (v5 != 3);
    v8 = v17;
    v9 = v16;
    return sub_240BD317C(a3, v8, v9);
  }

  return 0;
}

uint64_t sub_240BD317C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 3; ++i)
  {
    v4 = 0;
    v5 = i ^ 1;
    if (i == 2)
    {
      v5 = 2;
    }

    while (1 << byte_240C85334[v4] != *(a2 + v5) || 1 << byte_240C85338[v4] != *(a3 + v5))
    {
      if (++v4 == 4)
      {
        return 1;
      }
    }

    *(a1 + 8 + 4 * i) = v4;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = *(a1 + 8 + v6);
    v10 = byte_240C85334[v9];
    v11 = byte_240C85338[v9];
    if (v7 <= v10)
    {
      v7 = v10;
    }

    if (v8 <= v11)
    {
      v8 = v11;
    }

    v6 += 4;
  }

  while (v6 != 12);
  v12 = 0;
  *(a1 + 20) = v7;
  *(a1 + 21) = v8;
  return v12;
}

uint64_t sub_240BD324C(void *a1, int *a2)
{
  v2 = a1[18];
  v3 = a1[19] - v2;
  if (((0xAAAAAAAAAAAAAAABLL * (v3 >> 4)) & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    return 1;
  }

  v4 = a1[24];
  v5 = a1[25];
  if (v4 == v5)
  {
    v10 = 0;
    v11 = 0;
    v6 = (v5 - v4);
    goto LABEL_11;
  }

  v6 = (v5 - v4);
  v7 = a1[24];
  while (*v7 != 224)
  {
    if (++v7 == v5)
    {
      v7 = a1[25];
      break;
    }
  }

  if (v7 != v5)
  {
    v8 = 1;
    goto LABEL_30;
  }

  v10 = 0;
  v12 = 0;
  v13 = a1[3];
  while (1)
  {
    v14 = v10[v4];
    if ((v14 & 0xF0) == 0xE0)
    {
      break;
    }

LABEL_23:
    if (v6 == ++v10)
    {
      goto LABEL_24;
    }
  }

  if (v14 != 238 || (v15 = *(v13 + 24 * v12), *(v13 + 24 * v12 + 8) - v15 != 15) || v15[3] != 65 || v15[4] != 100 || v15[5] != 111 || v15[6] != 98 || v15[7] != 101)
  {
    ++v12;
    goto LABEL_23;
  }

  v11 = v15[14] == 0;
LABEL_11:
  if (v10 == v6)
  {
LABEL_24:
    v11 = v3 == 144 && *v2 == 82 && v2[12] == 71 && v2[24] == 66;
  }

  v8 = !v11;
LABEL_30:
  result = 0;
  if (v3 == 48)
  {
    v16 = 1;
  }

  else
  {
    v16 = v8;
  }

  if (v16)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  *a2 = v17;
  return result;
}

uint64_t sub_240BD33C0(void *a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 8) = *a2;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a1[4] - a1[3]) >> 3);
  v8 = a1[6];
  v7 = a1[7];
  v9 = (v7 - v8) >> 2;
  if (v6 > v9)
  {
    v10 = v6 - v9;
    v11 = a1[8];
    if (v10 > (v11 - v7) >> 2)
    {
      if (!(v6 >> 62))
      {
        v12 = v11 - v8;
        v13 = (v11 - v8) >> 1;
        if (v13 <= v6)
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * ((a1[4] - a1[3]) >> 3);
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        sub_240B228D4(v14);
      }

      sub_240B228BC();
    }

    v16 = (v10 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v17 = vdupq_n_s64(v16);
    v18 = v16 - ((v10 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v19 = (v7 + 8);
    v20 = -4;
    do
    {
      v21 = vdupq_n_s64(v20 + 4);
      v22 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v21, xmmword_240C111D0)));
      if (vuzp1_s16(v22, *v17.i8).u8[0])
      {
        *(v19 - 2) = 0;
      }

      if (vuzp1_s16(v22, *&v17).i8[2])
      {
        *(v19 - 1) = 0;
      }

      if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v21, xmmword_240C111C0)))).i32[1])
      {
        *v19 = 0;
        v19[1] = 0;
      }

      v20 += 4;
      v19 += 4;
    }

    while (v18 != v20);
    v15 = v7 + 4 * v10;
    goto LABEL_21;
  }

  if (v6 < v9)
  {
    v15 = v8 - 0x5555555555555554 * ((a1[4] - a1[3]) >> 3);
LABEL_21:
    a1[7] = v15;
  }

  v23 = a1[3];
  v24 = a1[4] - v23;
  if (!v24)
  {
    v52 = 0;
    goto LABEL_74;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 3);
  v28 = a1[6];
  if (v27 <= 1)
  {
    v27 = 1;
  }

  v29 = a1[3];
  v30 = v27;
  do
  {
    v31 = *v29;
    if (**v29 == 226 && __rev16(*(v31 + 1)) >= 0xE && *(v31 + 3) == 0x464F52505F434349 && *(v31 + 11) == 4541513)
    {
      v33 = *(v31 + 15);
      if (v25 + 1 == v33)
      {
        v34 = *(v31 + 16);
        if (!v26)
        {
          v26 = v34;
        }

        if (v26 == v34)
        {
          *v28 = 1;
          v26 = v34;
          v25 = v33;
        }
      }
    }

    ++v28;
    v29 += 3;
    --v30;
  }

  while (v30);
  if (v25 != v26)
  {
    return 1;
  }

  v35 = 0;
  v36 = 0;
  v37 = a1[6];
  v38 = (v23 + 8);
  v39 = v27;
  do
  {
    v40 = *(v38 - 1);
    v41 = *v38;
    if (v40 != *v38 && *v40 == 225)
    {
      v42 = v41 - v40;
      v43 = (v41 - v40) >= 3;
      v44 = v41 - v40 - 3;
      if (v43 && __rev16(*(v40 + 1)) == v42 - 1)
      {
        if ((v35 & 1) == 0)
        {
          if (v44 < 6 || *(v40 + 3) ^ 0x66697845 | *(v40 + 7))
          {
            v35 = 0;
            if (v36)
            {
LABEL_66:
              v36 = 1;
              goto LABEL_67;
            }

LABEL_52:
            if (v44 < 0x1D || ((v45 = *(v40 + 3), v46 = *(v40 + 11), v47 = *(v40 + 19), v48 = *(v40 + 3), v45 == 0x6E2F2F3A70747468) ? (v49 = v46 == 0x2E65626F64612E73) : (v49 = 0), v49 ? (v50 = v47 == 0x2F7061782F6D6F63) : (v50 = 0), v50 ? (v51 = v48 == 0x2F302E312F7061) : (v51 = 0), !v51))
            {
              v36 = 0;
              goto LABEL_67;
            }

            *v37 = 3;
            goto LABEL_66;
          }

          *v37 = 2;
        }

        v35 = 1;
        if (v36)
        {
          goto LABEL_66;
        }

        goto LABEL_52;
      }
    }

LABEL_67:
    ++v37;
    v38 += 3;
    --v39;
  }

  while (v39);
  v52 = 0;
  v53 = a1[6];
  v54 = (v23 + 8);
  do
  {
    if (!*v53++)
    {
      v52 = v52 + *v54 - *(v54 - 1);
    }

    v54 += 3;
    --v27;
  }

  while (v27);
LABEL_74:
  v56 = a1[9];
  v57 = a1[10] - v56;
  if (v57)
  {
    v58 = 0xAAAAAAAAAAAAAAABLL * (v57 >> 3);
    if (v58 <= 1)
    {
      v58 = 1;
    }

    v59 = (v56 + 8);
    do
    {
      v52 = v52 + *v59 - *(v59 - 1);
      v59 += 3;
      --v58;
    }

    while (v58);
  }

  v60 = a1[27];
  v61 = a1[28] - v60;
  if (v61)
  {
    v62 = 0xAAAAAAAAAAAAAAABLL * (v61 >> 3);
    if (v62 <= 1)
    {
      v62 = 1;
    }

    v63 = (v60 + 8);
    do
    {
      v52 = v52 + *v63 - *(v63 - 1);
      v63 += 3;
      --v62;
    }

    while (v62);
  }

  v64 = a1[31] - a1[30] + v52;
  if (v64)
  {
    if (v64 + 4 * (v64 >> 14) + 6 >= v64)
    {
      v65 = v64 + 4 * (v64 >> 14) + 6;
    }

    else
    {
      v65 = 0;
    }
  }

  else
  {
    v65 = 2;
  }

  v98 = v65;
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  v66 = sub_240C0EB88(a1, &v95, 0, 0);
  if (!v66)
  {
    v67 = v95;
    v68 = ((v95 + 7) & 0xFFFFFFFFFFFFFFF8) - v95;
    if (v68)
    {
      *(*(&v96 + 1) + (v95 >> 3)) = *(*(&v96 + 1) + (v95 >> 3));
      v67 = v95 + v68;
      *&v95 = v95 + v68;
    }

    v69 = v67 >> 3;
    sub_240B4ADF0(&v95 + 1, v67 >> 3);
    v70 = *(&v96 + 1);
    if (!*(&v96 + 1))
    {
      v69 = 0;
    }

    *(&v95 + 1) = 0;
    v96 = 0uLL;
    sub_240B844BC(a2, v65 + v69);
    sub_240B28B3C(a2, *(a2 + 8), v70, &v70[v69], v69);
    if (v70)
    {
      atomic_fetch_add(&qword_27E519020, -*(v70 - 3));
      free(*(v70 - 4));
    }

    sub_240B12F94();
    v72 = v71;
    if (*(v71 + 6980))
    {
      v73 = *a2;
      v74 = *(a2 + 8) - *a2;
      v75 = v74;
    }

    else
    {
      v76 = *(a3 + 52);
      if (v76 < 0)
      {
        v76 = 11 - *(a3 + 48);
      }

      *(v71 + 4) = v76;
      v74 = *(a2 + 8) - *a2;
      *(v71 + 24) = v64;
      v73 = *a2;
      v75 = *(a2 + 8) - *a2;
    }

    if (v98 + v74 <= v75)
    {
      if (v98 + v74 < v75)
      {
        *(a2 + 8) = v73 + v98 + v74;
      }
    }

    else
    {
      sub_240B26918(a2, v98 + v74 - v75);
    }

    v94 = 0;
    v78 = a1[3];
    v77 = a1[4];
    if (v77 != v78)
    {
      v79 = 0;
      do
      {
        if (!*(a1[6] + 4 * v79))
        {
          v80 = v78 + 24 * v79;
          v81 = *v80;
          v101 = *(v80 + 8) - *v80;
          v99 = (*a2 + v74 + v94);
          v100 = v81;
          do
          {
            sub_240B13328(v72, 0, &v101, &v100, &v98, &v99, &v94);
          }

          while (*(v72 + 6936) | v101);
          v78 = a1[3];
          v77 = a1[4];
        }

        ++v79;
      }

      while (v79 < 0xAAAAAAAAAAAAAAABLL * ((v77 - v78) >> 3));
    }

    v82 = a1[9];
    if (a1[10] != v82)
    {
      v83 = 0;
      do
      {
        v84 = v82 + 24 * v83;
        v85 = *v84;
        v101 = *(v84 + 8) - *v84;
        v99 = (*a2 + v74 + v94);
        v100 = v85;
        do
        {
          sub_240B13328(v72, 0, &v101, &v100, &v98, &v99, &v94);
        }

        while (*(v72 + 6936) | v101);
        ++v83;
        v82 = a1[9];
      }

      while (v83 < 0xAAAAAAAAAAAAAAABLL * ((a1[10] - v82) >> 3));
    }

    v86 = a1[27];
    if (a1[28] != v86)
    {
      v87 = 0;
      do
      {
        v88 = v86 + 24 * v87;
        v89 = *v88;
        v101 = *(v88 + 8) - *v88;
        v99 = (*a2 + v74 + v94);
        v100 = v89;
        do
        {
          sub_240B13328(v72, 0, &v101, &v100, &v98, &v99, &v94);
        }

        while (*(v72 + 6936) | v101);
        ++v87;
        v86 = a1[27];
      }

      while (v87 < 0xAAAAAAAAAAAAAAABLL * ((a1[28] - v86) >> 3));
    }

    v90 = a1[30];
    v101 = a1[31] - v90;
    v99 = (*a2 + v74 + v94);
    v100 = v90;
    do
    {
      sub_240B13328(v72, 2, &v101, &v100, &v98, &v99, &v94);
    }

    while (*(v72 + 6936) | v101);
    sub_240B1314C(v72);
    v91 = *(a2 + 8) - *a2;
    if (v94 + v74 <= v91)
    {
      if (v94 + v74 < v91)
      {
        *(a2 + 8) = *a2 + v94 + v74;
      }
    }

    else
    {
      sub_240B26918(a2, v94 + v74 - v91);
    }

    v66 = 0;
  }

  v92 = *(&v96 + 1);
  *(&v96 + 1) = 0;
  if (v92)
  {
    atomic_fetch_add(&qword_27E519020, -*(v92 - 24));
    free(*(v92 - 32));
  }

  return v66;
}

void sub_240BD3C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    atomic_fetch_add(&qword_27E519020, -*(a14 - 24));
    free(*(a14 - 32));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240BD3D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 2224);
  v5 = *(a1 + 2232) - v4;
  if (v5)
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * (v5 >> 6);
    v7 = (v4 + 48);
    v5 = -1;
    do
    {
      v8 = *v7;
      v9 = v5 + 2;
      ++v5;
      v7 += 112;
      if (v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 >= v6;
      }
    }

    while (!v10);
  }

  sub_240B598DC(v4 + 448 * v5, a2, a3);
  if (*(a1 + 208))
  {
    v11 = 255.0;
  }

  else
  {
    v12 = *(a1 + 216);
    v11 = 255.0;
    if (v12 == 18)
    {
      v11 = 1000.0;
    }

    if (v12 == 16)
    {
      v11 = 10000.0;
    }
  }

  *(a1 + 396) = v11;
  v13 = *(a1 + 2232);
  v14 = *(a1 + 2224);
  v15 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v14) >> 6);
  if (v13 == v14)
  {
    v17 = 0;
  }

  else
  {
    v16 = (v14 + 48);
    v17 = -1;
    do
    {
      v18 = *v16;
      v19 = v17 + 2;
      ++v17;
      v16 += 112;
      if (v18)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19 >= v15;
      }
    }

    while (!v20);
  }

  v21 = v14 + 448 * v17;
  v22 = *(v21 + 96);
  if (!v22)
  {
    v23 = *(v21 + 416);
    if (v23 == *(v21 + 424))
    {
      v22 = 0;
    }

    else
    {
      v22 = *v23;
    }
  }

  if (v13 == v14)
  {
    v25 = 0;
  }

  else
  {
    v24 = (v14 + 48);
    v25 = -1;
    do
    {
      v26 = *v24;
      v27 = v25 + 2;
      ++v25;
      v24 += 112;
      if (v26)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27 >= v15;
      }
    }

    while (!v28);
  }

  v29 = v14 + 448 * v25;
  v30 = *(v29 + 100);
  if (!v30)
  {
    v31 = *(v29 + 416);
    if (v31 == *(v29 + 424))
    {
      v30 = 0;
    }

    else
    {
      v30 = *(v31 + 4);
    }
  }

  return sub_240B57890(a1 + 520, v22, v30);
}

void sub_240BD3EA8(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_240BD3F18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240BD3F34(const void **a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_240B228BC();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      sub_240B32588(v10);
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    sub_240B28D90(24 * v7, *a2, a2[1], a2[1] - *a2);
    v6 = (v18 + 24);
    v12 = a1[1] - *a1;
    v13 = &v17[-v12];
    memcpy(&v17[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = v19;
    v18 = v14;
    v19 = v15;
    v16 = v14;
    v17 = v14;
    result = sub_240B325E0(&v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    result = sub_240B28D90(v4, *a2, a2[1], a2[1] - *a2);
    v6 = v4 + 24;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_240BD4074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_240B325E0(va);
  _Unwind_Resume(a1);
}

void sub_240BD4094(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

uint64_t sub_240BD4124(uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v11 = 0xEEEEEEEEEEEEEEEFLL * ((v5 - *a1) >> 3);
    if (v11 + 1 > 0x222222222222222)
    {
      sub_240B228BC();
    }

    v12 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *a1) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x111111111111111)
    {
      v14 = 0x222222222222222;
    }

    else
    {
      v14 = v13;
    }

    v34 = a1;
    if (v14)
    {
      sub_240B8D0B0(v14);
    }

    v15 = 120 * v11;
    v31 = 0;
    v32 = v15;
    v33 = 120 * v11;
    v16 = *(a2 + 16);
    v17 = *(a2 + 32);
    v18 = *(a2 + 48);
    *(v15 + 64) = *(a2 + 64);
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    *(v15 + 16) = v16;
    *v15 = *a2;
    v19 = 120 * v11;
    *(v19 + 72) = 0;
    *(v15 + 80) = 0;
    *(v15 + 88) = 0;
    sub_240B86FB8(v19 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
    *(v15 + 96) = 0;
    *(v15 + 104) = 0;
    *(v15 + 112) = 0;
    sub_240B8D034(v15 + 96, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
    *&v33 = v33 + 120;
    v20 = *a1;
    v21 = a1[1];
    v22 = v32 + *a1 - v21;
    if (*a1 != v21)
    {
      v23 = *a1;
      v24 = v32 + *a1 - v21;
      do
      {
        *v24 = *v23;
        v25 = *(v23 + 1);
        v26 = *(v23 + 3);
        v27 = v23[8];
        *(v24 + 32) = *(v23 + 2);
        *(v24 + 48) = v26;
        *(v24 + 16) = v25;
        *(v24 + 64) = v27;
        *(v24 + 72) = 0;
        *(v24 + 80) = 0;
        *(v24 + 88) = 0;
        *(v24 + 72) = *(v23 + 9);
        *(v24 + 88) = v23[11];
        v23[9] = 0;
        v23[10] = 0;
        v23[11] = 0;
        *(v24 + 96) = 0;
        *(v24 + 104) = 0;
        *(v24 + 112) = 0;
        *(v24 + 96) = *(v23 + 6);
        *(v24 + 112) = v23[14];
        v23[12] = 0;
        v23[13] = 0;
        v23[14] = 0;
        v23 += 15;
        v24 += 120;
      }

      while (v23 != v21);
      do
      {
        sub_240B8CE94(v20);
        v20 += 15;
      }

      while (v20 != v21);
    }

    v28 = *a1;
    *a1 = v22;
    v29 = a1[2];
    v30 = v33;
    *(a1 + 1) = v33;
    *&v33 = v28;
    *(&v33 + 1) = v29;
    v31 = v28;
    v32 = v28;
    result = sub_240BD465C(&v31);
    v10 = v30;
  }

  else
  {
    *v5 = *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    *(v5 + 64) = *(a2 + 64);
    *(v5 + 32) = v7;
    *(v5 + 48) = v8;
    *(v5 + 16) = v6;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    *(v5 + 88) = 0;
    sub_240B86FB8(v5 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
    *(v5 + 96) = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
    result = sub_240B8D034(v5 + 96, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
    v10 = v5 + 120;
    a1[1] = v5 + 120;
  }

  a1[1] = v10;
  return result;
}

void sub_240BD4380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = *v4;
  if (*v4)
  {
    *(v5 + 80) = v7;
    operator delete(v7);
  }

  sub_240BD465C(va);
  _Unwind_Resume(a1);
}

void *sub_240BD43D0(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t *sub_240BD4414(uint64_t *result)
{
  v1 = *(result + 8);
  if (v1 <= 16)
  {
    v3 = result[2];
    v2 = result[3];
    v4 = v1 - 8;
    v5 = result[5];
    do
    {
      v6 = v2 << 8;
      result[3] = v6;
      if (v3 >= v5)
      {
        v9 = 0;
        v8 = v3 + 1;
        result[2] = v3 + 1;
      }

      else
      {
        v7 = *result;
        v8 = v3 + 1;
        result[2] = v3 + 1;
        v9 = *(v7 + v3);
        if (v9 == 255)
        {
          if (*(v7 + v8))
          {
            result[5] = v3;
            v9 = 255;
            v5 = v3;
          }

          else
          {
            v8 = v3 + 2;
            result[2] = v3 + 2;
            v9 = 255;
          }
        }
      }

      v2 = v6 | v9;
      result[3] = v2;
      *(result + 8) = v4 + 16;
      v4 += 8;
      v3 = v8;
    }

    while (v4 < 49);
  }

  return result;
}

BOOL sub_240BD44B4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = *(a1 + 32);
  v6 = v5 & 7;
  if ((v5 & 7) != 0)
  {
    v8 = (*(a1 + 24) >> (v5 & 0xF8)) & ~(-1 << v6);
    if (v8 != ~(-1 << v6))
    {
      *(a2 + 264) = 1;
    }

    v9 = v6 + 1;
    do
    {
      v16 = (v8 >> (v9 - 2)) & 1;
      sub_240B290C0(a2 + 272, &v16);
      --v9;
    }

    while (v9 > 1);
    v5 = *(a1 + 32);
  }

  v10 = v5 >> 3;
  if (v5 >> 3 <= 0)
  {
    v12 = *(a1 + 16);
    v11 = *(a1 + 40);
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 16);
    v13 = v10 + 1;
    do
    {
      v14 = v12--;
      *(a1 + 16) = v12;
      if (v12 < v11 && !*(*a1 + v12) && *(*a1 + v14 - 2) == 255)
      {
        v12 = v14 - 2;
        *(a1 + 16) = v14 - 2;
      }

      --v13;
    }

    while (v13 > 1);
  }

  if (v12 <= v11)
  {
    *a3 = v12;
  }

  return v12 <= v11;
}

uint64_t sub_240BD45D8(uint64_t a1, uint64_t a2)
{
  sub_240BD4414(a2);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = (a1 + 4 * (v4 >> (v5 - 8)));
  v7 = *v6;
  if (v7 >= 9)
  {
    v6 += 4 * *(v6 + 1) + 4 * ((v4 >> (v5 - v7)) & ~(-1 << (v7 - 8)));
    v7 = *v6;
    v5 -= 8;
  }

  *(a2 + 32) = v5 - v7;
  return *(v6 + 1);
}

uint64_t sub_240BD465C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 120;
    sub_240B8CE94((i - 120));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240BD46AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v172 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 8);
  v8 = *(*(a1 + 16) + 40);
  v9 = (a2 + 4 * a3);
  v10 = **(a1 + 24);
  v168 = *(a1 + 16);
  v169 = v7;
  if (**a1 == 1)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (a3)
    {
      v13 = *(v9 - 1);
      v14 = v13;
      if (!a4)
      {
        v23 = 0;
        v15 = v13;
        v16 = v13;
        v24 = v13;
LABEL_19:
        v27 = v14;
        if (a3 >= 2)
        {
          v27 = *(v9 - 2);
        }

        v28 = v16;
        if (a4 >= 2)
        {
          v28 = v9[-2 * v10];
        }

        v29 = v23 ^ 1;
        if (a3 + 2 >= v8)
        {
          v29 = 1;
        }

        if (v29)
        {
          v164 = v24;
        }

        else
        {
          v164 = v9[2 - v10];
        }

        goto LABEL_39;
      }

      v15 = v9[~v10];
      v16 = v9[-v10];
    }

    else
    {
      if (!a4)
      {
        v28 = 0;
        v24 = 0;
        v16 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v27 = 0;
        v164 = 0;
LABEL_39:
        v33 = 0;
        v34 = *v7;
        if (v16 >= 0)
        {
          LODWORD(v35) = v16;
        }

        else
        {
          v35 = -v16;
        }

        v34[3] = a3;
        v34[4] = v35;
        if (v14 >= 0)
        {
          LODWORD(v36) = v14;
        }

        else
        {
          v36 = -v14;
        }

        v37 = v13 - v34[9];
        v34[5] = v36;
        v34[6] = v16;
        v34[7] = v13;
        v34[8] = v37;
        v34[9] = v14 + v16 - v15;
        v34[10] = v13 - v15;
        v38 = v8 + 2;
        if (a4)
        {
          v39 = v8 + 2;
        }

        else
        {
          v39 = 0;
        }

        v40 = v39 + a3;
        v34[11] = v15 - v16;
        v34[12] = v16 - v24;
        if (v8 - 1 <= a3)
        {
          v41 = v39 + a3;
        }

        else
        {
          v41 = v40 + 1;
        }

        if (a3)
        {
          v39 = v40 - 1;
        }

        v34[13] = v16 - v28;
        v34[14] = v13 - v27;
        v42 = v12 + 216;
        for (i = 40; i != 136; i += 24)
        {
          v44 = (*(*(v12 + i) + 4 * v41) + *(*(v12 + i) + 4 * v40) + *(*(v12 + i) + 4 * v39));
          v45 = __clz(v44 + 1) ^ 0x3F;
          if (v45 <= 5)
          {
            LOBYTE(v45) = 5;
          }

          v170.i32[v33] = ((*(v42 + 4 * (v44 >> (v45 - 5))) * *(v12 + v33 * 4 + 200)) >> (v45 - 5)) + 4;
          ++v33;
        }

        v166 = v9;
        v46 = 8 * v16;
        v47 = 8 * v14;
        v48 = 8 * v24;
        v49 = v11;
        if (a3)
        {
          if (a4)
          {
            v50 = 0;
          }

          else
          {
            v50 = v38;
          }

          v51 = *(v12 + 136);
          v52 = *(v51 + 4 * v50 + 4 * a3 - 4);
        }

        else
        {
          v52 = 0;
          v51 = *(v12 + 136);
        }

        v53 = 0;
        v54 = *(v51 + 4 * v40);
        v55 = *(v51 + 4 * v39);
        v56 = v52 + v54;
        v57 = *(v51 + 4 * v41);
        if (v54 >= 0)
        {
          v58 = v54;
        }

        else
        {
          v58 = -v54;
        }

        if (v52 >= 0)
        {
          v59 = v52;
        }

        else
        {
          v59 = -v52;
        }

        if (v58 <= v59)
        {
          v60 = v52;
        }

        else
        {
          v60 = v54;
        }

        if (v55 >= 0)
        {
          v61 = v55;
        }

        else
        {
          v61 = -v55;
        }

        if (v60 >= 0)
        {
          v62 = v60;
        }

        else
        {
          v62 = -v60;
        }

        if (v61 <= v62)
        {
          v63 = v60;
        }

        else
        {
          v63 = v55;
        }

        if (v57 >= 0)
        {
          v64 = v57;
        }

        else
        {
          v64 = -v57;
        }

        if (v63 >= 0)
        {
          v65 = v63;
        }

        else
        {
          v65 = -v63;
        }

        if (v64 > v65)
        {
          LODWORD(v63) = v57;
        }

        v34[15] = v63;
        v66 = *(v12 + 176);
        v67 = v46 - (((v56 + v57) * *(v12 + 172)) >> 5);
        *v12 = v48 - v46 + v47;
        *(v12 + 8) = v67;
        v68 = v46 - ((*(v12 + 180) * v55 + *(v12 + 184) * v54 + *(v12 + 188) * v57 + 8 * ((v28 - v16) * *(v12 + 192) + (v15 - v14) * *(v12 + 196))) >> 5);
        *(v12 + 16) = v47 - (((v56 + v55) * v66) >> 5);
        *(v12 + 24) = v68;
        v171 = vshlq_u32(v170, vnegq_s32(vdupq_n_s32((__clz(vaddvq_s32(v170)) ^ 0x1F) - 4)));
        v69 = vaddvq_s32(v171);
        v70 = (v69 >> 1) - 1;
        do
        {
          v70 += *(v12 + 8 * v53) * v171.u32[v53];
          ++v53;
        }

        while (v53 != 4);
        v71 = (v70 * *(v42 + 4 * (v69 - 1))) >> 24;
        if (v48 <= v46)
        {
          v72 = 8 * v16;
        }

        else
        {
          v72 = 8 * v24;
        }

        if (v47 > v72)
        {
          v72 = 8 * v14;
        }

        if (v46 >= v48)
        {
          v73 = 8 * v24;
        }

        else
        {
          v73 = 8 * v16;
        }

        if (v73 >= v47)
        {
          v73 = 8 * v14;
        }

        if (v71 < v72)
        {
          v72 = (v70 * *(v42 + 4 * (v69 - 1))) >> 24;
        }

        if (v73 > v72)
        {
          v72 = v73;
        }

        if ((v55 ^ v54 | v52 ^ v54) <= 0)
        {
          v71 = v72;
        }

        *(v12 + 32) = v71;
        v74 = (v71 + 3) >> 3;
        v75 = v49[5];
        if (v75)
        {
          v76 = (v49[3] + v49[2] * a3);
          v77 = v34 + 16;
          do
          {
            v78 = *v76++;
            *v77++ = v78;
            --v75;
          }

          while (v75);
        }

        v79 = 0;
        result = (v16 + v24) / 2;
        if (v13 >= v16)
        {
          v81 = v16;
        }

        else
        {
          v81 = v13;
        }

        if (v13 <= v16)
        {
          v82 = v16;
        }

        else
        {
          v82 = v13;
        }

        v83 = v13 + v16 - v15;
        if (v81 > v15)
        {
          v83 = v82;
        }

        if (v82 >= v15)
        {
          v81 = v83;
        }

        v84 = v81;
        v85 = v16 - v15;
        if (v16 - v15 < 0)
        {
          v85 = v15 - v16;
        }

        v86 = v14 - v15;
        if (v14 - v15 < 0)
        {
          v86 = v15 - v14;
        }

        if (v85 >= v86)
        {
          v87 = v16;
        }

        else
        {
          v87 = v14;
        }

        v9 = v166;
        v88 = 3 * v24 - 2 * v28 + 6 * v16 - v14 + 8 * v14 + v27 + v164;
        v89 = v88 + 8;
        v90 = v88 + 23;
        if (v89 >= 0)
        {
          v90 = v89;
        }

        v91 = v169;
        do
        {
          switch(v79)
          {
            case 1:
              v92 = v14;
              break;
            case 2:
              v92 = v16;
              break;
            case 3:
              v92 = (v14 + v16) / 2;
              break;
            case 4:
              v92 = v87;
              break;
            case 5:
              v92 = v84;
              break;
            case 6:
              v92 = v74;
              break;
            case 7:
              v92 = v24;
              break;
            case 8:
              v92 = v15;
              break;
            case 9:
              v92 = v27;
              break;
            case 10:
              v92 = (v15 + v14) / 2;
              break;
            case 11:
              v92 = (v15 + v16) / 2;
              break;
            case 12:
              v92 = (v16 + v24) / 2;
              break;
            case 13:
              v92 = v90 >> 4;
              break;
            default:
              v92 = 0;
              break;
          }

          v171.i64[v79++] = v92;
        }

        while (v79 != 14);
        goto LABEL_252;
      }

      v13 = v9[-v10];
      v16 = v13;
      v14 = v13;
      v15 = v13;
    }

    v23 = 1;
    if (a3 + 1 >= v8)
    {
      v24 = v16;
    }

    else
    {
      v24 = v9[1 - v10];
    }

    goto LABEL_19;
  }

  v12 = *(a1 + 40);
  v17 = *(*(a1 + 48) + 120);
  v18 = *(a1 + 32);
  if (a3)
  {
    v19 = *(v9 - 1);
    v20 = v19;
    if (!a4)
    {
      v25 = 0;
      v21 = v19;
      v22 = v19;
      v26 = v19;
LABEL_29:
      v30 = v20;
      if (a3 >= 2)
      {
        v30 = *(v9 - 2);
      }

      v31 = v22;
      if (a4 >= 2)
      {
        v31 = v9[-2 * v10];
      }

      v32 = v25 ^ 1;
      if (a3 + 2 >= v8)
      {
        v32 = 1;
      }

      if (v32)
      {
        v165 = v26;
      }

      else
      {
        v165 = v9[2 - v10];
      }

      goto LABEL_148;
    }

    v21 = v9[~v10];
    v22 = v9[-v10];
LABEL_14:
    v25 = 1;
    if (a3 + 1 >= v8)
    {
      v26 = v22;
    }

    else
    {
      v26 = v9[1 - v10];
    }

    goto LABEL_29;
  }

  if (a4)
  {
    v19 = v9[-v10];
    v22 = v19;
    v20 = v19;
    v21 = v19;
    goto LABEL_14;
  }

  v31 = 0;
  v26 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v30 = 0;
  v165 = 0;
LABEL_148:
  v93 = 0;
  v167 = *v17;
  v94 = *v7;
  if (v22 >= 0)
  {
    LODWORD(v95) = v22;
  }

  else
  {
    v95 = -v22;
  }

  v94[3] = a3;
  v94[4] = v95;
  if (v20 >= 0)
  {
    LODWORD(v96) = v20;
  }

  else
  {
    v96 = -v20;
  }

  v97 = v19 - v94[9];
  v94[5] = v96;
  v94[6] = v22;
  v94[7] = v19;
  v94[8] = v97;
  v94[9] = v20 + v22 - v21;
  v94[10] = v19 - v21;
  v98 = v30;
  v99 = v8 + 2;
  if (a4)
  {
    v100 = v8 + 2;
  }

  else
  {
    v100 = 0;
  }

  v101 = v100 + a3;
  v94[11] = v21 - v22;
  v94[12] = v22 - v26;
  if (v8 - 1 <= a3)
  {
    v102 = v100 + a3;
  }

  else
  {
    v102 = v101 + 1;
  }

  if (a3)
  {
    v100 = v101 - 1;
  }

  v94[13] = v22 - v31;
  v94[14] = v19 - v30;
  v103 = v12 + 216;
  for (j = 40; j != 136; j += 24)
  {
    v105 = (*(*(v12 + j) + 4 * v102) + *(*(v12 + j) + 4 * v101) + *(*(v12 + j) + 4 * v100));
    v106 = __clz(v105 + 1) ^ 0x3F;
    if (v106 <= 5)
    {
      LOBYTE(v106) = 5;
    }

    v170.i32[v93] = ((*(v103 + 4 * (v105 >> (v106 - 5))) * *(v12 + v93 * 4 + 200)) >> (v106 - 5)) + 4;
    ++v93;
  }

  v107 = 8 * v22;
  v108 = 8 * v20;
  v109 = 8 * v26;
  if (a3)
  {
    if (a4)
    {
      v110 = 0;
    }

    else
    {
      v110 = v99;
    }

    v111 = *(v12 + 136);
    v112 = *(v111 + 4 * v110 + 4 * a3 - 4);
  }

  else
  {
    v112 = 0;
    v111 = *(v12 + 136);
  }

  v113 = 0;
  v114 = *(v111 + 4 * v101);
  v115 = *(v111 + 4 * v100);
  v116 = v112 + v114;
  v117 = *(v111 + 4 * v102);
  if (v114 >= 0)
  {
    v118 = v114;
  }

  else
  {
    v118 = -v114;
  }

  if (v112 >= 0)
  {
    v119 = v112;
  }

  else
  {
    v119 = -v112;
  }

  if (v118 <= v119)
  {
    v120 = v112;
  }

  else
  {
    v120 = v114;
  }

  if (v115 >= 0)
  {
    v121 = v115;
  }

  else
  {
    v121 = -v115;
  }

  if (v120 >= 0)
  {
    v122 = v120;
  }

  else
  {
    v122 = -v120;
  }

  if (v121 > v122)
  {
    v120 = v115;
  }

  if (v117 >= 0)
  {
    v123 = v117;
  }

  else
  {
    v123 = -v117;
  }

  if (v120 >= 0)
  {
    v124 = v120;
  }

  else
  {
    v124 = -v120;
  }

  if (v123 > v124)
  {
    LODWORD(v120) = v117;
  }

  v94[15] = v120;
  v125 = *(v12 + 176);
  v126 = v107 - (((v116 + v117) * *(v12 + 172)) >> 5);
  *v12 = v109 - v107 + v108;
  *(v12 + 8) = v126;
  v127 = v108 - (((v116 + v115) * v125) >> 5);
  v128 = v107 - ((*(v12 + 180) * v115 + *(v12 + 184) * v114 + *(v12 + 188) * v117 + 8 * ((v31 - v22) * *(v12 + 192) + (v21 - v20) * *(v12 + 196))) >> 5);
  *(v12 + 16) = v127;
  *(v12 + 24) = v128;
  v171 = vshlq_u32(v170, vnegq_s32(vdupq_n_s32((__clz(vaddvq_s32(v170)) ^ 0x1F) - 4)));
  v129 = vaddvq_s32(v171);
  v130 = (v129 >> 1) - 1;
  do
  {
    v130 += *(v12 + 8 * v113) * v171.u32[v113];
    ++v113;
  }

  while (v113 != 4);
  v131 = (v130 * *(v103 + 4 * (v129 - 1))) >> 24;
  if (v109 <= v107)
  {
    result = 8 * v22;
  }

  else
  {
    result = 8 * v26;
  }

  if (v108 > result)
  {
    result = 8 * v20;
  }

  if (v107 >= v109)
  {
    v132 = 8 * v26;
  }

  else
  {
    v132 = 8 * v22;
  }

  if (v132 >= v108)
  {
    v132 = 8 * v20;
  }

  if (v131 < result)
  {
    result = v131;
  }

  if (v132 > result)
  {
    result = v132;
  }

  if ((v115 ^ v114 | v112 ^ v114) <= 0)
  {
    v133 = result;
  }

  else
  {
    v133 = v131;
  }

  *(v12 + 32) = v133;
  v134 = v18[5];
  if (v134)
  {
    v135 = (v18[3] + v18[2] * a3);
    v136 = v94 + 16;
    do
    {
      v137 = *v135++;
      *v136++ = v137;
      --v134;
    }

    while (v134);
  }

  v91 = v169;
  switch(v167)
  {
    case 1:
      break;
    case 2:
      v20 = v22;
      break;
    case 3:
      v138 = v20 + v22;
      goto LABEL_250;
    case 4:
      v145 = v22 - v21;
      if (v22 - v21 < 0)
      {
        v145 = v21 - v22;
      }

      v146 = v20 - v21;
      if (v20 - v21 < 0)
      {
        v146 = v21 - v20;
      }

      if (v145 >= v146)
      {
        v20 = v22;
      }

      break;
    case 5:
      if (v19 >= v22)
      {
        v139 = v22;
      }

      else
      {
        v139 = v19;
      }

      if (v19 <= v22)
      {
        v140 = v22;
      }

      else
      {
        v140 = v19;
      }

      v141 = v19 + v22 - v21;
      if (v139 > v21)
      {
        v141 = v140;
      }

      if (v140 >= v21)
      {
        v139 = v141;
      }

      v20 = v139;
      break;
    case 6:
      v20 = (v133 + 3) >> 3;
      break;
    case 7:
      v20 = v26;
      break;
    case 8:
      v20 = v21;
      break;
    case 9:
      v20 = v98;
      break;
    case 10:
      v138 = v21 + v20;
      goto LABEL_250;
    case 11:
      v138 = v21 + v22;
      goto LABEL_250;
    case 12:
      v138 = v22 + v26;
LABEL_250:
      v20 = v138 / 2;
      break;
    case 13:
      v142 = 3 * v26 - 2 * v31 + 6 * v22 - v20 + 8 * v20 + v98 + v165;
      v143 = v142 + 8;
      v144 = v142 + 23;
      if (v143 >= 0)
      {
        v144 = v143;
      }

      v20 = v144 >> 4;
      break;
    default:
      v20 = 0;
      break;
  }

  v171.i64[v167] = v20;
LABEL_252:
  ++***(a1 + 56);
  v147 = *(a1 + 64);
  v148 = *v147;
  v149 = **v147;
  v150 = (*v147)[1];
  v151 = v150 + v149;
  *v148 = v150;
  v148[1] = (v150 >> 5) ^ ((v149 ^ (v149 << 23)) >> 18) ^ v150 ^ v149 ^ (v149 << 23);
  v152 = v168;
  if (*v147[1] >= HIDWORD(v151))
  {
    result = sub_240BDC2B8(*(a1 + 48), *v9, v91, &v171);
    v12 = *(a1 + 40);
    v152 = *(a1 + 16);
  }

  v153 = 0;
  v154 = *(v152 + 40) + 2;
  if (a4)
  {
    v155 = 0;
  }

  else
  {
    v155 = *(v152 + 40) + 2;
  }

  v156 = 8 * *v9;
  v157 = v155 + a3;
  *(*(v12 + 136) + 4 * v157) = *(v12 + 32) - v156;
  v158 = (a4 << 63 >> 63) & v154;
  v159 = (v12 + 40);
  do
  {
    v160 = *(v12 + v153) - v156;
    if (v160 < 0)
    {
      v160 = v156 - *(v12 + v153);
    }

    v161 = (v160 + 3) >> 3;
    v162 = *v159;
    v159 += 3;
    *(v162 + 4 * v157) = v161;
    *(v162 + 4 * v158 + 4 * a3 + 4) += v161;
    v153 += 8;
  }

  while (v153 != 32);
  v163 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240BD5204(void *a1, int a2, unint64_t a3)
{
  *&v18[4] = *MEMORY[0x277D85DE8];
  if ((a2 & 0xFFFFFFFD) == 0)
  {
    LODWORD(v9) = 0;
    WORD2(v9) = -1;
    *(&v9 + 1) = 0;
    LODWORD(v10) = 0;
    *(&v10 + 1) = 0;
    LODWORD(v11) = 1;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    sub_240BD5960();
  }

  if (a2 == 5)
  {
    v13 = xmmword_240C854F4;
    v14 = unk_240C85504;
    v15 = xmmword_240C85514;
    v16 = unk_240C85524;
    v9 = xmmword_240C854B4;
    v10 = unk_240C854C4;
    v11 = xmmword_240C854D4;
    v12 = unk_240C854E4;
    v17 = 500;
    __p = 0;
    v7 = 0;
    v8 = 0;
    sub_240B7D364(&__p, &v9, v18, 0x21uLL);
    sub_240BD5AFC(a1, 15, &__p, 6, a3);
LABEL_11:
    if (__p)
    {
      operator delete(__p);
    }

    goto LABEL_14;
  }

  if (a2 != 4)
  {
    if (a2 == 3)
    {
      LODWORD(v9) = 0;
      WORD2(v9) = -1;
      *(&v9 + 1) = 0;
      LODWORD(v10) = 1;
      *(&v10 + 1) = 0;
      LODWORD(v11) = 1;
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      sub_240BD5960();
    }

    v13 = xmmword_240C854F4;
    v14 = unk_240C85504;
    v15 = xmmword_240C85514;
    v16 = unk_240C85524;
    v9 = xmmword_240C854B4;
    v10 = unk_240C854C4;
    v11 = xmmword_240C854D4;
    v12 = unk_240C854E4;
    v17 = 500;
    __p = 0;
    v7 = 0;
    v8 = 0;
    sub_240B7D364(&__p, &v9, v18, 0x21uLL);
    sub_240BD5AFC(a1, 9, &__p, 5, a3);
    goto LABEL_11;
  }

  if (a3 <= 0x3FF)
  {
    LODWORD(v9) = 0;
    WORD2(v9) = -1;
    *(&v9 + 1) = 0;
    LODWORD(v10) = 1;
    *(&v10 + 1) = 0;
    LODWORD(v11) = 1;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    sub_240BD5960();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  LODWORD(v9) = 1;
  WORD2(v9) = 0;
  *(&v9 + 1) = 0x200000001;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 2;
  WORD2(v9) = 0;
  *(&v9 + 1) = 0x400000003;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = 0;
  *(&v9 + 1) = 0x600000005;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = 6;
  *(&v9 + 1) = 0x1600000015;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = 2;
  *(&v9 + 1) = 0x800000007;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = -1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 5;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = -1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 5;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 5;
  WORD2(v9) = 7;
  *(&v9 + 1) = 0xA00000009;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 5;
  WORD2(v9) = 7;
  *(&v9 + 1) = 0x100000000FLL;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 11;
  WORD2(v9) = 7;
  *(&v9 + 1) = 0xC0000000BLL;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 3;
  WORD2(v9) = 7;
  *(&v9 + 1) = 0xE0000000DLL;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = -1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = -1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = -1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = -1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 11;
  WORD2(v9) = 7;
  *(&v9 + 1) = 0x1200000011;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 3;
  WORD2(v9) = 7;
  *(&v9 + 1) = 0x1400000013;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = -1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = -1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = -1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = -1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = 7;
  *(&v9 + 1) = 0x1800000017;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = 7;
  *(&v9 + 1) = 0x1A00000019;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = -1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = -1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = -1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
  LODWORD(v9) = 0;
  WORD2(v9) = -1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 0;
  *(&v10 + 1) = 0;
  LODWORD(v11) = 1;
  sub_240BD59F8(a1, &v9);
LABEL_14:
  v5 = *MEMORY[0x277D85DE8];
}

void sub_240BD58C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_240BD59DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240BD59F8(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      sub_240B228BC();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_240B5C5D8(v11);
    }

    v12 = 40 * v8;
    v13 = *a2;
    v14 = a2[1];
    *(v12 + 32) = *(a2 + 4);
    *v12 = v13;
    *(v12 + 16) = v14;
    v7 = 40 * v8 + 40;
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
  }

  *(a1 + 8) = v7;
}

void sub_240BD5AFC(void *a1, __int16 a2, void *a3, int a4, unint64_t a5)
{
  v29.n128_u32[0] = 0;
  v8 = __clz(a5) ^ 0x3F;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v34 = 0u;
  v35 = 0u;
  if ((a5 & (a5 - 1)) != 0)
  {
    ++v8;
  }

  *__p = 0uLL;
  v29.n128_u16[2] = -1;
  if (v8 >= 0xE)
  {
    v9 = 0;
  }

  else
  {
    v9 = 112 - 8 * v8;
  }

  v29.n128_u64[1] = 0;
  LODWORD(v30) = a4;
  v31 = 0;
  v32 = 1;
  sub_240BD59F8(a1, &v29);
  v27 = a3;
  v10 = (a3[1] - *a3) >> 2;
  v29.n128_u64[0] = 0;
  v29.n128_u64[1] = v10;
  v30 = 0;
  sub_240BD5DE0(__p, &v29);
  v11 = *(&v35 + 1);
  while (v11)
  {
    v12 = __p[1];
    v13 = v35;
    v14 = (*(__p[1] + v35 / 0xAA) - 4080 * (v35 / 0xAA) + 24 * v35);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    --v11;
    *&v35 = v35 + 1;
    *(&v35 + 1) = v11;
    if (v35 >= 0x154)
    {
      operator delete(*__p[1]);
      __p[1] = v12 + 8;
      *&v35 = v13 - 169;
    }

    if (v15 + v9 < v16)
    {
      v18 = (v16 + v15) >> 1;
      v19 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
      v20 = *a1 + 40 * v17;
      *v20 = *(*v27 + 4 * v18);
      *(v20 + 4) = a2;
      *(v20 + 8) = v19;
      *(v20 + 12) = (v19 + 1);
      *(v20 + 24) = 0;
      *(v20 + 32) = 1;
      v29.n128_u64[0] = (v18 + 1);
      v29.n128_u64[1] = v16;
      v30 = v19;
      sub_240BD5DE0(__p, &v29);
      v29.n128_u32[0] = 0;
      v29.n128_u16[2] = -1;
      v29.n128_u64[1] = 0;
      LODWORD(v30) = a4;
      v31 = 0;
      v32 = 1;
      sub_240BD59F8(a1, &v29);
      v29.n128_u64[0] = v15;
      v29.n128_u64[1] = ((v16 + v15) >> 1);
      v30 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
      sub_240BD5DE0(__p, &v29);
      v29.n128_u32[0] = 0;
      v29.n128_u16[2] = -1;
      v29.n128_u64[1] = 0;
      LODWORD(v30) = a4;
      v31 = 0;
      v32 = 1;
      sub_240BD59F8(a1, &v29);
      v11 = *(&v35 + 1);
    }
  }

  v21 = __p[1];
  v22 = v34;
  v23 = v34 - __p[1];
  if (v34 - __p[1] >= 0x11)
  {
    do
    {
      v24 = *v21++;
      operator delete(v24);
      v23 -= 8;
    }

    while (v23 > 0x10);
  }

  while (v21 != v22)
  {
    v25 = *v21++;
    operator delete(v25);
  }

  v26 = __p[0];
  if (__p[0])
  {

    operator delete(v26);
  }
}

void sub_240BD5DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_240BD6304(va);
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

__n128 sub_240BD5DE0(void *a1, __n128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 170 * ((v4 - v5) >> 3) - 1;
  }

  v7 = a1[4];
  if (v6 == a1[5] + v7)
  {
    v8 = v7 >= 0xAA;
    v9 = v7 - 170;
    if (!v8)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }

      sub_240B2291C();
    }

    a1[4] = v9;
    v17 = *v5;
    a1[1] = v5 + 8;
    sub_240BD63D0(a1, &v17);
  }

  v14 = a1[5] + a1[4];
  v15 = (*(a1[1] + 8 * (v14 / 0xAA)) - 4080 * (v14 / 0xAA) + 24 * v14);
  result = *a2;
  v15[1].n128_u64[0] = a2[1].n128_u64[0];
  *v15 = result;
  ++a1[5];
  return result;
}

void sub_240BD62D8(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_240BD6304(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 170;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_240BD63D0(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_240B2291C();
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void sub_240BD64F0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != a2[1] && **a2 != *(*a2 + 8))
  {
    v8 = a2 + 22;
    v7 = a2[22];
    v9 = a2[21];
    if (v7)
    {
      a2[23] = v7;
      operator delete(v7);
    }

    *v8 = 0;
    a2[23] = 0;
    a2[24] = 0;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    v10 = *(a4 + 48);
    v11 = *(a4 + 72);
    sub_240B5C5D8(1uLL);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_240BD789C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p)
{
  v31 = *(v29 - 176);
  if (v31)
  {
    operator delete(v31);
  }

  if (__p)
  {
    *(a17 + 8) = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240BD799C(void *a1, uint64_t a2)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0x1FFFFFFFDFFuLL;
  sub_240B63AB4(&v17, &v16);
  v4 = v17;
  if (v17 == v18)
  {
LABEL_22:
    v5 = 1;
    goto LABEL_23;
  }

  v5 = 0;
  v7 = *(v18 - 4);
  v6 = *(v18 - 3);
  v8 = *(v18 - 1);
  v18 -= 16;
  if ((v7 - 511) < 0xFFFFFC00 || v6 > 511)
  {
LABEL_23:
    if (v4)
    {
      goto LABEL_24;
    }

    return v5;
  }

  while (1)
  {
    v9 = *a1 + 24 * v8;
    if (*v9 == -1)
    {
      break;
    }

    if (*(v9 + 20) < 2)
    {
      LODWORD(v16) = *(v9 + 4);
      DWORD1(v16) = v6;
      *(&v16 + 1) = *(v9 + 16);
    }

    else
    {
      LODWORD(v16) = *(v9 + 8);
      DWORD1(v16) = v6;
      *(&v16 + 1) = *(v9 + 16);
      sub_240B63AB4(&v17, &v16);
      *&v16 = *(v9 + 4);
      *(&v16 + 1) = (*(v9 + 16) + 1);
    }

    sub_240B63AB4(&v17, &v16);
    v12 = *(v9 + 4);
    if (*(v9 + 22) < 2)
    {
      *&v16 = __PAIR64__(v12, v7);
      *(&v16 + 1) = (*(v9 + 16) + 2);
    }

    else
    {
      v13 = *(v9 + 16);
      LODWORD(v16) = *(v9 + 12);
      DWORD1(v16) = v12;
      *(&v16 + 1) = (v13 + 2);
      sub_240B63AB4(&v17, &v16);
      v14 = *(v9 + 16);
      *&v16 = __PAIR64__(*(v9 + 12), v7);
      *(&v16 + 1) = (v14 + 3);
    }

    sub_240B63AB4(&v17, &v16);
LABEL_18:
    v4 = v17;
    if (v17 == v18)
    {
      goto LABEL_22;
    }

    v5 = 0;
    v7 = *(v18 - 4);
    v6 = *(v18 - 3);
    v8 = *(v18 - 1);
    v18 -= 16;
    if ((v7 - 511) < 0xFFFFFC00 || v6 > 511)
    {
      goto LABEL_23;
    }
  }

  if (*(v9 + 20) == *(v9 + 20) && *(v9 + 8) == 1)
  {
    if (v7 < v6)
    {
      v10 = v7 + 513;
      v11 = -v6;
      do
      {
        *(a2 + 2 * v10) = *(v9 + 16);
        *(a2 + 2048 + v10++) = *(v9 + 20);
      }

      while (v11 + v10 != 513);
    }

    goto LABEL_18;
  }

  v5 = 0;
  if (!v4)
  {
    return v5;
  }

LABEL_24:
  operator delete(v4);
  return v5;
}

void sub_240BD7BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240BD7BE8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, signed int a5, unsigned int a6, int a7)
{
  if (!a5)
  {
    if (!a6)
    {
      v14 = 0;
      v12 = 0;
      v10 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v13 = 0;
      v16 = 0;
      goto LABEL_20;
    }

    v7 = *(a3 - 4 * a4);
    v10 = v7;
    v8 = v7;
    v9 = v7;
    goto LABEL_6;
  }

  v7 = *(a3 - 4);
  v8 = v7;
  if (a6)
  {
    v9 = *(a3 + 4 * ~a4);
    v10 = *(a3 - 4 * a4);
LABEL_6:
    v11 = 1;
    if (a5 + 1 >= a2)
    {
      v12 = v10;
    }

    else
    {
      v12 = *(a3 + 4 * (1 - a4));
    }

    goto LABEL_10;
  }

  v11 = 0;
  v9 = v7;
  v10 = v7;
  v12 = v7;
LABEL_10:
  v13 = v8;
  if (a5 >= 2)
  {
    v13 = *(a3 - 8);
  }

  v14 = v10;
  if (a6 >= 2)
  {
    v14 = *(a3 - 8 * a4);
  }

  v15 = v11 ^ 1;
  if (a5 + 2 >= a2)
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = v12;
  }

  else
  {
    v16 = *(a3 + 4 * (2 - a4));
  }

LABEL_20:
  *result = 0;
  if (a7 <= 7)
  {
    if (a7 > 3)
    {
      v19 = v10 - v9;
      if (v10 - v9 < 0)
      {
        v19 = v9 - v10;
      }

      v20 = v8 - v9;
      if (v8 - v9 < 0)
      {
        v20 = v9 - v8;
      }

      if (v19 >= v20)
      {
        v8 = v10;
      }

      if (v7 >= v10)
      {
        v21 = v10;
      }

      else
      {
        v21 = v7;
      }

      if (v7 <= v10)
      {
        v22 = v10;
      }

      else
      {
        v22 = v7;
      }

      LODWORD(v10) = v7 + v10 - v9;
      if (v21 > v9)
      {
        LODWORD(v10) = v22;
      }

      if (v22 < v9)
      {
        LODWORD(v10) = v21;
      }

      v10 = v10;
      if (a7 == 7)
      {
        v23 = v12;
      }

      else
      {
        v23 = 0;
      }

      if (a7 != 5)
      {
        v10 = v23;
      }

      v18 = a7 == 4;
    }

    else
    {
      v17 = (v8 + v10) / 2;
      if (a7 != 3)
      {
        v17 = 0;
      }

      if (a7 != 2)
      {
        v10 = v17;
      }

      v18 = a7 == 1;
    }

    if (!v18)
    {
      v8 = v10;
    }

    goto LABEL_69;
  }

  if (a7 <= 10)
  {
    v8 = (v9 + v8) / 2;
    if (a7 != 10)
    {
      v8 = 0;
    }

    if (a7 == 9)
    {
      v8 = v13;
    }

    if (a7 == 8)
    {
      v8 = v9;
    }

    goto LABEL_69;
  }

  switch(a7)
  {
    case 11:
      v27 = v9 + v10;
LABEL_68:
      v8 = v27 / 2;
      break;
    case 12:
      v27 = v10 + v12;
      goto LABEL_68;
    case 13:
      v24 = 3 * v12 - 2 * v14 + 6 * v10 - v8 + 8 * v8 + v13 + v16;
      v25 = v24 + 8;
      v26 = v24 + 23;
      if (v25 >= 0)
      {
        v26 = v25;
      }

      v8 = v26 >> 4;
      break;
    default:
      v8 = 0;
      break;
  }

LABEL_69:
  *(result + 8) = v8;
  *(result + 16) = a7;
  return result;
}

uint64_t sub_240BD7E08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, _OWORD *a7, unint64_t *a8, uint64_t a9, void *a10)
{
  v313[15] = *MEMORY[0x277D85DE8];
  if (*(a1 + 80))
  {
    v10 = 1;
    goto LABEL_368;
  }

  v11 = a1;
  v12 = *(a1 + 8);
  v13 = v12 - *a1;
  if (v12 == *a1)
  {
    v10 = 0;
    goto LABEL_368;
  }

  sub_240B63BBC(v271);
  if (a10)
  {
    v19 = a10;
  }

  else
  {
    v19 = v271;
  }

  *&v284[1] = xmmword_240C112C0;
  v284[0] = &unk_2852A2120;
  v284[3] = 0;
  v244 = v19;
  (*(*v19 + 16))(v19, v284);
  if (*(a2 + 64) == 6)
  {
    v20 = *(a2 + 68);
    *(v244 + 56) = 13;
    if (v20 > 3)
    {
      v30 = 4;
      v26 = 5;
      v24 = 10;
      v21 = 12;
      v22 = 12;
      v23 = 12;
      v25 = 10;
      v27 = 5;
      v28 = 5;
      v29 = 12;
    }

    else
    {
      v21 = dword_240C11AE0[v20];
      v22 = dword_240C11AF0[v20];
      v23 = dword_240C11B00[v20];
      v24 = dword_240C11B10[v20];
      v25 = dword_240C11B20[v20];
      v26 = dword_240C85588[v20];
      v27 = dword_240C11B30[v20];
      v28 = dword_240C11B40[v20];
      v29 = dword_240C11B50[v20];
      v30 = dword_240C11B60[v20];
    }

    *(v244 + 60) = v21;
    *(v244 + 64) = v22;
    *(v244 + 68) = v23;
    *(v244 + 28) = v24;
    *(v244 + 32) = v25;
    *(v244 + 36) = v26;
    *(v244 + 40) = v27;
    *(v244 + 44) = v28;
    *(v244 + 48) = v29;
    *(v244 + 52) = v30;
  }

  if (a10)
  {
    v31 = a10 + 9;
  }

  else
  {
    v31 = v272;
  }

  if (v31 != v11 + 3)
  {
    sub_240B43928(v31, v11[3], v11[4], 0x8E38E38E38E38E39 * ((v11[4] - v11[3]) >> 3));
  }

  if (a9)
  {
    *(v244 + 8) = 1;
    v32 = a7 == 0;
  }

  else if (a7)
  {
    v32 = 0;
  }

  else
  {
    v10 = sub_240C0EB88(v244, a3, a5, a4);
    if (v10)
    {
      goto LABEL_367;
    }

    v32 = 1;
  }

  v270 = 0;
  v33 = v13 >> 6;
  v269 = 0u;
  memset(v268, 0, sizeof(v268));
  v267 = 0;
  if (a8)
  {
    v34 = a8;
  }

  else
  {
    v34 = &v267;
  }

  v35 = *v34;
  if (!*v34)
  {
    v36 = 0;
    if (v33 <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = v13 >> 6;
    }

    v38 = (*v11 + 48);
    while (1)
    {
      v39 = *(v38 - 1);
      if (v36 >= v11[9])
      {
        if (v39 > *a2 || (v40 = *v38, *v38 > *a2))
        {
LABEL_35:
          if (v35 <= 1)
          {
            v35 = 1;
          }

          *v34 = v35;
          break;
        }
      }

      else
      {
        v40 = *v38;
      }

      v35 += v40 * v39;
      *v34 = v35;
      ++v36;
      v38 += 8;
      if (v37 == v36)
      {
        goto LABEL_35;
      }
    }
  }

  v245 = a2;
  v247 = v11;
  if (a9 || *(a2 + 84) != 1)
  {
LABEL_362:
    v265[0] = 0;
    v265[1] = 0;
    v266 = 0;
    sub_240B8C03C(v264);
  }

  v249 = v32;
  if (v32)
  {
    if (sub_240BDBAA0(v268, *(a2 + 64), *(a2 + 76)) || sub_240BDBFCC(v268, (a2 + 24), *(a2 + 76)))
    {
      v10 = 1;
      goto LABEL_366;
    }

    memset(v284, 0, 24);
    memset(v313, 0, 24);
    v305 = 0;
    v304 = 0;
    v306 = 0;
    v273 = 0uLL;
    *&v274 = 0;
    sub_240BDD550(v11, a2, 0, &v304, &v273, v284, v313);
    sub_240BDC748(v268, &v280, 0, 0, &v304, &v273, v284, v313, *(a2 + 56));
    if (v273)
    {
      operator delete(v273);
    }

    if (v304)
    {
      operator delete(v304);
    }

    if (v313[0])
    {
      operator delete(v313[0]);
    }

    v251 = v34;
    v246 = &v269;
    if (v284[0])
    {
      operator delete(v284[0]);
    }

    a7 = v268;
  }

  else
  {
    v251 = v34;
    v246 = (a7 + 11);
  }

  v41 = 0;
  if (v33 <= 1)
  {
    v42 = 1;
  }

  else
  {
    v42 = v13 >> 6;
  }

  v250 = v42;
  do
  {
    v43 = *v11;
    v255 = v41;
    v44 = *v11 + (v41 << 6);
    v45 = *(v44 + 40);
    if (!v45)
    {
      goto LABEL_360;
    }

    v46 = *(v44 + 48);
    if (!v46)
    {
      goto LABEL_360;
    }

    if (v255 >= v11[9] && (v45 > *a2 || v46 > *a2))
    {
      break;
    }

    v264[0] = v251;
    sub_240B2B9C0(&v298, 4 * *(a2 + 20) + 16);
    v48 = *(a2 + 16);
    v49 = (v43 + (v255 << 6));
    v50 = fminf(v48, 1.0);
    v51 = v50;
    v52 = v49[5];
    if (v50 > 0.0)
    {
      v53 = fmin(1024.0 / (v49[6] * v52), 1.0);
      if (v53 > v51)
      {
        v51 = v53;
      }
    }

    v301 = (v51 * 4294967300.0);
    v302 = xmmword_240C11AD0;
    v265[0] = &v302;
    v265[1] = &v301;
    v300 = v49[2] >> 2;
    v54 = (v299 - v298) >> 2;
    v55 = v54 - 16;
    sub_240B3AC2C(v284, v54 - 16, v52);
    v10 = LODWORD(v286[0]);
    if (LODWORD(v286[0]))
    {
      a2 = v245;
      v11 = v247;
    }

    else
    {
      v273 = *v284;
      v274 = *&v284[2];
      v275 = v285;
      v276 = v55;
      v277 = v52;
      v278 = 0;
      v280 = &unk_2852A1238;
      v281 = *(v244 + 24);
      v282 = *(v244 + 40);
      v283 = *(v244 + 56);
      sub_240B62C98(v284, &v280, v49[5]);
      v56 = (v51 * v49[6] * v49[5] + 64.0);
      for (i = *a7; i != *(a7 + 1); i += 3)
      {
        v58 = v56 + ((i[1] - *i) >> 1);
        if (v58 > (i[2] - *i) >> 1)
        {
          if ((v58 & 0x8000000000000000) == 0)
          {
            sub_240B29578(v58);
          }

          sub_240B228BC();
        }
      }

      v59 = *(a7 + 6);
      v60 = *(a7 + 7);
      while (v59 != v60)
      {
        sub_240B844BC(v59, v59[1] + v56 - *v59);
        v59 += 3;
      }

      v61 = 3 * (v56 + ((*(a7 + 4) - *(a7 + 3)) >> 1));
      v62 = __clz(v61 >> 1) ^ 0x3F;
      if ((((v61 >> 1) - 1) & (v61 >> 1)) != 0)
      {
        v63 = v62 + 1;
      }

      else
      {
        v63 = v62;
      }

      if (1 << v63 != (*(a7 + 23) - *(a7 + 22)) >> 2)
      {
        sub_240B2B4A8(v246, 1 << v63, &dword_240C85598);
        v65 = *(a7 + 3);
        v64 = *(a7 + 4);
        if (v64 != v65)
        {
          v66 = 0;
          do
          {
            if (*(v65 + 2 * v66) != -1)
            {
              sub_240BDC0E8(a7, v66);
              v65 = *(a7 + 3);
              v64 = *(a7 + 4);
            }

            ++v66;
          }

          while (v66 < (v64 - v65) >> 1);
        }
      }

      LOBYTE(v279) = *(a7 + 16) - *(a7 + 15) != 4;
      v304 = &v279;
      v305 = &v298;
      v306 = v49;
      v307 = &v300;
      v308 = &v273;
      v309 = v284;
      v310 = a7;
      v311 = v264;
      v312 = v265;
      if (v49[6])
      {
        v67 = 0;
        v259 = v49;
        do
        {
          v68 = v67 - 1;
          if (!v67)
          {
            v68 = 0;
          }

          v256 = v68;
          v69 = v49[2];
          v261 = v49[3];
          if (v273)
          {
            v70 = DWORD1(v273) == 0;
          }

          else
          {
            v70 = 1;
          }

          if (!v70)
          {
            v71 = 0;
            do
            {
              bzero((*(&v274 + 1) + v274 * v71++), 4 * v273);
            }

            while (v71 < DWORD1(v273));
          }

          v72 = v49[5];
          if (v255 >= 1)
          {
            v73 = v276;
            if (v276)
            {
              v74 = 0;
              v75 = 0;
              v76 = *v247;
              v77 = v255;
              v78 = *v247 + (v255 << 6);
              v79 = v67 - 1;
              v80 = *(v78 + 40);
              if (!v67)
              {
                v79 = 0;
              }

              v253 = v79;
              v252 = *(&v274 + 1) + 8;
              v81 = 4 * (v274 >> 2);
              do
              {
                v82 = v76 + ((v77 - 1) << 6);
                if (*(v82 + 40) == v80 && *(v82 + 48) == *(v78 + 48) && *(v82 + 56) == *(v78 + 56) && *(v82 + 60) == *(v78 + 60))
                {
                  if (v72)
                  {
                    v83 = 0;
                    v86 = v82 + 16;
                    v85 = *(v82 + 16);
                    v84 = *(v86 + 8);
                    v87 = v85 * v253;
                    v88 = (v84 + v67 * v85);
                    v89 = (v84 + v256 * v85);
                    v90 = (v252 + 4 * v74);
                    do
                    {
                      v91 = *v88;
                      if (v91 >= 0)
                      {
                        LODWORD(v92) = *v88;
                      }

                      else
                      {
                        v92 = -v91;
                      }

                      *(v90 - 2) = v92;
                      *(v90 - 1) = v91;
                      if (v83)
                      {
                        v93 = *(v88 - 1);
                        if (v67)
                        {
                          v94 = *(v89 - 1);
                          v95 = *v89;
                        }

                        else
                        {
                          v95 = *(v88 - 1);
                          v94 = v95;
                        }
                      }

                      else
                      {
                        v93 = 0;
                        if (v67)
                        {
                          v94 = 0;
                          v95 = *(v84 + v87);
                        }

                        else
                        {
                          v95 = 0;
                          v94 = 0;
                        }
                      }

                      if (v95 >= v93)
                      {
                        v96 = v93;
                      }

                      else
                      {
                        v96 = v95;
                      }

                      if (v93 <= v95)
                      {
                        v97 = v95;
                      }

                      else
                      {
                        v97 = v93;
                      }

                      v98 = v95 + v93 - v94;
                      if (v96 > v94)
                      {
                        v98 = v97;
                      }

                      if (v97 < v94)
                      {
                        v98 = v96;
                      }

                      v99 = v91 - v98;
                      if (v99 >= 0)
                      {
                        LODWORD(v100) = v99;
                      }

                      else
                      {
                        v100 = -v99;
                      }

                      *v90 = v100;
                      v90[1] = v99;
                      ++v83;
                      ++v88;
                      ++v89;
                      v90 = (v90 + v81);
                    }

                    while (v72 != v83);
                  }

                  v75 += 4;
                }

                if (v77 < 2)
                {
                  break;
                }

                v74 = v75;
                --v77;
              }

              while (v73 > v75);
            }
          }

          v101 = v298;
          v102 = v261 + v69 * v67;
          *v298 = v255;
          v101[1] = a6;
          v101[2] = v67;
          v101[9] = 0;
          if (v67 < 2 || v72 < 9 || v276)
          {
            if (v72)
            {
              v238 = 0;
              do
              {
                sub_240BD46AC(&v304, v102, v238++, v67);
              }

              while (v238 < v49[5]);
            }
          }

          else
          {
            v103 = 0;
            v104 = 1;
            do
            {
              v105 = v104;
              sub_240BD46AC(&v304, v102, v103, v67);
              v104 = 0;
              v103 = 1;
            }

            while ((v105 & 1) != 0);
            v106 = v49[5];
            v107 = v106 - 2;
            if (v106 - 2 >= 3)
            {
              v108 = 2;
              do
              {
                v109 = (v102 + 4 * v108);
                if (v279 == 1)
                {
                  v110 = 0;
                  v111 = *&v109[~v300];
                  v112 = v111.i32[1];
                  v113 = v109[1 - v300];
                  v114 = *(v109 - 1);
                  v115 = *(v109 - 2);
                  v257 = v109[2 - v300];
                  v116 = v109[-2 * v300];
                  v117 = v298;
                  *(v298 + 3) = v108;
                  v118.i64[0] = vdup_lane_s32(v111, 1).i32[0];
                  v118.i64[1] = v114;
                  v119 = v118;
                  v117[2] = vmovn_s64(vabsq_s64(v118));
                  v117[3].i32[0] = v111.i32[1];
                  v120.i32[0] = v111.i32[1] + v114;
                  v120.i32[1] = v114;
                  v121.i32[0] = v111.i32[0];
                  v121.i64[1] = __PAIR64__(v113, v111.u32[1]);
                  v120.u64[1] = v111;
                  v122 = v114 - v117[4].i32[1];
                  v121.i32[1] = v111.i32[0];
                  v117[3].i32[1] = v114;
                  v117[4].i32[0] = v122;
                  v123 = vsubq_s32(v120, v121);
                  *&v117[4].u8[4] = v123;
                  v262 = v116;
                  v117[6].i32[1] = v111.i32[1] - v116;
                  v117[7].i32[0] = v114 - v115;
                  v124 = v106 + 2;
                  if (v67)
                  {
                    v125 = v106 + 2;
                  }

                  else
                  {
                    v125 = 0;
                  }

                  v126 = v125 + v108;
                  if (v106 - 1 <= v108)
                  {
                    v127 = v125 + v108;
                  }

                  else
                  {
                    v127 = v126 + 1;
                  }

                  if (v108)
                  {
                    v128 = v126 - 1;
                  }

                  else
                  {
                    v128 = v125;
                  }

                  for (j = 5; j != 17; j += 3)
                  {
                    v130 = (*(v284[j] + v127) + *(v284[j] + v126) + *(v284[j] + v128));
                    v131 = __clz(v130 + 1) ^ 0x3F;
                    if (v131 <= 5)
                    {
                      LOBYTE(v131) = 5;
                    }

                    v303.i32[v110] = ((*&v296[4 * (v130 >> (v131 - 5)) + 16] * *&v296[v110 * 4]) >> (v131 - 5)) + 4;
                    ++v110;
                  }

                  if (v108)
                  {
                    if (v67)
                    {
                      v132 = 0;
                    }

                    else
                    {
                      v132 = v124;
                    }

                    v133 = __p;
                    v134 = *(__p + v132 + v108 - 1);
                  }

                  else
                  {
                    v134 = 0;
                    v133 = __p;
                  }

                  v160 = 0;
                  v161 = 8 * v119.i64[0];
                  v162 = 8 * v119.i64[1];
                  v163 = v133[v126];
                  v164 = v133[v128];
                  v165 = 8 * v113;
                  v166 = v134 + v163;
                  v167 = v133[v127];
                  if (v163 >= 0)
                  {
                    v168 = v163;
                  }

                  else
                  {
                    v168 = -v163;
                  }

                  if (v134 >= 0)
                  {
                    v169 = v134;
                  }

                  else
                  {
                    v169 = -v134;
                  }

                  if (v168 <= v169)
                  {
                    v170 = v134;
                  }

                  else
                  {
                    v170 = v163;
                  }

                  if (v164 >= 0)
                  {
                    v171 = v164;
                  }

                  else
                  {
                    v171 = -v164;
                  }

                  if (v170 >= 0)
                  {
                    v172 = v170;
                  }

                  else
                  {
                    v172 = -v170;
                  }

                  if (v171 <= v172)
                  {
                    v173 = v170;
                  }

                  else
                  {
                    v173 = v164;
                  }

                  if (v167 >= 0)
                  {
                    v174 = v167;
                  }

                  else
                  {
                    v174 = -v167;
                  }

                  if (v173 >= 0)
                  {
                    v175 = v173;
                  }

                  else
                  {
                    v175 = -v173;
                  }

                  if (v174 > v175)
                  {
                    LODWORD(v173) = v167;
                  }

                  v117[7].i32[1] = v173;
                  v284[0] = (v162 - v161 + v165);
                  v284[1] = (v161 - (((v166 + v167) * v289) >> 5));
                  v284[2] = (v162 - (((v166 + v164) * v290) >> 5));
                  v284[3] = (v161 - ((v291 * v164 + v292 * v163 + v293 * v167 + 8 * ((v262 - v119.i64[0]) * v294 + (v111.i32[0] - v119.i64[1]) * v295)) >> 5));
                  v297[0] = vshlq_u32(v303, vnegq_s32(vdupq_n_s32((__clz(vaddvq_s32(v303)) ^ 0x1F) - 4)));
                  v176 = vaddvq_s32(v297[0]);
                  v177 = (v176 >> 1) - 1;
                  do
                  {
                    v177 += v284[v160] * v297[0].u32[v160];
                    ++v160;
                  }

                  while (v160 != 4);
                  v178 = 0;
                  v179 = (v177 * *&v296[4 * v176 + 12]) >> 24;
                  v180 = v164 ^ v163 | v134 ^ v163;
                  if (v165 <= v161)
                  {
                    v181 = 8 * v119.i64[0];
                  }

                  else
                  {
                    v181 = 8 * v113;
                  }

                  if (v162 > v181)
                  {
                    v181 = 8 * v119.i64[1];
                  }

                  if (v161 >= v165)
                  {
                    v182 = 8 * v113;
                  }

                  else
                  {
                    v182 = 8 * v119.i64[0];
                  }

                  if (v182 >= v162)
                  {
                    v182 = 8 * v119.i64[1];
                  }

                  if (v179 < v181)
                  {
                    v181 = v179;
                  }

                  if (v182 > v181)
                  {
                    v181 = v182;
                  }

                  if (v180 <= 0)
                  {
                    v179 = v181;
                  }

                  v285 = v179;
                  v183 = (v179 + 3) >> 3;
                  if (v111.i32[1] >= v114)
                  {
                    v184 = v114;
                  }

                  else
                  {
                    v184 = v111.i32[1];
                  }

                  if (v114 > v111.i32[1])
                  {
                    v112 = v114;
                  }

                  v185 = v123.i32[0];
                  if (v184 > v111.i32[0])
                  {
                    v185 = v112;
                  }

                  if (v112 >= v111.i32[0])
                  {
                    v184 = v185;
                  }

                  v186 = v184;
                  v187 = v119.i64[0] - v111.i32[0];
                  if (v187 < 0)
                  {
                    v187 = v111.i32[0] - v119.i64[0];
                  }

                  v188 = v119.i64[1] - v111.i32[0];
                  if (v188 < 0)
                  {
                    v188 = v111.i32[0] - v119.i64[1];
                  }

                  if (v187 >= v188)
                  {
                    v189 = v119.i64[0];
                  }

                  else
                  {
                    v189 = v119.i64[1];
                  }

                  v190 = 6 * v119.i32[0] - v119.i64[1] + 8 * v119.i64[1] + v115 + 3 * v113 - 2 * v262 + v257;
                  v191 = v190 + 8;
                  v192 = v190 + 23;
                  if (v191 >= 0)
                  {
                    v192 = v191;
                  }

                  v193 = v192 >> 4;
                  v49 = v259;
                  do
                  {
                    switch(v178)
                    {
                      case 1:
                        v194 = v119.i64[1];
                        break;
                      case 2:
                        v194 = v119.i64[0];
                        break;
                      case 3:
                        v194 = (v119.i64[0] + v119.i64[1]) / 2;
                        break;
                      case 4:
                        v194 = v189;
                        break;
                      case 5:
                        v194 = v186;
                        break;
                      case 6:
                        v194 = v183;
                        break;
                      case 7:
                        v194 = v113;
                        break;
                      case 8:
                        v194 = v111.i32[0];
                        break;
                      case 9:
                        v194 = v115;
                        break;
                      case 10:
                        v194 = (v119.i64[1] + v111.i32[0]) / 2;
                        break;
                      case 11:
                        v194 = (v119.i64[0] + v111.i32[0]) / 2;
                        break;
                      case 12:
                        v194 = (v119.i64[0] + v113) / 2;
                        break;
                      case 13:
                        v194 = v193;
                        break;
                      default:
                        v194 = 0;
                        break;
                    }

                    v313[v178++] = v194;
                  }

                  while (v178 != 14);
                }

                else
                {
                  v135 = 0;
                  v136 = *&v109[~v300];
                  v263 = **(a7 + 15);
                  v137 = v136.i32[1];
                  v138 = v109[1 - v300];
                  v139 = *(v109 - 1);
                  v140 = *(v109 - 2);
                  v254 = v109[2 - v300];
                  v141 = v109[-2 * v300];
                  v142 = v298;
                  *(v298 + 3) = v108;
                  v143.i64[0] = vdup_lane_s32(v136, 1).i32[0];
                  v143.i64[1] = v139;
                  v144 = v143;
                  v142[2] = vmovn_s64(vabsq_s64(v143));
                  v142[3].i32[0] = v136.i32[1];
                  v145.i32[0] = v136.i32[1] + v139;
                  v145.i32[1] = v139;
                  v146.i32[0] = v136.i32[0];
                  v146.i64[1] = __PAIR64__(v138, v136.u32[1]);
                  v145.u64[1] = v136;
                  v147 = v139 - v142[4].i32[1];
                  v146.i32[1] = v136.i32[0];
                  v142[3].i32[1] = v139;
                  v142[4].i32[0] = v147;
                  v148 = vsubq_s32(v145, v146);
                  *&v142[4].u8[4] = v148;
                  v258 = v140;
                  v142[6].i32[1] = v136.i32[1] - v141;
                  v142[7].i32[0] = v139 - v140;
                  v149 = v106 + 2;
                  if (v67)
                  {
                    v150 = v106 + 2;
                  }

                  else
                  {
                    v150 = 0;
                  }

                  v151 = v150 + v108;
                  if (v106 - 1 <= v108)
                  {
                    v152 = v150 + v108;
                  }

                  else
                  {
                    v152 = v151 + 1;
                  }

                  if (v108)
                  {
                    v153 = v151 - 1;
                  }

                  else
                  {
                    v153 = v150;
                  }

                  for (k = 5; k != 17; k += 3)
                  {
                    v155 = (*(v284[k] + v152) + *(v284[k] + v151) + *(v284[k] + v153));
                    v156 = __clz(v155 + 1) ^ 0x3F;
                    if (v156 <= 5)
                    {
                      LOBYTE(v156) = 5;
                    }

                    v303.i32[v135] = ((*&v296[4 * (v155 >> (v156 - 5)) + 16] * *&v296[v135 * 4]) >> (v156 - 5)) + 4;
                    ++v135;
                  }

                  if (v108)
                  {
                    if (v67)
                    {
                      v157 = 0;
                    }

                    else
                    {
                      v157 = v149;
                    }

                    v158 = __p;
                    v159 = *(__p + v157 + v108 - 1);
                  }

                  else
                  {
                    v159 = 0;
                    v158 = __p;
                  }

                  v195 = 0;
                  v196 = v144.i64[1];
                  v197 = 8 * v144.i64[0];
                  v198 = 8 * v144.i64[1];
                  v199 = v158[v151];
                  v200 = v158[v153];
                  v201 = 8 * v138;
                  v202 = v159 + v199;
                  v203 = v158[v152];
                  if (v199 >= 0)
                  {
                    v204 = v199;
                  }

                  else
                  {
                    v204 = -v199;
                  }

                  if (v159 >= 0)
                  {
                    v205 = v159;
                  }

                  else
                  {
                    v205 = -v159;
                  }

                  if (v204 <= v205)
                  {
                    v206 = v159;
                  }

                  else
                  {
                    v206 = v199;
                  }

                  if (v200 >= 0)
                  {
                    v207 = v200;
                  }

                  else
                  {
                    v207 = -v200;
                  }

                  if (v206 >= 0)
                  {
                    v208 = v206;
                  }

                  else
                  {
                    v208 = -v206;
                  }

                  if (v207 <= v208)
                  {
                    v209 = v206;
                  }

                  else
                  {
                    v209 = v200;
                  }

                  if (v203 >= 0)
                  {
                    v210 = v203;
                  }

                  else
                  {
                    v210 = -v203;
                  }

                  if (v209 >= 0)
                  {
                    v211 = v209;
                  }

                  else
                  {
                    v211 = -v209;
                  }

                  if (v210 > v211)
                  {
                    LODWORD(v209) = v203;
                  }

                  v142[7].i32[1] = v209;
                  v284[0] = (v198 - v197 + v201);
                  v284[1] = (v197 - (((v202 + v203) * v289) >> 5));
                  v284[2] = (v198 - (((v202 + v200) * v290) >> 5));
                  v284[3] = (v197 - ((v291 * v200 + v292 * v199 + v293 * v203 + 8 * ((v141 - v144.i64[0]) * v294 + (v136.i32[0] - v144.i64[1]) * v295)) >> 5));
                  v297[0] = vshlq_u32(v303, vnegq_s32(vdupq_n_s32((__clz(vaddvq_s32(v303)) ^ 0x1F) - 4)));
                  v212 = vaddvq_s32(v297[0]);
                  v213 = (v212 >> 1) - 1;
                  do
                  {
                    v213 += v284[v195] * v297[0].u32[v195];
                    ++v195;
                  }

                  while (v195 != 4);
                  v214 = (v213 * *&v296[4 * v212 + 12]) >> 24;
                  v215 = v200 ^ v199 | v159 ^ v199;
                  if (v201 <= v197)
                  {
                    v216 = (8 * v144.i64[0]);
                  }

                  else
                  {
                    v216 = (8 * v138);
                  }

                  if (v198 > v216)
                  {
                    v216 = (8 * v144.i64[1]);
                  }

                  if (v197 >= v201)
                  {
                    v217 = 8 * v138;
                  }

                  else
                  {
                    v217 = 8 * v144.i64[0];
                  }

                  if (v217 >= v198)
                  {
                    v217 = 8 * v144.i64[1];
                  }

                  if (v214 < v216)
                  {
                    v216 = v214;
                  }

                  if (v217 > v216)
                  {
                    v216 = v217;
                  }

                  if (v215 > 0)
                  {
                    v216 = v214;
                  }

                  v285 = v216;
                  v49 = v259;
                  switch(v263)
                  {
                    case 1:
                      break;
                    case 2:
                      v196 = v144.i64[0];
                      break;
                    case 3:
                      v218 = v144.i64[0] + v144.i64[1];
                      goto LABEL_327;
                    case 4:
                      v224 = v144.i64[0] - v136.i32[0];
                      if (v224 < 0)
                      {
                        v224 = v136.i32[0] - v144.i64[0];
                      }

                      v225 = v144.i64[1] - v136.i32[0];
                      if (v225 < 0)
                      {
                        v225 = v136.i32[0] - v144.i64[1];
                      }

                      if (v224 >= v225)
                      {
                        v196 = v144.i64[0];
                      }

                      break;
                    case 5:
                      if (v136.i32[1] >= v139)
                      {
                        v219 = v139;
                      }

                      else
                      {
                        v219 = v136.i32[1];
                      }

                      if (v139 > v136.i32[1])
                      {
                        v137 = v139;
                      }

                      v220 = v148.i32[0];
                      if (v219 > v136.i32[0])
                      {
                        v220 = v137;
                      }

                      if (v137 >= v136.i32[0])
                      {
                        v219 = v220;
                      }

                      v196 = v219;
                      break;
                    case 6:
                      v196 = (v216 + 3) >> 3;
                      break;
                    case 7:
                      v196 = v138;
                      break;
                    case 8:
                      v196 = v136.i32[0];
                      break;
                    case 9:
                      v196 = v258;
                      break;
                    case 10:
                      v218 = v144.i64[1] + v136.i32[0];
                      goto LABEL_327;
                    case 11:
                      v218 = v144.i64[0] + v136.i32[0];
                      goto LABEL_327;
                    case 12:
                      v218 = v144.i64[0] + v138;
LABEL_327:
                      v196 = v218 / 2;
                      break;
                    case 13:
                      v221 = 6 * v144.i32[0] - v144.i64[1] + 8 * v144.i64[1] + v258 + 3 * v138 - 2 * v141 + v254;
                      v222 = v221 + 8;
                      v223 = v221 + 23;
                      if (v222 >= 0)
                      {
                        v223 = v222;
                      }

                      v196 = v223 >> 4;
                      break;
                    default:
                      v196 = 0;
                      break;
                  }

                  v313[v263] = v196;
                }

                ++*v264[0];
                v226 = v265[0];
                v227 = *(v265[0] + 1);
                v228 = v227 + *v265[0];
                v229 = (v227 >> 5) ^ ((*v265[0] ^ (*v265[0] << 23)) >> 18) ^ v227 ^ *v265[0] ^ (*v265[0] << 23);
                *v265[0] = v227;
                v226[1] = v229;
                if (*v265[1] >= HIDWORD(v228))
                {
                  sub_240BDC2B8(a7, *v109, &v298, v313);
                }

                v230 = 0;
                v106 = v49[5];
                if (v67)
                {
                  v231 = 0;
                }

                else
                {
                  v231 = v106 + 2;
                }

                v232 = 8 * *v109;
                v233 = v231 + v108;
                *(__p + v233) = v285 - v232;
                v234 = v286;
                do
                {
                  v235 = v284[v230] - v232;
                  if (v235 < 0)
                  {
                    v235 = (v232 - v284[v230]);
                  }

                  v236 = (v235 + 3) >> 3;
                  v237 = *v234;
                  v234 += 3;
                  v237[v233] = v236;
                  v237[(((v67 << 63) >> 63) & (v106 + 2)) + 1 + v108] += v236;
                  ++v230;
                }

                while (v230 != 4);
                ++v108;
                v107 = v106 - 2;
              }

              while (v108 < v106 - 2);
            }

            if (v107 < v106)
            {
              do
              {
                sub_240BD46AC(&v304, v102, v107++, v67);
              }

              while (v107 < v49[5]);
            }
          }

          ++v67;
        }

        while (v67 < v49[6]);
      }

      if (__p)
      {
        v288 = __p;
        operator delete(__p);
      }

      v239 = 0;
      a2 = v245;
      v11 = v247;
      do
      {
        v240 = v286[v239 + 9];
        if (v240)
        {
          v286[v239 + 10] = v240;
          operator delete(v240);
        }

        v239 -= 3;
      }

      while (v239 != -12);
      v241 = *(&v274 + 1);
      *(&v274 + 1) = 0;
      if (v241)
      {
        atomic_fetch_add(&qword_27E519020, -*(v241 - 24));
        free(*(v241 - 32));
      }

      v10 = 0;
    }

    if (v298)
    {
      v299 = v298;
      operator delete(v298);
    }

    v42 = v250;
    if (v10)
    {
      goto LABEL_366;
    }

LABEL_360:
    v41 = v255 + 1;
  }

  while (v255 + 1 != v42);
  if (v249)
  {
    goto LABEL_362;
  }

  v10 = 0;
LABEL_366:
  sub_240BB5F00(v268);
LABEL_367:
  v271[0] = &unk_2852A21F8;
  v284[0] = v272;
  sub_240B37900(v284);
LABEL_368:
  v242 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_240BDB21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  STACK[0x588] = 0;
  if (v51)
  {
    atomic_fetch_add(&qword_27E519020, -*(v51 - 24));
    free(*(v51 - 32));
  }

  MEMORY[0x245CCE590](a37, 0x1000C408E7E3807);
  v54 = STACK[0x4E0];
  if (STACK[0x4E0])
  {
    STACK[0x4E8] = v54;
    operator delete(v54);
  }

  if (STACK[0x500])
  {
    operator delete(STACK[0x500]);
  }

  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((v52 - 256 + i));
  }

  *(v52 - 256) = &a44;
  sub_240B31E8C((v52 - 256));
  if (a47)
  {
    operator delete(a47);
  }

  sub_240BB5F00(&a51);
  STACK[0x220] = &unk_2852A21F8;
  a51 = &STACK[0x268];
  sub_240B37900(&a51);
  _Unwind_Resume(a1);
}

uint64_t sub_240BDB4B8(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5, int a6, _OWORD *a7, unint64_t *a8, uint64_t a9, void *a10)
{
  if (*(a1 + 48))
  {
    v10 = *(a1 + 56) == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    return 0;
  }

  v26 = *a2;
  v21 = *(a2 + 2);
  v20 = *(a2 + 3);
  v27 = v21;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_240B86FB8(&v28, v20, *(a2 + 4), (*(a2 + 4) - v20) >> 2);
  v22 = a2[4];
  v31 = a2[3];
  v32 = v22;
  v33 = *(a2 + 10);
  v34 = *(a2 + 88);
  v36 = 0;
  v37 = 0;
  v23 = *(a2 + 13);
  v24 = *(a2 + 14);
  __p = 0;
  sub_240B3C84C(&__p, v23, v24, (v24 - v23) >> 3);
  v38[0] = *(a2 + 16);
  *(v38 + 5) = *(a2 + 133);
  v39 = *(a2 + 144);
  if (v32 == -1)
  {
    LODWORD(v32) = 5;
  }

  v11 = sub_240BD7E08(a1, &v26, a3, a4, a5, a6, a7, a8, a9, a10);
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return v11;
}

float sub_240BDB644(int32x4_t *a1, unint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 4 * a2;
    v4 = a1;
    do
    {
      v5 = v4->i32[0];
      v4 = (v4 + 4);
      v2 += v5;
      v3 -= 4;
    }

    while (v3);
    v6 = vdupq_n_s32(v2);
    v7 = vdupq_n_s32(0x39800000u);
    v8 = vdupq_n_s32(0xC0D55555);
    v9 = vdupq_n_s32(0x3F3E11C7u);
    v10 = vdupq_n_s32(0x3FB6E02Bu);
    v11 = vdupq_n_s32(0x3E32458Cu);
    v12 = vdupq_n_s32(0x3F813CEDu);
    v13 = vdupq_n_s32(0xB5F85AB0);
    v14 = vdupq_n_s32(0x3F7D8625u);
    v15 = 0uLL;
    v16.i64[0] = 0x7F0000007FLL;
    v16.i64[1] = 0x7F0000007FLL;
    __asm { FMOV            V20.4S, #-1.0 }

    do
    {
      v22 = *a1++;
      v23 = vcvtq_f32_s32(v22);
      v24 = vmaxnmq_f32(vmulq_n_f32(v23, 1.0 / v2), v7);
      v25 = vaddq_s32(v24, v8);
      v26 = vaddq_f32(vsubq_s32(v24, vandq_s8(v25, v16)), _Q20);
      v15 = vsubq_f32(v15, vmulq_f32(vbicq_s8(vaddq_f32(vdivq_f32(vmlaq_f32(v13, v26, vmlaq_f32(v10, v9, v26)), vmlaq_f32(v14, v26, vmlaq_f32(v12, v11, v26))), vcvtq_f32_s32(vshrq_n_s32(v25, 0x17uLL))), vceqq_s32(v22, v6)), v23));
      v3 += 4;
    }

    while (v3 < a2);
  }

  else
  {
    v15 = 0uLL;
  }

  return vaddv_f32(*&vpaddq_f32(v15, v15));
}

uint64_t sub_240BDB75C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v3 = *result;
    v4 = *(result + 8);
    while (v3 != v4)
    {
      v5 = *v3;
      v3 += 3;
      v6 = *(v5 + 2 * a2);
      *(v5 + 2 * a2) = *(v5 + 2 * a3);
      *(v5 + 2 * a3) = v6;
    }

    v7 = *(result + 48);
    v8 = *(result + 56);
    while (v7 != v8)
    {
      v9 = *v7;
      v7 += 3;
      v10 = *(v9 + a2);
      *(v9 + a2) = *(v9 + a3);
      *(v9 + a3) = v10;
    }

    v11 = *(result + 24);
    v12 = *(v11 + 2 * a2);
    *(v11 + 2 * a2) = *(v11 + 2 * a3);
    *(v11 + 2 * a3) = v12;
  }

  return result;
}

void sub_240BDB7C4(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (&v3[-*a1] >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_240B228BC();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0x555555555555555)
      {
        operator new();
      }

      sub_240B2291C();
    }

    v13 = (16 * (&v3[-*a1] >> 4));
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v13[2] = a2[2];
    v7 = 48 * v9 + 48;
    v15 = v13 - (v3 - v8);
    memcpy(v15, v8, v3 - v8);
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[2];
    *(v3 + 1) = a2[1];
    *(v3 + 2) = v6;
    *v3 = v5;
    v7 = (v3 + 48);
  }

  *(a1 + 8) = v7;
}

uint64_t *sub_240BDB8F8(uint64_t *result, unint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = v3 - *result;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 2);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return result;
    }

    v11 = v2 + 12 * a2;
  }

  else
  {
    v7 = result[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 2) < v6)
    {
      if (a2 <= 0x1555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v2) >> 2);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0xAAAAAAAAAAAAAAALL)
        {
          v10 = 0x1555555555555555;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    v11 = v3 + 12 * v6;
    v12 = 12 * a2 - 4 * (v4 >> 2);
    v13 = (v3 + 8);
    do
    {
      *v13 = 0;
      *(v13 - 1) = 2139095039;
      v13 += 3;
      v12 -= 12;
    }

    while (v12);
  }

  result[1] = v11;
  return result;
}

uint64_t sub_240BDBAA0(uint64_t *a1, int a2, int a3)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    LODWORD(v37) = 6;
    sub_240BDBE94(a1 + 15, &v37, &v37 + 4, 1uLL);
    v4 = 1;
  }

  else
  {
    if (a2 == 6 && a3 == 2)
    {
      result = 1;
      goto LABEL_55;
    }

    if (a2 == 14)
    {
      v37 = 0x500000006;
      sub_240BDBE94(a1 + 15, &v37, &v38, 2uLL);
    }

    else if (a2 == 15)
    {
      v7 = 0;
      v8 = a1[16];
      do
      {
        v9 = a1[17];
        if (v8 >= v9)
        {
          v10 = a1[15];
          v11 = v8 - v10;
          v12 = (v8 - v10) >> 2;
          v13 = v12 + 1;
          if ((v12 + 1) >> 62)
          {
            sub_240B228BC();
          }

          v14 = v9 - v10;
          if (v14 >> 1 > v13)
          {
            v13 = v14 >> 1;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v15 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_240B228D4(v15);
          }

          v16 = (v8 - v10) >> 2;
          v17 = (4 * v12);
          v18 = (4 * v12 - 4 * v16);
          *v17 = v7;
          v8 = (v17 + 1);
          memcpy(v18, v10, v11);
          v19 = a1[15];
          a1[15] = v18;
          a1[16] = v8;
          a1[17] = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v8 = v7;
          v8 += 4;
        }

        a1[16] = v8;
        ++v7;
      }

      while (v7 != 14);
      v20 = a1[15];
      v21 = *v20;
      *v20 = vrev64_s32(*(v20 + 20));
      *(v20 + 20) = vrev64_s32(v21);
    }

    else
    {
      LODWORD(v37) = a2;
      sub_240BDBE94(a1 + 15, &v37, &v37 + 4, 1uLL);
    }

    if (a3 == 2)
    {
      v23 = a1[15];
      v22 = a1[16];
      if (v23 != v22)
      {
        while (*v23 != 6)
        {
          v23 += 4;
          if (v23 == v22)
          {
            v23 = a1[16];
            break;
          }
        }
      }

      if (v22 != v23)
      {
        v24 = v22 - (v23 + 4);
        if (v22 != v23 + 4)
        {
          memmove(v23, v23 + 4, v22 - (v23 + 4));
        }

        v22 = &v23[v24];
        a1[16] = &v23[v24];
      }
    }

    else
    {
      v22 = a1[16];
    }

    v4 = &v22[-a1[15]] >> 2;
  }

  v25 = *a1;
  v26 = a1[1];
  v27 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *a1) >> 3);
  v28 = v4 - v27;
  if (v4 <= v27)
  {
    if (v4 >= v27)
    {
      result = 0;
    }

    else
    {
      v32 = v25 + 24 * v4;
      if (v26 != v32)
      {
        v33 = a1[1];
        do
        {
          v35 = *(v33 - 24);
          v33 -= 24;
          v34 = v35;
          if (v35)
          {
            *(v26 - 16) = v34;
            operator delete(v34);
          }

          v26 = v33;
        }

        while (v33 != v32);
      }

      result = 0;
      a1[1] = v32;
    }
  }

  else
  {
    v29 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v29 - v26) >> 3) < v28)
    {
      if (v4 <= 0xAAAAAAAAAAAAAAALL)
      {
        v30 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v25) >> 3);
        if (2 * v30 > v4)
        {
          v4 = 2 * v30;
        }

        if (v30 >= 0x555555555555555)
        {
          v31 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v31 = v4;
        }

        if (v31 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    bzero(a1[1], 24 * ((24 * v28 - 24) / 0x18) + 24);
    result = 0;
    a1[1] = v26 + 24 * ((24 * v28 - 24) / 0x18) + 24;
  }

LABEL_55:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_240BDBE94(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v9 = v7 >> 1;
    if (v7 >> 1 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 62))
    {
      sub_240B228D4(v10);
    }

    sub_240B228BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v17 = a3 - __src;
    if (v17)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v8[v17];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      do
      {
        v15 = *v13;
        v13 += 4;
        *v14 = v15;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v16 = v14;
  }

  v6[1] = v16;
  return result;
}

uint64_t sub_240BDBFCC(uint64_t *a1, char **a2, int a3)
{
  v5 = a1 + 12;
  if (a1 + 12 != a2)
  {
    sub_240B343B0(a1 + 12, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  if (!a3)
  {
    __src = 9;
    p_src = &__src;
    v7 = &__src;
LABEL_16:
    sub_240BAE1C8(v5, v7, p_src + 4, 1uLL);
    goto LABEL_17;
  }

  if (a3 != 2)
  {
    if (a3 != 1)
    {
      goto LABEL_17;
    }

    v15 = 15;
    p_src = &v15;
    v7 = &v15;
    goto LABEL_16;
  }

  v9 = a1[12];
  v8 = a1[13];
  if (v9 != v8)
  {
    while (*v9 != 15)
    {
      v9 += 4;
      if (v9 == v8)
      {
        v9 = a1[13];
        break;
      }
    }
  }

  if (v8 != v9)
  {
    v10 = v8 - (v9 + 4);
    if (v8 != v9 + 4)
    {
      memmove(v9, v9 + 4, v8 - (v9 + 4));
    }

    a1[13] = &v9[v10];
  }

LABEL_17:
  v11 = a1[12];
  v12 = a1[13];
  if (v11 == v12)
  {
    return 1;
  }

  sub_240B323EC(a1 + 6, (v12 - v11) >> 2);
  return 0;
}

uint64_t sub_240BDC0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_240BDC150(a1, a2);
  result = sub_240BDC1C8(a1, a2);
  v6 = *(a1 + 176);
  v7 = (v6 + 4 * v4);
  if (*v7 == -1 || (v7 = (v6 + 4 * result), *v7 == -1))
  {
    *v7 = a2;
  }

  return result;
}

uint64_t sub_240BDC150(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = 506832829;
  if (*a1 != v3)
  {
    v4 = 506832829;
    do
    {
      v5 = *v2;
      v2 += 3;
      v4 = *(v5 + 2 * a2 + 1) + 506832829 * (*(v5 + 2 * a2) + 506832829 * v4);
    }

    while (v2 != v3);
  }

  for (i = *(a1 + 48); i != *(a1 + 56); i += 3)
  {
    v7 = *i;
    v4 = *(v7 + a2) + 506832829 * v4;
  }

  return (((*(a1 + 184) - *(a1 + 176)) >> 2) - 1) & (v4 >> 16);
}

uint64_t sub_240BDC1C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = 0x1E35A7BD1E35A7BDLL;
  while (v2 != *(a1 + 56))
  {
    v4 = *v2;
    v2 += 3;
    v3 = (0x1E35A7BD1E35A7BDLL * v3) ^ *(v4 + a2);
  }

  for (i = *a1; i != *(a1 + 8); i += 3)
  {
    v6 = *i;
    v3 = (0x1E35A7BD1E35A7BDLL * ((0x1E35A7BD1E35A7BDLL * v3) ^ *(v6 + 2 * a2))) ^ *(v6 + 2 * a2 + 1);
  }

  return (((*(a1 + 184) - *(a1 + 176)) >> 2) - 1) & (v3 >> 16);
}

uint64_t sub_240BDC240(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  result = 1;
  while (v4 != v5)
  {
    v7 = *v4;
    v4 += 3;
    v8 = (v7 + 2 * a2);
    v9 = (v7 + 2 * a3);
    v11 = v8[1] == v9[1] && *v8 == *v9;
    result = v11 & result;
  }

  v13 = a1[6];
  v12 = a1[7];
  while (v13 != v12)
  {
    v14 = *v13;
    v13 += 3;
    result = (*(v14 + a2) == *(v14 + a3)) & result;
  }

  return result;
}

uint64_t sub_240BDC2B8(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 120);
  if (*(a1 + 128) != v5)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = a2 - *(a4 + 8 * *(v5 + 4 * v9));
      v11 = (2 * v10) ^ (v10 >> 31);
      if (v11 >= 0x10)
      {
        v13 = __clz(v11);
        v11 = (((-1 << (v13 ^ 0x1F)) + v11) & 3) - 8 * v13 + 4 * (((-1 << (v13 ^ 0x1F)) + v11) >> (30 - v13)) + 232;
        v12 = 28 - v13;
      }

      else
      {
        v12 = 0;
      }

      v14 = *a1 + v8;
      v16 = *(v14 + 8);
      v15 = *(v14 + 16);
      if (v16 >= v15)
      {
        v18 = (v16 - *v14) >> 1;
        if (v18 <= -2)
        {
          sub_240B228BC();
        }

        v19 = v15 - *v14;
        if (v19 <= v18 + 1)
        {
          v20 = v18 + 1;
        }

        else
        {
          v20 = v19;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v21 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          sub_240B29578(v21);
        }

        v22 = (2 * v18);
        *v22 = v11 | (v12 << 8);
        v17 = 2 * v18 + 2;
        v23 = *(v14 + 8) - *v14;
        v24 = v22 - v23;
        memcpy(v22 - v23, *v14, v23);
        v25 = *v14;
        *v14 = v24;
        *(v14 + 8) = v17;
        *(v14 + 16) = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v16 = v11 | (v12 << 8);
        v17 = (v16 + 1);
      }

      *(v14 + 8) = v17;
      ++v9;
      v5 = *(a1 + 120);
      v8 += 24;
    }

    while (v9 < (*(a1 + 128) - v5) >> 2);
  }

  v26 = *(a1 + 96);
  if (*(a1 + 104) != v26)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = *(a1 + 48);
      v30 = *(*a3 + 4 * *(v26 + 4 * v28));
      if (v30 <= -511)
      {
        v30 = -511;
      }

      if (v30 >= 511)
      {
        v30 = 511;
      }

      v31 = *(*(*(a1 + 144) + 24 * v28) + v30 + 511);
      v32 = v29 + v27;
      v34 = *(v29 + v27 + 8);
      v33 = *(v29 + v27 + 16);
      if (v34 >= v33)
      {
        v36 = *(v29 + v27);
        v37 = (v34 - v36);
        v38 = v34 - v36 + 1;
        if (v38 < 0)
        {
          sub_240B228BC();
        }

        v39 = v33 - v36;
        if (2 * v39 > v38)
        {
          v38 = 2 * v39;
        }

        if (v39 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v40 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v38;
        }

        if (v40)
        {
          operator new();
        }

        v41 = v34 - v36;
        *v37 = v31;
        v35 = v37 + 1;
        memcpy(0, v36, v41);
        *(v29 + v27) = 0;
        *(v32 + 8) = v37 + 1;
        *(v32 + 16) = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      else
      {
        *v34 = v31;
        v35 = v34 + 1;
      }

      *(v32 + 8) = v35;
      ++v28;
      v26 = *(a1 + 96);
      v27 += 24;
    }

    while (v28 < (*(a1 + 104) - v26) >> 2);
  }

  v43 = *(a1 + 32);
  v42 = *(a1 + 40);
  if (v43 >= v42)
  {
    v45 = *(a1 + 24);
    v46 = v43 - v45;
    v47 = (v43 - v45) >> 1;
    if (v47 <= -2)
    {
      sub_240B228BC();
    }

    v48 = v42 - v45;
    if (v48 <= v47 + 1)
    {
      v49 = v47 + 1;
    }

    else
    {
      v49 = v48;
    }

    if (v48 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v50 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v50 = v49;
    }

    if (v50)
    {
      sub_240B29578(v50);
    }

    v51 = (v43 - v45) >> 1;
    v52 = (2 * v47);
    v53 = (2 * v47 - 2 * v51);
    *v52 = 1;
    v44 = v52 + 1;
    memcpy(v53, v45, v46);
    v54 = *(a1 + 24);
    *(a1 + 24) = v53;
    *(a1 + 32) = v44;
    *(a1 + 40) = 0;
    if (v54)
    {
      operator delete(v54);
    }
  }

  else
  {
    *v43 = 1;
    v44 = v43 + 2;
  }

  *(a1 + 32) = v44;
  ++*(a1 + 168);
  v55 = *(a1 + 24);
  v56 = ((v44 - v55) >> 1) - 1;
  v57 = sub_240BDC150(a1, v56);
  v58 = sub_240BDC1C8(a1, v56);
  v59 = *(a1 + 176);
  v60 = (v59 + 4 * v57);
  v61 = *v60;
  if ((v61 == -1 || (result = sub_240BDC240(a1, v56, *v60), !result)) && ((v60 = (v59 + 4 * v58), v61 = *v60, v61 == -1) || (result = sub_240BDC240(a1, v56, *v60), !result)))
  {

    return sub_240BDC0E8(a1, ((v44 - v55) >> 1) - 1);
  }

  else
  {
    v63 = *(v55 + 2 * v61) + 1;
    *(v55 + 2 * v61) = v63;
    if (v63 == -1)
    {
      *v60 = -1;
    }

    v64 = *a1;
    v65 = *(a1 + 8);
    while (v64 != v65)
    {
      *(v64 + 8) -= 2;
      v64 += 24;
    }

    v66 = *(a1 + 48);
    v67 = *(a1 + 56);
    while (v66 != v67)
    {
      --*(v66 + 8);
      v66 += 24;
    }

    *(a1 + 32) = v44 - 1;
  }

  return result;
}

void sub_240BDC748(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, char **a5, char **a6, int **a7, int **a8, unint64_t a9)
{
  *&v98[12] = *MEMORY[0x277D85DE8];
  v87 = 0;
  *v86 = 0u;
  v85 = 0;
  *v84 = 0u;
  if (a3 != a4)
  {
    v11 = a3;
    do
    {
      if (*v11 != *a2)
      {
        LODWORD(__p[0]) = *v11 - 1;
        sub_240B22E1C(v84, __p);
      }

      v13 = v11[1];
      if (v13 != a2[1])
      {
        LODWORD(__p[0]) = v13 - 1;
        sub_240B22E1C(v84, __p);
      }

      v14 = v11[2];
      if (v14 != a2[2])
      {
        LODWORD(__p[0]) = v14 - 1;
        sub_240B22E1C(v86, __p);
      }

      v15 = v11[3];
      if (v15 != a2[3])
      {
        LODWORD(__p[0]) = v15 - 1;
        sub_240B22E1C(v86, __p);
      }

      v11 += 5;
    }

    while (v11 != a4);
  }

  std::__sort<std::__less<int,int> &,int *>();
  v16 = v84[0];
  v17 = sub_240BDD1E4(v84[0], v84[1]);
  sub_240B245C8(v84, (v17 - v16) >> 2);
  v18 = v86[0];
  v19 = v86[1];
  std::__sort<std::__less<int,int> &,int *>();
  v20 = sub_240BDD1E4(v18, v19);
  sub_240B245C8(v86, v20 - v18);
  v22 = (a1 + 72);
  v21 = *(a1 + 72);
  v23 = (*(a1 + 104) - *(a1 + 96)) >> 2;
  v24 = *(a1 + 80);
  v25 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v21) >> 3);
  v26 = v23 - v25;
  if (v23 <= v25)
  {
    if (v23 < v25)
    {
      v30 = v21 + 24 * v23;
      if (v24 != v30)
      {
        v31 = *(a1 + 80);
        do
        {
          v33 = *(v31 - 24);
          v31 -= 24;
          v32 = v33;
          if (v33)
          {
            *(v24 - 16) = v32;
            operator delete(v32);
          }

          v24 = v31;
        }

        while (v31 != v30);
      }

      *(a1 + 80) = v30;
    }
  }

  else
  {
    v27 = *(a1 + 88);
    if (0xAAAAAAAAAAAAAAABLL * ((v27 - v24) >> 3) < v26)
    {
      if (v23 <= 0xAAAAAAAAAAAAAAALL)
      {
        *v92 = a1 + 72;
        v28 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v21) >> 3);
        if (2 * v28 > v23)
        {
          v23 = 2 * v28;
        }

        if (v28 >= 0x555555555555555)
        {
          v29 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v29 = v23;
        }

        sub_240B32588(v29);
      }

      sub_240B228BC();
    }

    v34 = 24 * ((24 * v26 - 24) / 0x18) + 24;
    bzero(*(a1 + 80), v34);
    *(a1 + 80) = v24 + v34;
  }

  sub_240B323EC((a1 + 144), (*(a1 + 104) - *(a1 + 96)) >> 2);
  v35 = *(a1 + 96);
  if (*(a1 + 104) == v35)
  {
    v71 = 0;
    v38 = 0;
    v72 = 0;
    goto LABEL_129;
  }

  v36 = 0;
  v79 = 0;
  v80 = 0;
  v37 = 0;
  v38 = 0;
  v75 = 0u;
  v78 = 0u;
  do
  {
    v39 = *(v35 + 4 * v36);
    if (v39 > 5)
    {
      if ((v39 - 6) < 3)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v39 - 2) < 2)
      {
        __p[0] = 0;
        __p[1] = 0;
        *&v91 = 0;
        sub_240BDD360(__p, a9 - 1);
        if (a9 >= 2)
        {
          v43 = 256;
          v44 = a9 - 1;
          do
          {
            LODWORD(v88) = v43 / a9 - 1;
            sub_240B22E1C(__p, &v88);
            v43 += 256;
            --v44;
          }

          while (v44);
        }

        goto LABEL_61;
      }

      if (!v39)
      {
        if (v84[0] == v84[1])
        {
          sub_240BDD258(__p, a6, a9);
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          *&v91 = 0;
          sub_240B2BA38(__p, v84[0], v84[1], (v84[1] - v84[0]) >> 2);
        }

        goto LABEL_61;
      }

      if (v39 == 1)
      {
        if (v86[0] == v86[1])
        {
          sub_240BDD258(__p, a5, a9);
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          *&v91 = 0;
          sub_240B2BA38(__p, v86[0], v86[1], (v86[1] - v86[0]) >> 2);
        }

LABEL_61:
        v40 = *v22 + 24 * v36;
        v48 = *v40;
        if (*v40)
        {
          *(v40 + 8) = v48;
          operator delete(v48);
          *v40 = 0;
          *(v40 + 8) = 0;
          *(v40 + 16) = 0;
        }

        *v40 = *__p;
        v42 = v91;
        goto LABEL_64;
      }
    }

    if (v39 >= 0x10)
    {
      v45 = v39 & 3;
      if (v45 <= 1)
      {
        if (!v45)
        {
          goto LABEL_57;
        }

LABEL_38:
        if (v38 == v37)
        {
          sub_240BDD404(__p, a7, a9);
          if (v37)
          {
            operator delete(v38);
          }

          v38 = __p[0];
          v37 = __p[1];
        }

        v88 = 0uLL;
        v89 = 0;
        sub_240B2BA38(&v88, v38, v37, (v37 - v38) >> 2);
        goto LABEL_43;
      }

      if (v45 != 2)
      {
LABEL_95:
        v65 = *(&v78 + 1);
        v66 = v78;
        if (v78 == *(&v78 + 1))
        {
          sub_240BDD404(__p, a8, a9);
          if (v78)
          {
            operator delete(v78);
          }

          v66 = __p[0];
          v78 = *__p;
          v65 = __p[1];
        }

        v88 = 0uLL;
        v89 = 0;
        sub_240B2BA38(&v88, v66, v65, (v65 - v66) >> 2);
        goto LABEL_43;
      }

      v58 = *(&v75 + 1);
      v59 = v75;
      if (v75 == *(&v75 + 1))
      {
        v60 = *(&v78 + 1);
        v61 = v78;
        if (v78 == *(&v78 + 1))
        {
          sub_240BDD404(__p, a8, a9);
          if (v78)
          {
            operator delete(v78);
          }

          v61 = __p[0];
          v78 = *__p;
          v60 = __p[1];
        }

        __p[0] = 0;
        __p[1] = 0;
        *&v91 = 0;
        sub_240B2BA38(__p, v61, v60, (v60 - v61) >> 2);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v62 = *a8;
        v63 = a8[1];
        while (v62 != v63)
        {
          v64 = *v62;
          if (*v62 < 0)
          {
            v64 = -v64;
          }

          *v62++ = v64;
        }

        sub_240BDD404(&v88, a8, a9);
        if (v75)
        {
          operator delete(v75);
        }

        v59 = v88;
        v75 = v88;
        v58 = *(&v88 + 1);
      }

      v82 = 0uLL;
      v83 = 0;
      sub_240B2BA38(&v82, v59, v58, (v58 - v59) >> 2);
LABEL_121:
      v40 = *v22 + 24 * v36;
      v70 = *v40;
      if (*v40)
      {
        *(v40 + 8) = v70;
        operator delete(v70);
        *v40 = 0;
        *(v40 + 8) = 0;
        *(v40 + 16) = 0;
      }

      *v40 = v82;
      v42 = v83;
      goto LABEL_64;
    }

    if ((v39 - 4) < 2)
    {
LABEL_57:
      v46 = v79;
      if (v80 == v79)
      {
        if (v38 == v37)
        {
          sub_240BDD404(__p, a7, a9);
          if (v37)
          {
            operator delete(v38);
          }

          v38 = __p[0];
          v37 = __p[1];
        }

        __p[0] = 0;
        __p[1] = 0;
        *&v91 = 0;
        sub_240B2BA38(__p, v38, v37, (v37 - v38) >> 2);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v67 = *a7;
        v68 = a7[1];
        while (v67 != v68)
        {
          v69 = *v67;
          if (*v67 < 0)
          {
            v69 = -v69;
          }

          *v67++ = v69;
        }

        sub_240BDD404(&v88, a7, a9);
        if (v80)
        {
          operator delete(v80);
        }

        v46 = *(&v88 + 1);
        v47 = v88;
      }

      else
      {
        v47 = v80;
      }

      v82 = 0uLL;
      v83 = 0;
      v79 = v46;
      v80 = v47;
      sub_240B2BA38(&v82, v47, v46, (v46 - v47) >> 2);
      goto LABEL_121;
    }

    if (v39 != 15)
    {
      goto LABEL_95;
    }

    if (a9 > 0x1F)
    {
      if (a9 > 0x3F)
      {
        v96[3] = xmmword_240C856EC;
        v96[4] = unk_240C856FC;
        *v97 = xmmword_240C8570C;
        *&v97[12] = *(&xmmword_240C8570C + 12);
        v95 = xmmword_240C856AC;
        v96[0] = unk_240C856BC;
        v96[1] = xmmword_240C856CC;
        v96[2] = unk_240C856DC;
        *v92 = xmmword_240C8566C;
        *&v92[16] = unk_240C8567C;
        v93 = xmmword_240C8568C;
        v94 = unk_240C8569C;
        *__p = xmmword_240C8564C;
        v91 = unk_240C8565C;
        v88 = 0uLL;
        v89 = 0;
        sub_240B7D364(&v88, __p, v98, 0x37uLL);
      }

      else
      {
        LODWORD(v96[0]) = 255;
        v93 = xmmword_240C85618;
        v94 = unk_240C85628;
        v95 = xmmword_240C85638;
        *__p = xmmword_240C855D8;
        v91 = unk_240C855E8;
        *v92 = xmmword_240C855F8;
        *&v92[16] = unk_240C85608;
        v88 = 0uLL;
        v89 = 0;
        sub_240B7D364(&v88, __p, v96 + 4, 0x1DuLL);
      }
    }

    else
    {
      *__p = xmmword_240C8559C;
      v91 = unk_240C855AC;
      *v92 = xmmword_240C855BC;
      *&v92[12] = *(&xmmword_240C855BC + 12);
      v89 = 0;
      v88 = 0uLL;
      sub_240B7D364(&v88, __p, &v92[28], 0xFuLL);
    }

LABEL_43:
    v40 = *v22 + 24 * v36;
    v41 = *v40;
    if (*v40)
    {
      *(v40 + 8) = v41;
      operator delete(v41);
      *v40 = 0;
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
    }

    *v40 = v88;
    v42 = v89;
LABEL_64:
    *(v40 + 16) = v42;
    v49 = *(a1 + 144) + 24 * v36;
    v50 = *v49;
    v51 = *(v49 + 8);
    v52 = &v51[-*v49];
    if (v52 <= 0x3FE)
    {
      sub_240B26918(v49, 1023 - v52);
      v50 = *(*(a1 + 144) + 24 * v36);
      v51 = *(*(a1 + 144) + 24 * v36 + 8);
LABEL_67:
      if (v51 == v50)
      {
        goto LABEL_77;
      }

      goto LABEL_70;
    }

    if (v52 == 1023)
    {
      goto LABEL_67;
    }

    *(v49 + 8) = v50 + 1023;
LABEL_70:
    v53 = 0;
    v54 = 0;
    do
    {
      v55 = *(*v22 + 24 * v36);
      v56 = *(*v22 + 24 * v36 + 8) - v55;
      if (v54 < v56 >> 2)
      {
        v57 = v56 >> 2;
        while (v53 - 511 > *(v55 + 4 * v54))
        {
          if (v57 == ++v54)
          {
            v54 = v57;
            break;
          }
        }
      }

      v50[v53++] = v54;
      v50 = *(*(a1 + 144) + 24 * v36);
    }

    while (v53 < *(*(a1 + 144) + 24 * v36 + 8) - v50);
LABEL_77:
    ++v36;
    v35 = *(a1 + 96);
  }

  while (v36 < (*(a1 + 104) - v35) >> 2);
  if (v78)
  {
    operator delete(v78);
  }

  v71 = v80;
  v72 = v75;
LABEL_129:
  if (v72)
  {
    operator delete(v72);
  }

  if (v38)
  {
    operator delete(v38);
  }

  if (v71)
  {
    operator delete(v71);
  }

  if (v84[0])
  {
    operator delete(v84[0]);
  }

  if (v86[0])
  {
    operator delete(v86[0]);
  }

  v73 = *MEMORY[0x277D85DE8];
}

void sub_240BDD118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (a14)
  {
    operator delete(a14);
  }

  if (a11)
  {
    operator delete(a11);
  }

  if (v33)
  {
    operator delete(v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

int *sub_240BDD1E4(int *a1, int *a2)
{
  if (a1 != a2)
  {
    v2 = a1 + 1;
    while (v2 != a2)
    {
      v3 = *(v2 - 1);
      v4 = *v2++;
      if (v3 == v4)
      {
        v5 = v2 - 2;
        goto LABEL_7;
      }
    }

    v5 = a2;
LABEL_7:
    if (v5 != a2)
    {
      v6 = v5 + 2;
      if (v5 + 2 != a2)
      {
        v7 = *v5;
        do
        {
          v8 = v7;
          v7 = *v6;
          if (v8 != *v6)
          {
            v5[1] = v7;
            ++v5;
          }

          ++v6;
        }

        while (v6 != a2);
      }

      return v5 + 1;
    }
  }

  return a2;
}

void sub_240BDD258(void *a1, char **a2, unint64_t a3)
{
  v4 = *a2;
  v3 = a2[1];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (v4 != v3)
  {
    v8 = 0;
    v9 = v4;
    do
    {
      v10 = *v9;
      v9 += 4;
      v8 += v10;
    }

    while (v9 != v3);
    if ((v3 - v4) >= 5)
    {
      v11 = 0;
      v12 = 0;
      v13 = 1;
      v14 = 1;
      do
      {
        v15 = v13;
        v12 += *&v4[4 * v11];
        v16 = v14 * v8;
        if (v12 >= v14 * v8 / a3)
        {
          v18 = v11;
          sub_240B22E1C(a1, &v18);
          --v14;
          do
          {
            v17 = v16 / a3;
            ++v14;
            v16 += v8;
          }

          while (v12 > v17);
          v4 = *a2;
          v3 = a2[1];
        }

        v13 = v15 + 1;
        v11 = v15;
      }

      while (v15 + 1 < ((v3 - v4) >> 2));
    }
  }
}

void sub_240BDD344(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_240BDD360(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_240B228D4(a2);
    }

    sub_240B228BC();
  }

  return result;
}

void sub_240BDD404(void *a1, int **a2, unint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a2;
  if (*a2 == v5)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v9 = v6 + 1;
    if (v6 + 1 != v5)
    {
      v10 = *v6;
      v11 = v6 + 1;
      do
      {
        v13 = *v11++;
        v12 = v13;
        if (v13 < v10)
        {
          v10 = v12;
          v6 = v9;
        }

        v9 = v11;
      }

      while (v11 != v5);
    }

    v14 = *v6;
    if (v14 <= -512)
    {
      v14 = -512;
    }

    if (v14 >= 512)
    {
      v15 = 512;
    }

    else
    {
      v15 = v14;
    }

    sub_240B22DA4(__p, 0x401uLL);
    v16 = *a2;
    v17 = a2[1];
    if (*a2 != v17)
    {
      v18 = __p[0];
      do
      {
        v20 = *v16++;
        v19 = v20;
        if (v20 <= -512)
        {
          v19 = -512;
        }

        if (v19 >= 512)
        {
          v19 = 512;
        }

        ++v18[v19 - v15];
      }

      while (v16 != v17);
    }

    sub_240BDD258(a1, __p, a3);
    v21 = *a1;
    v22 = a1[1];
    while (v21 != v22)
    {
      *v21++ += v15;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_240BDD534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240BDD550(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, const void **a6, void *a7)
{
  if (*(a2 + 16) == 0.0)
  {
    return;
  }

  if (a3 >= (a4[1] - *a4) >> 2)
  {
    sub_240B245C8(a4, a3 + 1);
  }

  v12 = *a1;
  v11 = a1[1];
  v13 = (v11 - *a1) >> 6;
  if (v13 > (a5[1] - *a5) >> 2)
  {
    sub_240B245C8(a5, v13);
    v12 = *a1;
    v11 = a1[1];
  }

  v14 = *(a2 + 16) * 0.1;
  if (v14 > 0.99)
  {
    v14 = 0.99;
  }

  v15 = v14;
  v16 = logf(1.0 - v15);
  if (v11 == v12)
  {
    return;
  }

  v54 = a4;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 1.0 / v16;
  while (1)
  {
    v22 = *(v12 + v17 + 40);
    if (v22 >= 2)
    {
      v23 = *(v12 + v17 + 48);
      if (v23)
      {
        break;
      }
    }

LABEL_22:
    ++v20;
    v17 += 64;
    if (v20 >= (v11 - v12) >> 6)
    {
      goto LABEL_23;
    }
  }

  if (v20 < a1[9] || (v22 <= *a2 ? (v24 = v23 > *a2) : (v24 = 1), !v24))
  {
    v25 = v18;
    v26 = v18 >> 3;
    if (((v18 >> 3) + 1) >> 61)
    {
      sub_240B228BC();
    }

    if (v18 >> 3 != -1)
    {
      sub_240B299F4((v18 >> 3) + 1);
    }

    *(8 * v26) = v20;
    v18 = 8 * v26 + 8;
    memcpy(0, 0, v25);
    v12 = *a1;
    v11 = a1[1];
    v27 = *(*a1 + v17 + 48) * *(*a1 + v17 + 40);
    *(*v54 + 4 * a3) += v27;
    *(*a5 + 4 * v20) += v27;
    v19 += v27;
    goto LABEL_22;
  }

LABEL_23:
  if (!v18)
  {
    return;
  }

  sub_240BDD360(a6, (((a6[1] - *a6) >> 2) + (v15 * v19)));
  sub_240BDD360(a7, (((a7[1] - *a7) >> 2) + (v15 * v19)));
  v28 = (logf(1.0 - (COERCE_FLOAT(((a3 + 0x542891283015F7A4) >> 41) | 0x3F800000) + -1.0)) * v21);
  v29 = *a1;
  v30 = *(*a1 + (MEMORY[0] << 6) + 40);
  v31 = a3 - 0x40A7B892E31B1A47;
  v32 = 0;
  v33 = 0;
  v34 = v18 >> 3;
  if (v30 > v28)
  {
    goto LABEL_32;
  }

  while (2)
  {
    v28 -= v30;
    ++v33;
    v35 = *(8 * v32);
    if (v33 != *(v29 + (v35 << 6) + 48))
    {
LABEL_28:
      v30 = *(v29 + (v35 << 6) + 40);
      if (v28 < v30)
      {
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  if (++v32 < v34)
  {
    v33 = 0;
    v35 = *(8 * v32);
    goto LABEL_28;
  }

  v33 = 0;
LABEL_32:
  if (v32 < v34)
  {
    v36 = (a3 - 0x40A7B892E31B1A47) ^ ((a3 - 0x40A7B892E31B1A47) >> 5) ^ 0x4959C36592FDE847;
    v37 = v18 >> 3;
    v55 = a7;
    v56 = a1;
    do
    {
      v60 = v31;
      v31 = v36;
      v38 = *(v29 + (*(8 * v32) << 6) + 24) + *(v29 + (*(8 * v32) << 6) + 16) * v33;
      v39 = a6;
      v41 = a6[1];
      v40 = a6[2];
      if (v41 >= v40)
      {
        v57 = v36;
        v43 = *a6;
        v44 = v41 - *a6;
        v45 = v44 >> 2;
        v46 = (v44 >> 2) + 1;
        if (v46 >> 62)
        {
          sub_240B228BC();
        }

        v47 = v40 - v43;
        if (v47 >> 1 > v46)
        {
          v46 = v47 >> 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v48 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v46;
        }

        if (v48)
        {
          sub_240B228D4(v48);
        }

        v39 = a6;
        *(4 * v45) = *(v38 + 4 * v28);
        v42 = 4 * v45 + 4;
        memcpy(0, v43, v44);
        v49 = *a6;
        *a6 = 0;
        a6[1] = v42;
        a6[2] = 0;
        if (v49)
        {
          operator delete(v49);
        }

        a7 = v55;
        v31 = v57;
      }

      else
      {
        *v41 = *(v38 + 4 * v28);
        v42 = (v41 + 4);
      }

      v39[1] = v42;
      v50 = v28 - 1;
      if (!v28)
      {
        v50 = 1;
      }

      v61 = *(v38 + 4 * v28) - *(v38 + 4 * v50);
      sub_240B22E1C(a7, &v61);
      v28 += (v21 * logf(1.0 - (COERCE_FLOAT(((v31 + v60) >> 41) | 0x3F800000) + -1.0))) + 1;
      v29 = *v56;
LABEL_50:
      v51 = *(8 * v32);
      while (1)
      {
        v52 = *(v29 + (v51 << 6) + 40);
        if (v28 < v52)
        {
          break;
        }

        v28 -= v52;
        ++v33;
        v51 = *(8 * v32);
        if (v33 == *(v29 + (v51 << 6) + 48))
        {
          if (++v32 < v37)
          {
            v33 = 0;
            goto LABEL_50;
          }

          v33 = 0;
          break;
        }
      }

      v36 = (v31 >> 5) ^ ((v60 ^ (v60 << 23)) >> 18) ^ v31 ^ v60 ^ (v60 << 23);
    }

    while (v32 < v37);
  }

  operator delete(0);
}

void sub_240BDDAC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240BDDAF8(void *a1, uint64_t a2, uint64_t *a3)
{
  v119 = 0u;
  memset(v118, 0, sizeof(v118));
  v117 = 0;
  sub_240BDE350(v118, &v117);
  a3[1] = *a3;
  v6 = *(&v119 + 1);
  if (*(&v119 + 1))
  {
    v7 = 0;
    do
    {
      v116 = v7;
      v8 = *(*(*(&v118[0] + 1) + ((v119 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v119 & 0x3FF));
      *&v119 = v119 + 1;
      *(&v119 + 1) = v6 - 1;
      if (v119 >= 0x800)
      {
        operator delete(**(&v118[0] + 1));
        *(&v118[0] + 1) += 8;
        *&v119 = v119 - 1024;
      }

      v9 = *(*a1 + 40 * v8 + 4) + 1;
      v11 = *(a2 + 8);
      v10 = *(a2 + 16);
      if (v11 >= v10)
      {
        v13 = (v11 - *a2) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          sub_240B228BC();
        }

        v15 = v10 - *a2;
        if (v15 >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          sub_240B299F4(v16);
        }

        v17 = (8 * v13);
        *v17 = 2;
        v17[1] = v9;
        v12 = (8 * v13 + 8);
        v18 = *(a2 + 8) - *a2;
        v19 = v17 - v18;
        memcpy(v17 - v18, *a2, v18);
        v20 = *a2;
        *a2 = v19;
        *(a2 + 8) = v12;
        *(a2 + 16) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v11 = 2;
        v11[1] = v9;
        v12 = v11 + 2;
      }

      *(a2 + 8) = v12;
      v21 = *a1 + 40 * v8;
      v22 = *(v21 + 4);
      if (v22 == 0xFFFF)
      {
        v31 = *(v21 + 16);
        v32 = *(a2 + 16);
        if (v12 >= v32)
        {
          v37 = (v12 - *a2) >> 3;
          if ((v37 + 1) >> 61)
          {
            sub_240B228BC();
          }

          v38 = v32 - *a2;
          v39 = v38 >> 2;
          if (v38 >> 2 <= (v37 + 1))
          {
            v39 = v37 + 1;
          }

          if (v38 >= 0x7FFFFFFFFFFFFFF8)
          {
            v40 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v40 = v39;
          }

          if (v40)
          {
            sub_240B299F4(v40);
          }

          v57 = (8 * v37);
          *v57 = 4;
          v57[1] = v31;
          v33 = (8 * v37 + 8);
          v58 = *(a2 + 8) - *a2;
          v59 = v57 - v58;
          memcpy(v57 - v58, *a2, v58);
          v60 = *a2;
          *a2 = v59;
          *(a2 + 8) = v33;
          *(a2 + 16) = 0;
          if (v60)
          {
            operator delete(v60);
          }
        }

        else
        {
          *v12 = 4;
          v12[1] = v31;
          v33 = v12 + 2;
        }

        *(a2 + 8) = v33;
        v61 = *(*a1 + 40 * v8 + 24);
        v62 = (2 * v61) ^ (v61 >> 31);
        v63 = *(a2 + 16);
        if (v33 >= v63)
        {
          v65 = (v33 - *a2) >> 3;
          if ((v65 + 1) >> 61)
          {
            sub_240B228BC();
          }

          v66 = v63 - *a2;
          v67 = v66 >> 2;
          if (v66 >> 2 <= (v65 + 1))
          {
            v67 = v65 + 1;
          }

          if (v66 >= 0x7FFFFFFFFFFFFFF8)
          {
            v68 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v68 = v67;
          }

          if (v68)
          {
            sub_240B299F4(v68);
          }

          v69 = (8 * v65);
          *v69 = 6;
          v69[1] = v62;
          v64 = (8 * v65 + 8);
          v70 = *(a2 + 8) - *a2;
          v71 = (8 * v65 - v70);
          memcpy(v71, *a2, v70);
          v72 = *a2;
          *a2 = v71;
          *(a2 + 8) = v64;
          *(a2 + 16) = 0;
          if (v72)
          {
            operator delete(v72);
          }
        }

        else
        {
          *v33 = 6;
          v33[1] = v62;
          v64 = v33 + 2;
        }

        *(a2 + 8) = v64;
        v73 = *(*a1 + 40 * v8 + 32);
        v74 = __clz(__rbit32(v73));
        v75 = *(a2 + 16);
        if (v64 >= v75)
        {
          v77 = (v64 - *a2) >> 3;
          if ((v77 + 1) >> 61)
          {
            sub_240B228BC();
          }

          v78 = v75 - *a2;
          v79 = v78 >> 2;
          if (v78 >> 2 <= (v77 + 1))
          {
            v79 = v77 + 1;
          }

          if (v78 >= 0x7FFFFFFFFFFFFFF8)
          {
            v80 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v80 = v79;
          }

          if (v80)
          {
            sub_240B299F4(v80);
          }

          v81 = (8 * v77);
          *v81 = 8;
          v81[1] = v74;
          v76 = (8 * v77 + 8);
          v82 = *(a2 + 8) - *a2;
          v83 = 8 * v77 - v82;
          memcpy(v81 - v82, *a2, v82);
          v84 = *a2;
          *a2 = v83;
          *(a2 + 8) = v76;
          *(a2 + 16) = 0;
          if (v84)
          {
            operator delete(v84);
          }
        }

        else
        {
          *v64 = 8;
          v64[1] = v74;
          v76 = v64 + 2;
        }

        v85 = (v73 >> v74) - 1;
        *(a2 + 8) = v76;
        v86 = *(a2 + 16);
        if (v76 >= v86)
        {
          v88 = (v76 - *a2) >> 3;
          if ((v88 + 1) >> 61)
          {
            sub_240B228BC();
          }

          v89 = v86 - *a2;
          v90 = v89 >> 2;
          if (v89 >> 2 <= (v88 + 1))
          {
            v90 = v88 + 1;
          }

          if (v89 >= 0x7FFFFFFFFFFFFFF8)
          {
            v91 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v91 = v90;
          }

          if (v91)
          {
            sub_240B299F4(v91);
          }

          v92 = (8 * v88);
          *v92 = 10;
          v92[1] = v85;
          v87 = 8 * v88 + 8;
          v93 = *(a2 + 8) - *a2;
          v94 = v92 - v93;
          memcpy(v92 - v93, *a2, v93);
          v95 = *a2;
          *a2 = v94;
          *(a2 + 8) = v87;
          *(a2 + 16) = 0;
          if (v95)
          {
            operator delete(v95);
          }
        }

        else
        {
          *v76 = 10;
          v76[1] = v85;
          v87 = (v76 + 2);
        }

        *(a2 + 8) = v87;
        v96 = *a1 + 40 * v8;
        v97 = a3[1];
        v98 = a3[2];
        if (v97 >= v98)
        {
          v104 = *a3;
          v105 = v97 - *a3;
          v106 = 0xCCCCCCCCCCCCCCCDLL * (v105 >> 3) + 1;
          v102 = v116;
          if (v106 > 0x666666666666666)
          {
            sub_240B228BC();
          }

          v107 = 0xCCCCCCCCCCCCCCCDLL * ((v98 - v104) >> 3);
          if (2 * v107 > v106)
          {
            v106 = 2 * v107;
          }

          if (v107 >= 0x333333333333333)
          {
            v108 = 0x666666666666666;
          }

          else
          {
            v108 = v106;
          }

          if (v108)
          {
            sub_240B5C5D8(v108);
          }

          v109 = 8 * (v105 >> 3);
          v110 = *(v96 + 16);
          v111 = *(v96 + 24);
          v112 = *(v96 + 32);
          *v109 = 0;
          *(v109 + 4) = -1;
          *(v109 + 8) = v116;
          *(v109 + 16) = v110;
          *(v109 + 24) = v111;
          *(v109 + 32) = v112;
          v103 = v109 + 40;
          v113 = v109 - v105;
          memcpy((v109 - v105), v104, v105);
          v114 = *a3;
          *a3 = v113;
          a3[1] = v103;
          a3[2] = 0;
          if (v114)
          {
            operator delete(v114);
          }
        }

        else
        {
          v99 = *(v96 + 16);
          v100 = *(v96 + 24);
          v101 = *(v96 + 32);
          *v97 = 0;
          *(v97 + 4) = -1;
          v102 = v116;
          *(v97 + 8) = v116;
          *(v97 + 16) = v99;
          *(v97 + 24) = v100;
          *(v97 + 32) = v101;
          v103 = v97 + 40;
        }

        a3[1] = v103;
        v7 = v102 + 1;
      }

      else
      {
        v23 = *a3;
        v24 = a3[1];
        v25 = v24 - *a3;
        v26 = 0xCCCCCCCCCCCCCCCDLL * (v25 >> 3);
        v27 = v26 + DWORD2(v119) + 1;
        v28 = v26 + DWORD2(v119) + 2;
        v29 = a3[2];
        if (v24 >= v29)
        {
          v34 = v26 + 1;
          if (v26 + 1 > 0x666666666666666)
          {
            sub_240B228BC();
          }

          v35 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - v23) >> 3);
          if (2 * v35 > v34)
          {
            v34 = 2 * v35;
          }

          if (v35 >= 0x333333333333333)
          {
            v36 = 0x666666666666666;
          }

          else
          {
            v36 = v34;
          }

          if (v36)
          {
            sub_240B5C5D8(v36);
          }

          v41 = 8 * (v25 >> 3);
          *v41 = *v21;
          *(v41 + 4) = v22;
          *(v41 + 8) = v27;
          *(v41 + 12) = v28;
          *(v41 + 16) = 0;
          *(v41 + 24) = 0;
          *(v41 + 32) = 1;
          v30 = v41 + 40;
          v42 = v41 - v25;
          memcpy((v41 - v25), v23, v25);
          v43 = *a3;
          *a3 = v42;
          a3[1] = v30;
          a3[2] = 0;
          if (v43)
          {
            operator delete(v43);
          }
        }

        else
        {
          *v24 = *v21;
          *(v24 + 4) = v22;
          *(v24 + 8) = v27;
          *(v24 + 12) = v28;
          *(v24 + 16) = 0;
          *(v24 + 24) = 0;
          *(v24 + 32) = 1;
          v30 = v24 + 40;
        }

        a3[1] = v30;
        v117 = *(*a1 + 40 * v8 + 8);
        sub_240BDE350(v118, &v117);
        v117 = *(*a1 + 40 * v8 + 12);
        sub_240BDE350(v118, &v117);
        v44 = *(*a1 + 40 * v8);
        v45 = (2 * v44) ^ (v44 >> 31);
        v47 = *(a2 + 8);
        v46 = *(a2 + 16);
        if (v47 >= v46)
        {
          v49 = (v47 - *a2) >> 3;
          v50 = v49 + 1;
          v7 = v116;
          if ((v49 + 1) >> 61)
          {
            sub_240B228BC();
          }

          v51 = v46 - *a2;
          if (v51 >> 2 > v50)
          {
            v50 = v51 >> 2;
          }

          if (v51 >= 0x7FFFFFFFFFFFFFF8)
          {
            v52 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v52 = v50;
          }

          if (v52)
          {
            sub_240B299F4(v52);
          }

          v53 = (8 * v49);
          *v53 = 0;
          v53[1] = v45;
          v48 = 8 * v49 + 8;
          v54 = *(a2 + 8) - *a2;
          v55 = v53 - v54;
          memcpy(v53 - v54, *a2, v54);
          v56 = *a2;
          *a2 = v55;
          *(a2 + 8) = v48;
          *(a2 + 16) = 0;
          if (v56)
          {
            operator delete(v56);
          }
        }

        else
        {
          *v47 = 0;
          v47[1] = v45;
          v48 = (v47 + 2);
          v7 = v116;
        }

        *(a2 + 8) = v48;
      }

      v6 = *(&v119 + 1);
    }

    while (*(&v119 + 1));
  }

  return sub_240BDE844(v118);
}

void sub_240BDE2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_240BDE844(va);
  _Unwind_Resume(a1);
}

void *sub_240BDE350(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v9 = result[4];
  v8 = result[5];
  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (v9 < 0x400)
    {
      v11 = result[3];
      v12 = v11 - *result;
      if (v5 - v6 < v12)
      {
        operator new();
      }

      v13 = v12 >> 2;
      if (v11 == *result)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      sub_240B5D41C(v14);
    }

    result[4] = v9 - 1024;
    v15 = *v6;
    result[1] = v6 + 8;
    result = sub_240B5D318(result, &v15);
    v6 = v3[1];
    v8 = v3[5];
    v10 = v3[4] + v8;
  }

  *(*&v6[(v10 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v10 & 0x3FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void sub_240BDE814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240BDE844(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

float sub_240BDE910(float *a1, float *a2, int *a3)
{
  v3 = a2 - a1;
  v4 = 0.0;
  v5 = 0.0;
  if (v3 >= 3)
  {
    v5 = ((a1[2] + ((a1[1] + (*a1 + *a3)) + a3[1])) + a3[2]) * 0.40333;
  }

  v6 = 0.0;
  if (a2 != a1)
  {
    v7 = 0;
    v8 = 0.0;
    if (v3 <= 1)
    {
      v3 = 1;
    }

    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = a1[v7];
      v12 = a3[v7];
      v13 = v12;
      if (v7 == 1)
      {
        v14 = 5.0;
      }

      else
      {
        v14 = 2.0;
      }

      if (!v7)
      {
        v14 = 3.0;
      }

      if (v7 <= 2 && (v11 + v13) >= v5)
      {
        v14 = v14 + flt_240C85728[v7];
        if (v7 == 2 && v5 * 1.22 > (a1[2] + a3[2]))
        {
          v14 = v14 + -0.5;
        }
      }

      v8 = v8 + ((((v11 - v13) * (v11 - v13)) * v14) * v14);
      if (v7 == 1)
      {
        v15 = 5;
      }

      else
      {
        v15 = 1;
      }

      if (!v7)
      {
        v15 = 3;
      }

      v9 = v9 + (v11 * v15);
      v10 = v10 + (v12 * v15);
      ++v7;
    }

    while (v3 != v7);
    v4 = v8 * 4.0;
    v6 = v9 - v10;
  }

  return v4 + (v6 * v6);
}

uint64_t sub_240BDEA6C(int a1, int a2)
{
  if (a1 < 0)
  {
    return -sub_240BDEA6C(-a1);
  }

  else
  {
    return ((a1 + a2 / 2) / a2);
  }
}

uint64_t sub_240BDEAA4(uint64_t *a1, unsigned int a2, unsigned int a3, int *a4, _DWORD *a5, int a6, int a7, int *a8, uint64_t a9, uint64_t a10)
{
  v15 = a3;
  v17 = a1;
  v401 = *MEMORY[0x277D85DE8];
  if (sub_240B66F50(a1, a2, a3))
  {
    goto LABEL_2;
  }

  v338 = a6;
  v346 = v17;
  v347 = a5;
  v19 = a2;
  v20 = (*v17 + (a2 << 6));
  v21 = a2;
  v23 = v20[5];
  v22 = v20[6];
  v349 = v21;
  v24 = v15 - v21;
  v25 = v24 + 1;
  v388 = v24 + 1;
  v343 = a8;
  v345 = v23;
  v334 = v22;
  v348 = a4;
  if (!v24 && (a7 & 1) == 0)
  {
    if (*a4)
    {
      memset(v397, 0, 24);
      if (v22)
      {
        v26 = 0;
        v28 = v20[2];
        v27 = v20[3];
        v29 = 0x80000000;
        v30 = 0x7FFFFFFF;
        do
        {
          v31 = v27;
          for (i = v23; i; --i)
          {
            v34 = *v31++;
            v33 = v34;
            if (v34 < v30)
            {
              v30 = v33;
            }

            if (v33 > v29)
            {
              v29 = v33;
            }
          }

          ++v26;
          v27 = (v27 + v28);
        }

        while (v26 != v22);
        v35 = v29;
      }

      else
      {
        v30 = 0x7FFFFFFF;
        v35 = 0xFFFFFFFF80000000;
      }

      v36 = v35 - v30;
      v37 = v36 + 1;
      if (v36 + 1 <= 0x10000)
      {
        LODWORD(v352[0]) = 0;
        sub_240B2B4A8(v397, v36 + 1, v352);
        v56 = 0;
        if (v22)
        {
          v57 = 0;
          v59 = *(*v17 + (v19 << 6) + 16);
          v58 = *(*v17 + (v19 << 6) + 24);
          v60 = *&v397[0];
          do
          {
            if (v23)
            {
              v61 = v58;
              v62 = v23;
              do
              {
                v63 = *v61++;
                v64 = v63 - v30;
                if (!*(v60 + 4 * v64))
                {
                  v65 = a4;
                  v18 = 1;
                  *(v60 + 4 * v64) = 1;
                  if (v56 >= *v65)
                  {
                    goto LABEL_222;
                  }

                  ++v56;
                  a4 = v348;
                }

                --v62;
              }

              while (v62);
            }

            ++v57;
            v58 = (v58 + v59);
          }

          while (v57 != v22);
        }

        sub_240B3AC2C(&v381, v56, 1u);
        v18 = DWORD2(v383);
        if (!DWORD2(v383))
        {
          *v352 = v381;
          v66 = *(&v382 + 1);
          *&v352[2] = v382;
          v352[4] = v383;
          *v353 = v56;
          *&v353[8] = 1;
          *&v353[16] = -1;
          *v348 = v56;
          if (v37)
          {
            v67 = 0;
            v68 = *&v397[0];
            v69 = v30;
            do
            {
              if (*v68)
              {
                *(v66 + 4 * v67) = v69;
                *v68 = v67++;
              }

              ++v69;
              ++v68;
              --v37;
            }

            while (v37);
          }

          v70 = *v17;
          if (v22)
          {
            v71 = 0;
            v73 = *(v70 + (v19 << 6) + 16);
            v72 = *(v70 + (v19 << 6) + 24);
            v74 = *&v397[0];
            do
            {
              v75 = v72;
              for (j = v23; j; --j)
              {
                *v75 = *(v74 + 4 * (*v75 - v30));
                ++v75;
              }

              ++v71;
              v72 = (v72 + v73);
            }

            while (v71 != v22);
          }

          *a8 = 0;
          ++*(v17 + 72);
          sub_240B65AEC(v17, v70, v352);
          v77 = v352[3];
          v352[3] = 0;
          if (v77)
          {
            atomic_fetch_add(&qword_27E519020, -*(v77 - 3));
            free(*(v77 - 4));
          }

          v18 = 0;
        }
      }

      else
      {
        v392 = 0;
        *(&v391 + 1) = 0;
        *&v391 = &v391 + 8;
        if (v22)
        {
          v38 = 0;
          do
          {
            if (v23)
            {
              v39 = *(*v17 + (v19 << 6) + 24) + *(*v17 + (v19 << 6) + 16) * v38;
              operator new();
            }

            ++v38;
          }

          while (v38 < v334);
        }

        sub_240B3AC2C(&v381, 0, 1u);
        v18 = DWORD2(v383);
        if (!DWORD2(v383))
        {
          *v352 = v381;
          v40 = *(&v382 + 1);
          *&v352[2] = v382;
          v352[4] = v383;
          *v353 = 0;
          *&v353[8] = 1;
          *&v353[16] = -1;
          *v348 = 0;
          v41 = v391;
          if (v391 != (&v391 + 8))
          {
            v42 = 0;
            do
            {
              *(v40 + 4 * v42) = *(v41 + 7);
              v43 = *(v41 + 1);
              if (v43)
              {
                do
                {
                  v44 = v43;
                  v43 = *v43;
                }

                while (v43);
              }

              else
              {
                do
                {
                  v44 = *(v41 + 2);
                  v82 = *v44 == v41;
                  v41 = v44;
                }

                while (!v82);
              }

              ++v42;
              v41 = v44;
            }

            while (v44 != (&v391 + 8));
          }

          v45 = *v17;
          if (v334)
          {
            v46 = 0;
            v48 = *(v45 + (v19 << 6) + 16);
            v47 = *(v45 + (v19 << 6) + 24);
            do
            {
              if (v23)
              {
                v49 = 0;
                v50 = v47 + v48 * v46;
                do
                {
                  v51 = 0;
                  do
                  {
                    v52 = v51;
                    v53 = *(v40 + 4 * v51++);
                  }

                  while (*(v50 + 4 * v49) != v53 && v52 < *v348);
                  *(v50 + 4 * v49++) = v52;
                }

                while (v49 != v23);
              }

              ++v46;
            }

            while (v46 != v334);
          }

          *a8 = 0;
          ++*(v17 + 72);
          sub_240B65AEC(v17, v45, v352);
          v55 = v352[3];
          v352[3] = 0;
          if (v55)
          {
            atomic_fetch_add(&qword_27E519020, -*(v55 - 3));
            free(*(v55 - 4));
          }

          v18 = 0;
        }

        sub_240B8B3FC(*(&v391 + 1));
      }

LABEL_222:
      if (*&v397[0])
      {
        operator delete(*&v397[0]);
      }

      goto LABEL_382;
    }

LABEL_2:
    v18 = 1;
    goto LABEL_382;
  }

  v383 = 0u;
  v384 = 0u;
  v381 = 0u;
  v382 = 0u;
  v385 = 8;
  v386 = 0;
  v387 = 1;
  v340 = a7;
  if (a7)
  {
    sub_240B64760(v352, v23, v22, *(v17 + 64), v25);
    v18 = v356;
    if (v356)
    {
      sub_240B43B14(v352);
      goto LABEL_381;
    }

    v78 = v15;
    v397[0] = *v352;
    memset(v352, 0, sizeof(v352));
    *(&v397[1] + 8) = *&v352[3];
    *&v397[1] = v352[2];
    *(&v397[2] + 1) = *v353;
    *v353 = 0;
    v398 = *&v353[8];
    v399 = v354;
    v400 = v355;
    sub_240B649A8(&v381, v397);
    *&v391 = &v397[1] + 8;
    sub_240B37900(&v391);
    *&v391 = v397;
    sub_240B379C0(&v391);
    v79 = v388;
    a4 = v348;
    if (v388)
    {
      v80 = 0;
      do
      {
        v81 = (*v17 + (v80 << 6) + (v19 << 6));
        if (v81[1])
        {
          v82 = *v81 == 0;
        }

        else
        {
          v82 = 1;
        }

        if (!v82)
        {
          v83 = 0;
          v84 = v381 + (v80 << 6);
          v86 = *(v84 + 16);
          v85 = *(v84 + 24);
          do
          {
            memcpy(v85, (*(v81 + 3) + *(v81 + 2) * v83++), 4 * *v81);
            v85 += v86;
          }

          while (v83 < v81[1]);
          v79 = v388;
          v23 = v345;
          v22 = v334;
          a7 = v340;
        }

        ++v80;
      }

      while (v80 < v79);
    }

    sub_240B43B14(v352);
    v25 = v388;
    v15 = v78;
  }

  *v347 = 0;
  v380 = 0;
  v379 = 0;
  v378 = &v379;
  v376 = 0;
  v375 = 0;
  v377 = 0;
  sub_240B2B9C0(&v373, v25);
  sub_240B67CD8(v372, v388);
  v332 = v15;
  if (v388)
  {
    operator new();
  }

  v371[0] = 0;
  v371[1] = 0;
  v370 = v371;
  if (!a7)
  {
    goto LABEL_158;
  }

  v87 = *(v17 + 64);
  v352[1] = 0;
  v352[2] = 0;
  v352[0] = &v352[1];
  if (v87 <= 8)
  {
    LOBYTE(v87) = 8;
  }

  v88 = 3 << (v87 - 8);
  v89 = *(a10 + 8);
  v90 = *(a10 + 16);
  if (v90 != v89)
  {
    v91 = 0;
    while (1)
    {
      DWORD2(v397[0]) = 0;
      *&v397[0] = 0;
      v92 = sub_240BDEA6C(*(v89 + 4 * v91), v88);
      LODWORD(v397[0]) = v92;
      v93 = sub_240BDEA6C(*(*(a10 + 32) + 4 * v91), v88);
      DWORD1(v397[0]) = v93;
      v94 = sub_240BDEA6C(*(*(a10 + 56) + 4 * v91), v88);
      DWORD2(v397[0]) = v94;
      v95 = !v92 && v93 == 0;
      if (!v95 || v94 != 0)
      {
        break;
      }

LABEL_117:
      if (++v91 >= ((v90 - v89) >> 2))
      {
        if (v352[0] != &v352[1])
        {
          *&v391 = *(v352[0] + 4);
          DWORD2(v391) = *(v352[0] + 10);
          memset(v397, 0, 24);
          sub_240B7D364(v397, &v391, &v391 + 12, 3uLL);
          v389 = 0;
          LODWORD(v390) = 0;
          v392 = 0;
          v391 = 0uLL;
          sub_240B2860C(&v391, &v389, &v390 + 4, 3uLL);
        }

        goto LABEL_120;
      }
    }

    v97 = v352[1];
    if (!v352[1])
    {
      goto LABEL_116;
    }

    while (1)
    {
LABEL_98:
      v98 = 0;
      v99 = v97;
      v17 = v346;
      do
      {
        v100 = *(v397 + v98);
        v101 = *(v99 + v98 + 32);
        if (v100 < v101)
        {
          v97 = *v99;
          if (!*v99)
          {
            goto LABEL_116;
          }

          goto LABEL_98;
        }

        v102 = v101 < v100 || v98 == 8;
        v98 += 4;
      }

      while (!v102);
      v103 = 0;
      while (1)
      {
        v104 = *(v99 + v103 + 32);
        v105 = *(v397 + v103);
        if (v104 < v105)
        {
          break;
        }

        v106 = v105 < v104 || v103 == 8;
        v103 += 4;
        if (v106)
        {
          v99[6] = sqrt(sqrt(*(*(a10 + 80) + 8 * v91))) + v99[6];
          goto LABEL_117;
        }
      }

      v97 = *(v99 + 1);
      if (!v97)
      {
LABEL_116:
        operator new();
      }
    }
  }

LABEL_120:
  sub_240BE4EAC(0, 0, 0, 1);
  sub_240B8B3FC(v352[1]);
  a4 = v348;
  *v347 = (*(a10 + 112) - *(a10 + 104)) >> 2;
  v352[1] = 0;
  v352[2] = 0;
  v352[0] = &v352[1];
  v107 = &v352[1];
  v22 = v334;
  if (v334 < 3)
  {
    goto LABEL_147;
  }

  v108 = 1;
  v109 = 2;
  do
  {
    v110 = v108;
    v108 = v109;
    v111 = v388;
    if (v388)
    {
      v112 = *v17;
      v113 = v349;
      v114 = 0;
      do
      {
        *v114++ = *(v112 + (v113 << 6) + 24) + *(v112 + (v113 << 6) + 16) * v110;
        ++v113;
        --v111;
      }

      while (v111);
    }

    if (v345 >= 3)
    {
      v115 = 2;
      v116 = 1;
      do
      {
        v117 = v115;
        v118 = v373;
        if (v388)
        {
          for (k = 0; k < v388; ++k)
          {
            v118[k] = *(*(8 * k) + 4 * v116);
            v120 = v388;
          }

          v118 = v373;
        }

        else
        {
          v120 = 0;
        }

        v121 = 0;
        if (!v120)
        {
          goto LABEL_139;
        }

        while (1)
        {
          v122 = 0;
          do
          {
            v123 = *(*(*v17 + ((v19 + v122) << 6) + 24) + *(*v17 + ((v19 + v122) << 6) + 16) * (v110 + dword_240C85734[2 * v121 + 1]) + 4 * v116 + 4 * dword_240C85734[2 * v121]);
            v124 = v118[v122++];
          }

          while (v122 < v120 && v123 == v124);
          if (v121 > 2 || v123 != v124)
          {
            break;
          }

          while (1)
          {
            ++v121;
            if (v120)
            {
              break;
            }

LABEL_139:
            if (v121 >= 3)
            {
              goto LABEL_143;
            }
          }
        }

        if (v123 == v124)
        {
LABEL_143:
          *&v397[0] = &v373;
          v125 = sub_240BE0F30(v352, v118, v374);
          ++v125[7];
        }

        v115 = v117 + 1;
        v116 = v117;
      }

      while (v117 + 1 < v345);
    }

    v109 = v108 + 1;
  }

  while (v108 + 1 < v334);
  v107 = v352[0];
  v22 = v334;
LABEL_147:
  v23 = v345;
  if (v107 != &v352[1])
  {
    v126 = (((*(v17 + 48) * *(v17 + 56)) * 0.01) + 5.0);
    do
    {
      if (v107[7] > v126)
      {
        sub_240BE10B4(&v378, v107[4], v107[5]);
        sub_240BE1230(&v375, v107 + 4);
      }

      v127 = v107[1];
      if (v127)
      {
        do
        {
          v128 = v127;
          v127 = *v127;
        }

        while (v127);
      }

      else
      {
        do
        {
          v128 = v107[2];
          v82 = *v128 == v107;
          v107 = v128;
        }

        while (!v82);
      }

      v107 = v128;
    }

    while (v128 != &v352[1]);
  }

  sub_240BE38A0(v352[1]);
  a7 = v340;
LABEL_158:
  if (v22)
  {
    for (m = 0; m < v22; ++m)
    {
      v130 = v388;
      if (v388)
      {
        v131 = *v17;
        v132 = v349;
        v133 = 0;
        do
        {
          *v133++ = *(v131 + (v132 << 6) + 24) + *(v131 + (v132 << 6) + 16) * m;
          ++v132;
          --v130;
        }

        while (v130);
      }

      if (v23)
      {
        v134 = 0;
        while (!a7 || v380 < *a4)
        {
          if (v388)
          {
            v135 = 0;
            v136 = v373;
            do
            {
              v136[v135] = *(*(8 * v135) + 4 * v134);
              ++v135;
            }

            while (v135 < v388);
          }

          if (sub_240BE10B4(&v378, v373, v374))
          {
            sub_240BE1230(&v375, &v373);
          }

          if (v380 > *a4)
          {
            v18 = 1;
            goto LABEL_376;
          }

          if (++v134 == v23)
          {
            break;
          }
        }
      }
    }
  }

  v137 = (*v347 + v380);
  *a4 = v137;
  v138 = v388;
  sub_240B3AC2C(v352, v137, v388);
  v18 = *v353;
  if (!*v353)
  {
    v391 = *v352;
    v392 = v352[2];
    v393 = *&v352[3];
    v394 = v137;
    v395 = v138;
    v396 = -1;
    v368 = v352[2] >> 2;
    v369 = v352[3];
    v341 = *(*v17 + (v19 << 6) + 16);
    v139 = *(v17 + 64);
    if (v139 >= 24)
    {
      v139 = 24;
    }

    v367 = v139;
    if (v340 && *v347)
    {
      v140 = 0;
      v141 = 4 * (v352[2] >> 2);
      v142 = v352[3];
      do
      {
        v143 = 0;
        v144 = v142;
        do
        {
          *v144 = *(*(a10 + 104 + v143) + 4 * v140);
          v143 += 24;
          v144 = (v144 + v141);
        }

        while (v143 != 72);
        ++v140;
        ++v142;
      }

      while (v140 < *v347);
    }

    if (v338 && v388 >= 3)
    {
      v145 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v376 - v375) >> 3));
      if (v376 == v375)
      {
        v146 = 0;
      }

      else
      {
        v146 = v145;
      }

      sub_240BE1398(v375, v376, v146, 1);
    }

    v147 = v375;
    v148 = v376;
    if (v375 != v376)
    {
      v149 = 0;
      v150 = 0;
      do
      {
        memset(v352, 0, 24);
        sub_240B2BA38(v352, *v147, v147[1], (v147[1] - *v147) >> 2);
        if (v388)
        {
          v151 = 0;
          v152 = v352[0];
          v153 = &v369[v149];
          v154 = 4 * v368;
          do
          {
            *&v153[4 * *v347] = v152[v151++];
            v153 += v154;
          }

          while (v151 < v388);
        }

        *&v397[0] = v352;
        sub_240BE0F30(&v370, v352[0], v352[1])[7] = v150;
        if (v352[0])
        {
          v352[1] = v352[0];
          operator delete(v352[0]);
        }

        ++v150;
        v147 += 3;
        v149 += 4;
      }

      while (v147 != v148);
    }

    v390 = 0uLL;
    v389 = 0;
    if (v388)
    {
      v155 = 0;
      for (n = 0; n < v388; ++n)
      {
        if (v155 >= *(&v390 + 1))
        {
          v157 = 0xCBEEA4E1A08AD8F3 * ((v155 - v389) >> 3) + 1;
          if (v157 > 0x8AD8F2FBA93868)
          {
            sub_240B228BC();
          }

          if (0x97DD49C34115B1E6 * ((*(&v390 + 1) - v389) >> 3) > v157)
          {
            v157 = 0x97DD49C34115B1E6 * ((*(&v390 + 1) - v389) >> 3);
          }

          if (0xCBEEA4E1A08AD8F3 * ((*(&v390 + 1) - v389) >> 3) >= 0x456C797DD49C34)
          {
            v158 = 0x8AD8F2FBA93868;
          }

          else
          {
            v158 = v157;
          }

          *&v397[2] = &v389;
          if (v158)
          {
            if (v158 <= 0x8AD8F2FBA93868)
            {
              operator new();
            }

            sub_240B2291C();
          }

          *&v397[0] = 0;
          *(&v397[0] + 1) = 8 * ((v155 - v389) >> 3);
          v397[1] = *(&v397[0] + 1);
          v352[0] = &unk_2852A1238;
          *&v352[1] = *(a9 + 8);
          *&v352[3] = *(a9 + 24);
          *v353 = *(a9 + 40);
          sub_240B62C98(*(&v397[0] + 1), v352, v345);
          *&v397[1] += 472;
          v159 = v390;
          v160 = v389;
          v161 = (v389 + *(&v397[0] + 1) - v390);
          if (v389 != v390)
          {
            v162 = v389 + *(&v397[0] + 1) - v390;
            v163 = v389;
            do
            {
              v164 = 0;
              v165 = *v163;
              v166 = *(v163 + 1);
              *(v162 + 4) = v163[4];
              *v162 = v165;
              *(v162 + 1) = v166;
              do
              {
                v167 = &v162[v164 * 8];
                v168 = &v163[v164];
                *(v167 + 5) = 0;
                *(v167 + 6) = 0;
                *(v167 + 7) = 0;
                *(v167 + 40) = *&v163[v164 + 5];
                *(v167 + 7) = v163[v164 + 7];
                v168[5] = 0;
                v168[6] = 0;
                v168[7] = 0;
                v164 += 3;
              }

              while (v164 != 12);
              *(v162 + 17) = 0;
              *(v162 + 18) = 0;
              *(v162 + 19) = 0;
              *(v162 + 136) = *(v163 + 17);
              *(v162 + 19) = v163[19];
              v163[17] = 0;
              v163[18] = 0;
              v163[19] = 0;
              *(v162 + 20) = &unk_2852A1238;
              v169 = *(v163 + 21);
              v170 = *(v163 + 23);
              *(v162 + 200) = *(v163 + 25);
              *(v162 + 184) = v170;
              *(v162 + 168) = v169;
              v171 = *(v163 + 41);
              v173 = *(v163 + 35);
              v172 = *(v163 + 37);
              *(v162 + 312) = *(v163 + 39);
              *(v162 + 328) = v171;
              *(v162 + 280) = v173;
              *(v162 + 296) = v172;
              v174 = *(v163 + 49);
              v176 = *(v163 + 43);
              v175 = *(v163 + 45);
              *(v162 + 376) = *(v163 + 47);
              *(v162 + 392) = v174;
              *(v162 + 344) = v176;
              *(v162 + 360) = v175;
              v177 = *(v163 + 57);
              v179 = *(v163 + 51);
              v178 = *(v163 + 53);
              *(v162 + 440) = *(v163 + 55);
              *(v162 + 456) = v177;
              *(v162 + 408) = v179;
              *(v162 + 424) = v178;
              v180 = *(v163 + 27);
              v181 = *(v163 + 29);
              v182 = *(v163 + 31);
              *(v162 + 264) = *(v163 + 33);
              *(v162 + 248) = v182;
              *(v162 + 232) = v181;
              *(v162 + 216) = v180;
              v163 += 59;
              v162 += 472;
            }

            while (v163 != v159);
            do
            {
              sub_240BE38FC(v160);
              v160 += 59;
            }

            while (v160 != v159);
          }

          v183 = v389;
          v184 = *(&v390 + 1);
          v389 = v161;
          v350 = *&v397[1];
          v390 = v397[1];
          *&v397[1] = v183;
          *(&v397[1] + 1) = v184;
          *&v397[0] = v183;
          *(&v397[0] + 1) = v183;
          sub_240BE3950(v397);
          v155 = v350;
        }

        else
        {
          v352[0] = &unk_2852A1238;
          *&v352[1] = *(a9 + 8);
          *&v352[3] = *(a9 + 24);
          *v353 = *(a9 + 40);
          sub_240B62C98(v155, v352, v345);
          v155 += 472;
        }

        *&v390 = v155;
        v185 = v388;
      }
    }

    else
    {
      v185 = 0;
    }

    sub_240BE3360(v366, v185);
    *&v399 = 0;
    v398 = 0u;
    memset(v397, 0, sizeof(v397));
    v186 = v345;
    if (v340)
    {
      v187 = 0;
      v188 = v388;
      do
      {
        v189 = v397 + 24 * v187;
        v190 = *v189;
        v191 = *(v189 + 1);
        v192 = 0xAAAAAAAAAAAAAAABLL * ((v191 - *v189) >> 3);
        v193 = v188 - v192;
        if (v188 <= v192)
        {
          if (v188 < v192)
          {
            v197 = v190 + 24 * v188;
            if (v191 != v197)
            {
              v198 = *(v189 + 1);
              do
              {
                v200 = *(v198 - 24);
                v198 -= 24;
                v199 = v200;
                if (v200)
                {
                  *(v191 - 16) = v199;
                  operator delete(v199);
                }

                v191 = v198;
              }

              while (v198 != v197);
            }

            *(v189 + 1) = v197;
            v186 = v345;
          }
        }

        else
        {
          v194 = *(v189 + 2);
          if (0xAAAAAAAAAAAAAAABLL * ((v194 - v191) >> 3) < v193)
          {
            v195 = 0xAAAAAAAAAAAAAAABLL * ((v194 - v190) >> 3);
            if (2 * v195 > v188)
            {
              v188 = 2 * v195;
            }

            if (v195 >= 0x555555555555555)
            {
              v196 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v196 = v188;
            }

            if (v196 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_240B2291C();
          }

          bzero(*(v189 + 1), 24 * ((24 * v193 - 24) / 0x18) + 24);
          *(v189 + 1) = v191 + 24 * ((24 * v193 - 24) / 0x18) + 24;
        }

        if (v388)
        {
          v201 = 0;
          for (ii = 0; ii < v388; ++ii)
          {
            sub_240B245C8((*v189 + v201), v186 + 4);
            v188 = v388;
            v201 += 24;
          }
        }

        else
        {
          v188 = 0;
        }

        ++v187;
      }

      while (v187 != 3);
    }

    v203 = v348;
    v204 = a10;
    if (!v334)
    {
      goto LABEL_366;
    }

    v205 = 0;
    v339 = 0;
    v342 = v341 >> 2;
    v333 = v186 + 2;
    v206 = v19 << 6;
    do
    {
      if (v388)
      {
        v207 = 0;
        v208 = 8 * v388;
        do
        {
          *v207 = *(*v346 + v206 + 8 * v207 + 24) + *(*v346 + v206 + 8 * v207 + 16) * v205;
          if (v340)
          {
            *(v366[0] + v207) = *(v381 + 8 * v207 + 24) + *(v381 + 8 * v207 + 16) * v205;
          }

          v207 += 8;
        }

        while (v208 != v207);
      }

      v344 = v205;
      if (v186)
      {
        v209 = 0;
        v210 = 0;
        if (v205)
        {
          v211 = 0;
        }

        else
        {
          v211 = v333;
        }

        v335 = v211;
        v336 = *(*v346 + (v19 << 6) + 24) + *(*v346 + (v19 << 6) + 16) * v205;
        v212 = (v205 << 63 >> 63) & v333;
        do
        {
          if (v340)
          {
            v365 = 0;
            v364 = 0;
            v363 = INFINITY;
            LODWORD(v352[0]) = 0;
            sub_240B22768(v362, v388);
            LODWORD(v352[0]) = 0;
            sub_240B22768(v361, v388);
            sub_240B2B9C0(v360, v388);
            __p = v209;
            sub_240B2B9C0(v359, v388);
            v214 = 0;
            v215 = 1;
            do
            {
              v351 = v215;
              if (v388)
              {
                v216 = 0;
                LOBYTE(v213) = *a10;
                v217 = dbl_240C85758[v214] * v213;
                v218 = *&v397[0];
                v219 = v372[0];
                v220 = v373;
                do
                {
                  v221 = *v218;
                  v218 += 3;
                  v222 = *(*(8 * v216) + 4 * v210) + v217 * *(v221 + 4 * v210 + 8);
                  v219[v216] = v222;
                  v223 = llroundf(v222);
                  v224 = -1 << *(v346 + 64);
                  if (v223 >= ~v224)
                  {
                    v225 = ~v224;
                  }

                  else
                  {
                    v225 = v223;
                  }

                  if (v223 >= 0)
                  {
                    v226 = v225;
                  }

                  else
                  {
                    v226 = 0;
                  }

                  v220[v216++] = v226;
                }

                while (v216 < v388);
                if (v388)
                {
                  v227 = 0;
                  v228 = 0;
                  do
                  {
                    sub_240BB7044(v352, v345, *(v366[0] + v228) + 4 * v210, v342, v210, v344, *v343, &v389[v227]);
                    *(v359[0] + v228++) = v352[1];
                    v227 += 59;
                  }

                  while (v228 < v388);
                }
              }

              v352[0] = &v388;
              v352[1] = v360;
              v203 = v348;
              v352[2] = &v369;
              v352[3] = v348;
              v352[4] = &v368;
              *v353 = &v367;
              *&v353[8] = v347;
              *&v353[16] = v359;
              *&v354 = v372;
              *(&v354 + 1) = &v363;
              v355 = &v365;
              v356 = &v364;
              v357 = v362;
              v358 = v361;
              v229 = *v348;
              if (*v348 >= -142)
              {
                v230 = -143;
                do
                {
                  sub_240BE33F0(v352, v230++);
                  v229 = *v348;
                }

                while (v230 < *v348);
              }

              v231 = sub_240BE3758(v373, v374, v229, v367, 0);
              sub_240BE33F0(v352, v231);
              v232 = sub_240BE3758(v373, v374, *v348, v367, 1);
              sub_240BE33F0(v352, v232);
              v215 = 0;
              v214 = 1;
            }

            while ((v351 & 1) != 0);
            v233 = v365;
            v339 = (v364 | v339) != 0;
            v204 = a10;
            if ((*a10 & 1) == 0)
            {
              v234 = v365;
              v235 = 0;
              v236 = a10 + 16;
              do
              {
                v238 = *v236;
                v237 = *(v236 + 8);
                if (*v236 >= v237)
                {
                  v240 = *(v236 - 8);
                  v241 = v238 - v240;
                  v242 = (v238 - v240) >> 2;
                  v243 = v242 + 1;
                  if ((v242 + 1) >> 62)
                  {
                    sub_240B228BC();
                  }

                  v244 = v237 - v240;
                  if (v244 >> 1 > v243)
                  {
                    v243 = v244 >> 1;
                  }

                  if (v244 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v245 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v245 = v243;
                  }

                  if (v245)
                  {
                    sub_240B228D4(v245);
                  }

                  v246 = (v238 - v240) >> 2;
                  v247 = (4 * v242);
                  v248 = (4 * v242 - 4 * v246);
                  *v247 = *(v361[0] + v235);
                  v239 = v247 + 1;
                  memcpy(v248, v240, v241);
                  v249 = *(v236 - 8);
                  *(v236 - 8) = v248;
                  *v236 = v239;
                  *(v236 + 8) = 0;
                  if (v249)
                  {
                    operator delete(v249);
                  }
                }

                else
                {
                  *v238 = *(v361[0] + v235);
                  v239 = v238 + 4;
                }

                *v236 = v239;
                v236 += 24;
                v235 += 4;
              }

              while (v235 != 12);
              v250 = v363;
              v252 = *(a10 + 88);
              v251 = *(a10 + 96);
              if (v252 >= v251)
              {
                v256 = *(a10 + 80);
                v257 = v252 - v256;
                v258 = (v252 - v256) >> 3;
                v259 = v258 + 1;
                if ((v258 + 1) >> 61)
                {
                  sub_240B228BC();
                }

                v260 = v251 - v256;
                if (v260 >> 2 > v259)
                {
                  v259 = v260 >> 2;
                }

                if (v260 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v261 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v261 = v259;
                }

                if (v261)
                {
                  if (!(v261 >> 61))
                  {
                    operator new();
                  }

                  sub_240B2291C();
                }

                v262 = v258;
                v263 = (8 * v258);
                v264 = &v263[-v262];
                *v263 = v250;
                v253 = v263 + 1;
                memcpy(v264, v256, v257);
                *(a10 + 80) = v264;
                *(a10 + 88) = v253;
                *(a10 + 96) = 0;
                if (v256)
                {
                  operator delete(v256);
                }
              }

              else
              {
                *v252 = v250;
                v253 = v252 + 1;
              }

              v203 = v348;
              *(a10 + 88) = v253;
              v204 = a10;
              v233 = v234;
            }

            v265 = 0.0;
            if (v388)
            {
              v266 = 0;
              v267 = v389;
              v268 = v362[0];
              v269 = v335 + v210;
              v270 = v366[0];
              v271 = v389 + 5;
              v272 = v389;
              v209 = __p;
              do
              {
                v273 = 0;
                v274 = 8 * v268[v266];
                *(v267[59 * v266 + 17] + 4 * v269) = LODWORD(v267[59 * v266 + 4]) - v274;
                v275 = v271;
                do
                {
                  v276 = v272[v273] - v274;
                  if (v276 < 0)
                  {
                    v276 = v274 - v272[v273];
                  }

                  v277 = (v276 + 3) >> 3;
                  v278 = *v275;
                  v275 += 3;
                  *(v278 + 4 * v269) = v277;
                  *(v278 + 4 * v212 + 4 * v210 + 4) += v277;
                  ++v273;
                }

                while (v273 != 4);
                *(v270[v266] + 4 * v210) = v268[v266];
                ++v266;
                v279 = v388;
                v271 += 59;
                v272 += 59;
              }

              while (v266 < v388);
              if (v388)
              {
                v265 = 0.0;
                v280 = v372[0];
                v281 = v388;
                do
                {
                  v282 = *v280++;
                  v283 = v282;
                  v284 = *v268++;
                  v265 = v265 + ((v283 - v284) * (v283 - v284));
                  --v281;
                }

                while (v281);
                v285 = 0;
              }

              else
              {
                v279 = 0;
                v285 = 1;
              }
            }

            else
            {
              v279 = 0;
              v285 = 1;
              v209 = __p;
            }

            v286 = sqrtf(v265);
            v287 = v367;
            if (v367 <= 8)
            {
              v287 = 8;
            }

            v288 = 38 << (v287 - 8);
            if (v286 <= v288)
            {
              v289 = 1.0;
            }

            else
            {
              v289 = v288 / v286;
            }

            if ((v285 & 1) == 0)
            {
              v290 = 0;
              v291 = v372[0];
              v292 = v362[0];
              v293 = *&v397[0];
              v294 = *(&v397[1] + 1);
              v295 = v398;
              do
              {
                v296 = v291[v290] - v292[v290];
                v297 = 0.0;
                v298 = &unk_240C8576C;
                v299 = 11;
                do
                {
                  v300 = *(*(*(v397 + 3 * *(v298 - 1)) + 24 * v290) + 4 * v210 + 4 * *v298);
                  if (((LODWORD(v300) ^ COERCE_UNSIGNED_INT(v291[v290] - v292[v290])) & 0x80000000) != 0)
                  {
                    v297 = v297 + v300;
                  }

                  v298 += 2;
                  --v299;
                }

                while (v299);
                v301 = fabsf(v296) / (fabsf(v297) + 0.001);
                if (v301 > 1.0)
                {
                  v301 = 1.0;
                }

                v302 = &unk_240C8576C;
                v303 = 11;
                do
                {
                  v304 = *v302;
                  v305 = *(*(v397 + 3 * *(v302 - 1)) + 24 * v290) + 4 * v210;
                  v306 = *(v305 + 4 * v304);
                  if ((LODWORD(v306) ^ LODWORD(v296)) < 0)
                  {
                    v296 = v296 + (v301 * v306);
                    *(v305 + 4 * v304) = (1.0 - v301) * v306;
                  }

                  v302 += 2;
                  --v303;
                }

                while (v303);
                v307 = 0;
                v308 = (v289 * v296) * 0.0714285714;
                v309 = *(v293 + 24 * v290) + 4 * v210;
                v310 = *(v309 + 16) + v308;
                *(v309 + 12) = *(v309 + 12) + (v308 * 2.0);
                *(v309 + 16) = v310;
                v311 = *(v294 + 24 * v290);
                *(v311 + 4 * v210) = *(v311 + 4 * v210) + v308;
                v312 = &v209[*(v295 + 24 * v290)];
                v313 = &v209[v311];
                do
                {
                  *&v313[v307] = *&v313[v307] + v308;
                  *&v312[v307] = *&v312[v307] + v308;
                  v307 += 4;
                }

                while (v307 != 20);
                ++v290;
              }

              while (v290 != v279);
            }

            if (v359[0])
            {
              v359[1] = v359[0];
              operator delete(v359[0]);
            }

            if (v360[0])
            {
              v360[1] = v360[0];
              operator delete(v360[0]);
            }

            if (v361[0])
            {
              v361[1] = v361[0];
              operator delete(v361[0]);
            }

            if (v362[0])
            {
              v362[1] = v362[0];
              operator delete(v362[0]);
            }
          }

          else
          {
            v254 = v373;
            if (v388)
            {
              for (jj = 0; jj < v388; ++jj)
              {
                v254[jj] = *(*(8 * jj) + 4 * v210);
              }

              v254 = v373;
            }

            v362[0] = &v373;
            v233 = *(sub_240BE0F30(&v370, v254, v374) + 14);
          }

          if (*v204 == 1)
          {
            *(v336 + 4 * v210) = v233;
          }

          ++v210;
          v209 += 4;
        }

        while (v210 != v345);
      }

      v186 = v345;
      if (v340 && v388)
      {
        v314 = 0;
        v315 = 24 * v388;
        do
        {
          v316 = (*&v397[0] + v314);
          v317 = (*(&v397[1] + 1) + v314);
          v318 = *(*&v397[0] + v314);
          *v316 = *(*(&v397[1] + 1) + v314);
          *v317 = v318;
          v319 = v316[1];
          v316[1] = v317[1];
          v317[1] = v319;
          v320 = v316[2];
          v316[2] = v317[2];
          v317[2] = v320;
          v321 = (*(&v397[1] + 1) + v314);
          v322 = (v398 + v314);
          v323 = *(*(&v397[1] + 1) + v314);
          *v321 = *(v398 + v314);
          *v322 = v323;
          v324 = v321[1];
          v321[1] = v322[1];
          v322[1] = v324;
          v325 = v321[2];
          v321[2] = v322[2];
          v322[2] = v325;
          v326 = *(v398 + v314);
          v327 = *(v398 + v314 + 8) - v326;
          if (v327 >= 1)
          {
            bzero(v326, v327);
          }

          v314 += 24;
        }

        while (v315 != v314);
      }

      v204 = a10;
      v205 = v344 + 1;
      v206 = v19 << 6;
    }

    while (v344 + 1 != v334);
    if (!v339)
    {
LABEL_366:
      *v343 = 0;
    }

    if (*v204 == 1)
    {
      ++*(v346 + 72);
      sub_240B65698(v346, *v346 + 64 + (v19 << 6), *v346 + 64 + (v332 << 6));
      sub_240B65AEC(v346, *v346, &v391);
    }

    *v203 -= *v347;
    for (kk = 48; kk != -24; kk -= 24)
    {
      v352[0] = v397 + kk;
      sub_240B23988(v352);
    }

    if (v366[0])
    {
      v366[1] = v366[0];
      operator delete(v366[0]);
    }

    v352[0] = &v389;
    sub_240BE3824(v352);
    v329 = v393;
    *&v393 = 0;
    if (v329)
    {
      atomic_fetch_add(&qword_27E519020, -*(v329 - 24));
      free(*(v329 - 32));
    }

    v18 = 0;
  }

LABEL_376:
  sub_240BE38A0(v371[0]);
  if (v372[0])
  {
    v372[1] = v372[0];
    operator delete(v372[0]);
  }

  if (v373)
  {
    v374 = v373;
    operator delete(v373);
  }

  v352[0] = &v375;
  sub_240B31E8C(v352);
  sub_240BE38A0(v379);
LABEL_381:
  v352[0] = &v382 + 8;
  sub_240B37900(v352);
  v352[0] = &v381;
  sub_240B379C0(v352);
LABEL_382:
  v330 = *MEMORY[0x277D85DE8];
  return v18;
}