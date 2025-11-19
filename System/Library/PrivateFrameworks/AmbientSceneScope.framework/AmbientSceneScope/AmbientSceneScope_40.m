uint64_t sub_23F2487A8(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27E396178;
    v6 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27E396178;
    v6 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_27E3961A0 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 72);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 72) = 0;
  return a1;
}

void sub_23F248910(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
LABEL_16:
    free(v2);
LABEL_17:
    *(a1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27E396178;
    v6 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27E396178;
    v6 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_20;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if (byte_27E3961A0)
  {
LABEL_15:
    qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v2 = *(a1 + 72);
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_20:
  abort();
}

void sub_23F248B54(uint64_t a1, char **lpsrc)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_2851857C0, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v24, lpsrc, 39);
    v9 = *(v24 + 16);
    v8 = *(v24 + 32);
    v22[0] = *v24;
    v22[1] = v9;
    v22[2] = v8;
    *&v24 = 0;
    MEMORY[0x245CACD00]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v24) = 4;
    *(&v24 + 4) = v12;
    v14 = v12;
    v15 = v24;
    v16 = HIDWORD(v12);
    LODWORD(v24) = 1;
    *(&v24 + 4) = v13;
    v17 = v24;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v18 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_18:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v24 = v10;
        *(&v24 + 1) = v15;
        v25 = v16;
        v26 = v17;
        v27 = HIDWORD(v13);
        v28 = v14;
        v29 = v13;
        v23[0] = v22;
        v23[1] = &v24;
        sub_23F1F70F8(v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v18 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_27E3961A0)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_23F270F20(a1 + 8, v6 + 2);
}

void sub_23F248E44(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 39)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v9 = qword_27E396178, v10 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_23:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27E396178;
      v10 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_27E3961A0)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if ((byte_27E3961A0 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_23F249144(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 39)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v9 = qword_27E396178, v10 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_23:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27E396178;
      v10 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_27E3961A0)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if ((byte_27E3961A0 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_23F249444(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_23F249480(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x245CACD00);
}

void sub_23F249594(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_2851857D8, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 40);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x245CACD00]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 4;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v18 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_18:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_23F1DFAEC(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v18 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_27E3961A0)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_23F271B7C(a1 + 8, v6 + 2);
}

void sub_23F24987C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 40)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v9 = qword_27E396178, v10 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_23:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27E396178;
      v10 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_27E3961A0)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if ((byte_27E3961A0 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_23F249B7C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 40)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v9 = qword_27E396178, v10 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_23:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_27E396178;
      v10 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_27E3961A0)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "F == format", 11, &unk_23F3091D6, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if ((byte_27E3961A0 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_23F249E7C(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  if (v4 <= 0x100000000)
  {
    v5 = 0x100000000;
  }

  else
  {
    v5 = v4;
  }

  if (v4)
  {
    v6 = HIDWORD(v4) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = (HIDWORD(v7) * v5);
  if ((v5 & (v5 - 1)) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5 - 1;
  }

  v10 = v9 | (v9 >> 1) | ((v9 | (v9 >> 1)) >> 2);
  v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
  v12 = v11 | (v11 >> 16) | ((v11 | (v11 >> 16)) >> 32);
  if (v12 + 1 > 8)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 8;
  }

  if (v8)
  {
    memptr = 0;
    v14 = malloc_type_posix_memalign(&memptr, v13, (HIDWORD(v7) * v5), 0x63222AC6uLL);
    if (v14)
    {
      sub_23F2BAF78(v14, v13, (HIDWORD(v7) * v5));
    }

    v15 = memptr;
  }

  else
  {
    v15 = 0;
  }

  *a2 = &unk_285179328;
  *(a2 + 8) = v4;
  v16 = (v4 != 0) | (v5 << 32);
  *(a2 + 16) = v16;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v8;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v7;
  *(a2 + 72) = v16;
}

void sub_23F249FA8(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  if (v4 <= 0x100000000)
  {
    v5 = 0x100000000;
  }

  else
  {
    v5 = v4;
  }

  if (v4)
  {
    v6 = HIDWORD(v4) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = 2 * v5;
  v9 = HIDWORD(v7) * v8;
  if ((v8 & (v8 - 1)) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 - 1;
  }

  v11 = v10 | (v10 >> 1) | ((v10 | (v10 >> 1)) >> 2);
  v12 = v11 | (v11 >> 4) | ((v11 | (v11 >> 4)) >> 8);
  v13 = v12 | (v12 >> 16) | ((v12 | (v12 >> 16)) >> 32);
  if (v13 + 1 > 8)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 8;
  }

  v15 = v9 & 0x1FFFFFFFELL;
  if ((v9 & 0x1FFFFFFFELL) != 0)
  {
    memptr = 0;
    v16 = malloc_type_posix_memalign(&memptr, v14, v9 & 0x1FFFFFFFELL, 0x63222AC6uLL);
    if (v16)
    {
      sub_23F2BAF78(v16, v14, v15);
    }

    v17 = memptr;
  }

  else
  {
    v17 = 0;
  }

  v18 = v5 << 32;
  *a2 = &unk_28517DC90;
  *(a2 + 8) = v4;
  if (v4)
  {
    ++v18;
  }

  *(a2 + 16) = v18;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v15;
  *(a2 + 48) = v17;
  *(a2 + 56) = v14;
  *(a2 + 64) = v7;
  *(a2 + 72) = 2 * v18;
}

double sub_23F24A0DC@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  v5 = 0;
  if (v4 > 0x100000000)
  {
    v5 = v4;
  }

  *v9 = v4;
  *&v9[8] = (v4 != 0) | (v5 << 32);
  v9[16] = 0;
  v9[24] = 0;
  v14 = *&v9[8];
  if (v4)
  {
    v6 = HIDWORD(v4) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v4 = 0;
  }

  v13 = v4;
  if (((2 * v5) & (2 * v5 - 1)) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = 2 * v5;
  }

  sub_23F26B8E4(&v10, &v13, &v14, 1, 0, 0, v7);
  *a2 = &unk_285184F18;
  *(a2 + 8) = *v9;
  *(a2 + 20) = *&v9[12];
  *(a2 + 40) = v10;
  *(a2 + 56) = v11;
  result = *&v12;
  *(a2 + 64) = v12;
  return result;
}

void sub_23F24A1C8(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  if (v4 <= 0x100000000)
  {
    v5 = 0x100000000;
  }

  else
  {
    v5 = v4;
  }

  if (v4)
  {
    v6 = HIDWORD(v4) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = 4 * v5;
  v9 = v8 - 1;
  v10 = HIDWORD(v7) * v8;
  v3 = (v8 & (v8 - 1)) == 0;
  v11 = 3;
  if (v3)
  {
    v11 = v9;
  }

  v12 = v11 | (v11 >> 1) | ((v11 | (v11 >> 1)) >> 2);
  v13 = v12 | (v12 >> 4) | ((v12 | (v12 >> 4)) >> 8);
  v14 = v13 | (v13 >> 16) | ((v13 | (v13 >> 16)) >> 32);
  if (v14 + 1 > 8)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 8;
  }

  v16 = v10 & 0x3FFFFFFFCLL;
  if ((v10 & 0x3FFFFFFFCLL) != 0)
  {
    memptr = 0;
    v17 = malloc_type_posix_memalign(&memptr, v15, v10 & 0x3FFFFFFFCLL, 0x63222AC6uLL);
    if (v17)
    {
      sub_23F2BAF78(v17, v15, v16);
    }

    v18 = memptr;
  }

  else
  {
    v18 = 0;
  }

  v19 = v5 << 32;
  *a2 = &unk_285184F98;
  *(a2 + 8) = v4;
  if (v4)
  {
    ++v19;
  }

  *(a2 + 16) = v19;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;
  *(a2 + 56) = v15;
  *(a2 + 64) = v7;
  *(a2 + 72) = 4 * v19;
}

void sub_23F24A300(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 2;
  *&memptr[4] = v4;
  v5 = v4;
  v6 = 2 * (v4 != 0);
  v7 = v6 * v4;
  if (HIDWORD(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
  v10 = __PAIR64__(*&memptr[4], 2);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 2) >> 32 == 0;
  if (__PAIR64__(v5, 2) >> 32)
  {
    v13 = HIDWORD(v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_23F2BAF78(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 2) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (HIDWORD(v5))
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_285188640;
  *(a2 + 8) = v10;
  *(a2 + 16) = HIDWORD(v5);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

double sub_23F24A4D8@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  v5 = 2 * (v4 != 0);
  LODWORD(v6) = v5 * v4;
  *v26 = 2;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 & 0x1FFFFFFFFLL | ((v6 >> 1) << 33);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_23F26D0A4(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_285188740;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F24A678(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v5 = v4;
  if (v4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = HIDWORD(*&memptr[4]);
  if (HIDWORD(*&memptr[4]))
  {
    v8 = (v6 * *&memptr[4]);
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 | (v8 << 32);
  v10 = __PAIR64__(*&memptr[4], 3);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 3) >> 32 == 0;
  if (__PAIR64__(v5, 3) >> 32)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_23F2BAF78(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 3) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (v7)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_285188840;
  *(a2 + 8) = v10;
  *(a2 + 16) = v7;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

double sub_23F24A848@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *v26 = 3;
  *&v26[4] = v4;
  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v6) = v5 * v4;
  *v26 = 3;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 | (v6 << 32);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_23F26D0A4(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_285188940;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F24A9E4(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v5 = v4;
  v6 = 4 * (v4 != 0);
  v7 = v6 * v4;
  if (HIDWORD(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  v10 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 4) >> 32 == 0;
  if (__PAIR64__(v5, 4) >> 32)
  {
    v13 = HIDWORD(v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_23F2BAF78(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 4) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (HIDWORD(v5))
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_285188A40;
  *(a2 + 8) = v10;
  *(a2 + 16) = HIDWORD(v5);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

double sub_23F24ABBC@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  v5 = 4 * (v4 != 0);
  LODWORD(v6) = v5 * v4;
  *v26 = 4;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_23F26D0A4(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_285188B40;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F24AD60(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v5 = v4;
  if (v4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = HIDWORD(*&memptr[4]);
  if (HIDWORD(*&memptr[4]))
  {
    v8 = (v6 * *&memptr[4]);
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 | (v8 << 32);
  v10 = __PAIR64__(*&memptr[4], 3);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 3) >> 32 == 0;
  if (__PAIR64__(v5, 3) >> 32)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_23F2BAF78(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 3) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (v7)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_285188C40;
  *(a2 + 8) = v10;
  *(a2 + 16) = v7;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

double sub_23F24AF30@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *v26 = 3;
  *&v26[4] = v4;
  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v6) = v5 * v4;
  *v26 = 3;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 | (v6 << 32);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_23F26D0A4(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_285188D40;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F24B0CC(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v5 = v4;
  if (v4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = HIDWORD(*&memptr[4]);
  if (HIDWORD(*&memptr[4]))
  {
    v8 = (v6 * *&memptr[4]);
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 | (v8 << 32);
  v10 = __PAIR64__(*&memptr[4], 3);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 3) >> 32 == 0;
  if (__PAIR64__(v5, 3) >> 32)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_23F2BAF78(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 3) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (v7)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_28517D558;
  *(a2 + 8) = v10;
  *(a2 + 16) = v7;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

double sub_23F24B29C@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *v26 = 3;
  *&v26[4] = v4;
  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v6) = v5 * v4;
  *v26 = 3;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 | (v6 << 32);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_23F26D0A4(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_285185098;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F24B438(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v5 = v4;
  v6 = 4 * (v4 != 0);
  v7 = v6 * v4;
  if (HIDWORD(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  v10 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 4) >> 32 == 0;
  if (__PAIR64__(v5, 4) >> 32)
  {
    v13 = HIDWORD(v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_23F2BAF78(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 4) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (HIDWORD(v5))
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_285185198;
  *(a2 + 8) = v10;
  *(a2 + 16) = HIDWORD(v5);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

double sub_23F24B610@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  v5 = 4 * (v4 != 0);
  LODWORD(v6) = v5 * v4;
  *v26 = 4;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_23F26D0A4(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_285188EC0;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F24B7B4(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v5 = v4;
  v6 = 4 * (v4 != 0);
  v7 = v6 * v4;
  if (HIDWORD(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  v10 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 4) >> 32 == 0;
  if (__PAIR64__(v5, 4) >> 32)
  {
    v13 = HIDWORD(v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_23F2BAF78(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 4) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (HIDWORD(v5))
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_285185218;
  *(a2 + 8) = v10;
  *(a2 + 16) = HIDWORD(v5);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

double sub_23F24B98C@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  v5 = 4 * (v4 != 0);
  LODWORD(v6) = v5 * v4;
  *v26 = 4;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_23F26D0A4(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_285185318;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F24BB30(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v5 = v4;
  v6 = 4 * (v4 != 0);
  v7 = v6 * v4;
  if (HIDWORD(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  v10 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 4) >> 32 == 0;
  if (__PAIR64__(v5, 4) >> 32)
  {
    v13 = HIDWORD(v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_23F2BAF78(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 4) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (HIDWORD(v5))
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_285185418;
  *(a2 + 8) = v10;
  *(a2 + 16) = HIDWORD(v5);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

double sub_23F24BD08@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  v5 = 4 * (v4 != 0);
  LODWORD(v6) = v5 * v4;
  *v26 = 4;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_23F26D0A4(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_285189040;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F24BEAC(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v5 = v4;
  v6 = 4 * (v4 != 0);
  v7 = v6 * v4;
  if (HIDWORD(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  v10 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 4) >> 32 == 0;
  if (__PAIR64__(v5, 4) >> 32)
  {
    v13 = HIDWORD(v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_23F2BAF78(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 4) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (HIDWORD(v5))
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_285185498;
  *(a2 + 8) = v10;
  *(a2 + 16) = HIDWORD(v5);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

double sub_23F24C084@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  v5 = 4 * (v4 != 0);
  LODWORD(v6) = v5 * v4;
  *v26 = 4;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_23F26D0A4(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_285185598;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23F24C228(uint64_t result, char **a2)
{
  if (*(result + 20) == 1 && *(a2 + 5) == 1)
  {
    v21 = *(result + 24);
    v22 = *(a2 + 6);
    v23 = *(result + 8);
    if (v21 == v22 && v21 == v23)
    {
      v42 = *(result + 28);
      v43 = *(a2 + 7);
      v44 = *(result + 12);
      v45 = (v44 * v21);
      if (v42 == v43 && v42 == v45)
      {
        if (!(*(result + 16) * v42))
        {
          return result;
        }

        v46 = 2 * (*(result + 16) * v42);
        v47 = *a2;
        v48 = *result;
        v49 = v47;
      }

      else
      {
        v50 = *(result + 16);
        if (v21)
        {
          v51 = v44 == 0;
        }

        else
        {
          v51 = 1;
        }

        if (v51 || v50 == 0)
        {
          return result;
        }

        v53 = *result;
        v54 = *a2;
        v55 = v50 - 1;
        if (v50 != 1)
        {
          if (!v45)
          {
            return result;
          }

          v56 = 2 * v42;
          v57 = 2 * v43;
          do
          {
            result = memmove(v54, v53, 2 * v45);
            v53 += v56;
            v54 += v57;
            --v55;
          }

          while (v55);
        }

        if (!v45)
        {
          return result;
        }

        v46 = 2 * v45;
        v49 = v54;
        v48 = v53;
      }
    }

    else
    {
      v26 = *(result + 12);
      v25 = *(result + 16);
      if (v23)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27 || v25 == 0)
      {
        return result;
      }

      v29 = v26 - 1;
      v30 = *result;
      v31 = 2 * v23;
      v32 = *a2;
      v33 = 2 * v21;
      v34 = 2 * v22;
      v35 = v25 - 1;
      if (v25 != 1)
      {
        v36 = *(a2 + 7);
        v37 = *(result + 28);
        if (v26 == 1)
        {
          v58 = 2 * v37;
          v59 = 2 * v36;
          do
          {
            memmove(v32, v30, v31);
            v30 += v58;
            v32 += v59;
            --v35;
          }

          while (v35);
        }

        else
        {
          v38 = 0;
          v60 = 2 * v36;
          v61 = 2 * v37;
          v62 = v25 - 1;
          do
          {
            v39 = v32;
            v40 = v30;
            v41 = v29;
            do
            {
              memmove(v39, v40, v31);
              v40 += v33;
              v39 += v34;
              --v41;
            }

            while (v41);
            memmove(v39, v40, v31);
            v30 += v61;
            v32 += v60;
            ++v38;
          }

          while (v38 != v62);
        }
      }

      for (; v29; --v29)
      {
        memmove(v32, v30, v31);
        v30 += v33;
        v32 += v34;
      }

      v49 = v32;
      v48 = v30;
      v46 = v31;
    }

    return memmove(v49, v48, v46);
  }

  v3 = *(result + 12);
  v4 = *(result + 16);
  if (*(result + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *result;
    v9 = *a2;
    v10 = 2 * *(result + 24);
    v11 = 2 * *(a2 + 6);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a2 + 7);
      v14 = *(result + 28);
      if (!v7)
      {
        do
        {
          *v9 = *v8;
          v9[1] = *(v8 + 1);
          v9[2] = *(v8 + 2);
          v9[3] = *(v8 + 3);
          v8 += 2 * v14;
          v9 += v13;
          --v12;
        }

        while (v12);
        goto LABEL_58;
      }

      v15 = 0;
      v16 = v9 + 2;
      result = 2 * v13;
      v17 = v8 + 4;
      do
      {
        v18 = v17;
        v19 = v16;
        v20 = v7;
        do
        {
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v19[1] = v18[1];
          v19 = (v19 + v11);
          v18 = (v18 + v10);
          --v20;
        }

        while (v20);
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = *(v18 - 1);
        *v19 = *v18;
        v19[1] = v18[1];
        v8 += 2 * v14;
        v9 += v13;
        ++v15;
        v16 = (v16 + result);
        v17 += v14;
      }

      while (v15 != v12);
    }

    else if (!v7)
    {
LABEL_58:
      *v9 = *v8;
      v9[1] = *(v8 + 1);
      v9[2] = *(v8 + 2);
      v9[3] = *(v8 + 3);
      return result;
    }

    do
    {
      *v9 = *v8;
      v9[1] = *(v8 + 1);
      v9[2] = *(v8 + 2);
      v9[3] = *(v8 + 3);
      v8 += v10;
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_58;
  }

  return result;
}

uint64_t sub_23F24C5E0(uint64_t result, char **a2)
{
  if (*(result + 20) == 1 && *(a2 + 5) == 1)
  {
    v21 = *(result + 24);
    v22 = *(a2 + 6);
    v23 = *(result + 8);
    if (v21 == v22 && v21 == v23)
    {
      v42 = *(result + 28);
      v43 = *(a2 + 7);
      v44 = *(result + 12);
      v45 = (v44 * v21);
      if (v42 == v43 && v42 == v45)
      {
        if (!(*(result + 16) * v42))
        {
          return result;
        }

        v46 = 4 * (*(result + 16) * v42);
        v47 = *a2;
        v48 = *result;
        v49 = v47;
      }

      else
      {
        v50 = *(result + 16);
        if (v21)
        {
          v51 = v44 == 0;
        }

        else
        {
          v51 = 1;
        }

        if (v51 || v50 == 0)
        {
          return result;
        }

        v53 = *result;
        v54 = *a2;
        v55 = v50 - 1;
        if (v50 != 1)
        {
          if (!v45)
          {
            return result;
          }

          v56 = 4 * v42;
          v57 = 4 * v43;
          do
          {
            result = memmove(v54, v53, 4 * v45);
            v53 += v56;
            v54 += v57;
            --v55;
          }

          while (v55);
        }

        if (!v45)
        {
          return result;
        }

        v46 = 4 * v45;
        v49 = v54;
        v48 = v53;
      }
    }

    else
    {
      v26 = *(result + 12);
      v25 = *(result + 16);
      if (v23)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27 || v25 == 0)
      {
        return result;
      }

      v29 = v26 - 1;
      v30 = *result;
      v31 = 4 * v23;
      v32 = *a2;
      v33 = 4 * v21;
      v34 = 4 * v22;
      v35 = v25 - 1;
      if (v25 != 1)
      {
        v36 = *(a2 + 7);
        v37 = *(result + 28);
        if (v26 == 1)
        {
          v58 = 4 * v37;
          v59 = 4 * v36;
          do
          {
            memmove(v32, v30, v31);
            v30 += v58;
            v32 += v59;
            --v35;
          }

          while (v35);
        }

        else
        {
          v38 = 0;
          v60 = 4 * v36;
          v61 = 4 * v37;
          v62 = v25 - 1;
          do
          {
            v39 = v32;
            v40 = v30;
            v41 = v29;
            do
            {
              memmove(v39, v40, v31);
              v40 += v33;
              v39 += v34;
              --v41;
            }

            while (v41);
            memmove(v39, v40, v31);
            v30 += v61;
            v32 += v60;
            ++v38;
          }

          while (v38 != v62);
        }
      }

      for (; v29; --v29)
      {
        memmove(v32, v30, v31);
        v30 += v33;
        v32 += v34;
      }

      v49 = v32;
      v48 = v30;
      v46 = v31;
    }

    return memmove(v49, v48, v46);
  }

  v3 = *(result + 12);
  v4 = *(result + 16);
  if (*(result + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *result;
    v9 = *a2;
    v10 = 4 * *(result + 24);
    v11 = 4 * *(a2 + 6);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a2 + 7);
      v14 = *(result + 28);
      if (!v7)
      {
        do
        {
          *v9 = *v8;
          v9[1] = *(v8 + 1);
          v9[2] = *(v8 + 2);
          v9[3] = *(v8 + 3);
          v8 += 4 * v14;
          v9 += v13;
          --v12;
        }

        while (v12);
        goto LABEL_58;
      }

      v15 = 0;
      v16 = v9 + 2;
      result = 4 * v13;
      v17 = v8 + 8;
      do
      {
        v18 = v17;
        v19 = v16;
        v20 = v7;
        do
        {
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v19[1] = v18[1];
          v19 = (v19 + v11);
          v18 = (v18 + v10);
          --v20;
        }

        while (v20);
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = *(v18 - 1);
        *v19 = *v18;
        v19[1] = v18[1];
        v8 += 4 * v14;
        v9 += v13;
        ++v15;
        v16 = (v16 + result);
        v17 += v14;
      }

      while (v15 != v12);
    }

    else if (!v7)
    {
LABEL_58:
      *v9 = *v8;
      v9[1] = *(v8 + 1);
      v9[2] = *(v8 + 2);
      v9[3] = *(v8 + 3);
      return result;
    }

    do
    {
      *v9 = *v8;
      v9[1] = *(v8 + 1);
      v9[2] = *(v8 + 2);
      v9[3] = *(v8 + 3);
      v8 += v10;
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_58;
  }

  return result;
}

uint64_t sub_23F24C998(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v4)
  {
    memptr = 0;
    v6 = malloc_type_posix_memalign(&memptr, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_23F2BAF78(v6, *(a1 + 16), v4);
    }

    *(a1 + 8) = memptr;
  }

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 8);
  if (*(a2 + 28))
  {
    v8 = *(a2 + 24) == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a2 + 24);
  }

  v12 = HIDWORD(v11);
  v13 = HIDWORD(v10);
  v14 = (HIDWORD(v11) * HIDWORD(v10));
  if (v14 == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    v41 = v10;
    v42 = (HIDWORD(v11) * HIDWORD(v10));
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v15 = qword_27E396178, v16 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_18:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        LODWORD(v10) = v41;
        v14 = v42;
        goto LABEL_19;
      }
    }

    else
    {
      v15 = qword_27E396178;
      v16 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_63;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if ((byte_27E3961A0 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_18;
  }

LABEL_19:
  v17 = v11;
  if (v12)
  {
    v18 = v11 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    return a1;
  }

  v19 = *(a1 + 8);
  v20 = *(a1 + 32);
  if (*(a1 + 28))
  {
    v21 = *(a1 + 24) == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(a1 + 28);
  }

  v43 = *(a1 + 32);
  v23 = HIDWORD(v20);
  if (v22 * HIDWORD(v20) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    v37 = v11;
    v39 = HIDWORD(v11);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v24 = qword_27E396178, v25 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_37:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v37, v39);
        LODWORD(v11) = v38;
        v12 = v40;
        goto LABEL_38;
      }
    }

    else
    {
      v24 = qword_27E396178;
      v25 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_63;
      }
    }

    do
    {
      (*v24)(*(v24 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v24 += 16;
    }

    while (v24 != v25);
    if (byte_27E3961A0)
    {
      goto LABEL_37;
    }

LABEL_63:
    abort();
  }

LABEL_38:
  if (v10 != 1 || v43 != 1)
  {
    if (!v11)
    {
      return a1;
    }

    v29 = v11 - 1;
    v30 = v12 - 1;
    if (v12 != 1)
    {
      if (v11 != 1)
      {
        v31 = 0;
        do
        {
          v32 = v11 - 1;
          v33 = v7;
          v34 = v19;
          do
          {
            *v34 = *v33;
            v33 += v10;
            v34 += v43;
            --v32;
          }

          while (v32);
          *v34 = *v33;
          v7 += v13;
          v19 += v23;
          ++v31;
        }

        while (v31 != v30);
        goto LABEL_54;
      }

      do
      {
        *v19 = *v7;
        v7 += v13;
        v19 += v23;
        --v30;
      }

      while (v30);
    }

    if (v11 == 1)
    {
LABEL_55:
      *v19 = *v7;
      return a1;
    }

    do
    {
LABEL_54:
      *v19 = *v7;
      v7 += v10;
      v19 += v43;
      --v29;
    }

    while (v29);
    goto LABEL_55;
  }

  if (v13 == v11 && v13 == v23)
  {
    if (v14)
    {
      v26 = v19;
      v27 = v7;
      v28 = v14;
LABEL_61:
      memmove(v26, v27, v28);
    }
  }

  else if (v11)
  {
    if (v12 != 1)
    {
      v35 = v12 - 1;
      do
      {
        memmove(v19, v7, v17);
        v7 += v13;
        v19 += v23;
        --v35;
      }

      while (v35);
    }

    v26 = v19;
    v27 = v7;
    v28 = v17;
    goto LABEL_61;
  }

  return a1;
}

uint64_t sub_23F24CDCC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v4)
  {
    memptr = 0;
    v6 = malloc_type_posix_memalign(&memptr, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_23F2BAF78(v6, *(a1 + 16), v4);
    }

    *(a1 + 8) = memptr;
  }

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 8);
  if (*(a2 + 28))
  {
    v8 = *(a2 + 24) == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a2 + 24);
  }

  v12 = HIDWORD(v11);
  v13 = v10 >> 33;
  v14 = HIDWORD(v11) * (v10 >> 33);
  if (v14 == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v15 = qword_27E396178, v16 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_18:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v14 = HIDWORD(v11) * (v10 >> 33);
        goto LABEL_19;
      }
    }

    else
    {
      v15 = qword_27E396178;
      v16 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_66;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if ((byte_27E3961A0 & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_18;
  }

LABEL_19:
  if (v12)
  {
    v17 = v11 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    return a1;
  }

  v18 = *(a1 + 8);
  v19 = *(a1 + 32);
  if (*(a1 + 28))
  {
    v20 = *(a1 + 24) == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(a1 + 28);
  }

  v41 = *(a1 + 32);
  v22 = v19 >> 33;
  if (v21 * (v19 >> 33) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    v40 = v22;
    v42 = v14;
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1)
      {
        goto LABEL_38;
      }

      v24 = qword_27E396178;
      v23 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v24 = qword_27E396178;
      v23 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_66;
      }
    }

    v39 = v10 >> 33;
    do
    {
      (*v24)(*(v24 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v24 += 16;
    }

    while (v24 != v23);
    if (byte_27E3961A0)
    {
LABEL_38:
      qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v39);
      v14 = v42;
      v22 = v40;
      goto LABEL_39;
    }

LABEL_66:
    abort();
  }

LABEL_39:
  v25 = v41 & 0xFFFFFFFE;
  if ((v10 & 0xFFFFFFFE) != 2 || v25 != 2)
  {
    if (!v11)
    {
      return a1;
    }

    v26 = v11 - 1;
    v27 = HIDWORD(v11) - 1;
    if (HIDWORD(v11) == 1)
    {
      if (v11 == 1)
      {
LABEL_64:
        *v18 = *v7;
        return a1;
      }

      v29 = v10 >> 1;
    }

    else
    {
      if (v11 == 1)
      {
        do
        {
          *v18 = *v7;
          v7 += v13;
          v18 += v22;
          --v27;
        }

        while (v27);
        goto LABEL_64;
      }

      v28 = 0;
      v29 = v10 >> 1;
      do
      {
        v30 = v18;
        v31 = v7;
        v32 = v11 - 1;
        do
        {
          *v30 = *v31;
          v31 = (v31 + (v10 & 0xFFFFFFFE));
          v30 = (v30 + v25);
          --v32;
        }

        while (v32);
        *v30 = *v31;
        v7 += v13;
        v18 += v22;
        ++v28;
      }

      while (v28 != v27);
    }

    do
    {
      *v18 = *v7;
      v7 += v29;
      v18 = (v18 + v25);
      --v26;
    }

    while (v26);
    goto LABEL_64;
  }

  if (v13 == v22 && v13 == v11)
  {
    if (v14)
    {
      memmove(v18, v7, 2 * v14);
    }
  }

  else if (v11)
  {
    if (v12 == 1)
    {
      v33 = 2 * v11;
    }

    else
    {
      v34 = v10 >> 33;
      v33 = 2 * v11;
      v35 = HIDWORD(v11) - 1;
      v36 = 2 * v34;
      v37 = 2 * v22;
      do
      {
        memmove(v18, v7, 2 * v11);
        v7 = (v7 + v36);
        v18 = (v18 + v37);
        --v35;
      }

      while (v35);
    }

    memmove(v18, v7, v33);
  }

  return a1;
}

uint64_t sub_23F24D25C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_18;
  }

  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 28);
  }

  if (v4 * (*(a1 + 32) >> 33) != -1)
  {
    goto LABEL_17;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1)
    {
      goto LABEL_16;
    }

    v5 = qword_27E396178;
    v6 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v5 = qword_27E396178;
    v6 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_19;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_27E3961A0 & 1) == 0)
  {
LABEL_19:
    abort();
  }

LABEL_16:
  qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 8);
  if (v2)
  {
LABEL_17:
    free(v2);
  }

LABEL_18:
  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_23F24D3C0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v4)
  {
    memptr = 0;
    v6 = malloc_type_posix_memalign(&memptr, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_23F2BAF78(v6, *(a1 + 16), v4);
    }

    *(a1 + 8) = memptr;
  }

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 8);
  if (*(a2 + 28))
  {
    v8 = *(a2 + 24) == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(a2 + 32);
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a2 + 24);
  }

  v11 = v9 >> 33;
  if (HIDWORD(v10) * (v9 >> 33) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v12 = qword_27E396178, v13 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_18:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_19;
      }
    }

    else
    {
      v12 = qword_27E396178;
      v13 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_51;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if ((byte_27E3961A0 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_18;
  }

LABEL_19:
  if (HIDWORD(v10))
  {
    v14 = v10 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = *(a1 + 8);
    v16 = *(a1 + 32);
    if (*(a1 + 28))
    {
      v17 = *(a1 + 24) == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(a1 + 28);
    }

    v19 = v16 >> 33;
    if (v18 * (v16 >> 33) != -1)
    {
LABEL_39:
      v22 = v10 - 1;
      v23 = 2 * (v9 >> 1);
      v24 = 2 * (v16 >> 1);
      v25 = HIDWORD(v10) - 1;
      if (HIDWORD(v10) != 1)
      {
        if (v10 != 1)
        {
          v26 = 0;
          do
          {
            v27 = v15;
            v28 = v7;
            v29 = v10 - 1;
            do
            {
              *v27 = *v28;
              v28 = (v28 + v23);
              v27 = (v27 + v24);
              --v29;
            }

            while (v29);
            *v27 = *v28;
            v7 += v11;
            v15 += v19;
            ++v26;
          }

          while (v26 != v25);
          goto LABEL_48;
        }

        do
        {
          *v15 = *v7;
          v7 += v11;
          v15 += v19;
          --v25;
        }

        while (v25);
      }

      if (v10 == 1)
      {
LABEL_49:
        *v15 = *v7;
        return a1;
      }

      do
      {
LABEL_48:
        *v15 = *v7;
        v7 = (v7 + v23);
        v15 = (v15 + v24);
        --v22;
      }

      while (v22);
      goto LABEL_49;
    }

    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1)
      {
        goto LABEL_38;
      }

      v21 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v21 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_51;
      }
    }

    v31 = v16 >> 33;
    v32 = v9;
    do
    {
      (*v21)(*(v21 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v21 += 16;
    }

    while (v21 != v20);
    v19 = v16 >> 33;
    if (byte_27E3961A0)
    {
LABEL_38:
      qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v31, v32);
      v11 = v9 >> 33;
      goto LABEL_39;
    }

LABEL_51:
    abort();
  }

  return a1;
}

uint64_t sub_23F24D788(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v4)
  {
    memptr = 0;
    v6 = malloc_type_posix_memalign(&memptr, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_23F2BAF78(v6, *(a1 + 16), v4);
    }

    *(a1 + 8) = memptr;
  }

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 8);
  if (*(a2 + 28))
  {
    v8 = *(a2 + 24) == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a2 + 24);
  }

  v12 = HIDWORD(v11);
  v13 = v10 >> 34;
  v14 = HIDWORD(v11) * (v10 >> 34);
  if (v14 == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v15 = qword_27E396178, v16 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_18:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v14 = HIDWORD(v11) * (v10 >> 34);
        goto LABEL_19;
      }
    }

    else
    {
      v15 = qword_27E396178;
      v16 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_66;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if ((byte_27E3961A0 & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_18;
  }

LABEL_19:
  if (v12)
  {
    v17 = v11 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    return a1;
  }

  v18 = *(a1 + 8);
  v19 = *(a1 + 32);
  if (*(a1 + 28))
  {
    v20 = *(a1 + 24) == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(a1 + 28);
  }

  v41 = *(a1 + 32);
  v22 = v19 >> 34;
  if (v21 * (v19 >> 34) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    v40 = v22;
    v42 = v14;
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1)
      {
        goto LABEL_38;
      }

      v24 = qword_27E396178;
      v23 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v24 = qword_27E396178;
      v23 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_66;
      }
    }

    v39 = v10 >> 34;
    do
    {
      (*v24)(*(v24 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v24 += 16;
    }

    while (v24 != v23);
    if (byte_27E3961A0)
    {
LABEL_38:
      qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v39);
      v14 = v42;
      v22 = v40;
      goto LABEL_39;
    }

LABEL_66:
    abort();
  }

LABEL_39:
  v25 = v41 & 0xFFFFFFFC;
  if ((v10 & 0xFFFFFFFC) != 4 || v25 != 4)
  {
    if (!v11)
    {
      return a1;
    }

    v26 = v11 - 1;
    v27 = HIDWORD(v11) - 1;
    if (HIDWORD(v11) == 1)
    {
      if (v11 == 1)
      {
LABEL_64:
        *v18 = *v7;
        return a1;
      }

      v29 = v10 >> 2;
    }

    else
    {
      if (v11 == 1)
      {
        do
        {
          *v18 = *v7;
          v7 += v13;
          v18 += v22;
          --v27;
        }

        while (v27);
        goto LABEL_64;
      }

      v28 = 0;
      v29 = v10 >> 2;
      do
      {
        v30 = v18;
        v31 = v7;
        v32 = v11 - 1;
        do
        {
          *v30 = *v31;
          v31 = (v31 + (v10 & 0xFFFFFFFC));
          v30 = (v30 + v25);
          --v32;
        }

        while (v32);
        *v30 = *v31;
        v7 += v13;
        v18 += v22;
        ++v28;
      }

      while (v28 != v27);
    }

    do
    {
      *v18 = *v7;
      v7 += v29;
      v18 = (v18 + v25);
      --v26;
    }

    while (v26);
    goto LABEL_64;
  }

  if (v13 == v22 && v13 == v11)
  {
    if (v14)
    {
      memmove(v18, v7, 4 * v14);
    }
  }

  else if (v11)
  {
    if (v12 == 1)
    {
      v33 = 4 * v11;
    }

    else
    {
      v34 = v10 >> 34;
      v33 = 4 * v11;
      v35 = HIDWORD(v11) - 1;
      v36 = 4 * v34;
      v37 = 4 * v22;
      do
      {
        memmove(v18, v7, 4 * v11);
        v7 = (v7 + v36);
        v18 = (v18 + v37);
        --v35;
      }

      while (v35);
    }

    memmove(v18, v7, v33);
  }

  return a1;
}

size_t *sub_23F24DC18(size_t *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  a1[1] = 0;
  a1[2] = v5;
  if (v4)
  {
    memptr = 0;
    v6 = malloc_type_posix_memalign(&memptr, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_23F2BAF78(v6, v3[2], v4);
    }

    v3[1] = memptr;
  }

  v7 = *(a2 + 24);
  v3[5] = *(a2 + 40);
  *(v3 + 3) = v7;
  v8 = *(a2 + 8);
  v69 = *(a2 + 36);
  v9 = *(a2 + 44);
  if (*(a2 + 24))
  {
    v10 = *(a2 + 28) == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (*(a2 + 32))
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a2 + 24);
  }

  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a2 + 32);
  }

  v68 = (v14 * v9);
  v72 = *(a2 + 44);
  if (v68 == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    v15 = v14;
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v16 = qword_27E396178, v17 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_27:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v9 = v72;
        v14 = v15;
        goto LABEL_28;
      }
    }

    else
    {
      v16 = qword_27E396178;
      v17 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_112;
      }
    }

    do
    {
      (*v16)(*(v16 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v16 += 16;
    }

    while (v16 != v17);
    if ((byte_27E3961A0 & 1) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_27;
  }

LABEL_28:
  if (v14)
  {
    v18 = HIDWORD(v13) == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18 || v13 == 0)
  {
    return v3;
  }

  v20 = v3[1];
  v21 = *(v3 + 36);
  v22 = *(v3 + 11);
  if (*(v3 + 7))
  {
    v23 = *(v3 + 6) == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = *(v3 + 8);
  if (v23)
  {
    v24 = 0;
  }

  v71 = *(v3 + 11);
  if (v24 * v22 == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    v66 = v3;
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v25 = qword_27E396178, v26 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_48:
        v3 = v66;
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_49;
      }
    }

    else
    {
      v25 = qword_27E396178;
      v26 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_112;
      }
    }

    do
    {
      (*v25)(*(v25 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v25 += 16;
    }

    while (v25 != v26);
    v22 = v71;
    v9 = v72;
    if (byte_27E3961A0)
    {
      goto LABEL_48;
    }

LABEL_112:
    abort();
  }

LABEL_49:
  v27 = HIDWORD(v21);
  v28 = v21;
  v29 = HIDWORD(v69);
  if (v69 != 1 || v28 != 1)
  {
    v35 = v13 - 1;
    v36 = HIDWORD(v13) - 1;
    v37 = v14 - 1;
    if (v14 != 1)
    {
      if (HIDWORD(v13) == 1)
      {
        if (v13 == 1)
        {
          do
          {
            *v20 = *v8;
            v8 += v9;
            v20 += v22;
            --v37;
          }

          while (v37);
        }

        else
        {
          v57 = 0;
          do
          {
            v58 = v13 - 1;
            v59 = v8;
            v60 = v20;
            do
            {
              *v60 = *v59;
              v59 += v69;
              v60 += v28;
              --v58;
            }

            while (v58);
            *v60 = *v59;
            v8 += v9;
            v20 += v22;
            ++v57;
          }

          while (v57 != v37);
        }
      }

      else
      {
        v38 = 0;
        if (v13 == 1)
        {
          do
          {
            v46 = HIDWORD(v13) - 1;
            v47 = v8;
            v48 = v20;
            do
            {
              *v48 = *v47;
              v47 += v29;
              v48 += v27;
              --v46;
            }

            while (v46);
            *v48 = *v47;
            v8 += v9;
            v20 += v22;
            ++v38;
          }

          while (v38 != v37);
LABEL_98:
          if (v13 != 1)
          {
            v61 = 0;
            do
            {
              v62 = v13 - 1;
              v63 = v8;
              v64 = v20;
              do
              {
                *v64 = *v63;
                v63 += v69;
                v64 += v28;
                --v62;
              }

              while (v62);
              *v64 = *v63;
              v8 += v29;
              v20 += v27;
              ++v61;
            }

            while (v61 != v36);
            goto LABEL_106;
          }

          do
          {
            *v20 = *v8;
            v8 += v29;
            v20 += v27;
            --v36;
          }

          while (v36);
LABEL_105:
          if (v13 == 1)
          {
LABEL_107:
            *v20 = *v8;
            return v3;
          }

          do
          {
LABEL_106:
            *v20 = *v8;
            v8 += v69;
            v20 += v28;
            --v35;
          }

          while (v35);
          goto LABEL_107;
        }

        do
        {
          v39 = 0;
          v40 = v8;
          v41 = v20;
          do
          {
            v42 = v13 - 1;
            v43 = v40;
            v44 = v41;
            do
            {
              *v44 = *v43;
              v43 += v69;
              v44 += v28;
              --v42;
            }

            while (v42);
            *v44 = *v43;
            v40 += v29;
            v41 += v27;
            ++v39;
          }

          while (v39 != v36);
          v45 = v13 - 1;
          do
          {
            *v41 = *v40;
            v40 += v69;
            v41 += v28;
            --v45;
          }

          while (v45);
          *v41 = *v40;
          v8 += v9;
          v20 += v22;
          ++v38;
        }

        while (v38 != v37);
      }
    }

    if (HIDWORD(v13) == 1)
    {
      goto LABEL_105;
    }

    goto LABEL_98;
  }

  if (v29 != v27 || v13 != v27)
  {
    v49 = v14;
    v50 = HIDWORD(v13) - 1;
    v51 = v49 - 1;
    v67 = v3;
    if (v49 != 1)
    {
      if (HIDWORD(v13) == 1)
      {
        do
        {
          memmove(v20, v8, v13);
          v8 += v9;
          v20 += v22;
          --v51;
        }

        while (v51);
      }

      else
      {
        v52 = 0;
        v70 = v49 - 1;
        do
        {
          v53 = HIDWORD(v13) - 1;
          v54 = v8;
          v55 = v20;
          do
          {
            memmove(v55, v54, v13);
            v54 += v29;
            v55 += v27;
            --v53;
          }

          while (v53);
          memmove(v55, v54, v13);
          v8 += v72;
          v20 += v71;
          ++v52;
        }

        while (v52 != v70);
      }
    }

    if (HIDWORD(v13) == 1)
    {
      v3 = v67;
    }

    else
    {
      v3 = v67;
      do
      {
        memmove(v20, v8, v13);
        v8 += v29;
        v20 += v27;
        --v50;
      }

      while (v50);
    }

    v32 = v20;
    v33 = v8;
    v34 = v13;
    goto LABEL_110;
  }

  v30 = v22;
  v31 = (v13 * HIDWORD(v13));
  if (v9 == v30 && v9 == v31)
  {
    if (v68)
    {
      v32 = v20;
      v33 = v8;
      v34 = v68;
LABEL_110:
      memmove(v32, v33, v34);
    }
  }

  else if (v27)
  {
    v56 = v14 - 1;
    if (v14 != 1)
    {
      if (!v31)
      {
        return v3;
      }

      do
      {
        memmove(v20, v8, v31);
        v8 += v9;
        v20 += v71;
        --v56;
      }

      while (v56);
    }

    if (v31)
    {
      v32 = v20;
      v33 = v8;
      v34 = (v13 * HIDWORD(v13));
      goto LABEL_110;
    }
  }

  return v3;
}

size_t *sub_23F24E2E0(size_t *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  a1[1] = 0;
  a1[2] = v5;
  if (v4)
  {
    memptr = 0;
    v6 = malloc_type_posix_memalign(&memptr, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_23F2BAF78(v6, v3[2], v4);
    }

    v3[1] = memptr;
  }

  v7 = *(a2 + 24);
  v3[5] = *(a2 + 40);
  *(v3 + 3) = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 36);
  v10 = *(a2 + 44) >> 1;
  if (*(a2 + 24))
  {
    v11 = *(a2 + 28) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (*(a2 + 32))
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a2 + 24);
  }

  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a2 + 32);
  }

  v90 = *(a2 + 44) >> 1;
  v92 = v15 * v10;
  if (v15 * v10 == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v16 = qword_27E396178, v17 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_27:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_28;
      }
    }

    else
    {
      v16 = qword_27E396178;
      v17 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_114;
      }
    }

    do
    {
      (*v16)(*(v16 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v16 += 16;
    }

    while (v16 != v17);
    if ((byte_27E3961A0 & 1) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_27;
  }

LABEL_28:
  if (v15)
  {
    v18 = HIDWORD(v14) == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18 || v14 == 0)
  {
    return v3;
  }

  v20 = v3[1];
  v21 = *(v3 + 36);
  v22 = *(v3 + 11) >> 1;
  if (*(v3 + 7))
  {
    v23 = *(v3 + 6) == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = *(v3 + 8);
  if (v23)
  {
    v24 = 0;
  }

  if (v24 * v22 == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    v86 = v3;
    v88 = v22;
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1)
      {
        goto LABEL_49;
      }

      v25 = qword_27E396178;
      v26 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v25 = qword_27E396178;
      v26 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_114;
      }
    }

    v85 = v9;
    do
    {
      (*v25)(*(v25 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v25 += 16;
    }

    while (v25 != v26);
    if (byte_27E3961A0)
    {
LABEL_49:
      v3 = v86;
      qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v85);
      v22 = v88;
      goto LABEL_50;
    }

LABEL_114:
    abort();
  }

LABEL_50:
  v27 = v9 & 0xFFFFFFFE;
  v28 = v21 & 0xFFFFFFFE;
  v29 = v9 >> 33;
  v30 = v21 >> 33;
  if (v27 != 2 || v28 != 2)
  {
    v33 = v14 - 1;
    v34 = HIDWORD(v14) - 1;
    v35 = v15 - 1;
    if (v15 == 1)
    {
      v36 = v9;
      if (HIDWORD(v14) == 1)
      {
        if (v14 == 1)
        {
LABEL_106:
          *v20 = *v8;
          return v3;
        }

        v56 = v9 >> 1;
        do
        {
LABEL_93:
          *v20 = *v8;
          v8 += v56;
          v20 = (v20 + v28);
          --v33;
        }

        while (v33);
        goto LABEL_106;
      }
    }

    else
    {
      if (HIDWORD(v14) == 1)
      {
        if (v14 == 1)
        {
          do
          {
            *v20 = *v8;
            v8 += v90;
            v20 += v22;
            --v35;
          }

          while (v35);
          goto LABEL_106;
        }

        v75 = 0;
        v56 = v9 >> 1;
        do
        {
          v76 = v20;
          v77 = v8;
          v78 = v14 - 1;
          do
          {
            *v76 = *v77;
            v77 = (v77 + v27);
            v76 = (v76 + v28);
            --v78;
          }

          while (v78);
          *v76 = *v77;
          v8 += v90;
          v20 += v22;
          ++v75;
        }

        while (v75 != v35);
        goto LABEL_93;
      }

      if (v14 == 1)
      {
        v79 = 0;
        do
        {
          v80 = v20;
          v81 = v8;
          v82 = HIDWORD(v14) - 1;
          do
          {
            *v80 = *v81;
            v81 += v29;
            v80 += v30;
            --v82;
          }

          while (v82);
          *v80 = *v81;
          v8 += v90;
          v20 += v22;
          ++v79;
        }

        while (v79 != v35);
        goto LABEL_99;
      }

      v36 = v9;
      v37 = 0;
      v38 = 2 * v90;
      v39 = v29;
      v40 = 2 * v22;
      v41 = v30;
      v42 = &v8[v29];
      v43 = &v20[v30];
      do
      {
        v44 = 0;
        v45 = v43;
        v46 = v42;
        v47 = v20;
        v48 = v8;
        do
        {
          v49 = v46;
          v50 = v45;
          v51 = v47;
          v52 = v48;
          v53 = v14 - 1;
          do
          {
            *v51 = *v52;
            v52 = (v52 + v27);
            v51 = (v51 + v28);
            --v53;
          }

          while (v53);
          *v51 = *v52;
          v48 = (v48 + v39 * 2);
          v47 = (v47 + v41 * 2);
          ++v44;
          v46 = &v49[v39];
          v45 = &v50[v41];
        }

        while (v44 != v34);
        v54 = v14 - 1;
        do
        {
          *v50 = *v49;
          v49 = (v49 + v27);
          v50 = (v50 + v28);
          --v54;
        }

        while (v54);
        *v50 = *v49;
        v8 = (v8 + v38);
        v20 = (v20 + v40);
        ++v37;
        v42 = (v42 + v38);
        v43 = (v43 + v40);
      }

      while (v37 != v35);
    }

    if (v14 != 1)
    {
      v55 = 0;
      v56 = v36 >> 1;
      v57 = 2 * v29;
      v58 = 2 * v30;
      do
      {
        v59 = v20;
        v60 = v8;
        v61 = v14 - 1;
        do
        {
          *v59 = *v60;
          v60 = (v60 + v27);
          v59 = (v59 + v28);
          --v61;
        }

        while (v61);
        *v59 = *v60;
        v8 = (v8 + v57);
        v20 = (v20 + v58);
        ++v55;
      }

      while (v55 != v34);
      goto LABEL_93;
    }

    do
    {
LABEL_99:
      *v20 = *v8;
      v8 += v29;
      v20 += v30;
      --v34;
    }

    while (v34);
    goto LABEL_106;
  }

  if (v29 == v30 && v29 == v14)
  {
    v31 = (HIDWORD(v14) * v14);
    if (v90 == v22 && v90 == v31)
    {
      if (v92)
      {
        v32 = 2 * v92;
LABEL_113:
        memmove(v20, v8, v32);
      }
    }

    else if (v29)
    {
      v72 = v22;
      v73 = v15 - 1;
      if (v15 == 1)
      {
        v74 = v3;
      }

      else
      {
        if (!v31)
        {
          return v3;
        }

        v74 = v3;
        v84 = 2 * v72;
        do
        {
          memmove(v20, v8, 2 * v31);
          v8 += v90;
          v20 = (v20 + v84);
          --v73;
        }

        while (v73);
      }

      v3 = v74;
      if (v31)
      {
        v32 = 2 * v31;
        goto LABEL_113;
      }
    }
  }

  else
  {
    v87 = v3;
    v62 = 2 * v14;
    v63 = HIDWORD(v14) - 1;
    v64 = 2 * v29;
    v65 = 2 * v30;
    v66 = v15 - 1;
    if (v15 != 1)
    {
      v67 = v22;
      if (v63)
      {
        v68 = 0;
        v89 = 2 * v67;
        v91 = 2 * v90;
        v93 = v15 - 1;
        do
        {
          v69 = v20;
          v70 = v8;
          v71 = v63;
          do
          {
            memmove(v69, v70, v62);
            v70 += v64;
            v69 += v65;
            --v71;
          }

          while (v71);
          memmove(v69, v70, v62);
          v8 = (v8 + v91);
          v20 = (v20 + v89);
          ++v68;
        }

        while (v68 != v93);
      }

      else
      {
        do
        {
          memmove(v20, v8, v62);
          v8 += v90;
          v20 += v22;
          --v66;
        }

        while (v66);
      }
    }

    for (; v63; --v63)
    {
      memmove(v20, v8, v62);
      v8 = (v8 + v64);
      v20 = (v20 + v65);
    }

    memmove(v20, v8, v62);
    return v87;
  }

  return v3;
}

uint64_t sub_23F24EA7C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 44) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27E396178;
    v6 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27E396178;
    v6 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_27E3961A0 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 8);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_23F24EBE4(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v4)
  {
    memptr = 0;
    v6 = malloc_type_posix_memalign(&memptr, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_23F2BAF78(v6, *(a1 + 16), v4);
    }

    *(a1 + 8) = memptr;
  }

  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 36);
  v10 = *(a2 + 44) >> 1;
  if (*(a2 + 24))
  {
    v11 = *(a2 + 28) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (*(a2 + 32))
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a2 + 24);
  }

  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a2 + 32);
  }

  if (v15 * v10 == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v17 = qword_27E396178, v16 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_27:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_28;
      }
    }

    else
    {
      v17 = qword_27E396178;
      v16 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_85;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v16);
    if ((byte_27E3961A0 & 1) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_27;
  }

LABEL_28:
  if (v15)
  {
    v18 = HIDWORD(v14) == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18 && v14 != 0)
  {
    v20 = *(a1 + 8);
    v21 = *(a1 + 36);
    v22 = *(a1 + 44) >> 1;
    if (*(a1 + 28))
    {
      v23 = *(a1 + 24) == 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = *(a1 + 32);
    if (v23)
    {
      v24 = 0;
    }

    if (v24 * v22 != -1)
    {
LABEL_49:
      v27 = v14 - 1;
      v28 = HIDWORD(v14) - 1;
      v29 = v9 >> 33;
      v30 = v21 >> 33;
      v31 = 2 * (v9 >> 1);
      v32 = 2 * (v21 >> 1);
      v33 = v15 - 1;
      if (v15 != 1)
      {
        if (HIDWORD(v14) == 1)
        {
          if (v14 == 1)
          {
            do
            {
              *v20 = *v8;
              v8 += v10;
              v20 += v22;
              --v33;
            }

            while (v33);
          }

          else
          {
            v55 = 0;
            do
            {
              v56 = v20;
              v57 = v8;
              v58 = v14 - 1;
              do
              {
                *v56 = *v57;
                v57 = (v57 + v31);
                v56 = (v56 + v32);
                --v58;
              }

              while (v58);
              *v56 = *v57;
              v8 += v10;
              v20 += v22;
              ++v55;
            }

            while (v55 != v33);
          }
        }

        else
        {
          v34 = 0;
          v35 = 2 * v10;
          v36 = v29;
          v37 = 2 * v22;
          v38 = v30;
          if (v14 == 1)
          {
            do
            {
              v52 = HIDWORD(v14) - 1;
              v53 = v20;
              v54 = v8;
              do
              {
                *v53 = *v54;
                v54 = (v54 + v36 * 2);
                v53 = (v53 + v38 * 2);
                --v52;
              }

              while (v52);
              *v53 = *v54;
              v8 = (v8 + v35);
              v20 = (v20 + v37);
              ++v34;
            }

            while (v34 != v33);
LABEL_73:
            if (v14 != 1)
            {
              v59 = 0;
              v60 = 2 * v29;
              v61 = 2 * v30;
              do
              {
                v62 = v20;
                v63 = v8;
                v64 = v14 - 1;
                do
                {
                  *v62 = *v63;
                  v63 = (v63 + v31);
                  v62 = (v62 + v32);
                  --v64;
                }

                while (v64);
                *v62 = *v63;
                v8 = (v8 + v60);
                v20 = (v20 + v61);
                ++v59;
              }

              while (v59 != v28);
              goto LABEL_82;
            }

            v65 = 2 * v29;
            v66 = 2 * v30;
            do
            {
              *v20 = *v8;
              v8 = (v8 + v65);
              v20 = (v20 + v66);
              --v28;
            }

            while (v28);
LABEL_81:
            if (v14 == 1)
            {
LABEL_83:
              *v20 = *v8;
              return a1;
            }

            do
            {
LABEL_82:
              *v20 = *v8;
              v8 = (v8 + v31);
              v20 = (v20 + v32);
              --v27;
            }

            while (v27);
            goto LABEL_83;
          }

          v39 = &v8[v36];
          v40 = &v20[v38];
          do
          {
            v41 = 0;
            v42 = v40;
            v43 = v39;
            v44 = v20;
            v45 = v8;
            do
            {
              v46 = v43;
              v47 = v42;
              v48 = v44;
              v49 = v45;
              v50 = v14 - 1;
              do
              {
                *v48 = *v49;
                v49 = (v49 + v31);
                v48 = (v48 + v32);
                --v50;
              }

              while (v50);
              *v48 = *v49;
              v45 = (v45 + v36 * 2);
              v44 = (v44 + v38 * 2);
              ++v41;
              v43 = &v46[v36];
              v42 = &v47[v38];
            }

            while (v41 != v28);
            v51 = v14 - 1;
            do
            {
              *v47 = *v46;
              v46 = (v46 + v31);
              v47 = (v47 + v32);
              --v51;
            }

            while (v51);
            *v47 = *v46;
            v8 = (v8 + v35);
            v20 = (v20 + v37);
            ++v34;
            v39 = (v39 + v35);
            v40 = (v40 + v37);
          }

          while (v34 != v33);
        }
      }

      if (HIDWORD(v14) == 1)
      {
        goto LABEL_81;
      }

      goto LABEL_73;
    }

    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    v68 = v21;
    v69 = v10;
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v25 = qword_27E396178, v26 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_48:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v21 = v68;
        v10 = v69;
        goto LABEL_49;
      }
    }

    else
    {
      v25 = qword_27E396178;
      v26 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_85;
      }
    }

    do
    {
      (*v25)(*(v25 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v25 += 16;
    }

    while (v25 != v26);
    if (byte_27E3961A0)
    {
      goto LABEL_48;
    }

LABEL_85:
    abort();
  }

  return a1;
}

size_t *sub_23F24F178(size_t *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  a1[1] = 0;
  a1[2] = v5;
  if (v4)
  {
    memptr = 0;
    v6 = malloc_type_posix_memalign(&memptr, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_23F2BAF78(v6, v3[2], v4);
    }

    v3[1] = memptr;
  }

  v7 = *(a2 + 24);
  v3[5] = *(a2 + 40);
  *(v3 + 3) = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 36);
  v10 = *(a2 + 44) >> 2;
  if (*(a2 + 24))
  {
    v11 = *(a2 + 28) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (*(a2 + 32))
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a2 + 24);
  }

  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a2 + 32);
  }

  v90 = *(a2 + 44) >> 2;
  v92 = v15 * v10;
  if (v15 * v10 == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v16 = qword_27E396178, v17 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_27:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_28;
      }
    }

    else
    {
      v16 = qword_27E396178;
      v17 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_114;
      }
    }

    do
    {
      (*v16)(*(v16 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v16 += 16;
    }

    while (v16 != v17);
    if ((byte_27E3961A0 & 1) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_27;
  }

LABEL_28:
  if (v15)
  {
    v18 = HIDWORD(v14) == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18 || v14 == 0)
  {
    return v3;
  }

  v20 = v3[1];
  v21 = *(v3 + 36);
  v22 = *(v3 + 11) >> 2;
  if (*(v3 + 7))
  {
    v23 = *(v3 + 6) == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = *(v3 + 8);
  if (v23)
  {
    v24 = 0;
  }

  if (v24 * v22 == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    v86 = v3;
    v88 = v22;
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1)
      {
        goto LABEL_49;
      }

      v25 = qword_27E396178;
      v26 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v25 = qword_27E396178;
      v26 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_114;
      }
    }

    v85 = v9;
    do
    {
      (*v25)(*(v25 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v25 += 16;
    }

    while (v25 != v26);
    if (byte_27E3961A0)
    {
LABEL_49:
      v3 = v86;
      qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v85);
      v22 = v88;
      goto LABEL_50;
    }

LABEL_114:
    abort();
  }

LABEL_50:
  v27 = v9 & 0xFFFFFFFC;
  v28 = v21 & 0xFFFFFFFC;
  v29 = v9 >> 34;
  v30 = v21 >> 34;
  if (v27 != 4 || v28 != 4)
  {
    v33 = v14 - 1;
    v34 = HIDWORD(v14) - 1;
    v35 = v15 - 1;
    if (v15 == 1)
    {
      v36 = v9;
      if (HIDWORD(v14) == 1)
      {
        if (v14 == 1)
        {
LABEL_106:
          *v20 = *v8;
          return v3;
        }

        v56 = v9 >> 2;
        do
        {
LABEL_93:
          *v20 = *v8;
          v8 += v56;
          v20 = (v20 + v28);
          --v33;
        }

        while (v33);
        goto LABEL_106;
      }
    }

    else
    {
      if (HIDWORD(v14) == 1)
      {
        if (v14 == 1)
        {
          do
          {
            *v20 = *v8;
            v8 += v90;
            v20 += v22;
            --v35;
          }

          while (v35);
          goto LABEL_106;
        }

        v75 = 0;
        v56 = v9 >> 2;
        do
        {
          v76 = v20;
          v77 = v8;
          v78 = v14 - 1;
          do
          {
            *v76 = *v77;
            v77 = (v77 + v27);
            v76 = (v76 + v28);
            --v78;
          }

          while (v78);
          *v76 = *v77;
          v8 += v90;
          v20 += v22;
          ++v75;
        }

        while (v75 != v35);
        goto LABEL_93;
      }

      if (v14 == 1)
      {
        v79 = 0;
        do
        {
          v80 = v20;
          v81 = v8;
          v82 = HIDWORD(v14) - 1;
          do
          {
            *v80 = *v81;
            v81 += v29;
            v80 += v30;
            --v82;
          }

          while (v82);
          *v80 = *v81;
          v8 += v90;
          v20 += v22;
          ++v79;
        }

        while (v79 != v35);
        goto LABEL_99;
      }

      v36 = v9;
      v37 = 0;
      v38 = 4 * v90;
      v39 = v29;
      v40 = 4 * v22;
      v41 = v30;
      v42 = &v8[v29];
      v43 = &v20[v30];
      do
      {
        v44 = 0;
        v45 = v43;
        v46 = v42;
        v47 = v20;
        v48 = v8;
        do
        {
          v49 = v46;
          v50 = v45;
          v51 = v47;
          v52 = v48;
          v53 = v14 - 1;
          do
          {
            *v51 = *v52;
            v52 = (v52 + v27);
            v51 = (v51 + v28);
            --v53;
          }

          while (v53);
          *v51 = *v52;
          v48 = (v48 + v39 * 4);
          v47 = (v47 + v41 * 4);
          ++v44;
          v46 = &v49[v39];
          v45 = &v50[v41];
        }

        while (v44 != v34);
        v54 = v14 - 1;
        do
        {
          *v50 = *v49;
          v49 = (v49 + v27);
          v50 = (v50 + v28);
          --v54;
        }

        while (v54);
        *v50 = *v49;
        v8 = (v8 + v38);
        v20 = (v20 + v40);
        ++v37;
        v42 = (v42 + v38);
        v43 = (v43 + v40);
      }

      while (v37 != v35);
    }

    if (v14 != 1)
    {
      v55 = 0;
      v56 = v36 >> 2;
      v57 = 4 * v29;
      v58 = 4 * v30;
      do
      {
        v59 = v20;
        v60 = v8;
        v61 = v14 - 1;
        do
        {
          *v59 = *v60;
          v60 = (v60 + v27);
          v59 = (v59 + v28);
          --v61;
        }

        while (v61);
        *v59 = *v60;
        v8 = (v8 + v57);
        v20 = (v20 + v58);
        ++v55;
      }

      while (v55 != v34);
      goto LABEL_93;
    }

    do
    {
LABEL_99:
      *v20 = *v8;
      v8 += v29;
      v20 += v30;
      --v34;
    }

    while (v34);
    goto LABEL_106;
  }

  if (v29 == v30 && v29 == v14)
  {
    v31 = (HIDWORD(v14) * v14);
    if (v90 == v22 && v90 == v31)
    {
      if (v92)
      {
        v32 = 4 * v92;
LABEL_113:
        memmove(v20, v8, v32);
      }
    }

    else if (v29)
    {
      v72 = v22;
      v73 = v15 - 1;
      if (v15 == 1)
      {
        v74 = v3;
      }

      else
      {
        if (!v31)
        {
          return v3;
        }

        v74 = v3;
        v84 = 4 * v72;
        do
        {
          memmove(v20, v8, 4 * v31);
          v8 += v90;
          v20 = (v20 + v84);
          --v73;
        }

        while (v73);
      }

      v3 = v74;
      if (v31)
      {
        v32 = 4 * v31;
        goto LABEL_113;
      }
    }
  }

  else
  {
    v87 = v3;
    v62 = 4 * v14;
    v63 = HIDWORD(v14) - 1;
    v64 = 4 * v29;
    v65 = 4 * v30;
    v66 = v15 - 1;
    if (v15 != 1)
    {
      v67 = v22;
      if (v63)
      {
        v68 = 0;
        v89 = 4 * v67;
        v91 = 4 * v90;
        v93 = v15 - 1;
        do
        {
          v69 = v20;
          v70 = v8;
          v71 = v63;
          do
          {
            memmove(v69, v70, v62);
            v70 += v64;
            v69 += v65;
            --v71;
          }

          while (v71);
          memmove(v69, v70, v62);
          v8 = (v8 + v91);
          v20 = (v20 + v89);
          ++v68;
        }

        while (v68 != v93);
      }

      else
      {
        do
        {
          memmove(v20, v8, v62);
          v8 += v90;
          v20 += v22;
          --v66;
        }

        while (v66);
      }
    }

    for (; v63; --v63)
    {
      memmove(v20, v8, v62);
      v8 = (v8 + v64);
      v20 = (v20 + v65);
    }

    memmove(v20, v8, v62);
    return v87;
  }

  return v3;
}

void sub_23F261AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54)
{
  if (a2)
  {
    sub_23EF2F99C(a1);
  }

  _Unwind_Resume(a1);
}

size_t *sub_23F264670(size_t *a1, _DWORD *a2, void **a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a4)
  {
    v11 = *a3;
    v12 = a2[1];
  }

  else
  {
    LODWORD(v13) = *a2;
    v12 = a2[1];
    if (v12)
    {
      v13 = v13;
    }

    else
    {
      v13 = 0;
    }

    v11 = ((*a2 != 0) | (v13 << 32));
  }

  v14 = (v12 * HIDWORD(v11));
  v15 = (a7 - 1) | ((a7 - 1) >> 1) | (((a7 - 1) | ((a7 - 1) >> 1)) >> 2);
  v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
  v17 = v16 | (v16 >> 16) | ((v16 | (v16 >> 16)) >> 32);
  if (v17 + 1 > 8)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 8;
  }

  *a1 = v14;
  a1[1] = 0;
  a1[2] = v18;
  if (v14)
  {
    memptr[0] = 0;
    v19 = malloc_type_posix_memalign(memptr, v18, v14, 0x63222AC6uLL);
    if (v19)
    {
      sub_23F2BAF78(v19, a1[2], v14);
    }

    v20 = memptr[0];
    a1[1] = memptr[0];
    v21 = *a2;
    a1[3] = *a2;
    a1[4] = v11;
    if (v20 && (a6 & 1) != 0)
    {
      if (v21)
      {
        v22 = HIDWORD(v21) == 0;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        v21 = 0;
      }

      memptr[0] = v20;
      memptr[1] = v21;
      memptr[2] = v11;
      if (HIDWORD(v21) * HIDWORD(v11) != -1)
      {
        goto LABEL_29;
      }

      sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
      if (byte_27E3961A0 == 1)
      {
        if (byte_27E3961A8 != 1 || (v23 = qword_27E396178, v24 = unk_27E396180, qword_27E396178 == unk_27E396180))
        {
LABEL_28:
          qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_29:
          v27[0] = memptr;
          v27[1] = a5;
          sub_23F1F2AE8(v27);
          return a1;
        }
      }

      else
      {
        v23 = qword_27E396178;
        v24 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_32;
        }
      }

      do
      {
        (*v23)(*(v23 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v23 += 16;
      }

      while (v23 != v24);
      if (byte_27E3961A0)
      {
        goto LABEL_28;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    a1[3] = *a2;
    a1[4] = v11;
  }

  return a1;
}

void sub_23F264898(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    free(v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

void sub_23F2648FC(uint64_t a1, int a2, unint64_t a3)
{
  v156 = *MEMORY[0x277D85DE8];
  v135 = a3;
  switch(a2)
  {
    case 1:
      *v149 = &unk_2851792E0;
      sub_23F249E7C(&v135, &v141);
      operator new();
    case 2:
      *v149 = &unk_28517DF28;
      sub_23F249FA8(&v135, &v141);
      operator new();
    case 3:
      if (a3)
      {
        v87 = HIDWORD(a3) == 0;
      }

      else
      {
        v87 = 1;
      }

      v88 = v87;
      if (v87)
      {
        v89 = 0;
      }

      else
      {
        v89 = a3;
      }

      v90 = 0;
      if (v89 > 0x100000000)
      {
        v90 = v89;
      }

      *v149 = v89;
      *&v149[8] = (v89 != 0) | (v90 << 32);
      v149[16] = 0;
      v149[24] = 0;
      v139 = *&v149[8];
      if (!v89)
      {
        v88 = 1;
      }

      if (v88)
      {
        v91 = 0;
      }

      else
      {
        v91 = v89;
      }

      v136 = &unk_2851859E8;
      v137 = v91;
      if (((2 * v90) & (2 * v90 - 1)) != 0)
      {
        v92 = 2;
      }

      else
      {
        v92 = 2 * v90;
      }

      sub_23F26B8E4(&v150, &v137, &v139, 1, 0, 0, v92);
      v141 = &unk_285184F18;
      *v142 = *v149;
      *&v142[12] = *&v149[12];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      operator new();
    case 4:
      *v149 = &unk_285185B68;
      sub_23F24A1C8(&v135, &v141);
      operator new();
    case 5:
      *v149 = &unk_2851895A8;
      sub_23F24A300(&v135, &v141);
      operator new();
    case 6:
      v139 = &unk_285189728;
      sub_23F271FA8(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2851886C0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 7:
      v136 = &unk_2851898A8;
      if (HIDWORD(a3))
      {
        v31 = a3 == 0;
      }

      else
      {
        v31 = 1;
      }

      if (v31)
      {
        v32 = 0;
      }

      else
      {
        v32 = a3;
      }

      v33 = 2 * (v32 != 0);
      LODWORD(v34) = v33 * v32;
      *v149 = 2;
      *&v149[4] = v32;
      v35 = *v149;
      v36 = HIDWORD(v32);
      if (HIDWORD(*v149))
      {
        v37 = *v149 == 0;
      }

      else
      {
        v37 = 1;
      }

      v38 = v37;
      if (v36)
      {
        v34 = v34;
      }

      else
      {
        v34 = 0;
      }

      v39 = v33 & 0x1FFFFFFFFLL | ((v34 >> 1) << 33);
      *&v149[4] = v39;
      *v149 = 1;
      v40 = *v149;
      *v149 = v35;
      *&v149[8] = HIDWORD(v32);
      *&v149[12] = v40;
      *&v149[20] = v34;
      *&v149[24] = v32;
      *&v150 = v39;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v40;
      v140 = v34;
      if (v36)
      {
        v41 = v38;
      }

      else
      {
        v41 = 1;
      }

      if (v41)
      {
        v42 = 0;
      }

      else
      {
        v42 = v35;
      }

      v137 = v42;
      if (v38)
      {
        v43 = 0;
      }

      else
      {
        v43 = v36;
      }

      v138 = v43;
      if (((2 * v34) & (2 * v34 - 1)) != 0)
      {
        v44 = 2;
      }

      else
      {
        v44 = 2 * v34;
      }

      sub_23F26D0A4(&v152, &v137, &v139, 1, 0, 0, v44);
      *v142 = *v149;
      v141 = &unk_285188740;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 8:
      v139 = &unk_285189A28;
      sub_23F272174(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2851887C0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 9:
      *v149 = &unk_285189BA8;
      sub_23F24A678(&v135, &v141);
      operator new();
    case 10:
      v139 = &unk_285189D28;
      sub_23F272344(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2851888C0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 11:
      v136 = &unk_285189EA8;
      if (HIDWORD(a3))
      {
        v93 = a3 == 0;
      }

      else
      {
        v93 = 1;
      }

      if (v93)
      {
        v94 = 0;
      }

      else
      {
        v94 = a3;
      }

      *&v149[4] = v94;
      *v149 = 3;
      if (v94)
      {
        v95 = 3;
      }

      else
      {
        v95 = 0;
      }

      LODWORD(v96) = v95 * v94;
      *v149 = 3;
      *&v149[4] = v94;
      v97 = *v149;
      v98 = HIDWORD(v94);
      if (HIDWORD(*v149))
      {
        v99 = *v149 == 0;
      }

      else
      {
        v99 = 1;
      }

      v100 = v99;
      if (v98)
      {
        v96 = v96;
      }

      else
      {
        v96 = 0;
      }

      v101 = v95 | (v96 << 32);
      *&v149[4] = v101;
      *v149 = 1;
      v102 = *v149;
      *v149 = v97;
      *&v149[8] = HIDWORD(v94);
      *&v149[12] = v102;
      *&v149[20] = v96;
      *&v149[24] = v94;
      *&v150 = v101;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v102;
      v140 = v96;
      if (v98)
      {
        v103 = v100;
      }

      else
      {
        v103 = 1;
      }

      if (v103)
      {
        v104 = 0;
      }

      else
      {
        v104 = v97;
      }

      v137 = v104;
      if (v100)
      {
        v105 = 0;
      }

      else
      {
        v105 = v98;
      }

      v138 = v105;
      if (((2 * v96) & (2 * v96 - 1)) != 0)
      {
        v106 = 2;
      }

      else
      {
        v106 = 2 * v96;
      }

      sub_23F26D0A4(&v152, &v137, &v139, 1, 0, 0, v106);
      *v142 = *v149;
      v141 = &unk_285188940;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 12:
      v139 = &unk_28518A028;
      sub_23F272508(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2851889C0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 13:
      *v149 = &unk_28518A1A8;
      sub_23F24A9E4(&v135, &v141);
      operator new();
    case 14:
      v139 = &unk_28518A328;
      sub_23F2726CC(v149, &v135);
      *v142 = *v149;
      v141 = &unk_285188AC0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 15:
      v136 = &unk_28518A4A8;
      if (HIDWORD(a3))
      {
        v107 = a3 == 0;
      }

      else
      {
        v107 = 1;
      }

      if (v107)
      {
        v108 = 0;
      }

      else
      {
        v108 = a3;
      }

      v109 = 4 * (v108 != 0);
      LODWORD(v110) = v109 * v108;
      *v149 = 4;
      *&v149[4] = v108;
      v111 = *v149;
      v112 = HIDWORD(v108);
      if (HIDWORD(*v149))
      {
        v113 = *v149 == 0;
      }

      else
      {
        v113 = 1;
      }

      v114 = v113;
      if (v112)
      {
        v110 = v110;
      }

      else
      {
        v110 = 0;
      }

      v115 = v109 & 0x3FFFFFFFFLL | ((v110 >> 2) << 34);
      *&v149[4] = v115;
      *v149 = 1;
      v116 = *v149;
      *v149 = v111;
      *&v149[8] = HIDWORD(v108);
      *&v149[12] = v116;
      *&v149[20] = v110;
      *&v149[24] = v108;
      *&v150 = v115;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v116;
      v140 = v110;
      if (v112)
      {
        v117 = v114;
      }

      else
      {
        v117 = 1;
      }

      if (v117)
      {
        v118 = 0;
      }

      else
      {
        v118 = v111;
      }

      v137 = v118;
      if (v114)
      {
        v119 = 0;
      }

      else
      {
        v119 = v112;
      }

      v138 = v119;
      if (((2 * v110) & (2 * v110 - 1)) != 0)
      {
        v120 = 2;
      }

      else
      {
        v120 = 2 * v110;
      }

      sub_23F26D0A4(&v152, &v137, &v139, 1, 0, 0, v120);
      *v142 = *v149;
      v141 = &unk_285188B40;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 16:
      v139 = &unk_28518A628;
      sub_23F272898(v149, &v135);
      *v142 = *v149;
      v141 = &unk_285188BC0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 17:
      *v149 = &unk_28518A7A8;
      sub_23F24AD60(&v135, &v141);
      operator new();
    case 18:
      v139 = &unk_28518A928;
      sub_23F272344(v149, &v135);
      *v142 = *v149;
      v141 = &unk_285188CC0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 19:
      v136 = &unk_28518AAA8;
      if (HIDWORD(a3))
      {
        v17 = a3 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = a3;
      }

      *&v149[4] = v18;
      *v149 = 3;
      if (v18)
      {
        v19 = 3;
      }

      else
      {
        v19 = 0;
      }

      LODWORD(v20) = v19 * v18;
      *v149 = 3;
      *&v149[4] = v18;
      v21 = *v149;
      v22 = HIDWORD(v18);
      if (HIDWORD(*v149))
      {
        v23 = *v149 == 0;
      }

      else
      {
        v23 = 1;
      }

      v24 = v23;
      if (v22)
      {
        v20 = v20;
      }

      else
      {
        v20 = 0;
      }

      v25 = v19 | (v20 << 32);
      *&v149[4] = v25;
      *v149 = 1;
      v26 = *v149;
      *v149 = v21;
      *&v149[8] = HIDWORD(v18);
      *&v149[12] = v26;
      *&v149[20] = v20;
      *&v149[24] = v18;
      *&v150 = v25;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v26;
      v140 = v20;
      if (v22)
      {
        v27 = v24;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = v21;
      }

      v137 = v28;
      if (v24)
      {
        v29 = 0;
      }

      else
      {
        v29 = v22;
      }

      v138 = v29;
      if (((2 * v20) & (2 * v20 - 1)) != 0)
      {
        v30 = 2;
      }

      else
      {
        v30 = 2 * v20;
      }

      sub_23F26D0A4(&v152, &v137, &v139, 1, 0, 0, v30);
      *v142 = *v149;
      v141 = &unk_285188D40;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 20:
      v139 = &unk_28518AC28;
      sub_23F272508(v149, &v135);
      *v142 = *v149;
      v141 = &unk_285188DC0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 21:
      *v149 = &unk_28517D860;
      sub_23F24B0CC(&v135, &v141);
      operator new();
    case 22:
      v139 = &unk_285185CE8;
      sub_23F272344(v149, &v135);
      *v142 = *v149;
      v141 = &unk_285185018;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 23:
      v136 = &unk_285185E68;
      if (HIDWORD(a3))
      {
        v121 = a3 == 0;
      }

      else
      {
        v121 = 1;
      }

      if (v121)
      {
        v122 = 0;
      }

      else
      {
        v122 = a3;
      }

      *&v149[4] = v122;
      *v149 = 3;
      if (v122)
      {
        v123 = 3;
      }

      else
      {
        v123 = 0;
      }

      LODWORD(v124) = v123 * v122;
      *v149 = 3;
      *&v149[4] = v122;
      v125 = *v149;
      v126 = HIDWORD(v122);
      if (HIDWORD(*v149))
      {
        v127 = *v149 == 0;
      }

      else
      {
        v127 = 1;
      }

      v128 = v127;
      if (v126)
      {
        v124 = v124;
      }

      else
      {
        v124 = 0;
      }

      v129 = v123 | (v124 << 32);
      *&v149[4] = v129;
      *v149 = 1;
      v130 = *v149;
      *v149 = v125;
      *&v149[8] = HIDWORD(v122);
      *&v149[12] = v130;
      *&v149[20] = v124;
      *&v149[24] = v122;
      *&v150 = v129;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v130;
      v140 = v124;
      if (v126)
      {
        v131 = v128;
      }

      else
      {
        v131 = 1;
      }

      if (v131)
      {
        v132 = 0;
      }

      else
      {
        v132 = v125;
      }

      v137 = v132;
      if (v128)
      {
        v133 = 0;
      }

      else
      {
        v133 = v126;
      }

      v138 = v133;
      if (((2 * v124) & (2 * v124 - 1)) != 0)
      {
        v134 = 2;
      }

      else
      {
        v134 = 2 * v124;
      }

      sub_23F26D0A4(&v152, &v137, &v139, 1, 0, 0, v134);
      *v142 = *v149;
      v141 = &unk_285185098;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 24:
      v139 = &unk_285185FE8;
      sub_23F272508(v149, &v135);
      *v142 = *v149;
      v141 = &unk_285185118;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 25:
      *v149 = &unk_285186168;
      sub_23F24B438(&v135, &v141);
      operator new();
    case 26:
      v139 = &unk_28518ADA8;
      sub_23F2726CC(v149, &v135);
      *v142 = *v149;
      v141 = &unk_285188E40;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 27:
      v136 = &unk_28518AF28;
      if (HIDWORD(a3))
      {
        v3 = a3 == 0;
      }

      else
      {
        v3 = 1;
      }

      if (v3)
      {
        v4 = 0;
      }

      else
      {
        v4 = a3;
      }

      v5 = 4 * (v4 != 0);
      LODWORD(v6) = v5 * v4;
      *v149 = 4;
      *&v149[4] = v4;
      v7 = *v149;
      v8 = HIDWORD(v4);
      if (HIDWORD(*v149))
      {
        v9 = *v149 == 0;
      }

      else
      {
        v9 = 1;
      }

      v10 = v9;
      if (v8)
      {
        v6 = v6;
      }

      else
      {
        v6 = 0;
      }

      v11 = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
      *&v149[4] = v11;
      *v149 = 1;
      v12 = *v149;
      *v149 = v7;
      *&v149[8] = HIDWORD(v4);
      *&v149[12] = v12;
      *&v149[20] = v6;
      *&v149[24] = v4;
      *&v150 = v11;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v12;
      v140 = v6;
      if (v8)
      {
        v13 = v10;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = v7;
      }

      v137 = v14;
      if (v10)
      {
        v15 = 0;
      }

      else
      {
        v15 = v8;
      }

      v138 = v15;
      if (((2 * v6) & (2 * v6 - 1)) != 0)
      {
        v16 = 2;
      }

      else
      {
        v16 = 2 * v6;
      }

      sub_23F26D0A4(&v152, &v137, &v139, 1, 0, 0, v16);
      *v142 = *v149;
      v141 = &unk_285188EC0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 28:
      v139 = &unk_28518B0A8;
      sub_23F272898(v149, &v135);
      *v142 = *v149;
      v141 = &unk_285188F40;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 29:
      *v149 = &unk_2851862E8;
      sub_23F24B7B4(&v135, &v141);
      operator new();
    case 30:
      v139 = &unk_285186468;
      sub_23F2726CC(v149, &v135);
      *v142 = *v149;
      v141 = &unk_285185298;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 31:
      v136 = &unk_2851865E8;
      if (HIDWORD(a3))
      {
        v59 = a3 == 0;
      }

      else
      {
        v59 = 1;
      }

      if (v59)
      {
        v60 = 0;
      }

      else
      {
        v60 = a3;
      }

      v61 = 4 * (v60 != 0);
      LODWORD(v62) = v61 * v60;
      *v149 = 4;
      *&v149[4] = v60;
      v63 = *v149;
      v64 = HIDWORD(v60);
      if (HIDWORD(*v149))
      {
        v65 = *v149 == 0;
      }

      else
      {
        v65 = 1;
      }

      v66 = v65;
      if (v64)
      {
        v62 = v62;
      }

      else
      {
        v62 = 0;
      }

      v67 = v61 & 0x3FFFFFFFFLL | ((v62 >> 2) << 34);
      *&v149[4] = v67;
      *v149 = 1;
      v68 = *v149;
      *v149 = v63;
      *&v149[8] = HIDWORD(v60);
      *&v149[12] = v68;
      *&v149[20] = v62;
      *&v149[24] = v60;
      *&v150 = v67;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v68;
      v140 = v62;
      if (v64)
      {
        v69 = v66;
      }

      else
      {
        v69 = 1;
      }

      if (v69)
      {
        v70 = 0;
      }

      else
      {
        v70 = v63;
      }

      v137 = v70;
      if (v66)
      {
        v71 = 0;
      }

      else
      {
        v71 = v64;
      }

      v138 = v71;
      if (((2 * v62) & (2 * v62 - 1)) != 0)
      {
        v72 = 2;
      }

      else
      {
        v72 = 2 * v62;
      }

      sub_23F26D0A4(&v152, &v137, &v139, 1, 0, 0, v72);
      *v142 = *v149;
      v141 = &unk_285185318;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 32:
      v139 = &unk_285186768;
      sub_23F272898(v149, &v135);
      *v142 = *v149;
      v141 = &unk_285185398;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 33:
      *v149 = &unk_2851868E8;
      sub_23F24BB30(&v135, &v141);
      operator new();
    case 34:
      v139 = &unk_28518B228;
      sub_23F2726CC(v149, &v135);
      *v142 = *v149;
      v141 = &unk_285188FC0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 35:
      v136 = &unk_28518B3A8;
      if (HIDWORD(a3))
      {
        v73 = a3 == 0;
      }

      else
      {
        v73 = 1;
      }

      if (v73)
      {
        v74 = 0;
      }

      else
      {
        v74 = a3;
      }

      v75 = 4 * (v74 != 0);
      LODWORD(v76) = v75 * v74;
      *v149 = 4;
      *&v149[4] = v74;
      v77 = *v149;
      v78 = HIDWORD(v74);
      if (HIDWORD(*v149))
      {
        v79 = *v149 == 0;
      }

      else
      {
        v79 = 1;
      }

      v80 = v79;
      if (v78)
      {
        v76 = v76;
      }

      else
      {
        v76 = 0;
      }

      v81 = v75 & 0x3FFFFFFFFLL | ((v76 >> 2) << 34);
      *&v149[4] = v81;
      *v149 = 1;
      v82 = *v149;
      *v149 = v77;
      *&v149[8] = HIDWORD(v74);
      *&v149[12] = v82;
      *&v149[20] = v76;
      *&v149[24] = v74;
      *&v150 = v81;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v82;
      v140 = v76;
      if (v78)
      {
        v83 = v80;
      }

      else
      {
        v83 = 1;
      }

      if (v83)
      {
        v84 = 0;
      }

      else
      {
        v84 = v77;
      }

      v137 = v84;
      if (v80)
      {
        v85 = 0;
      }

      else
      {
        v85 = v78;
      }

      v138 = v85;
      if (((2 * v76) & (2 * v76 - 1)) != 0)
      {
        v86 = 2;
      }

      else
      {
        v86 = 2 * v76;
      }

      sub_23F26D0A4(&v152, &v137, &v139, 1, 0, 0, v86);
      *v142 = *v149;
      v141 = &unk_285189040;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 36:
      v139 = &unk_28518B528;
      sub_23F272898(v149, &v135);
      *v142 = *v149;
      v141 = &unk_2851890C0;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 37:
      *v149 = &unk_285186A68;
      sub_23F24BEAC(&v135, &v141);
      operator new();
    case 38:
      v139 = &unk_285186BE8;
      sub_23F2726CC(v149, &v135);
      *v142 = *v149;
      v141 = &unk_285185518;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 39:
      v136 = &unk_285186D68;
      if (HIDWORD(a3))
      {
        v45 = a3 == 0;
      }

      else
      {
        v45 = 1;
      }

      if (v45)
      {
        v46 = 0;
      }

      else
      {
        v46 = a3;
      }

      v47 = 4 * (v46 != 0);
      LODWORD(v48) = v47 * v46;
      *v149 = 4;
      *&v149[4] = v46;
      v49 = *v149;
      v50 = HIDWORD(v46);
      if (HIDWORD(*v149))
      {
        v51 = *v149 == 0;
      }

      else
      {
        v51 = 1;
      }

      v52 = v51;
      if (v50)
      {
        v48 = v48;
      }

      else
      {
        v48 = 0;
      }

      v53 = v47 & 0x3FFFFFFFFLL | ((v48 >> 2) << 34);
      *&v149[4] = v53;
      *v149 = 1;
      v54 = *v149;
      *v149 = v49;
      *&v149[8] = HIDWORD(v46);
      *&v149[12] = v54;
      *&v149[20] = v48;
      *&v149[24] = v46;
      *&v150 = v53;
      BYTE8(v150) = 0;
      BYTE4(v151) = 0;
      v139 = v54;
      v140 = v48;
      if (v50)
      {
        v55 = v52;
      }

      else
      {
        v55 = 1;
      }

      if (v55)
      {
        v56 = 0;
      }

      else
      {
        v56 = v49;
      }

      v137 = v56;
      if (v52)
      {
        v57 = 0;
      }

      else
      {
        v57 = v50;
      }

      v138 = v57;
      if (((2 * v48) & (2 * v48 - 1)) != 0)
      {
        v58 = 2;
      }

      else
      {
        v58 = 2 * v48;
      }

      sub_23F26D0A4(&v152, &v137, &v139, 1, 0, 0, v58);
      *v142 = *v149;
      v141 = &unk_285185598;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    case 40:
      v139 = &unk_285186EE8;
      sub_23F272898(v149, &v135);
      *v142 = *v149;
      v141 = &unk_285185618;
      *&v142[16] = *&v149[16];
      v143 = v150;
      v144 = v151;
      v145 = v152;
      v146 = v153;
      v148 = v155;
      v147 = v154;
      operator new();
    default:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
  }
}

void sub_23F266F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  if (a24)
  {
    free(a24);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F267290(int32x2_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  v541 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 1:
      v529 = &unk_2851792E0;
      LOBYTE(v528) = 0;
      if (a4[1])
      {
        v4 = *a4 == 0;
      }

      else
      {
        v4 = 1;
      }

      v5 = *a4;
      if (v4)
      {
        v5 = 0;
      }

      v6 = 0x100000000;
      if (v5 > 0x100000000)
      {
        v6 = v5;
      }

      *v534 = v5;
      *&v534[8] = (v5 != 0) | (v6 << 32);
      v534[16] = 0;
      LOBYTE(v536) = 0;
      v532 = *&v534[8];
      if (v5)
      {
        v7 = HIDWORD(v5) == 0;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        v5 = 0;
      }

      v530 = v5;
      if ((v6 & (v6 - 1)) != 0)
      {
        v8 = 1;
      }

      else
      {
        v8 = v6;
      }

      sub_23F264670(&v537, &v530, &v532, 1, &v528, 1, v8);
      operator new();
    case 2:
      v529 = &unk_28517DF28;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v383 = *a4 == 0;
      }

      else
      {
        v383 = 1;
      }

      v384 = *a4;
      if (v383)
      {
        v384 = 0;
      }

      v385 = 0;
      if (v384 > 0x100000000)
      {
        v385 = v384;
      }

      *v534 = v384;
      *&v534[8] = (v384 != 0) | (v385 << 32);
      v534[16] = 0;
      LOBYTE(v536) = 0;
      v532 = *&v534[8];
      if (v384)
      {
        v386 = HIDWORD(v384) == 0;
      }

      else
      {
        v386 = 1;
      }

      if (v386)
      {
        v384 = 0;
      }

      v530 = v384;
      if (((2 * v385) & (2 * v385 - 1)) != 0)
      {
        v387 = 2;
      }

      else
      {
        v387 = 2 * v385;
      }

      sub_23F26B680(&v537, &v530, &v532, 1, &v528, 1, v387);
      operator new();
    case 3:
      v529 = &unk_2851859E8;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v378 = *a4 == 0;
      }

      else
      {
        v378 = 1;
      }

      v379 = *a4;
      if (v378)
      {
        v379 = 0;
      }

      v380 = 0;
      if (v379 > 0x100000000)
      {
        v380 = v379;
      }

      *v534 = v379;
      *&v534[8] = (v379 != 0) | (v380 << 32);
      v534[16] = 0;
      LOBYTE(v536) = 0;
      v532 = *&v534[8];
      if (v379)
      {
        v381 = HIDWORD(v379) == 0;
      }

      else
      {
        v381 = 1;
      }

      if (v381)
      {
        v379 = 0;
      }

      v530 = v379;
      if (((2 * v380) & (2 * v380 - 1)) != 0)
      {
        v382 = 2;
      }

      else
      {
        v382 = 2 * v380;
      }

      sub_23F26B8E4(&v537, &v530, &v532, 1, &v528, 1, v382);
      operator new();
    case 4:
      v529 = &unk_285185B68;
      v528 = 0;
      if (a4[1])
      {
        v233 = *a4 == 0;
      }

      else
      {
        v233 = 1;
      }

      v234 = *a4;
      if (v233)
      {
        v234 = 0;
      }

      v235 = 0;
      if (v234 > 0x100000000)
      {
        v235 = v234;
      }

      *v534 = v234;
      *&v534[8] = (v234 != 0) | (v235 << 32);
      v534[16] = 0;
      LOBYTE(v536) = 0;
      v532 = *&v534[8];
      if (v234)
      {
        v236 = HIDWORD(v234) == 0;
      }

      else
      {
        v236 = 1;
      }

      if (v236)
      {
        v234 = 0;
      }

      v530 = v234;
      if (((4 * v235) & (4 * v235 - 1)) != 0)
      {
        v237 = 4;
      }

      else
      {
        v237 = 4 * v235;
      }

      sub_23F26BDA4(&v537, &v530, &v532, 1, &v528, 1, v237);
      operator new();
    case 5:
      v529 = &unk_2851895A8;
      LOBYTE(v528) = 0;
      if (a4[1])
      {
        v336 = *a4 == 0;
      }

      else
      {
        v336 = 1;
      }

      v337 = *a4;
      if (v336)
      {
        v337 = 0;
      }

      v338 = 2 * (v337 != 0);
      LODWORD(v339) = v338 * v337;
      *v534 = 2;
      *&v534[4] = v337;
      v340 = *v534;
      v341 = HIDWORD(v337);
      if (HIDWORD(*v534))
      {
        v342 = *v534 == 0;
      }

      else
      {
        v342 = 1;
      }

      v343 = v342;
      if (v341)
      {
        v339 = v339;
      }

      else
      {
        v339 = 0;
      }

      v344 = v338 & 0x1FFFFFFFFLL | ((v339 >> 1) << 33);
      *&v534[4] = v344;
      *v534 = 1;
      v345 = *v534;
      *v534 = v340;
      *&v534[8] = HIDWORD(v337);
      *&v534[12] = v345;
      v535 = v339;
      v536 = v337;
      v537 = v344;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v345;
      v533 = v339;
      if (v341)
      {
        v346 = v343;
      }

      else
      {
        v346 = 1;
      }

      if (v346)
      {
        v347 = 0;
      }

      else
      {
        v347 = v340;
      }

      v530 = v347;
      if (v343)
      {
        v348 = 0;
      }

      else
      {
        v348 = v341;
      }

      v531 = v348;
      if ((v339 & (v339 - 1)) != 0)
      {
        v349 = 1;
      }

      else
      {
        v349 = v339;
      }

      sub_23F26C008(&v540, &v530, &v532, 1, &v528, 1, v349);
      operator new();
    case 6:
      v529 = &unk_285189728;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v219 = *a4 == 0;
      }

      else
      {
        v219 = 1;
      }

      if (v219)
      {
        v220 = 0;
      }

      else
      {
        v220 = *a4;
      }

      v221 = 2 * (v220 != 0);
      LODWORD(v222) = v221 * v220;
      *v534 = 2;
      *&v534[4] = v220;
      v223 = *v534;
      v224 = HIDWORD(v220);
      if (HIDWORD(*v534))
      {
        v225 = *v534 == 0;
      }

      else
      {
        v225 = 1;
      }

      v226 = v225;
      if (v224)
      {
        v222 = v222;
      }

      else
      {
        v222 = 0;
      }

      v227 = v221 & 0x1FFFFFFFFLL | ((v222 >> 1) << 33);
      *&v534[4] = v227;
      *v534 = 1;
      v228 = *v534;
      *v534 = v223;
      *&v534[8] = HIDWORD(v220);
      *&v534[12] = v228;
      v535 = v222;
      v536 = v220;
      v537 = v227;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v228;
      v533 = v222;
      if (v224)
      {
        v229 = v226;
      }

      else
      {
        v229 = 1;
      }

      if (v229)
      {
        v230 = 0;
      }

      else
      {
        v230 = v223;
      }

      v530 = v230;
      if (v226)
      {
        v231 = 0;
      }

      else
      {
        v231 = v224;
      }

      v531 = v231;
      if (((2 * v222) & (2 * v222 - 1)) != 0)
      {
        v232 = 2;
      }

      else
      {
        v232 = 2 * v222;
      }

      sub_23F26C578(&v540, &v530, &v532, 1, &v528, 1, v232);
      operator new();
    case 7:
      v529 = &unk_2851898A8;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v149 = *a4 == 0;
      }

      else
      {
        v149 = 1;
      }

      if (v149)
      {
        v150 = 0;
      }

      else
      {
        v150 = *a4;
      }

      v151 = 2 * (v150 != 0);
      LODWORD(v152) = v151 * v150;
      *v534 = 2;
      *&v534[4] = v150;
      v153 = *v534;
      v154 = HIDWORD(v150);
      if (HIDWORD(*v534))
      {
        v155 = *v534 == 0;
      }

      else
      {
        v155 = 1;
      }

      v156 = v155;
      if (v154)
      {
        v152 = v152;
      }

      else
      {
        v152 = 0;
      }

      v157 = v151 & 0x1FFFFFFFFLL | ((v152 >> 1) << 33);
      *&v534[4] = v157;
      *v534 = 1;
      v158 = *v534;
      *v534 = v153;
      *&v534[8] = HIDWORD(v150);
      *&v534[12] = v158;
      v535 = v152;
      v536 = v150;
      v537 = v157;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v158;
      v533 = v152;
      if (v154)
      {
        v159 = v156;
      }

      else
      {
        v159 = 1;
      }

      if (v159)
      {
        v160 = 0;
      }

      else
      {
        v160 = v153;
      }

      v530 = v160;
      if (v156)
      {
        v161 = 0;
      }

      else
      {
        v161 = v154;
      }

      v531 = v161;
      if (((2 * v152) & (2 * v152 - 1)) != 0)
      {
        v162 = 2;
      }

      else
      {
        v162 = 2 * v152;
      }

      sub_23F26D0A4(&v540, &v530, &v532, 1, &v528, 1, v162);
      operator new();
    case 8:
      v529 = &unk_285189A28;
      v528 = 0;
      if (a4[1])
      {
        v364 = *a4 == 0;
      }

      else
      {
        v364 = 1;
      }

      v365 = *a4;
      if (v364)
      {
        v365 = 0;
      }

      v366 = 2 * (v365 != 0);
      LODWORD(v367) = v366 * v365;
      *v534 = 2;
      *&v534[4] = v365;
      v368 = *v534;
      v369 = HIDWORD(v365);
      if (HIDWORD(*v534))
      {
        v370 = *v534 == 0;
      }

      else
      {
        v370 = 1;
      }

      v371 = v370;
      if (v369)
      {
        v367 = v367;
      }

      else
      {
        v367 = 0;
      }

      v372 = v366 & 0x1FFFFFFFFLL | ((v367 >> 1) << 33);
      *&v534[4] = v372;
      *v534 = 1;
      v373 = *v534;
      *v534 = v368;
      *&v534[8] = HIDWORD(v365);
      *&v534[12] = v373;
      v535 = v367;
      v536 = v365;
      v537 = v372;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v373;
      v533 = v367;
      if (v369)
      {
        v374 = v371;
      }

      else
      {
        v374 = 1;
      }

      if (v374)
      {
        v375 = 0;
      }

      else
      {
        v375 = v368;
      }

      v530 = v375;
      if (v371)
      {
        v376 = 0;
      }

      else
      {
        v376 = v369;
      }

      v531 = v376;
      if (((4 * v367) & (4 * v367 - 1)) != 0)
      {
        v377 = 4;
      }

      else
      {
        v377 = 4 * v367;
      }

      sub_23F26D800(&v540, &v530, &v532, 1, &v528, 1, v377, a1);
      operator new();
    case 9:
      v529 = &unk_285189BA8;
      LOBYTE(v528) = 0;
      if (a4[1])
      {
        v322 = *a4 == 0;
      }

      else
      {
        v322 = 1;
      }

      v323 = *a4;
      if (v322)
      {
        v323 = 0;
      }

      *&v534[4] = v323;
      *v534 = 3;
      if (v323)
      {
        v324 = 3;
      }

      else
      {
        v324 = 0;
      }

      LODWORD(v325) = v324 * v323;
      *v534 = 3;
      *&v534[4] = v323;
      v326 = *v534;
      v327 = HIDWORD(v323);
      if (HIDWORD(*v534))
      {
        v328 = *v534 == 0;
      }

      else
      {
        v328 = 1;
      }

      v329 = v328;
      if (v327)
      {
        v325 = v325;
      }

      else
      {
        v325 = 0;
      }

      v330 = v324 | (v325 << 32);
      *&v534[4] = v330;
      *v534 = 1;
      v331 = *v534;
      *v534 = v326;
      *&v534[8] = HIDWORD(v323);
      *&v534[12] = v331;
      v535 = v325;
      v536 = v323;
      v537 = v330;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v331;
      v533 = v325;
      if (v327)
      {
        v332 = v329;
      }

      else
      {
        v332 = 1;
      }

      if (v332)
      {
        v333 = 0;
      }

      else
      {
        v333 = v326;
      }

      v530 = v333;
      if (v329)
      {
        v334 = 0;
      }

      else
      {
        v334 = v327;
      }

      v531 = v334;
      if ((v325 & (v325 - 1)) != 0)
      {
        v335 = 1;
      }

      else
      {
        v335 = v325;
      }

      sub_23F26C008(&v540, &v530, &v532, 1, &v528, 1, v335);
      operator new();
    case 10:
      v529 = &unk_285189D28;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v416 = *a4 == 0;
      }

      else
      {
        v416 = 1;
      }

      v417 = *a4;
      if (v416)
      {
        v417 = 0;
      }

      *&v534[4] = v417;
      *v534 = 3;
      if (v417)
      {
        v418 = 3;
      }

      else
      {
        v418 = 0;
      }

      LODWORD(v419) = v418 * v417;
      *v534 = 3;
      *&v534[4] = v417;
      v420 = *v534;
      v421 = HIDWORD(v417);
      if (HIDWORD(*v534))
      {
        v422 = *v534 == 0;
      }

      else
      {
        v422 = 1;
      }

      v423 = v422;
      if (v421)
      {
        v419 = v419;
      }

      else
      {
        v419 = 0;
      }

      v424 = v418 | (v419 << 32);
      *&v534[4] = v424;
      *v534 = 1;
      v425 = *v534;
      *v534 = v420;
      *&v534[8] = HIDWORD(v417);
      *&v534[12] = v425;
      v535 = v419;
      v536 = v417;
      v537 = v424;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v425;
      v533 = v419;
      if (v421)
      {
        v426 = v423;
      }

      else
      {
        v426 = 1;
      }

      if (v426)
      {
        v427 = 0;
      }

      else
      {
        v427 = v420;
      }

      v530 = v427;
      if (v423)
      {
        v428 = 0;
      }

      else
      {
        v428 = v421;
      }

      v531 = v428;
      if (((2 * v419) & (2 * v419 - 1)) != 0)
      {
        v429 = 2;
      }

      else
      {
        v429 = 2 * v419;
      }

      sub_23F26C578(&v540, &v530, &v532, 1, &v528, 1, v429);
      operator new();
    case 11:
      v529 = &unk_285189EA8;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v402 = *a4 == 0;
      }

      else
      {
        v402 = 1;
      }

      v403 = *a4;
      if (v402)
      {
        v403 = 0;
      }

      *&v534[4] = v403;
      *v534 = 3;
      if (v403)
      {
        v404 = 3;
      }

      else
      {
        v404 = 0;
      }

      LODWORD(v405) = v404 * v403;
      *v534 = 3;
      *&v534[4] = v403;
      v406 = *v534;
      v407 = HIDWORD(v403);
      if (HIDWORD(*v534))
      {
        v408 = *v534 == 0;
      }

      else
      {
        v408 = 1;
      }

      v409 = v408;
      if (v407)
      {
        v405 = v405;
      }

      else
      {
        v405 = 0;
      }

      v410 = v404 | (v405 << 32);
      *&v534[4] = v410;
      *v534 = 1;
      v411 = *v534;
      *v534 = v406;
      *&v534[8] = HIDWORD(v403);
      *&v534[12] = v411;
      v535 = v405;
      v536 = v403;
      v537 = v410;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v411;
      v533 = v405;
      if (v407)
      {
        v412 = v409;
      }

      else
      {
        v412 = 1;
      }

      if (v412)
      {
        v413 = 0;
      }

      else
      {
        v413 = v406;
      }

      v530 = v413;
      if (v409)
      {
        v414 = 0;
      }

      else
      {
        v414 = v407;
      }

      v531 = v414;
      if (((2 * v405) & (2 * v405 - 1)) != 0)
      {
        v415 = 2;
      }

      else
      {
        v415 = 2 * v405;
      }

      sub_23F26D0A4(&v540, &v530, &v532, 1, &v528, 1, v415);
      operator new();
    case 12:
      v529 = &unk_28518A028;
      v528 = 0;
      if (a4[1])
      {
        v51 = *a4 == 0;
      }

      else
      {
        v51 = 1;
      }

      v52 = *a4;
      if (v51)
      {
        v52 = 0;
      }

      *&v534[4] = v52;
      *v534 = 3;
      if (v52)
      {
        v53 = 3;
      }

      else
      {
        v53 = 0;
      }

      LODWORD(v54) = v53 * v52;
      *v534 = 3;
      *&v534[4] = v52;
      v55 = *v534;
      v56 = HIDWORD(v52);
      if (HIDWORD(*v534))
      {
        v57 = *v534 == 0;
      }

      else
      {
        v57 = 1;
      }

      v58 = v57;
      if (v56)
      {
        v54 = v54;
      }

      else
      {
        v54 = 0;
      }

      v59 = v53 | (v54 << 32);
      *&v534[4] = v59;
      *v534 = 1;
      v60 = *v534;
      *v534 = v55;
      *&v534[8] = HIDWORD(v52);
      *&v534[12] = v60;
      v535 = v54;
      v536 = v52;
      v537 = v59;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v60;
      v533 = v54;
      if (v56)
      {
        v61 = v58;
      }

      else
      {
        v61 = 1;
      }

      if (v61)
      {
        v62 = 0;
      }

      else
      {
        v62 = v55;
      }

      v530 = v62;
      if (v58)
      {
        v63 = 0;
      }

      else
      {
        v63 = v56;
      }

      v531 = v63;
      if (((4 * v54) & (4 * v54 - 1)) != 0)
      {
        v64 = 4;
      }

      else
      {
        v64 = 4 * v54;
      }

      sub_23F26D800(&v540, &v530, &v532, 1, &v528, 1, v64, a1);
      operator new();
    case 13:
      v529 = &unk_28518A1A8;
      LOBYTE(v528) = 0;
      if (a4[1])
      {
        v107 = *a4 == 0;
      }

      else
      {
        v107 = 1;
      }

      v108 = *a4;
      if (v107)
      {
        v108 = 0;
      }

      v109 = 4 * (v108 != 0);
      LODWORD(v110) = v109 * v108;
      *v534 = 4;
      *&v534[4] = v108;
      v111 = *v534;
      v112 = HIDWORD(v108);
      if (HIDWORD(*v534))
      {
        v113 = *v534 == 0;
      }

      else
      {
        v113 = 1;
      }

      v114 = v113;
      if (v112)
      {
        v110 = v110;
      }

      else
      {
        v110 = 0;
      }

      v115 = v109 & 0x3FFFFFFFFLL | ((v110 >> 2) << 34);
      *&v534[4] = v115;
      *v534 = 1;
      v116 = *v534;
      *v534 = v111;
      *&v534[8] = HIDWORD(v108);
      *&v534[12] = v116;
      v535 = v110;
      v536 = v108;
      v537 = v115;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v116;
      v533 = v110;
      if (v112)
      {
        v117 = v114;
      }

      else
      {
        v117 = 1;
      }

      if (v117)
      {
        v118 = 0;
      }

      else
      {
        v118 = v111;
      }

      v530 = v118;
      if (v114)
      {
        v119 = 0;
      }

      else
      {
        v119 = v112;
      }

      v531 = v119;
      if ((v110 & (v110 - 1)) != 0)
      {
        v120 = 1;
      }

      else
      {
        v120 = v110;
      }

      sub_23F26C008(&v540, &v530, &v532, 1, &v528, 1, v120);
      operator new();
    case 14:
      v529 = &unk_28518A328;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v93 = *a4 == 0;
      }

      else
      {
        v93 = 1;
      }

      v94 = *a4;
      if (v93)
      {
        v94 = 0;
      }

      v95 = 4 * (v94 != 0);
      LODWORD(v96) = v95 * v94;
      *v534 = 4;
      *&v534[4] = v94;
      v97 = *v534;
      v98 = HIDWORD(v94);
      if (HIDWORD(*v534))
      {
        v99 = *v534 == 0;
      }

      else
      {
        v99 = 1;
      }

      v100 = v99;
      if (v98)
      {
        v96 = v96;
      }

      else
      {
        v96 = 0;
      }

      v101 = v95 & 0x3FFFFFFFFLL | ((v96 >> 2) << 34);
      *&v534[4] = v101;
      *v534 = 1;
      v102 = *v534;
      *v534 = v97;
      *&v534[8] = HIDWORD(v94);
      *&v534[12] = v102;
      v535 = v96;
      v536 = v94;
      v537 = v101;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v102;
      v533 = v96;
      if (v98)
      {
        v103 = v100;
      }

      else
      {
        v103 = 1;
      }

      if (v103)
      {
        v104 = 0;
      }

      else
      {
        v104 = v97;
      }

      v530 = v104;
      if (v100)
      {
        v105 = 0;
      }

      else
      {
        v105 = v98;
      }

      v531 = v105;
      if (((2 * v96) & (2 * v96 - 1)) != 0)
      {
        v106 = 2;
      }

      else
      {
        v106 = 2 * v96;
      }

      sub_23F26C578(&v540, &v530, &v532, 1, &v528, 1, v106);
      operator new();
    case 15:
      v529 = &unk_28518A4A8;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v472 = *a4 == 0;
      }

      else
      {
        v472 = 1;
      }

      v473 = *a4;
      if (v472)
      {
        v473 = 0;
      }

      v474 = 4 * (v473 != 0);
      LODWORD(v475) = v474 * v473;
      *v534 = 4;
      *&v534[4] = v473;
      v476 = *v534;
      v477 = HIDWORD(v473);
      if (HIDWORD(*v534))
      {
        v478 = *v534 == 0;
      }

      else
      {
        v478 = 1;
      }

      v479 = v478;
      if (v477)
      {
        v475 = v475;
      }

      else
      {
        v475 = 0;
      }

      v480 = v474 & 0x3FFFFFFFFLL | ((v475 >> 2) << 34);
      *&v534[4] = v480;
      *v534 = 1;
      v481 = *v534;
      *v534 = v476;
      *&v534[8] = HIDWORD(v473);
      *&v534[12] = v481;
      v535 = v475;
      v536 = v473;
      v537 = v480;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v481;
      v533 = v475;
      if (v477)
      {
        v482 = v479;
      }

      else
      {
        v482 = 1;
      }

      if (v482)
      {
        v483 = 0;
      }

      else
      {
        v483 = v476;
      }

      v530 = v483;
      if (v479)
      {
        v484 = 0;
      }

      else
      {
        v484 = v477;
      }

      v531 = v484;
      if (((2 * v475) & (2 * v475 - 1)) != 0)
      {
        v485 = 2;
      }

      else
      {
        v485 = 2 * v475;
      }

      sub_23F26D0A4(&v540, &v530, &v532, 1, &v528, 1, v485);
      operator new();
    case 16:
      v529 = &unk_28518A628;
      v528 = 0;
      if (a4[1])
      {
        v350 = *a4 == 0;
      }

      else
      {
        v350 = 1;
      }

      if (v350)
      {
        v351 = 0;
      }

      else
      {
        v351 = *a4;
      }

      v352 = 4 * (v351 != 0);
      LODWORD(v353) = v352 * v351;
      *v534 = 4;
      *&v534[4] = v351;
      v354 = *v534;
      v355 = HIDWORD(v351);
      if (HIDWORD(*v534))
      {
        v356 = *v534 == 0;
      }

      else
      {
        v356 = 1;
      }

      v357 = v356;
      if (v355)
      {
        v353 = v353;
      }

      else
      {
        v353 = 0;
      }

      v358 = v352 & 0x3FFFFFFFFLL | ((v353 >> 2) << 34);
      *&v534[4] = v358;
      *v534 = 1;
      v359 = *v534;
      *v534 = v354;
      *&v534[8] = HIDWORD(v351);
      *&v534[12] = v359;
      v535 = v353;
      v536 = v351;
      v537 = v358;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v359;
      v533 = v353;
      if (v355)
      {
        v360 = v357;
      }

      else
      {
        v360 = 1;
      }

      if (v360)
      {
        v361 = 0;
      }

      else
      {
        v361 = v354;
      }

      v530 = v361;
      if (v357)
      {
        v362 = 0;
      }

      else
      {
        v362 = v355;
      }

      v531 = v362;
      if (((4 * v353) & (4 * v353 - 1)) != 0)
      {
        v363 = 4;
      }

      else
      {
        v363 = 4 * v353;
      }

      sub_23F26D800(&v540, &v530, &v532, 1, &v528, 1, v363, a1);
      operator new();
    case 17:
      v529 = &unk_28518A7A8;
      LOBYTE(v528) = 0;
      if (a4[1])
      {
        v486 = *a4 == 0;
      }

      else
      {
        v486 = 1;
      }

      v487 = *a4;
      if (v486)
      {
        v487 = 0;
      }

      *&v534[4] = v487;
      *v534 = 3;
      if (v487)
      {
        v488 = 3;
      }

      else
      {
        v488 = 0;
      }

      LODWORD(v489) = v488 * v487;
      *v534 = 3;
      *&v534[4] = v487;
      v490 = *v534;
      v491 = HIDWORD(v487);
      if (HIDWORD(*v534))
      {
        v492 = *v534 == 0;
      }

      else
      {
        v492 = 1;
      }

      v493 = v492;
      if (v491)
      {
        v489 = v489;
      }

      else
      {
        v489 = 0;
      }

      v494 = v488 | (v489 << 32);
      *&v534[4] = v494;
      *v534 = 1;
      v495 = *v534;
      *v534 = v490;
      *&v534[8] = HIDWORD(v487);
      *&v534[12] = v495;
      v535 = v489;
      v536 = v487;
      v537 = v494;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v495;
      v533 = v489;
      if (v491)
      {
        v496 = v493;
      }

      else
      {
        v496 = 1;
      }

      if (v496)
      {
        v497 = 0;
      }

      else
      {
        v497 = v490;
      }

      v530 = v497;
      if (v493)
      {
        v498 = 0;
      }

      else
      {
        v498 = v491;
      }

      v531 = v498;
      if ((v489 & (v489 - 1)) != 0)
      {
        v499 = 1;
      }

      else
      {
        v499 = v489;
      }

      sub_23F26C008(&v540, &v530, &v532, 1, &v528, 1, v499);
      operator new();
    case 18:
      v529 = &unk_28518A928;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v135 = *a4 == 0;
      }

      else
      {
        v135 = 1;
      }

      v136 = *a4;
      if (v135)
      {
        v136 = 0;
      }

      *&v534[4] = v136;
      *v534 = 3;
      if (v136)
      {
        v137 = 3;
      }

      else
      {
        v137 = 0;
      }

      LODWORD(v138) = v137 * v136;
      *v534 = 3;
      *&v534[4] = v136;
      v139 = *v534;
      v140 = HIDWORD(v136);
      if (HIDWORD(*v534))
      {
        v141 = *v534 == 0;
      }

      else
      {
        v141 = 1;
      }

      v142 = v141;
      if (v140)
      {
        v138 = v138;
      }

      else
      {
        v138 = 0;
      }

      v143 = v137 | (v138 << 32);
      *&v534[4] = v143;
      *v534 = 1;
      v144 = *v534;
      *v534 = v139;
      *&v534[8] = HIDWORD(v136);
      *&v534[12] = v144;
      v535 = v138;
      v536 = v136;
      v537 = v143;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v144;
      v533 = v138;
      if (v140)
      {
        v145 = v142;
      }

      else
      {
        v145 = 1;
      }

      if (v145)
      {
        v146 = 0;
      }

      else
      {
        v146 = v139;
      }

      v530 = v146;
      if (v142)
      {
        v147 = 0;
      }

      else
      {
        v147 = v140;
      }

      v531 = v147;
      if (((2 * v138) & (2 * v138 - 1)) != 0)
      {
        v148 = 2;
      }

      else
      {
        v148 = 2 * v138;
      }

      sub_23F26C578(&v540, &v530, &v532, 1, &v528, 1, v148);
      operator new();
    case 19:
      v529 = &unk_28518AAA8;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v23 = *a4 == 0;
      }

      else
      {
        v23 = 1;
      }

      v24 = *a4;
      if (v23)
      {
        v24 = 0;
      }

      *&v534[4] = v24;
      *v534 = 3;
      if (v24)
      {
        v25 = 3;
      }

      else
      {
        v25 = 0;
      }

      LODWORD(v26) = v25 * v24;
      *v534 = 3;
      *&v534[4] = v24;
      v27 = *v534;
      v28 = HIDWORD(v24);
      if (HIDWORD(*v534))
      {
        v29 = *v534 == 0;
      }

      else
      {
        v29 = 1;
      }

      v30 = v29;
      if (v28)
      {
        v26 = v26;
      }

      else
      {
        v26 = 0;
      }

      v31 = v25 | (v26 << 32);
      *&v534[4] = v31;
      *v534 = 1;
      v32 = *v534;
      *v534 = v27;
      *&v534[8] = HIDWORD(v24);
      *&v534[12] = v32;
      v535 = v26;
      v536 = v24;
      v537 = v31;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v32;
      v533 = v26;
      if (v28)
      {
        v33 = v30;
      }

      else
      {
        v33 = 1;
      }

      if (v33)
      {
        v34 = 0;
      }

      else
      {
        v34 = v27;
      }

      v530 = v34;
      if (v30)
      {
        v35 = 0;
      }

      else
      {
        v35 = v28;
      }

      v531 = v35;
      if (((2 * v26) & (2 * v26 - 1)) != 0)
      {
        v36 = 2;
      }

      else
      {
        v36 = 2 * v26;
      }

      sub_23F26D0A4(&v540, &v530, &v532, 1, &v528, 1, v36);
      operator new();
    case 20:
      v529 = &unk_28518AC28;
      v528 = 0;
      if (a4[1])
      {
        v444 = *a4 == 0;
      }

      else
      {
        v444 = 1;
      }

      v445 = *a4;
      if (v444)
      {
        v445 = 0;
      }

      *&v534[4] = v445;
      *v534 = 3;
      if (v445)
      {
        v446 = 3;
      }

      else
      {
        v446 = 0;
      }

      LODWORD(v447) = v446 * v445;
      *v534 = 3;
      *&v534[4] = v445;
      v448 = *v534;
      v449 = HIDWORD(v445);
      if (HIDWORD(*v534))
      {
        v450 = *v534 == 0;
      }

      else
      {
        v450 = 1;
      }

      v451 = v450;
      if (v449)
      {
        v447 = v447;
      }

      else
      {
        v447 = 0;
      }

      v452 = v446 | (v447 << 32);
      *&v534[4] = v452;
      *v534 = 1;
      v453 = *v534;
      *v534 = v448;
      *&v534[8] = HIDWORD(v445);
      *&v534[12] = v453;
      v535 = v447;
      v536 = v445;
      v537 = v452;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v453;
      v533 = v447;
      if (v449)
      {
        v454 = v451;
      }

      else
      {
        v454 = 1;
      }

      if (v454)
      {
        v455 = 0;
      }

      else
      {
        v455 = v448;
      }

      v530 = v455;
      if (v451)
      {
        v456 = 0;
      }

      else
      {
        v456 = v449;
      }

      v531 = v456;
      if (((4 * v447) & (4 * v447 - 1)) != 0)
      {
        v457 = 4;
      }

      else
      {
        v457 = 4 * v447;
      }

      sub_23F26D800(&v540, &v530, &v532, 1, &v528, 1, v457, a1);
      operator new();
    case 21:
      v529 = &unk_28517D860;
      LOBYTE(v528) = 0;
      if (a4[1])
      {
        v514 = *a4 == 0;
      }

      else
      {
        v514 = 1;
      }

      v515 = *a4;
      if (v514)
      {
        v515 = 0;
      }

      *&v534[4] = v515;
      *v534 = 3;
      if (v515)
      {
        v516 = 3;
      }

      else
      {
        v516 = 0;
      }

      LODWORD(v517) = v516 * v515;
      *v534 = 3;
      *&v534[4] = v515;
      v518 = *v534;
      v519 = HIDWORD(v515);
      if (HIDWORD(*v534))
      {
        v520 = *v534 == 0;
      }

      else
      {
        v520 = 1;
      }

      v521 = v520;
      if (v519)
      {
        v517 = v517;
      }

      else
      {
        v517 = 0;
      }

      v522 = v516 | (v517 << 32);
      *&v534[4] = v522;
      *v534 = 1;
      v523 = *v534;
      *v534 = v518;
      *&v534[8] = HIDWORD(v515);
      *&v534[12] = v523;
      v535 = v517;
      v536 = v515;
      v537 = v522;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v523;
      v533 = v517;
      if (v519)
      {
        v524 = v521;
      }

      else
      {
        v524 = 1;
      }

      if (v524)
      {
        v525 = 0;
      }

      else
      {
        v525 = v518;
      }

      v530 = v525;
      if (v521)
      {
        v526 = 0;
      }

      else
      {
        v526 = v519;
      }

      v531 = v526;
      if ((v517 & (v517 - 1)) != 0)
      {
        v527 = 1;
      }

      else
      {
        v527 = v517;
      }

      sub_23F26C008(&v540, &v530, &v532, 1, &v528, 1, v527);
      operator new();
    case 22:
      v529 = &unk_285185CE8;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v177 = *a4 == 0;
      }

      else
      {
        v177 = 1;
      }

      v178 = *a4;
      if (v177)
      {
        v178 = 0;
      }

      *&v534[4] = v178;
      *v534 = 3;
      if (v178)
      {
        v179 = 3;
      }

      else
      {
        v179 = 0;
      }

      LODWORD(v180) = v179 * v178;
      *v534 = 3;
      *&v534[4] = v178;
      v181 = *v534;
      v182 = HIDWORD(v178);
      if (HIDWORD(*v534))
      {
        v183 = *v534 == 0;
      }

      else
      {
        v183 = 1;
      }

      v184 = v183;
      if (v182)
      {
        v180 = v180;
      }

      else
      {
        v180 = 0;
      }

      v185 = v179 | (v180 << 32);
      *&v534[4] = v185;
      *v534 = 1;
      v186 = *v534;
      *v534 = v181;
      *&v534[8] = HIDWORD(v178);
      *&v534[12] = v186;
      v535 = v180;
      v536 = v178;
      v537 = v185;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v186;
      v533 = v180;
      if (v182)
      {
        v187 = v184;
      }

      else
      {
        v187 = 1;
      }

      if (v187)
      {
        v188 = 0;
      }

      else
      {
        v188 = v181;
      }

      v530 = v188;
      if (v184)
      {
        v189 = 0;
      }

      else
      {
        v189 = v182;
      }

      v531 = v189;
      if (((2 * v180) & (2 * v180 - 1)) != 0)
      {
        v190 = 2;
      }

      else
      {
        v190 = 2 * v180;
      }

      sub_23F26C578(&v540, &v530, &v532, 1, &v528, 1, v190);
      operator new();
    case 23:
      v529 = &unk_285185E68;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v500 = *a4 == 0;
      }

      else
      {
        v500 = 1;
      }

      v501 = *a4;
      if (v500)
      {
        v501 = 0;
      }

      *&v534[4] = v501;
      *v534 = 3;
      if (v501)
      {
        v502 = 3;
      }

      else
      {
        v502 = 0;
      }

      LODWORD(v503) = v502 * v501;
      *v534 = 3;
      *&v534[4] = v501;
      v504 = *v534;
      v505 = HIDWORD(v501);
      if (HIDWORD(*v534))
      {
        v506 = *v534 == 0;
      }

      else
      {
        v506 = 1;
      }

      v507 = v506;
      if (v505)
      {
        v503 = v503;
      }

      else
      {
        v503 = 0;
      }

      v508 = v502 | (v503 << 32);
      *&v534[4] = v508;
      *v534 = 1;
      v509 = *v534;
      *v534 = v504;
      *&v534[8] = HIDWORD(v501);
      *&v534[12] = v509;
      v535 = v503;
      v536 = v501;
      v537 = v508;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v509;
      v533 = v503;
      if (v505)
      {
        v510 = v507;
      }

      else
      {
        v510 = 1;
      }

      if (v510)
      {
        v511 = 0;
      }

      else
      {
        v511 = v504;
      }

      v530 = v511;
      if (v507)
      {
        v512 = 0;
      }

      else
      {
        v512 = v505;
      }

      v531 = v512;
      if (((2 * v503) & (2 * v503 - 1)) != 0)
      {
        v513 = 2;
      }

      else
      {
        v513 = 2 * v503;
      }

      sub_23F26D0A4(&v540, &v530, &v532, 1, &v528, 1, v513);
      operator new();
    case 24:
      v529 = &unk_285185FE8;
      v528 = 0;
      if (a4[1])
      {
        v79 = *a4 == 0;
      }

      else
      {
        v79 = 1;
      }

      v80 = *a4;
      if (v79)
      {
        v80 = 0;
      }

      *&v534[4] = v80;
      *v534 = 3;
      if (v80)
      {
        v81 = 3;
      }

      else
      {
        v81 = 0;
      }

      LODWORD(v82) = v81 * v80;
      *v534 = 3;
      *&v534[4] = v80;
      v83 = *v534;
      v84 = HIDWORD(v80);
      if (HIDWORD(*v534))
      {
        v85 = *v534 == 0;
      }

      else
      {
        v85 = 1;
      }

      v86 = v85;
      if (v84)
      {
        v82 = v82;
      }

      else
      {
        v82 = 0;
      }

      v87 = v81 | (v82 << 32);
      *&v534[4] = v87;
      *v534 = 1;
      v88 = *v534;
      *v534 = v83;
      *&v534[8] = HIDWORD(v80);
      *&v534[12] = v88;
      v535 = v82;
      v536 = v80;
      v537 = v87;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v88;
      v533 = v82;
      if (v84)
      {
        v89 = v86;
      }

      else
      {
        v89 = 1;
      }

      if (v89)
      {
        v90 = 0;
      }

      else
      {
        v90 = v83;
      }

      v530 = v90;
      if (v86)
      {
        v91 = 0;
      }

      else
      {
        v91 = v84;
      }

      v531 = v91;
      if (((4 * v82) & (4 * v82 - 1)) != 0)
      {
        v92 = 4;
      }

      else
      {
        v92 = 4 * v82;
      }

      sub_23F26D800(&v540, &v530, &v532, 1, &v528, 1, v92, a1);
      operator new();
    case 25:
      v529 = &unk_285186168;
      LOBYTE(v528) = 0;
      if (a4[1])
      {
        v37 = *a4 == 0;
      }

      else
      {
        v37 = 1;
      }

      v38 = *a4;
      if (v37)
      {
        v38 = 0;
      }

      v39 = 4 * (v38 != 0);
      LODWORD(v40) = v39 * v38;
      *v534 = 4;
      *&v534[4] = v38;
      v41 = *v534;
      v42 = HIDWORD(v38);
      if (HIDWORD(*v534))
      {
        v43 = *v534 == 0;
      }

      else
      {
        v43 = 1;
      }

      v44 = v43;
      if (v42)
      {
        v40 = v40;
      }

      else
      {
        v40 = 0;
      }

      v45 = v39 & 0x3FFFFFFFFLL | ((v40 >> 2) << 34);
      *&v534[4] = v45;
      *v534 = 1;
      v46 = *v534;
      *v534 = v41;
      *&v534[8] = HIDWORD(v38);
      *&v534[12] = v46;
      v535 = v40;
      v536 = v38;
      v537 = v45;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v46;
      v533 = v40;
      if (v42)
      {
        v47 = v44;
      }

      else
      {
        v47 = 1;
      }

      if (v47)
      {
        v48 = 0;
      }

      else
      {
        v48 = v41;
      }

      v530 = v48;
      if (v44)
      {
        v49 = 0;
      }

      else
      {
        v49 = v42;
      }

      v531 = v49;
      if ((v40 & (v40 - 1)) != 0)
      {
        v50 = 1;
      }

      else
      {
        v50 = v40;
      }

      sub_23F26C008(&v540, &v530, &v532, 1, &v528, 1, v50);
      operator new();
    case 26:
      v529 = &unk_28518ADA8;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v191 = *a4 == 0;
      }

      else
      {
        v191 = 1;
      }

      v192 = *a4;
      if (v191)
      {
        v192 = 0;
      }

      v193 = 4 * (v192 != 0);
      LODWORD(v194) = v193 * v192;
      *v534 = 4;
      *&v534[4] = v192;
      v195 = *v534;
      v196 = HIDWORD(v192);
      if (HIDWORD(*v534))
      {
        v197 = *v534 == 0;
      }

      else
      {
        v197 = 1;
      }

      v198 = v197;
      if (v196)
      {
        v194 = v194;
      }

      else
      {
        v194 = 0;
      }

      v199 = v193 & 0x3FFFFFFFFLL | ((v194 >> 2) << 34);
      *&v534[4] = v199;
      *v534 = 1;
      v200 = *v534;
      *v534 = v195;
      *&v534[8] = HIDWORD(v192);
      *&v534[12] = v200;
      v535 = v194;
      v536 = v192;
      v537 = v199;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v200;
      v533 = v194;
      if (v196)
      {
        v201 = v198;
      }

      else
      {
        v201 = 1;
      }

      if (v201)
      {
        v202 = 0;
      }

      else
      {
        v202 = v195;
      }

      v530 = v202;
      if (v198)
      {
        v203 = 0;
      }

      else
      {
        v203 = v196;
      }

      v531 = v203;
      if (((2 * v194) & (2 * v194 - 1)) != 0)
      {
        v204 = 2;
      }

      else
      {
        v204 = 2 * v194;
      }

      sub_23F26C578(&v540, &v530, &v532, 1, &v528, 1, v204);
      operator new();
    case 27:
      v529 = &unk_28518AF28;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v9 = *a4 == 0;
      }

      else
      {
        v9 = 1;
      }

      v10 = *a4;
      if (v9)
      {
        v10 = 0;
      }

      v11 = 4 * (v10 != 0);
      LODWORD(v12) = v11 * v10;
      *v534 = 4;
      *&v534[4] = v10;
      v13 = *v534;
      v14 = HIDWORD(v10);
      if (HIDWORD(*v534))
      {
        v15 = *v534 == 0;
      }

      else
      {
        v15 = 1;
      }

      v16 = v15;
      if (v14)
      {
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      v17 = v11 & 0x3FFFFFFFFLL | ((v12 >> 2) << 34);
      *&v534[4] = v17;
      *v534 = 1;
      v18 = *v534;
      *v534 = v13;
      *&v534[8] = HIDWORD(v10);
      *&v534[12] = v18;
      v535 = v12;
      v536 = v10;
      v537 = v17;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v18;
      v533 = v12;
      if (v14)
      {
        v19 = v16;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v13;
      }

      v530 = v20;
      if (v16)
      {
        v21 = 0;
      }

      else
      {
        v21 = v14;
      }

      v531 = v21;
      if (((2 * v12) & (2 * v12 - 1)) != 0)
      {
        v22 = 2;
      }

      else
      {
        v22 = 2 * v12;
      }

      sub_23F26D0A4(&v540, &v530, &v532, 1, &v528, 1, v22);
      operator new();
    case 28:
      v529 = &unk_28518B0A8;
      v528 = 0;
      if (a4[1])
      {
        v238 = *a4 == 0;
      }

      else
      {
        v238 = 1;
      }

      if (v238)
      {
        v239 = 0;
      }

      else
      {
        v239 = *a4;
      }

      v240 = 4 * (v239 != 0);
      LODWORD(v241) = v240 * v239;
      *v534 = 4;
      *&v534[4] = v239;
      v242 = *v534;
      v243 = HIDWORD(v239);
      if (HIDWORD(*v534))
      {
        v244 = *v534 == 0;
      }

      else
      {
        v244 = 1;
      }

      v245 = v244;
      if (v243)
      {
        v241 = v241;
      }

      else
      {
        v241 = 0;
      }

      v246 = v240 & 0x3FFFFFFFFLL | ((v241 >> 2) << 34);
      *&v534[4] = v246;
      *v534 = 1;
      v247 = *v534;
      *v534 = v242;
      *&v534[8] = HIDWORD(v239);
      *&v534[12] = v247;
      v535 = v241;
      v536 = v239;
      v537 = v246;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v247;
      v533 = v241;
      if (v243)
      {
        v248 = v245;
      }

      else
      {
        v248 = 1;
      }

      if (v248)
      {
        v249 = 0;
      }

      else
      {
        v249 = v242;
      }

      v530 = v249;
      if (v245)
      {
        v250 = 0;
      }

      else
      {
        v250 = v243;
      }

      v531 = v250;
      if (((4 * v241) & (4 * v241 - 1)) != 0)
      {
        v251 = 4;
      }

      else
      {
        v251 = 4 * v241;
      }

      sub_23F26D800(&v540, &v530, &v532, 1, &v528, 1, v251, a1);
      operator new();
    case 29:
      v529 = &unk_2851862E8;
      LOBYTE(v528) = 0;
      if (a4[1])
      {
        v65 = *a4 == 0;
      }

      else
      {
        v65 = 1;
      }

      v66 = *a4;
      if (v65)
      {
        v66 = 0;
      }

      v67 = 4 * (v66 != 0);
      LODWORD(v68) = v67 * v66;
      *v534 = 4;
      *&v534[4] = v66;
      v69 = *v534;
      v70 = HIDWORD(v66);
      if (HIDWORD(*v534))
      {
        v71 = *v534 == 0;
      }

      else
      {
        v71 = 1;
      }

      v72 = v71;
      if (v70)
      {
        v68 = v68;
      }

      else
      {
        v68 = 0;
      }

      v73 = v67 & 0x3FFFFFFFFLL | ((v68 >> 2) << 34);
      *&v534[4] = v73;
      *v534 = 1;
      v74 = *v534;
      *v534 = v69;
      *&v534[8] = HIDWORD(v66);
      *&v534[12] = v74;
      v535 = v68;
      v536 = v66;
      v537 = v73;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v74;
      v533 = v68;
      if (v70)
      {
        v75 = v72;
      }

      else
      {
        v75 = 1;
      }

      if (v75)
      {
        v76 = 0;
      }

      else
      {
        v76 = v69;
      }

      v530 = v76;
      if (v72)
      {
        v77 = 0;
      }

      else
      {
        v77 = v70;
      }

      v531 = v77;
      if ((v68 & (v68 - 1)) != 0)
      {
        v78 = 1;
      }

      else
      {
        v78 = v68;
      }

      sub_23F26C008(&v540, &v530, &v532, 1, &v528, 1, v78);
      operator new();
    case 30:
      v529 = &unk_285186468;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v280 = *a4 == 0;
      }

      else
      {
        v280 = 1;
      }

      v281 = *a4;
      if (v280)
      {
        v281 = 0;
      }

      v282 = 4 * (v281 != 0);
      LODWORD(v283) = v282 * v281;
      *v534 = 4;
      *&v534[4] = v281;
      v284 = *v534;
      v285 = HIDWORD(v281);
      if (HIDWORD(*v534))
      {
        v286 = *v534 == 0;
      }

      else
      {
        v286 = 1;
      }

      v287 = v286;
      if (v285)
      {
        v283 = v283;
      }

      else
      {
        v283 = 0;
      }

      v288 = v282 & 0x3FFFFFFFFLL | ((v283 >> 2) << 34);
      *&v534[4] = v288;
      *v534 = 1;
      v289 = *v534;
      *v534 = v284;
      *&v534[8] = HIDWORD(v281);
      *&v534[12] = v289;
      v535 = v283;
      v536 = v281;
      v537 = v288;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v289;
      v533 = v283;
      if (v285)
      {
        v290 = v287;
      }

      else
      {
        v290 = 1;
      }

      if (v290)
      {
        v291 = 0;
      }

      else
      {
        v291 = v284;
      }

      v530 = v291;
      if (v287)
      {
        v292 = 0;
      }

      else
      {
        v292 = v285;
      }

      v531 = v292;
      if (((2 * v283) & (2 * v283 - 1)) != 0)
      {
        v293 = 2;
      }

      else
      {
        v293 = 2 * v283;
      }

      sub_23F26C578(&v540, &v530, &v532, 1, &v528, 1, v293);
      operator new();
    case 31:
      v529 = &unk_2851865E8;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v205 = *a4 == 0;
      }

      else
      {
        v205 = 1;
      }

      v206 = *a4;
      if (v205)
      {
        v206 = 0;
      }

      v207 = 4 * (v206 != 0);
      LODWORD(v208) = v207 * v206;
      *v534 = 4;
      *&v534[4] = v206;
      v209 = *v534;
      v210 = HIDWORD(v206);
      if (HIDWORD(*v534))
      {
        v211 = *v534 == 0;
      }

      else
      {
        v211 = 1;
      }

      v212 = v211;
      if (v210)
      {
        v208 = v208;
      }

      else
      {
        v208 = 0;
      }

      v213 = v207 & 0x3FFFFFFFFLL | ((v208 >> 2) << 34);
      *&v534[4] = v213;
      *v534 = 1;
      v214 = *v534;
      *v534 = v209;
      *&v534[8] = HIDWORD(v206);
      *&v534[12] = v214;
      v535 = v208;
      v536 = v206;
      v537 = v213;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v214;
      v533 = v208;
      if (v210)
      {
        v215 = v212;
      }

      else
      {
        v215 = 1;
      }

      if (v215)
      {
        v216 = 0;
      }

      else
      {
        v216 = v209;
      }

      v530 = v216;
      if (v212)
      {
        v217 = 0;
      }

      else
      {
        v217 = v210;
      }

      v531 = v217;
      if (((2 * v208) & (2 * v208 - 1)) != 0)
      {
        v218 = 2;
      }

      else
      {
        v218 = 2 * v208;
      }

      sub_23F26D0A4(&v540, &v530, &v532, 1, &v528, 1, v218);
      operator new();
    case 32:
      v529 = &unk_285186768;
      v528 = 0;
      if (a4[1])
      {
        v308 = *a4 == 0;
      }

      else
      {
        v308 = 1;
      }

      if (v308)
      {
        v309 = 0;
      }

      else
      {
        v309 = *a4;
      }

      v310 = 4 * (v309 != 0);
      LODWORD(v311) = v310 * v309;
      *v534 = 4;
      *&v534[4] = v309;
      v312 = *v534;
      v313 = HIDWORD(v309);
      if (HIDWORD(*v534))
      {
        v314 = *v534 == 0;
      }

      else
      {
        v314 = 1;
      }

      v315 = v314;
      if (v313)
      {
        v311 = v311;
      }

      else
      {
        v311 = 0;
      }

      v316 = v310 & 0x3FFFFFFFFLL | ((v311 >> 2) << 34);
      *&v534[4] = v316;
      *v534 = 1;
      v317 = *v534;
      *v534 = v312;
      *&v534[8] = HIDWORD(v309);
      *&v534[12] = v317;
      v535 = v311;
      v536 = v309;
      v537 = v316;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v317;
      v533 = v311;
      if (v313)
      {
        v318 = v315;
      }

      else
      {
        v318 = 1;
      }

      if (v318)
      {
        v319 = 0;
      }

      else
      {
        v319 = v312;
      }

      v530 = v319;
      if (v315)
      {
        v320 = 0;
      }

      else
      {
        v320 = v313;
      }

      v531 = v320;
      if (((4 * v311) & (4 * v311 - 1)) != 0)
      {
        v321 = 4;
      }

      else
      {
        v321 = 4 * v311;
      }

      sub_23F26D800(&v540, &v530, &v532, 1, &v528, 1, v321, a1);
      operator new();
    case 33:
      v529 = &unk_2851868E8;
      LOBYTE(v528) = 0;
      if (a4[1])
      {
        v430 = *a4 == 0;
      }

      else
      {
        v430 = 1;
      }

      v431 = *a4;
      if (v430)
      {
        v431 = 0;
      }

      v432 = 4 * (v431 != 0);
      LODWORD(v433) = v432 * v431;
      *v534 = 4;
      *&v534[4] = v431;
      v434 = *v534;
      v435 = HIDWORD(v431);
      if (HIDWORD(*v534))
      {
        v436 = *v534 == 0;
      }

      else
      {
        v436 = 1;
      }

      v437 = v436;
      if (v435)
      {
        v433 = v433;
      }

      else
      {
        v433 = 0;
      }

      v438 = v432 & 0x3FFFFFFFFLL | ((v433 >> 2) << 34);
      *&v534[4] = v438;
      *v534 = 1;
      v439 = *v534;
      *v534 = v434;
      *&v534[8] = HIDWORD(v431);
      *&v534[12] = v439;
      v535 = v433;
      v536 = v431;
      v537 = v438;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v439;
      v533 = v433;
      if (v435)
      {
        v440 = v437;
      }

      else
      {
        v440 = 1;
      }

      if (v440)
      {
        v441 = 0;
      }

      else
      {
        v441 = v434;
      }

      v530 = v441;
      if (v437)
      {
        v442 = 0;
      }

      else
      {
        v442 = v435;
      }

      v531 = v442;
      if ((v433 & (v433 - 1)) != 0)
      {
        v443 = 1;
      }

      else
      {
        v443 = v433;
      }

      sub_23F26C008(&v540, &v530, &v532, 1, &v528, 1, v443);
      operator new();
    case 34:
      v529 = &unk_28518B228;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v294 = *a4 == 0;
      }

      else
      {
        v294 = 1;
      }

      v295 = *a4;
      if (v294)
      {
        v295 = 0;
      }

      v296 = 4 * (v295 != 0);
      LODWORD(v297) = v296 * v295;
      *v534 = 4;
      *&v534[4] = v295;
      v298 = *v534;
      v299 = HIDWORD(v295);
      if (HIDWORD(*v534))
      {
        v300 = *v534 == 0;
      }

      else
      {
        v300 = 1;
      }

      v301 = v300;
      if (v299)
      {
        v297 = v297;
      }

      else
      {
        v297 = 0;
      }

      v302 = v296 & 0x3FFFFFFFFLL | ((v297 >> 2) << 34);
      *&v534[4] = v302;
      *v534 = 1;
      v303 = *v534;
      *v534 = v298;
      *&v534[8] = HIDWORD(v295);
      *&v534[12] = v303;
      v535 = v297;
      v536 = v295;
      v537 = v302;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v303;
      v533 = v297;
      if (v299)
      {
        v304 = v301;
      }

      else
      {
        v304 = 1;
      }

      if (v304)
      {
        v305 = 0;
      }

      else
      {
        v305 = v298;
      }

      v530 = v305;
      if (v301)
      {
        v306 = 0;
      }

      else
      {
        v306 = v299;
      }

      v531 = v306;
      if (((2 * v297) & (2 * v297 - 1)) != 0)
      {
        v307 = 2;
      }

      else
      {
        v307 = 2 * v297;
      }

      sub_23F26C578(&v540, &v530, &v532, 1, &v528, 1, v307);
      operator new();
    case 35:
      v529 = &unk_28518B3A8;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v266 = *a4 == 0;
      }

      else
      {
        v266 = 1;
      }

      v267 = *a4;
      if (v266)
      {
        v267 = 0;
      }

      v268 = 4 * (v267 != 0);
      LODWORD(v269) = v268 * v267;
      *v534 = 4;
      *&v534[4] = v267;
      v270 = *v534;
      v271 = HIDWORD(v267);
      if (HIDWORD(*v534))
      {
        v272 = *v534 == 0;
      }

      else
      {
        v272 = 1;
      }

      v273 = v272;
      if (v271)
      {
        v269 = v269;
      }

      else
      {
        v269 = 0;
      }

      v274 = v268 & 0x3FFFFFFFFLL | ((v269 >> 2) << 34);
      *&v534[4] = v274;
      *v534 = 1;
      v275 = *v534;
      *v534 = v270;
      *&v534[8] = HIDWORD(v267);
      *&v534[12] = v275;
      v535 = v269;
      v536 = v267;
      v537 = v274;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v275;
      v533 = v269;
      if (v271)
      {
        v276 = v273;
      }

      else
      {
        v276 = 1;
      }

      if (v276)
      {
        v277 = 0;
      }

      else
      {
        v277 = v270;
      }

      v530 = v277;
      if (v273)
      {
        v278 = 0;
      }

      else
      {
        v278 = v271;
      }

      v531 = v278;
      if (((2 * v269) & (2 * v269 - 1)) != 0)
      {
        v279 = 2;
      }

      else
      {
        v279 = 2 * v269;
      }

      sub_23F26D0A4(&v540, &v530, &v532, 1, &v528, 1, v279);
      operator new();
    case 36:
      v529 = &unk_28518B528;
      v528 = 0;
      if (a4[1])
      {
        v252 = *a4 == 0;
      }

      else
      {
        v252 = 1;
      }

      if (v252)
      {
        v253 = 0;
      }

      else
      {
        v253 = *a4;
      }

      v254 = 4 * (v253 != 0);
      LODWORD(v255) = v254 * v253;
      *v534 = 4;
      *&v534[4] = v253;
      v256 = *v534;
      v257 = HIDWORD(v253);
      if (HIDWORD(*v534))
      {
        v258 = *v534 == 0;
      }

      else
      {
        v258 = 1;
      }

      v259 = v258;
      if (v257)
      {
        v255 = v255;
      }

      else
      {
        v255 = 0;
      }

      v260 = v254 & 0x3FFFFFFFFLL | ((v255 >> 2) << 34);
      *&v534[4] = v260;
      *v534 = 1;
      v261 = *v534;
      *v534 = v256;
      *&v534[8] = HIDWORD(v253);
      *&v534[12] = v261;
      v535 = v255;
      v536 = v253;
      v537 = v260;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v261;
      v533 = v255;
      if (v257)
      {
        v262 = v259;
      }

      else
      {
        v262 = 1;
      }

      if (v262)
      {
        v263 = 0;
      }

      else
      {
        v263 = v256;
      }

      v530 = v263;
      if (v259)
      {
        v264 = 0;
      }

      else
      {
        v264 = v257;
      }

      v531 = v264;
      if (((4 * v255) & (4 * v255 - 1)) != 0)
      {
        v265 = 4;
      }

      else
      {
        v265 = 4 * v255;
      }

      sub_23F26D800(&v540, &v530, &v532, 1, &v528, 1, v265, a1);
      operator new();
    case 37:
      v529 = &unk_285186A68;
      LOBYTE(v528) = 0;
      if (a4[1])
      {
        v388 = *a4 == 0;
      }

      else
      {
        v388 = 1;
      }

      v389 = *a4;
      if (v388)
      {
        v389 = 0;
      }

      v390 = 4 * (v389 != 0);
      LODWORD(v391) = v390 * v389;
      *v534 = 4;
      *&v534[4] = v389;
      v392 = *v534;
      v393 = HIDWORD(v389);
      if (HIDWORD(*v534))
      {
        v394 = *v534 == 0;
      }

      else
      {
        v394 = 1;
      }

      v395 = v394;
      if (v393)
      {
        v391 = v391;
      }

      else
      {
        v391 = 0;
      }

      v396 = v390 & 0x3FFFFFFFFLL | ((v391 >> 2) << 34);
      *&v534[4] = v396;
      *v534 = 1;
      v397 = *v534;
      *v534 = v392;
      *&v534[8] = HIDWORD(v389);
      *&v534[12] = v397;
      v535 = v391;
      v536 = v389;
      v537 = v396;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v397;
      v533 = v391;
      if (v393)
      {
        v398 = v395;
      }

      else
      {
        v398 = 1;
      }

      if (v398)
      {
        v399 = 0;
      }

      else
      {
        v399 = v392;
      }

      v530 = v399;
      if (v395)
      {
        v400 = 0;
      }

      else
      {
        v400 = v393;
      }

      v531 = v400;
      if ((v391 & (v391 - 1)) != 0)
      {
        v401 = 1;
      }

      else
      {
        v401 = v391;
      }

      sub_23F26C008(&v540, &v530, &v532, 1, &v528, 1, v401);
      operator new();
    case 38:
      v529 = &unk_285186BE8;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v458 = *a4 == 0;
      }

      else
      {
        v458 = 1;
      }

      v459 = *a4;
      if (v458)
      {
        v459 = 0;
      }

      v460 = 4 * (v459 != 0);
      LODWORD(v461) = v460 * v459;
      *v534 = 4;
      *&v534[4] = v459;
      v462 = *v534;
      v463 = HIDWORD(v459);
      if (HIDWORD(*v534))
      {
        v464 = *v534 == 0;
      }

      else
      {
        v464 = 1;
      }

      v465 = v464;
      if (v463)
      {
        v461 = v461;
      }

      else
      {
        v461 = 0;
      }

      v466 = v460 & 0x3FFFFFFFFLL | ((v461 >> 2) << 34);
      *&v534[4] = v466;
      *v534 = 1;
      v467 = *v534;
      *v534 = v462;
      *&v534[8] = HIDWORD(v459);
      *&v534[12] = v467;
      v535 = v461;
      v536 = v459;
      v537 = v466;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v467;
      v533 = v461;
      if (v463)
      {
        v468 = v465;
      }

      else
      {
        v468 = 1;
      }

      if (v468)
      {
        v469 = 0;
      }

      else
      {
        v469 = v462;
      }

      v530 = v469;
      if (v465)
      {
        v470 = 0;
      }

      else
      {
        v470 = v463;
      }

      v531 = v470;
      if (((2 * v461) & (2 * v461 - 1)) != 0)
      {
        v471 = 2;
      }

      else
      {
        v471 = 2 * v461;
      }

      sub_23F26C578(&v540, &v530, &v532, 1, &v528, 1, v471);
      operator new();
    case 39:
      v529 = &unk_285186D68;
      LOWORD(v528) = 0;
      if (a4[1])
      {
        v163 = *a4 == 0;
      }

      else
      {
        v163 = 1;
      }

      v164 = *a4;
      if (v163)
      {
        v164 = 0;
      }

      v165 = 4 * (v164 != 0);
      LODWORD(v166) = v165 * v164;
      *v534 = 4;
      *&v534[4] = v164;
      v167 = *v534;
      v168 = HIDWORD(v164);
      if (HIDWORD(*v534))
      {
        v169 = *v534 == 0;
      }

      else
      {
        v169 = 1;
      }

      v170 = v169;
      if (v168)
      {
        v166 = v166;
      }

      else
      {
        v166 = 0;
      }

      v171 = v165 & 0x3FFFFFFFFLL | ((v166 >> 2) << 34);
      *&v534[4] = v171;
      *v534 = 1;
      v172 = *v534;
      *v534 = v167;
      *&v534[8] = HIDWORD(v164);
      *&v534[12] = v172;
      v535 = v166;
      v536 = v164;
      v537 = v171;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v172;
      v533 = v166;
      if (v168)
      {
        v173 = v170;
      }

      else
      {
        v173 = 1;
      }

      if (v173)
      {
        v174 = 0;
      }

      else
      {
        v174 = v167;
      }

      v530 = v174;
      if (v170)
      {
        v175 = 0;
      }

      else
      {
        v175 = v168;
      }

      v531 = v175;
      if (((2 * v166) & (2 * v166 - 1)) != 0)
      {
        v176 = 2;
      }

      else
      {
        v176 = 2 * v166;
      }

      sub_23F26D0A4(&v540, &v530, &v532, 1, &v528, 1, v176);
      operator new();
    case 40:
      v529 = &unk_285186EE8;
      v528 = 0;
      if (a4[1])
      {
        v121 = *a4 == 0;
      }

      else
      {
        v121 = 1;
      }

      if (v121)
      {
        v122 = 0;
      }

      else
      {
        v122 = *a4;
      }

      v123 = 4 * (v122 != 0);
      LODWORD(v124) = v123 * v122;
      *v534 = 4;
      *&v534[4] = v122;
      v125 = *v534;
      v126 = HIDWORD(v122);
      if (HIDWORD(*v534))
      {
        v127 = *v534 == 0;
      }

      else
      {
        v127 = 1;
      }

      v128 = v127;
      if (v126)
      {
        v124 = v124;
      }

      else
      {
        v124 = 0;
      }

      v129 = v123 & 0x3FFFFFFFFLL | ((v124 >> 2) << 34);
      *&v534[4] = v129;
      *v534 = 1;
      v130 = *v534;
      *v534 = v125;
      *&v534[8] = HIDWORD(v122);
      *&v534[12] = v130;
      v535 = v124;
      v536 = v122;
      v537 = v129;
      v538 = 0;
      BYTE4(v539) = 0;
      v532 = v130;
      v533 = v124;
      if (v126)
      {
        v131 = v128;
      }

      else
      {
        v131 = 1;
      }

      if (v131)
      {
        v132 = 0;
      }

      else
      {
        v132 = v125;
      }

      v530 = v132;
      if (v128)
      {
        v133 = 0;
      }

      else
      {
        v133 = v126;
      }

      v531 = v133;
      if (((4 * v124) & (4 * v124 - 1)) != 0)
      {
        v134 = 4;
      }

      else
      {
        v134 = 4 * v124;
      }

      sub_23F26D800(&v540, &v530, &v532, 1, &v528, 1, v134, a1);
      operator new();
    default:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
  }
}