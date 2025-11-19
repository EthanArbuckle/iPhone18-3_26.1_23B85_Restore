uint64_t sub_233720638(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  if (a2 < 0xA)
  {
    return 0;
  }

  v19 = v3;
  v20 = v4;
  v18 = 42;
  result = sub_2338F9020(a1, a2, &v18);
  if (result)
  {
    v9 = *a1;
    v10 = *(a1 + 1);
    if (v9 == 77)
    {
      v10 = bswap32(v10);
      if (a2 - 2 > v10)
      {
        v11 = &a1[v10];
        v12 = &a1[v10 + 1];
        goto LABEL_8;
      }
    }

    else if (a2 - 2 > v10)
    {
      v12 = &a1[v10];
      v11 = &a1[v10 + 1];
LABEL_8:
      v13 = *v12 | (*v11 << 8);
      v14 = &a1[a2];
      if (v13)
      {
        v15 = &a1[v10 + 4] > v14;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        v16 = &a1[v10 + 16];
        while (1)
        {
          if (v9 == 77)
          {
            if (*(v16 - 14) == 198)
            {
              v17 = *(v16 - 13);
              goto LABEL_18;
            }
          }

          else if (*(v16 - 13) == 198)
          {
            v17 = *(v16 - 14);
LABEL_18:
            if (v17 == 18)
            {
              return 1;
            }
          }

          if (--v13)
          {
            v15 = v16 > v14;
            v16 += 12;
            if (!v15)
            {
              continue;
            }
          }

          break;
        }
      }

      if (!v13)
      {
        return 0;
      }
    }

    if (sub_23378E728(@"com.adobe.raw-image", a3))
    {
      return 1;
    }

    else
    {
      return sub_23378E728(@"com.dxo.raw-image", a3);
    }
  }

  return result;
}

uint64_t sub_233720794(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  if (sub_23378E728(@"com.leafamerica.raw-image", a3))
  {
    return 1;
  }

  if (a2 < 0xA)
  {
    return 0;
  }

  v16 = 42;
  result = sub_2338F9020(a1, a2, &v16);
  if (result)
  {
    v6 = *a1;
    v7 = v6 == 77 ? bswap32(*(a1 + 1)) : *(a1 + 1);
    result = 0;
    if ((v7 & 0x80000000) == 0 && a2 - 1 > v7)
    {
      v8 = v6 == 77;
      v9 = &a1[v7];
      if (v8)
      {
        v10 = &a1[v7];
      }

      else
      {
        v10 = v9 + 1;
      }

      v11 = *v10;
      if (v8)
      {
        ++v9;
      }

      LOWORD(v9) = *v9 | (v11 << 8);
      v12 = v7 + 2;
      if (v8)
      {
        v13 = a1 + 1;
      }

      else
      {
        v13 = a1;
      }

      if (v8)
      {
        v14 = a1;
      }

      else
      {
        v14 = a1 + 1;
      }

      do
      {
        LODWORD(v9) = v9 + 0xFFFF;
        if (v12 < a2 - 1)
        {
          result = v9 >> 16;
        }

        else
        {
          result = 0;
        }

        if (result != 1)
        {
          break;
        }

        v15 = v13[v12] | (v14[v12] << 8);
        v12 += 12;
      }

      while (v15 != 34310);
    }
  }

  return result;
}

uint64_t sub_23372089C(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  v5 = 42;
  result = sub_2338F9020(a1, a2, &v5);
  if (result)
  {
    return sub_23378E728(@"com.hasselblad.fff-raw-image", a3);
  }

  return result;
}

BOOL sub_2337208E8(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  v46 = a2;
  LOWORD(v47) = 42;
  if (!sub_2338F9020(a1, a2, &v47))
  {
    return 0;
  }

  sub_233723B40(&v45, &v46);
  if (v45 >= 10)
  {
    v5 = *(a1 + 1);
    if (v5 == 0x8000000 || v5 == 8)
    {
      v6 = *a1;
      v7 = *(a1 + 4);
      v8 = bswap32(v7) >> 16;
      if (v6 == 77)
      {
        LOWORD(v7) = v8;
      }

      v43 = 10;
      v44 = v7;
      v47 = v45;
      v9 = *sub_233731EB0(&v47, &v43);
      v42 = 12;
      v47 = v9;
      v10 = sub_2337AD050(&v47, &v42);
      if (*v10 < v44)
      {
        v43 = 10;
        v47 = v45;
        v11 = *sub_233731EB0(&v47, &v43);
        v42 = 12;
        v47 = v11;
        v44 = *sub_2337AD050(&v47, &v42);
      }

      v37 = a3;
      v12 = 0;
      v13 = 0;
      v38 = 0;
      v14 = 0;
      v15 = (a1 + 10);
      while (sub_2337AC090(&v44) >= 1)
      {
        v16 = *v15;
        v17 = *v15;
        if (v6 != 77)
        {
          v12 |= v16 == 116242;
          v14 |= v17 == 50721;
          if (v16 != 262474)
          {
            goto LABEL_23;
          }

          v18 = v15[2];
LABEL_16:
          v47 = v18;
          sub_233723AE0(&v43, &v47);
          v42 = 2;
          v47 = v43;
          v19 = sub_233725A80(&v47, &v42);
          if (v45 < *v19)
          {
LABEL_21:
            v16 = *v15;
            if (v6 != 77)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }

          v20 = v43;
          v21 = *&a1[v43];
          v22 = bswap32(v21) >> 16;
          if (v6 == 77)
          {
            LOWORD(v21) = v22;
          }

          v41 = 2;
          v42 = v21;
          v47 = v43;
          v23 = *sub_233725A80(&v47, &v41);
          v39 = 12;
          v47 = v42;
          v40 = *sub_2337AD0B4(&v47, &v39);
          v47 = v23;
          v24 = sub_233725A80(&v47, &v40);
          if ((v45 < *v24) | v13 & 1)
          {
            v13 |= v45 >= *v24;
            goto LABEL_21;
          }

          v32 = &a1[v20 + 10];
          while (2)
          {
            v33 = sub_2337AC090(&v42);
            v13 = v33 > 0;
            if (v33 < 1)
            {
              goto LABEL_21;
            }

            v34 = *(v32 - 2);
            if (v6 == 77)
            {
              if (v34 == 100729600)
              {
                v35 = bswap32(*v32);
LABEL_39:
                if (v35 == 32803)
                {
                  goto LABEL_21;
                }
              }
            }

            else if (v34 == 196870)
            {
              v35 = *v32;
              goto LABEL_39;
            }

            v32 += 3;
            continue;
          }
        }

        v12 |= v16 == 314966272;
        v14 |= v17 == 8646;
        if (v16 == 1241580544)
        {
          v18 = bswap32(v15[2]);
          goto LABEL_16;
        }

LABEL_22:
        v16 = bswap32(v16);
LABEL_23:
        if (v16 == 131343)
        {
          v25 = v15[1];
          v26 = bswap32(v25);
          if (v6 == 77)
          {
            v25 = v26;
          }

          v47 = v25;
          sub_233723AE0(&v43, &v47);
          v27 = v15[2];
          v28 = bswap32(v27);
          if (v6 == 77)
          {
            v27 = v28;
          }

          v47 = v27;
          sub_233723AE0(&v42, &v47);
          if (v43 >= 5)
          {
            v47 = v42;
            v29 = sub_233725A80(&v47, &v43);
            if (v45 >= *v29)
            {
              v30 = sub_233751844(&v42);
              v31 = sub_233751844(&v43);
              v38 |= strnstr(&a1[v30], "Hasselblad", v31) != 0;
            }
          }
        }

        v15 += 3;
      }

      a3 = v37;
      if (!(v12 & 1 | ((v38 & v14 & 1) == 0)) && ((v13 ^ 1) & 1) == 0)
      {
        return 1;
      }
    }
  }

  return (sub_23378E728(@"com.hasselblad.3fr-raw-image", a3) & 1) != 0;
}

uint64_t sub_233720D74(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  v5 = 42;
  result = sub_2338F9020(a1, a2, &v5);
  if (result)
  {
    return sub_23378E728(@"com.pentax.raw-image", a3);
  }

  return result;
}

uint64_t sub_233720DC0(_BYTE *a1, unint64_t a2, void *a3)
{
  if (a2 >= 4 && *a1 == 73 && a1[1] == 73 && a1[2] == 42 && !a1[3])
  {
    return sub_23378E728(@"com.sony.sr2-raw-image", a3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_233720E7C(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  v5 = 42;
  result = sub_2338F9020(a1, a2, &v5);
  if (result)
  {
    return sub_23378E728(@"com.epson.raw-image", a3);
  }

  return result;
}

uint64_t sub_233720EC8(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  v5 = 42;
  result = sub_2338F9020(a1, a2, &v5);
  if (result)
  {
    return sub_23378E728(@"com.kodak.raw-image", a3);
  }

  return result;
}

void *sub_233721600(uint64_t a1, int a2, int a3, char **a4, char **a5)
{
  *(a1 + 224) = a2;
  *(a1 + 228) = a3;
  v7 = (a1 + 232);
  if (v7 != a4)
  {
    sub_233723454(v7, *a4, a4[1], (a4[1] - *a4) >> 2);
  }

  result = (a1 + 256);
  if ((a1 + 256) != a5)
  {
    v9 = *a5;
    v10 = a5[1];
    v11 = (v10 - *a5) >> 2;

    return sub_233723454(result, v9, v10, v11);
  }

  return result;
}

uint64_t sub_233721688(_DWORD *a1)
{
  v1 = a1[17];
  if (((a1[70] + 2 * v1) & 0xFLL) != 0)
  {
    return (2 * (a1[15] + 2 * v1) + 31) & 0x3FFFFFFE0;
  }

  else
  {
    return 2 * (a1[70] + 2 * v1);
  }
}

uint64_t sub_2337216C0(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_233721758;
  block[3] = &unk_2789EE800;
  block[4] = a1;
  if (*(a1 + 393512) != -1)
  {
    dispatch_once((a1 + 393512), block);
  }

  return a1 + 288;
}

void sub_233721758(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = v1 + 393216;
  v3 = *(v1 + 192);
  v4 = *(v1 + 200) - v3;
  if (v4 && (v5 = v4 >> 1, (v4 >> 1) <= 0x10000))
  {
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 >> 1;
    }

    v7 = v6;
    v8 = (v1 + 288);
    do
    {
      v9 = *v3++;
      *v8++ = v9;
      --v7;
    }

    while (v7);
    if (!(v5 >> 16))
    {
      v10 = *(v1 + 288 + 2 * (v6 - 1));
      v11 = (v1 + 2 * v6 + 288);
      v12 = v6 + 1;
      do
      {
        *v11++ = v10;
      }

      while (v12++ != 0x10000);
    }

    *(v2 + 288) = 1;
  }

  else
  {
    v15 = *(v1 + 393528);
    v14 = *(v1 + 393536);
    if (v14 - v15 == 48)
    {
      *(v1 + 393504) = 3;
      if (v15 != v14)
      {
        v16 = v1 + 288;
        do
        {
          v17 = *v15;
          if (*v15 && (v17 = __dynamic_cast(v17, &unk_2849027A8, &unk_284934FF8, 0)) != 0)
          {
            v18 = *(v15 + 8);
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v18 = 0;
          }

          v19 = *(v17 + 7);
          if (v19 > 2)
          {
            v30 = sub_2338C0490();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = 67109376;
              *&buf[4] = v19;
              LOWORD(v35) = 2048;
              *(&v35 + 2) = 3;
              _os_log_impl(&dword_23371F000, v30, OS_LOG_TYPE_INFO, "Plane %d will be ignored. Only expected up to %zu planes\n", buf, 0x12u);
            }
          }

          else
          {
            v20 = v17[6];
            v21 = v17[7];
            v22 = (v21 - v20) >> 3;
            *buf = 0;
            v35 = 0uLL;
            sub_2337236E0(buf, v20, v21, v22);
            v23 = 0;
            v24 = v22 - 1;
            v25 = *buf;
            v26 = v19 << 16;
            do
            {
              v27 = 0;
              v28 = 0.0;
              do
              {
                v29 = v25[v27];
                v28 = v28 + v29 * pow((v23 / 65535.0), v27++);
              }

              while (v24 >= v27);
              *(v16 + 2 * (v23 + v26)) = (v28 * 65535.0);
              ++v23;
            }

            while (v23 != 0x10000);
            *&v35 = v25;
            operator delete(v25);
          }

          if (v18)
          {
            sub_2337239E8(v18);
          }

          v15 += 16;
        }

        while (v15 != v14);
      }
    }

    else
    {
      v31 = 0;
      *(v1 + 393504) = 1;
      v32 = xmmword_233903BA0;
      v33.i64[0] = 0x8000800080008;
      v33.i64[1] = 0x8000800080008;
      do
      {
        *(v1 + 288 + v31) = v32;
        v32 = vaddq_s16(v32, v33);
        v31 += 16;
      }

      while (v31 != 0x20000);
    }
  }
}

void *sub_233721A74(uint64_t a1, int a2, unsigned int a3)
{
  v4 = a3;
  v9 = 64;
  v10 = a2;
  v11 = a3;
  v5 = sub_233723BA0(&v11, &v9);
  v6 = malloc_type_malloc(*v5, 0x100004077774924uLL);
  v7 = *(a1 + 24);
  sub_233723AE0(&v11, &v10);
  (*(*v7 + 40))(v7, &v11, 0);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v6, v4);
  return v6;
}

void sub_233721B50(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    free(v1);
  }

  __cxa_end_catch();
  JUMPOUT(0x233721B38);
}

void sub_233721B8C(os_signpost_id_t a1, uint64_t a2, int *a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v83 = *MEMORY[0x277D85DE8];
  v11 = sub_23378E038();
  v12 = v11;
  if (a1 + 1 >= 2 && os_signpost_enabled(v11))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGJPEGXLUnpacker::unpackTile", &unk_233945DBE, buf, 2u);
  }

  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_23372253C;
  v71[3] = &unk_2789EE800;
  v71[4] = a1;
  v13 = MEMORY[0x2383AC810](v71);
  JxlDecoderCreate();
  v14 = a3;
  if (!JxlThreadParallelRunnerCreate() || JxlDecoderSetParallelRunner())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  JxlDecoderSubscribeEvents();
  if (JxlDecoderSetInput() || JxlDecoderProcessInput() != 64)
  {
    v52 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v52, "RawCameraException");
    __cxa_throw(v52, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  memset(v82, 0, sizeof(v82));
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  memset(buf, 0, sizeof(buf));
  if (JxlDecoderGetBasicInfo() || JxlDecoderProcessInput() != 256)
  {
    v53 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v53, "RawCameraException");
    __cxa_throw(v53, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (!DWORD1(v73) && (JxlDecoderGetColorAsEncodedProfile() || JxlDecoderSetPreferredColorProfile()))
  {
    v58 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v58, "RawCameraException");
    __cxa_throw(v58, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a9)
  {
    v15 = 3;
  }

  else
  {
    v15 = 4;
  }

  v70 = v15;
  if (JxlDecoderImageOutBufferSize())
  {
    v54 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v54, "RawCameraException");
    __cxa_throw(v54, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v19 = a3[2];
  v18 = a3[3];
  if (!(2 * v70 * v18 * v19) && (v21 = *a3, v20 = a3[1], v20 == a5[1]) && v21 == *a5)
  {
    v22 = 0;
    x = v21;
    y = v20;
    width = v19;
    v26 = a2;
    height = v18;
  }

  else
  {
    v28 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v16, 0, 0, v17);
    v29 = v28;
    v14 = a3;
    v26 = objc_msgSend_mutableBytes(v28, v30, v31, v32, v33);
    v84.origin.x = *a3;
    v84.origin.y = a3[1];
    v84.size.width = a3[2];
    v84.size.height = a3[3];
    v86.origin.x = *a5;
    v86.origin.y = a5[1];
    v86.size.width = a5[2];
    v86.size.height = a5[3];
    v85 = CGRectIntersection(v84, v86);
    x = v85.origin.x;
    y = v85.origin.y;
    width = v85.size.width;
    height = v85.size.height;
    v22 = v28;
  }

  if (JxlDecoderSetImageOutBuffer())
  {
    v55 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v55, "RawCameraException");
    __cxa_throw(v55, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (JxlDecoderSetImageOutBitDepth() || JxlDecoderProcessInput() != 4096)
  {
    v56 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v56, "RawCameraException");
    __cxa_throw(v56, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a4)
  {
    v57 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v57, "RawCameraException");
    __cxa_throw(v57, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v60 = v26;
  v59 = v22;
  v64 = y;
  v63 = (y + height);
  if (y < v63)
  {
    v69 = (x + width);
    v65 = (*(a1 + 393504) != 1) << 17;
    v66 = (*(a1 + 393504) != 1) << 16;
    while (x >= v69)
    {
LABEL_49:
      if (++v64 == v63)
      {
        goto LABEL_50;
      }
    }

    v34 = x;
    v35 = a2 + (v64 - v14[1]) * a4;
    v36 = v60 + 2 * (v64 - a5[1]) * v70 * a5[2];
    while (1)
    {
      v37 = v34 - *v14;
      v38 = (v36 + 2 * (v34 - *a5) * v70);
      v39 = *v38;
      if (*(a1 + 393520) != 1)
      {
        break;
      }

      v40 = v13;
      v41 = v38[1];
      v42 = v38[2];
      v43 = sub_2337AF4A8(a1);
      v44 = __rev16(v41);
      v45 = __rev16(v39);
      v46 = __rev16(v42);
      if (v43 != 2)
      {
        v45 = v39;
        v44 = v41;
      }

      v47 = (v35 + 2 * v37 * v70);
      *v47 = v45;
      if (v43 == 2)
      {
        v48 = v46;
      }

      else
      {
        v48 = v42;
      }

      v47[1] = v44;
      v47[2] = v48;
      v13 = v40;
      v14 = a3;
      if (a9)
      {
        goto LABEL_46;
      }

      if (qword_27DE175F0 != -1)
      {
        goto LABEL_48;
      }

LABEL_45:
      v47[3] = HIWORD(xmmword_27DE175F8[0x1FFF]);
LABEL_46:
      if (v69 == ++v34)
      {
        goto LABEL_49;
      }
    }

    if (qword_27DE175F0 != -1)
    {
      sub_2338F83CC();
      v14 = a3;
    }

    v47 = (v35 + 2 * v37 * v70);
    *v47 = *(xmmword_27DE175F8 + *(a8 + 2 * v39));
    v49 = v38[1];
    if (qword_27DE175F0 != -1)
    {
      sub_2338F83CC();
      v14 = a3;
    }

    v47[1] = *(xmmword_27DE175F8 + *(a8 + 2 * (v66 | v49)));
    v50 = v38[2];
    if (qword_27DE175F0 != -1)
    {
      sub_2338F83CC();
      v14 = a3;
    }

    v47[2] = *(xmmword_27DE175F8 + *(a8 + 2 * (v65 | v50)));
    if (a9)
    {
      goto LABEL_46;
    }

    if (qword_27DE175F0 == -1)
    {
      goto LABEL_45;
    }

LABEL_48:
    sub_2338F83CC();
    v14 = a3;
    goto LABEL_45;
  }

LABEL_50:
  JxlThreadParallelRunnerDestroy();
  JxlDecoderDestroy();

  v13[2](v13);
}

void sub_23372246C(_Unwind_Exception *a1)
{
  v2[2](v2);

  _Unwind_Resume(a1);
}

void sub_23372253C(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGJPEGXLUnpacker::unpackTile", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337225C4(os_signpost_id_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v6 = sub_23378E038();
  v7 = v6;
  if (a1 + 1 >= 2 && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGJPEGXLUnpacker", &unk_233945DBE, buf, 2u);
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_233722B00;
  v37[3] = &unk_2789EE800;
  v37[4] = a1;
  v8 = MEMORY[0x2383AC810](v37);
  v10 = *(a1 + 44);
  v9 = *(a1 + 48);
  v11 = *(a1 + 224);
  v12 = *(a1 + 228);
  *buf = (*(a1 + 240) - *(a1 + 232)) >> 2;
  sub_233723B40(&v36, buf);
  v14 = *(a1 + 256);
  v13 = *(a1 + 264);
  if (*(a1 + 240) - *(a1 + 232) != v13 - v14 || (v10 - 100000) < 0xFFFE7961 || (v9 - 100000) < 0xFFFE7961 || v11 - 100000 < 0xFFFE7961 || v12 - 100000 < 0xFFFE7961 || (v15 = v36, v36 >= 20000))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((v9 + v12 - 1) / v12 * ((v10 + v11 - 1) / v11) != v36)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v25, "RawCameraException");
    __cxa_throw(v25, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v14 == v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      *buf = v16;
      v16 = *sub_233723874(buf, v14++);
    }

    while (v14 != v13);
  }

  v27 = v8;
  v17 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  if ((v16 & 0x80000000) == 0 && v16 >= v17)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v26, "RawCameraException");
    __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  group = dispatch_group_create();
  v30 = dispatch_queue_create("JPEGXL DNG Tile Unpacker Queue", MEMORY[0x277D85CD8]);
  if (v15)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      *buf = v19;
      *&buf[4] = v20;
      *&buf[8] = v11;
      *&buf[12] = v12;
      if (sub_23385F470(buf, a3))
      {
        v21 = sub_233721A74(a1, *(*(a1 + 232) + v18), *(*(a1 + 256) + v18));
        if (v21)
        {
          v22 = *(*(a1 + 256) + v18);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_233722B88;
          block[3] = &unk_2789EE820;
          block[4] = a1;
          block[5] = v21;
          v33 = v22;
          block[6] = a2;
          block[7] = a3;
          block[8] = a4;
          v34 = *buf;
          dispatch_group_async(group, v30, block);
        }
      }

      if ((v19 + v11) >= v10)
      {
        v23 = v12;
      }

      else
      {
        v23 = 0;
      }

      v20 += v23;
      if ((v19 + v11) >= v10)
      {
        v19 = 0;
      }

      else
      {
        v19 += v11;
      }

      v18 += 4;
    }

    while (4 * v15 != v18);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);

  v27[2](v27);
}

void sub_233722B00(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGJPEGXLUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_233722B88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = sub_2337216C0(v2);
  sub_233721B8C(v2, v5, v6, v7, (a1 + 76), v3, v3 + v4, v8, 0);
  v9 = *(a1 + 40);

  free(v9);
}

void sub_233722C1C(os_signpost_id_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGJPEGXLUnpacker", &unk_233945DBE, buf, 2u);
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_23372316C;
  v43[3] = &unk_2789EE800;
  v43[4] = a1;
  v4 = MEMORY[0x2383AC810](v43);
  v5 = *(a1 + 44);
  v31 = *(a1 + 48);
  v6 = *(a1 + 224);
  v7 = *(a1 + 228);
  *buf = (*(a1 + 240) - *(a1 + 232)) >> 2;
  sub_233723C18(&v42, buf);
  v8 = v42;
  v28 = (*(*a1 + 40))(a1);
  v10 = *(a1 + 256);
  v9 = *(a1 + 264);
  if (*(a1 + 240) - *(a1 + 232) != v9 - v10 || v5 - 100000 < 0xFFFE7961 || (v31 - 100000) < 0xFFFE7961 || v6 - 100000 < 0xFFFE7961 || v7 - 100000 < 0xFFFE7961 || v8 >> 5 >= 0x271)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((v31 + v7 - 1) / v7 * ((v5 + v6 - 1) / v6) != v8)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v25, "RawCameraException");
    __cxa_throw(v25, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v10 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      *buf = v11;
      v11 = *sub_233723874(buf, v10++);
    }

    while (v10 != v9);
  }

  v12 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  if ((v11 & 0x80000000) == 0 && v11 >= v12)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v26, "RawCameraException");
    __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v27 = v4;
  group = dispatch_group_create();
  v29 = dispatch_queue_create("JPEGXL DNG Tile Unpacker Queue", MEMORY[0x277D85CD8]);
  v13 = sub_2337ADCC4(a1);
  if (v8)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = v8;
    v18 = 0;
    v19 = 4 * v17;
    do
    {
      v20 = sub_233721A74(a1, *(*(a1 + 232) + v15), *(*(a1 + 256) + v15));
      if (v20)
      {
        v21 = *(*(a1 + 256) + v15);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2337231F4;
        block[3] = &unk_2789EE840;
        block[4] = a1;
        block[5] = v20;
        block[6] = v14;
        v33 = v21;
        v34 = v5;
        v35 = v31;
        v36 = v28;
        v37 = v18;
        v38 = v16;
        v39 = v6;
        v40 = v7;
        dispatch_group_async(group, v29, block);
      }

      v15 += 4;
      v22 = v18 + v6;
      if (v18 + v6 >= v5)
      {
        v18 = 0;
      }

      else
      {
        v18 += v6;
      }

      if (v22 >= v5)
      {
        v23 = v7;
      }

      else
      {
        v23 = 0;
      }

      v16 += v23;
    }

    while (v19 != v15);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);

  v27[2](v27);
}

void sub_23372316C(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGJPEGXLUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337231F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v5 = *(a1 + 60);
  v7 = *(a1 + 64);
  v15 = 0;
  sub_2337238F0(&v16, v5, v7);
  v8 = 2 * (*(a1 + 68) * *(a1 + 60));
  v9 = *(a1 + 80);
  v10 = *(a1 + 84);
  sub_2337238F0(&v13, *(a1 + 72), *(a1 + 76));
  sub_2337238F0(&v14, v9, v10);
  v11 = *(a1 + 40);
  v12 = sub_2337216C0(v2);
  sub_233721B8C(v2, v4, &v15, v8, &v13, v11, v3 + v6, v12, 1);
  free(*(a1 + 40));
}

void *sub_2337232D0(uint64_t a1)
{
  *a1 = &unk_284902670;
  v6 = (a1 + 393528);
  sub_233723948(&v6);
  v2 = *(a1 + 256);
  if (v2)
  {
    *(a1 + 264) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 232);
  if (v3)
  {
    *(a1 + 240) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28491FFD8;
  v4 = *(a1 + 192);
  if (v4)
  {
    *(a1 + 200) = v4;
    operator delete(v4);
  }

  return sub_233723A54(a1);
}

uint64_t sub_23372337C(uint64_t a1)
{
  *a1 = &unk_284902670;
  v7 = (a1 + 393528);
  sub_233723948(&v7);
  v2 = *(a1 + 256);
  if (v2)
  {
    *(a1 + 264) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 232);
  if (v3)
  {
    *(a1 + 240) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28491FFD8;
  v4 = *(a1 + 192);
  if (v4)
  {
    *(a1 + 200) = v4;
    operator delete(v4);
  }

  v5 = sub_233723A54(a1);
  return MEMORY[0x2383ABF10](v5, 0x10B1C40F106A1A5);
}

void *sub_233723454(void *result, char *__src, char *a3, unint64_t a4)
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

    if (!(a4 >> 62))
    {
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

      sub_233723580(v6, v10);
    }

    sub_2337235BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_233723580(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_2337235D4(a1, a2);
  }

  sub_2337235BC();
}

void sub_2337235D4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_2337236AC();
}

void sub_23372361C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_233723678(exception, a1);
  __cxa_throw(exception, off_2789EE7F0, MEMORY[0x277D825F0]);
}

std::logic_error *sub_233723678(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_2337236AC()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t sub_2337236E0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_23372375C(result, a4);
  }

  return result;
}

void sub_233723740(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372375C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_233723798(a1, a2);
  }

  sub_2337235BC();
}

void sub_233723798(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2337236AC();
}

int64x2_t sub_2337237E0()
{
  v0 = 0;
  result = xmmword_233903BC0;
  v2 = xmmword_233903BD0;
  v3 = xmmword_233903BE0;
  v4 = vdupq_n_s32(0x477FFF00u);
  v5 = xmmword_233903BB0;
  v6 = vdupq_n_s64(8uLL);
  do
  {
    xmmword_27DE175F8[v0] = vcvt_hight_f16_f32(vcvt_f16_f32(vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v5)), vcvtq_f64_u64(v3)), v4)), vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v2)), vcvtq_f64_u64(result)), v4));
    v2 = vaddq_s64(v2, v6);
    v3 = vaddq_s64(v3, v6);
    v5 = vaddq_s64(v5, v6);
    result = vaddq_s64(result, v6);
    ++v0;
  }

  while (v0 != 0x2000);
  return result;
}

int *sub_233723874(int *result, unsigned int *a2)
{
  v2 = *result + *a2;
  *result = v2;
  v5 = v2 == (v2 << 31) >> 31;
  v3 = v2 & 0x1FFFFFFFFLL;
  v4 = v2 & 0x1FFFFFFFFLL;
  v5 = v5 && v4 == v3;
  if (!v5)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_DWORD *sub_2337238F0(_DWORD *a1, int a2, int a3)
{
  v6 = a3;
  v7 = a2;
  sub_233723AE0(&v5, &v7);
  *a1 = v5;
  sub_233723AE0(&v5, &v6);
  a1[1] = v5;
  return a1;
}

void sub_233723948(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_23372399C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_23372399C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_2337239E8(v4);
    }
  }

  a1[1] = v2;
}

void sub_2337239E8(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *sub_233723A54(void *a1)
{
  *a1 = &unk_28490A6D8;
  v2 = a1[20];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  v4 = a1[14];
  if (v4)
  {
    a1[15] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    sub_2337239E8(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

int *sub_233723AE0(int *result, int *a2)
{
  *result = 0;
  v2 = *a2;
  *result = *a2;
  if (v2 < 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_DWORD *sub_233723B40(_DWORD *result, unint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2 >> 31)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void *sub_233723BA0(void *result, int *a2)
{
  v2 = *a2;
  v3 = v2 >> 63;
  v4 = __CFADD__(*result, v2);
  v5 = *result + v2;
  if (v4)
  {
    ++v3;
  }

  v6 = v3 << 63 >> 63;
  *result = v5;
  if (v6 != v3 || v6 < 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_DWORD *sub_233723C18(_DWORD *result, unint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (HIDWORD(v2))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

id sub_233723C8C(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v6 = objc_msgSend_filterWithDefaultsForClass_(RAWFilter, v3, v2, v4, v5);
  v10 = objc_msgSend_objectForKeyedSubscript_(v1, v7, @"inputVersion", v8, v9);
  v15 = objc_msgSend_intValue(v10, v11, v12, v13, v14);

  v20 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17, v18, v19);
  v25 = v20;
  if (v15 <= 6)
  {
    objc_msgSend_addObject_(v20, v21, @"inputBaselineExposure", v23, v24);
LABEL_4:
    objc_msgSend_addObjectsFromArray_(v25, v21, &unk_284954970, v23, v24);
    goto LABEL_5;
  }

  if (v15 == 7)
  {
    goto LABEL_4;
  }

LABEL_5:
  v26 = objc_msgSend_mutableCopy(v1, v21, v22, v23, v24);
  objc_msgSend_removeObjectsForKeys_(v26, v27, v25, v28, v29);
  if (v15 >= 8)
  {
    v33 = objc_msgSend_objectForKeyedSubscript_(v1, v30, @"inputIsGenericDNG", v31, v32);
    v38 = objc_msgSend_BOOLValue(v33, v34, v35, v36, v37);

    if (v38)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v26, v30, &unk_284954EF8, @"inputVersion", v32);
    }
  }

  objc_msgSend_takeAttributesFromDictionary_(v6, v30, v26, v31, v32);
  v39 = sub_2338F28E4();
  objc_msgSend_setValue_forKey_(v6, v40, v39, @"inputColorSpace", v41);

  return v6;
}

void sub_233723DF4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id sub_233723E44(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v6 = objc_msgSend_filterWithDefaultsForClass_(RAWFilter, v3, v2, v4, v5);
  v10 = objc_msgSend_objectForKeyedSubscript_(v1, v7, @"inputVersion", v8, v9);
  v15 = objc_msgSend_intValue(v10, v11, v12, v13, v14);

  v20 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17, v18, v19);
  v25 = v20;
  if (v15 <= 7)
  {
    objc_msgSend_addObjectsFromArray_(v20, v21, &unk_284954988, v23, v24);
  }

  v26 = objc_msgSend_mutableCopy(v1, v21, v22, v23, v24);
  objc_msgSend_removeObjectsForKeys_(v26, v27, v25, v28, v29);
  if (v15 == 9)
  {
    v34 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v30, v31, v32, v33, 1000.0, 1000.0, 1000.0, 1000.0);
    objc_msgSend_setObject_forKeyedSubscript_(v26, v35, v34, @"inputBlacks", v36);
  }

  objc_msgSend_takeAttributesFromDictionary_(v6, v30, v26, v32, v33);

  return v6;
}

void sub_233723F78(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id sub_233723FCC(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], v2, v3, v4, v5);
  v10 = objc_msgSend_objectForKeyedSubscript_(v1, v7, @"inputGainMapExecute", v8, v9);
  if (objc_msgSend_BOOLValue(v10, v11, v12, v13, v14))
  {
    v18 = objc_opt_class();
    v22 = objc_msgSend_filterWithDefaultsForClass_(RAWFilter, v19, v18, v20, v21);
    objc_msgSend_takeAttributesFromDictionary_(v22, v23, v1, v24, v25);
    objc_msgSend_addObject_(v6, v26, v22, v27, v28);
  }

  v29 = objc_msgSend_objectForKeyedSubscript_(v1, v15, @"inputVignetteExecute", v16, v17);
  if (objc_msgSend_BOOLValue(v29, v30, v31, v32, v33))
  {
    v37 = objc_opt_class();
    v41 = objc_msgSend_filterWithDefaultsForClass_(RAWFilter, v38, v37, v39, v40);
    objc_msgSend_takeAttributesFromDictionary_(v41, v42, v1, v43, v44);
    objc_msgSend_addObject_(v6, v45, v41, v46, v47);
  }

  v48 = objc_msgSend_objectForKeyedSubscript_(v1, v34, @"inputVignetteTableExecute", v35, v36);
  if (objc_msgSend_BOOLValue(v48, v49, v50, v51, v52))
  {
    v56 = objc_opt_class();
    v60 = objc_msgSend_filterWithDefaultsForClass_(RAWFilter, v57, v56, v58, v59);
    objc_msgSend_takeAttributesFromDictionary_(v60, v61, v1, v62, v63);
    v64 = sub_2338F28E4();
    objc_msgSend_setValue_forKey_(v60, v65, v64, @"inputColorSpace", v66);
    objc_msgSend_addObject_(v6, v67, v60, v68, v69);
  }

  v70 = objc_msgSend_objectForKeyedSubscript_(v1, v53, @"inputLDCExecuteFlags", v54, v55);
  v78 = objc_msgSend_objectForKeyedSubscript_(v1, v71, @"inputScales", v72, v73);
  if (v78 && objc_msgSend_intValue(v70, v74, v75, v76, v77))
  {
    v79 = objc_opt_class();
    v83 = objc_msgSend_filterWithDefaultsForClass_(RAWFilter, v80, v79, v81, v82);
    objc_msgSend_setValue_forKey_(v83, v84, v70, @"inputLDCExecuteFlags", v85);
    objc_msgSend_setValue_forKey_(v83, v86, v78, @"inputScales", v87);
    v88 = sub_2338F28E4();
    objc_msgSend_setValue_forKey_(v83, v89, v88, @"inputColorSpace", v90);
    objc_msgSend_addObject_(v6, v91, v83, v92, v93);
  }

  v94 = objc_msgSend_objectForKeyedSubscript_(v1, v74, @"inputKr", v76, v77);
  if (v94)
  {
    v95 = objc_opt_class();
    v99 = objc_msgSend_filterWithDefaultsForClass_(RAWFilter, v96, v95, v97, v98);
    v103 = objc_msgSend_objectForKeyedSubscript_(v1, v100, @"inputCenter", v101, v102);
    objc_msgSend_setValue_forKey_(v99, v104, v103, @"inputCenter", v105);

    objc_msgSend_setValue_forKey_(v99, v106, v94, @"inputKr", v107);
    v111 = objc_msgSend_objectForKeyedSubscript_(v1, v108, @"inputKt", v109, v110);
    objc_msgSend_setValue_forKey_(v99, v112, v111, @"inputKt", v113);

    v114 = sub_2338F28E4();
    objc_msgSend_setValue_forKey_(v99, v115, v114, @"inputColorSpace", v116);
    objc_msgSend_addObject_(v6, v117, v99, v118, v119);
  }

  return v6;
}

id sub_2337243C8(int a1, void *a2, int a3, int a4, uint64_t *a5, void *a6)
{
  v11 = a2;
  v270 = a6;
  v271 = v11;
  sub_233724DCC(v273, a5);
  v16 = objc_msgSend_array(MEMORY[0x277CBEB18], v12, v13, v14, v15);
  context = objc_autoreleasePoolPush();
  v21 = objc_msgSend_mutableCopy(v11, v17, v18, v19, v20);
  v22 = MEMORY[0x2383AC810](v270);
  objc_msgSend_setObject_forKey_(v21, v23, v22, @"valueBlock", v24);

  v28 = objc_msgSend_objectForKeyedSubscript_(v21, v25, @"inputVersion", v26, v27);
  v33 = objc_msgSend_intValue(v28, v29, v30, v31, v32);

  v37 = objc_msgSend_objectForKeyedSubscript_(v21, v34, @"inputLinearized", v35, v36);
  v42 = objc_msgSend_intValue(v37, v38, v39, v40, v41);

  v46 = objc_msgSend_objectForKeyedSubscript_(v21, v43, @"inputIsNoiseReductionEnabled", v44, v45);
  v51 = objc_msgSend_BOOLValue(v46, v47, v48, v49, v50);

  v58 = objc_msgSend_objectForKeyedSubscript_(v21, v52, @"inputScaleFactor", v53, v54);
  if (v58)
  {
    v59 = objc_msgSend_objectForKeyedSubscript_(v21, v55, @"inputScaleFactor", v56, v57);
    objc_msgSend_doubleValue(v59, v60, v61, v62, v63);
    v65 = v64;
  }

  else
  {
    v65 = 1.0;
  }

  v69 = a1 ^ 1;
  if (a4 == 3)
  {
    v70 = a1;
  }

  else
  {
    v70 = a1 ^ 1;
  }

  if (a3 != 3)
  {
    v70 = 0;
  }

  if (a4)
  {
    if (a3 && a4 == 1)
    {
      if (v70)
      {
        goto LABEL_13;
      }

LABEL_20:
      if (!v69)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }

    if ((a3 & 0xFFFFFFFE) != 2 || (a4 & 0xFFFFFFFE) != 2)
    {
      a1 = 0;
    }

    v69 = a1;
    if (!v70)
    {
      goto LABEL_20;
    }
  }

  else
  {
    a1 ^= 1u;
    if (!v70)
    {
      goto LABEL_20;
    }
  }

LABEL_13:
  v71 = sub_233723E44(v21);
  objc_msgSend_setValue_forKey_(v71, v72, 0, @"inputCropRect", v73);
  if (v65 >= 1.0)
  {
    objc_msgSend_setValue_forKey_(v71, v74, MEMORY[0x277CBEC28], @"inputDraftMode", v75);
  }

  else
  {
    objc_msgSend_setValue_forKey_(v71, v74, MEMORY[0x277CBEC38], @"inputDraftMode", v75);
  }

  objc_msgSend_addObject_(v16, v76, v71, v77, v78);

  if (!v69)
  {
LABEL_17:
    if (!a1)
    {
      goto LABEL_66;
    }

    goto LABEL_44;
  }

LABEL_21:
  if (v65 < 1.0)
  {
    v79 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v66, @"CIAffineTransform", v67, v68);
    memset(&v272, 0, sizeof(v272));
    CGAffineTransformMakeScale(&v272, v65, v65);
    v82 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v80, &v272, "{CGAffineTransform=dddddd}", v81);
    objc_msgSend_setValue_forKey_(v79, v83, v82, @"inputTransform", v84);

    objc_msgSend_addObject_(v16, v85, v79, v86, v87);
  }

  v91 = objc_msgSend_objectForKeyedSubscript_(v21, v66, @"inputXScale", v67, v68);
  if (v91)
  {
    v92 = objc_msgSend_objectForKeyedSubscript_(v21, v88, @"inputXScale", v89, v90);
    objc_msgSend_doubleValue(v92, v93, v94, v95, v96);
    v98 = v97;
  }

  else
  {
    v98 = 1.0;
  }

  v106 = objc_msgSend_objectForKeyedSubscript_(v21, v100, @"inputYScale", v101, v102);
  if (v106)
  {
    v107 = objc_msgSend_objectForKeyedSubscript_(v21, v103, @"inputYScale", v104, v105);
    objc_msgSend_doubleValue(v107, v108, v109, v110, v111);
    v113 = v112;
  }

  else
  {
    v113 = 1.0;
  }

  if (fabs(v98 + -1.0) > 0.01 || fabs(v113 + -1.0) > 0.01)
  {
    v118 = MEMORY[0x277CBF750];
    v119 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v114, v115, v116, v117, v113);
    v124 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v120, v121, v122, v123, v98 / v113);
    v127 = objc_msgSend_filterWithName_keysAndValues_(v118, v125, @"CILanczosScaleTransform", @"inputScale", v126, v119, @"inputAspectRatio", v124, 0);

    if (v127)
    {
      objc_msgSend_addObject_(v16, v128, v127, v129, v130);
    }
  }

  v131 = objc_opt_class();
  v135 = objc_msgSend_filterWithDefaultsForClass_(RAWFilter, v132, v131, v133, v134);
  objc_msgSend_takeAttributesFromDictionary_(v135, v136, v21, v137, v138);
  objc_msgSend_addObject_(v16, v139, v135, v140, v141);

  if (v51)
  {
    v142 = sub_233723C8C(v21);
    objc_msgSend_addObject_(v16, v143, v142, v144, v145);
  }

  v146 = sub_233723FCC(v21);
  objc_msgSend_addObjectsFromArray_(v16, v147, v146, v148, v149);

  if (a1)
  {
LABEL_44:
    if (v33 < 7)
    {
      v150 = sub_2338F2BB4();
    }

    else
    {
      v150 = sub_2338F2B1C();
    }

    v151 = v150;
    v152 = objc_opt_class();
    v156 = objc_msgSend_filterWithDefaultsForClass_(RAWFilter, v153, v152, v154, v155);
    v268 = objc_msgSend_mutableCopy(v21, v157, v158, v159, v160);
    if (!v42)
    {
      objc_msgSend_removeObjectForKey_(v268, v161, @"inputBlacks", v162, v163);
    }

    objc_msgSend_takeAttributesFromDictionary_(v156, v161, v268, v162, v163);
    if (!v42)
    {
      objc_msgSend_setValue_forKey_(v156, v164, &unk_284954F10, @"inputRange", v166);
      objc_msgSend_setValue_forKey_(v156, v167, &unk_284958918, @"inputFactor", v168);
    }

    objc_msgSend_addObject_(v16, v164, v156, v165, v166);
    v169 = objc_opt_class();
    v173 = objc_msgSend_filterWithDefaultsForClass_(RAWFilter, v170, v169, v171, v172);

    objc_msgSend_takeAttributesFromDictionary_(v173, v174, v21, v175, v176);
    objc_msgSend_addObject_(v16, v177, v173, v178, v179);
    v180 = objc_opt_class();
    v184 = objc_msgSend_filterWithDefaultsForClass_(RAWFilter, v181, v180, v182, v183);
    objc_msgSend_addObject_(v16, v185, v184, v186, v187);

    v188 = objc_opt_class();
    v192 = objc_msgSend_filterWithDefaultsForClass_(RAWFilter, v189, v188, v190, v191);

    objc_msgSend_takeAttributesFromDictionary_(v192, v193, v21, v194, v195);
    objc_msgSend_setValue_forKey_(v192, v196, v151, @"inputColorSpace", v197);
    objc_msgSend_addObject_(v16, v198, v192, v199, v200);
    if (v33 < 9)
    {
      v212 = v192;
    }

    else
    {
      v205 = objc_opt_class();
      v209 = objc_msgSend_filterWithDefaultsForClass_(RAWFilter, v206, v205, v207, v208);

      objc_msgSend_setValue_forKey_(v209, v210, v151, @"inputColorSpace", v211);
      v212 = v209;
      objc_msgSend_addObject_(v16, v213, v209, v214, v215);
    }

    v216 = objc_msgSend_allKeys(v21, v201, v202, v203, v204);
    v220 = objc_msgSend_containsObject_(v216, v217, @"inputMapPointsV", v218, v219);

    if (v220)
    {
      v221 = objc_opt_class();
      v225 = objc_msgSend_filterWithDefaultsForClass_(RAWFilter, v222, v221, v223, v224);

      objc_msgSend_setValue_forKey_(v225, v226, v151, @"inputColorSpace", v227);
      objc_msgSend_takeAttributesFromDictionary_(v225, v228, v21, v229, v230);
      v212 = v225;
      objc_msgSend_addObject_(v16, v231, v225, v232, v233);
    }

    v234 = objc_opt_class();
    v238 = objc_msgSend_filterWithDefaultsForClass_(RAWFilter, v235, v234, v236, v237);

    objc_msgSend_setDefaults(v238, v239, v240, v241, v242);
    objc_msgSend_setValue_forKey_(v238, v243, v151, @"inputColorSpace", v244);
    if (v33 >= 6)
    {
      objc_msgSend_takeAttributesFromDictionary_forKeys_(v238, v245, v21, &unk_2849549A0, v247);
      if (v33 >= 7)
      {
        objc_msgSend_takeAttributesFromDictionary_forKeys_(v238, v245, v21, &unk_2849549B8, v247);
      }
    }

    objc_msgSend_addObject_(v16, v245, v238, v246, v247);
    v248 = objc_opt_class();
    v252 = objc_msgSend_filterWithDefaultsForClass_(RAWFilter, v249, v248, v250, v251);

    objc_msgSend_takeAttributesFromDictionary_(v252, v253, v21, v254, v255);
    v256 = getenv("RAWCAMERA_BOOSTSPACE");
    if (v256)
    {
      v259 = v256;
      if ((__tolower(*v256) != 97 || v259[1]) && __tolower(*v259) == 98 && !v259[1])
      {
        v151 = sub_2338F2A18();
      }
    }

    objc_msgSend_setValue_forKey_(v252, v257, v151, @"inputColorSpace", v258);
    objc_msgSend_addObject_(v16, v260, v252, v261, v262);
  }

LABEL_66:

  objc_autoreleasePoolPop(context);
  v266 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v263, v16, v264, v265);

  *&v272.a = &v275;
  sub_233723948(&v272);
  *&v272.a = &v274;
  sub_233723948(&v272);
  *&v272.a = v273;
  sub_233723948(&v272);

  return v266;
}

void sub_233724CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  sub_233725098(va);
  _Unwind_Resume(a1);
}

void *sub_233724DCC(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_233724E88(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_233724E88((a1 + 3), a2[3], a2[4], (a2[4] - a2[3]) >> 4);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_233724E88((a1 + 6), a2[6], a2[7], (a2[7] - a2[6]) >> 4);
  return a1;
}

void sub_233724E5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_233723948(va);
  sub_233723948(va);
  _Unwind_Resume(a1);
}

uint64_t sub_233724E88(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_233724F10(result, a4);
  }

  return result;
}

void sub_233724EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_233723948(&a9);
  _Unwind_Resume(a1);
}

void sub_233724F10(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_233724F4C(a1, a2);
  }

  sub_2337235BC();
}

void sub_233724F4C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2337236AC();
}

void *sub_233724F94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_23372501C(v7);
  return v4;
}

uint64_t sub_23372501C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_233725054(a1);
  }

  return a1;
}

void sub_233725054(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_2337239E8(v3);
    }

    v1 -= 16;
  }
}

void **sub_233725098(void **a1)
{
  v3 = a1 + 6;
  sub_233723948(&v3);
  v3 = a1 + 3;
  sub_233723948(&v3);
  v3 = a1;
  sub_233723948(&v3);
  return a1;
}

uint64_t sub_2337251D0(uint64_t a1, const void *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849027C8;
  *(a1 + 24) = 2;
  sub_2337268D8((a1 + 32), qword_233903C28);
  *(a1 + 36) = 0;
  *(a1 + 40) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  return a1;
}

void sub_233725244(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23372525C(void *a1)
{
  *a1 = &unk_2849027C8;
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_2337252C0(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return MEMORY[0x282122B38]();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2337252E0(uint64_t a1)
{
  v2 = (*(*a1 + 48))(a1);
  v4 = 0;
  v5 = v2;
  (*(*a1 + 40))(a1, &v4, 2);
  v4 = (*(*a1 + 48))(a1);
  sub_233726938(&v6, &v4);
  (*(*a1 + 40))(a1, &v5, 0);
  return v6;
}

void sub_2337253CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11)
{
  __cxa_begin_catch(a1);
  a10 = 0;
  sub_233726998(&a11, &a10);
  __cxa_end_catch();
  JUMPOUT(0x2337253B8);
}

uint64_t sub_233725430(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  sub_2337269FC(&v11, a1 + 1);
  sub_233726A8C(&v10, a4);
  sub_233725F08(v13, &v11, &v10, 0);
  if (v12)
  {
    sub_2337239E8(v12);
  }

  v8 = (*(*a1 + 32))(a1, a2, a3);
  sub_233725FD4(v13);
  return v8;
}

void sub_2337254E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_233725510(uint64_t a1)
{
  v2 = 0;
  sub_233725540(a1, &v2, 1);
  return v2;
}

uint64_t sub_233725540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1 + 32))(a1);
  if (a3 != result)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

uint64_t sub_2337255C0(uint64_t a1)
{
  v5 = 0;
  sub_233725540(a1, &v5, 2);
  v2 = bswap32(v5) >> 16;
  if (*(a1 + 24) == 2)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_233725614(uint64_t a1)
{
  v4 = 0;
  sub_233725540(a1, &v4, 4);
  v2 = bswap32(v4);
  if (*(a1 + 24) == 2)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_233725660(uint64_t a1)
{
  v4 = 0;
  sub_233725540(a1, &v4, 8);
  v2 = bswap64(v4);
  if (*(a1 + 24) == 2)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2337256AC(uint64_t a1)
{
  v2 = 0;
  sub_233725540(a1, &v2, 1);
  return v2;
}

uint64_t sub_2337256DC(uint64_t a1)
{
  v5 = 0;
  sub_233725540(a1, &v5, 2);
  v2 = bswap32(v5) >> 16;
  if (*(a1 + 24) == 2)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

BOOL sub_2337257E8(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  __p[25] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (*a2 > 0xC7)
  {
    if (v6 >= 0x40000)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v18 = 1;
    v20 = v6;
    v11 = sub_233726AE8(&v20, &v18);
    sub_233726154(__p, *v11);
    v12 = (*(*a1 + 32))(a1);
    v8 = v12;
    v19 = v12;
    v13 = *a2;
    v10 = v12 == *a2;
    if (v12 == v13)
    {
      *(__p[0] + v12) = 0;
      sub_23372610C(a3, __p[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v7 = (*(*a1 + 32))(a1, __p);
    v8 = v7;
    v19 = v7;
    v9 = *a2;
    v10 = v7 == *a2;
    if (v7 == v9)
    {
      *(__p + v7) = 0;
      sub_23372610C(a3, __p);
    }
  }

  v14 = *(a3 + 23);
  if (v14 < 0)
  {
    v14 = *(a3 + 8);
  }

  __p[0] = v14;
  sub_233723C18(&v20, __p);
  if (v20 < v8)
  {
    v15 = *(a3 + 23);
    if (v15 < 0)
    {
      v15 = *(a3 + 8);
    }

    __p[0] = v15;
    sub_233723B40(&v20, __p);
    LODWORD(__p[0]) = 1;
    sub_233725A80(&v20, __p);
    sub_233725AE4(&v20, &v19);
    (*(*a1 + 40))(a1, &v20, 1);
  }

  if (!v10)
  {
    return 0;
  }

  v16 = *(a3 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a3 + 8);
  }

  return v16 != 0;
}

void sub_233725A48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_233725A80(_DWORD *result, _DWORD *a2)
{
  v2 = __OFADD__(*result, *a2);
  *result += *a2;
  if (v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

int *sub_233725AE4(int *result, unsigned int *a2)
{
  v2 = *result - *a2;
  *result = v2;
  v5 = v2 == (v2 << 31) >> 31;
  v3 = v2 & 0x1FFFFFFFFLL;
  v4 = v2 & 0x1FFFFFFFFLL;
  v5 = v5 && v4 == v3;
  if (!v5)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

uint64_t sub_233725B60@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = 2;
  v11 = *a2;
  v6 = *sub_233726B58(&v11, &v10);
  if ((*(*a1 + 16))(a1) < v6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  sub_233726218(a3, *a2);
  result = sub_233725540(a1, *a3, a3[1] - *a3);
  if (a1[3] != 1)
  {
    v8 = *a3;
    v9 = a3[1];
    while (v8 != v9)
    {
      *v8 = bswap32(*v8) >> 16;
      ++v8;
    }
  }

  return result;
}

void sub_233725C50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233725C7C@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = 4;
  v11 = *a2;
  v6 = *sub_233726B58(&v11, &v10);
  if ((*(*a1 + 16))(a1) < v6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  sub_23372630C(a3, *a2);
  result = sub_233725540(a1, *a3, a3[1] - *a3);
  if (a1[3] != 1)
  {
    v8 = *a3;
    v9 = a3[1];
    while (v8 != v9)
    {
      *v8 = bswap32(*v8);
      ++v8;
    }
  }

  return result;
}

void sub_233725D68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_233725D94(_DWORD *a1, _DWORD *a2)
{
  if ((*(*a1 + 16))(a1) >= *a2)
  {
    v3 = a1[9];
    LODWORD(v5) = (*(*a1 + 48))(a1);
    LODWORD(v4) = v3;
    sub_233725A80(&v4, &v5);
    operator new[]();
  }

  __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0]();
  sub_2338F83F4();
}

void sub_233725ED4(void *a1)
{
  __cxa_begin_catch(a1);
  MEMORY[0x2383ABEF0](v3, v2);
  *v1 = 0;
  v1[1] = 0;
  __cxa_end_catch();
  JUMPOUT(0x233725E9CLL);
}

uint64_t *sub_233725F08(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = a2[1];
  *a1 = *a2;
  a1[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    v7 = *a1;
  }

  *(a1 + 4) = 0;
  if (v7)
  {
    *(a1 + 4) = (*(*v7 + 48))(v7);
    (*(**a1 + 40))(*a1, a3, a4);
  }

  return a1;
}

void sub_233725FB8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_233725FD4(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 40))(v2, a1 + 2, 0);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}

void sub_233726038(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_233726050(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_23372610C(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_233726050(a1, __s, v4);
}

void *sub_233726154(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2337261C8(result, a2);
  }

  return result;
}

void sub_2337261AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337261C8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2337235BC();
}

void *sub_233726218(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_233726290(result, a2);
  }

  return result;
}

void sub_233726274(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_233726290(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_2337262C8(a1, a2);
  }

  sub_2337235BC();
}

void sub_2337262C8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2337236AC();
}

void *sub_23372630C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_233723580(result, a2);
  }

  return result;
}

void sub_233726368(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_233726410(void *a1, void *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284902868;
  sub_233731BEC(a1 + 3, *a2, *a3);
  return a1;
}

void sub_233726494(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284902868;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233726510(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_2337239E8(v5);
      }
    }
  }
}

void *sub_233726634(void *a1, void *a2, uint64_t a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849028B8;
  sub_233732130(a1 + 3, *a2, a3, *a4);
  return a1;
}

void sub_2337266B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849028B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337267B8(uint64_t a1, const void **a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284902908;
  sub_2337251D0(a1 + 24, *a2);
  *(a1 + 24) = &unk_284907AC0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void sub_23372685C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284902908;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

_DWORD *sub_2337268D8(_DWORD *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2 != v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_DWORD *sub_233726938(_DWORD *result, unsigned int *a2)
{
  v2 = *a2;
  *result = v2;
  if (v2 != v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_DWORD *sub_233726998(_DWORD *result, unsigned int *a2)
{
  *result = 0;
  v2 = *a2;
  *result = v2;
  if (v2 != v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void *sub_2337269FC(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    sub_233726A40();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_233726A40()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

int *sub_233726A8C(int *result, int *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2 < 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_DWORD *sub_233726AE8(_DWORD *result, int *a2)
{
  v2 = *result + *a2;
  v3 = v2 << 31 >> 31;
  *result = v2;
  if (v3 != v2 || v3 < 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_DWORD *sub_233726B58(_DWORD *result, void *a2)
{
  v2 = (*result * *a2) >> 64;
  v3 = *result * *a2;
  *result = v3;
  if (v2 || HIDWORD(v3))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

id sub_233726BCC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4, a5);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_233726C98;
  v16[3] = &unk_2789EE888;
  v17 = v6;
  v7 = v6;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v8, v16, v9, v10);
  v14 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v11, v7, v12, v13);

  return v14;
}

void sub_233726C98(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v12 = objc_msgSend_makeSerializable(a3, v6, v7, v8, v9);
  objc_msgSend_setObject_forKey_(v4, v10, v12, v5, v11);
}

id sub_233726D18(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6, v7, v8);
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = sub_233726E0C;
  v23 = &unk_2789EE8B0;
  v24 = v9;
  v25 = v4;
  v10 = v4;
  v11 = v9;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v12, &v20, v13, v14);
  v18 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v15, v11, v16, v17, v20, v21, v22, v23);

  return v18;
}

void sub_233726E0C(uint64_t a1, void *a2, void *a3)
{
  v51 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = objc_msgSend_length(v10, v6, v7, v8, v9);
    v16 = @".";
    if (!v12)
    {
      v16 = &stru_284938540;
    }

    v17 = objc_msgSend_stringByAppendingFormat_(v10, v13, @"%@%@", v14, v15, v16, v51);
    objc_msgSend_setObject_forKeyedSubscript_(v11, v18, v5, v17, v19);
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v25 = *(a1 + 32);
      v24 = *(a1 + 40);
      v26 = objc_msgSend_length(v24, v20, v21, v22, v23);
      v30 = @".";
      if (!v26)
      {
        v30 = &stru_284938540;
      }

      v17 = objc_msgSend_stringByAppendingFormat_(v24, v27, @"%@%@", v28, v29, v30, v51);
      v34 = objc_msgSend_keypathValueDictionary_(v5, v31, v17, v32, v33);
      objc_msgSend_addEntriesFromDictionary_(v25, v35, v34, v36, v37);
    }

    else
    {
      v17 = objc_msgSend_description(v5, v20, v21, v22, v23);
      v39 = *(a1 + 32);
      v38 = *(a1 + 40);
      v44 = objc_msgSend_length(v38, v40, v41, v42, v43);
      v48 = @".";
      if (!v44)
      {
        v48 = &stru_284938540;
      }

      v34 = objc_msgSend_stringByAppendingFormat_(v38, v45, @"%@%@", v46, v47, v48, v51);
      objc_msgSend_setObject_forKeyedSubscript_(v39, v49, v17, v34, v50);
    }
  }
}

id sub_233726FFC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4, a5);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2337270AC;
  v12[3] = &unk_2789EE888;
  v7 = v6;
  v13 = v7;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v8, v12, v9, v10);

  return v7;
}

void sub_2337270AC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v12 = objc_msgSend_makeSerializable(a3, v6, v7, v8, v9);
  objc_msgSend_setObject_forKey_(v4, v10, v12, v5, v11);
}

uint64_t sub_233727120(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2337271B8;
  block[3] = &unk_2789EE800;
  block[4] = a1;
  if (*(a1 + 131656) != -1)
  {
    dispatch_once((a1 + 131656), block);
  }

  return a1 + 584;
}

void sub_2337271B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 248) & 1) == 0)
  {
    sub_233728FA8();
  }

  __p = 0;
  v36 = 0;
  v37 = 0;
  sub_233728FF4(&__p, *(v1 + 224), *(v1 + 232), (*(v1 + 232) - *(v1 + 224)) >> 1);
  if ((*(v1 + 216) & 1) == 0)
  {
    sub_233728FA8();
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  sub_233729070(&v32, *(v1 + 192), *(v1 + 200), (*(v1 + 200) - *(v1 + 192)) >> 2);
  v2 = v32;
  v3 = v33 - v32;
  v4 = __p;
  if (v33 - v32 != v36 - __p || v33 == v32)
  {
    goto LABEL_25;
  }

  v5 = 0;
  v6 = 0;
  v7 = v3 >> 2;
  v8 = v3 >> 2 != 0;
  v9 = (v3 >> 2) - 1;
  if (v9 == 0 || !v8)
  {
    v7 = 1;
  }

  v10 = __p + 2;
  do
  {
    if (v6)
    {
      if (!*(v10 - 1) && *v10 == 0)
      {
        break;
      }
    }

    v10 += 2;
    v5 |= v9 == v6++;
  }

  while (v7 != v6);
  if (v5)
  {
    if ((*(v1 + 258) & 1) == 0)
    {
      sub_233728FA8();
    }

    v12 = *(v1 + 256);
    if (*(v1 + 256))
    {
      v13 = 0;
      v14 = *(__p + 3);
      v15 = *(__p + 2);
      v16 = *(__p + 1);
      v17 = 1;
      v18 = *__p;
      do
      {
        if (v17 < v9 && v13 >= v15)
        {
          ++v17;
          v19 = &v4[4 * v17];
          v18 = v15;
          v15 = *v19;
          v16 = v14;
          v14 = *(v19 + 1);
        }

        v20 = *&v2[4 * v17 - 4] * (v13 - v18);
        if (v20 >= 0xFFFFFFFF)
        {
          LODWORD(v20) = -1;
        }

        *(v1 + 584 + 2 * v13++) = v16 + ((v20 >> 15) & 1) + WORD1(v20);
      }

      while (v12 != v13);
      v21 = v12;
    }

    else
    {
      v21 = 0;
    }

    v25 = 0;
    v26 = vdupq_n_s64(v21 ^ 0xFFFFuLL);
    v27 = (65543 - v21) & 0x1FFF8;
    v28 = (v1 + 2 * v21 + 598);
    do
    {
      v29 = vdupq_n_s64(v25);
      v30 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v29, xmmword_233903BB0)));
      if (vuzp1_s8(vuzp1_s16(v30, *v26.i8), *v26.i8).u8[0])
      {
        *(v28 - 7) = v12;
      }

      if (vuzp1_s8(vuzp1_s16(v30, *&v26), *&v26).i8[1])
      {
        *(v28 - 6) = v12;
      }

      if (vuzp1_s8(vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v29, xmmword_233903BE0)))), *&v26).i8[2])
      {
        *(v28 - 5) = v12;
        *(v28 - 4) = v12;
      }

      v31 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v29, xmmword_233903BD0)));
      if (vuzp1_s8(*&v26, vuzp1_s16(v31, *&v26)).i32[1])
      {
        *(v28 - 3) = v12;
      }

      if (vuzp1_s8(*&v26, vuzp1_s16(v31, *&v26)).i8[5])
      {
        *(v28 - 2) = v12;
      }

      if (vuzp1_s8(*&v26, vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v29, xmmword_233903BC0))))).i8[6])
      {
        *(v28 - 1) = v12;
        *v28 = v12;
      }

      v25 += 8;
      v28 += 8;
    }

    while (v27 != v25);
  }

  else
  {
LABEL_25:
    v22 = 0;
    v23 = xmmword_233903BA0;
    v24.i64[0] = 0x8000800080008;
    v24.i64[1] = 0x8000800080008;
    do
    {
      *(v1 + 584 + v22) = v23;
      v23 = vaddq_s16(v23, v24);
      v22 += 16;
    }

    while (v22 != 0x20000);
  }

  if (v2)
  {
    v33 = v2;
    operator delete(v2);
    v4 = __p;
  }

  if (v4)
  {
    v36 = v4;
    operator delete(v4);
  }
}

void sub_2337274B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2337274EC(uint64_t a1, int a2, unsigned int a3)
{
  v9 = a2;
  v5 = malloc_type_malloc(a3 + 64, 0x100004077774924uLL);
  v6 = *(a1 + 24);
  sub_233723AE0(&v8, &v9);
  (*(*v6 + 40))(v6, &v8, 0);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5, a3);
  return v5;
}

void sub_2337275BC(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    free(v1);
  }

  __cxa_end_catch();
  JUMPOUT(0x2337275A4);
}

void sub_2337275E0(os_signpost_id_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v29[7] = *MEMORY[0x277D85DE8];
  v8 = sub_23378E038();
  v9 = v8;
  if (a1 + 1 >= 2 && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v9, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPanasonicHuffmanUnpacker::unpackTile", &unk_233945DBE, buf, 2u);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_233727D74;
  v29[3] = &unk_2789EE800;
  v29[4] = a1;
  v10 = MEMORY[0x2383AC810](v29);
  if (qword_27DE37C78 != -1)
  {
    sub_2338F8418();
  }

  if (*(a1 + 304) != 1 || (*(a1 + 336) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *buf = 0;
  v27 = 0;
  v28 = 0;
  sub_233728FF4(buf, *(a1 + 280), *(a1 + 288), (*(a1 + 288) - *(a1 + 280)) >> 1);
  if ((*(a1 + 336) & 1) == 0)
  {
    sub_233728FA8();
  }

  __p = 0;
  v24 = 0;
  v25 = 0;
  sub_233728FF4(&__p, *(a1 + 312), *(a1 + 320), (*(a1 + 320) - *(a1 + 312)) >> 1);
  if (v24 != __p)
  {
    if ((v24 - __p) < 0x3FFFFFFFFFFFFFFFLL)
    {
      operator new();
    }

    sub_2337235BC();
  }

  v11 = *buf;
  if (v27 != *buf)
  {
    v12 = 0;
    v13 = (v27 - *buf) >> 1;
    v14 = __p;
    v15 = *buf;
    do
    {
      v16 = *v15;
      v15 += 2;
      v17 = (8 * (v12 >> 1));
      *v17 = v16;
      v17[1] = v11[v12 | 1];
      v17[2] = v14[v12 >> 1];
      v17[3] = v12 >> 1;
      v12 += 2;
    }

    while (v13 > v12);
  }

  sub_2337290EC(0, 0, 0, 1);
  v18 = 0;
  v19 = 56;
  v20 = a6;
  do
  {
    v21 = *v20++;
    v18 |= byte_27DE37C80[v21] << v19;
    v19 -= 8;
  }

  while (v19 != -8);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (*buf)
  {
    v27 = *buf;
    operator delete(*buf);
  }

  v10[2](v10);
}

void sub_233727CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  operator delete(v23);
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v22[2](v22);

  _Unwind_Resume(a1);
}

void sub_233727D74(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPanasonicHuffmanUnpacker::unpackTile", &unk_233945DBE, v5, 2u);
  }
}

void sub_233727DFC()
{
  for (i = 0; i != 256; ++i)
  {
    v1 = vdupq_n_s32(i);
    *v1.i8 = vshl_u8(vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v1, xmmword_233903D50), vshlq_u32(v1, xmmword_233903D40))), 0x101010101010101), 0x1020304050607);
    byte_27DE37C80[i] = v1.i8[0] | v1.i8[4] | ((v1.i32[0] | v1.i32[1]) >> 16) | ((v1.i16[0] | v1.i16[2] | ((v1.i32[0] | v1.i32[1]) >> 16)) >> 8);
  }
}

void sub_233727E68(os_signpost_id_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPanasonicHuffmanUnpacker", &unk_233945DBE, buf, 2u);
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_2337284C0;
  v39[3] = &unk_2789EE800;
  v39[4] = a1;
  v4 = MEMORY[0x2383AC810](v39);
  if ((*(a1 + 216) & 1) == 0 || (*(a1 + 248) & 1) == 0 || (*(a1 + 258) & 1) == 0 || (*(a1 + 262) & 1) == 0 || (*(a1 + 266) & 1) == 0 || (*(a1 + 270) & 1) == 0 || (*(a1 + 274) & 1) == 0 || (*(a1 + 346) & 1) == 0 || (*(a1 + 350) & 1) == 0 || (*(a1 + 376) & 1) == 0 || (*(a1 + 408) & 1) == 0 || (*(a1 + 440) & 1) == 0 || (*(a1 + 472) & 1) == 0 || (*(a1 + 504) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = *(a1 + 344);
  v6 = *(a1 + 348);
  v7 = *(a1 + 44);
  v8 = *(a1 + 48);
  v9 = (*(*a1 + 40))(a1);
  if (*(a1 + 536) - *(a1 + 528) != *(a1 + 560) - *(a1 + 552) || (v7 - 100000) < 0xFFFE7961 || (v8 - 100000) < 0xFFFE7961)
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v27, "RawCameraException");
    __cxa_throw(v27, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = v9;
  v28 = v4;
  group = dispatch_group_create();
  v29 = dispatch_queue_create("Panasonic Huffman Tile Unpacker Queue", MEMORY[0x277D85CD8]);
  v11 = sub_2337ADCC4(a1);
  v12 = v6 * v5;
  if (v12)
  {
    v13 = v11;
    v14 = 0;
    v15 = 0;
    do
    {
      if ((*(a1 + 376) & 1) == 0)
      {
        sub_233728FA8();
      }

      if ((*(a1 + 440) & 1) == 0)
      {
        sub_233728FA8();
      }

      v16 = *(*(a1 + 416) + v15);
      v18 = v16 + 7;
      v17 = v16 < -7;
      v19 = v16 + 14;
      if (!v17)
      {
        v19 = v18;
      }

      v20 = v19 >> 3;
      v21 = sub_2337274EC(a1, *(*(a1 + 352) + v15), v19 >> 3);
      if (v21)
      {
        if ((*(a1 + 408) & 1) == 0)
        {
          sub_233728FA8();
        }

        if ((*(a1 + 472) & 1) == 0)
        {
          sub_233728FA8();
        }

        if ((*(a1 + 504) & 1) == 0)
        {
          sub_233728FA8();
        }

        v22 = (*(a1 + 384) + v15);
        v23 = *v22;
        LOWORD(v22) = v22[1];
        v24 = *(*(a1 + 448) + v14);
        v25 = *(*(a1 + 480) + v14);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_233728548;
        block[3] = &unk_2789EE8D0;
        block[4] = a1;
        block[5] = v13;
        v32 = v7;
        v33 = v8;
        v34 = v10;
        v35 = v23;
        v36 = v22;
        v37 = v24;
        v38 = v25;
        block[6] = v21;
        block[7] = &v21[v20];
        dispatch_group_async(group, v29, block);
      }

      v15 += 4;
      v14 += 2;
      --v12;
    }

    while (v12);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);

  v28[2](v28);
}

void sub_2337284C0(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPanasonicHuffmanUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_233728548(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = *(a1 + 68);
  v9 = 0;
  sub_2337238F0(&v10, v4, v5);
  v6 = 2 * (*(a1 + 72) * *(a1 + 64));
  v8 = vmovl_u16(*(a1 + 76));
  v7 = *(a1 + 48);
  sub_233727120(v2);
  sub_2337275E0(v2, v3, &v9, v6, &v8, v7);
  free(*(a1 + 48));
}

void *sub_2337285F0(uint64_t a1, int a2, int a3, char **a4, char **a5)
{
  *(a1 + 516) = a2;
  *(a1 + 520) = a3;
  v7 = (a1 + 528);
  if (v7 != a4)
  {
    sub_233723454(v7, *a4, a4[1], (a4[1] - *a4) >> 2);
  }

  result = (a1 + 552);
  if ((a1 + 552) != a5)
  {
    v9 = *a5;
    v10 = a5[1];
    v11 = (v10 - *a5) >> 2;

    return sub_233723454(result, v9, v10, v11);
  }

  return result;
}

uint64_t sub_23372866C(_DWORD *a1)
{
  v1 = a1[17];
  if (((a1[144] + 2 * v1) & 0xFLL) != 0)
  {
    return (2 * (a1[15] + 2 * v1) + 31) & 0x3FFFFFFE0;
  }

  else
  {
    return 2 * (a1[144] + 2 * v1);
  }
}

void sub_2337286A4(os_signpost_id_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v6 = sub_23378E038();
  v7 = v6;
  if (a1 + 1 >= 2 && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPanasonicHuffmanUnpacker", &unk_233945DBE, buf, 2u);
  }

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_233728D84;
  v41[3] = &unk_2789EE800;
  v41[4] = a1;
  v8 = MEMORY[0x2383AC810](v41);
  if ((*(a1 + 216) & 1) == 0 || (*(a1 + 248) & 1) == 0 || (*(a1 + 258) & 1) == 0 || (*(a1 + 262) & 1) == 0 || (*(a1 + 266) & 1) == 0 || (*(a1 + 270) & 1) == 0 || (*(a1 + 274) & 1) == 0 || (*(a1 + 346) & 1) == 0 || (*(a1 + 350) & 1) == 0 || (*(a1 + 376) & 1) == 0 || (*(a1 + 408) & 1) == 0 || (*(a1 + 440) & 1) == 0 || (*(a1 + 472) & 1) == 0 || (*(a1 + 504) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = *(a1 + 44);
  if (v9 - 100000 < 0xFFFE7961 || (v10 = *(a1 + 48), v10 - 100000 < 0xFFFE7961))
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v31, "RawCameraException");
    __cxa_throw(v31, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = *(a1 + 348) * *(a1 + 344);
  if (v11 >> 5 >= 0x271)
  {
    v32 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v32, "RawCameraException");
    __cxa_throw(v32, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v33 = v8;
  group = dispatch_group_create();
  v36 = dispatch_queue_create("Panasonic Huffman Tile Unpacker Queue", MEMORY[0x277D85CD8]);
  if (v11)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      if ((*(a1 + 376) & 1) == 0)
      {
        sub_233728FA8();
      }

      if ((*(a1 + 440) & 1) == 0)
      {
        sub_233728FA8();
      }

      v14 = *(*(a1 + 416) + 4 * v12);
      v16 = v14 + 7;
      v15 = v14 < -7;
      v17 = v14 + 14;
      if (v15)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      if ((*(a1 + 408) & 1) == 0)
      {
        sub_233728FA8();
      }

      if ((*(a1 + 472) & 1) == 0)
      {
        sub_233728FA8();
      }

      if ((*(a1 + 504) & 1) == 0)
      {
        sub_233728FA8();
      }

      v19 = *(a1 + 384);
      v20 = *(v19 + 2 * (v13 - 1));
      v21 = *(*(a1 + 448) + 2 * v12);
      v22 = v9 > v20 && v9 >= v21;
      if (!v22 || ((v23 = *(v19 + 2 * v13), v24 = *(*(a1 + 480) + 2 * v12), v10 > v23) ? (v25 = v10 >= v24) : (v25 = 0), !v25))
      {
        v29 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v29, "RawCameraException");
        __cxa_throw(v29, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v26 = *(*(a1 + 352) + 4 * v12);
      *buf = v20;
      *&buf[4] = v23;
      *&buf[8] = v21;
      *&buf[12] = v24;
      if (sub_23385F470(buf, a3))
      {
        v27 = v18 >> 3;
        v28 = sub_2337274EC(a1, v26, v27);
        if (v28)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_233728E0C;
          block[3] = &unk_2789EE8F0;
          block[4] = a1;
          block[5] = a2;
          block[6] = a3;
          block[7] = a4;
          v39 = *buf;
          block[8] = v28;
          block[9] = &v28[v27];
          dispatch_group_async(group, v36, block);
        }
      }

      ++v12;
      v13 += 2;
    }

    while (v11 != v12);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);

  v33[2](v33);
}

void sub_233728D84(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPanasonicHuffmanUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_233728E0C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  sub_233727120(v2);
  sub_2337275E0(v2, v3, v4, v5, (a1 + 10), v6);
  v7 = a1[8];

  free(v7);
}

void *sub_233728E9C(void *a1)
{
  *a1 = &unk_284902978;
  v2 = a1[69];
  if (v2)
  {
    a1[70] = v2;
    operator delete(v2);
  }

  v3 = a1[66];
  if (v3)
  {
    a1[67] = v3;
    operator delete(v3);
  }

  sub_233729E40((a1 + 24));

  return sub_233723A54(a1);
}

void sub_233728F14(void *a1)
{
  *a1 = &unk_284902978;
  v2 = a1[69];
  if (v2)
  {
    a1[70] = v2;
    operator delete(v2);
  }

  v3 = a1[66];
  if (v3)
  {
    a1[67] = v3;
    operator delete(v3);
  }

  sub_233729E40((a1 + 24));
  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233728FA8()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

uint64_t sub_233728FF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_233726290(result, a4);
  }

  return result;
}

void sub_233729054(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233729070(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_233723580(result, a4);
  }

  return result;
}

void sub_2337290D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2337290EC(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v72 = *v8;
        if (*(a2 - 1) < *v8)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v72;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v76 = v8 + 1;
      v77 = v8[1];
      v78 = v8 + 2;
      v79 = v8[2];
      v80 = *v8;
      v81 = *v8;
      v82 = v79;
      if (v77 >= v81)
      {
        if (v79 < v77)
        {
          v83 = v8;
          *v76 = v79;
          *v78 = v77;
          v84 = v8 + 1;
          v127 = v79 >= v81;
          v81 = v77;
          v82 = v77;
          if (!v127)
          {
            goto LABEL_181;
          }

LABEL_183:
          v133 = *(a2 - 1);
          if (v82 > v133)
          {
            *v78 = v133;
            *(a2 - 1) = v77;
            v134 = *v78;
            v135 = *v76;
            if (v134 < v135)
            {
              v8[1] = v134;
              v8[2] = v135;
              v136 = *v8;
              if (v134 < *v8)
              {
                *v8 = v134;
                v8[1] = v136;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v79 < v77)
        {
          v83 = v8;
          v84 = v8 + 2;
          v77 = *v8;
          goto LABEL_181;
        }

        *v8 = v77;
        v8[1] = v80;
        v83 = v8 + 1;
        v84 = v8 + 2;
        v77 = v80;
        if (v79 < v81)
        {
LABEL_181:
          *v83 = v79;
          *v84 = v80;
          v82 = v81;
          goto LABEL_183;
        }
      }

      v77 = v79;
      goto LABEL_183;
    }

    if (v9 == 5)
    {

      return sub_233729A10(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v85 = v8 + 1;
      v87 = v8 == a2 || v85 == a2;
      if (a4)
      {
        if (!v87)
        {
          v88 = 0;
          v89 = v8;
          do
          {
            v91 = *v89;
            v90 = v89[1];
            v89 = v85;
            if (v90 < v91)
            {
              v92 = v88;
              while (1)
              {
                *(v8 + v92 + 8) = v91;
                if (!v92)
                {
                  break;
                }

                v91 = *(v8 + v92 - 8);
                v92 -= 8;
                if (v90 >= v91)
                {
                  v93 = (v8 + v92 + 8);
                  goto LABEL_129;
                }
              }

              v93 = v8;
LABEL_129:
              *v93 = v90;
            }

            v85 = v89 + 1;
            v88 += 8;
          }

          while (v89 + 1 != a2);
        }
      }

      else if (!v87)
      {
        do
        {
          v129 = *v7;
          v128 = v7[1];
          v7 = v85;
          if (v128 < v129)
          {
            v130 = v85;
            do
            {
              *v130 = v129;
              v129 = *(v130 - 2);
              --v130;
            }

            while (v128 < v129);
            *v130 = v128;
          }

          ++v85;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v94 = (v9 - 2) >> 1;
        v95 = v94;
        do
        {
          v96 = v95;
          if (v94 >= v95)
          {
            v97 = (2 * v95) | 1;
            v98 = &v8[v97];
            v99 = *v98;
            if (2 * v96 + 2 < v9)
            {
              v100 = *v98;
              if (v100 < v98[1])
              {
                v99 = v98[1];
                ++v98;
                v97 = 2 * v96 + 2;
              }
            }

            result = &v8[v96];
            v101 = *result;
            v102 = *result;
            if (v102 <= v99)
            {
              do
              {
                v103 = v98;
                *result = v99;
                if (v94 < v97)
                {
                  break;
                }

                v104 = (2 * v97) | 1;
                v98 = &v8[v104];
                v105 = 2 * v97 + 2;
                v99 = *v98;
                if (v105 < v9)
                {
                  v106 = *v98;
                  if (v106 < v98[1])
                  {
                    v99 = v98[1];
                    ++v98;
                    v104 = v105;
                  }
                }

                result = v103;
                v97 = v104;
              }

              while (v102 <= v99);
              *v103 = v101;
            }
          }

          v95 = v96 - 1;
        }

        while (v96);
        do
        {
          v107 = 0;
          v108 = *v8;
          v109 = v8;
          do
          {
            v110 = &v109[v107];
            v111 = v110 + 1;
            v112 = v110[1];
            v113 = (2 * v107) | 1;
            v107 = 2 * v107 + 2;
            if (v107 >= v9)
            {
              v107 = v113;
            }

            else
            {
              v116 = v110[2];
              v114 = v110 + 2;
              v115 = v116;
              result = v112;
              if (v112 >= v116)
              {
                v107 = v113;
              }

              else
              {
                v112 = v115;
                v111 = v114;
              }
            }

            *v109 = v112;
            v109 = v111;
          }

          while (v107 <= ((v9 - 2) >> 1));
          if (v111 == --a2)
          {
            *v111 = v108;
          }

          else
          {
            *v111 = *a2;
            *a2 = v108;
            v117 = (v111 - v8 + 8) >> 3;
            v118 = v117 < 2;
            v119 = v117 - 2;
            if (!v118)
            {
              v120 = v119 >> 1;
              v121 = &v8[v120];
              v122 = *v121;
              v123 = *v111;
              v124 = *v111;
              if (v124 > *v121)
              {
                do
                {
                  v125 = v121;
                  *v111 = v122;
                  if (!v120)
                  {
                    break;
                  }

                  v120 = (v120 - 1) >> 1;
                  v121 = &v8[v120];
                  v122 = *v121;
                  v111 = v125;
                }

                while (v124 > *v121);
                *v125 = v123;
              }
            }
          }

          v118 = v9-- <= 2;
        }

        while (!v118);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      v14 = *v8;
      v15 = *v10;
      if (v15 >= *v8)
      {
        if (v12 < v15)
        {
          *v10 = v12;
          *(a2 - 1) = v13;
          v19 = *v8;
          if (*v10 < *v8)
          {
            *v8 = *v10;
            *v10 = v19;
          }
        }
      }

      else
      {
        if (v12 < v15)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        v21 = *v8;
        *v8 = v13;
        *v10 = v14;
        v22 = *(a2 - 1);
        if (v21 > v22)
        {
          *v10 = v22;
LABEL_27:
          *(a2 - 1) = v14;
        }
      }

      v23 = v10 - 1;
      v24 = *(v10 - 1);
      v25 = v8[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v8[1];
          if (*v23 < v27)
          {
            v8[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 < v24)
        {
          v8[1] = v26;
          goto LABEL_39;
        }

        v30 = v8[1];
        v8[1] = v24;
        *v23 = v25;
        v31 = *(a2 - 2);
        if (v30 > v31)
        {
          *v23 = v31;
LABEL_39:
          *(a2 - 2) = v25;
        }
      }

      v34 = v10[1];
      v32 = v10 + 1;
      v33 = v34;
      v35 = v8[2];
      v36 = v34;
      v37 = *(a2 - 3);
      if (v34 >= v35)
      {
        if (v37 < v36)
        {
          *v32 = v37;
          *(a2 - 3) = v33;
          v38 = v8[2];
          if (*v32 < v38)
          {
            v8[2] = *v32;
            *v32 = v38;
          }
        }
      }

      else
      {
        if (v37 < v36)
        {
          v8[2] = v37;
          goto LABEL_48;
        }

        v39 = v8[2];
        v8[2] = v33;
        *v32 = v35;
        v40 = *(a2 - 3);
        if (v39 > v40)
        {
          *v32 = v40;
LABEL_48:
          *(a2 - 3) = v35;
        }
      }

      v41 = *v11;
      v42 = *v23;
      v43 = *v11;
      v44 = *v23;
      v45 = *v32;
      v46 = *v32;
      if (v43 >= v44)
      {
        if (v46 >= v43)
        {
          goto LABEL_56;
        }

        *v11 = v45;
        *v32 = v41;
        v32 = v11;
        v41 = v42;
        if (v46 >= v44)
        {
          v41 = v45;
          goto LABEL_56;
        }
      }

      else if (v46 >= v43)
      {
        *v23 = v41;
        *v11 = v42;
        v23 = v11;
        v41 = v45;
        if (v46 >= v44)
        {
          v41 = v42;
LABEL_56:
          v47 = *v8;
          *v8 = v41;
          *v11 = v47;
          goto LABEL_57;
        }
      }

      *v23 = v45;
      *v32 = v42;
      goto LABEL_56;
    }

    v16 = *v8;
    v17 = *v11;
    v18 = *v8;
    if (v18 >= *v11)
    {
      if (v12 < v18)
      {
        *v8 = v12;
        *(a2 - 1) = v16;
        v20 = *v11;
        if (*v8 < *v11)
        {
          *v11 = *v8;
          *v8 = v20;
        }
      }

      goto LABEL_57;
    }

    if (v12 < v18)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v17;
      goto LABEL_57;
    }

    v28 = *v11;
    *v11 = v16;
    *v8 = v17;
    v29 = *(a2 - 1);
    if (v28 > v29)
    {
      *v8 = v29;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v48 = *v8;
    if (a4)
    {
      v49 = *v8;
LABEL_60:
      v50 = 0;
      do
      {
        v51 = v8[++v50];
      }

      while (v49 > v51);
      v52 = &v8[v50];
      v53 = a2;
      if (v50 == 1)
      {
        v53 = a2;
        do
        {
          if (v52 >= v53)
          {
            break;
          }

          v55 = *(v53-- - 4);
        }

        while (v55 >= v49);
      }

      else
      {
        do
        {
          v54 = *(v53-- - 4);
        }

        while (v54 >= v49);
      }

      if (v52 >= v53)
      {
        v61 = v52 - 1;
      }

      else
      {
        v56 = *v53;
        v57 = &v8[v50];
        v58 = v53;
        do
        {
          *v57 = v56;
          *v58 = v51;
          do
          {
            v59 = v57[1];
            ++v57;
            v51 = v59;
          }

          while (v49 > v59);
          do
          {
            v60 = *--v58;
            v56 = v60;
          }

          while (v49 <= v60);
        }

        while (v57 < v58);
        v61 = v57 - 1;
      }

      if (v61 != v8)
      {
        *v8 = *v61;
      }

      *v61 = v48;
      if (v52 < v53)
      {
        goto LABEL_81;
      }

      v62 = sub_233729B74(v8, v61);
      v8 = v61 + 1;
      result = sub_233729B74(v61 + 1, a2);
      if (result)
      {
        a2 = v61;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_81:
        result = sub_2337290EC(v7, v61, a3, a4 & 1);
        a4 = 0;
        v8 = v61 + 1;
      }
    }

    else
    {
      v49 = *v8;
      if (*(v8 - 4) < v48)
      {
        goto LABEL_60;
      }

      if (v49 >= *(a2 - 4))
      {
        v64 = v8 + 1;
        do
        {
          v8 = v64;
          if (v64 >= a2)
          {
            break;
          }

          ++v64;
        }

        while (v49 >= *v8);
      }

      else
      {
        do
        {
          v63 = *(v8++ + 4);
        }

        while (v49 >= v63);
      }

      v65 = a2;
      if (v8 < a2)
      {
        v65 = a2;
        do
        {
          v66 = *(v65-- - 4);
        }

        while (v49 < v66);
      }

      if (v8 < v65)
      {
        v67 = *v8;
        v68 = *v65;
        do
        {
          *v8 = v68;
          *v65 = v67;
          do
          {
            v69 = v8[1];
            ++v8;
            v67 = v69;
          }

          while (v49 >= v69);
          do
          {
            v70 = *--v65;
            v68 = v70;
          }

          while (v49 < v70);
        }

        while (v8 < v65);
      }

      v71 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v71;
      }

      a4 = 0;
      *v71 = v48;
    }
  }

  v73 = *v8;
  v74 = v8[1];
  v75 = *(a2 - 1);
  if (v74 >= *v8)
  {
    if (v75 < v74)
    {
      v8[1] = v75;
      *(a2 - 1) = v74;
      v126 = *v8;
      if (v8[1] < *v8)
      {
        *v8 = v8[1];
        v8[1] = v126;
      }
    }
  }

  else
  {
    if (v75 >= v74)
    {
      v131 = *v8;
      *v8 = v74;
      v8[1] = v73;
      v132 = *(a2 - 1);
      if (v131 <= v132)
      {
        return result;
      }

      v8[1] = v132;
    }

    else
    {
      *v8 = v75;
    }

    *(a2 - 1) = v73;
  }

  return result;
}

uint64_t *sub_233729A10(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a2;
  v8 = *a3;
  v9 = *a3;
  if (v7 >= *result)
  {
    if (v9 >= v7)
    {
      v10 = *a3;
      v5 = *a3;
    }

    else
    {
      *a2 = v8;
      *a3 = v5;
      v11 = *result;
      v10 = v7;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
        v10 = *a3;
      }
    }
  }

  else
  {
    v10 = *result;
    if (v9 >= v7)
    {
      *result = v5;
      *a2 = v6;
      v5 = *a3;
      if (*a3 >= v10)
      {
        v10 = *a3;
        goto LABEL_12;
      }

      *a2 = v5;
    }

    else
    {
      *result = v8;
    }

    *a3 = v6;
    v5 = v6;
  }

LABEL_12:
  if (v10 > *a4)
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL sub_233729B74(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = *a1;
      v5 = a1[1];
      v6 = *(a2 - 1);
      if (v5 >= *a1)
      {
        if (v6 < v5)
        {
          a1[1] = v6;
          *(a2 - 1) = v5;
          v23 = *a1;
          if (a1[1] < *a1)
          {
            *a1 = a1[1];
            a1[1] = v23;
          }
        }

        return 1;
      }

      if (v6 >= v5)
      {
        v34 = *a1;
        *a1 = v5;
        a1[1] = v4;
        v35 = *(a2 - 1);
        if (v34 <= v35)
        {
          return 1;
        }

        a1[1] = v35;
      }

      else
      {
        *a1 = v6;
      }

      *(a2 - 1) = v4;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_233729A10(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v14 = a1 + 1;
    v15 = a1[1];
    v16 = a1 + 2;
    v17 = a1[2];
    v18 = *a1;
    v19 = *a1;
    v20 = v17;
    if (v15 >= v19)
    {
      if (v17 < v15)
      {
        v21 = a1;
        *v14 = v17;
        *v16 = v15;
        v22 = a1 + 1;
        v33 = v17 >= v19;
        v19 = v15;
        v20 = v15;
        if (v33)
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (v17 < v15)
      {
        v21 = a1;
        v22 = a1 + 2;
        v15 = *a1;
LABEL_45:
        *v21 = v17;
        *v22 = v18;
        v20 = v19;
LABEL_47:
        v36 = *(a2 - 1);
        if (v20 > v36)
        {
          *v16 = v36;
          *(a2 - 1) = v15;
          v37 = *v16;
          v38 = *v14;
          if (v37 < v38)
          {
            a1[1] = v37;
            a1[2] = v38;
            v39 = *a1;
            if (v37 < *a1)
            {
              *a1 = v37;
              a1[1] = v39;
            }
          }
        }

        return 1;
      }

      *a1 = v15;
      a1[1] = v18;
      v21 = a1 + 1;
      v22 = a1 + 2;
      v15 = v18;
      if (v17 < v19)
      {
        goto LABEL_45;
      }
    }

    v15 = v17;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *a1;
    if (*(a2 - 1) < *a1)
    {
      *a1 = *(a2 - 1);
      *(a2 - 1) = v3;
    }

    return 1;
  }

LABEL_13:
  v8 = a1 + 2;
  v7 = a1[2];
  v9 = a1[1];
  v10 = *a1;
  v11 = *a1;
  if (v9 >= v11)
  {
    if (v7 >= v9)
    {
      goto LABEL_26;
    }

    a1[1] = v7;
    *v8 = v9;
    v12 = a1;
    v13 = a1 + 1;
LABEL_24:
    if (v7 >= v11)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v12 = a1;
  v13 = a1 + 2;
  if (v7 >= v9)
  {
    *a1 = v9;
    a1[1] = v10;
    v12 = a1 + 1;
    v13 = a1 + 2;
    goto LABEL_24;
  }

LABEL_25:
  *v12 = v7;
  *v13 = v10;
LABEL_26:
  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  for (i = 24; ; i += 8)
  {
    v27 = *v24;
    v28 = *v8;
    v29 = *v24;
    if (v29 < v28)
    {
      v30 = i;
      while (1)
      {
        *(a1 + v30) = v28;
        v31 = v30 - 8;
        if (v30 == 8)
        {
          break;
        }

        v28 = *(a1 + v30 - 16);
        v30 -= 8;
        if (v29 >= v28)
        {
          v32 = (a1 + v31);
          goto LABEL_34;
        }
      }

      v32 = a1;
LABEL_34:
      *v32 = v27;
      if (++v25 == 8)
      {
        break;
      }
    }

    v8 = v24++;
    if (v24 == a2)
    {
      return 1;
    }
  }

  return v24 + 1 == a2;
}

uint64_t sub_233729E40(uint64_t a1)
{
  if (*(a1 + 312) == 1)
  {
    v2 = *(a1 + 288);
    if (v2)
    {
      *(a1 + 296) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 280) == 1)
  {
    v3 = *(a1 + 256);
    if (v3)
    {
      *(a1 + 264) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 248) == 1)
  {
    v4 = *(a1 + 224);
    if (v4)
    {
      *(a1 + 232) = v4;
      operator delete(v4);
    }
  }

  if (*(a1 + 216) == 1)
  {
    v5 = *(a1 + 192);
    if (v5)
    {
      *(a1 + 200) = v5;
      operator delete(v5);
    }
  }

  if (*(a1 + 184) == 1)
  {
    v6 = *(a1 + 160);
    if (v6)
    {
      *(a1 + 168) = v6;
      operator delete(v6);
    }
  }

  if (*(a1 + 144) == 1)
  {
    v7 = *(a1 + 120);
    if (v7)
    {
      *(a1 + 128) = v7;
      operator delete(v7);
    }
  }

  if (*(a1 + 112) == 1)
  {
    v8 = *(a1 + 88);
    if (v8)
    {
      *(a1 + 96) = v8;
      operator delete(v8);
    }
  }

  if (*(a1 + 56) == 1)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      *(a1 + 40) = v9;
      operator delete(v9);
    }
  }

  if (*(a1 + 24) == 1)
  {
    v10 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v10;
      operator delete(v10);
    }
  }

  return a1;
}

__CFString *sub_233729FBC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  if (*(a1 + 23) < 0 && (v6 = *a1) == 0)
  {
    v7 = &stru_284938540;
  }

  else
  {
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, a4, a5);
  }

  return v7;
}

void *sub_23372A01C(void *a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284902A70;
  if (v3)
  {
    v9 = objc_msgSend_mutableCopy(v3, v4, v5, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v4, v5, v6, v7);
  }

  v10 = a1[1];
  a1[1] = v9;

  return a1;
}

uint64_t sub_23372A0C0(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = MEMORY[0x2383AC810](a2);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23372A100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v2 = (*(v1 + 16))(v1, @"methodNumber");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = objc_msgSend_shortValue(v2, v3, v4, v5, v6);

  return v7;
}

void sub_23372A208(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _WORD **a6@<X8>)
{
  v11 = 0;
  v8 = objc_msgSend_UTF8String(off_27DE377C8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v8);
  sub_23372A3F8(a1, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  sub_233730514(a6, 4);
  sub_23372A488(__p, "black0");
  if (a6[1] == *a6)
  {
    sub_2337306B0();
  }

  sub_23372A3F8(a1, __p, *a6);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "black1");
  if ((a6[1] - *a6) <= 2)
  {
    sub_2337306B0();
  }

  sub_23372A3F8(a1, __p, *a6 + 1);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "black2");
  if ((a6[1] - *a6) <= 4)
  {
    sub_2337306B0();
  }

  sub_23372A3F8(a1, __p, *a6 + 2);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "black3");
  if ((a6[1] - *a6) <= 6)
  {
    sub_2337306B0();
  }

  sub_23372A3F8(a1, __p, *a6 + 3);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23372A398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372A3F8(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v4 = sub_23372D8DC(a1, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = objc_msgSend_longLongValue(v4, v5, v6, v7, v8);
    v11 = 0xFFFFLL;
    if (v10 < 0xFFFF)
    {
      v11 = v10;
    }

    *a3 = v11 & ~(v11 >> 63);
  }

  return isKindOfClass & 1;
}

_BYTE *sub_23372A488(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2337304FC();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_23372A540(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 4095;
  v6 = objc_msgSend_UTF8String(off_27DE377D0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A3F8(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372A5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372A5C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 1.0;
  v6 = objc_msgSend_UTF8String(off_27DE377D8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372A634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372A650(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23372D8DC(a1, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    objc_msgSend_doubleValue(v4, v5, v6, v7, v8);
    *a3 = v10;
  }

  return isKindOfClass & 1;
}

void sub_23372A6C8(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v33 = 4095;
  v8 = objc_msgSend_UTF8String(off_27DE377E0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v8);
  sub_23372A3F8(a1, __p, &v33);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  sub_233730514(a6, 4);
  v13 = objc_msgSend_UTF8String(off_27DE377E8[0], v9, v10, v11, v12);
  sub_23372A488(__p, v13);
  v14 = sub_23372A3F8(a1, __p, *a6);
  v19 = v14;
  if (v32 < 0)
  {
    operator delete(__p[0]);
    if (!v19)
    {
      return;
    }
  }

  else if (!v14)
  {
    return;
  }

  v20 = objc_msgSend_UTF8String(off_27DE377F0[0], v15, v16, v17, v18);
  sub_23372A488(__p, v20);
  sub_23372A3F8(a1, __p, (*a6 + 2));
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = objc_msgSend_UTF8String(off_27DE377F8[0], v21, v22, v23, v24);
  sub_23372A488(__p, v25);
  sub_23372A3F8(a1, __p, (*a6 + 4));
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v30 = objc_msgSend_UTF8String(off_27DE37800[0], v26, v27, v28, v29);
  sub_23372A488(__p, v30);
  sub_23372A3F8(a1, __p, (*a6 + 6));
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23372A848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372A8A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v6 = objc_msgSend_UTF8String(off_27DE37808[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A92C(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372A910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372A92C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = sub_23372D8DC(a1, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    *a3 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);
  }

  return isKindOfClass & 1;
}

void sub_23372A9A4(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = getenv("RAWCAMERA_M1");
  if (v4)
  {
    v9 = v4;
    sub_233730758(&v14, 9uLL);
    if (sscanf(v9, "{ { %lg , %lg , %lg } , { %lg , %lg , %lg } , { %lg , %lg , %lg } }", v14, v14 + 8, v14 + 16, v14 + 24, v14 + 32, v14 + 40, v14 + 48, v14 + 56, v14 + 64) == 9)
    {
      sub_2337DF9C8(a2, 3u, 3u);
      sub_2337E0E4C(a2, &v14);
      v10 = v14;
      if (!v14)
      {
        return;
      }

      v15 = v14;
      goto LABEL_14;
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }
  }

  v11 = objc_msgSend_UTF8String(off_27DE37810[0], v5, v6, v7, v8);
  sub_23372A488(__p, v11);
  sub_23372AB50(a1, __p, &v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_2337E003C(&v14))
  {
    sub_2337DF874(a2, &v14);
  }

  else
  {
    sub_2337DFC28(3u, a2);
  }

  v10 = v15;
  if (v15)
  {
    v16 = v15;
LABEL_14:
    operator delete(v10);
  }
}

void sub_23372AAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  v26 = *(v23 + 8);
  if (v26)
  {
    *(v23 + 16) = v26;
    operator delete(v26);
  }

  v27 = *(v24 - 64);
  if (v27)
  {
    *(v24 - 56) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372AB50(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  if (sub_23372DB30(a1, a2, &__p))
  {
    v4 = ((v7 - __p) >> 3) / 3uLL;
    sub_233723C18(&v5, &v4);
    sub_2337DF9C8(a3, v5, 3u);
    sub_2337E0E4C(a3, &__p);
  }

  else
  {
    sub_2337DFDF8(a3);
  }

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_23372ABF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v15 = *(v13 + 8);
  if (v15)
  {
    *(v13 + 16) = v15;
    operator delete(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372AC2C(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = getenv("RAWCAMERA_M2");
  if (v4)
  {
    v9 = v4;
    sub_233730758(&v14, 9uLL);
    if (sscanf(v9, "{ { %lg , %lg , %lg } , { %lg , %lg , %lg } , { %lg , %lg , %lg } }", v14, v14 + 8, v14 + 16, v14 + 24, v14 + 32, v14 + 40, v14 + 48, v14 + 56, v14 + 64) == 9)
    {
      sub_2337DF9C8(a2, 3u, 3u);
      sub_2337E0E4C(a2, &v14);
      v10 = v14;
      if (!v14)
      {
        return;
      }

      v15 = v14;
      goto LABEL_14;
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }
  }

  v11 = objc_msgSend_UTF8String(off_27DE37818[0], v5, v6, v7, v8);
  sub_23372A488(__p, v11);
  sub_23372AB50(a1, __p, &v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_2337E003C(&v14))
  {
    sub_2337DF874(a2, &v14);
  }

  else
  {
    sub_2337DFC28(3u, a2);
  }

  v10 = v15;
  if (v15)
  {
    v16 = v15;
LABEL_14:
    operator delete(v10);
  }
}

void sub_23372AD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  v26 = *(v23 + 8);
  if (v26)
  {
    *(v23 + 16) = v26;
    operator delete(v26);
  }

  v27 = *(v24 - 64);
  if (v27)
  {
    *(v24 - 56) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372ADD8(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = objc_msgSend_UTF8String(off_27DE37820[0], a2, a3, a4, a5);
  sub_23372A488(__p, v8);
  sub_23372AB50(a1, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_2337E003C(&v11))
  {
    sub_2337DF874(a6, &v11);
  }

  else
  {
    sub_2337DFDF8(a6);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_23372AE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372AEA0(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = objc_msgSend_UTF8String(off_27DE37828[0], a2, a3, a4, a5);
  sub_23372A488(__p, v8);
  sub_23372AB50(a1, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_2337E003C(&v11))
  {
    sub_2337DF874(a6, &v11);
  }

  else
  {
    sub_2337DFDF8(a6);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_23372AF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372AF68(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = objc_msgSend_UTF8String(off_27DE37830[0], a2, a3, a4, a5);
  sub_23372A488(&__p, v8);
  sub_23372AB50(a1, &__p, &v23);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  if (sub_2337E003C(&v23) == 3 && sub_2337E0044(&v23) == 3)
  {
    sub_2337DF874(a6, &v23);
    goto LABEL_15;
  }

  v22 = 0.0;
  v13 = objc_msgSend_UTF8String(off_27DE37830[0], v9, v10, v11, v12);
  sub_23372A488(&__p, v13);
  v14 = sub_23372A650(a1, &__p, &v22);
  v15 = v14;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_14:
    sub_2337DFC28(3u, a6);
    goto LABEL_15;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_8:
  sub_2337DFC28(3u, &v16);
  sub_2337E0244(&v16, &__p, v22);
  sub_2337E004C(&v23, &__p);
  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  sub_2337DF874(a6, &v23);
LABEL_15:
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }
}

void sub_23372B0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  v18 = *(v16 - 56);
  if (v18)
  {
    *(v16 - 48) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372B13C(uint64_t a1)
{
  if (sub_23372A100(a1) <= 6)
  {
    v11 = 1;
    v7 = objc_msgSend_UTF8String(off_27DE37838[0], v2, v3, v4, v5);
    sub_23372A488(__p, v7);
    sub_23372A92C(a1, __p, &v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_23372B1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372B1DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v6 = objc_msgSend_UTF8String(off_27DE37840[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A92C(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372B244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23372B260(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v6 = objc_msgSend_UTF8String(off_27DE37848[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A3F8(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10 != 0;
}

void sub_23372B2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372B2EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v6 = objc_msgSend_UTF8String(off_27DE37850[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A92C(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372B354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372B370(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 1;
  v6 = objc_msgSend_UTF8String(off_27DE37858[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A92C(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372B3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372B3F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 1;
  v6 = objc_msgSend_UTF8String(off_27DE37860[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A92C(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372B464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372B480(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 1;
  v6 = objc_msgSend_UTF8String(off_27DE37868[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A92C(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372B4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23372B508(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 1;
  v6 = objc_msgSend_UTF8String(off_27DE37870[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A3F8(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10 != 0;
}

void sub_23372B57C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372B598(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.08;
  v6 = objc_msgSend_UTF8String(off_27DE37878[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 0.0), 0.2);
}

void sub_23372B624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372B640(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.12;
  v6 = objc_msgSend_UTF8String(off_27DE37880[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 0.0), 0.3);
}

void sub_23372B6CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372B6E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37888[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372B750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372B76C(uint64_t a1)
{
  if (sub_23372A100(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v10 = 0.9;
  v6 = objc_msgSend_UTF8String(off_27DE37890[0], v2, v3, v4, v5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372B80C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372B838(uint64_t a1)
{
  if (sub_23372A100(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37898[0], v2, v3, v4, v5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372B8CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372B8F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 1.0;
  v6 = objc_msgSend_UTF8String(off_27DE378A0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372B964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372B980(uint64_t a1)
{
  v13 = 0.0;
  v2 = getenv("RAWCAMERA_HUEMAG_MR");
  if (!v2)
  {
    v7 = objc_msgSend_UTF8String(off_27DE378A8[0], v3, v4, v5, v6);
    sub_23372A488(__p, v7);
    v8 = sub_23372A650(a1, __p, &v13);
    v9 = v8;
    if (v12 < 0)
    {
      operator delete(__p[0]);
      if (v9)
      {
        return v13;
      }
    }

    else if (v8)
    {
      return v13;
    }

    return 0.0;
  }

  sscanf(v2, "%lf", &v13);
  return v13;
}

void sub_23372BA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372BA40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE378B0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  v7 = sub_23372A650(a1, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  result = v11;
  if (!v7)
  {
    return 0.0;
  }

  return result;
}

void sub_23372BAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372BAD4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE378B8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  v7 = sub_23372A650(a1, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  result = v11;
  if (!v7)
  {
    return 0.0;
  }

  return result;
}

void sub_23372BB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372BB68(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE378C0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  v7 = sub_23372A650(a1, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  result = v11;
  if (!v7)
  {
    return 0.0;
  }

  return result;
}

void sub_23372BBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372BBFC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE378C8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  v7 = sub_23372A650(a1, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  result = v11;
  if (!v7)
  {
    return 0.0;
  }

  return result;
}

void sub_23372BC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372BC90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE378D0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  v7 = sub_23372A650(a1, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  result = v11;
  if (!v7)
  {
    return 0.0;
  }

  return result;
}

void sub_23372BD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372BD24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 1;
  v6 = objc_msgSend_UTF8String(off_27DE378D8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A92C(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372BD90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372BDAC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 1;
  v6 = objc_msgSend_UTF8String(off_27DE378E0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A92C(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372BE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372BE34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE378E8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, -1.0), 1.0);
}

void sub_23372BEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372BEC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE378F0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, -1.0), 1.0);
}

void sub_23372BF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372BF5C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE378F8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, -1.0), 1.0);
}

void sub_23372BFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372BFF0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v6 = objc_msgSend_UTF8String(off_27DE37900[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372C084(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 >= 0x9C41)
  {
    return 40000;
  }

  else
  {
    return v10;
  }
}

void sub_23372C068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372C084(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = sub_23372D8DC(a1, a2);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9 = objc_msgSend_longLongValue(v4, v5, v6, v7, v8), !HIDWORD(v9)))
  {
    *a3 = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

double sub_23372C108(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 1.0;
  v6 = objc_msgSend_UTF8String(off_27DE37908[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372C174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C190(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 1.0;
  v6 = objc_msgSend_UTF8String(off_27DE37910[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372C1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C218(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 2.67;
  v6 = objc_msgSend_UTF8String(off_27DE37918[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 0.0), 5.0);
}

void sub_23372C2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C2BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 26.15;
  v6 = objc_msgSend_UTF8String(off_27DE37920[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 0.3), 200.0);
}

void sub_23372C348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C364(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 2.2;
  v6 = objc_msgSend_UTF8String(off_27DE37928[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 1.2), 2.3);
}

void sub_23372C3F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C40C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37930[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372C474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C490(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 400.0;
  v6 = objc_msgSend_UTF8String(off_27DE37938[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372C4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C518(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37940[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372C580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C59C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37948[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 0.0), 5.0);
}

void sub_23372C614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C630(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 1.5;
  v6 = objc_msgSend_UTF8String(off_27DE37950[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 0.0), 5.0);
}

void sub_23372C6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C6C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 3.0;
  v6 = objc_msgSend_UTF8String(off_27DE37958[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 0.0), 10.0);
}

void sub_23372C744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C760(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 4.0;
  v6 = objc_msgSend_UTF8String(off_27DE37960[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372C7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C7E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.00145;
  v6 = objc_msgSend_UTF8String(off_27DE37968[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372C860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C87C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.004;
  v6 = objc_msgSend_UTF8String(off_27DE37970[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372C8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C910(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0031;
  v6 = objc_msgSend_UTF8String(off_27DE37978[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372C988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C9A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.027;
  v6 = objc_msgSend_UTF8String(off_27DE37980[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372CA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CA38(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 4.0;
  v6 = objc_msgSend_UTF8String(off_27DE37988[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372CAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CAC0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 2.0;
  v6 = objc_msgSend_UTF8String(off_27DE37990[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 1.0), 10.0);
}

void sub_23372CB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CB58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 24.0;
  v6 = objc_msgSend_UTF8String(off_27DE37998[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372CBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CBE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.27;
  v6 = objc_msgSend_UTF8String(off_27DE379A0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 0.0), 0.75);
}

void sub_23372CC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CC84(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.27;
  v6 = objc_msgSend_UTF8String(off_27DE379A8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 0.0), 0.75);
}

void sub_23372CD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CD28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0025;
  v6 = objc_msgSend_UTF8String(off_27DE379B0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 0.0), 0.02);
}

void sub_23372CDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CDD0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0025;
  v6 = objc_msgSend_UTF8String(off_27DE379B8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 0.0), 0.02);
}

void sub_23372CE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CE78(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE379C0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372CEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CEFC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.15;
  v6 = objc_msgSend_UTF8String(off_27DE379C8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372CF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CF88(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.43;
  v6 = objc_msgSend_UTF8String(off_27DE379D0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372D000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D01C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0883;
  v6 = objc_msgSend_UTF8String(off_27DE379D8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372D094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D0B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.000028;
  v6 = objc_msgSend_UTF8String(off_27DE379E0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372D128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D144(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0000000431;
  v6 = objc_msgSend_UTF8String(off_27DE379E8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372D1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D1D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.8725;
  v6 = objc_msgSend_UTF8String(off_27DE379F0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372D250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D26C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.00017;
  v6 = objc_msgSend_UTF8String(off_27DE379F8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372D2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D300(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0000069973;
  v6 = objc_msgSend_UTF8String(off_27DE37A00[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372D378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D394(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 400.0;
  v6 = objc_msgSend_UTF8String(off_27DE37A08[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372D400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D41C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 2.0;
  v6 = objc_msgSend_UTF8String(off_27DE37A10[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372D488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D4A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37A18[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372D50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372D528(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 3;
  v6 = objc_msgSend_UTF8String(off_27DE37A20[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A3F8(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 >= 0xAuLL)
  {
    return 3;
  }

  else
  {
    return dword_233903FE4[v10];
  }
}

void sub_23372D5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23372D5CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v6 = objc_msgSend_UTF8String(off_27DE37A28[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A3F8(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10 == 1;
}

void sub_23372D63C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D658(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37A30[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372D6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372D88C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 8);
  if (v17)
  {
    sub_2337239E8(v17);
  }

  _Unwind_Resume(exception_object);
}

id sub_23372D8DC(uint64_t a1, uint64_t a2)
{
  v24 = sub_23372A100(a1);
  v4 = sub_2337584D4(&v24);
  if (*(a2 + 23) >= 0)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%s_%d", v6, v7, a2, v4);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%s_%d", v6, v7, *a2, v4);
  }
  v8 = ;
  v9 = sub_23372FF44(a1);
  v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v8, v11, v12);

  if (v13)
  {
    v17 = sub_233730154(a1, v13);
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, a2, v15, v16);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, *a2, v15, v16);
    }
    v18 = ;

    v19 = sub_23372FF44(a1);
    v13 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v18, v21, v22);

    v17 = sub_233730154(a1, v13);
    v8 = v18;
  }

  return v17;
}

void sub_23372DA58(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  v8 = objc_msgSend_UTF8String(off_27DE37A40[0], a2, a3, a4, a5);
  sub_23372A488(__p, v8);
  v9 = sub_23372DB30(a1, __p, v13);
  v10 = v9;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else if (v9)
  {
LABEL_3:
    *a6 = *v13;
    *(a6 + 16) = v14;
    return;
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }
}

void sub_23372DAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23372DB30(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = sub_23372D8DC(a1, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v10 = objc_msgSend_count(v5, v6, v7, v8, v9);
    v23 = 0;
    sub_233731694(&__p, v10);
    if (v10)
    {
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = objc_msgSend_objectAtIndexedSubscript_(v5, v11, v15, v12, v13, v23);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        objc_msgSend_doubleValue(v16, v17, v18, v19, v20);
        if (v15 >= (v25 - __p) >> 3)
        {
          sub_2337306B0();
        }

        *(__p + v15) = v21;

        v14 = ++v15 >= v10;
        if (v10 == v15)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      if (&__p != a3)
      {
        sub_23373176C(a3, __p, v25, (v25 - __p) >> 3);
      }

      v14 = 1;
    }

    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_23372DC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23372DCD0(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v8 = objc_msgSend_UTF8String(off_27DE37A48[0], a2, a3, a4, a5);
  sub_23372A488(__p, v8);
  v9 = sub_23372DB30(a1, __p, &v20);
  v10 = v9;
  if (v19 < 0)
  {
    operator delete(__p[0]);
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  else if (!v9)
  {
    goto LABEL_4;
  }

  v12 = v20;
  v11 = v21;
  v13 = v21 - v20;
  if ((((v21 - v20) >> 3) - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_4:
    sub_2337DF868(a6);
    goto LABEL_10;
  }

  v14 = v13 >> 3;
  sub_2337DF9C8(a6, v13 >> 3, v13 >> 3);
  sub_2337DFFC4(a6);
  if (v11 != v12)
  {
    v15 = 0;
    do
    {
      v16 = *(v20 + v15);
      __p[0] = sub_2337DFCEC(a6, v15);
      __p[1] = v17;
      *sub_2337DFD6C(__p, v15++) = v16;
    }

    while (v15 < v14);
  }

LABEL_10:
  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_23372DDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  v18 = *(v16 + 8);
  if (v18)
  {
    *(v16 + 16) = v18;
    operator delete(v18);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372DE48(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  v8 = objc_msgSend_UTF8String(off_27DE37A50[0], a2, a3, a4, a5);
  sub_23372A488(__p, v8);
  v9 = sub_23372DB30(a1, __p, v13);
  v10 = v9;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else if (v9)
  {
LABEL_3:
    *a6 = *v13;
    *(a6 + 16) = v14;
    return;
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }
}

void sub_23372DEEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372DF20(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37A58[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372DF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372DFA4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 3.0;
  v6 = objc_msgSend_UTF8String(off_27DE37A60[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372E010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E02C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 3.1623;
  v6 = objc_msgSend_UTF8String(off_27DE37A68[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372E0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E0C0(uint64_t a1)
{
  v11 = 0.0;
  v2 = getenv("MS_AMT");
  if (v2)
  {
    sscanf(v2, "%lf", &v11);
  }

  else
  {
    v7 = objc_msgSend_UTF8String(off_27DE37A70[0], v3, v4, v5, v6);
    sub_23372A488(__p, v7);
    sub_23372A650(a1, __p, &v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v11;
}

void sub_23372E150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E16C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37A78[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 0.0), 1.3);
}

void sub_23372E1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E204(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.5;
  v6 = objc_msgSend_UTF8String(off_27DE37A80[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 0.0), 1.0);
}

void sub_23372E280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372E29C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v6 = objc_msgSend_UTF8String(off_27DE37A88[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A92C(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372E304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E320(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.5;
  v6 = objc_msgSend_UTF8String(off_27DE37A90[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 0.0), 1.0);
}

void sub_23372E39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E3B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37A98[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, -2.0), 2.0);
}

void sub_23372E430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E44C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37AA0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 0.0), 1.0);
}

void sub_23372E4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E4E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37AA8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v10, 0.0), 4.0);
}

void sub_23372E558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372E574(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  sub_23372A488(__p, "isoab");
  v4 = sub_23372DB30(a1, __p, v8);
  v5 = v4;
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
LABEL_3:
    *a2 = *v8;
    *(a2 + 16) = v9;
    return;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_23372E610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372E644(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v6 = objc_msgSend_UTF8String(off_27DE37AB8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A3F8(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372E6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E6C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.000734;
  v6 = objc_msgSend_UTF8String(off_27DE37AC0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372E740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E75C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.01351;
  v6 = objc_msgSend_UTF8String(off_27DE37AC8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372E7D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E7F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37AD0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372E858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372E874(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 1;
  v6 = objc_msgSend_UTF8String(off_27DE37AD8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A3F8(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372E8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E8FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0001128;
  v6 = objc_msgSend_UTF8String(off_27DE37AE0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372E974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E990(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = -0.06729;
  v6 = objc_msgSend_UTF8String(off_27DE37AE8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372EA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372EA24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = -5.241;
  v6 = objc_msgSend_UTF8String(off_27DE37AF0[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372EA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372EAB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v6 = objc_msgSend_UTF8String(off_27DE37AF8[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A3F8(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372EB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372EB3C(uint64_t a1)
{
  v5 = 0;
  sub_23372A488(__p, "hnat");
  sub_23372A3F8(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372EB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372EBB8(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, "hbf");
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372EC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372EC34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37B10[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372EC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372ECB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37B18[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372ED20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372ED3C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37B20[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372EDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372EDC0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v6 = objc_msgSend_UTF8String(off_27DE37B28[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A3F8(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372EE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372EE44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37B30[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372EEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372EEC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37B38[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372EF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372EF4C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37B40[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372EFB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372EFD0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v6 = objc_msgSend_UTF8String(off_27DE37B48[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A3F8(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372F038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372F054(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37B50[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372F0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372F0D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37B58[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372F140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372F15C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37B60[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372F1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372F1E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v6 = objc_msgSend_UTF8String(off_27DE37B68[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A3F8(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372F248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372F264(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37B70[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372F2CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372F2E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37B78[0], a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372F350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372F36C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0.0;
  v6 = objc_msgSend_UTF8String(off_27DE37B80, a2, a3, a4, a5);
  sub_23372A488(__p, v6);
  sub_23372A650(a1, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_23372F3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372F3F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v154 = 0;
  v155 = 0;
  v156 = 0;
  sub_23372A488(&v152, "isoab");
  v4 = sub_23372DB30(a1, &v152, &v154);
  v9 = v4;
  if ((v153 & 0x80000000) == 0)
  {
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v151 = 0;
    v13 = objc_msgSend_UTF8String(off_27DE37AB8[0], v5, v6, v7, v8);
    sub_23372A488(&v152, v13);
    sub_23372A3F8(a1, &v152, &v151);
    if (v153 < 0)
    {
      operator delete(v152);
    }

    v150 = 0x3F480D3CFF64CF8DLL;
    v18 = objc_msgSend_UTF8String(off_27DE37AC0[0], v14, v15, v16, v17);
    sub_23372A488(&v152, v18);
    sub_23372A650(a1, &v152, &v150);
    if (v153 < 0)
    {
      operator delete(v152);
    }

    v149 = 0x3F8BAB21815A07B3;
    v23 = objc_msgSend_UTF8String(off_27DE37AC8[0], v19, v20, v21, v22);
    sub_23372A488(&v152, v23);
    sub_23372A650(a1, &v152, &v149);
    if (v153 < 0)
    {
      operator delete(v152);
    }

    v148 = 0;
    v28 = objc_msgSend_UTF8String(off_27DE37AD0[0], v24, v25, v26, v27);
    sub_23372A488(&v152, v28);
    sub_23372A650(a1, &v152, &v148);
    if (v153 < 0)
    {
      operator delete(v152);
    }

    v151 = 1;
    v33 = objc_msgSend_UTF8String(off_27DE37AD8[0], v29, v30, v31, v32);
    sub_23372A488(&v152, v33);
    sub_23372A3F8(a1, &v152, &v151);
    if (v153 < 0)
    {
      operator delete(v152);
    }

    v147 = 0x3F1D91E13E73D916;
    v38 = objc_msgSend_UTF8String(off_27DE37AE0[0], v34, v35, v36, v37);
    sub_23372A488(&v152, v38);
    sub_23372A650(a1, &v152, &v147);
    if (v153 < 0)
    {
      operator delete(v152);
    }

    v146 = 0xBFB139EADD590C0BLL;
    v43 = objc_msgSend_UTF8String(off_27DE37AE8[0], v39, v40, v41, v42);
    sub_23372A488(&v152, v43);
    sub_23372A650(a1, &v152, &v146);
    if (v153 < 0)
    {
      operator delete(v152);
    }

    v145 = 0xC014F6C8B4395810;
    v48 = objc_msgSend_UTF8String(off_27DE37AF0[0], v44, v45, v46, v47);
    sub_23372A488(&v152, v48);
    sub_23372A650(a1, &v152, &v145);
    if (v153 < 0)
    {
      operator delete(v152);
    }

    v144 = 0;
    v53 = objc_msgSend_UTF8String(off_27DE37AF8[0], v49, v50, v51, v52);
    sub_23372A488(&v152, v53);
    sub_23372A3F8(a1, &v152, &v144);
    if (v153 < 0)
    {
      operator delete(v152);
    }

    sub_23372A488(&v152, "hnat");
    v54 = sub_23372A3F8(a1, &v152, &v151);
    v55 = v54;
    if (v153 < 0)
    {
      operator delete(v152);
      if (v55)
      {
LABEL_30:
        v143 = 0;
        sub_23372A488(&v152, "hbf");
        sub_23372A650(a1, &v152, &v143);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        v142 = 0;
        v60 = objc_msgSend_UTF8String(off_27DE37B10[0], v56, v57, v58, v59);
        sub_23372A488(&v152, v60);
        sub_23372A650(a1, &v152, &v142);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        v141 = 0;
        v65 = objc_msgSend_UTF8String(off_27DE37B18[0], v61, v62, v63, v64);
        sub_23372A488(&v152, v65);
        sub_23372A650(a1, &v152, &v141);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        v140 = 0;
        v70 = objc_msgSend_UTF8String(off_27DE37B20[0], v66, v67, v68, v69);
        sub_23372A488(&v152, v70);
        sub_23372A650(a1, &v152, &v140);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        v75 = objc_msgSend_UTF8String(off_27DE37B28[0], v71, v72, v73, v74);
        sub_23372A488(&v152, v75);
        sub_23372A3F8(a1, &v152, &v151);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        v139 = 0;
        v80 = objc_msgSend_UTF8String(off_27DE37B30[0], v76, v77, v78, v79);
        sub_23372A488(&v152, v80);
        sub_23372A650(a1, &v152, &v139);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        v138 = 0;
        v85 = objc_msgSend_UTF8String(off_27DE37B38[0], v81, v82, v83, v84);
        sub_23372A488(&v152, v85);
        sub_23372A650(a1, &v152, &v138);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        v137 = 0;
        v90 = objc_msgSend_UTF8String(off_27DE37B40[0], v86, v87, v88, v89);
        sub_23372A488(&v152, v90);
        sub_23372A650(a1, &v152, &v137);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        v95 = objc_msgSend_UTF8String(off_27DE37B48[0], v91, v92, v93, v94);
        sub_23372A488(&v152, v95);
        sub_23372A3F8(a1, &v152, &v151);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        v136 = 0;
        v100 = objc_msgSend_UTF8String(off_27DE37B50[0], v96, v97, v98, v99);
        sub_23372A488(&v152, v100);
        sub_23372A650(a1, &v152, &v136);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        v135 = 0;
        v105 = objc_msgSend_UTF8String(off_27DE37B58[0], v101, v102, v103, v104);
        sub_23372A488(&v152, v105);
        sub_23372A650(a1, &v152, &v135);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        v134 = 0;
        v110 = objc_msgSend_UTF8String(off_27DE37B60[0], v106, v107, v108, v109);
        sub_23372A488(&v152, v110);
        sub_23372A650(a1, &v152, &v134);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        v115 = objc_msgSend_UTF8String(off_27DE37B68[0], v111, v112, v113, v114);
        sub_23372A488(&v152, v115);
        sub_23372A3F8(a1, &v152, &v151);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        v133 = 0;
        v120 = objc_msgSend_UTF8String(off_27DE37B70[0], v116, v117, v118, v119);
        sub_23372A488(&v152, v120);
        sub_23372A650(a1, &v152, &v133);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        v132 = 0;
        v125 = objc_msgSend_UTF8String(off_27DE37B78[0], v121, v122, v123, v124);
        sub_23372A488(&v152, v125);
        sub_23372A650(a1, &v152, &v132);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        v131 = 0;
        v130 = objc_msgSend_UTF8String(off_27DE37B80, v126, v127, v128, v129);
        sub_23372A488(&v152, v130);
        sub_23372A650(a1, &v152, &v131);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        sub_23372FE60();
      }
    }

    else if (v54)
    {
      goto LABEL_30;
    }

    operator new();
  }

  operator delete(v152);
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_3:
  v10 = v154;
  v11 = (v155 - v154) >> 3;
  if (v11 >= 3 && v11 % 3 == 0)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v10)
  {
    v155 = v10;
    operator delete(v10);
  }
}

void sub_23372FD40(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 152);
  if (v3)
  {
    *(v1 - 144) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23372FF44(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v3 = v1;
  v7 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"otrc_2", v5, v6);

  if (!v7)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v8, &unk_2849549D0, @"otrc_2", v10);
  }

  v11 = objc_msgSend_objectForKeyedSubscript_(v3, v8, @"otrc_3", v9, v10);

  if (!v11)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v12, &unk_2849549D0, @"otrc_3", v14);
  }

  v15 = objc_msgSend_objectForKeyedSubscript_(v3, v12, @"otrc_4", v13, v14);

  if (!v15)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v16, &unk_2849549D0, @"otrc_4", v18);
  }

  v19 = objc_msgSend_objectForKeyedSubscript_(v3, v16, @"otrc_5", v17, v18);

  if (!v19)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v20, &unk_2849549D0, @"otrc_5", v22);
  }

  v23 = objc_msgSend_objectForKeyedSubscript_(v3, v20, @"otrc_6", v21, v22);

  if (!v23)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v24, &unk_2849549D0, @"otrc_6", v26);
  }

  v27 = objc_msgSend_objectForKeyedSubscript_(v3, v24, @"otrc_7", v25, v26);

  if (!v27)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v28, &unk_2849549D0, @"otrc_7", v30);
  }

  v31 = objc_msgSend_objectForKeyedSubscript_(v3, v28, @"otrc_8", v29, v30);

  if (!v31)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v32, &unk_2849549D0, @"otrc_8", v33);
  }

  v34 = *(a1 + 8);
  v35 = v34;

  return v34;
}

id sub_233730154(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_233730380;
    v20[3] = &unk_2789EE910;
    v20[4] = a1;
    v5 = MEMORY[0x2383AC810](v20);
    v6 = v3;
    objc_msgSend_UTF8String(v6, v7, v8, v9, v10);
    v11 = sub_2338717E0();

    if (!v11)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v4 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = objc_msgSend_description(v4, v12, v13, v14, v15);
      CFShow(v18);
      v19 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v19, "RawCameraException");
      __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return v4;
}

void sub_233730318(_Unwind_Exception *a1)
{
  __cxa_free_exception(v5);

  _Unwind_Resume(a1);
}

id sub_233730380(uint64_t a1, char *a2)
{
  v2 = *(a1 + 32);
  sub_23372A488(__p, a2);
  v7 = sub_233729FBC(__p, v3, v4, v5, v6);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = sub_2338747A8();
  v12 = objc_msgSend_objectForKeyedSubscript_(v8, v9, v7, v10, v11);

  if (!v12)
  {
    v13 = *(v2 + 16);
    if (v13)
    {
      v12 = (*(v13 + 16))(v13, v7);
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

void sub_23373045C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x233730454);
}

void sub_2337304A8(uint64_t a1)
{

  JUMPOUT(0x2383ABF10);
}

void *sub_233730514(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_233726290(result, a2);
  }

  return result;
}

void sub_233730694(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337306C8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_233730724(exception, a1);
  __cxa_throw(exception, off_2789EE7F8, MEMORY[0x277D825F8]);
}

std::logic_error *sub_233730724(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void *sub_233730758(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_23372375C(result, a2);
  }

  return result;
}

void sub_2337307B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337307F0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284902AA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23373086C(uint64_t a1)
{
  *a1 = &unk_284902AF0;
  sub_233730B2C(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_2337308B8(uint64_t a1)
{
  *a1 = &unk_284902AF0;
  sub_233730B2C(a1 + 8, *(a1 + 16));

  JUMPOUT(0x2383ABF10);
}

void sub_23373092C(uint64_t a1, unsigned int a2, double a3, double a4)
{
  v11 = a2;
  sub_233730758(&__p, 2uLL);
  v7 = __p;
  *__p = a3;
  v7[1] = a4;
  v12 = &v11;
  v8 = sub_233730B90(a1 + 8, &v11) + 5;
  if (v8 != &__p)
  {
    sub_23373176C(v8, __p, v10, (v10 - __p) >> 3);
  }

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_2337309D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337309EC(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 16);
  v2 = a1 + 16;
  v3 = v4;
  v5 = 0.0;
  if (v4)
  {
    v6 = v2;
    do
    {
      v7 = *(v3 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * v9);
    }

    while (v3);
    if (v6 != v2 && *(v6 + 32) <= a2)
    {
      v10 = *(v6 + 40);
      v11 = *(v6 + 48);
      if (v11 - v10 == 16)
      {
        __p = 0;
        v14 = 0;
        v15 = 0;
        sub_2337236E0(&__p, v10, v11, 2uLL);
        v5 = *__p;
        v14 = __p;
        operator delete(__p);
      }
    }
  }

  return v5;
}

double sub_233730A84(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 16);
  v2 = a1 + 16;
  v3 = v4;
  v5 = 0.0;
  if (v4)
  {
    v6 = v2;
    do
    {
      v7 = *(v3 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * v9);
    }

    while (v3);
    if (v6 != v2 && *(v6 + 32) <= a2)
    {
      v10 = *(v6 + 40);
      v11 = *(v6 + 48);
      if (v11 - v10 == 16)
      {
        __p = 0;
        v14 = 0;
        v15 = 0;
        sub_2337236E0(&__p, v10, v11, 2uLL);
        v5 = *(__p + 1);
        v14 = __p;
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_233730B2C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_233730B2C(a1, *a2);
    sub_233730B2C(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t *sub_233730B90(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_233730C68(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_233730CC0(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_233730CC0(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}