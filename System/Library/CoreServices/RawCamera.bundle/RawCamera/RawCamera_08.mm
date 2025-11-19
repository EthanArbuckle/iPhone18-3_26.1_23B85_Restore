unint64_t sub_2337BB96C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 596);
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  v7 = (result + 776);
  v8 = *(result + 816);
  v9 = v8 + v6;
  v10 = *(result + 776) + v8 + v6;
  v11 = *(result + 552);
  v12 = v11 - (*(result + 776) + v8);
  v13 = (v12 & (v12 >> 31)) + v8;
  v14 = v12 & ~(v12 >> 31);
  if (v11 < v10)
  {
    v9 = v13 + v14;
  }

  v15 = *(result + 808);
  if (v11 < v10)
  {
    v16 = 0;
  }

  else
  {
    v16 = (v8 + v6) % v4;
  }

  if (v11 < v10)
  {
    v17 = v13;
  }

  else
  {
    v17 = *(result + 816);
  }

  if (v11 < v10)
  {
    v18 = v14;
  }

  else
  {
    v18 = *(a2 + 72);
  }

  if (v9 >= v4 || v17 < 1)
  {
    if (v17)
    {
      v19 = *v5++;
      v15[v17++] = v19;
      --v18;
    }
  }

  else
  {
    memmove(&v5[v17], *(a2 + 64), 2 * v18);
    result = memmove(v5, v15, 2 * v17);
    v15 = 0;
    v18 += v17;
    v17 = 0;
  }

  *(v3 + 784) = v5;
  *(v3 + 792) = v18 - v16;
  *(v3 + 808) = v15;
  *(v3 + 816) = v17;
  *(a2 + 80) = *v7;
  v20 = v7[1];
  v21 = v7[2];
  v22 = v7[4];
  *(a2 + 128) = v7[3];
  *(a2 + 144) = v22;
  *(a2 + 96) = v20;
  *(a2 + 112) = v21;
  if (v16 <= 0)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  atomic_store(v23, (a2 + 8));
  v24 = *(v3 + 816);
  v25 = 808;
  if (!v24)
  {
    v25 = 784;
  }

  v26 = *(v3 + v25);
  v27 = *(v3 + 824);
  v28 = *(v3 + 832);
  v29 = *(v3 + 776);
  if (*(v3 + 792) + v24 >= 1)
  {
    v30 = v29 + v24;
    if (v24)
    {
      v31 = 0;
    }

    else
    {
      v31 = *(v3 + 792);
    }

    v32 = v30 + v31;
    v33 = *(v3 + 776);
    while (1)
    {
      if (v29 == v32)
      {
        if (v29 != v30)
        {
          break;
        }

        v26 = *(v3 + 784);
        v36 = *(v3 + 792);
        if (!v36)
        {
          v29 = v30;
          break;
        }

        v32 = v36 + v30;
      }

      if (v29 == v33)
      {
        v37 = (v3 + 836 + 4 * v28);
        result = v37[1];
        v38 = result + v26[1];
        *v37 += *v26;
        v37[1] = v38;
        v28 ^= 2u;
        v33 = v29 + v4;
      }

      if (v33 >= v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = v33;
      }

      v35 = 2 * (v34 - v29);
      v26 = (v26 + v35);
      v27 += v35;
      v29 = v34;
    }
  }

  *(v3 + 776) = v29;
  *(v3 + 824) = v27;
  *(v3 + 832) = v28;
  *(v3 + 784) = 0;
  *(v3 + 792) = 0;
  *(v3 + 800) = 0u;
  *(v3 + 816) = 0;
  if (v16 >= 1)
  {
    *(v3 + 800) = a2;
    *(v3 + 808) = v26;
    *(v3 + 816) = v16;
  }

  return result;
}

intptr_t sub_2337BBB9C(intptr_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 120);
  v5 = 112;
  if (!v4)
  {
    v5 = 88;
  }

  v6 = *(a2 + v5);
  v7 = *(result + 584);
  v8 = *(a2 + 128);
  v9 = *(a2 + 136);
  v10 = *(a2 + 80);
  v11 = v10 + v4;
  v12 = v10 + v4;
  if (!v4)
  {
    v12 = *(a2 + 96) + v11;
  }

  v13 = *(result + 596);
  v14 = *(a2 + 80);
  v15 = 0uLL;
  while (1)
  {
    if (v10 != v12)
    {
      goto LABEL_14;
    }

    if (v10 != v11)
    {
      return result;
    }

    v16 = *(a2 + 104);
    if (v16)
    {
      if (atomic_fetch_add((v16 + 8), 0xFFFFFFFF) <= 1)
      {
        *(a2 + 104) = 0;
        atomic_fetch_or((v3 + 1176), 1 << *(v16 + 4));
        if ((atomic_fetch_add((v3 + 1180), 1u) & 0x80000000) != 0)
        {
          v26 = v15;
          result = dispatch_semaphore_signal(*(v3 + 1184));
          v15 = v26;
        }
      }
    }

    v17 = *(a2 + 96);
    if (!v17)
    {
      return result;
    }

    v6 = *(a2 + 88);
    v12 = v17 + v11;
LABEL_14:
    if (v10 == v14)
    {
      v18 = a2 + 140 + 4 * v9;
      *&v15 = *v18;
      v19 = HIDWORD(*v18) + v6[1];
      *v18 = *v18 + *v6;
      *(v18 + 4) = v19;
      v9 ^= 2u;
      v14 = v10 + v13;
    }

    if (v14 >= v12)
    {
      v20 = v12;
    }

    else
    {
      v20 = v14;
    }

    v21 = v20 - v10;
    v10 = v20;
    if (v21 >= 1)
    {
      v22 = &v6[v21];
      do
      {
        v23.i32[0] = *v6;
        v23.i32[1] = v6[1];
        *&v15 = vadd_s32(*&v15, v23);
        v24 = vneg_s32(vmin_s32(vneg_s32(*&v15), 0));
        v25 = *(v7 + 2 * v24.u16[2]);
        v6 += 2;
        *v8 = *(v7 + 2 * v24.u16[0]);
        v8[1] = v25;
        v8 += 2;
      }

      while (v6 < v22);
      v10 = v20;
    }
  }
}

void sub_2337BBD5C(os_signpost_id_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPacked12Unpacker", &unk_233945DBE, buf, 2u);
  }

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_2337BC3FC;
  v52[3] = &unk_2789EE800;
  v52[4] = a1;
  v4 = MEMORY[0x2383AC810](v52);
  v6 = *(a1 + 44);
  v5 = *(a1 + 48);
  if (*(a1 + 196) == 1)
  {
    v7 = 16;
  }

  else
  {
    v7 = 15;
  }

  if (*(a1 + 196) == 1)
  {
    v8 = (2 * ((3435973837u * (v6 + 9)) >> 32)) & 0xFFFFFFF0;
  }

  else
  {
    v8 = ((3 * v6) >> 1) & 0x1FFFFFFF;
  }

  v47 = *(a1 + 188);
  if (v5 * v6 > (*(*a1 + 152))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = *(a1 + 192);
  *buf = 0;
  if (v9)
  {
    if (v9 == 2)
    {
      v10 = v8 * (v5 >> 1);
      if (v10 > (*(*a1 + 152))(a1) >> 1)
      {
        v42 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v42, "RawCameraException");
        __cxa_throw(v42, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      *buf = ((*(*a1 + 152))(a1) >> 1) - v10;
    }

    v44 = 0;
    v11 = 0;
    v46 = 2 * v6;
    v12 = v6 & 0xFFFFFFF8;
    v45 = (v9 - 1) * v6;
    v48 = v5;
    v49 = v9;
    v43 = v4;
    do
    {
      v13 = sub_2337ADCC4(a1);
      if (v44 < v5)
      {
        v14 = (v13 + 2 * v6 * v44);
        v15 = v44;
        do
        {
          v16 = &v14[v46 - v8];
          if (&v16[v8] > (*(*a1 + 120))(a1))
          {
            v40 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](v40, "RawCameraException");
            __cxa_throw(v40, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          (*(**(a1 + 24) + 32))(*(a1 + 24), &v14[v46 - v8], v8);
          v17 = &v16[v11];
          v18 = v47;
          if (v15)
          {
            v18 = 0;
          }

          else
          {
            v11 = v47;
          }

          if (*(a1 + 197))
          {
            if (v12)
            {
              v19 = 0;
              v5 = v48;
              do
              {
                v20 = bswap32(*v17);
                v21 = bswap32(*(v17 + 1));
                v22 = bswap32(*(v17 + 2));
                *v14 = (16 * v20) | (v20 >> 12);
                *(v14 + 1) = v20 & 0xF00 | BYTE2(v20);
                *(v14 + 2) = (v20 >> 20) & 0xFF0 | (v21 >> 4);
                *(v14 + 3) = BYTE1(v21) | ((v21 & 0xF) << 8);
                *(v14 + 4) = (v21 >> 12) & 0xFF0 | (v21 >> 28);
                *(v14 + 5) = v22 | ((HIBYTE(v21) & 0xF) << 8);
                *(v14 + 6) = (v22 & 0xFF00 | BYTE2(v22)) >> 4;
                *(v14 + 7) = (v22 >> 8) & 0xF00 | HIBYTE(v22);
                v17 += 12;
                v14 += 16;
                v19 += 8;
              }

              while (v19 < v12);
              v23 = (((v6 & 0xFFFFFFF8) - 1) & 0xFFFFFFF8) + 8;
            }

            else
            {
              v23 = 0;
              v5 = v48;
            }

            if (v23 < v6)
            {
              v14 += 4 * ((v6 + ~v23) >> 1) + 4;
            }
          }

          else
          {
            if (v6 == v6 % 0xA)
            {
              v24 = 0;
              v5 = v48;
            }

            else
            {
              v24 = 0;
              v5 = v48;
              do
              {
                v25 = v17[1];
                v26 = (v25 >> 4) | (16 * *v17);
                v27 = v17[2] | ((v25 & 0xF) << 8);
                v28 = v17[4];
                LOWORD(v25) = (v28 >> 4) | (16 * v17[3]);
                v29 = v17[5] | ((v28 & 0xF) << 8);
                *v14 = v26;
                *(v14 + 1) = v27;
                v30 = v17[7];
                v31 = (v30 >> 4) | (16 * v17[6]);
                LOWORD(v28) = v17[8] | ((v30 & 0xF) << 8);
                *(v14 + 2) = v25;
                *(v14 + 3) = v29;
                v32 = v17[10];
                v33 = (v32 >> 4) | (16 * v17[9]);
                v34 = v17[11] | ((v32 & 0xF) << 8);
                *(v14 + 4) = v31;
                *(v14 + 5) = v28;
                v35 = v17[13];
                v36 = (v35 >> 4) | (16 * v17[12]);
                LOWORD(v28) = v17[14] | ((v35 & 0xF) << 8);
                *(v14 + 6) = v33;
                *(v14 + 7) = v34;
                *(v14 + 8) = v36;
                *(v14 + 9) = v28;
                v17 += v7;
                v14 += 20;
                v24 += 10;
              }

              while (v24 < 10 * (v6 / 0xA));
            }

            while (v24 < v6)
            {
              v37 = v17[1];
              v38 = v17[2] | ((v37 & 0xF) << 8);
              *v14 = (v37 >> 4) | (16 * *v17);
              *(v14 + 1) = v38;
              v17 += 3;
              v14 += 4;
              v24 += 2;
            }
          }

          v8 += v18;
          v14 += 2 * v45;
          v15 += v49;
        }

        while (v15 < v5);
      }

      v4 = v43;
      if (!v44 && *buf)
      {
        v39 = *(a1 + 24);
        sub_233723AE0(&v50, buf);
        (*(*v39 + 40))(v39, &v50, 1);
        v5 = v48;
      }

      ++v44;
    }

    while (v44 != v49);
  }

  v4[2](v4);
}

void sub_2337BC3FC(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPacked12Unpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337BC49C(void *a1)
{
  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337BC4D4(os_signpost_id_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "COlympus2FieldPacked12Unpacker", &unk_233945DBE, &buf, 2u);
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_2337BC98C;
  v43[3] = &unk_2789EE800;
  v43[4] = a1;
  v4 = MEMORY[0x2383AC810](v43);
  v5 = *(a1 + 44);
  if ((v5 - 7001) < 0xFFFFE88F || (v6 = *(a1 + 48), (v6 - 7001) <= 0xFFFFE88E))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = (*(*a1 + 152))(a1);
  v8 = ((3 * v5) >> 1) & 0x1FFFFFFF;
  if (v7 < v8 * v6)
  {
    v38 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v38, "RawCameraException");
    __cxa_throw(v38, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = 0;
  v41 = (2 * v5);
  v10 = -v8;
  v11 = (v5 * v6);
  v12 = 1;
  v39 = v4;
  do
  {
    v40 = v12;
    v13 = sub_2337ADCC4(a1);
    v14 = v6;
    if (v9 < v6)
    {
      v15 = (v13 + 2 * v9 * v5);
      do
      {
        v16 = sub_2337ADCC4(a1);
        v17 = v15 + v41;
        if (v15 + v41 > v16 + 2 * v11)
        {
          v36 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v36, "RawCameraException");
          __cxa_throw(v36, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v18 = &v17[v10];
        (*(**(a1 + 24) + 32))(*(a1 + 24), &v17[v10], ((3 * v5) >> 1) & 0x1FFFFFFF);
        v19 = 0;
        do
        {
          v20 = v18[1];
          v21 = (v20 >> 4) | (16 * *v18);
          v22 = v18[2] | ((v20 & 0xF) << 8);
          v23 = v18[4];
          LOWORD(v20) = (v23 >> 4) | (16 * v18[3]);
          v24 = v18[5] | ((v23 & 0xF) << 8);
          *v15 = v21;
          v15[1] = v22;
          v25 = v18[7];
          v26 = (v25 >> 4) | (16 * v18[6]);
          LOWORD(v23) = v18[8] | ((v25 & 0xF) << 8);
          v15[2] = v20;
          v15[3] = v24;
          v27 = v18[10];
          v28 = (v27 >> 4) | (16 * v18[9]);
          v29 = v18[11] | ((v27 & 0xF) << 8);
          v15[4] = v26;
          v15[5] = v23;
          v30 = v18[13];
          v31 = (v30 >> 4) | (16 * v18[12]);
          LOWORD(v23) = v18[14] | ((v30 & 0xF) << 8);
          v15[6] = v28;
          v15[7] = v29;
          v15[8] = v31;
          v15[9] = v23;
          v18 += 15;
          v15 += 10;
          v19 += 10;
        }

        while (v19 < v5 - v5 % 0xAu);
        if (v19 < v5)
        {
          v32 = 0;
          do
          {
            v33 = v18[v32 + 1];
            v34 = v18[v32 + 2] | ((v33 & 0xF) << 8);
            *v15 = (v33 >> 4) | (16 * v18[v32]);
            v15[1] = v34;
            v15 += 2;
            v19 += 2;
            v32 += 3;
          }

          while (v19 < v5);
        }

        v15 += v5;
        LODWORD(v9) = v9 + 2;
      }

      while (v9 < v14);
    }

    v6 = v14;
    if ((v40 & (*(a1 + 188) != 0)) != 0)
    {
      v35 = *(a1 + 24);
      sub_233723AE0(&buf, (a1 + 188));
      (*(*v35 + 40))(v35, &buf, 1);
    }

    v12 = 0;
    v9 = 1;
  }

  while ((v40 & 1) != 0);
  v39[2](v39);
}

void sub_2337BC98C(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "COlympus2FieldPacked12Unpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337BCA14(void *a1)
{
  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337BCA4C(os_signpost_id_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CUnpackedUnpacker", &unk_233945DBE, buf, 2u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2337BCD64;
  v24[3] = &unk_2789EE800;
  v24[4] = a1;
  v4 = MEMORY[0x2383AC810](v24);
  if (*(a1 + 188) >= 0x11u)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = *(a1 + 44);
  v6 = *(a1 + 48);
  if (2 * v5 * v6 > (*(*a1 + 152))(a1))
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v22, "RawCameraException");
    __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v23 = v4;
  v7 = sub_2337AF4A8(a1);
  v8 = *(a1 + 188);
  v9 = sub_2337ADCC4(a1);
  if (v6 >= 1)
  {
    v10 = v9;
    v11 = 0;
    v12 = 16 - v8;
    v13 = v7 == 1;
    v14 = v7 != 1;
    v15 = v13;
    do
    {
      (*(**(a1 + 24) + 32))(*(a1 + 24), v10, 2 * v5);
      v16 = v10 + v15;
      v17 = v10 + v14;
      if (v5 >> 1 >= 1)
      {
        v18 = v10 + 1;
        v19 = v5 >> 1;
        do
        {
          v20 = (v17[2] | (v16[2] << 8)) >> v12;
          *(v18 - 1) = (*v17 | (*v16 << 8)) >> v12;
          *v18 = v20;
          v18 += 2;
          v16 += 4;
          v17 += 4;
          --v19;
        }

        while (v19);
        v10 = v18 - 1;
      }

      if (v5)
      {
        *v10++ = (*v17 | (*v16 << 8)) >> v12;
      }

      ++v11;
    }

    while (v11 != v6);
  }

  v23[2](v23);
}

void sub_2337BCD64(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CUnpackedUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337BCDEC(os_signpost_id_t a1, _WORD *a2, unsigned int *a3, uint64_t a4)
{
  v7 = sub_23378E038();
  v8 = v7;
  if (a1 + 1 >= 2 && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CUnpackedUnpacker", &unk_233945DBE, buf, 2u);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_2337BD118;
  v31[3] = &unk_2789EE800;
  v31[4] = a1;
  v9 = MEMORY[0x2383AC810](v31);
  if (*(a1 + 188) >= 0x11u)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = *(a1 + 44);
  v11 = *(a1 + 48);
  v25 = *a3;
  v12 = a3[2];
  v24 = a3[1];
  v27 = a3[3];
  if ((*(*a1 + 152))(a1) < 2 * v10 * v11)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v22, "RawCameraException");
    __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v23 = v9;
  v13 = sub_2337AF4A8(a1);
  if (v27)
  {
    v14 = 0;
    v15 = 16 - *(a1 + 188);
    v16 = v13 != 1;
    v17 = v13 == 1;
    do
    {
      v18 = *(a1 + 24);
      *buf = 2 * (v25 + (v14 + v24) * v10);
      v32 = *(a1 + 40);
      v29 = *sub_233785BD0(&v32, buf);
      sub_233726938(&v30, &v29);
      (*(*v18 + 24))(v18, a2, (2 * v12), &v30);
      v19 = v12;
      v20 = a2;
      if (v12)
      {
        do
        {
          *v20 = (*(v20 + v16) | (*(v20 + v17) << 8)) >> v15;
          ++v20;
          --v19;
        }

        while (v19);
      }

      ++v14;
      a2 = (a2 + a4);
    }

    while (v14 != v27);
  }

  v23[2](v23);
}

void sub_2337BD118(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CUnpackedUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337BD1A0(void *a1)
{
  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337BD1D8(os_signpost_id_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CUnpackedLE16Shift4Unpacker", &unk_233945DBE, buf, 2u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2337BD430;
  v12[3] = &unk_2789EE800;
  v12[4] = a1;
  v4 = MEMORY[0x2383AC810](v12);
  v5 = sub_2337ADCC4(a1);
  v6 = *(a1 + 44);
  v7 = *(a1 + 48);
  if ((*(*a1 + 152))(a1) < 2 * v6 * v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      (*(**(a1 + 24) + 32))(*(a1 + 24), v5, 2 * v6);
      v9 = v6 >> 1;
      if (v6 >= 2)
      {
        do
        {
          v10 = v5[1] >> 4;
          *v5 >>= 4;
          v5[1] = v10;
          v5 += 2;
          --v9;
        }

        while (v9);
      }

      if (v6)
      {
        *v5++ >>= 4;
      }
    }
  }

  v4[2](v4);
}

void sub_2337BD430(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CUnpackedLE16Shift4Unpacker", &unk_233945DBE, v5, 2u);
  }
}

uint64_t sub_2337BD4C4(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if ((v2 + a2) < 0x21)
  {
    v7 = 0;
    if (!a2)
    {
      return v7;
    }

    goto LABEL_8;
  }

  v3 = 0;
  v5 = *(a1 + 24);
  v4 = *(a1 + 28);
  v6 = *(a1 + 20) + 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = v6;
  if (4 * v6 < v5)
  {
    v3 = bswap32(*(*(a1 + 32) + 4 * v6));
  }

  *(a1 + 28) = v3;
  if (4 * v6 > v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    sub_2338F90E4(exception);
  }

  v7 = v4 & ~(-1 << -v2);
  a2 -= 32 - v2;
  v2 = 0;
  if (a2)
  {
LABEL_8:
    v8 = v2 + a2;
    v7 = (*(a1 + 28) >> -v8) & ~(-1 << a2) | (v7 << a2);
    *(a1 + 16) = v8;
    if (v8 == 32)
    {
      v9 = 0;
      v10 = *(a1 + 24);
      v11 = *(a1 + 20) + 1;
      *(a1 + 16) = 0;
      *(a1 + 20) = v11;
      if (v10 > 4 * v11)
      {
        v9 = bswap32(*(*(a1 + 32) + 4 * v11));
      }

      *(a1 + 28) = v9;
    }
  }

  return v7;
}

uint64_t sub_2337BD5E8(uint64_t a1)
{
  v1 = *(a1 + 28);
  v2 = *(a1 + 16);
  *(a1 + 16) = v2 + 1;
  if (v2 == 31)
  {
    v3 = 0;
    v4 = *(a1 + 24);
    v5 = *(a1 + 20) + 1;
    *(a1 + 16) = 0;
    *(a1 + 20) = v5;
    if (v4 > 4 * v5)
    {
      v3 = bswap32(*(*(a1 + 32) + 4 * v5));
    }

    *(a1 + 28) = v3;
  }

  return (v1 >> ~v2) & 1;
}

uint64_t sub_2337BD638(uint64_t result, unsigned int a2)
{
  v2 = result;
  LODWORD(result) = 0;
  v3 = *(v2 + 28);
  v4 = *(v2 + 16);
  do
  {
    while (1)
    {
      v5 = (0x80000000 >> v4) & v3;
      result = v5 ? result : (result + 1);
      if (v4 != 31)
      {
        break;
      }

      v3 = 0;
      v6 = *(v2 + 24);
      v7 = *(v2 + 20) + 1;
      *(v2 + 16) = 0;
      *(v2 + 20) = v7;
      v8 = 4 * v7;
      if (4 * v7 < v6)
      {
        v3 = bswap32(*(*(v2 + 32) + 4 * v7));
      }

      v4 = 0;
      *(v2 + 28) = v3;
      if (v8 > v6 || v5 != 0 || result >= a2)
      {
        return result;
      }
    }

    ++v4;
  }

  while (!v5 && result < a2);
  *(v2 + 16) = v4;
  return result;
}

void sub_2337BD6E0(_DWORD *a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CUnpackedLE16Shift4Remove0Unpacker", &unk_233945DBE, buf, 2u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2337BD978;
  v24[3] = &unk_2789EE800;
  v24[4] = a1;
  v4 = MEMORY[0x2383AC810](v24);
  sub_2337BD1D8(a1);
  v5 = a1[11];
  if (v5 <= 1 || (v6 = a1[12], v6 <= 1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = a1[47];
  if ((v7 & 0xC000) == 0x8000)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  if ((v7 & 0xC00) == 0x800)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  if ((v7 & 0x3000) == 0x2000)
  {
    v10 = 3;
  }

  else
  {
    v10 = v8;
  }

  v11 = v6 - 2;
  if (v10 < v6 - 2)
  {
    v12 = v5 - 2;
    v13 = -2 * v5;
    do
    {
      v14 = sub_2337ADCC4(a1);
      if (v9 < v12)
      {
        v15 = (v14 + 2 * v10 * v5 + 2 * v9);
        v16 = v9;
        do
        {
          if (!*v15)
          {
            v17 = v15[2 * v5];
            v18 = *(v15 - 2);
            v19 = v15[2];
            if (v15[v13])
            {
              v20 = v17 == 0;
            }

            else
            {
              v20 = 1;
            }

            if (!v20 && v19 != 0 && v18 != 0)
            {
              *v15 = (v15[v13] + v17 + v18 + v19 + 2) >> 2;
            }
          }

          v16 += 2;
          v15 += 2;
        }

        while (v16 < v12);
      }

      v10 += 2;
    }

    while (v10 < v11);
  }

  v4[2](v4);
}

void sub_2337BD978(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CUnpackedLE16Shift4Remove0Unpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337BDA00(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v24 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038();
  v3 = v2;
  if ((v1 + 1) >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "CSonyUnpacker", &unk_233945DBE, buf, 2u);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2337BDCB8;
  v21[3] = &unk_2789EE800;
  v21[4] = v1;
  v19 = MEMORY[0x2383AC810](v21);
  v20 = 0;
  v4 = sub_2337ADCC4(v1);
  v5 = *(v1 + 44);
  v6 = *(v1 + 48);
  if (v5 >= 0xD20)
  {
    v7 = 3360;
  }

  else
  {
    v7 = v5;
  }

  sub_2337BDD40(v1, &v20 + 1, v22, &v20);
  sub_2337BDFCC(v22, &v20, SHIDWORD(v20));
  if (v6)
  {
    v8 = 0;
    v9 = v20;
    do
    {
      (*(**(v1 + 24) + 32))(*(v1 + 24), buf, (2 * v7));
      if (v5 >= 2)
      {
        v10 = buf;
        v11 = v9;
        v12 = v7 >> 1;
        do
        {
          v13 = v11 + 65;
          v14 = v11++ & 0x7F;
          v15 = v22[v13 & 0x7F] ^ v22[v11 & 0x7F];
          *v10 ^= v15;
          v10 += 4;
          v22[v14] = v15;
          --v12;
        }

        while (v12);
      }

      if (v5)
      {
        v16 = buf;
        v17 = v7;
        do
        {
          v18 = *v16;
          v16 += 2;
          *v4++ = bswap32(v18) >> 16;
          --v17;
        }

        while (v17);
      }

      v9 += v7 >> 1;
      ++v8;
    }

    while (v8 != v6);
  }

  v19[2](v19);
}

void sub_2337BDCB8(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CSonyUnpacker", &unk_233945DBE, v5, 2u);
  }
}

uint64_t *sub_2337BDD40(uint64_t a1, int *a2, int *a3, int *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  sub_233754E04(v20, (a1 + 24));
  sub_233735A18(v19, (a1 + 24), 2);
  v18 = 200896;
  v8 = *(a1 + 24);
  sub_2337268D8(&v21, &v18);
  (*(*v8 + 40))(v8, &v21, 0);
  v18 = (4 * sub_233725510(*(a1 + 24)) - 1);
  v9 = *(a1 + 24);
  sub_2337268D8(&v21, &v18);
  (*(*v9 + 40))(v9, &v21, 1);
  *a2 = sub_233725614(*(a1 + 24));
  v18 = 164600;
  v10 = *(a1 + 24);
  sub_2337268D8(&v21, &v18);
  (*(*v10 + 40))(v10, &v21, 0);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  (*(**(a1 + 24) + 32))(*(a1 + 24), &v21, 40);
  sub_2337BDFCC(a3, a4, *a2);
  v11 = 0;
  v12 = *a4;
  *a4 += 10;
  do
  {
    v13 = *(&v21 + v11);
    v14 = v12 + 65;
    v15 = v12++ & 0x7F;
    v16 = a3[v14 & 0x7F] ^ a3[v12 & 0x7F];
    a3[v15] = v16;
    *(&v21 + v11) = v16 ^ v13;
    v11 += 4;
  }

  while (v11 != 40);
  *a2 = *(&v22 + 6);
  sub_233735A90(v19);
  return sub_233725FD4(v20);
}

void sub_2337BDF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_233735A90(va);
  sub_233725FD4(va1);
  _Unwind_Resume(a1);
}

int *sub_2337BDFCC(int *result, _DWORD *a2, int a3)
{
  v3 = 48828125 * a3 + 1;
  v4 = 48828125 * v3 + 1;
  v5 = 48828125 * v4 + 1;
  *result = v3;
  result[1] = v4;
  v6 = ((97656250 * v5) | ((v5 ^ v3) >> 31)) + 2;
  result[2] = v5;
  result[3] = v6;
  v7 = (result + 4);
  v8 = 123;
  do
  {
    v9 = v5 ^ v3;
    v3 = *(v7 - 3);
    v5 = v6;
    HIDWORD(v10) = v9;
    LODWORD(v10) = v6 ^ v3;
    v6 = v10 >> 31;
    *v7++ = v6;
    --v8;
  }

  while (v8);
  for (i = 0; i != 127; ++i)
  {
    result[i] = bswap32(result[i]);
  }

  *a2 = 127;
  return result;
}

uint64_t sub_2337BE06C(uint64_t a1)
{
  (*(*a1 + 72))(&v7);
  v2 = v7;
  v3 = (*(*a1 + 120))(a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2337BE4E0;
  v6[3] = &unk_2789EEF28;
  v6[4] = a1;
  v4 = sub_2337BE174(v2, @"lensCorrectionFilter", v3, v6);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v4;
}

void sub_2337BE15C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337BE174(uint64_t a1, void *a2, int a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p.__r_.__value_.__l.__data_);
  if (a1 + 32 == v9)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2337BEDA4;
    v28[3] = &unk_2789EEF70;
    v12 = v8;
    v29 = v12;
    sub_23386DB28(a1, v7, v28, &p_p);
    v17 = p_p;
    if (p_p)
    {
      v18 = sub_23386FD70(p_p, v13, v14, v15, v16);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = objc_msgSend_longLongValue(v18, v19, v20, v21, v22);
    }

    else
    {
      v11 = 0;
    }

    if (v33)
    {
      sub_2337239E8(v33);
    }

    if (!v17)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v23 = sub_2337BEEAC(a1 + 24, &__p.__r_.__value_.__l.__data_);
    v24 = (v23 + 56);
    v31[1] = v11;
    v31[0] = sub_2337BF0C8;
    if (v31 != (v23 + 56))
    {
      v25 = *v24;
      if (*v24)
      {
        p_p = 0;
        v33 = 0;
        v25(2, v24, &p_p, 0, 0);
        v31[0](2, v31, v24, 0, 0);
        (p_p)(2, &p_p, v31, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v23 + 64) = v11;
        *(v23 + 56) = sub_2337BF0C8;
        v31[0] = 0;
      }
    }

    sub_2337BF090(v31);
  }

  else
  {
    v10 = sub_2337BEDF0((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2337BE450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2337BE4E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v7);
  v4 = v7;
  v5 = (*(*a1 + 120))(a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2337BEAF8;
  v6[3] = &unk_2789EEF48;
  v6[4] = a1;
  sub_2337BE5F8(v4, @"lensCorrectionParameters", v5, v6, a2);
  if (v8)
  {
    sub_2337239E8(v8);
  }
}

void sub_2337BE5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337BE5F8(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v9 = a2;
  v44 = a4;
  v45 = v9;
  sub_2337BEBCC(v9, a3, &v55);
  v10 = sub_233735E3C(a1 + 24, &v55.__r_.__value_.__l.__data_);
  if (a1 + 32 == v10)
  {
    LOBYTE(__p) = 0;
    v54 = 0;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_2337BF1E4;
    v48[3] = &unk_2789EEF98;
    v43 = v44;
    v49 = v43;
    sub_23386DB28(a1, v9, v48, &v50);
    if (v50)
    {
      v16 = sub_23386FD70(v50, v12, v13, v14, v15);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v21 = 0;
      __src = 0uLL;
      v47 = 0;
      while (v21 < objc_msgSend_count(v16, v17, v18, v19, v20))
      {
        v25 = objc_msgSend_objectAtIndexedSubscript_(v16, v22, v21, v23, v24);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v41 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v41, "RawCameraException");
          __cxa_throw(v41, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        objc_msgSend_doubleValue(v25, v26, v27, v28, v29);
        v31 = __src.n128_u64[1];
        if (__src.n128_u64[1] >= v47)
        {
          v33 = __src.n128_u64[0];
          v34 = __src.n128_u64[1] - __src.n128_u64[0];
          v35 = (__src.n128_u64[1] - __src.n128_u64[0]) >> 3;
          v36 = v35 + 1;
          if ((v35 + 1) >> 61)
          {
            sub_2337235BC();
          }

          v37 = v47 - __src.n128_u64[0];
          if ((v47 - __src.n128_u64[0]) >> 2 > v36)
          {
            v36 = v37 >> 2;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFF8)
          {
            v38 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            sub_233723798(&__src, v38);
          }

          *(8 * v35) = v30;
          v32 = 8 * v35 + 8;
          memcpy(0, v33, v34);
          v39 = __src.n128_u64[0];
          __src.n128_u64[0] = 0;
          __src.n128_u64[1] = v32;
          v47 = 0;
          if (v39)
          {
            operator delete(v39);
          }
        }

        else
        {
          *__src.n128_u64[1] = v30;
          v32 = v31 + 8;
        }

        __src.n128_u64[1] = v32;

        ++v21;
      }

      sub_2337BF26C(&__p, &__src);
      if (__src.n128_u64[0])
      {
        __src.n128_u64[1] = __src.n128_u64[0];
        operator delete(__src.n128_u64[0]);
      }
    }

    if (v51)
    {
      sub_2337239E8(v51);
    }

    if ((v54 & 1) == 0)
    {
      (v43)[2](&__src);
      sub_233767718(&__p, &__src);
      if (__src.n128_u64[0])
      {
        __src.n128_u64[1] = __src.n128_u64[0];
        operator delete(__src.n128_u64[0]);
      }

      if ((v54 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    __src.n128_u64[0] = &v55;
    v40 = sub_2337BEEAC(a1 + 24, &v55.__r_.__value_.__l.__data_);
    sub_2337BF2E8(v40 + 56, &__p);
    if ((v54 & 1) == 0)
    {
LABEL_41:
      sub_233728FA8();
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_2337236E0(a5, __p, v53, (v53 - __p) >> 3);
    if (v54 == 1 && __p)
    {
      v53 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = sub_2337BF434((v10 + 56));
    if (!v11)
    {
      sub_2337BEE3C();
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_2337236E0(a5, *v11, v11[1], (v11[1] - *v11) >> 3);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }
}

void sub_2337BE9FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, uint64_t a25, char a26)
{
  __cxa_free_exception(v27);

  if (a22)
  {
    sub_2337239E8(a22);
  }

  if (a26 == 1 && __p)
  {
    operator delete(__p);
  }

  if (*(v28 - 105) < 0)
  {
    operator delete(*(v28 - 128));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2337BEB00(uint64_t a1)
{
  *a1 = &unk_2849121B8;
  v3 = (a1 + 400);
  sub_233735AD4(&v3);
  return sub_233736628(a1);
}

uint64_t sub_2337BEB5C(uint64_t a1)
{
  *a1 = &unk_2849121B8;
  v4 = (a1 + 400);
  sub_233735AD4(&v4);
  v2 = sub_233736628(a1);
  return MEMORY[0x2383ABF10](v2, 0x10A1C4009B45E12);
}

void sub_2337BEBCC(void *a1@<X1>, int a2@<W2>, std::string *a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  v11 = objc_msgSend_UTF8String(v6, v7, v8, v9, v10);
  v12 = strlen(v11);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2337304FC();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v12;
  if (v12)
  {
    memmove(&__dst, v11, v12);
  }

  __dst.__r_.__value_.__s.__data_[v13] = 0;
  v14 = std::string::append(&__dst, "_", 1uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v21, p_p, size);
  *a3 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_2337BED4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2337BEDA4(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v3 = (*(*(a1 + 32) + 16))();

  return objc_msgSend_numberWithUnsignedInt_(v1, v2, v3, v4, v5);
}

uint64_t (**sub_2337BEDF0(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_28490C218, &unk_233905F18);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_2337BEE3C()
{
  exception = __cxa_allocate_exception(8uLL);
  exception->__vftable = 0;
  v1 = sub_2337BEE74(exception);
  __cxa_throw(v1, MEMORY[0x277D82758], sub_2337BEEA8);
}

std::bad_cast *sub_2337BEE74(std::bad_cast *a1)
{
  result = std::bad_cast::bad_cast(a1);
  result->__vftable = (MEMORY[0x277D828D0] + 16);
  return result;
}

uint64_t sub_2337BEEAC(uint64_t a1, void **a2)
{
  v2 = *sub_233757640(a1, &v4, a2);
  if (!v2)
  {
    sub_2337BEF54();
  }

  return v2;
}

uint64_t sub_2337BEFF4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2337BF040(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2337BF040(uint64_t a1)
{
  sub_2337BF090((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t (**sub_2337BF090(uint64_t (**result)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*result)
  {
    return (*result)(0, result, 0, 0, 0);
  }

  return result;
}

void *sub_2337BF0C8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2337BF0C8;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2337BF0C8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_28490C218;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_28490C218);
  }

  else
  {
    v6 = a5 == &unk_233905F18;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

BOOL sub_2337BF190(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

id sub_2337BF1E4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(__p);
  v1 = sub_2337BF480(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v1;
}

void sub_2337BF250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337BF26C(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_23373176C(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_2337236E0(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_2337BF2E8(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  sub_2337236E0(v5 + 8, *a2, a2[1], (a2[1] - *a2) >> 3);
  *&v5[0] = sub_2337BF558;
  if (v5 != a1)
  {
    v3 = *a1;
    if (*a1)
    {
      v6[0] = 0;
      v6[1] = 0;
      v3(2, a1, v6, 0, 0);
      (*&v5[0])(2, v5, a1, 0, 0);
      (v6)[0](2, v6, v5, 0, 0);
      sub_2337BF090(v6);
    }

    else
    {
      *(a1 + 8) = *(v5 + 8);
      *(a1 + 24) = *(&v5[1] + 1);
      memset(v5 + 8, 0, 24);
      *a1 = sub_2337BF558;
      *&v5[0] = 0;
    }
  }

  sub_2337BF090(v5);
  return a1;
}

void sub_2337BF428(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_233721B78(a1);
}

uint64_t (**sub_2337BF434(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_28490C228, &unk_233905F20);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2337BF480(double **a1)
{
  v6 = sub_233755CB8(a1[1] - *a1);
  v7 = *a1;
  v8 = a1[1];
  if (*a1 != v8)
  {
    do
    {
      v9 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v2, v3, v4, v5, *v7);
      objc_msgSend_addObject_(v6, v10, v9, v11, v12);

      ++v7;
    }

    while (v7 != v8);
  }

  v13 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v2, v6, v4, v5);

  return v13;
}

void *sub_2337BF558(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      a3[2] = 0;
      a3[3] = 0;
      a3[1] = 0;
      sub_2337236E0((a3 + 1), a2[1], a2[2], (a2[2] - a2[1]) >> 3);
      result = 0;
      *a3 = sub_2337BF558;
      return result;
    }

    v8 = a2[1];
    if (v8)
    {
      a2[2] = v8;
      operator delete(v8);
    }

    result = 0;
LABEL_11:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    *(a3 + 1) = *(a2 + 1);
    a3[3] = a2[3];
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    *a3 = sub_2337BF558;
    goto LABEL_11;
  }

  if (a1 != 3)
  {
    return &unk_28490C228;
  }

  if (a4)
  {
    v7 = sub_2337BF190(a4, &unk_28490C228);
  }

  else
  {
    v7 = a5 == &unk_233905F20;
  }

  if (v7)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

void sub_2337BF660(uint64_t a1)
{
  v5 = &unk_28490CE28;
  v6 = 36;
  (*(*a1 + 160))(&v3);
  v2 = 20;
  strcpy(__p, "CIFF:CanonColorInfo1");
  (*(*v3 + 600))();
  if (v2 < 0)
  {
    operator delete(*__p);
  }

  if (v4)
  {
    sub_2337239E8(v4);
  }
}

void sub_2337BF768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337BF7A4(uint64_t a1, uint64_t a2, void **a3, _DWORD *a4)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  v6 = sub_2337921EC(a2, a3, &__p);
  v7 = __p;
  if (v6)
  {
    v8 = *(a1 + 8);
    if (v8 < (v13 - __p) >> 2)
    {
      *a4 = *(__p + v8);
      v9 = 1;
LABEL_5:
      v13 = v7;
      operator delete(v7);
      return v9;
    }
  }

  v9 = 0;
  v10 = 0;
  if (__p)
  {
    goto LABEL_5;
  }

  return v10;
}

void sub_2337BF838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337BF854(uint64_t a1, uint64_t a2, void **a3, unsigned int a4, uint64_t *a5)
{
  v6 = a4;
  if (a4 == 3)
  {
    a4 = 4;
  }

  v7 = sub_2337BF918(a1, a2, a3, a4, a5);
  if (v6 == 3)
  {
    if (v7)
    {
      v8 = *(*a5 + 8);
      v9 = (*a5 + 12);
      v15 = **a5;
      v10 = vld1_dup_f32(v9);
      sub_23372630C(&v16, 3uLL);
      v11 = *a5;
      v12 = v16;
      *a5 = v16;
      *v12 = vrev64_s32(vmul_s32(v10, v15));
      v12[1].i32[0] = v8 * v15.i32[0];
      v13 = a5[2];
      a5[2] = v17;
      *&v16 = v11;
      v17 = v13;
      if (v11)
      {
        *(&v16 + 1) = v11;
        operator delete(v11);
      }
    }
  }

  return 1;
}

uint64_t sub_2337BF918(uint64_t a1, uint64_t a2, void **a3, unsigned int a4, uint64_t *a5)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  v8 = sub_2337921EC(a2, a3, &__p);
  v9 = __p;
  if (!v8 || *(a1 + 8) + a4 > ((v15 - __p) >> 2))
  {
    v10 = 0;
    goto LABEL_4;
  }

  sub_2337BFA0C(a5, a4);
  v9 = __p;
  if (!a4)
  {
    v10 = 1;
LABEL_4:
    if (!v9)
    {
      return v10;
    }

    goto LABEL_10;
  }

  v11 = 0;
  v12 = *a5;
  do
  {
    *(v12 + 4 * v11) = *&v9[4 * (v11 + *(a1 + 8))];
    ++v11;
  }

  while (a4 != v11);
  v10 = 1;
LABEL_10:
  v15 = v9;
  operator delete(v9);
  return v10;
}

void sub_2337BF9F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337BFA0C(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_2337BFA3C(a1, a2 - v2);
  }
}

void sub_2337BFA3C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_2337235BC();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_2337235D4(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

double sub_2337BFB98(uint64_t a1)
{
  if (sub_2337F9770(a1))
  {

    return sub_2338127E0(a1);
  }

  else
  {

    return sub_2338191FC();
  }
}

double sub_2337BFBF0@<D0>(uint64_t a1@<X0>, double **a2@<X8>)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (sub_2337F9854(a1))
  {

    sub_2337F9884(a1, a2);
  }

  else
  {
    v15 = &unk_28490E658;
    (*(*a1 + 160))(&v9, a1);
    v5 = v9;
    sub_23372A488(&__p, "CIFF:CanonShotInfo");
    v6 = sub_233733D74(v5, &__p, &v15);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    if (v10)
    {
      sub_2337239E8(v10);
    }

    if (v6)
    {
      __p = 0;
      v13 = 0;
      v14 = 0;
      sub_2337C0120(&__p, &unk_233905F60, &unk_233905FF0, 0x12uLL);
      sub_23372A488(&v9, "CIFF:CanonShotInfo");
      v7 = (*(*a1 + 2968))(a1, &v9, &__p);
      if (v11 < 0)
      {
        operator delete(v9);
      }

      (*(*a1 + 2960))(a1, v7);
      if (__p)
      {
        v13 = __p;
        operator delete(__p);
      }
    }

    else
    {
      sub_233730758(a2, 3uLL);
      v8 = *a2;
      result = 1.78;
      *v8 = xmmword_233905F50;
      v8[2] = 1.37;
    }
  }

  return result;
}

void sub_2337BFE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337BFEA8(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v6 = &unk_28490CE28;
  sub_23372A488(__p, "CIFF:CanonColorInfo1");
  (*(*a1 + 2976))(a1, a2, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2337BFF70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2337BFFA0(uint64_t a1, uint64_t a2, void **a3, _DWORD *a4)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v5 = sub_2337921EC(a2, a3, &v9);
  v6 = v9;
  v7 = v10 != v9 && v5;
  if (v7)
  {
    *a4 = *v9;
  }

  else if (!v9)
  {
    return 0;
  }

  v10 = v6;
  operator delete(v6);
  return v7;
}

void sub_2337C0020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337C003C(uint64_t a1, uint64_t a2, void **a3, unsigned int a4, uint64_t *a5)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  v7 = sub_2337921EC(a2, a3, &__p);
  v8 = __p;
  if (!v7 || a4 > ((v14 - __p) >> 2))
  {
    v9 = 0;
    goto LABEL_4;
  }

  sub_2337BFA0C(a5, a4);
  v8 = __p;
  if (!a4)
  {
    v9 = 1;
LABEL_4:
    if (!v8)
    {
      return v9;
    }

    goto LABEL_10;
  }

  v10 = 0;
  v11 = *a5;
  do
  {
    *(v11 + v10) = *&v8[v10];
    v10 += 4;
  }

  while (4 * a4 != v10);
  v9 = 1;
LABEL_10:
  v14 = v8;
  operator delete(v8);
  return v9;
}

void sub_2337C0104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337C0120(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_233723580(result, a4);
  }

  return result;
}

void sub_2337C0178(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337C0194(uint64_t a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_233758F1C(&v6, &unk_233906024, &unk_23390606C, 0x12uLL);
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE:ShotInfo");
  v2 = (*(*a1 + 2968))(a1, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  (*(*a1 + 2960))(a1, v3);
  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }
}

void sub_2337C0294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337C02CC(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v6 = &unk_28490CE28;
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE:G9WhiteBalance");
  (*(*a1 + 2976))(a1, a2, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2337C0394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337C03B0(void *a1)
{
  sub_2338035F8(a1);
  if ((*(*a1 + 2984))(a1))
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = __dynamic_cast(v2, &unk_28490A7B0, &unk_28490B1A0, 0);
      if (v3)
      {
        v4 = a1[4];
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_2337BC48C(v3, 1);
        if (v4)
        {

          sub_2337239E8(v4);
        }
      }
    }
  }
}

void sub_2337C0494(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2337239E8(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2337C04AC(uint64_t a1)
{
  if (sub_23373C264(a1) != 34713)
  {
    return 0;
  }

  v2 = sub_23373AD98(a1);
  return (*(*a1 + 344))(a1) == ((v2 >> 28) & 0xFFFFFFF0) * ((v2 + 9) / 10);
}

uint64_t sub_2337C054C(uint64_t a1)
{
  if ((*(*a1 + 2984))(a1))
  {
    return 1;
  }

  return sub_23373C264(a1);
}

id sub_2337C05C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isEqualToString_(v3, v4, @"hasWeirdCompressionMode", v5, v6))
  {
    v7 = (*(*a1 + 2984))(a1);
    v8 = MEMORY[0x277CBEC28];
    if (v7)
    {
      v8 = MEMORY[0x277CBEC38];
    }

    v9 = v8;
  }

  else
  {
    v9 = sub_233804DCC(a1, v3);
  }

  v10 = v9;

  return v10;
}

void sub_2337C0688(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v31 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038();
  v3 = v2;
  if ((v1 + 1) >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "CFujiS2Unpacker", &unk_233945DBE, buf, 2u);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2337C0A30;
  v29[3] = &unk_2789EE800;
  v29[4] = v1;
  v4 = MEMORY[0x2383AC810](v29);
  bzero(buf, 0x2E00uLL);
  v5 = sub_2337ADCC4(v1);
  v6 = *(v1 + 44);
  if ((v6 - 10000) < 0xFFFFD8F4 || (v6 & 3) != 0 || (v7 = *(v1 + 48), (v7 - 10000) < 0xFFFFD8F4) || (v7 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = v5;
  v28 = v4;
  v9 = v6 - 4;
  v10 = 2 * v6;
  v11 = 4;
  do
  {
    (*(**(v1 + 24) + 32))(*(v1 + 24), buf, 4 * v7);
    v12 = 0;
    v13 = 0;
    v14 = (2 * v7);
    v15 = v8 + 2 * v9;
    do
    {
      v16 = bswap32(*&buf[v12]);
      v17 = bswap32(*&buf[v12 + 2]);
      v18 = bswap32(*&buf[v12 + 4]);
      v19 = bswap32(*&buf[v12 + 6]);
      v20 = bswap32(*&buf[v14]);
      v21 = bswap32(*&buf[v14 + 2]);
      v22 = bswap32(*&buf[v14 + 4]) >> 16;
      v23 = bswap32(*&buf[v14 + 6]);
      *v15 = 0;
      *(v15 + 2) = HIWORD(v20);
      *(v15 + 6) = HIWORD(v16);
      v24 = (v15 + v10);
      *v24 = HIWORD(v21);
      v24[1] = HIWORD(v17);
      v25 = v24 + v10;
      *v25 = 0;
      *(v25 + 2) = v22;
      *(v25 + 3) = HIWORD(v18);
      v26 = &v25[v10];
      *v26 = HIWORD(v23);
      v13 += 4;
      v14 += 8;
      *(v26 + 2) = HIWORD(v19);
      v12 += 8;
      v15 = &v25[v10 + v10];
      *(v26 + 3) = 0;
    }

    while (v13 < v7);
    v11 += 4;
    v9 -= 4;
  }

  while (v11 <= v6);
  v28[2](v28);
}

void sub_2337C0A30(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CFujiS2Unpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337C0AB8(os_signpost_id_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPentaxK10DUnpacker", &unk_233945DBE, buf, 2u);
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_2337C1314;
  v43[3] = &unk_2789EE800;
  v43[4] = a1;
  v4 = MEMORY[0x2383AC810](v43);
  v45[0] = 0;
  v45[1] = 0;
  v5 = sub_2337ADCC4(a1);
  v6 = *(a1 + 192);
  if (*(a1 + 200) - v6 <= 0x1DuLL || !sub_2337B4F10(v6, buf))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_233726998(&v42, (a1 + 44));
  sub_233726998(&v41, (a1 + 48));
  v44 = (*(*a1 + 152))(a1);
  sub_233723AE0(&v38, &v44);
  sub_233726938(&v40, &v38);
  LODWORD(v38) = v42;
  v7 = *sub_233757DB0(&v38, &v41);
  v38 = 2;
  sub_233723C18(&v39, &v38);
  v44 = v7;
  v8 = sub_233757DB0(&v44, &v39);
  if (*v8 < v40 || (v42 & 1) != 0)
  {
    v36 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v36, "RawCameraException");
    __cxa_throw(v36, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = *(a1 + 44);
  v9 = *(a1 + 48);
  v11 = (*(*a1 + 152))(a1);
  v12 = &v5[2 * (v9 * v10)];
  v13 = &v12[-v11];
  (*(**(a1 + 24) + 32))(*(a1 + 24), v13, v11);
  if (v9)
  {
    v37 = v4;
    v14 = 0;
    v15 = 0;
    v16 = 32;
    do
    {
      v17 = v12 - v13 + ((39 - v16) >> 3);
      if (8 * v17 < 2 * ((v9 - v14) * v10))
      {
        v34 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v34, "RawCameraException");
        __cxa_throw(v34, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if ((v13 - v5 < v10 || v17 < (4 * v10)) && v12 != v13)
      {
        operator new[]();
      }

      if (v16 >= 16)
      {
        v15 = (v15 << 16) | (*v13 << 8) | v13[1];
        v13 += 2;
        v16 -= 16;
      }

      v18 = *&buf[2 * ((v15 << v16) >> 23)];
      v19 = ((v18 >> 10) & 0x1F) + v16;
      if (v18 > 0x8000)
      {
        v21 = v18;
      }

      else
      {
        if ((v18 & 0x8000) != 0)
        {
          v18 = *&buf[2 * (((v15 << v16) >> 16) & 0x3FF)];
          v19 += (v18 >> 10) & 0x1F;
        }

        v20 = v18 & 0x1F;
        if ((v18 & 0x1F) != 0)
        {
          if (v19 >= 16)
          {
            v15 = (v15 << 16) | (*v13 << 8) | v13[1];
            v13 += 2;
            v19 -= 16;
          }

          v21 = ((v15 << v19) >> -v20) - ((((v15 << v19) >> 31) - 1) >> -v20);
          v19 += v20;
        }

        else
        {
          v21 = (v18 << 8) & 0x8000;
        }
      }

      v22 = v14 & 1;
      v23 = LODWORD(v45[v22]) + v21;
      LODWORD(v45[v22]) = v23;
      if (v19 >= 16)
      {
        v15 = (v15 << 16) | (*v13 << 8) | v13[1];
        v13 += 2;
        v19 -= 16;
      }

      v24 = *&buf[2 * ((v15 << v19) >> 23)];
      v16 = ((v24 >> 10) & 0x1F) + v19;
      if (v24 > 0x8000)
      {
        v24 = v24;
      }

      else
      {
        if ((v24 & 0x8000) != 0)
        {
          v24 = *&buf[2 * (((v15 << v19) >> 16) & 0x3FF)];
          v16 += (v24 >> 10) & 0x1F;
        }

        v25 = v24 & 0x1F;
        if ((v24 & 0x1F) != 0)
        {
          if (v16 >= 16)
          {
            v15 = (v15 << 16) | (*v13 << 8) | v13[1];
            v13 += 2;
            v16 -= 16;
          }

          v24 = ((v15 << v16) >> -v25) - ((((v15 << v16) >> 31) - 1) >> -v25);
          v16 += v25;
        }

        else
        {
          v24 = (v24 << 8) & 0x8000;
        }
      }

      v26 = (v22 * 2) | 1;
      v27 = *(v45 + ((v22 * 2) | 1)) + v24;
      *(v45 + v26) = v27;
      if (v10 >= 3)
      {
        v28 = 2;
        do
        {
          if (v16 >= 16)
          {
            v15 = (v15 << 16) | (*v13 << 8) | v13[1];
            v13 += 2;
            v16 -= 16;
          }

          v29 = *&buf[2 * ((v15 << v16) >> 23)];
          v30 = ((v29 >> 10) & 0x1F) + v16;
          *v5 = v23;
          if (v29 > 0x8000)
          {
            LOWORD(v29) = v29;
          }

          else
          {
            if ((v29 & 0x8000) != 0)
            {
              v29 = *&buf[2 * (((v15 << v16) >> 16) & 0x3FF)];
              v30 += (v29 >> 10) & 0x1F;
            }

            v31 = v29 & 0x1F;
            if ((v29 & 0x1F) != 0)
            {
              if (v30 >= 16)
              {
                v15 = (v15 << 16) | (*v13 << 8) | v13[1];
                v13 += 2;
                v30 -= 16;
              }

              v29 = ((v15 << v30) >> -v31) - ((((v15 << v30) >> 31) - 1) >> -v31);
              v30 += v31;
            }

            else
            {
              LOWORD(v29) = (v29 << 8) & 0x8000;
            }
          }

          if (v30 >= 16)
          {
            v15 = (v15 << 16) | (*v13 << 8) | v13[1];
            v13 += 2;
            v30 -= 16;
          }

          v32 = *&buf[2 * ((v15 << v30) >> 23)];
          v16 = ((v32 >> 10) & 0x1F) + v30;
          *(v5 + 1) = v27;
          if (v32 > 0x8000)
          {
            LOWORD(v32) = v32;
          }

          else
          {
            if ((v32 & 0x8000) != 0)
            {
              v32 = *&buf[2 * (((v15 << v30) >> 16) & 0x3FF)];
              v16 += (v32 >> 10) & 0x1F;
            }

            v33 = v32 & 0x1F;
            if ((v32 & 0x1F) != 0)
            {
              if (v16 >= 16)
              {
                v15 = (v15 << 16) | (*v13 << 8) | v13[1];
                v13 += 2;
                v16 -= 16;
              }

              v32 = ((v15 << v16) >> -v33) - ((((v15 << v16) >> 31) - 1) >> -v33);
              v16 += v33;
            }

            else
            {
              LOWORD(v32) = (v32 << 8) & 0x8000;
            }
          }

          LOWORD(v23) = v29 + v23;
          LOWORD(v27) = v32 + v27;
          v5 += 4;
          v28 += 2;
        }

        while (v28 < v10);
      }

      *v5 = v23;
      *(v5 + 1) = v27;
      v5 += 4;
      ++v14;
    }

    while (v14 != v9);
    v4 = v37;
  }

  v4[2](v4);
}

void sub_2337C1314(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPentaxK10DUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void *sub_2337C139C(void *a1)
{
  *a1 = &unk_28490FF40;
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  return sub_233723A54(a1);
}

void sub_2337C13FC(void *a1)
{
  *a1 = &unk_28490FF40;
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337C1470(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  *&v54[17405] = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038();
  v3 = v2;
  if ((v1 + 1) >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "CFujiS3Unpacker", &unk_233945DBE, buf, 2u);
  }

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_2337C1898;
  v52[3] = &unk_2789EE800;
  v52[4] = v1;
  v50 = MEMORY[0x2383AC810](v52);
  bzero(buf, 0x4400uLL);
  v4 = sub_2337ADCC4(v1);
  v5 = 0;
  v6 = v1;
  v7 = *(v1 + 44);
  v48 = (2 * v7);
  v49 = v7;
  v8 = &v54[v48];
  v51 = (4 * v7);
  v9 = 2 * v51;
  v10 = v4 + 6 * v7;
  v11 = v4 + 2 * v7;
  v12 = v4 + 4 * v7;
  do
  {
    (*(**(v6 + 24) + 32))(*(v6 + 24), buf, v51);
    v13 = 0;
    v14 = -4;
    do
    {
      v15 = v4 + v13;
      v16 = (v10 + v13);
      v17 = *&v54[v13 - 1];
      v18 = v11 + v13;
      v19 = (v12 + v13);
      v20 = *&v54[v13 + 1];
      v21 = *&v54[v13 + 3];
      v22 = *&v8[v13 - 3];
      v23 = *&v8[v13 - 1];
      v24 = *&v8[v13 + 1];
      v25 = *&v8[v13 + 3];
      *v15 = buf[v13] | (buf[v13 + 1] << 8);
      *(v15 + 2) = 0;
      *(v15 + 4) = v20;
      *v18 = 0;
      *(v18 + 2) = v17;
      *(v18 + 6) = v21;
      *v19 = v22;
      v19[1] = v24;
      *v16 = 0;
      v16[1] = v23;
      v13 += 8;
      v16[2] = 0;
      v14 += 4;
      v16[3] = v25;
    }

    while (v14 >> 2 < 0x43F);
    v4 += v9;
    v10 += v9;
    v11 += v9;
    v12 += v9;
    v26 = v5 >= 0x5A0;
    v5 += 2;
  }

  while (!v26);
  if (*(v6 + 187))
  {
    v27 = sub_2337ADCC4(v6);
    v28 = 0;
    v29 = v27 - 2 * v51;
    v30 = 2 * v51;
    v31 = v29 + 2 * v49;
    v32 = v29 + 4 * v49;
    v33 = v27 + 6 * v49 - 2 * v51;
    v34 = &buf[v48 + 7];
    while (1)
    {
      (*(**(v6 + 24) + 32))(*(v6 + 24), buf, v51);
      v35 = 0;
      v36 = -4;
      while (1)
      {
        v36 += 4;
        if (v28)
        {
          break;
        }

LABEL_13:
        v35 += 8;
        if (v36 >> 2 >= 0x43F)
        {
          goto LABEL_16;
        }
      }

      v37 = *&v54[v35 + 3];
      v38 = *&buf[v48 + v35];
      v39 = *&v34[v35 - 5];
      v40 = *&v34[v35 - 3];
      v41 = *&v34[v35 - 1];
      v42 = *&v54[v35 + 1];
      v43 = *&buf[v35 + 2];
      v44 = v29 + v35;
      *(v44 + 2) = *&buf[v35];
      *(v44 + 6) = v42;
      *(v31 + v35 + 4) = v43;
      if (v36 >> 2 <= 0x43E)
      {
        break;
      }

      v47 = v32 + v35;
      *(v47 + 2) = v38;
      *(v47 + 6) = v40;
      *(v33 + v35 + 4) = v39;
LABEL_16:
      v29 += v30;
      v31 += v30;
      v32 += v30;
      v33 += v30;
      v26 = v28 >= 0x5A0;
      v28 += 2;
      if (v26)
      {
        goto LABEL_18;
      }
    }

    *(v31 + v35 + 8) = v37;
    v45 = v32 + v35;
    *(v45 + 2) = v38;
    *(v45 + 6) = v40;
    v46 = v33 + v35;
    *(v46 + 4) = v39;
    *(v46 + 8) = v41;
    goto LABEL_13;
  }

LABEL_18:
  v50[2](v50);
}

void sub_2337C1844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (**a12)(void))
{
  a12[2]();

  _Unwind_Resume(a1);
}

void sub_2337C1898(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CFujiS3Unpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337C1928(void *a1)
{
  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_2337C1960(void *a1, double a2, uint64_t a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a1;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v6;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v36, v40, 16);
  if (v11)
  {
    v12 = *v37;
    v13 = *MEMORY[0x277CBFAF0];
    v14 = *MEMORY[0x277CBFB50];
    do
    {
      v15 = 0;
      v16 = v7;
      do
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v36 + 1) + 8 * v15);
        objc_msgSend_setValue_forKey_(v17, v9, v16, v13, v10);
        v22 = objc_msgSend_inputKeys(v17, v18, v19, v20, v21);
        v26 = objc_msgSend_containsObject_(v22, v23, @"inputScaleFactor", v24, v25);

        if (v26)
        {
          v31 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v27, v28, v29, v30, a2);
          objc_msgSend_setValue_forKey_(v17, v32, v31, @"inputScaleFactor", v33);
        }

        v7 = objc_msgSend_valueForKey_(v17, v27, v14, v29, v30);

        ++v15;
        v16 = v7;
      }

      while (v11 != v15);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v36, v40, 16);
    }

    while (v11);
  }

  return v7;
}

void sub_2337C1B84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    if (sub_233739CC0(a1))
    {
      (*(*a1 + 296))(&v23, a1, 160);
      if (v23)
      {
        v6 = sub_233739994(v5, *MEMORY[0x277CD3038], 0);
        if (v6)
        {
          v7 = MEMORY[0x277CCABB0];
          v8 = (*(*v23 + 16))(v23);
          v12 = objc_msgSend_numberWithUnsignedInt_(v7, v9, v8, v10, v11);
          objc_msgSend_setObject_forKeyedSubscript_(v6, v13, v12, @"JPEGInterchangeFormat", v14);

          v15 = MEMORY[0x277CCABB0];
          v16 = (*(*v23 + 24))(v23);
          v20 = objc_msgSend_numberWithUnsignedInt_(v15, v17, v16, v18, v19);
          objc_msgSend_setObject_forKeyedSubscript_(v6, v21, v20, @"JPEGInterchangeFormatLength", v22);
        }
      }

      if (v24)
      {
        sub_2337239E8(v24);
      }
    }

    if (sub_233739CC8(a1))
    {
      sub_2337C1D80(a1, v5);
    }

    else
    {
      sub_2337C2240(a1, v5);
      sub_2337C2D04(a1, a2, v5);
    }
  }
}

void sub_2337C1D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(a1);
}

void sub_2337C1D80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_2337854A4(v3, *MEMORY[0x277CD3468], 0);
  (*(*a1 + 144))(&v52, a1);
  v5 = v53 - 24;
  if (v52 != v53 && v5 > v52)
  {
    v7 = v52 + 24;
    do
    {
      v8 = *(v7 - 8);
      v9 = *(v7 - 24);
      v10 = *(v5 + 16);
      *(v7 - 24) = *v5;
      *(v7 - 8) = v10;
      *v5 = v9;
      *(v5 + 16) = v8;
      v5 -= 24;
      v11 = v7 >= v5;
      v7 += 24;
    }

    while (!v11);
  }

  v12 = sub_2337D3AB8(&v52);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v13, v12, *MEMORY[0x277CD35E0], v14);

  v15 = (*(*a1 + 520))(a1);
  v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"{%d, %d}", v17, v18, v15, HIDWORD(v15));
  objc_msgSend_setObject_forKeyedSubscript_(v4, v20, v19, @"fullSize", v21);

  v22 = MEMORY[0x277CCACA8];
  sub_2337C3F74(a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    objc_msgSend_stringWithUTF8String_(v22, v23, &__p, v24, v25);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v22, v23, __p.__r_.__value_.__l.__data_, v24, v25);
  }
  v26 = ;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v27, v26, @"kCGImageSourceRawIdentifier", v28);

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v29 = (*(*a1 + 432))(a1);
  v30 = (*(*a1 + 456))(a1);
  v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"{%d, %d}", v32, v33, v30 + v29, (HIDWORD(v30) + HIDWORD(v29)));
  objc_msgSend_setObject_forKeyedSubscript_(v4, v35, v34, @"cropOrigin", v36);

  v37 = (*(*a1 + 2760))(a1);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v38, v37, @"supportedSushiLevels", v39);

  (*(*a1 + 112))(&__p, a1);
  v40 = sub_233758E3C(__p.__r_.__value_.__l.__data_);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v41, v40, @"kCGImageSourceMethodVersion", v42);

  if (__p.__r_.__value_.__l.__size_)
  {
    sub_2337239E8(__p.__r_.__value_.__l.__size_);
  }

  v43 = sub_233739B8C(a1);
  v44 = sub_2338191A8(v43);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v45, v44, @"kCGImageSourceSushiLevel", v46);

  (*(*a1 + 296))(&__p, a1, 5000);
  v47 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0] && !getenv("RAWCAMERA_ENABLE_RAW_IMPORT_IN_SPARK"))
  {
    v48 = (*(*v47 + 32))(v47);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v49, v48, @"jpegThumbnail", v50);
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    sub_2337239E8(__p.__r_.__value_.__l.__size_);
  }

  __p.__r_.__value_.__r.__words[0] = &v52;
  sub_233735AD4(&__p);
}

void sub_2337C218C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  __p = &a17;
  sub_233735AD4(&__p);

  _Unwind_Resume(a1);
}

void sub_2337C2240(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*a1 + 120))(a1) <= 6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (sub_233739BA4(a1))
  {
    v4 = v3;
    v9 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6, v7, v8);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v10, v9, *MEMORY[0x277CD35E8], v11);
    (*(*a1 + 144))(&v158, a1);
    if (v158 != v159)
    {
      v12 = v159 - 24;
      if (v159 - 24 > v158)
      {
        v13 = v158 + 24;
        do
        {
          v14 = *(v13 - 8);
          v15 = *(v13 - 24);
          v16 = *(v12 + 16);
          *(v13 - 24) = *v12;
          *(v13 - 8) = v16;
          *v12 = v15;
          *(v12 + 16) = v14;
          v12 -= 24;
          v17 = v13 >= v12;
          v13 += 24;
        }

        while (!v17);
      }
    }

    v18 = sub_2337D3AB8(&v158);
    objc_msgSend_setObject_forKeyedSubscript_(v9, v19, v18, *MEMORY[0x277CD35E0], v20);
    v21 = MEMORY[0x277CCACA8];
    sub_2337C3F74(a1, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      objc_msgSend_stringWithUTF8String_(v21, v22, &__p, v23, v24);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v21, v22, __p.__r_.__value_.__l.__data_, v23, v24);
    }
    v25 = ;
    objc_msgSend_setObject_forKeyedSubscript_(v9, v26, v25, @"kCGImageSourceRawIdentifier", v27);

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v28 = (*(*a1 + 304))(a1);
    v29 = (*(*a1 + 320))(a1);
    v30 = (*(*a1 + 312))(a1);
    v34 = v28 | 2;
    if (!v29)
    {
      v34 = v28;
    }

    if (v30)
    {
      objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v31, v34 | 4, v32, v33);
    }

    else
    {
      objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v31, v34, v32, v33);
    }
    v35 = ;
    objc_msgSend_setObject_forKeyedSubscript_(v9, v36, v35, @"kCGImageSourceVendorLensCorrectionFeatures", v37);

    v38 = (*(*a1 + 2760))(a1);
    objc_msgSend_setObject_forKeyedSubscript_(v9, v39, v38, @"kCGImageSourceSupportedSushiLevels", v40);

    (*(*a1 + 112))(&__p, a1);
    v41 = sub_233758E3C(__p.__r_.__value_.__l.__data_);
    objc_msgSend_setObject_forKeyedSubscript_(v9, v42, v41, @"kCGImageSourceMethodVersion", v43);

    if (__p.__r_.__value_.__l.__size_)
    {
      sub_2337239E8(__p.__r_.__value_.__l.__size_);
    }

    v44 = sub_233739B8C(a1);
    v45 = sub_2338191A8(v44);
    objc_msgSend_setObject_forKeyedSubscript_(v9, v46, v45, @"kCGImageSourceSushiLevel", v47);

    if ((*(*a1 + 120))(a1) >= 8)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v9, v48, MEMORY[0x277CBEC28], off_27DE37C50, v49);
    }

    if ((*(*a1 + 2480))(a1))
    {
      v50 = MEMORY[0x277CCABB0];
      (*(*a1 + 2520))(a1);
      v55 = objc_msgSend_numberWithDouble_(v50, v51, v52, v53, v54);
      objc_msgSend_setObject_forKeyedSubscript_(v9, v56, v55, off_27DE37C00[0], v57);

      v58 = MEMORY[0x277CCABB0];
      (*(*a1 + 2528))(a1);
      v63 = objc_msgSend_numberWithDouble_(v58, v59, v60, v61, v62);
      objc_msgSend_setObject_forKeyedSubscript_(v9, v64, v63, off_27DE37C08[0], v65);

      v66 = MEMORY[0x277CCABB0];
      v67 = (*(*a1 + 2536))(a1);
      v71 = objc_msgSend_numberWithBool_(v66, v68, v67, v69, v70);
      objc_msgSend_setObject_forKeyedSubscript_(v9, v72, v71, off_27DE37C10[0], v73);

      v74 = MEMORY[0x277CCABB0];
      (*(*a1 + 2544))(a1);
      v79 = objc_msgSend_numberWithDouble_(v74, v75, v76, v77, v78);
      objc_msgSend_setObject_forKeyedSubscript_(v9, v80, v79, off_27DE37C18[0], v81);

      v82 = MEMORY[0x277CCABB0];
      (*(*a1 + 2552))(a1);
      v87 = objc_msgSend_numberWithDouble_(v82, v83, v84, v85, v86);
      objc_msgSend_setObject_forKeyedSubscript_(v9, v88, v87, off_27DE37C20[0], v89);

      v90 = MEMORY[0x277CCABB0];
      (*(*a1 + 2560))(a1);
      v95 = objc_msgSend_numberWithDouble_(v90, v91, v92, v93, v94);
      objc_msgSend_setObject_forKeyedSubscript_(v9, v96, v95, off_27DE37C28[0], v97);

      v98 = MEMORY[0x277CCABB0];
      (*(*a1 + 2568))(a1);
      v103 = objc_msgSend_numberWithDouble_(v98, v99, v100, v101, v102);
      objc_msgSend_setObject_forKeyedSubscript_(v9, v104, v103, off_27DE37C30[0], v105);

      v106 = (*(*a1 + 120))(a1);
      v107 = MEMORY[0x277CCABB0];
      v108 = *a1;
      if (v106 > 8)
      {
        v109 = (*(v108 + 2264))(a1);
      }

      else
      {
        v109 = (*(v108 + 2496))(a1);
      }

      v113 = objc_msgSend_numberWithBool_(v107, v110, v109, v111, v112);
      objc_msgSend_setObject_forKeyedSubscript_(v9, v114, v113, off_27DE37BE8[0], v115);

      v116 = MEMORY[0x277CCABB0];
      (*(*a1 + 2504))(a1);
      v121 = objc_msgSend_numberWithDouble_(v116, v117, v118, v119, v120);
      objc_msgSend_setObject_forKeyedSubscript_(v9, v122, v121, off_27DE37BF0[0], v123);

      v124 = MEMORY[0x277CCABB0];
      (*(*a1 + 2512))(a1);
      v129 = objc_msgSend_numberWithDouble_(v124, v125, v126, v127, v128);
      objc_msgSend_setObject_forKeyedSubscript_(v9, v130, v129, off_27DE37BF8[0], v131);

      v132 = MEMORY[0x277CCABB0];
      v133 = (*(*a1 + 2576))(a1);
      v137 = objc_msgSend_numberWithBool_(v132, v134, v133, v135, v136);
      objc_msgSend_setObject_forKeyedSubscript_(v9, v138, v137, off_27DE37C38[0], v139);

      v140 = MEMORY[0x277CCABB0];
      v141 = (*(*a1 + 2584))(a1);
      v145 = objc_msgSend_numberWithBool_(v140, v142, v141, v143, v144);
      objc_msgSend_setObject_forKeyedSubscript_(v9, v146, v145, off_27DE37C40[0], v147);

      v148 = MEMORY[0x277CCABB0];
      v149 = (*(*a1 + 2592))(a1);
      v153 = objc_msgSend_numberWithBool_(v148, v150, v149, v151, v152);
      objc_msgSend_setObject_forKeyedSubscript_(v9, v154, v153, off_27DE37C48[0], v155);
    }

    __p.__r_.__value_.__r.__words[0] = &v158;
    sub_233735AD4(&__p);
  }
}

void sub_2337C2C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  sub_233735AD4(&__p);

  _Unwind_Resume(a1);
}

void sub_2337C2D04(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((*(*a1 + 120))(a1) <= 6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (sub_233739B8C(a1))
  {
    v6 = sub_2337854A4(v5, *MEMORY[0x277CD3468], 0);
    v7 = (*(*a1 + 2744))(a1, a2);
    if (objc_msgSend_count(v7, v8, v9, v10, v11))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v6, v12, v7, @"filters", v13);
    }

    (*(*a1 + 720))(a1);
    v15 = v14;
    v20 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v16, v17, v18, v19);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v21, v20, @"wx", v22);

    v27 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v23, v24, v25, v26, v15);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v28, v27, @"wy", v29);

    (*(*a1 + 2624))(&v350, a1, a2, 1);
    v34 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v30, v31, v32, v33, *v350);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v35, v34, @"otrcS0", v36);

    v41 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v37, v38, v39, v40, *(v350 + 1));
    objc_msgSend_setObject_forKeyedSubscript_(v6, v42, v41, @"otrcS1", v43);

    v48 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v44, v45, v46, v47, *(v350 + 3));
    objc_msgSend_setObject_forKeyedSubscript_(v6, v49, v48, @"otrcS2", v50);

    v55 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v51, v52, v53, v54, *(v350 + 5));
    objc_msgSend_setObject_forKeyedSubscript_(v6, v56, v55, @"otrcS3", v57);

    v62 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v58, v59, v60, v61, *(v350 + 7));
    objc_msgSend_setObject_forKeyedSubscript_(v6, v63, v62, @"otrcS4", v64);

    v69 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v65, v66, v67, v68, *(v350 + 2));
    objc_msgSend_setObject_forKeyedSubscript_(v6, v70, v69, @"otrcY1", v71);

    v76 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v72, v73, v74, v75, *(v350 + 4));
    objc_msgSend_setObject_forKeyedSubscript_(v6, v77, v76, @"otrcY2", v78);

    v83 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v79, v80, v81, v82, *(v350 + 6));
    objc_msgSend_setObject_forKeyedSubscript_(v6, v84, v83, @"otrcY3", v85);

    if (__p)
    {
      sub_2337239E8(__p);
    }

    (*(*a1 + 1200))(&v350, a1);
    if (sub_2337E0044(&v350) < 3 || sub_2337E003C(&v350) <= 2)
    {
      v346 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v346, "RawCameraException");
      __cxa_throw(v346, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v86 = MEMORY[0x277CCABB0];
    v348 = sub_2337DFCEC(&v350, 0);
    v349 = v87;
    v88 = sub_2337DFD6C(&v348, 0);
    v93 = objc_msgSend_numberWithDouble_(v86, v89, v90, v91, v92, *v88);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v94, v93, @"mc00", v95);

    v96 = MEMORY[0x277CCABB0];
    v348 = sub_2337DFCEC(&v350, 0);
    v349 = v97;
    v98 = sub_2337DFD6C(&v348, 1u);
    v103 = objc_msgSend_numberWithDouble_(v96, v99, v100, v101, v102, *v98);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v104, v103, @"mc01", v105);

    v106 = MEMORY[0x277CCABB0];
    v348 = sub_2337DFCEC(&v350, 0);
    v349 = v107;
    v108 = sub_2337DFD6C(&v348, 2u);
    v113 = objc_msgSend_numberWithDouble_(v106, v109, v110, v111, v112, *v108);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v114, v113, @"mc02", v115);

    v116 = MEMORY[0x277CCABB0];
    v348 = sub_2337DFCEC(&v350, 1u);
    v349 = v117;
    v118 = sub_2337DFD6C(&v348, 0);
    v123 = objc_msgSend_numberWithDouble_(v116, v119, v120, v121, v122, *v118);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v124, v123, @"mc10", v125);

    v126 = MEMORY[0x277CCABB0];
    v348 = sub_2337DFCEC(&v350, 1u);
    v349 = v127;
    v128 = sub_2337DFD6C(&v348, 1u);
    v133 = objc_msgSend_numberWithDouble_(v126, v129, v130, v131, v132, *v128);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v134, v133, @"mc11", v135);

    v136 = MEMORY[0x277CCABB0];
    v348 = sub_2337DFCEC(&v350, 1u);
    v349 = v137;
    v138 = sub_2337DFD6C(&v348, 2u);
    v143 = objc_msgSend_numberWithDouble_(v136, v139, v140, v141, v142, *v138);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v144, v143, @"mc12", v145);

    v146 = MEMORY[0x277CCABB0];
    v348 = sub_2337DFCEC(&v350, 2u);
    v349 = v147;
    v148 = sub_2337DFD6C(&v348, 0);
    v153 = objc_msgSend_numberWithDouble_(v146, v149, v150, v151, v152, *v148);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v154, v153, @"mc20", v155);

    v156 = MEMORY[0x277CCABB0];
    v348 = sub_2337DFCEC(&v350, 2u);
    v349 = v157;
    v158 = sub_2337DFD6C(&v348, 1u);
    v163 = objc_msgSend_numberWithDouble_(v156, v159, v160, v161, v162, *v158);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v164, v163, @"mc21", v165);

    v166 = MEMORY[0x277CCABB0];
    v348 = sub_2337DFCEC(&v350, 2u);
    v349 = v167;
    v168 = sub_2337DFD6C(&v348, 2u);
    v173 = objc_msgSend_numberWithDouble_(v166, v169, v170, v171, v172, *v168);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v174, v173, @"mc22", v175);

    if (__p)
    {
      v352 = __p;
      operator delete(__p);
    }

    (*(*a1 + 112))(&v350, a1);
    v176 = sub_233758CEC(v350);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v177, v176, @"version", v178);

    if (__p)
    {
      sub_2337239E8(__p);
    }

    v179 = MEMORY[0x277CCABB0];
    v180 = (*(*a1 + 1256))(a1);
    v184 = objc_msgSend_numberWithInt_(v179, v181, v180, v182, v183);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v185, v184, off_27DE37868[0], v186);

    v187 = MEMORY[0x277CCABB0];
    v188 = (*(*a1 + 2392))(a1);
    v192 = objc_msgSend_numberWithInt_(v187, v189, v188, v190, v191);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v193, v192, off_27DE37870[0], v194);

    v195 = MEMORY[0x277CCABB0];
    (*(*a1 + 1272))(a1);
    v200 = objc_msgSend_numberWithDouble_(v195, v196, v197, v198, v199);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v201, v200, off_27DE37878[0], v202);

    v203 = MEMORY[0x277CCABB0];
    (*(*a1 + 1280))(a1);
    v208 = objc_msgSend_numberWithDouble_(v203, v204, v205, v206, v207);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v209, v208, off_27DE37880[0], v210);

    v211 = MEMORY[0x277CCABB0];
    (*(*a1 + 2416))(a1);
    v216 = objc_msgSend_numberWithDouble_(v211, v212, v213, v214, v215);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v217, v216, off_27DE37888[0], v218);

    v219 = MEMORY[0x277CCABB0];
    (*(*a1 + 2400))(a1);
    v224 = objc_msgSend_numberWithDouble_(v219, v220, v221, v222, v223);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v225, v224, off_27DE378A0[0], v226);

    v227 = MEMORY[0x277CCABB0];
    (*(*a1 + 1296))(a1);
    v232 = objc_msgSend_numberWithDouble_(v227, v228, v229, v230, v231);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v233, v232, off_27DE37890[0], v234);

    v235 = MEMORY[0x277CCABB0];
    (*(*a1 + 1304))(a1);
    v240 = objc_msgSend_numberWithDouble_(v235, v236, v237, v238, v239);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v241, v240, off_27DE37898[0], v242);

    (*(*a1 + 912))(&v350, a1);
    if (__p == v350 || (objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v243, *v350, v244, v245), v246 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setObject_forKeyedSubscript_(v6, v247, v246, off_27DE377E8[0], v248), v246, (__p - v350) < 9) || (objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v249, *(v350 + 1), v250, v251), v252 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setObject_forKeyedSubscript_(v6, v253, v252, off_27DE377F0[0], v254), v252, (__p - v350) < 0x11) || (objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v255, *(v350 + 2), v256, v257), v258 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setObject_forKeyedSubscript_(v6, v259, v258, off_27DE377F8[0], v260), v258, (__p - v350) <= 0x18))
    {
      sub_2337306B0();
    }

    v264 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v261, *(v350 + 3), v262, v263);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v265, v264, off_27DE37800[0], v266);

    if (v350)
    {
      __p = v350;
      operator delete(v350);
    }

    v267 = (*(*a1 + 432))(a1);
    v268 = (*(*a1 + 456))(a1);
    v272 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v269, @"{%d, %d}", v270, v271, v268 + v267, (HIDWORD(v268) + HIDWORD(v267)));
    objc_msgSend_setObject_forKeyedSubscript_(v6, v273, v272, @"cropOrigin", v274);

    if (!getenv("RAWCAMERA_ENABLE_RAW_IMPORT_IN_SPARK"))
    {
      (*(*a1 + 296))(&v350, a1, 5000);
      if (v350)
      {
        v275 = (*(*v350 + 32))(v350);
        objc_msgSend_setObject_forKeyedSubscript_(v6, v276, v275, @"jpegThumbnail", v277);
      }

      if (__p)
      {
        sub_2337239E8(__p);
      }
    }

    v353.origin.x = (*(*a1 + 480))(a1);
    x = v353.origin.x;
    y = v353.origin.y;
    width = v353.size.width;
    height = v353.size.height;
    if (!CGRectIsEmpty(v353))
    {
      v285 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v282, @"{{%f, %f}, {%f, %f}}", v283, v284, *&x, *&y, *&width, *&height);
      objc_msgSend_setObject_forKeyedSubscript_(v6, v286, v285, @"thumbnailCrop", v287);
    }

    if (!(*(*a1 + 2480))(a1) || (v292 = (*(*a1 + 2664))(a1, 0, 0), v293 = 0.5, v292 < 0.5))
    {
      v293 = 0.0;
    }

    v294 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v288, v289, v290, v291, v293);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v295, v294, off_27DE37A90[0], v296);

    if ((*(*a1 + 2480))(a1))
    {
      v350 = 0;
      v348 = 0;
      v297 = (*(*a1 + 2664))(a1, &v350, &v348);
      v298 = (*(*a1 + 2672))(a1);
      v303 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v299, v300, v301, v302, v297);
      objc_msgSend_setObject_forKeyedSubscript_(v6, v304, v303, @"rn", v305);

      v310 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v306, v307, v308, v309, v298);
      objc_msgSend_setObject_forKeyedSubscript_(v6, v311, v310, @"rnp", v312);

      v317 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v313, v314, v315, v316, *&v350);
      objc_msgSend_setObject_forKeyedSubscript_(v6, v318, v317, @"dngNoiseModelScale", v319);

      v324 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v320, v321, v322, v323, *&v348);
      objc_msgSend_setObject_forKeyedSubscript_(v6, v325, v324, @"dngNoiseModelOffset", v326);
    }

    v327 = MEMORY[0x277CCABB0];
    (*(*a1 + 800))(a1, a2);
    v332 = objc_msgSend_numberWithDouble_(v327, v328, v329, v330, v331);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v333, v332, @"sushiFactor", v334);

    v335 = MEMORY[0x277CCABB0];
    (*(*a1 + 280))(a1);
    v340 = objc_msgSend_numberWithDouble_(v335, v336, v337, v338, v339);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v341, v340, @"airyDiskRatio", v342);

    v343 = (*(*a1 + 2936))(a1);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setObject_forKeyedSubscript_(v6, v344, v343, @"linearizationTable", v345);
    }
  }
}

void sub_2337C3DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, std::__shared_weak_count *a16, uint64_t a17)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(a1);
}

std::string *sub_2337C3F74@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  (*(*a1 + 80))(a1);
  result = (*(*a1 + 176))(a1);
  if (result)
  {
    return std::string::append(a2, " dng", 4uLL);
  }

  return result;
}

void sub_2337C3FFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337C4018(uint64_t a1)
{
  v2 = (*(*a1 + 272))(a1);
  v3 = 0.0;
  if (v2 == 0.707106781)
  {
    return v3;
  }

  v4 = log2(v2);
  (*(*a1 + 160))(&v74, a1, v4 + v4);
  v5 = (*(*v74 + 400))();
  if (v75)
  {
    sub_2337239E8(v75);
  }

  v9 = (*(*a1 + 328))(a1);
  if (v9 == 0.0)
  {
    v13 = objc_msgSend_valueForKeyPath_(v5, v6, @"{Exif}.FocalPlaneXResolution", v7, v8);
    if (!v13 || (objc_msgSend_valueForKeyPath_(v5, v10, @"{Exif}.FocalPlaneResolutionUnit", v11, v12), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
    {
      v35 = objc_msgSend_valueForKeyPath_(v5, v10, @"{Exif}.FocalLength", v11, v12);
      if (v35)
      {
        v36 = objc_msgSend_valueForKeyPath_(v5, v32, @"{Exif}.FocalLenIn35mmFilm", v33, v34);

        if (v36)
        {
          v40 = objc_msgSend_valueForKeyPath_(v5, v37, @"{Exif}.FocalLength", v38, v39);
          objc_msgSend_doubleValue(v40, v41, v42, v43, v44);
          v46 = v45;

          v50 = objc_msgSend_valueForKeyPath_(v5, v47, @"{Exif}.FocalLenIn35mmFilm", v48, v49);
          objc_msgSend_doubleValue(v50, v51, v52, v53, v54);
          v56 = v55;

          v60 = objc_msgSend_valueForKeyPath_(v5, v57, @"PixelWidth", v58, v59);
          objc_msgSend_doubleValue(v60, v61, v62, v63, v64);
          v66 = v65;

          v9 = v46 / v56 * 35.0 * 1000.0 / v66;
        }
      }

      goto LABEL_15;
    }

    v15 = objc_msgSend_valueForKeyPath_(v5, v10, @"{Exif}.FocalPlaneResolutionUnit", v11, v12);
    v20 = objc_msgSend_intValue(v15, v16, v17, v18, v19);

    if (v20 == 3)
    {
      v67 = objc_msgSend_valueForKeyPath_(v5, v21, @"{Exif}.FocalPlaneXResolution", v22, v23);
      objc_msgSend_doubleValue(v67, v68, v69, v70, v71);
      v30 = v72;

      v31 = 10000.0;
      goto LABEL_14;
    }

    if (v20 == 2)
    {
      v24 = objc_msgSend_valueForKeyPath_(v5, v21, @"{Exif}.FocalPlaneXResolution", v22, v23);
      objc_msgSend_doubleValue(v24, v25, v26, v27, v28);
      v30 = v29;

      v31 = 25400.0;
LABEL_14:
      v9 = v31 / v30;
    }
  }

LABEL_15:
  if (v9 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2 / 0.75 / v9;
  }

  return v3;
}

void sub_2337C432C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_2337C4398(uint64_t a1, unsigned int a2)
{
  v1830 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v3 = (*(*a1 + 456))(a1);
  v8 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v4, v5, v6, v7);
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  (*(*a1 + 112))(__p, a1);
  v9 = sub_233758CEC(__p[0]);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v10, v9, @"version", v11);

  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  v12 = MEMORY[0x277CCABB0];
  v13 = (*(*a1 + 2168))(a1);
  v17 = objc_msgSend_numberWithInt_(v12, v14, v13, v15, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v18, v17, @"pattern", v19);

  v23 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v20, HIDWORD(v3), v21, v22);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v24, v23, @"leftmargin", v25);

  (*(*a1 + 1120))(&v1816, a1);
  v26 = v1816;
  v27 = (*(*a1 + 256))(a1);
  (*(*a1 + 264))(a1);
  (*(*v26 + 8))(__p, v26, v27);
  if (v1817)
  {
    sub_2337239E8(v1817);
  }

  v32 = __p[0];
  if ((__p[1] - __p[0]) == 32)
  {
    v33 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v28, v29, v30, v31, *__p[0]);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v34, v33, @"blackNoise0", v35);

    if ((__p[1] - __p[0]) < 9 || (objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v36, v37, v38, v39, *(__p[0] + 1)), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setObject_forKeyedSubscript_(v8, v41, v40, @"blackNoise1", v42), v40, (__p[1] - __p[0]) < 0x11) || (objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v43, v44, v45, v46, *(__p[0] + 2)), v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setObject_forKeyedSubscript_(v8, v48, v47, @"blackNoise2", v49), v47, (__p[1] - __p[0]) <= 0x18))
    {
      sub_2337306B0();
    }

    v54 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v50, v51, v52, v53, *(__p[0] + 3));
    objc_msgSend_setObject_forKeyedSubscript_(v8, v55, v54, @"blackNoise3", v56);

    v32 = __p[0];
  }

  if (v32)
  {
    __p[1] = v32;
    operator delete(v32);
  }

  (*(*a1 + 1024))(__p, a1);
  v60 = __p[0];
  if ((__p[1] - __p[0]) == 32)
  {
    v61 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v57, *__p[0], v58, v59);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v62, v61, @"blackStdDev0", v63);

    if ((__p[1] - __p[0]) < 9 || (objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v64, *(__p[0] + 1), v65, v66), v67 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setObject_forKeyedSubscript_(v8, v68, v67, @"blackStdDev1", v69), v67, (__p[1] - __p[0]) < 0x11) || (objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v70, *(__p[0] + 2), v71, v72), v73 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setObject_forKeyedSubscript_(v8, v74, v73, @"blackStdDev2", v75), v73, (__p[1] - __p[0]) <= 0x18))
    {
      sub_2337306B0();
    }

    v79 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v76, *(__p[0] + 3), v77, v78);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v80, v79, @"blackStdDev3", v81);

    v60 = __p[0];
  }

  if (v60)
  {
    __p[1] = v60;
    operator delete(v60);
  }

  (*(*a1 + 1016))(__p, a1);
  v85 = __p[0];
  if ((__p[1] - __p[0]) == 32)
  {
    v86 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v82, *__p[0], v83, v84);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v87, v86, @"black0", v88);

    if ((__p[1] - __p[0]) < 9 || (objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v89, *(__p[0] + 1), v90, v91), v92 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setObject_forKeyedSubscript_(v8, v93, v92, @"black1", v94), v92, (__p[1] - __p[0]) < 0x11) || (objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v95, *(__p[0] + 2), v96, v97), v98 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setObject_forKeyedSubscript_(v8, v99, v98, @"black2", v100), v98, (__p[1] - __p[0]) <= 0x18))
    {
      sub_2337306B0();
    }

    v104 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v101, *(__p[0] + 3), v102, v103);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v105, v104, @"black3", v106);

    v85 = __p[0];
  }

  if (v85)
  {
    __p[1] = v85;
    operator delete(v85);
  }

  (*(*a1 + 912))(__p, a1);
  v111 = __p[0];
  if ((__p[1] - __p[0]) >= 0x11)
  {
    v112 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v107, v108, v109, v110, *__p[0]);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v113, v112, off_27DE377E8[0], v114);

    if ((__p[1] - __p[0]) < 9 || (objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v115, v116, v117, v118, *(__p[0] + 1)), v119 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setObject_forKeyedSubscript_(v8, v120, v119, off_27DE377F0[0], v121), v119, (__p[1] - __p[0]) <= 0x10))
    {
      sub_2337306B0();
    }

    v126 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v122, v123, v124, v125, *(__p[0] + 2));
    objc_msgSend_setObject_forKeyedSubscript_(v8, v127, v126, off_27DE377F8[0], v128);

    v111 = __p[0];
    if ((__p[1] - __p[0]) >= 0x19)
    {
      v133 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v129, v130, v131, v132, *(__p[0] + 3));
      objc_msgSend_setObject_forKeyedSubscript_(v8, v134, v133, off_27DE37800[0], v135);

      v111 = __p[0];
    }
  }

  if (v111)
  {
    __p[1] = v111;
    operator delete(v111);
  }

  (*(*a1 + 744))(__p, a1);
  v140 = __p[0];
  if ((__p[1] - __p[0]) == 24)
  {
    v141 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v136, v137, v138, v139, *__p[0]);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v142, v141, @"factor0", v143);

    if ((__p[1] - __p[0]) < 9 || (objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v144, v145, v146, v147, *(__p[0] + 1)), v148 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setObject_forKeyedSubscript_(v8, v149, v148, @"factor1", v150), v148, (__p[1] - __p[0]) <= 0x10))
    {
      sub_2337306B0();
    }

    v155 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v151, v152, v153, v154, *(__p[0] + 2));
    objc_msgSend_setObject_forKeyedSubscript_(v8, v156, v155, @"factor2", v157);

    v140 = __p[0];
  }

  if (v140)
  {
    __p[1] = v140;
    operator delete(v140);
  }

  (*(*a1 + 792))(__p, a1, a2);
  if (sub_2337E0044(__p) < 3 || sub_2337E003C(__p) <= 2)
  {
    v1766 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v1766, "RawCameraException");
    __cxa_throw(v1766, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v158 = MEMORY[0x277CCABB0];
  v1816 = sub_2337DFCEC(__p, 0);
  v1817 = v159;
  v160 = sub_2337DFD6C(&v1816, 0);
  v165 = objc_msgSend_numberWithDouble_(v158, v161, v162, v163, v164, *v160);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v166, v165, @"r0", v167);

  v168 = MEMORY[0x277CCABB0];
  v1816 = sub_2337DFCEC(__p, 0);
  v1817 = v169;
  v170 = sub_2337DFD6C(&v1816, 1u);
  v175 = objc_msgSend_numberWithDouble_(v168, v171, v172, v173, v174, *v170);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v176, v175, @"r1", v177);

  v178 = MEMORY[0x277CCABB0];
  v1816 = sub_2337DFCEC(__p, 0);
  v1817 = v179;
  v180 = sub_2337DFD6C(&v1816, 2u);
  v185 = objc_msgSend_numberWithDouble_(v178, v181, v182, v183, v184, *v180);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v186, v185, @"r2", v187);

  v188 = MEMORY[0x277CCABB0];
  v189 = sub_2337E0044(__p);
  v194 = 0.0;
  if (v189 >= 4)
  {
    v1816 = sub_2337DFCEC(__p, 0);
    v1817 = v195;
    v194 = *sub_2337DFD6C(&v1816, 3u);
  }

  v196 = objc_msgSend_numberWithDouble_(v188, v190, v191, v192, v193, v194);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v197, v196, @"r3", v198);

  v199 = MEMORY[0x277CCABB0];
  v200 = sub_2337E0044(__p);
  v205 = 0.0;
  if (v200 >= 5)
  {
    v1816 = sub_2337DFCEC(__p, 0);
    v1817 = v206;
    v205 = *sub_2337DFD6C(&v1816, 4u);
  }

  v207 = objc_msgSend_numberWithDouble_(v199, v201, v202, v203, v204, v205);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v208, v207, @"r4", v209);

  v210 = MEMORY[0x277CCABB0];
  v1816 = sub_2337DFCEC(__p, 1u);
  v1817 = v211;
  v212 = sub_2337DFD6C(&v1816, 0);
  v217 = objc_msgSend_numberWithDouble_(v210, v213, v214, v215, v216, *v212);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v218, v217, @"g0", v219);

  v220 = MEMORY[0x277CCABB0];
  v1816 = sub_2337DFCEC(__p, 1u);
  v1817 = v221;
  v222 = sub_2337DFD6C(&v1816, 1u);
  v227 = objc_msgSend_numberWithDouble_(v220, v223, v224, v225, v226, *v222);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v228, v227, @"g1", v229);

  v230 = MEMORY[0x277CCABB0];
  v1816 = sub_2337DFCEC(__p, 1u);
  v1817 = v231;
  v232 = sub_2337DFD6C(&v1816, 2u);
  v237 = objc_msgSend_numberWithDouble_(v230, v233, v234, v235, v236, *v232);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v238, v237, @"g2", v239);

  v240 = MEMORY[0x277CCABB0];
  v241 = sub_2337E0044(__p);
  v246 = 0.0;
  if (v241 >= 4)
  {
    v1816 = sub_2337DFCEC(__p, 1u);
    v1817 = v247;
    v246 = *sub_2337DFD6C(&v1816, 3u);
  }

  v248 = objc_msgSend_numberWithDouble_(v240, v242, v243, v244, v245, v246);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v249, v248, @"g3", v250);

  v251 = MEMORY[0x277CCABB0];
  v252 = sub_2337E0044(__p);
  v257 = 0.0;
  if (v252 >= 5)
  {
    v1816 = sub_2337DFCEC(__p, 1u);
    v1817 = v258;
    v257 = *sub_2337DFD6C(&v1816, 4u);
  }

  v259 = objc_msgSend_numberWithDouble_(v251, v253, v254, v255, v256, v257);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v260, v259, @"g4", v261);

  v262 = MEMORY[0x277CCABB0];
  v1816 = sub_2337DFCEC(__p, 2u);
  v1817 = v263;
  v264 = sub_2337DFD6C(&v1816, 0);
  v269 = objc_msgSend_numberWithDouble_(v262, v265, v266, v267, v268, *v264);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v270, v269, @"b0", v271);

  v272 = MEMORY[0x277CCABB0];
  v1816 = sub_2337DFCEC(__p, 2u);
  v1817 = v273;
  v274 = sub_2337DFD6C(&v1816, 1u);
  v279 = objc_msgSend_numberWithDouble_(v272, v275, v276, v277, v278, *v274);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v280, v279, @"b1", v281);

  v282 = MEMORY[0x277CCABB0];
  v1816 = sub_2337DFCEC(__p, 2u);
  v1817 = v283;
  v284 = sub_2337DFD6C(&v1816, 2u);
  v289 = objc_msgSend_numberWithDouble_(v282, v285, v286, v287, v288, *v284);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v290, v289, @"b2", v291);

  v292 = MEMORY[0x277CCABB0];
  v293 = sub_2337E0044(__p);
  v298 = 0.0;
  if (v293 >= 4)
  {
    v1816 = sub_2337DFCEC(__p, 2u);
    v1817 = v299;
    v298 = *sub_2337DFD6C(&v1816, 3u);
  }

  v300 = objc_msgSend_numberWithDouble_(v292, v294, v295, v296, v297, v298);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v301, v300, @"b3", v302);

  v303 = MEMORY[0x277CCABB0];
  v304 = sub_2337E0044(__p);
  v309 = 0.0;
  if (v304 >= 5)
  {
    v1816 = sub_2337DFCEC(__p, 2u);
    v1817 = v310;
    v309 = *sub_2337DFD6C(&v1816, 4u);
  }

  v311 = objc_msgSend_numberWithDouble_(v303, v305, v306, v307, v308, v309);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v312, v311, @"b4", v313);

  if (__p[1])
  {
    *&v1772 = __p[1];
    operator delete(__p[1]);
  }

  (*(*a1 + 2624))(__p, a1, a2, 0);
  v318 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v314, v315, v316, v317, *__p[0]);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v319, v318, @"otrcS0", v320);

  v325 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v321, v322, v323, v324, *(__p[0] + 1));
  objc_msgSend_setObject_forKeyedSubscript_(v8, v326, v325, @"otrcS1", v327);

  v332 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v328, v329, v330, v331, *(__p[0] + 3));
  objc_msgSend_setObject_forKeyedSubscript_(v8, v333, v332, @"otrcS2", v334);

  v339 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v335, v336, v337, v338, *(__p[0] + 5));
  objc_msgSend_setObject_forKeyedSubscript_(v8, v340, v339, @"otrcS3", v341);

  v346 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v342, v343, v344, v345, *(__p[0] + 7));
  objc_msgSend_setObject_forKeyedSubscript_(v8, v347, v346, @"otrcS4", v348);

  v353 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v349, v350, v351, v352, *(__p[0] + 2));
  objc_msgSend_setObject_forKeyedSubscript_(v8, v354, v353, @"otrcY1", v355);

  v360 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v356, v357, v358, v359, *(__p[0] + 4));
  objc_msgSend_setObject_forKeyedSubscript_(v8, v361, v360, @"otrcY2", v362);

  v367 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v363, v364, v365, v366, *(__p[0] + 6));
  objc_msgSend_setObject_forKeyedSubscript_(v8, v368, v367, @"otrcY3", v369);

  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  v370 = MEMORY[0x277CCABB0];
  v371 = (*(*a1 + 1376))(a1);
  v375 = objc_msgSend_numberWithBool_(v370, v372, v371, v373, v374);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v376, v375, @"blackDespeckleEnabled", v377);

  v381 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v378, a2, v379, v380);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v382, v381, @"shouldExtendRawEnabled", v383);

  v384 = MEMORY[0x277CCABB0];
  v385 = (*(*a1 + 1208))(a1);
  v389 = objc_msgSend_numberWithBool_(v384, v386, v385, v387, v388);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v390, v389, @"HREnabled", v391);

  v392 = MEMORY[0x277CCABB0];
  v393 = (*(*a1 + 2112))(a1);
  v397 = objc_msgSend_numberWithBool_(v392, v394, v393, v395, v396);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v398, v397, @"SPEEnabled", v399);

  v400 = MEMORY[0x277CCABB0];
  v401 = (*(*a1 + 1232))(a1);
  v405 = objc_msgSend_numberWithBool_(v400, v402, v401, v403, v404);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v406, v405, @"NREnabled", v407);

  v408 = MEMORY[0x277CCABB0];
  v409 = (*(*a1 + 2224))(a1);
  v413 = objc_msgSend_numberWithBool_(v408, v410, v409, v411, v412);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v414, v413, @"sharpenEdgesEnabled", v415);

  v416 = MEMORY[0x277CCABB0];
  v417 = (*(*a1 + 2264))(a1);
  v421 = objc_msgSend_numberWithBool_(v416, v418, v417, v419, v420);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v422, v421, @"chromaBlurEnabled", v423);

  v424 = MEMORY[0x277CCABB0];
  v425 = (*(*a1 + 2408))(a1, a2);
  v429 = objc_msgSend_numberWithBool_(v424, v426, v425, v427, v428);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v430, v429, @"boostEnabled", v431);

  objc_msgSend_setObject_forKeyedSubscript_(v8, v432, &unk_284957A90, @"boostKind", v433);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v434, &unk_284958A68, @"gamutLimitationCase", v435);
  v436 = MEMORY[0x277CCABB0];
  (*(*a1 + 2120))(a1);
  v441 = objc_msgSend_numberWithDouble_(v436, v437, v438, v439, v440);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v442, v441, @"SPEThreshold", v443);

  v444 = MEMORY[0x277CCABB0];
  (*(*a1 + 1448))(a1);
  v449 = objc_msgSend_numberWithDouble_(v444, v445, v446, v447, v448);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v450, v449, @"sharpenRadius", v451);

  v452 = MEMORY[0x277CCABB0];
  (*(*a1 + 2232))(a1);
  v457 = objc_msgSend_numberWithDouble_(v452, v453, v454, v455, v456);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v458, v457, @"sharpenIntensity", v459);

  v460 = MEMORY[0x277CCABB0];
  (*(*a1 + 2256))(a1);
  v465 = objc_msgSend_numberWithDouble_(v460, v461, v462, v463, v464);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v466, v465, @"sharpenAbsoluteLimit", v467);

  v468 = MEMORY[0x277CCABB0];
  (*(*a1 + 2240))(a1);
  v473 = objc_msgSend_numberWithDouble_(v468, v469, v470, v471, v472);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v474, v473, @"sharpenEdgeIntensity", v475);

  v476 = MEMORY[0x277CCABB0];
  (*(*a1 + 1480))(a1);
  v481 = objc_msgSend_numberWithDouble_(v476, v477, v478, v479, v480);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v482, v481, @"sharpenEdgeThreshold", v483);

  v484 = MEMORY[0x277CCABB0];
  (*(*a1 + 1488))(a1);
  v489 = objc_msgSend_numberWithDouble_(v484, v485, v486, v487, v488);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v490, v489, @"sharpenEdgeMaskSoftness", v491);

  v492 = MEMORY[0x277CCABB0];
  (*(*a1 + 1496))(a1);
  v497 = objc_msgSend_numberWithDouble_(v492, v493, v494, v495, v496);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v498, v497, off_27DE37768[0], v499);

  v500 = MEMORY[0x277CCABB0];
  (*(*a1 + 1504))(a1);
  v505 = objc_msgSend_numberWithDouble_(v500, v501, v502, v503, v504);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v506, v505, off_27DE37740[0], v507);

  v508 = MEMORY[0x277CCABB0];
  (*(*a1 + 1552))(a1);
  v513 = objc_msgSend_numberWithDouble_(v508, v509, v510, v511, v512);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v514, v513, @"chromaBlurNoiseFactor", v515);

  v516 = MEMORY[0x277CCABB0];
  (*(*a1 + 1768))(a1);
  v521 = objc_msgSend_numberWithDouble_(v516, v517, v518, v519, v520);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v522, v521, off_27DE37650[0], v523);

  v524 = MEMORY[0x277CCABB0];
  (*(*a1 + 2304))(a1);
  v529 = objc_msgSend_numberWithDouble_(v524, v525, v526, v527, v528);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v530, v529, off_27DE37748[0], v531);

  v532 = MEMORY[0x277CCABB0];
  (*(*a1 + 2312))(a1);
  v537 = objc_msgSend_numberWithDouble_(v532, v533, v534, v535, v536);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v538, v537, @"chromaBlurEdgeThreshold2", v539);

  v540 = MEMORY[0x277CCABB0];
  (*(*a1 + 2280))(a1);
  v545 = objc_msgSend_numberWithDouble_(v540, v541, v542, v543, v544);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v546, v545, @"chromaBlurRadius2", v547);

  v548 = MEMORY[0x277CCABB0];
  (*(*a1 + 2432))(a1);
  v553 = objc_msgSend_numberWithDouble_(v548, v549, v550, v551, v552);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v554, v553, @"antiAliasingFilterStrength", v555);

  v556 = MEMORY[0x277CCABB0];
  v557 = (*(*a1 + 2472))(a1);
  v561 = objc_msgSend_numberWithBool_(v556, v558, v557 ^ 1u, v559, v560);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v562, v561, @"noAntiAliasingFilter", v563);

  v564 = MEMORY[0x277CCABB0];
  v565 = (*(*a1 + 2464))(a1);
  v569 = objc_msgSend_numberWithBool_(v564, v566, v565, v567, v568);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v570, v569, @"powerBlurThreePass", v571);

  v572 = MEMORY[0x277CCABB0];
  (*(*a1 + 1752))(a1);
  v577 = objc_msgSend_numberWithDouble_(v572, v573, v574, v575, v576);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v578, v577, @"greenReconstructionEdgeScale", v579);

  v580 = MEMORY[0x277CCABB0];
  (*(*a1 + 1568))(a1);
  v585 = objc_msgSend_numberWithDouble_(v580, v581, v582, v583, v584);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v586, v585, @"scale1", v587);

  v588 = MEMORY[0x277CCABB0];
  (*(*a1 + 1576))(a1);
  v593 = objc_msgSend_numberWithDouble_(v588, v589, v590, v591, v592);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v594, v593, @"scale2", v595);

  v596 = MEMORY[0x277CCABB0];
  (*(*a1 + 1272))(a1);
  v601 = objc_msgSend_numberWithDouble_(v596, v597, v598, v599, v600);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v602, v601, @"boostTransitionPoint", v603);

  v604 = MEMORY[0x277CCABB0];
  (*(*a1 + 1280))(a1);
  v609 = objc_msgSend_numberWithDouble_(v604, v605, v606, v607, v608);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v610, v609, @"boostTransitionWidth", v611);

  v612 = MEMORY[0x277CCABB0];
  (*(*a1 + 2416))(a1);
  v617 = objc_msgSend_numberWithDouble_(v612, v613, v614, v615, v616);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v618, v617, @"boostLuminanceAmount", v619);

  v620 = MEMORY[0x277CCABB0];
  (*(*a1 + 2400))(a1);
  v625 = objc_msgSend_numberWithDouble_(v620, v621, v622, v623, v624);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v626, v625, @"boostAmount", v627);

  v628 = MEMORY[0x277CCABB0];
  (*(*a1 + 1584))(a1);
  v633 = objc_msgSend_numberWithDouble_(v628, v629, v630, v631, v632);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v634, v633, @"shadowDesaturatePoint", v635);

  v636 = MEMORY[0x277CCABB0];
  (*(*a1 + 1592))(a1);
  v641 = objc_msgSend_numberWithDouble_(v636, v637, v638, v639, v640);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v642, v641, @"shadowDesaturateWidth", v643);

  v644 = MEMORY[0x277CCABB0];
  (*(*a1 + 2216))(a1);
  v649 = objc_msgSend_numberWithDouble_(v644, v645, v646, v647, v648);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v650, v649, @"shadowDesaturateAmount", v651);

  v652 = MEMORY[0x277CCABB0];
  (*(*a1 + 2088))(a1);
  v657 = objc_msgSend_numberWithDouble_(v652, v653, v654, v655, v656);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v658, v657, @"noiseInterpolant", v659);

  v660 = MEMORY[0x277CCABB0];
  v661 = (*(*a1 + 256))(a1);
  v666 = objc_msgSend_numberWithDouble_(v660, v662, v663, v664, v665, v661);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v667, v666, @"ISOSetting", v668);

  v669 = MEMORY[0x277CCABB0];
  (*(*a1 + 264))(a1);
  v674 = objc_msgSend_numberWithDouble_(v669, v670, v671, v672, v673);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v675, v674, @"exposureTime", v676);

  v677 = MEMORY[0x277CCABB0];
  v678 = (*(*a1 + 2104))(a1);
  v682 = objc_msgSend_numberWithBool_(v677, v679, v678, v680, v681);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v683, v682, @"noiseTransitionEnabled", v684);

  v685 = MEMORY[0x277CCABB0];
  (*(*a1 + 2080))(a1);
  v690 = objc_msgSend_numberWithDouble_(v685, v686, v687, v688, v689);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v691, v690, @"noiseEstimate", v692);

  v693 = MEMORY[0x277CCABB0];
  (*(*a1 + 1384))(a1);
  v698 = objc_msgSend_numberWithDouble_(v693, v694, v695, v696, v697);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v699, v698, @"greenSplitRed", v700);

  v701 = MEMORY[0x277CCABB0];
  (*(*a1 + 1392))(a1);
  v706 = objc_msgSend_numberWithDouble_(v701, v702, v703, v704, v705);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v707, v706, @"greenSplitGreen1", v708);

  v709 = MEMORY[0x277CCABB0];
  (*(*a1 + 1400))(a1);
  v714 = objc_msgSend_numberWithDouble_(v709, v710, v711, v712, v713);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v715, v714, @"greenSplitBlue", v716);

  v717 = MEMORY[0x277CCABB0];
  v718 = (*(*a1 + 1408))(a1);
  v722 = objc_msgSend_numberWithInt_(v717, v719, v718, v720, v721);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v723, v722, @"greenBayerSplit", v724);

  v725 = MEMORY[0x277CCABB0];
  (*(*a1 + 2640))(a1);
  v730 = objc_msgSend_numberWithDouble_(v725, v726, v727, v728, v729);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v731, v730, off_27DE37660[0], v732);

  v733 = MEMORY[0x277CCABB0];
  (*(*a1 + 2648))(a1);
  v738 = objc_msgSend_numberWithDouble_(v733, v734, v735, v736, v737);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v739, v738, off_27DE37668[0], v740);

  v1813 = 0;
  (*(*a1 + 2128))(__p, a1);
  v741 = __p[0];
  v742 = (*(*a1 + 256))(a1);
  (**v741)(v741, v742, &v1816, &v1813);
  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  LODWORD(v747) = v1816;
  v748 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v743, v744, v745, v746, v747);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v749, v748, @"signalNoiseModelA0", v750);

  LODWORD(v751) = HIDWORD(v1816);
  v756 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v752, v753, v754, v755, v751);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v757, v756, @"signalNoiseModelB0", v758);

  LODWORD(v759) = v1817;
  v764 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v760, v761, v762, v763, v759);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v765, v764, @"signalNoiseModelC0", v766);

  LODWORD(v767) = HIDWORD(v1817);
  v772 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v768, v769, v770, v771, v767);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v773, v772, @"signalNoiseModelPRNU0", v774);

  LODWORD(v775) = v1818;
  v780 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v776, v777, v778, v779, v775);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v781, v780, @"signalNoiseModelA1", v782);

  LODWORD(v783) = v1819;
  v788 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v784, v785, v786, v787, v783);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v789, v788, @"signalNoiseModelB1", v790);

  LODWORD(v791) = v1820;
  v796 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v792, v793, v794, v795, v791);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v797, v796, @"signalNoiseModelC1", v798);

  LODWORD(v799) = v1821;
  v804 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v800, v801, v802, v803, v799);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v805, v804, @"signalNoiseModelPRNU1", v806);

  LODWORD(v807) = v1822;
  v812 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v808, v809, v810, v811, v807);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v813, v812, @"signalNoiseModelA2", v814);

  LODWORD(v815) = v1823;
  v820 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v816, v817, v818, v819, v815);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v821, v820, @"signalNoiseModelB2", v822);

  LODWORD(v823) = v1824;
  v828 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v824, v825, v826, v827, v823);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v829, v828, @"signalNoiseModelC2", v830);

  LODWORD(v831) = v1825;
  v836 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v832, v833, v834, v835, v831);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v837, v836, @"signalNoiseModelPRNU2", v838);

  LODWORD(v839) = v1826;
  v844 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v840, v841, v842, v843, v839);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v845, v844, @"signalNoiseModelA3", v846);

  LODWORD(v847) = v1827;
  v852 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v848, v849, v850, v851, v847);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v853, v852, @"signalNoiseModelB3", v854);

  LODWORD(v855) = v1828;
  v860 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v856, v857, v858, v859, v855);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v861, v860, @"signalNoiseModelC3", v862);

  LODWORD(v863) = v1829;
  v868 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v864, v865, v866, v867, v863);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v869, v868, @"signalNoiseModelPRNU3", v870);

  v874 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v871, v1813, v872, v873);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v875, v874, @"individualQuadratics", v876);

  (*(*a1 + 1016))(__p, a1);
  v877 = __p[0];
  v878 = __p[1];
  if (__p[0] == __p[1])
  {
    v882 = 0;
    goto LABEL_69;
  }

  v879 = -1;
  v880 = &v1814;
  do
  {
    if (v879 == 3)
    {
      v1769 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v1769, "RawCameraException");
      __cxa_throw(v1769, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v881 = *v877;
    if ((LODWORD(v881) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      v1764 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v1764, "RawCameraException");
      __cxa_throw(v1764, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *v880++ = v881;
    ++v877;
    ++v879;
  }

  while (v877 != v878);
  if (v879 <= 2)
  {
    v882 = v879 + 1;
LABEL_69:
    bzero(&v1814 + (4 * v882), (16 - 4 * v882));
  }

  (*(*a1 + 2680))(a1, &v1814);
  LODWORD(v883) = v1814;
  v888 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v884, v885, v886, v887, v883);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v889, v888, @"black0", v890);

  LODWORD(v891) = HIDWORD(v1814);
  v896 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v892, v893, v894, v895, v891);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v897, v896, @"black1", v898);

  LODWORD(v899) = v1815;
  v904 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v900, v901, v902, v903, v899);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v905, v904, @"black2", v906);

  LODWORD(v907) = HIDWORD(v1815);
  v912 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v908, v909, v910, v911, v907);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v913, v912, @"black3", v914);

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  (*(*a1 + 1120))(&v1814, a1);
  v915 = v1814;
  v916 = (*(*a1 + 256))(a1);
  (*(*a1 + 264))(a1);
  (*(*v915 + 8))(__p, v915, v916);
  if (v1815)
  {
    sub_2337239E8(v1815);
  }

  v921 = __p[0];
  if ((__p[1] - __p[0]) != 32)
  {
    v1768 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v1768, "RawCameraException");
    __cxa_throw(v1768, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (__p[0] == __p[1])
  {
    v931 = 0;
LABEL_91:
    v933 = v931;
    do
    {
      v934 = @"darkNoise3";
      if (v933 <= 2)
      {
        v934 = off_2789EF060[v933];
      }

      objc_msgSend_setObject_forKeyedSubscript_(v8, v917, &unk_28495DAF0, v934, v920);
      ++v933;
    }

    while (v933 != 4);
    goto LABEL_95;
  }

  for (i = 0; ; ++i)
  {
    v923 = *v921;
    if ((LODWORD(v923) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      v1765 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v1765, "RawCameraException");
      __cxa_throw(v1765, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (i == 2)
    {
      v926 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v917, v918, v919, v920);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v929, v926, @"darkNoise2", v930);
    }

    else if (i == 1)
    {
      v926 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v917, v918, v919, v920);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v927, v926, @"darkNoise1", v928);
    }

    else
    {
      v926 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v917, v918, v919, v920);
      if (i)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v8, v924, v926, @"darkNoise3", v925);
      }

      else
      {
        objc_msgSend_setObject_forKeyedSubscript_(v8, v924, v926, @"darkNoise0", v925);
      }
    }

    ++v921;
    v931 = i + 1;
    if (v921 == __p[1])
    {
      break;
    }

    if (v931 == 4)
    {
      v932 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v932, "RawCameraException");
      __cxa_throw(v932, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  if (i <= 2)
  {
    goto LABEL_91;
  }

LABEL_95:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v935 = MEMORY[0x277CCABB0];
  (*(*a1 + 2640))(a1);
  v940 = objc_msgSend_numberWithDouble_(v935, v936, v937, v938, v939);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v941, v940, off_27DE37660[0], v942);

  v943 = MEMORY[0x277CCABB0];
  (*(*a1 + 2648))(a1);
  v948 = objc_msgSend_numberWithDouble_(v943, v944, v945, v946, v947);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v949, v948, off_27DE37668[0], v950);

  v951 = MEMORY[0x277CCABB0];
  v952 = (*(*a1 + 520))(a1);
  v956 = objc_msgSend_numberWithInt_(v951, v953, v952, v954, v955);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v957, v956, @"destWidth", v958);

  v959 = MEMORY[0x277CCABB0];
  v960 = (*(*a1 + 520))(a1);
  v964 = objc_msgSend_numberWithInt_(v959, v961, HIDWORD(v960), v962, v963);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v965, v964, @"destHeight", v966);

  v967 = MEMORY[0x277CCABB0];
  v968 = (*(*a1 + 512))(a1);
  v972 = objc_msgSend_numberWithInt_(v967, v969, v968, v970, v971);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v973, v972, @"sourceWidth", v974);

  v975 = MEMORY[0x277CCABB0];
  v976 = (*(*a1 + 512))(a1);
  v980 = objc_msgSend_numberWithInt_(v975, v977, HIDWORD(v976), v978, v979);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v981, v980, @"sourceHeight", v982);

  v983 = MEMORY[0x277CCABB0];
  v984 = (*(*a1 + 504))(a1);
  v988 = objc_msgSend_numberWithInt_(v983, v985, v984, v986, v987);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v989, v988, @"destHorizOffset", v990);

  v991 = MEMORY[0x277CCABB0];
  v992 = (*(*a1 + 504))(a1);
  v996 = objc_msgSend_numberWithInt_(v991, v993, HIDWORD(v992), v994, v995);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v997, v996, @"destVertOffset", v998);

  v999 = (*(*a1 + 408))(a1);
  v1003 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v1000, @"{%d, %d}", v1001, v1002, v999, HIDWORD(v999));
  objc_msgSend_setObject_forKeyedSubscript_(v8, v1004, v1003, off_27DE37698[0], v1005);

  v1006 = (*(*a1 + 432))(a1);
  v1010 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v1007, @"{{%d, %d}, {%d, %d}}", v1008, v1009, v1006, HIDWORD(v1006), v1007, v1007 >> 32);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v1011, v1010, off_27DE376A0[0], v1012);

  v1013 = (*(*a1 + 456))(a1);
  v1017 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v1014, @"{{%d, %d}, {%d, %d}}", v1015, v1016, v1013, HIDWORD(v1013), v1014, v1014 >> 32);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v1018, v1017, off_27DE376A8[0], v1019);

  v1020 = (*(*a1 + 496))(a1);
  v1024 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v1021, @"{{%d, %d}, {%d, %d}}", v1022, v1023, v1020, HIDWORD(v1020), v1021, v1021 >> 32);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v1025, v1024, @"actualCropRect", v1026);

  v1027 = (*(*a1 + 496))(a1);
  v1031 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v1028, @"{{%d, %d}, {%d, %d}}", v1029, v1030, v1027, HIDWORD(v1027), v1028, v1028 >> 32);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v1032, v1031, @"paddedCropRect", v1033);

  v1034 = MEMORY[0x277CCABB0];
  v1035 = (*(*a1 + 960))(a1);
  v1039 = objc_msgSend_numberWithInt_(v1034, v1036, v1035, v1037, v1038);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v1040, v1039, off_27DE37728[0], v1041);

  if ((*(*a1 + 960))(a1) == 9)
  {
    v1042 = (*(*a1 + 1008))(a1);
    v1046 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v1043, @"{{%d, %d}, {%d, %d}}", v1044, v1045, v1042, HIDWORD(v1042), v1043, v1043 >> 32);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1047, v1046, @"v2blackSampleArea", v1048);
  }

  v1049 = MEMORY[0x277CCABB0];
  v1050 = (*(*a1 + 576))(a1);
  v1054 = objc_msgSend_numberWithInt_(v1049, v1051, v1050, v1052, v1053);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v1055, v1054, @"bitsPerSample", v1056);

  v1057 = MEMORY[0x277CCABB0];
  (*(*a1 + 2528))(a1);
  v1062 = objc_msgSend_numberWithDouble_(v1057, v1058, v1059, v1060, v1061);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v1063, v1062, @"CNRAmount", v1064);

  v1065 = MEMORY[0x277CCABB0];
  (*(*a1 + 2608))(a1);
  v1070 = objc_msgSend_numberWithDouble_(v1065, v1066, v1067, v1068, v1069);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v1071, v1070, @"CNRNoiseFactor", v1072);

  v1073 = MEMORY[0x277CCABB0];
  (*(*a1 + 2600))(a1);
  v1078 = objc_msgSend_numberWithDouble_(v1073, v1074, v1075, v1076, v1077);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v1079, v1078, @"CNRRadius", v1080);

  v1081 = MEMORY[0x277CCABB0];
  (*(*a1 + 2616))(a1);
  v1086 = objc_msgSend_numberWithDouble_(v1081, v1082, v1083, v1084, v1085);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v1087, v1086, @"CNRBias", v1088);

  v1801 = 0u;
  v1802 = 0u;
  v1799 = 0u;
  v1800 = 0u;
  v1797 = 0u;
  v1798 = 0u;
  v1795 = 0u;
  v1796 = 0u;
  v1793 = 0u;
  v1794 = 0u;
  v1791 = 0u;
  v1792 = 0u;
  v1789 = 0u;
  v1790 = 0u;
  v1787 = 0u;
  v1788 = 0u;
  v1785 = 0u;
  v1786 = 0u;
  v1783 = 0u;
  v1784 = 0u;
  v1781 = 0u;
  v1782 = 0u;
  v1779 = 0u;
  v1780 = 0u;
  v1777 = 0u;
  v1778 = 0u;
  v1775 = 0u;
  v1776 = 0u;
  v1773 = 0u;
  v1774 = 0u;
  *__p = 0u;
  v1772 = 0u;
  (*(*a1 + 2696))(__p, a1, a2);
  v1092 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v1089, v1784, v1090, v1091);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v1093, v1092, @"FujiCAEnable", v1094);

  v1098 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v1095, BYTE12(v1796), v1096, v1097);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v1099, v1098, @"FujiLensCorrectionEnable", v1100);

  if (v1784)
  {
    v1104 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v1101, DWORD1(v1784), v1102, v1103);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1105, v1104, @"FujiCANumberOfPoints", v1106);

    v1110 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v1107, DWORD2(v1784), v1108, v1109);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1111, v1110, @"FujiCAMaxDistance", v1112);

    LODWORD(v1113) = HIDWORD(v1784);
    v1118 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1114, v1115, v1116, v1117, v1113);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1119, v1118, @"lrTable0", v1120);

    LODWORD(v1121) = v1785;
    v1126 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1122, v1123, v1124, v1125, v1121);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1127, v1126, @"lrTable1", v1128);

    LODWORD(v1129) = DWORD1(v1785);
    v1134 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1130, v1131, v1132, v1133, v1129);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1135, v1134, @"lrTable2", v1136);

    LODWORD(v1137) = DWORD2(v1785);
    v1142 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1138, v1139, v1140, v1141, v1137);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1143, v1142, @"lrTable3", v1144);

    LODWORD(v1145) = HIDWORD(v1785);
    v1150 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1146, v1147, v1148, v1149, v1145);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1151, v1150, @"lrTable4", v1152);

    LODWORD(v1153) = v1786;
    v1158 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1154, v1155, v1156, v1157, v1153);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1159, v1158, @"lrTable5", v1160);

    LODWORD(v1161) = DWORD1(v1786);
    v1166 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1162, v1163, v1164, v1165, v1161);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1167, v1166, @"lrTable6", v1168);

    LODWORD(v1169) = DWORD2(v1786);
    v1174 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1170, v1171, v1172, v1173, v1169);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1175, v1174, @"lrTable7", v1176);

    LODWORD(v1177) = HIDWORD(v1786);
    v1182 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1178, v1179, v1180, v1181, v1177);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1183, v1182, @"lrTable8", v1184);

    LODWORD(v1185) = v1787;
    v1190 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1186, v1187, v1188, v1189, v1185);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1191, v1190, @"lrTable9", v1192);

    LODWORD(v1193) = DWORD1(v1787);
    v1198 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1194, v1195, v1196, v1197, v1193);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1199, v1198, @"lrTable10", v1200);

    LODWORD(v1201) = DWORD2(v1787);
    v1206 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1202, v1203, v1204, v1205, v1201);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1207, v1206, @"lrTable11", v1208);

    LODWORD(v1209) = HIDWORD(v1787);
    v1214 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1210, v1211, v1212, v1213, v1209);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1215, v1214, @"lrTable12", v1216);

    LODWORD(v1217) = v1788;
    v1222 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1218, v1219, v1220, v1221, v1217);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1223, v1222, @"lrTable13", v1224);

    LODWORD(v1225) = DWORD1(v1788);
    v1230 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1226, v1227, v1228, v1229, v1225);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1231, v1230, @"lrTable14", v1232);

    LODWORD(v1233) = DWORD2(v1788);
    v1238 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1234, v1235, v1236, v1237, v1233);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1239, v1238, @"lrTable15", v1240);

    LODWORD(v1241) = HIDWORD(v1788);
    v1246 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1242, v1243, v1244, v1245, v1241);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1247, v1246, @"caRed0", v1248);

    LODWORD(v1249) = v1789;
    v1254 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1250, v1251, v1252, v1253, v1249);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1255, v1254, @"caRed1", v1256);

    LODWORD(v1257) = DWORD1(v1789);
    v1262 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1258, v1259, v1260, v1261, v1257);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1263, v1262, @"caRed2", v1264);

    LODWORD(v1265) = DWORD2(v1789);
    v1270 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1266, v1267, v1268, v1269, v1265);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1271, v1270, @"caRed3", v1272);

    LODWORD(v1273) = HIDWORD(v1789);
    v1278 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1274, v1275, v1276, v1277, v1273);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1279, v1278, @"caRed4", v1280);

    LODWORD(v1281) = v1790;
    v1286 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1282, v1283, v1284, v1285, v1281);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1287, v1286, @"caRed5", v1288);

    LODWORD(v1289) = DWORD1(v1790);
    v1294 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1290, v1291, v1292, v1293, v1289);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1295, v1294, @"caRed6", v1296);

    LODWORD(v1297) = DWORD2(v1790);
    v1302 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1298, v1299, v1300, v1301, v1297);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1303, v1302, @"caRed7", v1304);

    LODWORD(v1305) = HIDWORD(v1790);
    v1310 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1306, v1307, v1308, v1309, v1305);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1311, v1310, @"caRed8", v1312);

    LODWORD(v1313) = v1791;
    v1318 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1314, v1315, v1316, v1317, v1313);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1319, v1318, @"caRed9", v1320);

    LODWORD(v1321) = DWORD1(v1791);
    v1326 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1322, v1323, v1324, v1325, v1321);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1327, v1326, @"caRed10", v1328);

    LODWORD(v1329) = DWORD2(v1791);
    v1334 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1330, v1331, v1332, v1333, v1329);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1335, v1334, @"caRed11", v1336);

    LODWORD(v1337) = HIDWORD(v1791);
    v1342 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1338, v1339, v1340, v1341, v1337);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1343, v1342, @"caRed12", v1344);

    LODWORD(v1345) = v1792;
    v1350 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1346, v1347, v1348, v1349, v1345);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1351, v1350, @"caRed13", v1352);

    LODWORD(v1353) = DWORD1(v1792);
    v1358 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1354, v1355, v1356, v1357, v1353);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1359, v1358, @"caRed14", v1360);

    LODWORD(v1361) = DWORD2(v1792);
    v1366 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1362, v1363, v1364, v1365, v1361);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1367, v1366, @"caRed15", v1368);

    LODWORD(v1369) = HIDWORD(v1792);
    v1374 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1370, v1371, v1372, v1373, v1369);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1375, v1374, @"caBlue0", v1376);

    LODWORD(v1377) = v1793;
    v1382 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1378, v1379, v1380, v1381, v1377);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1383, v1382, @"caBlue1", v1384);

    LODWORD(v1385) = DWORD1(v1793);
    v1390 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1386, v1387, v1388, v1389, v1385);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1391, v1390, @"caBlue2", v1392);

    LODWORD(v1393) = DWORD2(v1793);
    v1398 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1394, v1395, v1396, v1397, v1393);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1399, v1398, @"caBlue3", v1400);

    LODWORD(v1401) = HIDWORD(v1793);
    v1406 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1402, v1403, v1404, v1405, v1401);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1407, v1406, @"caBlue4", v1408);

    LODWORD(v1409) = v1794;
    v1414 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1410, v1411, v1412, v1413, v1409);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1415, v1414, @"caBlue5", v1416);

    LODWORD(v1417) = DWORD1(v1794);
    v1422 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1418, v1419, v1420, v1421, v1417);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1423, v1422, @"caBlue6", v1424);

    LODWORD(v1425) = DWORD2(v1794);
    v1430 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1426, v1427, v1428, v1429, v1425);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1431, v1430, @"caBlue7", v1432);

    LODWORD(v1433) = HIDWORD(v1794);
    v1438 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1434, v1435, v1436, v1437, v1433);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1439, v1438, @"caBlue8", v1440);

    LODWORD(v1441) = v1795;
    v1446 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1442, v1443, v1444, v1445, v1441);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1447, v1446, @"caBlue9", v1448);

    LODWORD(v1449) = DWORD1(v1795);
    v1454 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1450, v1451, v1452, v1453, v1449);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1455, v1454, @"caBlue10", v1456);

    LODWORD(v1457) = DWORD2(v1795);
    v1462 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1458, v1459, v1460, v1461, v1457);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1463, v1462, @"caBlue11", v1464);

    LODWORD(v1465) = HIDWORD(v1795);
    v1470 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1466, v1467, v1468, v1469, v1465);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1471, v1470, @"caBlue12", v1472);

    LODWORD(v1473) = v1796;
    v1478 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1474, v1475, v1476, v1477, v1473);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1479, v1478, @"caBlue13", v1480);

    LODWORD(v1481) = DWORD1(v1796);
    v1486 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1482, v1483, v1484, v1485, v1481);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1487, v1486, @"caBlue14", v1488);

    LODWORD(v1489) = DWORD2(v1796);
    v1494 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1490, v1491, v1492, v1493, v1489);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1495, v1494, @"caBlue15", v1496);
  }

  if (BYTE12(v1796))
  {
    v1497 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v1101, DWORD1(v1797), v1102, v1103);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1498, v1497, @"FujiLensCorrectionNumberOfPoints", v1499);

    v1503 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v1500, v1797, v1501, v1502);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1504, v1503, @"FujiLensCorrectionMaxDistance", v1505);

    LODWORD(v1506) = DWORD2(v1797);
    v1511 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1507, v1508, v1509, v1510, v1506);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1512, v1511, @"FujiLensCorrectionLR0", v1513);

    LODWORD(v1514) = HIDWORD(v1797);
    v1519 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1515, v1516, v1517, v1518, v1514);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1520, v1519, @"FujiLensCorrectionLR1", v1521);

    LODWORD(v1522) = v1798;
    v1527 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1523, v1524, v1525, v1526, v1522);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1528, v1527, @"FujiLensCorrectionLR2", v1529);

    LODWORD(v1530) = DWORD1(v1798);
    v1535 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1531, v1532, v1533, v1534, v1530);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1536, v1535, @"FujiLensCorrectionLR3", v1537);

    LODWORD(v1538) = DWORD2(v1798);
    v1543 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1539, v1540, v1541, v1542, v1538);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1544, v1543, @"FujiLensCorrectionLR4", v1545);

    LODWORD(v1546) = HIDWORD(v1798);
    v1551 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1547, v1548, v1549, v1550, v1546);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1552, v1551, @"FujiLensCorrectionLR5", v1553);

    LODWORD(v1554) = v1799;
    v1559 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1555, v1556, v1557, v1558, v1554);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1560, v1559, @"FujiLensCorrectionLR6", v1561);

    LODWORD(v1562) = DWORD1(v1799);
    v1567 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1563, v1564, v1565, v1566, v1562);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1568, v1567, @"FujiLensCorrectionLR7", v1569);

    LODWORD(v1570) = DWORD2(v1799);
    v1575 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1571, v1572, v1573, v1574, v1570);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1576, v1575, @"FujiLensCorrectionLR8", v1577);

    LODWORD(v1578) = HIDWORD(v1799);
    v1583 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1579, v1580, v1581, v1582, v1578);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1584, v1583, @"FujiLensCorrectionLR9", v1585);

    LODWORD(v1586) = v1800;
    v1591 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1587, v1588, v1589, v1590, v1586);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1592, v1591, @"FujiLensCorrectionLR10", v1593);

    LODWORD(v1594) = DWORD1(v1800);
    v1599 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1595, v1596, v1597, v1598, v1594);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1600, v1599, @"FujiLensCorrectionLR11", v1601);

    LODWORD(v1602) = DWORD2(v1800);
    v1607 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1603, v1604, v1605, v1606, v1602);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1608, v1607, @"FujiLensCorrectionLR12", v1609);

    LODWORD(v1610) = HIDWORD(v1800);
    v1615 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1611, v1612, v1613, v1614, v1610);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1616, v1615, @"FujiLensCorrectionLR13", v1617);

    LODWORD(v1618) = v1801;
    v1623 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1619, v1620, v1621, v1622, v1618);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1624, v1623, @"FujiLensCorrectionLR14", v1625);

    LODWORD(v1626) = DWORD1(v1801);
    v1631 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1627, v1628, v1629, v1630, v1626);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1632, v1631, @"FujiLensCorrectionLR15", v1633);

    LODWORD(v1634) = DWORD2(v1801);
    v1639 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1635, v1636, v1637, v1638, v1634);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1640, v1639, @"FujiLensCorrectionFactor0", v1641);

    LODWORD(v1642) = HIDWORD(v1801);
    v1647 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1643, v1644, v1645, v1646, v1642);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1648, v1647, @"FujiLensCorrectionFactor1", v1649);

    LODWORD(v1650) = v1802;
    v1655 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1651, v1652, v1653, v1654, v1650);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1656, v1655, @"FujiLensCorrectionFactor2", v1657);

    LODWORD(v1658) = DWORD1(v1802);
    v1663 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1659, v1660, v1661, v1662, v1658);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1664, v1663, @"FujiLensCorrectionFactor3", v1665);

    LODWORD(v1666) = DWORD2(v1802);
    v1671 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1667, v1668, v1669, v1670, v1666);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1672, v1671, @"FujiLensCorrectionFactor4", v1673);

    LODWORD(v1674) = HIDWORD(v1802);
    v1679 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1675, v1676, v1677, v1678, v1674);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1680, v1679, @"FujiLensCorrectionFactor5", v1681);

    LODWORD(v1682) = v1803;
    v1687 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1683, v1684, v1685, v1686, v1682);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1688, v1687, @"FujiLensCorrectionFactor6", v1689);

    LODWORD(v1690) = v1804;
    v1695 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1691, v1692, v1693, v1694, v1690);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1696, v1695, @"FujiLensCorrectionFactor7", v1697);

    LODWORD(v1698) = v1805;
    v1703 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1699, v1700, v1701, v1702, v1698);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1704, v1703, @"FujiLensCorrectionFactor8", v1705);

    LODWORD(v1706) = v1806;
    v1711 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1707, v1708, v1709, v1710, v1706);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1712, v1711, @"FujiLensCorrectionFactor9", v1713);

    LODWORD(v1714) = v1807;
    v1719 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1715, v1716, v1717, v1718, v1714);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1720, v1719, @"FujiLensCorrectionFactor10", v1721);

    LODWORD(v1722) = v1808;
    v1727 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1723, v1724, v1725, v1726, v1722);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1728, v1727, @"FujiLensCorrectionFactor11", v1729);

    LODWORD(v1730) = v1809;
    v1735 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1731, v1732, v1733, v1734, v1730);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1736, v1735, @"FujiLensCorrectionFactor12", v1737);

    LODWORD(v1738) = v1810;
    v1743 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1739, v1740, v1741, v1742, v1738);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1744, v1743, @"FujiLensCorrectionFactor13", v1745);

    LODWORD(v1746) = v1811;
    v1751 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1747, v1748, v1749, v1750, v1746);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1752, v1751, @"FujiLensCorrectionFactor14", v1753);

    LODWORD(v1754) = v1812;
    v1759 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1755, v1756, v1757, v1758, v1754);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v1760, v1759, @"FujiLensCorrectionFactor15", v1761);
  }

  v1762 = v8;

  return v1762;
}

void sub_2337C8888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_2337C9490(uint64_t a1, unsigned int a2)
{
  v1401 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v7 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v3, v4, v5, v6);
  (*(*a1 + 112))(__p, a1);
  v8 = sub_233758D94(__p[0]);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v9, v8, @"inputVersion", v10);

  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  v11 = MEMORY[0x277CCABB0];
  (*(*a1 + 112))(__p, a1);
  v12 = sub_233758B00(__p[0]);
  v16 = objc_msgSend_numberWithBool_(v11, v13, v12, v14, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v17, v16, @"inputIsGenericDNG", v18);

  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  v19 = MEMORY[0x277CCABB0];
  v20 = (*(*a1 + 2480))(a1);
  v24 = objc_msgSend_numberWithBool_(v19, v21, v20, v22, v23);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v25, v24, @"inputIsNoiseReductionEnabled", v26);

  v27 = sub_2338191A8(a2);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v28, v27, @"inputSushiMode", v29);

  v1361 = (*(*a1 + 720))(a1);
  v1362 = v30;
  v35 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v31, v32, v33, v34);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v36, v35, @"wx", v37);

  v42 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v38, v39, v40, v41, v1362);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v43, v42, @"wy", v44);

  sub_233819238(&v1361, __p);
  v45 = sub_2337BF480(__p);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v46, v45, @"inputNeutral", v47);

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v48 = MEMORY[0x277CCABB0];
  v49 = (*(*a1 + 1216))(a1);
  v53 = objc_msgSend_numberWithBool_(v48, v50, v49, v51, v52);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v54, v53, @"inputShouldLinearize", v55);

  v56 = MEMORY[0x277CCABB0];
  (*(*a1 + 2640))(a1);
  v61 = objc_msgSend_numberWithDouble_(v56, v57, v58, v59, v60);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v62, v61, @"inputXScale", v63);

  v64 = MEMORY[0x277CCABB0];
  (*(*a1 + 2648))(a1);
  v69 = objc_msgSend_numberWithDouble_(v64, v65, v66, v67, v68);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v70, v69, @"inputYScale", v71);

  v72 = MEMORY[0x277CCABB0];
  (*(*a1 + 2704))(a1);
  v77 = objc_msgSend_numberWithFloat_(v72, v73, v74, v75, v76);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v78, v77, @"inputNoiseReductionApplied", v79);

  sub_23373BC1C(a1);
  HIDWORD(v77) = v80;
  v81 = (*(*a1 + 536))(a1);
  v86 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v82, v83, v84, v85, v81, SHIDWORD(v77) - SHIDWORD(v81) - SHIDWORD(v82), v82);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v87, v86, @"inputCropRect", v88);

  v89 = MEMORY[0x277CCABB0];
  (*(*a1 + 528))(a1);
  v94 = objc_msgSend_numberWithDouble_(v89, v90, v91, v92, v93);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v95, v94, @"inputScaleFactor", v96);

  if ((*(*a1 + 2480))(a1))
  {
    v1400 = 0u;
    v1399 = 0u;
    v1398 = 0u;
    v1397 = 0u;
    v1396 = 0u;
    v1395 = 0u;
    v1394 = 0u;
    v1393 = 0u;
    v1392 = 0u;
    v1391 = 0u;
    v1390 = 0u;
    v1389 = 0u;
    v1388 = 0u;
    v1387 = 0u;
    v1386 = 0u;
    v1385 = 0u;
    v1384 = 0u;
    v1383 = 0u;
    v1381 = 0u;
    v1382 = 0u;
    v1379 = 0u;
    v1380 = 0u;
    v1377 = 0u;
    v1378 = 0u;
    *v1375 = 0u;
    v1376 = 0u;
    v1373 = 0u;
    v1374 = 0u;
    memset(v1372, 0, sizeof(v1372));
    *__p = 0u;
    v1371 = 0u;
    (*(*a1 + 2696))(__p, a1, a2);
    v1368 = 0u;
    v1369 = 0u;
    v1366 = 0u;
    v1367 = 0u;
    v1364 = 0u;
    v1365 = 0u;
    *v1363 = 0u;
    sub_2338714E4(__p, v1363);
    v97 = (*(*a1 + 800))(a1, a2);
    v98 = MEMORY[0x277CCABB0];
    (*(*a1 + 2520))(a1);
    v103 = objc_msgSend_numberWithDouble_(v98, v99, v100, v101, v102);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v104, v103, @"inputLNRAmount", v105);

    v106 = MEMORY[0x277CCABB0];
    (*(*a1 + 2528))(a1);
    v111 = objc_msgSend_numberWithDouble_(v106, v107, v108, v109, v110);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v112, v111, @"inputCNRAmount", v113);

    v114 = MEMORY[0x277CCABB0];
    (*(*a1 + 2544))(a1);
    v119 = objc_msgSend_numberWithDouble_(v114, v115, v116, v117, v118);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v120, v119, @"inputSharpenAmount", v121);

    v122 = MEMORY[0x277CCABB0];
    (*(*a1 + 2552))(a1);
    v127 = objc_msgSend_numberWithDouble_(v122, v123, v124, v125, v126);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v128, v127, @"inputSharpenThreshold", v129);

    v130 = MEMORY[0x277CCABB0];
    (*(*a1 + 2560))(a1);
    v135 = objc_msgSend_numberWithDouble_(v130, v131, v132, v133, v134);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v136, v135, @"inputContrastAmount", v137);

    v138 = MEMORY[0x277CCABB0];
    (*(*a1 + 2568))(a1);
    v143 = objc_msgSend_numberWithDouble_(v138, v139, v140, v141, v142);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v144, v143, @"inputDetailAmount", v145);

    v146 = MEMORY[0x277CCABB0];
    (*(*a1 + 2664))(a1, 0, 0);
    v151 = objc_msgSend_numberWithDouble_(v146, v147, v148, v149, v150);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v152, v151, @"inputRepresentativeNoise", v153);

    v154 = MEMORY[0x277CCABB0];
    (*(*a1 + 528))(a1);
    v159 = objc_msgSend_numberWithDouble_(v154, v155, v156, v157, v158);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v160, v159, @"inputScaleFactor", v161);

    v162 = MEMORY[0x277CCABB0];
    v163 = (*(*a1 + 2496))(a1);
    v168 = 0.0;
    if (v163)
    {
      (*(*a1 + 2512))(a1, 0.0);
    }

    v169 = objc_msgSend_numberWithDouble_(v162, v164, v165, v166, v167, v168);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v170, v169, @"inputMoireRadius", v171);

    v172 = MEMORY[0x277CCABB0];
    v173 = (*(*a1 + 2496))(a1);
    v178 = 0.0;
    if (v173)
    {
      (*(*a1 + 2504))(a1, 0.0);
    }

    v179 = objc_msgSend_numberWithDouble_(v172, v174, v175, v176, v177, v178);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v180, v179, @"inputMoireAmount", v181);

    v182 = MEMORY[0x277CCABB0];
    if ((*(*a1 + 120))(a1) <= 7)
    {
      v186 = (*(*a1 + 2664))(a1, 0, 0) < 0.5;
      objc_msgSend_numberWithInt_(v182, v187, v186, v188, v189);
    }

    else
    {
      objc_msgSend_numberWithInt_(v182, v183, 0, v184, v185);
    }
    v190 = ;
    objc_msgSend_setObject_forKeyedSubscript_(v7, v191, v190, @"inputOpponentColorEnabled", v192);

    v193 = v97;
    v198 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v194, v195, v196, v197, (*v1363 / v193), (*(v1363 + 1) / v193), (*&v1363[1] / v193), 1.0);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v199, v198, @"inputNeutralFactors", v200);

    v201 = sub_2338191A8(a2);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v202, v201, @"inputSushiMode", v203);

    objc_msgSend_setObject_forKeyedSubscript_(v7, v204, &unk_284957AA8, @"inputBoostMethod", v205);
    v210 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v206, v207, v208, v209, 0.298999995, 0.587000012, 0.114, 1.0);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v211, v210, @"inputLumFactors", v212);

    if ((*(*a1 + 120))(a1) >= 9)
    {
      v213 = MEMORY[0x277CCABB0];
      v214 = (*(*a1 + 256))(a1);
      v218 = objc_msgSend_numberWithUnsignedInt_(v213, v215, v214, v216, v217);
      objc_msgSend_setObject_forKeyedSubscript_(v7, v219, v218, @"inputISO", v220);

      v221 = MEMORY[0x277CCABB0];
      v222 = (*(*a1 + 2168))(a1);
      v226 = objc_msgSend_numberWithUnsignedInt_(v221, v223, v222, v224, v225);
      objc_msgSend_setObject_forKeyedSubscript_(v7, v227, v226, @"inputSensorPattern", v228);
    }
  }

  v229 = MEMORY[0x277CCABB0];
  v230 = (*(*a1 + 920))(a1);
  v234 = objc_msgSend_numberWithUnsignedShort_(v229, v231, v230, v232, v233);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v235, v234, @"inputRange", v236);

  if ((*(*a1 + 2160))(a1))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v7, v237, &unk_284958A78, @"inputTargetRange", v238);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v7, v237, &unk_284957AC0, @"inputTargetRange", v238);
  }

  v239 = MEMORY[0x277CCABB0];
  (*(*a1 + 800))(a1, a2);
  v244 = objc_msgSend_numberWithDouble_(v239, v240, v241, v242, v243);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v245, v244, @"inputFactor", v246);

  v247 = MEMORY[0x277CCABB0];
  (*(*a1 + 928))(a1);
  v252 = objc_msgSend_numberWithDouble_(v247, v248, v249, v250, v251);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v253, v252, @"inputBaselineExposure", v254);

  (*(*a1 + 648))(__p, a1);
  v258 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v255, LODWORD(__p[1]), v256, v257);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v259, v258, @"inputCalibrationIlluminant1", v260);

  v264 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v261, HIDWORD(__p[1]), v262, v263);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v265, v264, @"inputCalibrationIlluminant2", v266);

  v267 = sub_2337E1060(&v1371);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v268, v267, @"inputXYZtoCamera1", v269);

  v270 = sub_2337E1060(&v1372[1]);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v271, v270, @"inputXYZtoCamera2", v272);

  v273 = sub_2337E1060(&v1374);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v274, v273, @"inputCameraCalibration1", v275);

  v276 = sub_2337E1060(&v1376);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v277, v276, @"inputCameraCalibration2", v278);

  v279 = sub_2337E1060(&v1382 + 2);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v280, v279, @"inputReduction1", v281);

  v282 = sub_2337E1060(&v1384 + 2);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v283, v282, @"inputReduction2", v284);

  v285 = sub_2337E1060(&v1378);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v286, v285, @"inputForwardMatrix1", v287);

  v288 = sub_2337E1060(&v1380);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v289, v288, @"inputForwardMatrix2", v290);

  v294 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v291, v1382, v292, v293);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v295, v294, @"inputShouldUseForwardMatrix", v296);

  sub_2337D35EC(__p);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v297, MEMORY[0x277CBEC38], @"inputShouldRecoverHighlights", v298);
  if ((*(*a1 + 2152))(a1))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v7, v299, MEMORY[0x277CBEC38], @"inputLinearized", v300);
  }

  v301 = MEMORY[0x277CCABB0];
  (*(*a1 + 952))(a1);
  v306 = objc_msgSend_numberWithDouble_(v301, v302, v303, v304, v305);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v307, v306, @"inputBias", v308);

  v309 = MEMORY[0x277CCABB0];
  v310 = (*(*a1 + 2392))(a1);
  v314 = objc_msgSend_numberWithUnsignedInt_(v309, v311, v310, v312, v313);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v315, v314, @"inputBoostKind", v316);

  (*(*a1 + 2624))(&v1359, a1, a2, 1);
  v321 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v317, v318, v319, v320, *v1359);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v322, v321, @"inputTRCs0", v323);

  v328 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v324, v325, v326, v327, v1359[1]);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v329, v328, @"inputTRCs1", v330);

  v335 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v331, v332, v333, v334, v1359[3]);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v336, v335, @"inputTRCs2", v337);

  v342 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v338, v339, v340, v341, v1359[5]);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v343, v342, @"inputTRCs3", v344);

  v349 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v345, v346, v347, v348, v1359[7]);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v350, v349, @"inputTRCs4", v351);

  v356 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v352, v353, v354, v355, v1359[2]);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v357, v356, @"inputTRCy1", v358);

  v363 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v359, v360, v361, v362, v1359[4]);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v364, v363, @"inputTRCy2", v365);

  v370 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v366, v367, v368, v369, v1359[6]);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v371, v370, @"inputTRCy3", v372);

  v377 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v373, v374, v375, v376, v1359[8]);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v378, v377, @"inputTRCy4", v379);

  v380 = MEMORY[0x277CCABB0];
  (*(*a1 + 1272))(a1);
  v385 = objc_msgSend_numberWithDouble_(v380, v381, v382, v383, v384);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v386, v385, @"inputBoostTransitionPoint", v387);

  v388 = MEMORY[0x277CCABB0];
  (*(*a1 + 1280))(a1);
  v393 = objc_msgSend_numberWithDouble_(v388, v389, v390, v391, v392);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v394, v393, @"inputBoostTransitionWidth", v395);

  v396 = MEMORY[0x277CCABB0];
  (*(*a1 + 2416))(a1);
  v401 = objc_msgSend_numberWithDouble_(v396, v397, v398, v399, v400);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v402, v401, @"inputBoostLuminanceAmount", v403);

  v404 = MEMORY[0x277CCABB0];
  (*(*a1 + 1296))(a1);
  v409 = objc_msgSend_numberWithDouble_(v404, v405, v406, v407, v408);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v410, v409, @"inputBoostShadowAmount", v411);

  v412 = MEMORY[0x277CCABB0];
  (*(*a1 + 2424))(a1);
  v417 = objc_msgSend_numberWithDouble_(v412, v413, v414, v415, v416);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v418, v417, @"inputBoostPreserveHueAmount", v419);

  v420 = MEMORY[0x277CCABB0];
  (*(*a1 + 2400))(a1);
  v425 = objc_msgSend_numberWithDouble_(v420, v421, v422, v423, v424);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v426, v425, @"inputBoostAmount", v427);

  v428 = MEMORY[0x277CCABB0];
  (*(*a1 + 2344))(a1);
  v433 = objc_msgSend_numberWithDouble_(v428, v429, v430, v431, v432);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v434, v433, @"inputHueMagMR", v435);

  v436 = MEMORY[0x277CCABB0];
  (*(*a1 + 2352))(a1);
  v441 = objc_msgSend_numberWithDouble_(v436, v437, v438, v439, v440);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v442, v441, @"inputHueMagRY", v443);

  v444 = MEMORY[0x277CCABB0];
  (*(*a1 + 2360))(a1);
  v449 = objc_msgSend_numberWithDouble_(v444, v445, v446, v447, v448);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v450, v449, @"inputHueMagYG", v451);

  v452 = MEMORY[0x277CCABB0];
  (*(*a1 + 2368))(a1);
  v457 = objc_msgSend_numberWithDouble_(v452, v453, v454, v455, v456);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v458, v457, @"inputHueMagGC", v459);

  v460 = MEMORY[0x277CCABB0];
  (*(*a1 + 2376))(a1);
  v465 = objc_msgSend_numberWithDouble_(v460, v461, v462, v463, v464);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v466, v465, @"inputHueMagCB", v467);

  v468 = MEMORY[0x277CCABB0];
  (*(*a1 + 2384))(a1);
  v473 = objc_msgSend_numberWithDouble_(v468, v469, v470, v471, v472);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v474, v473, @"inputHueMagBM", v475);

  (*(*a1 + 752))(&v1356, a1);
  if (sub_2337E0044(&v1356) < 3 || sub_2337E003C(&v1356) <= 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v476 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v1356, 0);
  __p[1] = v477;
  v478 = sub_2337DFD6C(__p, 0);
  v483 = objc_msgSend_numberWithDouble_(v476, v479, v480, v481, v482, *v478);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v484, v483, @"inputM00", v485);

  v486 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v1356, 0);
  __p[1] = v487;
  v488 = sub_2337DFD6C(__p, 1u);
  v493 = objc_msgSend_numberWithDouble_(v486, v489, v490, v491, v492, *v488);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v494, v493, @"inputM01", v495);

  v496 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v1356, 0);
  __p[1] = v497;
  v498 = sub_2337DFD6C(__p, 2u);
  v503 = objc_msgSend_numberWithDouble_(v496, v499, v500, v501, v502, *v498);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v504, v503, @"inputM02", v505);

  v506 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v1356, 1u);
  __p[1] = v507;
  v508 = sub_2337DFD6C(__p, 0);
  v513 = objc_msgSend_numberWithDouble_(v506, v509, v510, v511, v512, *v508);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v514, v513, @"inputM10", v515);

  v516 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v1356, 1u);
  __p[1] = v517;
  v518 = sub_2337DFD6C(__p, 1u);
  v523 = objc_msgSend_numberWithDouble_(v516, v519, v520, v521, v522, *v518);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v524, v523, @"inputM11", v525);

  v526 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v1356, 1u);
  __p[1] = v527;
  v528 = sub_2337DFD6C(__p, 2u);
  v533 = objc_msgSend_numberWithDouble_(v526, v529, v530, v531, v532, *v528);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v534, v533, @"inputM12", v535);

  v536 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v1356, 2u);
  __p[1] = v537;
  v538 = sub_2337DFD6C(__p, 0);
  v543 = objc_msgSend_numberWithDouble_(v536, v539, v540, v541, v542, *v538);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v544, v543, @"inputM20", v545);

  v546 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v1356, 2u);
  __p[1] = v547;
  v548 = sub_2337DFD6C(__p, 1u);
  v553 = objc_msgSend_numberWithDouble_(v546, v549, v550, v551, v552, *v548);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v554, v553, @"inputM21", v555);

  v556 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v1356, 2u);
  __p[1] = v557;
  v558 = sub_2337DFD6C(__p, 2u);
  v563 = objc_msgSend_numberWithDouble_(v556, v559, v560, v561, v562, *v558);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v564, v563, @"inputM22", v565);

  if (!(*(*a1 + 2768))(a1))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v7, v566, &unk_284957AA8, @"inputLDCExecuteFlags", v567);
    goto LABEL_165;
  }

  if ((*(*a1 + 2808))(a1) == 5)
  {
    (*(*a1 + 2816))(v1363, a1);
    v568 = ((LODWORD(v1363[1]) - LODWORD(v1363[0])) >> 3);
    if (v568 <= 1)
    {
      v1287 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v1287, "RawCameraException");
      __cxa_throw(v1287, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v569 = *v1363[0];
    v570 = *(v1363[0] + 1);
    if (v568 != v569 + v569 * v570 + 2)
    {
      v1288 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v1288, "RawCameraException");
      __cxa_throw(v1288, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    __p[0] = 0;
    sub_233731694(&v1354, v569);
    v1353[1] = 0;
    v1353[0] = 0;
    v1352 = v1353;
    v1342 = 0;
    if (v569)
    {
      v571 = 0;
      v572 = 2;
      do
      {
        v573 = v572 + 1;
        v574 = v1363[0];
        *(v1354 + v571) = *(v1363[0] + v572);
        __p[1] = 0;
        __p[0] = 0;
        *&v1371 = 0;
        sub_233764ED4(__p, v574 + 8 * (v572 + 1), v574 + 8 * v570 + 8 * (v572 + 1), v570);
        v1345 = &v1342;
        v575 = sub_2337D3BA8(&v1352, &v1342);
        v576 = v575[5];
        if (v576)
        {
          v575[6] = v576;
          operator delete(v576);
          v575[5] = 0;
          v575[6] = 0;
          v575[7] = 0;
        }

        *(v575 + 5) = *__p;
        v575[7] = v1371;
        v572 = v573 + v570;
        v571 = v1342 + 1;
        v1342 = v571;
      }

      while (v571 < v569);
    }

    (*(*a1 + 160))(&v1350, a1);
    v577 = v1350;
    sub_23372A488(__p, "IFD0:EXIF");
    v578 = (*(*v577 + 304))(v577, __p);
    if (SBYTE7(v1371) < 0)
    {
      operator delete(__p[0]);
    }

    v579 = v1355;
    if (v1355 != v1354)
    {
      v580 = (v1355 - v1354) >> 3;
      v579 = v1354;
      do
      {
        v581 = v580 >> 1;
        v582 = (&v579->__vftable + (v580 >> 1));
        v584 = *v582;
        v583 = (v582 + 1);
        v580 += ~(v580 >> 1);
        if (v578 < v584)
        {
          v580 = v581;
        }

        else
        {
          v579 = v583;
        }
      }

      while (v580);
    }

    v585 = (v579 - v1354) >> 3;
    v586 = (v569 - 1);
    if (v585 < v586)
    {
      v586 = v585;
    }

    if (v569)
    {
      v585 = v586;
    }

    v1349 = v585;
    v587 = v585 - 1;
    if (!v585)
    {
      v587 = 0;
    }

    v1348 = v587;
    v588 = *(v1354 + v585);
    v589 = *(v1354 + v587);
    if (vabdd_f64(v588, v589) >= 0.000000001)
    {
      v590 = v588 - v589;
    }

    else
    {
      v590 = 0.000000001;
    }

    __p[0] = &v1348;
    v591 = sub_2337D3BA8(&v1352, &v1348);
    v1347 = 0;
    v1345 = 0;
    v1346 = 0;
    sub_2337236E0(&v1345, v591[5], v591[6], (v591[6] - v591[5]) >> 3);
    __p[0] = &v1349;
    v592 = sub_2337D3BA8(&v1352, &v1349);
    v1344 = 0;
    v1342 = 0;
    v1343 = 0;
    sub_2337236E0(&v1342, v592[5], v592[6], (v592[6] - v592[5]) >> 3);
    __p[0] = 0;
    sub_233731694(v1341, v570);
    if (v570)
    {
      v593 = fmin(fmax((v578 - v589) / v590, 0.0), 1.0);
      v594 = v1345;
      v595 = v1342;
      v596 = v1341[0];
      v597 = v570;
      do
      {
        v598 = *v594++;
        v599 = v598;
        v600 = *v595++;
        *v596++ = v593 * v600 + v599 * (1.0 - v593);
        --v597;
      }

      while (v597);
    }

    v601 = v570 >> 1;
    __p[0] = 0;
    sub_233731694(&v1339, v601);
    __p[0] = 0;
    sub_233731694(&v1337, v601);
    __p[0] = 0x3FF0000000000000;
    sub_233731694(v1336, v601);
    if (v1336[0])
    {
      v1336[1] = v1336[0];
      operator delete(v1336[0]);
    }

    if (v570 >= 2)
    {
      v602 = v1339;
      v603 = v1337;
      v604 = (v1341[0] + 8);
      do
      {
        *v602++ = *(v604 - 1);
        v605 = *v604;
        v604 += 2;
        *v603++ = v605;
        --v601;
      }

      while (v601);
    }

    __p[0] = 0;
    sub_233731694(v1335, 0x32uLL);
    __p[0] = 0;
    sub_233731694(v1334, 0x32uLL);
    v606 = 0;
    *&v1394 = 0;
    v1393 = 0u;
    v1392 = 0u;
    v1391 = 0u;
    v1390 = 0u;
    v1389 = 0u;
    v1388 = 0u;
    v1387 = 0u;
    v1386 = 0u;
    v1385 = 0u;
    v1384 = 0u;
    v1383 = 0u;
    v1381 = 0u;
    v1382 = 0u;
    v1379 = 0u;
    v1380 = 0u;
    v1377 = 0u;
    v1378 = 0u;
    *v1375 = 0u;
    v1376 = 0u;
    v1373 = 0u;
    v1374 = 0u;
    memset(v1372, 0, sizeof(v1372));
    *__p = 0u;
    v1371 = 0u;
    do
    {
      v1331 = 0;
      v1332 = 0;
      v1333 = 0;
      sub_2337236E0(&v1331, v1339, v1340, (v1340 - v1339) >> 3);
      v1328 = 0;
      v1329 = 0;
      v1330 = 0;
      v607 = sub_2337236E0(&v1328, v1337, v1338, (v1338 - v1337) >> 3);
      *&__p[v606] = sub_2337D020C(v606 / 50.0, v607, &v1331, &v1328);
      if (v1328)
      {
        v1329 = v1328;
        operator delete(v1328);
      }

      if (v1331)
      {
        v1332 = v1331;
        operator delete(v1331);
      }

      ++v606;
    }

    while (v606 != 51);
    v610 = objc_msgSend_vectorWithValues_count_(MEMORY[0x277CBF788], v608, __p, 51, v609);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v611, v610, @"inputScales", v612);

    objc_msgSend_setObject_forKeyedSubscript_(v7, v613, &unk_284957AD8, @"inputLDCExecuteFlags", v614);
    if (v1334[0])
    {
      v1334[1] = v1334[0];
      operator delete(v1334[0]);
    }

    if (v1335[0])
    {
      v1335[1] = v1335[0];
      operator delete(v1335[0]);
    }

    if (v1337)
    {
      v1338 = v1337;
      operator delete(v1337);
    }

    if (v1339)
    {
      v1340 = v1339;
      operator delete(v1339);
    }

    if (v1341[0])
    {
      v1341[1] = v1341[0];
      operator delete(v1341[0]);
    }

    if (v1342)
    {
      v1343 = v1342;
      operator delete(v1342);
    }

    if (v1345)
    {
      v1346 = v1345;
      operator delete(v1345);
    }

    if (v1351)
    {
      sub_2337239E8(v1351);
    }

    sub_233730B2C(&v1352, v1353[0]);
    if (v1354)
    {
      v1355 = v1354;
      operator delete(v1354);
    }

    goto LABEL_83;
  }

  if ((*(*a1 + 2808))(a1) == 1)
  {
    (*(*a1 + 160))(__p, a1);
    sub_2337D032C(__p, v1363);
    if (__p[1])
    {
      sub_2337239E8(__p[1]);
    }

    if (v1363[0])
    {
      v1354 = (*(*v1363[0] + 464))(v1363[0]);
      v1355 = v616;
      sub_233768734(v1363[0]);
      sub_23376873C(v1363[0]);
      sub_233768744(v1363[0]);
      sub_23376874C(v1363[0]);
      sub_233768754(v1363[0]);
      operator new();
    }

    goto LABEL_122;
  }

  v617 = (*(*a1 + 2808))(a1);
  v618 = *a1;
  if (v617 != 4)
  {
    if ((*(v618 + 2808))(a1) == 6)
    {
      (*(*a1 + 160))(__p, a1);
      sub_2337D0434(__p, v1363);
      if (__p[1])
      {
        sub_2337239E8(__p[1]);
      }

      if (v1363[0] && (*(*v1363[0] + 792))(v1363[0]))
      {
        v635 = *(v1363[0] + 148);
        v636 = *v635;
        v637 = v635[1];
        v639 = v635[2];
        v638 = v635[3];
        (*(*v1363[0] + 464))(v1363[0]);
        v642 = 0;
        v643 = v638 * (v638 * v638);
        v644 = v638 * (v638 * v643);
        v645 = (v640 * v640 + HIDWORD(v640) * HIDWORD(v640)) / (*(v1363[0] + 302) * *(v1363[0] + 302) + *(v1363[0] + 303) * *(v1363[0] + 303));
        *&v1394 = 0;
        v1393 = 0u;
        v1392 = 0u;
        v1391 = 0u;
        v1390 = 0u;
        v1389 = 0u;
        v1388 = 0u;
        v1387 = 0u;
        v1386 = 0u;
        v1385 = 0u;
        v1384 = 0u;
        v1383 = 0u;
        v646 = v638 * (v638 * v644);
        v647 = v636 * v643;
        v648 = v637 * v644;
        v649 = v639 * v646;
        v1381 = 0u;
        v1382 = 0u;
        v1379 = 0u;
        v1380 = 0u;
        v1377 = 0u;
        v1378 = 0u;
        *v1375 = 0u;
        v1376 = 0u;
        v1373 = 0u;
        v1374 = 0u;
        memset(v1372, 0, sizeof(v1372));
        *__p = 0u;
        v1371 = 0u;
        do
        {
          v650 = v645 * ((v642 * v642) / 50.0 / 50.0);
          *&__p[v642++] = v638 + v647 * v650 + v648 * v650 * v650 + v650 * (v649 * v650) * v650;
        }

        while (v642 != 51);
        v651 = objc_msgSend_vectorWithValues_count_(MEMORY[0x277CBF788], v640, __p, 51, v641);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v652, v651, @"inputScales", v653);

        objc_msgSend_setObject_forKeyedSubscript_(v7, v654, &unk_284957AD8, @"inputLDCExecuteFlags", v655);
        goto LABEL_122;
      }

      goto LABEL_121;
    }

    if ((*(*a1 + 2808))(a1) == 3)
    {
      (*(*a1 + 2816))(v1363, a1);
      v615 = v1363[0];
      v656 = (v1363[1] - v1363[0]) >> 3;
      if (v656 != 20 && v656 != 8)
      {
LABEL_84:
        if (v615)
        {
          v1363[1] = v615;
          operator delete(v615);
        }

        goto LABEL_165;
      }

      v657 = 64;
      if ((v1363[1] - v1363[0]) == 64)
      {
        v657 = 16;
      }

      v1300 = *v1363[0];
      v1297 = *(v1363[0] + 1);
      v658 = (v1363[0] + v657);
      v1307 = *v658;
      v1303 = v658[1];
      (*(*a1 + 160))(__p, a1);
      if (__p[0])
      {
        v1354 = __p[0];
        v1355 = __p[1];
        v661 = __p;
      }

      else
      {
        v661 = &v1354;
      }

      v1138 = v1303;
      v1137 = v1307;
      *v661 = 0;
      v661[1] = 0;
      if (__p[1])
      {
        sub_2337239E8(__p[1]);
        v1138 = v1303;
        v1137 = v1307;
      }

      if (v1354)
      {
        v1139 = 0;
        *&v1394 = 0;
        v1393 = 0u;
        v1392 = 0u;
        v1391 = 0u;
        v1390 = 0u;
        v1389 = 0u;
        v1388 = 0u;
        v1387 = 0u;
        v1386 = 0u;
        v1385 = 0u;
        v1384 = 0u;
        v1383 = 0u;
        v1381 = 0u;
        v1382 = 0u;
        v1379 = 0u;
        v1380 = 0u;
        v1377 = 0u;
        v1378 = 0u;
        *v1375 = 0u;
        v1376 = 0u;
        v1373 = 0u;
        v1374 = 0u;
        memset(v1372, 0, sizeof(v1372));
        v1140 = vdupq_lane_s64(v1297, 0);
        *__p = 0u;
        v1371 = 0u;
        v1141 = 0x100000000;
        v1142 = xmmword_233903BB0;
        v1143 = vdupq_n_s64(0x4049000000000000uLL);
        v1144 = vdupq_n_s64(2uLL);
        v1145 = vdupq_lane_s64(v1300, 0);
        v1146 = vdupq_n_s64(0x33uLL);
        do
        {
          v1147.i64[0] = v1141.u32[0];
          v1147.i64[1] = v1141.u32[1];
          v1148 = vdivq_f64(vcvtq_f64_u64(v1147), v1143);
          v1149 = vmulq_f64(v1148, v1148);
          v1150 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v1145, v1149, v1140), v1149, vmulq_n_f64(v1149, v1137)), v1149, vmulq_f64(v1149, vmulq_n_f64(v1149, v1138)));
          if (vmovn_s64(vcgtq_u64(v1146, v1142)).u8[0])
          {
            __p[v1139] = *&v1150.f64[0];
          }

          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x33uLL), *&v1142)).i32[1])
          {
            __p[v1139 + 1] = *&v1150.f64[1];
          }

          v1142 = vaddq_s64(v1142, v1144);
          v1141 = vadd_s32(v1141, 0x200000002);
          v1139 += 2;
        }

        while (v1139 != 52);
        v1151 = objc_msgSend_vectorWithValues_count_(MEMORY[0x277CBF788], v659, __p, 51, v660);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v1152, v1151, @"inputScales", v1153);

        objc_msgSend_setObject_forKeyedSubscript_(v7, v1154, &unk_284957AD8, @"inputLDCExecuteFlags", v1155);
      }

      if (v1355)
      {
        sub_2337239E8(v1355);
      }

LABEL_83:
      v615 = v1363[0];
      goto LABEL_84;
    }

    if ((*(*a1 + 2808))(a1) == 7)
    {
      (*(*a1 + 160))(__p, a1);
      sub_2337D04B8(__p, &v1354);
      if (__p[1])
      {
        sub_2337239E8(__p[1]);
      }

      if (v1354)
      {
        sub_2337A3898(v1354, 1, v1363);
        if ((v1363[1] - v1363[0]) == 16)
        {
          sub_2337D053C(v1363[0], &v1352);
          if (v1352 && ((0xAAAAAAAAAAAAAAABLL * ((*(v1352 + 3) - *(v1352 + 2)) >> 3)) | 2) == 3)
          {
            sub_23384FCD4(v1352, __p);
            v663 = __p[0];
            v664 = __p[1];
          }

          else
          {
            v664 = 0;
            v663 = 0;
          }

          if (v1353[0])
          {
            sub_2337239E8(v1353[0]);
          }
        }

        else
        {
          v664 = 0;
          v663 = 0;
        }

        v1156 = (v664 - v663) >> 3;
        if (v1156 == 20 || v1156 == 8)
        {
          v1157 = 8;
          if (v664 - v663 == 64)
          {
            v1157 = 2;
          }

          v1158 = &v663[v1157];
          v1302 = *v1158;
          v1299 = v1158[1];
          v1309 = *(v1158 + 2);
          v1305 = *(v1158 + 3);
          (*(*v1354 + 448))(v1354);
          v1160 = v1159;
          (*(*v1354 + 464))(v1354);
          v1163 = 0;
          *&v1394 = 0;
          v1393 = 0u;
          v1392 = 0u;
          v1391 = 0u;
          v1390 = 0u;
          v1389 = 0u;
          v1388 = 0u;
          v1387 = 0u;
          v1386 = 0u;
          v1385 = 0u;
          v1384 = 0u;
          v1383 = 0u;
          v1381 = 0u;
          v1382 = 0u;
          v1379 = 0u;
          v1380 = 0u;
          v1377 = 0u;
          v1378 = 0u;
          *v1375 = 0u;
          v1376 = 0u;
          v1373 = 0u;
          v1374 = 0u;
          memset(v1372, 0, sizeof(v1372));
          *__p = 0u;
          v1371 = 0u;
          v1164 = vdupq_lane_s64(v1299, 0);
          v1165 = sqrt((v1161 * v1161 + HIDWORD(v1161) * HIDWORD(v1161))) / sqrt((v1160 * v1160 + HIDWORD(v1160) * HIDWORD(v1160)));
          v1166 = vdupq_lane_s64(v1302, 0);
          v1167 = 0x100000000;
          v1168 = vdupq_n_s64(0x4049000000000000uLL);
          v1169 = vdupq_n_s64(0x33uLL);
          v1170 = xmmword_233903BB0;
          v1171 = vdupq_n_s64(2uLL);
          do
          {
            v1172.i64[0] = v1167.u32[0];
            v1172.i64[1] = v1167.u32[1];
            v1173 = vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(v1172), v1165), v1168);
            v1174 = vmulq_f64(v1173, v1173);
            v1175 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v1166, v1174, v1164), v1174, vmulq_n_f64(v1174, v1309)), v1174, vmulq_f64(v1174, vmulq_n_f64(v1174, v1305)));
            if (vmovn_s64(vcgtq_u64(v1169, v1170)).u8[0])
            {
              __p[v1163] = *&v1175.f64[0];
            }

            if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x33uLL), *&v1170)).i32[1])
            {
              __p[v1163 + 1] = *&v1175.f64[1];
            }

            v1170 = vaddq_s64(v1170, v1171);
            v1167 = vadd_s32(v1167, 0x200000002);
            v1163 += 2;
          }

          while (v1163 != 52);
          v1176 = objc_msgSend_vectorWithValues_count_(MEMORY[0x277CBF788], v1161, __p, 51, v1162);
          objc_msgSend_setObject_forKeyedSubscript_(v7, v1177, v1176, @"inputScales", v1178);

          objc_msgSend_setObject_forKeyedSubscript_(v7, v1179, &unk_284957AD8, @"inputLDCExecuteFlags", v1180);
        }

        sub_2337A3898(v1354, 14, __p);
        sub_2337A6858(v1363);
        *v1363 = *__p;
        *&v1364.f64[0] = v1371;
        *&v1371 = 0;
        __p[1] = 0;
        __p[0] = 0;
        v1352 = __p;
        sub_233723948(&v1352);
        if ((v1363[1] - v1363[0]) == 16)
        {
          sub_2337D05CC(v1363[0], &v1352);
          if (v1352 && ((0xAAAAAAAAAAAAAAABLL * ((*(v1352 + 3) - *(v1352 + 2)) >> 3)) | 2) == 3)
          {
            sub_2337D8CC0(v1352, __p);
            if (v663)
            {
              operator delete(v663);
            }

            v663 = __p[0];
            v664 = __p[1];
          }

          if (v664 - v663 == 152)
          {
            v1183 = 0;
            *&v1394 = 0;
            v1393 = 0u;
            v1392 = 0u;
            v1391 = 0u;
            v1390 = 0u;
            v1389 = 0u;
            v1388 = 0u;
            v1387 = 0u;
            v1386 = 0u;
            v1385 = 0u;
            v1384 = 0u;
            v1383 = 0u;
            v1381 = 0u;
            v1382 = 0u;
            v1379 = 0u;
            v1380 = 0u;
            v1377 = 0u;
            v1378 = 0u;
            *v1375 = 0u;
            v1376 = 0u;
            v1373 = 0u;
            v1374 = 0u;
            memset(v1372, 0, sizeof(v1372));
            *__p = 0u;
            v1371 = 0u;
            v1184 = *(v1352 + 20);
            do
            {
              v1185 = *v663;
              v1186 = 1;
              v1187 = v1183 / 50.0;
              do
              {
                v1185 = v1185 + v663[v1186] * v1187;
                v1187 = v1183 / 50.0 * v1187;
                ++v1186;
              }

              while (v1186 != 15);
              if (v1184)
              {
                v1185 = 1.0 / v1185;
              }

              *&__p[v1183++] = v1185;
            }

            while (v1183 != 51);
            v1188 = objc_msgSend_vectorWithValues_count_(MEMORY[0x277CBF788], v1181, __p, 51, v1182, 50.0, 1.0);
            objc_msgSend_setObject_forKeyedSubscript_(v7, v1189, v1188, @"inputScales", v1190);

            objc_msgSend_setObject_forKeyedSubscript_(v7, v1191, &unk_284957AD8, @"inputLDCExecuteFlags", v1192);
          }

          if (v1353[0])
          {
            sub_2337239E8(v1353[0]);
          }
        }

        __p[0] = v1363;
        sub_233723948(__p);
        if (v663)
        {
          operator delete(v663);
        }
      }

      v662 = v1355;
      if (v1355)
      {
        goto LABEL_164;
      }

      goto LABEL_165;
    }

    if ((*(*a1 + 2808))(a1) == 2)
    {
      (*(*a1 + 2816))(v1363, a1);
      if ((v1363[1] - v1363[0]) != 64)
      {
        v1289 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v1289, "RawCameraException");
        __cxa_throw(v1289, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v1109 = *v1363[0];
      v1294 = *(v1363[0] + 2);
      v1295 = *(v1363[0] + 3);
      v1296 = *(v1363[0] + 1);
      v1298 = *(v1363[0] + 4);
      v1301 = *(v1363[0] + 5);
      v1304 = *(v1363[0] + 6);
      v1308 = *(v1363[0] + 7);
      (*(*a1 + 456))(a1);
      v1112 = 0;
      *&v1394 = 0;
      v1393 = 0u;
      v1392 = 0u;
      v1391 = 0u;
      v1390 = 0u;
      v1389 = 0u;
      v1388 = 0u;
      v1387 = 0u;
      v1386 = 0u;
      v1385 = 0u;
      v1384 = 0u;
      v1383 = 0u;
      v1381 = 0u;
      v1382 = 0u;
      v1379 = 0u;
      v1380 = 0u;
      v1377 = 0u;
      v1378 = 0u;
      *v1375 = 0u;
      v1376 = 0u;
      v1373 = 0u;
      v1374 = 0u;
      memset(v1372, 0, sizeof(v1372));
      *__p = 0u;
      v1371 = 0u;
      v1113 = vdupq_lane_s64(v1294, 0);
      v1114 = vdupq_lane_s64(v1296, 0);
      v1115 = vdupq_lane_s64(v1295, 0);
      v1116 = vdupq_lane_s64(v1298, 0);
      v1117 = vdupq_lane_s64(v1301, 0);
      v1118 = sqrt((v1110 / 2 * (v1110 / 2) + SHIDWORD(v1110) / 2 * (SHIDWORD(v1110) / 2))) / v1109 * 0.0004;
      v1119 = vdupq_lane_s64(v1304, 0);
      v1120 = vdupq_lane_s64(v1308, 0);
      v1121 = 0x100000000;
      v1122 = xmmword_233903BB0;
      v1123 = vdupq_n_s64(0x33uLL);
      v1124 = vdupq_n_s64(2uLL);
      do
      {
        v1125.i64[0] = v1121.u32[0];
        v1125.i64[1] = v1121.u32[1];
        v1126 = vcvtq_f64_u64(v1125);
        v1127 = vmulq_f64(vmulq_n_f64(v1126, v1118), v1126);
        v1128 = vmulq_f64(v1127, v1127);
        v1129 = vmulq_f64(v1127, v1128);
        v1130 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(v1114, v1127, v1113), v1128, v1115), v1129, v1116), vmulq_f64(v1128, v1128), v1117), vmulq_f64(v1128, v1129), v1119), vmulq_f64(v1129, v1129), v1120);
        if (vmovn_s64(vcgtq_u64(v1123, v1122)).u8[0])
        {
          if (v1130.f64[0] <= 1.0)
          {
            v1131 = v1130.f64[0];
          }

          else
          {
            v1131 = 1.0;
          }

          *&__p[v1112] = v1131;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x33uLL), *&v1122)).i32[1])
        {
          v1130.f64[0] = v1130.f64[1];
          if (v1130.f64[1] > 1.0)
          {
            v1130.f64[0] = 1.0;
          }

          __p[v1112 + 1] = *&v1130.f64[0];
        }

        v1122 = vaddq_s64(v1122, v1124);
        v1121 = vadd_s32(v1121, 0x200000002);
        v1112 += 2;
      }

      while (v1112 != 52);
      v1132 = objc_msgSend_vectorWithValues_count_(MEMORY[0x277CBF788], v1110, __p, 51, v1111);
      objc_msgSend_setObject_forKeyedSubscript_(v7, v1133, v1132, @"inputScales", v1134);

      objc_msgSend_setObject_forKeyedSubscript_(v7, v1135, &unk_284957AD8, @"inputLDCExecuteFlags", v1136);
      goto LABEL_83;
    }

    if ((*(*a1 + 2808))(a1) == 8 || (*(*a1 + 2808))(a1) == 10)
    {
      (*(*a1 + 160))(__p, a1);
      sub_2337D065C(__p, v1363);
      if (__p[1])
      {
        sub_2337239E8(__p[1]);
      }

      if (v1363[0])
      {
        if ((*(*a1 + 240))(a1))
        {
          (*(*v1363[0] + 840))(&v1354);
        }

        else
        {
          (*(*v1363[0] + 832))(&v1354);
        }

        sub_2337D06E0(&v1354, __p);
        v1245 = __p[0];
        v1246 = __p[1];
        __p[1] = 0;
        __p[0] = 0;
        if (v1355)
        {
          sub_2337239E8(v1355);
        }

        if (v1245)
        {
          v1247 = (*(*a1 + 2808))(a1);
          v1248 = *v1245;
          if (v1247 == 10)
          {
            v1249 = (v1248 + 24);
          }

          else
          {
            v1249 = (v1248 + 16);
          }

          (*v1249)(v1245);
          v1250 = 0;
          *&v1394 = 0;
          v1393 = 0u;
          v1392 = 0u;
          v1391 = 0u;
          v1390 = 0u;
          v1389 = 0u;
          v1388 = 0u;
          v1387 = 0u;
          v1386 = 0u;
          v1385 = 0u;
          v1384 = 0u;
          v1383 = 0u;
          v1381 = 0u;
          v1382 = 0u;
          v1379 = 0u;
          v1380 = 0u;
          v1377 = 0u;
          v1378 = 0u;
          *v1375 = 0u;
          v1376 = 0u;
          v1373 = 0u;
          v1374 = 0u;
          memset(v1372, 0, sizeof(v1372));
          *__p = 0u;
          v1371 = 0u;
          do
          {
            v1319 = 0;
            v1320 = 0;
            v1321 = 0;
            sub_2337236E0(&v1319, v1245[5], v1245[6], (v1245[6] - v1245[5]) >> 3);
            v1316 = 0;
            v1317 = 0;
            v1318 = 0;
            v1251 = sub_2337236E0(&v1316, v1245[8], v1245[9], (v1245[9] - v1245[8]) >> 3);
            *&__p[v1250] = sub_2337D020C(v1250 / 50.0, v1251, &v1319, &v1316);
            if (v1316)
            {
              v1317 = v1316;
              operator delete(v1316);
            }

            if (v1319)
            {
              v1320 = v1319;
              operator delete(v1319);
            }

            ++v1250;
          }

          while (v1250 != 51);
          v1254 = objc_msgSend_vectorWithValues_count_(MEMORY[0x277CBF788], v1252, __p, 51, v1253);
          objc_msgSend_setObject_forKeyedSubscript_(v7, v1255, v1254, @"inputScales", v1256);

          objc_msgSend_setObject_forKeyedSubscript_(v7, v1257, &unk_284957AD8, @"inputLDCExecuteFlags", v1258);
        }

        else
        {
          objc_msgSend_setObject_forKeyedSubscript_(v7, v1243, &unk_284957AA8, @"inputLDCExecuteFlags", v1244);
        }

        if (v1246)
        {
          sub_2337239E8(v1246);
        }

LABEL_122:
        v662 = v1363[1];
        if (!v1363[1])
        {
          goto LABEL_165;
        }

        goto LABEL_164;
      }

LABEL_121:
      objc_msgSend_setObject_forKeyedSubscript_(v7, v633, &unk_284957AA8, @"inputLDCExecuteFlags", v634);
      goto LABEL_122;
    }

    if ((*(*a1 + 2808))(a1) != 9)
    {
      goto LABEL_165;
    }

    (*(*a1 + 160))(__p, a1);
    sub_2337D0764(__p, &v1345);
    if (__p[1])
    {
      sub_2337239E8(__p[1]);
    }

    if (!v1345)
    {
LABEL_459:
      v662 = v1346;
      if (!v1346)
      {
        goto LABEL_165;
      }

      goto LABEL_164;
    }

    v1194 = (*(*v1345 + 888))(v1345);
    v1195 = v1345;
    if (v1194 < 4)
    {
      v1260 = (*(*a1 + 2776))(a1);
      if ((*(*v1195 + 936))(v1195, v1260))
      {
        (*(*v1345 + 944))(v1363);
        v1261 = (*(*v1345 + 952))(v1345);
        (*(*v1345 + 984))(v1345);
        v1262 = (*(*v1345 + 440))(v1345);
        (*(*v1345 + 464))(v1345);
        v1265 = 0;
        v1266 = (v1263 * v1263 + HIDWORD(v1263) * HIDWORD(v1263)) / (v1262 * v1262 + HIDWORD(v1262) * HIDWORD(v1262));
        v1267 = *v1363[0];
        v1268 = *(v1363[0] + 1);
        v1269 = *(v1363[0] + 2);
        *&v1394 = 0;
        v1393 = 0u;
        v1392 = 0u;
        v1391 = 0u;
        v1390 = 0u;
        v1389 = 0u;
        v1388 = 0u;
        v1387 = 0u;
        v1386 = 0u;
        v1385 = 0u;
        v1384 = 0u;
        v1383 = 0u;
        v1381 = 0u;
        v1382 = 0u;
        v1379 = 0u;
        v1380 = 0u;
        v1377 = 0u;
        v1378 = 0u;
        *v1375 = 0u;
        v1376 = 0u;
        v1373 = 0u;
        v1374 = 0u;
        memset(v1372, 0, sizeof(v1372));
        *__p = 0u;
        v1371 = 0u;
        v1270 = (v1261 + 1.0);
        v1271 = vdupq_lane_s64(COERCE__INT64(v1269), 0);
        v1272 = vdupq_lane_s64(COERCE__INT64(sqrt(v1266)), 0);
        v1273 = xmmword_233903BB0;
        v1274 = vdupq_n_s64(0x33uLL);
        v1275 = vdupq_n_s64(0x4049000000000000uLL);
        v1276.i64[0] = 0xFFFFFFFFLL;
        v1276.i64[1] = 0xFFFFFFFFLL;
        v1277 = vdupq_n_s64(2uLL);
        do
        {
          v1278.i64[0] = v1273.i64[0] * v1273.i64[0];
          v1278.i64[1] = v1273.i64[1] * v1273.i64[1];
          v1279 = vmulq_n_f64(vdivq_f64(vdivq_f64(vcvtq_f64_u64(vandq_s8(v1278, v1276)), v1275), v1275), v1266);
          v1280.i64[0] = v1265;
          v1280.i64[1] = (v1265 + 1);
          v1281 = vmlaq_f64(vmlaq_f64(vmulq_f64(vdivq_f64(vdivq_f64(vcvtq_f64_u64(v1280), v1275), v1272), vmulq_n_f64(v1279, v1268)), v1279, vmulq_n_f64(v1279, v1267)), v1279, v1271);
          if (vmovn_s64(vcgtq_u64(v1274, v1273)).u8[0])
          {
            *&__p[v1265] = (v1281.f64[0] + 1.0) / v1270;
          }

          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x33uLL), *&v1273)).i32[1])
          {
            *&__p[v1265 + 1] = (v1281.f64[1] + 1.0) / v1270;
          }

          v1265 += 2;
          v1273 = vaddq_s64(v1273, v1277);
        }

        while (v1265 != 52);
        v1282 = objc_msgSend_vectorWithValues_count_(MEMORY[0x277CBF788], v1263, __p, 51, v1264);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v1283, v1282, @"inputScales", v1284);

        objc_msgSend_setObject_forKeyedSubscript_(v7, v1285, &unk_284957AD8, @"inputLDCExecuteFlags", v1286);
        goto LABEL_456;
      }
    }

    else if ((*(*v1345 + 872))(v1345) == 1 && (*(*v1345 + 864))(v1345))
    {
      v1198 = (*(*v1345 + 888))(v1345);
      (*(*v1345 + 880))(v1363);
      __p[0] = 0;
      sub_233731694(&v1354, (v1363[1] - v1363[0]) >> 3);
      __p[0] = 0;
      sub_233731694(&v1352, (v1363[1] - v1363[0]) >> 3);
      (*(*a1 + 432))(a1);
      v1200 = v1199;
      (*(*a1 + 432))(a1);
      v1202 = v1201;
      (*(*a1 + 456))(a1);
      v1204 = v1203;
      (*(*a1 + 456))(a1);
      v1206 = v1205;
      v1207 = v1363[0];
      if (v1363[1] != v1363[0])
      {
        v1208 = 0;
        v1209 = (v1363[1] - v1363[0]) >> 3;
        v1210 = v1352;
        v1211 = v1354;
        if (v1209 <= 1)
        {
          v1209 = 1;
        }

        do
        {
          v1210[v1208] = 100.0 / (v1207[v1208] + 100.0);
          v1211[v1208] = (v1208 / (v1198 - 1));
          ++v1208;
        }

        while (v1209 != v1208);
      }

      if ((*(*v1345 + 864))(v1345) == 3)
      {
        v1212 = v1363[1] - v1363[0];
        if (v1363[1] != v1363[0])
        {
          v1213 = v1212 >> 3;
          v1214 = v1352;
          v1215 = (v1352 + v1212);
          if (v1213 <= 1)
          {
            v1213 = 1;
          }

          do
          {
            *v1214 = *v1214 / *(v1215 - 1);
            ++v1214;
            --v1213;
          }

          while (v1213);
        }
      }

      v1216 = [Curve alloc];
      v1217 = sqrtf((v1200 * v1200) + (v1202 * v1202));
      v1306 = objc_msgSend_initWithCount_domainMin_domainMax_values_(v1216, v1218, (v1363[1] - v1363[0]) >> 3, v1352, v1219, *v1354 * v1217, *(v1354 + v1363[1] - v1363[0] - 8) * v1217);
      v1220 = [Curve alloc];
      v1314[0] = MEMORY[0x277D85DD0];
      v1314[1] = 3221225472;
      v1314[2] = sub_2337D07E8;
      v1314[3] = &unk_2789EEFC0;
      v1221 = v1306;
      v1315 = v1221;
      v1310 = objc_msgSend_initWithBlock_domainMin_domainMax_(v1220, v1222, v1314, v1223, v1224, 0.0, v1217);
      v1225 = [Curve alloc];
      v1226 = sqrtf((v1204 * v1204) + (v1206 * v1206));
      v1312[0] = MEMORY[0x277D85DD0];
      v1312[1] = 3221225472;
      v1312[2] = sub_2337D085C;
      v1312[3] = &unk_2789EEFC0;
      v1227 = v1310;
      v1313 = v1227;
      v1235 = objc_msgSend_initWithBlock_domainMin_domainMax_(v1225, v1228, v1312, v1229, v1230, 0.0, v1226);
      v1236 = 0;
      *&v1394 = 0;
      v1393 = 0u;
      v1392 = 0u;
      v1391 = 0u;
      v1390 = 0u;
      v1389 = 0u;
      v1388 = 0u;
      v1387 = 0u;
      v1386 = 0u;
      v1385 = 0u;
      v1384 = 0u;
      v1383 = 0u;
      v1381 = 0u;
      v1382 = 0u;
      v1379 = 0u;
      v1380 = 0u;
      v1377 = 0u;
      v1378 = 0u;
      *v1375 = 0u;
      v1376 = 0u;
      v1373 = 0u;
      v1374 = 0u;
      memset(v1372, 0, sizeof(v1372));
      *__p = 0u;
      v1371 = 0u;
      do
      {
        v1237 = objc_msgSend_function(v1235, v1231, v1232, v1233, v1234);
        *&__p[v1236] = v1237[2](((v1226 * v1236) / 50.0));

        ++v1236;
      }

      while (v1236 != 51);
      v1238 = objc_msgSend_vectorWithValues_count_(MEMORY[0x277CBF788], v1231, __p, 51, v1234);
      objc_msgSend_setObject_forKeyedSubscript_(v7, v1239, v1238, @"inputScales", v1240);

      objc_msgSend_setObject_forKeyedSubscript_(v7, v1241, &unk_284957AD8, @"inputLDCExecuteFlags", v1242);
      if (v1352)
      {
        v1353[0] = v1352;
        operator delete(v1352);
      }

      if (v1354)
      {
        v1355 = v1354;
        operator delete(v1354);
      }

LABEL_456:
      if (v1363[0])
      {
        v1363[1] = v1363[0];
        operator delete(v1363[0]);
      }

      goto LABEL_459;
    }

    objc_msgSend_setObject_forKeyedSubscript_(v7, v1196, &unk_284957AA8, @"inputLDCExecuteFlags", v1197);
    goto LABEL_459;
  }

  (*(v618 + 456))(a1);
  v620 = v619;
  (*(*a1 + 160))(__p, a1);
  sub_2337D03B0(__p, &v1342);
  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  if (v1342)
  {
    sub_233790818(v1342, __p);
    v621 = __p[0];
    v622 = __p[1] - __p[0];
    if (__p[1] != __p[0])
    {
      v623 = v622 >> 1;
      __p[0] = 0;
      sub_233731694(v1363, v622 >> 1);
      __p[0] = 0;
      sub_233731694(&v1354, v623);
      v624 = 0;
      v625 = sqrt((v620 * v620 + HIDWORD(v620) * HIDWORD(v620)));
      v626 = v623 - 1;
      v627 = v1363[0];
      v628 = v1354;
      if (v623 <= 1)
      {
        v629 = 1;
      }

      else
      {
        v629 = v623;
      }

      do
      {
        v627[v624] = v624 / (v623 - 1);
        v630 = v621[v624] * -0.0000610351562 + 1.0;
        if (fabs(v630) < 0.000000001)
        {
          v630 = dbl_233906140[v630 > 0.0];
        }

        v628[v624++] = 1.0 / v630;
      }

      while (v629 != v624);
      if (v621[v626] < 0)
      {
        v665 = v1363[1];
        v666 = SHIDWORD(v620) / v625;
        if (v1363[1] != v1363[0])
        {
          v667 = (v1363[1] - v1363[0]) >> 3;
          v665 = v1363[0];
          do
          {
            v668 = v667 >> 1;
            v669 = &v665[v667 >> 1];
            v671 = *v669;
            v670 = v669 + 1;
            v667 += ~(v667 >> 1);
            if (v666 < v671)
            {
              v667 = v668;
            }

            else
            {
              v665 = v670;
            }
          }

          while (v667);
        }

        v672 = v665 - v1363[0];
        v673 = (v665 - v1363[0]) >> 3;
        if (v626 >= v672 >> 3)
        {
          v626 = v673;
        }

        v674 = v626 - 1;
        if (!v626)
        {
          v674 = 0;
        }

        v675 = *(v1363[0] + v626);
        v676 = *(v1363[0] + v674);
        if (vabdd_f64(v675, v676) >= 0.000000001)
        {
          v677 = v675 - v676;
        }

        else
        {
          v677 = dbl_233906140[v675 - v676 > 0.0];
        }

        v631 = v1354;
        v678 = fmin(fmax((v666 - v676) / v677, 0.0), 1.0);
        v632 = *(v1354 + v626) * v678 + *(v1354 + v674) * (1.0 - v678);
      }

      else
      {
        v631 = v1354;
        v632 = *(v1354 + v626);
      }

      do
      {
        *v631 = *v631 / v632;
        ++v631;
        --v629;
      }

      while (v629);
      __p[0] = 0;
      sub_233731694(&v1352, 0x32uLL);
      __p[0] = 0;
      sub_233731694(&v1345, 0x32uLL);
      v679 = 0;
      *&v1394 = 0;
      v1393 = 0u;
      v1392 = 0u;
      v1391 = 0u;
      v1390 = 0u;
      v1389 = 0u;
      v1388 = 0u;
      v1387 = 0u;
      v1386 = 0u;
      v1385 = 0u;
      v1384 = 0u;
      v1383 = 0u;
      v1381 = 0u;
      v1382 = 0u;
      v1379 = 0u;
      v1380 = 0u;
      v1377 = 0u;
      v1378 = 0u;
      *v1375 = 0u;
      v1376 = 0u;
      v1373 = 0u;
      v1374 = 0u;
      memset(v1372, 0, sizeof(v1372));
      *__p = 0u;
      v1371 = 0u;
      do
      {
        v1325 = 0;
        v1326 = 0;
        v1327 = 0;
        sub_2337236E0(&v1325, v1363[0], v1363[1], (v1363[1] - v1363[0]) >> 3);
        v1322 = 0;
        v1323 = 0;
        v1324 = 0;
        v680 = sub_2337236E0(&v1322, v1354, v1355, (v1355 - v1354) >> 3);
        *&__p[v679] = sub_2337D020C(v679 / 50.0, v680, &v1325, &v1322);
        if (v1322)
        {
          v1323 = v1322;
          operator delete(v1322);
        }

        if (v1325)
        {
          v1326 = v1325;
          operator delete(v1325);
        }

        ++v679;
      }

      while (v679 != 51);
      v683 = objc_msgSend_vectorWithValues_count_(MEMORY[0x277CBF788], v681, __p, 51, v682);
      objc_msgSend_setObject_forKeyedSubscript_(v7, v684, v683, @"inputScales", v685);

      objc_msgSend_setObject_forKeyedSubscript_(v7, v686, &unk_284957AD8, @"inputLDCExecuteFlags", v687);
      if (v1345)
      {
        v1346 = v1345;
        operator delete(v1345);
      }

      if (v1352)
      {
        v1353[0] = v1352;
        operator delete(v1352);
      }

      if (v1354)
      {
        v1355 = v1354;
        operator delete(v1354);
      }

      if (v1363[0])
      {
        v1363[1] = v1363[0];
        operator delete(v1363[0]);
      }
    }

    if (v621)
    {
      operator delete(v621);
    }
  }

  v662 = v1343;
  if (v1343)
  {
LABEL_164:
    sub_2337239E8(v662);
  }

LABEL_165:
  if (sub_2338191D0(a2) || (*(*a1 + 544))(a1) >= 2)
  {
    v688 = MEMORY[0x277CCABB0];
    v689 = (*(*a1 + 2168))(a1);
    v693 = objc_msgSend_numberWithUnsignedInt_(v688, v690, v689, v691, v692);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v694, v693, @"inputPattern", v695);

    (*(*a1 + 1016))(__p, a1);
    if ((__p[1] - __p[0]) == 32)
    {
      v700 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v696, v697, v698, v699, *__p[0], *(__p[0] + 1), *(__p[0] + 2), *(__p[0] + 3));
      objc_msgSend_setObject_forKeyedSubscript_(v7, v701, v700, @"inputBlacks", v702);
    }

    (*(*a1 + 744))(v1363, a1);
    if ((v1363[1] - v1363[0]) == 24)
    {
      v707 = objc_msgSend_vectorWithX_Y_Z_(MEMORY[0x277CBF788], v703, v704, v705, v706, *v1363[0], *(v1363[0] + 1), *(v1363[0] + 2));
      objc_msgSend_setObject_forKeyedSubscript_(v7, v708, v707, @"inputFactors", v709);
    }

    v710 = MEMORY[0x277CCABB0];
    if ((*(*a1 + 2112))(a1))
    {
      objc_msgSend_numberWithDouble_(v710, v711, v712, v713, v714, 1.0);
    }

    else
    {
      objc_msgSend_numberWithDouble_(v710, v711, v712, v713, v714, 0.0);
    }
    v715 = ;
    objc_msgSend_setObject_forKeyedSubscript_(v7, v716, v715, @"inputDespeckle", v717);

    if (v1363[0])
    {
      v1363[1] = v1363[0];
      operator delete(v1363[0]);
    }

    goto LABEL_176;
  }

  if (!(*(*a1 + 2152))(a1))
  {
    goto LABEL_179;
  }

  (*(*a1 + 1016))(__p, a1);
  v718 = __p[0];
  if ((__p[1] - __p[0]) == 32)
  {
    v738 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v734, v735, v736, v737, *__p[0], *(__p[0] + 1), *(__p[0] + 2), *(__p[0] + 3));
    objc_msgSend_setObject_forKeyedSubscript_(v7, v739, v738, @"inputBlacks", v740);

LABEL_176:
    v718 = __p[0];
  }

  if (v718)
  {
    __p[1] = v718;
    operator delete(v718);
  }

LABEL_179:
  v719 = (*(*a1 + 520))(a1);
  v724 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v720, v721, v722, v723, v719, SHIDWORD(v719));
  objc_msgSend_setObject_forKeyedSubscript_(v7, v725, v724, @"inputTargetSize", v726);

  if (a2 < 1)
  {
    goto LABEL_244;
  }

  objc_msgSend_setObject_forKeyedSubscript_(v7, v727, &unk_284957AA8, @"inputGainMapExecute", v728);
  if (!(*(*a1 + 2840))(a1) || (*(*a1 + 2848))(a1) != 1)
  {
    goto LABEL_244;
  }

  (*(*a1 + 160))(__p, a1);
  sub_2337D04B8(__p, &v1354);
  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  __p[1] = 0;
  __p[0] = 0;
  *&v1371 = 0;
  if (v1354)
  {
    (*(*v1354 + 808))(v1363);
    sub_2337D36E4(__p);
    *__p = *v1363;
    *&v1371 = v1364.f64[0];
    v1364.f64[0] = 0.0;
    v1363[1] = 0;
    v1363[0] = 0;
    v1352 = v1363;
    sub_2337A70E0(&v1352);
    v732 = __p[1];
    v733 = __p[0];
  }

  else
  {
    v733 = 0;
    v732 = 0;
  }

  v741 = 0xEEEEEEEEEEEEEEEFLL * ((v732 - v733) >> 3);
  if (v741 == 1)
  {
    if ((*(v733 + 23) | 2) == 3)
    {
      v756 = *(*(v733 + 12) + 8) - **(v733 + 12);
      v757 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v729, 4 * ((v756 >> 1) + (v756 >> 2)), v730, v731);
      v758 = v757;
      v763 = objc_msgSend_mutableBytes(v757, v759, v760, v761, v762);
      v766 = *(__p[0] + 12);
      v767 = *v766;
      v768 = v766[1];
      v769 = v768 - *v766;
      if (v768 != *v766)
      {
        v770 = 0;
        v771 = v769 >> 2;
        v772 = *(__p[0] + 23);
        if (v771 <= 1)
        {
          v771 = 1;
        }

        v773 = (v763 + 8);
        do
        {
          if (v772 == 1)
          {
            v774 = *(v767 + 4 * v770);
            *(v773 - 1) = v774;
            *v773 = v774;
            *(v773 - 2) = v774;
          }

          else if (v772 == 3)
          {
            *(v773 - 2) = *(v767 + 4 * v770);
            *(v773 - 1) = *(v766[3] + 4 * v770);
            *v773 = *(v766[6] + 4 * v770);
          }

          ++v770;
          v773 += 3;
        }

        while (v771 != v770);
      }

      objc_msgSend_setObject_forKeyedSubscript_(v7, v764, &unk_284957AD8, @"inputGainMapExecute", v765);
      v778 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v775, *(__p[0] + 22), v776, v777);
      objc_msgSend_setObject_forKeyedSubscript_(v7, v779, v778, @"inputGainMapStartPlane", v780);

      objc_msgSend_setObject_forKeyedSubscript_(v7, v781, &unk_284957AF0, @"inputGainMapNumPlanes", v782);
      (*(*a1 + 432))(a1);
      v787 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v783, v784, v785, v786, *__p[0] / v783, *(__p[0] + 1) / SHIDWORD(v783), *(__p[0] + 2) / v783, *(__p[0] + 3) / SHIDWORD(v783));
      objc_msgSend_setObject_forKeyedSubscript_(v7, v788, v787, @"inputGainMapApplyRegion", v789);

      v794 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v790, v791, v792, v793, *(__p[0] + 4), *(__p[0] + 5), *(__p[0] + 6), *(__p[0] + 7));
      objc_msgSend_setObject_forKeyedSubscript_(v7, v795, v794, @"inputGainMapRegion", v796);

      v801 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v797, v798, v799, v800, *(__p[0] + 8), *(__p[0] + 9));
      objc_msgSend_setObject_forKeyedSubscript_(v7, v802, v801, @"inputGainMapSize", v803);

      objc_msgSend_setObject_forKeyedSubscript_(v7, v804, v757, @"inputGainMapData", v805);
      goto LABEL_242;
    }

LABEL_447:
    v1259 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v1259, "RawCameraException");
    __cxa_throw(v1259, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v741 != 4)
  {
    v1292 = __cxa_allocate_exception(8uLL);
    *v1292 = "Unexpected size of gainmap parameters";
    __cxa_throw(v1292, MEMORY[0x277D82740], 0);
  }

  if (*(v733 + 23) != 1)
  {
    goto LABEL_447;
  }

  if (*(v733 + 53) != 1)
  {
    goto LABEL_447;
  }

  if (*(v733 + 83) != 1)
  {
    goto LABEL_447;
  }

  if (*(v733 + 113) != 1)
  {
    goto LABEL_447;
  }

  v742 = *(*(v733 + 12) + 8) - **(v733 + 12);
  if (v742 != *(*(v733 + 27) + 8) - **(v733 + 27) || v742 != *(*(v733 + 42) + 8) - **(v733 + 42) || v742 != *(*(v733 + 57) + 8) - **(v733 + 57))
  {
    goto LABEL_447;
  }

  v743 = (*(*a1 + 2168))(a1);
  if (__p[1] == __p[0])
  {
    v753 = 0xFFFFLL;
    v752 = 0xFFFFLL;
    v751 = 0xFFFFLL;
    v750 = 0xFFFFLL;
  }

  else
  {
    v747 = 0;
    if (0xEEEEEEEEEEEEEEEFLL * ((__p[1] - __p[0]) >> 3) <= 1)
    {
      v748 = 1;
    }

    else
    {
      v748 = 0xEEEEEEEEEEEEEEEFLL * ((__p[1] - __p[0]) >> 3);
    }

    v749 = (__p[0] + 8);
    v750 = 0xFFFFLL;
    v751 = 0xFFFFLL;
    v752 = 0xFFFFLL;
    v753 = 0xFFFFLL;
    do
    {
      v754 = 4 * *v749 + 2 * *(v749 - 1);
      v755 = ((0xC0u >> v754) & v743) >> (6 - v754);
      if (v755 == 2)
      {
        v750 = v747;
      }

      else if (v755 == 1)
      {
        if (v752 == 0xFFFF)
        {
          v752 = v747;
        }

        else
        {
          v753 = v747;
        }
      }

      else
      {
        v751 = v747;
        if (v755)
        {
          v1291 = __cxa_allocate_exception(8uLL);
          *v1291 = "Unexpected CFA pattern";
          __cxa_throw(v1291, MEMORY[0x277D82740], 0);
        }
      }

      ++v747;
      v749 += 15;
    }

    while (v748 != v747);
  }

  if (v750 == 0xFFFF || v751 == 0xFFFF || v752 == 0xFFFF || v753 == 0xFFFF)
  {
    v1293 = __cxa_allocate_exception(8uLL);
    *v1293 = "bad CFA index";
    __cxa_throw(v1293, MEMORY[0x277D82740], 0);
  }

  v806 = (*(*(__p[0] + 12) + 8) - **(__p[0] + 12)) >> 2;
  if (*(*(__p[0] + 12) + 8) != **(__p[0] + 12))
  {
    v807 = **(__p[0] + 15 * v752 + 12);
    v808 = **(__p[0] + 15 * v753 + 12);
    if (v806 <= 1)
    {
      v809 = 1;
    }

    else
    {
      v809 = (*(*(__p[0] + 12) + 8) - **(__p[0] + 12)) >> 2;
    }

    do
    {
      if (*v807 != *v808)
      {
        v1290 = __cxa_allocate_exception(8uLL);
        *v1290 = "mismatch in green channels";
        __cxa_throw(v1290, MEMORY[0x277D82740], 0);
      }

      ++v807;
      ++v808;
      --v809;
    }

    while (v809);
  }

  v757 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v744, 12 * v806, v745, v746);
  v810 = v757;
  v815 = objc_msgSend_mutableBytes(v757, v811, v812, v813, v814);
  v818 = *(*(__p[0] + 12) + 8) - **(__p[0] + 12);
  if (v818)
  {
    v819 = v818 >> 2;
    v820 = **(__p[0] + 15 * v750 + 12);
    v821 = **(__p[0] + 15 * v752 + 12);
    v822 = **(__p[0] + 15 * v751 + 12);
    if (v819 <= 1)
    {
      v819 = 1;
    }

    v823 = (v815 + 8);
    do
    {
      v824 = *v820++;
      *(v823 - 2) = v824;
      v825 = *v821++;
      *(v823 - 1) = v825;
      v826 = *v822++;
      *v823 = v826;
      v823 += 3;
      --v819;
    }

    while (v819);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v7, v816, &unk_284957AD8, @"inputGainMapExecute", v817);
  v830 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v827, *(__p[0] + 22), v828, v829);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v831, v830, @"inputGainMapStartPlane", v832);

  objc_msgSend_setObject_forKeyedSubscript_(v7, v833, &unk_284957AF0, @"inputGainMapNumPlanes", v834);
  (*(*a1 + 432))(a1);
  v839 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v835, v836, v837, v838, *__p[0] / v835, *(__p[0] + 1) / SHIDWORD(v835), *(__p[0] + 2) / v835, *(__p[0] + 3) / SHIDWORD(v835));
  objc_msgSend_setObject_forKeyedSubscript_(v7, v840, v839, @"inputGainMapApplyRegion", v841);

  v846 = objc_msgSend_vectorWithCGRect_(MEMORY[0x277CBF788], v842, v843, v844, v845, *(__p[0] + 4), *(__p[0] + 5), *(__p[0] + 6), *(__p[0] + 7));
  objc_msgSend_setObject_forKeyedSubscript_(v7, v847, v846, @"inputGainMapRegion", v848);

  v853 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v849, v850, v851, v852, *(__p[0] + 8), *(__p[0] + 9));
  objc_msgSend_setObject_forKeyedSubscript_(v7, v854, v853, @"inputGainMapSize", v855);

  objc_msgSend_setObject_forKeyedSubscript_(v7, v856, v757, @"inputGainMapData", v857);
LABEL_242:

  v1363[0] = __p;
  sub_2337A70E0(v1363);
  if (v1355)
  {
    sub_2337239E8(v1355);
  }

LABEL_244:
  if (!(*(*a1 + 176))(a1))
  {
    goto LABEL_261;
  }

  objc_msgSend_setObject_forKeyedSubscript_(v7, v858, &unk_284957AA8, @"inputVignetteExecute", v859);
  (*(*a1 + 160))(__p, a1);
  sub_2337D04B8(__p, &v1354);
  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  __p[1] = 0;
  __p[0] = 0;
  *&v1371 = 0;
  if (v1354)
  {
    sub_2337A3898(v1354, 3, v1363);
    sub_2337A6858(__p);
    *__p = *v1363;
    *&v1371 = v1364.f64[0];
    v1364.f64[0] = 0.0;
    v1363[1] = 0;
    v1363[0] = 0;
    v1352 = v1363;
    sub_233723948(&v1352);
    if (__p[0] != __p[1])
    {
      objc_msgSend_setObject_forKeyedSubscript_(v7, v860, &unk_284957AD8, @"inputVignetteExecute", v861);
      v862 = __p[0];
      if (*__p[0])
      {
        v863 = __dynamic_cast(*__p[0], &unk_2849027A8, &unk_284937AE0, 0);
        if (v863)
        {
          v864 = *(v862 + 1);
          if (v864)
          {
            atomic_fetch_add_explicit(&v864->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          goto LABEL_255;
        }
      }

      else
      {
        v863 = 0;
      }

      v864 = 0;
LABEL_255:
      v1363[1] = 0;
      v1363[0] = 0;
      v1364.f64[0] = 0.0;
      sub_2337236E0(v1363, *(v863 + 2), *(v863 + 3), (*(v863 + 3) - *(v863 + 2)) >> 3);
      v869 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v865, v866, v867, v868, *v1363[0]);
      objc_msgSend_setObject_forKeyedSubscript_(v7, v870, v869, @"inputVignetteK0", v871);

      v876 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v872, v873, v874, v875, *(v1363[0] + 1));
      objc_msgSend_setObject_forKeyedSubscript_(v7, v877, v876, @"inputVignetteK1", v878);

      v883 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v879, v880, v881, v882, *(v1363[0] + 2));
      objc_msgSend_setObject_forKeyedSubscript_(v7, v884, v883, @"inputVignetteK2", v885);

      v890 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v886, v887, v888, v889, *(v1363[0] + 3));
      objc_msgSend_setObject_forKeyedSubscript_(v7, v891, v890, @"inputVignetteK3", v892);

      v897 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v893, v894, v895, v896, *(v1363[0] + 4));
      objc_msgSend_setObject_forKeyedSubscript_(v7, v898, v897, @"inputVignetteK4", v899);

      v904 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v900, v901, v902, v903, v863[5], v863[6]);
      objc_msgSend_setObject_forKeyedSubscript_(v7, v905, v904, @"inputVignetteCenter", v906);

      if (v1363[0])
      {
        v1363[1] = v1363[0];
        operator delete(v1363[0]);
      }

      if (v864)
      {
        sub_2337239E8(v864);
      }
    }
  }

  v1363[0] = __p;
  sub_233723948(v1363);
  if (v1355)
  {
    sub_2337239E8(v1355);
  }

LABEL_261:
  objc_msgSend_setObject_forKeyedSubscript_(v7, v858, &unk_284957AA8, @"inputVignetteTableExecute", v859);
  if ((*(*a1 + 2832))(a1) != 1)
  {
    if ((*(*a1 + 2832))(a1) != 2)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v7, v936, &unk_284957AA8, @"inputVignetteTableExecute", v937);
      goto LABEL_296;
    }

    (*(*a1 + 160))(__p, a1);
    sub_2337D0764(__p, &v1352);
    if (__p[1])
    {
      sub_2337239E8(__p[1]);
    }

    if (v1352)
    {
      v938 = (*(*v1352 + 896))(v1352);
      v939 = v1352;
      if (v938)
      {
        v940 = (*(*v1352 + 904))(v1352);
        (*(*v1352 + 928))(__p);
        v941 = (*(*v1352 + 920))(v1352);
        LODWORD(v1354) = 0;
        sub_2337D37D4(v1363, (__p[1] - __p[0]) >> 2);
        LODWORD(v1345) = 0;
        sub_2337D37D4(&v1354, (__p[1] - __p[0]) >> 2);
        v944 = __p[0];
        v945 = v1354;
        v946 = __p[1] - __p[0];
        if (__p[1] != __p[0])
        {
          v947 = 0;
          v948 = (v940 - 1);
          v949 = v1363[0];
          if ((v946 >> 2) <= 1)
          {
            v950 = 1;
          }

          else
          {
            v950 = v946 >> 2;
          }

          do
          {
            v945[v947] = exp2f(v941 * v944[v947]);
            v949[v947] = v947 / v948;
            ++v947;
          }

          while (v950 != v947);
        }

        v951 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v942, v945, v946, v943);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v952, v951, @"inputVignetteTableData", v953);
        v957 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v954, (__p[1] - __p[0]) >> 2, v955, v956);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v958, v957, @"inputVignetteTableDataSize", v959);

        objc_msgSend_setObject_forKeyedSubscript_(v7, v960, &unk_284957AD8, @"inputVignetteTableExecute", v961);
        if (v1354)
        {
          v1355 = v1354;
          operator delete(v1354);
        }

        if (v1363[0])
        {
          v1363[1] = v1363[0];
          operator delete(v1363[0]);
        }
      }

      else
      {
        v962 = (*(*a1 + 2776))(a1);
        if (!(*(*v939 + 960))(v939, v962))
        {
          goto LABEL_294;
        }

        objc_msgSend_setObject_forKeyedSubscript_(v7, v963, &unk_284957AD8, @"inputVignetteExecute", v964);
        (*(*v1352 + 968))(__p);
        v965 = (*(*v1352 + 976))(v1352);
        *&v966 = v965 * *(__p[0] + 3);
        v971 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v967, v968, v969, v970, v966);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v972, v971, @"inputVignetteK0", v973);

        *&v974 = v965 * *(__p[0] + 2);
        v979 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v975, v976, v977, v978, v974);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v980, v979, @"inputVignetteK1", v981);

        *&v982 = v965 * *(__p[0] + 1);
        v987 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v983, v984, v985, v986, v982);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v988, v987, @"inputVignetteK2", v989);

        *&v990 = v965 * *__p[0];
        v995 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v991, v992, v993, v994, v990);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v996, v995, @"inputVignetteK3", v997);

        objc_msgSend_setObject_forKeyedSubscript_(v7, v998, &unk_284957AA8, @"inputVignetteK4", v999);
        v1000 = (*(*v1352 + 984))(v1352);
        v1002 = v1001;
        v1003 = (*(*v1352 + 440))(v1352);
        v1008 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v1004, v1005, v1006, v1007, (v1000 + (v1003 / 2)) / v1003, (v1002 + (SHIDWORD(v1003) / 2)) / SHIDWORD(v1003));
        objc_msgSend_setObject_forKeyedSubscript_(v7, v1009, v1008, @"inputVignetteCenter", v1010);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

LABEL_294:
    v935 = v1353[0];
    if (!v1353[0])
    {
      goto LABEL_296;
    }

    goto LABEL_295;
  }

  (*(*a1 + 160))(__p, a1);
  sub_2337D065C(__p, v1363);
  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  if (v1363[0])
  {
    __p[1] = 0;
    __p[0] = 0;
    *&v1371 = 0;
    sub_2337D3760(__p, *(v1363[0] + 162), *(v1363[0] + 163), (*(v1363[0] + 163) - *(v1363[0] + 162)) >> 4);
    v907 = __p[1];
    v908 = __p[0];
    v909 = __p[1] - __p[0];
    v913 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v910, __p[1] - __p[0], v911, v912);
    v914 = v913;
    v919 = objc_msgSend_mutableBytes(v913, v915, v916, v917, v918);
    v922 = v909 >> 4;
    if (v907 != v908)
    {
      if (v922 <= 1)
      {
        v923 = 1;
      }

      else
      {
        v923 = v922;
      }

      v924 = (__p[0] + 8);
      do
      {
        v925 = *v924;
        v924 += 2;
        v926 = 100.0 / v925;
        *v919++ = v926;
        --v923;
      }

      while (v923);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v7, v920, v913, @"inputVignetteTableData", v921);
    v930 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v927, v922, v928, v929);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v931, v930, @"inputVignetteTableDataSize", v932);

    objc_msgSend_setObject_forKeyedSubscript_(v7, v933, &unk_284957AD8, @"inputVignetteTableExecute", v934);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  v935 = v1363[1];
  if (v1363[1])
  {
LABEL_295:
    sub_2337239E8(v935);
  }

LABEL_296:
  if ((*(*a1 + 2480))(a1))
  {
    __p[0] = 0;
    v1363[0] = 0;
    (*(*a1 + 2664))(a1, __p, v1363);
    v1015 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v1011, v1012, v1013, v1014, *v1363, *__p);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v1016, v1015, @"inputNoiseModel", v1017);
  }

  if ((*(*a1 + 2712))(a1))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v7, v1018, &unk_284957B08, @"inputGamutMapMax", v1019);
  }

  if ((*(*a1 + 120))(a1) >= 9 && (*(*a1 + 176))(a1))
  {
    (*(*a1 + 160))(__p, a1);
    sub_2337D04B8(__p, &v1354);
    if (__p[1])
    {
      sub_2337239E8(__p[1]);
    }

    if (v1354)
    {
      if (sub_2337A53B0(v1354))
      {
        (*(*a1 + 296))(&v1352, a1, 5000);
        if (v1352)
        {
          v1023 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v1020, *(v1352 + 4), v1021, v1022);
          objc_msgSend_setObject_forKeyedSubscript_(v7, v1024, v1023, @"inputOrientation", v1025);
        }

        sub_2337A53D4(v1354, __p);
        v1029 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v1026, LODWORD(__p[0]), v1027, v1028);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v1030, v1029, @"inputMapPointsV", v1031);

        v1035 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v1032, HIDWORD(__p[0]), v1033, v1034);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v1036, v1035, @"inputMapPointsH", v1037);

        v1042 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v1038, v1039, v1040, v1041, *&__p[1]);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v1043, v1042, @"inputMapSpacingV", v1044);

        v1049 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v1045, v1046, v1047, v1048, *&v1371);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v1050, v1049, @"inputMapSpacingH", v1051);

        v1056 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v1052, v1053, v1054, v1055, *(&v1371 + 1));
        objc_msgSend_setObject_forKeyedSubscript_(v7, v1057, v1056, @"inputMapOriginV", v1058);

        v1063 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v1059, v1060, v1061, v1062, *v1372);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v1064, v1063, @"inputMapOriginH", v1065);

        v1069 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v1066, DWORD2(v1372[0]), v1067, v1068);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v1070, v1069, @"inputMapPointsN", v1071);

        *v1363 = vcvtq_f64_f32(*(v1372 + 12));
        v1364 = vcvtq_f64_f32(*(&v1372[1] + 4));
        *&v1365 = *(&v1372[1] + 3);
        v1074 = objc_msgSend_vectorWithValues_count_(MEMORY[0x277CBF788], v1072, v1363, 5, v1073);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v1075, v1074, @"inputWeights", v1076);
        v1079 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v1077, v1375[0], v1375[1] - v1375[0], v1078);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v1080, v1079, @"inputGainData", v1081);

        objc_msgSend_setObject_forKeyedSubscript_(v7, v1082, &unk_284957AD8, @"inputStrength", v1083);
        v1089 = BYTE12(v1373);
        if (BYTE12(v1373) == 1)
        {
          LODWORD(v1088) = DWORD2(v1373);
          v1090 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v1084, v1085, v1086, v1087, v1088);
          objc_msgSend_setObject_forKeyedSubscript_(v7, v1091, v1090, @"inputGamma", v1092);
        }

        else
        {
          v1090 = &unk_28495DB00;
          objc_msgSend_setObject_forKeyedSubscript_(v7, v1084, &unk_28495DB00, @"inputGamma", v1087);
        }

        if (v1089)
        {
        }

        if (v1375[0])
        {
          v1375[1] = v1375[0];
          operator delete(v1375[0]);
        }

        if (v1353[0])
        {
          sub_2337239E8(v1353[0]);
        }
      }

      if (v1354 && sub_2337A61CC(v1354))
      {
        v1093 = MEMORY[0x277CBF788];
        sub_2337A6244(v1354, __p);
        v1094 = __p[0];
        sub_2337A6244(v1354, v1363);
        v1097 = objc_msgSend_vectorWithValues_count_(v1093, v1095, v1094, (v1363[1] - v1363[0]) >> 3, v1096);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v1098, v1097, @"inputReferencePoints", v1099);

        if (v1363[0])
        {
          v1363[1] = v1363[0];
          operator delete(v1363[0]);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v1100 = MEMORY[0x277CBF788];
        sub_2337A62F0(v1354, __p);
        v1101 = __p[0];
        sub_2337A62F0(v1354, v1363);
        v1104 = objc_msgSend_vectorWithValues_count_(v1100, v1102, v1101, (v1363[1] - v1363[0]) >> 3, v1103);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v1105, v1104, @"inputOutputPoints", v1106);

        if (v1363[0])
        {
          v1363[1] = v1363[0];
          operator delete(v1363[0]);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }

    if (v1355)
    {
      sub_2337239E8(v1355);
    }
  }

  v1107 = v7;
  if (v1357)
  {
    v1358 = v1357;
    operator delete(v1357);
  }

  if (v1360)
  {
    sub_2337239E8(v1360);
  }

  return v1107;
}

void sub_2337CF390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  v40 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v40;
    operator delete(v40);
  }

  v41 = STACK[0x268];
  if (STACK[0x268])
  {
    STACK[0x270] = v41;
    operator delete(v41);
  }

  v42 = STACK[0x2C0];
  if (STACK[0x2C0])
  {
    STACK[0x2C8] = v42;
    operator delete(v42);
  }

  if (STACK[0x220])
  {
    sub_2337239E8(STACK[0x220]);
  }

  v43 = STACK[0x288];
  if (STACK[0x288])
  {
    STACK[0x290] = v43;
    operator delete(v43);
  }

  if (STACK[0x2A8])
  {
    sub_2337239E8(STACK[0x2A8]);
  }

  _Unwind_Resume(a1);
}

double sub_2337D020C(double a1, uint64_t a2, double **a3, uint64_t *a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = v5 - *a3;
  v7 = *a4;
  if (v6 != a4[1] - *a4)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v5 == v4)
  {
    return *(v7 + v6 - 8);
  }

  v8 = v6 >> 3;
  v9 = *a3;
  do
  {
    v10 = v8 >> 1;
    v11 = &v9[v8 >> 1];
    v13 = *v11;
    v12 = v11 + 1;
    v8 += ~(v8 >> 1);
    if (v13 > a1)
    {
      v8 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  while (v8);
  v14 = v9 - v4;
  if (v14 >= v6 >> 3)
  {
    return *(v7 + v6 - 8);
  }

  if (v9 == v4)
  {
    return *v7;
  }

  v15 = 8 * v14 - 8;
  v16 = *(v4 + v15);
  v17 = vabdd_f64(*v9, v16);
  if (v17 < 0.000000001)
  {
    v17 = 0.000000001;
  }

  v18 = fmin(fmax(vabdd_f64(a1, v16) / v17, 0.0), 1.0);
  return *(v7 + v9 - v4) * v18 + *(v7 + v15) * (1.0 - v18);
}

void *sub_2337D032C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_284906948, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *sub_2337D03B0@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_2849085F8, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *sub_2337D0434@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_284905CA8, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *sub_2337D04B8@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_2849096C0, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *sub_2337D053C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2849027A8, &unk_284923B50, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *sub_2337D05CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2849027A8, &unk_284910FC0, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *sub_2337D065C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_284907408, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *sub_2337D06E0@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2849102A8, &unk_284938008, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *sub_2337D0764@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_284922B28, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

double sub_2337D07E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v6 = a6;
  if (a6 >= 0.00001)
  {
    v7 = objc_msgSend_function(*(a1 + 32), a2, a3, a4, a5);
    v6 = v7[2](v6) * v6;
  }

  return v6;
}

double sub_2337D085C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = 1.0;
  if (a6 >= 0.00001)
  {
    v8 = objc_msgSend_inverse(*(a1 + 32), a2, a3, a4, a5);
    v7 = v8[2](a6) / a6;
  }

  return v7;
}

id sub_2337D08D4(uint64_t a1)
{
  v2 = (*(*a1 + 2752))(a1);
  if (sub_233739B94(a1))
  {
    v7 = objc_msgSend_array(MEMORY[0x277CBEA60], v3, v4, v5, v6);
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2337D0AF0;
    v17[3] = &unk_2789EEFE0;
    v17[4] = a1;
    v8 = MEMORY[0x2383AC810](v17);
    v9 = sub_233739B84(a1);
    v10 = sub_233739B8C(a1);
    (*(*a1 + 160))(&v12, a1);
    (*(*v12 + 608))(v14);
    v7 = sub_2337243C8(1, v2, v9, v10, v14, v8);
    v18 = &v16;
    sub_233723948(&v18);
    v18 = &v15;
    sub_233723948(&v18);
    v18 = v14;
    sub_233723948(&v18);
    if (v13)
    {
      sub_2337239E8(v13);
    }
  }

  return v7;
}

void sub_2337D0AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  sub_233725098(va);
  if (a4)
  {
    sub_2337239E8(a4);
  }

  _Unwind_Resume(a1);
}

id sub_2337D0AF0(uint64_t a1)
{
  v1 = (*(**(a1 + 32) + 616))(*(a1 + 32));

  return v1;
}

id sub_2337D0B48(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], v2, v3, v4, v5);
  v7 = sub_2338191A8(0);
  objc_msgSend_addObject_(v6, v8, v7, v9, v10);

  v11 = sub_2338191A8(1);
  objc_msgSend_addObject_(v6, v12, v11, v13, v14);

  if ((*(*a1 + 2152))(a1))
  {
    sub_2338191A8(2);
  }

  else
  {
    v19 = sub_2338191A8(2);
    objc_msgSend_addObject_(v6, v20, v19, v21, v22);

    sub_2338191A8(3);
  }
  v15 = ;
  objc_msgSend_addObject_(v6, v16, v15, v17, v18);

  return v6;
}

void sub_2337D0CB8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_2337D0D00(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  (*(*a1 + 72))(&v7, a1);
  v2 = v7;
  v3 = (*(*a1 + 120))(a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2337D11D4;
  v6[3] = &unk_2789EF000;
  v6[4] = a1;
  v4 = sub_2337D0E68(v2, @"applyLensCorrection", v3, v6);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v4;
}

void sub_2337D0E40(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337D0E68(uint64_t a1, void *a2, int a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p.__r_.__value_.__l.__data_);
  if (a1 + 32 == v9)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2337D3D18;
    v28[3] = &unk_2789EEF70;
    v12 = v8;
    v29 = v12;
    sub_23386DB28(a1, v7, v28, &p_p);
    v17 = p_p;
    if (p_p)
    {
      v18 = sub_23386FD70(p_p, v13, v14, v15, v16);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = objc_msgSend_BOOLValue(v18, v19, v20, v21, v22);
    }

    else
    {
      v11 = 0;
    }

    if (v33)
    {
      sub_2337239E8(v33);
    }

    if (!v17)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v23 = sub_2337BEEAC(a1 + 24, &__p.__r_.__value_.__l.__data_);
    v24 = (v23 + 56);
    v31[1] = v11;
    v31[0] = sub_2337D3DB0;
    if (v31 != (v23 + 56))
    {
      v25 = *v24;
      if (*v24)
      {
        p_p = 0;
        v33 = 0;
        v25(2, v24, &p_p, 0, 0);
        v31[0](2, v31, v24, 0, 0);
        (p_p)(2, &p_p, v31, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v23 + 64) = v11;
        *(v23 + 56) = sub_2337D3DB0;
        v31[0] = 0;
      }
    }

    sub_2337BF090(v31);
  }

  else
  {
    v10 = sub_2337D3D64((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2337D1144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2337D11FC(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337BE174(v2, @"lensCorrectionFilter", v3, &unk_284910118);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2337D12A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337D12C8(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v6);
  v4 = v6;
  v5 = (*(*a1 + 120))(a1);
  sub_2337BE5F8(v4, @"lensCorrectionParameters", v5, &unk_284910138, a2);
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

void sub_2337D137C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337D1394(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_2337D13A0(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337D1464(v2, @"lensVignetteCorrectionFilter", v3, &unk_284910158);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2337D144C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337D1464(uint64_t a1, void *a2, int a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p.__r_.__value_.__l.__data_);
  if (a1 + 32 == v9)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2337D3E78;
    v28[3] = &unk_2789EEF70;
    v12 = v8;
    v29 = v12;
    sub_23386DB28(a1, v7, v28, &p_p);
    v17 = p_p;
    if (p_p)
    {
      v18 = sub_23386FD70(p_p, v13, v14, v15, v16);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = objc_msgSend_longLongValue(v18, v19, v20, v21, v22);
    }

    else
    {
      v11 = 0;
    }

    if (v33)
    {
      sub_2337239E8(v33);
    }

    if (!v17)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v23 = sub_2337BEEAC(a1 + 24, &__p.__r_.__value_.__l.__data_);
    v24 = (v23 + 56);
    v31[1] = v11;
    v31[0] = sub_2337D3F10;
    if (v31 != (v23 + 56))
    {
      v25 = *v24;
      if (*v24)
      {
        p_p = 0;
        v33 = 0;
        v25(2, v24, &p_p, 0, 0);
        v31[0](2, v31, v24, 0, 0);
        (p_p)(2, &p_p, v31, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v23 + 64) = v11;
        *(v23 + 56) = sub_2337D3F10;
        v31[0] = 0;
      }
    }

    sub_2337BF090(v31);
  }

  else
  {
    v10 = sub_2337D3EC4((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2337D1740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2337D17D8(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  (*(*a1 + 72))(&v7, a1);
  v2 = v7;
  v3 = (*(*a1 + 120))(a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2337D1940;
  v6[3] = &unk_2789EF000;
  v6[4] = a1;
  v4 = sub_2337D0E68(v2, @"applyGainMap", v3, v6);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v4;
}

void sub_2337D1918(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337D1968(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  (*(*a1 + 72))(&v7, a1);
  v2 = v7;
  v3 = (*(*a1 + 120))(a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2337D1E3C;
  v6[3] = &unk_2789EEF28;
  v6[4] = a1;
  v4 = sub_2337D1AD0(v2, @"gainMapFilter", v3, v6);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v4;
}

void sub_2337D1AA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337D1AD0(uint64_t a1, void *a2, int a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p.__r_.__value_.__l.__data_);
  if (a1 + 32 == v9)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2337D3FD8;
    v28[3] = &unk_2789EEF70;
    v12 = v8;
    v29 = v12;
    sub_23386DB28(a1, v7, v28, &p_p);
    v17 = p_p;
    if (p_p)
    {
      v18 = sub_23386FD70(p_p, v13, v14, v15, v16);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = objc_msgSend_longLongValue(v18, v19, v20, v21, v22);
    }

    else
    {
      v11 = 0;
    }

    if (v33)
    {
      sub_2337239E8(v33);
    }

    if (!v17)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v23 = sub_2337BEEAC(a1 + 24, &__p.__r_.__value_.__l.__data_);
    v24 = (v23 + 56);
    v31[1] = v11;
    v31[0] = sub_2337D4070;
    if (v31 != (v23 + 56))
    {
      v25 = *v24;
      if (*v24)
      {
        p_p = 0;
        v33 = 0;
        v25(2, v24, &p_p, 0, 0);
        v31[0](2, v31, v24, 0, 0);
        (p_p)(2, &p_p, v31, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v23 + 64) = v11;
        *(v23 + 56) = sub_2337D4070;
        v31[0] = 0;
      }
    }

    sub_2337BF090(v31);
  }

  else
  {
    v10 = sub_2337D4024((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2337D1DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2337D1E78(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_2337D1E84(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v6);
  v4 = v6;
  v5 = (*(*a1 + 120))(a1);
  sub_2337BE5F8(v4, @"chromaticAberrationParameters", v5, &unk_284910178, a2);
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

void sub_2337D1F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337D1F50(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_2337D1F5C(uint64_t a1)
{
  if (sub_233739B74(a1))
  {
    return 0;
  }

  v3 = *(*a1 + 2784);

  return v3(a1);
}

id sub_2337D1FFC(void *a1)
{
  v84[3] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280C04E68, memory_order_acquire) & 1) == 0)
  {
    sub_2338FBAB4();
  }

  sub_2337269FC(&v80, a1 + 1);
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3321888768;
  v78[2] = sub_2337D260C;
  v78[3] = &unk_2849101C8;
  v78[4] = v80;
  v79 = v81;
  if (v81)
  {
    atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = MEMORY[0x2383AC810](v78);
  v3 = (*(*a1 + 408))(a1);
  v4 = sub_23373B814(a1);
  v8 = v4;
  v9 = HIDWORD(v4);
  if (byte_280C04E60)
  {
    v10 = 0x2000;
  }

  else
  {
    v10 = 0;
  }

  if (v10 < v4)
  {
    do
    {
      v8 = (v8 >> 1) & 0xFFFFFFFC;
    }

    while (v8 > v10);
  }

  if (byte_280C04E64)
  {
    v11 = 0x2000;
  }

  else
  {
    v11 = 0;
  }

  if (v11 < SHIDWORD(v4))
  {
    do
    {
      v9 = (v9 >> 1) & 0xFFFFFFFC;
    }

    while (v9 > v11);
  }

  v12 = MEMORY[0x277CBEB38];
  v83[0] = *MEMORY[0x277CBFA88];
  v13 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, v8, v6, v7);
  v82[0] = v13;
  v17 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v14, v9, v15, v16);
  v82[1] = v17;
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, v82, 2, v19);
  v21 = *MEMORY[0x277CBFA78];
  v84[0] = v20;
  v84[1] = @"CRawImage";
  v22 = *MEMORY[0x277CBFA00];
  v83[1] = v21;
  v83[2] = v22;
  v84[2] = MEMORY[0x277CBEC38];
  v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v84, v83, 3);
  v28 = objc_msgSend_dictionaryWithDictionary_(v12, v25, v24, v26, v27);

  sub_23373BA14(a1);
  if (v77 != v76)
  {
    v35 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v29, (v77 - v76) >> 1, v30, v31);
    v36 = v76;
    v37 = 0;
    do
    {
      v38 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v32, v36[v37], v33, v34);
      objc_msgSend_setObject_atIndexedSubscript_(v35, v39, v38, v37, v40);

      ++v37;
      v36 = v76;
    }

    while (v37 < (v77 - v76) >> 1);
    objc_msgSend_setObject_forKeyedSubscript_(v28, v32, v35, *MEMORY[0x277CBFA90], v34);
  }

  sub_23373BAC8(a1);
  if (v75 != __p)
  {
    v47 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v41, (v75 - __p) >> 1, v42, v43);
    v48 = __p;
    v49 = 0;
    do
    {
      v50 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v44, v48[v49], v45, v46);
      objc_msgSend_setObject_atIndexedSubscript_(v47, v51, v50, v49, v52);

      ++v49;
      v48 = __p;
    }

    while (v49 < (v75 - __p) >> 1);
    objc_msgSend_setObject_forKeyedSubscript_(v28, v44, v47, *MEMORY[0x277CBFA80], v46);
  }

  v53 = objc_alloc(MEMORY[0x277CBF758]);
  v54 = (*(*a1 + 2152))(a1);
  v56 = sub_2338F28E4();
  v57 = v3 >> 32;
  if (v54)
  {
    v58 = objc_msgSend_initWithImageProvider_width_height_format_colorSpace_options_(v53, v55, v2, v3, v57, *MEMORY[0x277CBF9D8], v56, v28);
  }

  else
  {
    v58 = objc_msgSend_initWithImageProvider_width_height_format_colorSpace_options_(v53, v55, v2, v3, v57, *MEMORY[0x277CBF980], v56, v28);
  }

  v59 = v58;
  v60 = (*(*a1 + 432))(a1);
  v62 = v61;
  CGAffineTransformMakeTranslation(&v73, -v60, -((v3 - (((v61 & 0xFFFFFFFF00000000) + v60) & 0xFFFFFFFF00000000)) >> 32));
  v66 = objc_msgSend_imageByApplyingTransform_(v59, v63, &v73, v64, v65);

  v71 = objc_msgSend_imageByCroppingToRect_(v66, v67, v68, v69, v70, 0.0, 0.0, v62, SHIDWORD(v62));

  if (__p)
  {
    v75 = __p;
    operator delete(__p);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v79)
  {
    sub_2337239E8(v79);
  }

  if (v81)
  {
    sub_2337239E8(v81);
  }

  return v71;
}