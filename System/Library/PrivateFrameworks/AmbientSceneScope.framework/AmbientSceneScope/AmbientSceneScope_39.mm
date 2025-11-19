void sub_23F236E84(uint64_t a1)
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

void sub_23F236F98(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_2851891F0, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 13);
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
        sub_23F1F3B98(v22, &v23);
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

  sub_23F270724(a1 + 8, v6 + 2);
}

void sub_23F237280(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 13)
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

void sub_23F237580(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 13)
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

uint64_t sub_23F237880(uint64_t result)
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

void sub_23F2378BC(uint64_t a1)
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

void sub_23F2379D0(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285189208, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 14);
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
        sub_23F1D753C(v22, &v23);
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

  sub_23F270AF4(a1 + 8, v6 + 2);
}

void sub_23F237CB8(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 14)
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

void sub_23F237FB8(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 14)
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

uint64_t sub_23F2382B8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 84))
  {
    v3 = *(a1 + 80) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 88);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 100) >> 1) != -1)
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
  v2 = *(a1 + 64);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_23F238420(uint64_t a1)
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

void sub_23F238588(uint64_t a1)
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

void sub_23F2387CC(uint64_t a1, char **lpsrc)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285189220, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v24, lpsrc, 15);
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

void sub_23F238ABC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 15)
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

void sub_23F238DBC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 15)
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

uint64_t sub_23F2390BC(uint64_t result)
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

void sub_23F2390F8(uint64_t a1)
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

void sub_23F23920C(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285189238, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 16);
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

void sub_23F2394F4(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 16)
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

void sub_23F2397F4(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 16)
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

uint64_t sub_23F239AF4(uint64_t result)
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

void sub_23F239B30(uint64_t a1)
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

void sub_23F239C44(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285189250, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 17);
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

    LODWORD(v23) = 3;
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
        sub_23F1F3548(v22, &v23);
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

  sub_23F26E174(a1 + 8, v6 + 2);
}

void sub_23F239F2C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 17)
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

void sub_23F23A22C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 17)
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

uint64_t sub_23F23A52C(uint64_t result)
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

void sub_23F23A568(uint64_t a1)
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

void sub_23F23A67C(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285189268, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 18);
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

    LODWORD(v23) = 3;
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
        sub_23F1F4BE0(v22, &v23);
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

  sub_23F26E51C(a1 + 8, v6 + 2);
}

void sub_23F23A964(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 18)
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

void sub_23F23AC64(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 18)
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

uint64_t sub_23F23AF64(uint64_t a1)
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

void sub_23F23B0CC(uint64_t a1)
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

void sub_23F23B310(uint64_t a1, char **lpsrc)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285189280, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v22, lpsrc, 19);
    v8 = *(v22 + 16);
    v21[0] = *v22;
    v21[1] = v8;
    v21[2] = *(v22 + 32);
    *&v22 = 0;
    MEMORY[0x245CACD00]();
    v9 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v10 = *(a1 + 32) == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (v10)
    {
      v11 = 0;
    }

    LODWORD(v22) = 3;
    *(&v22 + 4) = v11;
    v13 = v11;
    v14 = v22;
    v15 = HIDWORD(v11);
    LODWORD(v22) = 1;
    *(&v22 + 4) = v12;
    v16 = v22;
    if (HIDWORD(v12) * HIDWORD(v11) != -1)
    {
      goto LABEL_19;
    }

    v20 = v9;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v18 = qword_27E396178, v17 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_18:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v9 = v20;
LABEL_19:
        *&v22 = v9;
        *(&v22 + 1) = v14;
        v23 = v15;
        v24 = v16;
        v25 = HIDWORD(v12);
        v26 = v13;
        v27 = v12;
        sub_23F26F554(v21, &v22);
        v19 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v18 = qword_27E396178;
      v17 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v17);
    if (byte_27E3961A0)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_23F26E920(a1 + 8, v6 + 2);
}

void sub_23F23B5F8(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 19)
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

void sub_23F23B8F8(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 19)
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

uint64_t sub_23F23BBF8(uint64_t result)
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

void sub_23F23BC34(uint64_t a1)
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

uint64_t sub_23F23BD48(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285189298, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 20);
    v9 = *(v23 + 16);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = *(v23 + 32);
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

    LODWORD(v23) = 3;
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
        result = sub_23F270394(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return result;
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

  return sub_23F26FF90(a1 + 8, v6 + 2);
}

void sub_23F23C030(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 20)
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

void sub_23F23C330(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 20)
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

uint64_t sub_23F23C630(uint64_t result)
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

void sub_23F23C66C(uint64_t a1)
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

void sub_23F23C780(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_28517D5C8, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 21);
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

    LODWORD(v23) = 3;
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
        sub_23F1F3548(v22, &v23);
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

  sub_23F26E174(a1 + 8, v6 + 2);
}

void sub_23F23CA68(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 21)
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

void sub_23F23CD68(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 21)
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

uint64_t sub_23F23D068(uint64_t result)
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

void sub_23F23D0A4(uint64_t a1)
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

void sub_23F23D1B8(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_2851856B8, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 22);
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

    LODWORD(v23) = 3;
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
        sub_23F1F4BE0(v22, &v23);
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

  sub_23F26E51C(a1 + 8, v6 + 2);
}

void sub_23F23D4A0(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 22)
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

void sub_23F23D7A0(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 22)
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

uint64_t sub_23F23DAA0(uint64_t a1)
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

void sub_23F23DC08(uint64_t a1)
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

void sub_23F23DE4C(uint64_t a1, char **lpsrc)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_2851856D0, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v22, lpsrc, 23);
    v8 = *(v22 + 16);
    v21[0] = *v22;
    v21[1] = v8;
    v21[2] = *(v22 + 32);
    *&v22 = 0;
    MEMORY[0x245CACD00]();
    v9 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v10 = *(a1 + 32) == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (v10)
    {
      v11 = 0;
    }

    LODWORD(v22) = 3;
    *(&v22 + 4) = v11;
    v13 = v11;
    v14 = v22;
    v15 = HIDWORD(v11);
    LODWORD(v22) = 1;
    *(&v22 + 4) = v12;
    v16 = v22;
    if (HIDWORD(v12) * HIDWORD(v11) != -1)
    {
      goto LABEL_19;
    }

    v20 = v9;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v18 = qword_27E396178, v17 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_18:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v9 = v20;
LABEL_19:
        *&v22 = v9;
        *(&v22 + 1) = v14;
        v23 = v15;
        v24 = v16;
        v25 = HIDWORD(v12);
        v26 = v13;
        v27 = v12;
        sub_23F26F554(v21, &v22);
        v19 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v18 = qword_27E396178;
      v17 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v17);
    if (byte_27E3961A0)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_23F26E920(a1 + 8, v6 + 2);
}

void sub_23F23E134(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 23)
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

void sub_23F23E434(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 23)
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

uint64_t sub_23F23E734(uint64_t result)
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

void sub_23F23E770(uint64_t a1)
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

uint64_t sub_23F23E884(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_2851856E8, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 24);
    v9 = *(v23 + 16);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = *(v23 + 32);
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

    LODWORD(v23) = 3;
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
        result = sub_23F270394(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return result;
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

  return sub_23F26FF90(a1 + 8, v6 + 2);
}

void sub_23F23EB6C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 24)
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

void sub_23F23EE6C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 24)
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

uint64_t sub_23F23F16C(uint64_t result)
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

void sub_23F23F1A8(uint64_t a1)
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

void sub_23F23F2BC(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285185700, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 25);
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
        sub_23F1F3B98(v22, &v23);
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

  sub_23F270724(a1 + 8, v6 + 2);
}

void sub_23F23F5A4(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 25)
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

void sub_23F23F8A4(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 25)
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

uint64_t sub_23F23FBA4(uint64_t result)
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

void sub_23F23FBE0(uint64_t a1)
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

void sub_23F23FCF4(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_2851892B0, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 26);
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
        sub_23F1D753C(v22, &v23);
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

  sub_23F270AF4(a1 + 8, v6 + 2);
}

void sub_23F23FFDC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 26)
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

void sub_23F2402DC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 26)
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

uint64_t sub_23F2405DC(uint64_t a1)
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

void sub_23F240744(uint64_t a1)
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

void sub_23F240988(uint64_t a1, char **lpsrc)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_2851892C8, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v24, lpsrc, 27);
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

void sub_23F240C78(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 27)
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

void sub_23F240F78(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 27)
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

uint64_t sub_23F241278(uint64_t result)
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

void sub_23F2412B4(uint64_t a1)
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

void sub_23F2413C8(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_2851892E0, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 28);
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

void sub_23F2416B0(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 28)
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

void sub_23F2419B0(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 28)
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

uint64_t sub_23F241CB0(uint64_t result)
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

void sub_23F241CEC(uint64_t a1)
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

void sub_23F241E00(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285185718, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 29);
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
        sub_23F1F3B98(v22, &v23);
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

  sub_23F270724(a1 + 8, v6 + 2);
}

void sub_23F2420E8(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 29)
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

void sub_23F2423E8(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 29)
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

uint64_t sub_23F2426E8(uint64_t result)
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

void sub_23F242724(uint64_t a1)
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

void sub_23F242838(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285185730, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 30);
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
        sub_23F1D753C(v22, &v23);
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

  sub_23F270AF4(a1 + 8, v6 + 2);
}

void sub_23F242B20(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 30)
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

void sub_23F242E20(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 30)
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

uint64_t sub_23F243120(uint64_t a1)
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

void sub_23F243288(uint64_t a1)
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

void sub_23F2434CC(uint64_t a1, char **lpsrc)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285185748, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v24, lpsrc, 31);
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

void sub_23F2437BC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 31)
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

void sub_23F243ABC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 31)
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

uint64_t sub_23F243DBC(uint64_t result)
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

void sub_23F243DF8(uint64_t a1)
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

void sub_23F243F0C(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285185760, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 32);
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

void sub_23F2441F4(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 32)
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

void sub_23F2444F4(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 32)
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

uint64_t sub_23F2447F4(uint64_t result)
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

void sub_23F244830(uint64_t a1)
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

void sub_23F244944(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285185778, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 33);
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
        sub_23F1F3B98(v22, &v23);
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

  sub_23F270724(a1 + 8, v6 + 2);
}

void sub_23F244C2C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 33)
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

void sub_23F244F2C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 33)
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

uint64_t sub_23F24522C(uint64_t result)
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

void sub_23F245268(uint64_t a1)
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

void sub_23F24537C(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_2851892F8, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 34);
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
        sub_23F1D753C(v22, &v23);
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

  sub_23F270AF4(a1 + 8, v6 + 2);
}

void sub_23F245664(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 34)
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

void sub_23F245964(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 34)
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

uint64_t sub_23F245C64(uint64_t a1)
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

void sub_23F245DCC(uint64_t a1)
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

void sub_23F246010(uint64_t a1, char **lpsrc)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285189310, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v24, lpsrc, 35);
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

void sub_23F246300(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 35)
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

void sub_23F246600(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 35)
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

uint64_t sub_23F246900(uint64_t result)
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

void sub_23F24693C(uint64_t a1)
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

void sub_23F246A50(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285189328, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 36);
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

void sub_23F246D38(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 36)
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

void sub_23F247038(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 36)
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

uint64_t sub_23F247338(uint64_t result)
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

void sub_23F247374(uint64_t a1)
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

void sub_23F247488(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_285185790, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 37);
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
        sub_23F1F3B98(v22, &v23);
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

  sub_23F270724(a1 + 8, v6 + 2);
}

void sub_23F247770(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 37)
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

void sub_23F247A70(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 37)
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

uint64_t sub_23F247D70(uint64_t result)
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

void sub_23F247DAC(uint64_t a1)
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

void sub_23F247EC0(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_28518B5C0, &unk_2851857A8, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 38);
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
        sub_23F1D753C(v22, &v23);
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

  sub_23F270AF4(a1 + 8, v6 + 2);
}

void sub_23F2481A8(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 38)
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

void sub_23F2484A8(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 38)
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